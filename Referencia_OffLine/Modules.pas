unit Modules;

interface

uses Classes, Controls, CustomModule;

type
// Contains information about category
TCategoryInfo = class
private
  FName: string;
  FImageIndex: Integer;
  function GetIndex: Integer;
public
  constructor Create(AName: string; AImageIndex: Integer);

  property Index: Integer read GetIndex;
  property ImageIndex: Integer read FImageIndex;
  property Name: string read FName;
end;

// Contains information about module
TModuleInfo = class
private
  FModuleClass: TfrmCustomModule;
  FModule: TfrmCustomModule;
  FName: string;
  FCaption: string;
  FArea: string;
  FTag: Integer;
  FCategory: TCategoryInfo;
  FImageIndex: Integer;

  function GetActive: Boolean;
  procedure DoModuleDestroy(Sender: TObject);
protected
  // create the module instance
  procedure CreateModule;
  // destroy the module instance
  procedure DestroyModule;
public
  constructor Create(const AName: string; ACaption : string; AArea : String; AModuleClass: TfrmCustomModule; ACategory: TCategoryInfo; AImageIndex: Integer = -1; ATag: Integer = 0);
  destructor Destroy; override;
  //Make the module invisible
  procedure Hide;
  //Show the module on the particular control
  procedure Show(AParent: TWinControl);

  // Return True if the module is active current
  property Active: Boolean read GetActive;
  property Category: TCategoryInfo read FCategory;
  property ImageIndex: Integer read FImageIndex;
  property Module: TfrmCustomModule read FModule;
  property Caption: String read FCaption write FCaption;
  property Area: String read FArea;
  property Name: string read FName;
  property Tag: Integer read FTag;
end;

//Manage module info classes
TModuleInfoManager = class
private
  FModuleList: TList;
  FCategoryList: TList;
  FActiveModuleInfo: TModuleInfo;

  function GetCount: Integer;
  function GetCategoryCount: Integer;
  function GetItem(Index: Integer): TModuleInfo;
  function GetCategory(Index: Integer): TCategoryInfo;
public
  constructor Create;
  destructor Destroy; override;

  // Return the module info by its name
  function GetModuleInfoByName(const AName: string): TModuleInfo;
  // Add new category
  procedure AddCategory(const AName: string; ImageIndex: Integer);
  // Returns the CategoryInfo object by it's name
  function GetCategoryByName(const Name: string): TCategoryInfo;
  // Register Module module in the manager
  procedure RegisterModule(const AName: string; ACaption: string; AArea: string; AModuleClass: TfrmCustomModule;
    ACategory: TCategoryInfo = nil; AImageIndex: Integer = -1; ATag: Integer = 0);
  // Show the module on the control
  procedure ShowModule(const AName: string; AParent: TWinControl);

  // The module info of the currently active module
  property ActiveModuleInfo: TModuleInfo read FActiveModuleInfo;
  // Return the number of the categories
  property CategoryCount: Integer read GetCategoryCount;
  property Categories[Index: Integer]: TCategoryInfo read GetCategory;
  // Return the number of the registered modules
  property Count: Integer read GetCount;
  property Items[Index: Integer]: TModuleInfo read GetItem; default;
end;

// Return the instance of the global TModuleInfoManager object
function ModuleInfoManager: TModuleInfoManager;

implementation

uses SysUtils;

{ TModuleCategory }

constructor TCategoryInfo.Create(AName: string; AImageIndex: Integer);
begin
  FName := AName;
  FImageIndex := AImageIndex;
end;

function TCategoryInfo.GetIndex: Integer;
begin
  Result := ModuleInfoManager.FCategoryList.IndexOf(self);
end;

{ TModuleInfo }

constructor TModuleInfo.Create(const AName: string; ACaption : string; AArea : String; AModuleClass: TfrmCustomModule; ACategory: TCategoryInfo; AImageIndex: Integer = -1; ATag: Integer = 0);
begin
  FName := AName;
  FModuleClass := AModuleClass;
  FCategory := ACategory;
  FImageIndex := AImageIndex;
  FArea := AArea;
  FTag := ATag;
end;

destructor TModuleInfo.Destroy;
begin
  DestroyModule;
  inherited Destroy;
end;

procedure TModuleInfo.CreateModule;
begin
  FModule := FModuleClass.Create(nil);
  FModule.OnDestroy := DoModuleDestroy;
end;

procedure TModuleInfo.DestroyModule;
begin
  if (Module <> nil) and not (csDestroying in Module.ComponentState) then
  begin
    FModule.Free;
    FModule := nil;
  end;
end;

procedure TModuleInfo.DoModuleDestroy(Sender: TObject);
begin
  FModule := nil;
end;

function TModuleInfo.GetActive: Boolean;
begin
  Result := ModuleInfoManager.ActiveModuleInfo = self;
end;

procedure TModuleInfo.Hide;
begin
  Module.Hide;
  //Destroy module to reduce the resource usage
end;

procedure TModuleInfo.Show(AParent: TWinControl);
begin
  if Module = nil then
    CreateModule;
  Module.Parent := AParent;
  Module.Align := alClient;
  Module.Show;
end;

{ TModuleInfoManager }

constructor TModuleInfoManager.Create;
begin
  FModuleList := TList.Create;
  FCategoryList := TList.Create;
end;

destructor TModuleInfoManager.Destroy;
var
  I: Integer;
begin
  for I := 0 to Count - 1 do
    Items[I].Free;
  for I := 0 to CategoryCount - 1 do
    Categories[I].Free;  
  FModuleList.Free;
  FCategoryList.Free;
  inherited;
end;

function TModuleInfoManager.GetCount: Integer;
begin
  Result := FModuleList.Count;
end;

function TModuleInfoManager.GetCategoryCount: Integer;
begin
  Result := FCategoryList.Count;
end;

function TModuleInfoManager.GetItem(Index: Integer): TModuleInfo;
begin
  Result := TModuleInfo(FModuleList[Index]);
end;

function TModuleInfoManager.GetCategory(Index: Integer): TCategoryInfo;
begin
  Result := TCategoryInfo(FCategoryList[Index]);
end;

function TModuleInfoManager.GetModuleInfoByName(const AName: string): TModuleInfo;
var
  I: Integer;
begin
  Result := nil;
  for I := 0 to Count - 1 do
    if(CompareText(Items[I].Name, AName) = 0) then
    begin
      Result := Items[I];
      break;
    end;
end;

// Add new category
procedure TModuleInfoManager.AddCategory(const AName: string; ImageIndex: Integer);
var
  ACategoryInfo: TCategoryInfo;
begin
  ACategoryInfo := TCategoryInfo.Create(AName, ImageIndex);
  FCategoryList.Add(ACategoryInfo);
end;

// Returns the CategoryInfo object by it's name
function TModuleInfoManager.GetCategoryByName(const Name: string): TCategoryInfo;
var
  I: Integer;
begin
  Result := nil;
  for I := 0 to CategoryCount - 1 do
    if(CompareText(Name, Categories[I].Name) = 0) then
    begin
      Result := Categories[I];
      break;
    end;
end;

procedure TModuleInfoManager.RegisterModule(const AName: string; ACaption: string; AArea: string; AModuleClass: TfrmCustomModule;
  ACategory: TCategoryInfo = nil; AImageIndex: Integer = -1; ATag: Integer = 0);
var
  AModuleInfo: TModuleInfo;
begin
  //If need check the security for the module here, before registration
  AModuleInfo := GetModuleInfoByName(AName);
  //Raise the exception if there is already the module witht the same name
  if(AModuleInfo <> nil) then
    raise Exception.CreateFmt('Module with name "%s" is already exists', [AName]);
  // Create a new category if there is no any one yet
  if CategoryCount = 0 then
    AddCategory('Default', -1);
  if ACategory = nil then
    ACategory := Categories[0];
  // Create the module info and add it into the list
  AModuleInfo := TModuleInfo.Create(AName, ACaption, AArea, AModuleClass, ACategory, AImageIndex);
  FModuleList.Add(AModuleInfo);
end;

procedure TModuleInfoManager.ShowModule(const AName: string; AParent: TWinControl);
var
  AModuleInfo: TModuleInfo;
begin
  // Get the module info by its name
  AModuleInfo := GetModuleInfoByName(AName);
  // Raise exception if the module with this name is not exists
  if(AModuleInfo = nil) then
    raise Exception.CreateFmt('Module with name "%s" does not exist', [AName]);
  if AModuleInfo <> ActiveModuleInfo then
  begin
    if ActiveModuleInfo <> nil then
      ActiveModuleInfo.Hide;
    AModuleInfo.Show(AParent);
    FActiveModuleInfo := AModuleInfo;
    AModuleInfo.Module.UpdateActionsVisibility;
    AModuleInfo.Module.UpdateActionsState;
  end;
end;

var
  FModuleInfoManager: TModuleInfoManager = nil;

function ModuleInfoManager: TModuleInfoManager;
begin
  if FModuleInfoManager = nil then
    FModuleInfoManager := TModuleInfoManager.Create;
  Result := FModuleInfoManager;
end;



initialization

finalization
  FModuleInfoManager.Free;
  FModuleInfoManager := nil;

end.
