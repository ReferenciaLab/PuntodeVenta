unit CustomModule;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, dxLayoutControl, Menus, StdActns,
  ActnList, JvComponent, JvFormPlacement, JvSpeedButton, StdCtrls, RzLabel,
  RzBckgnd, ExtCtrls, JvExControls, JvEnterTab,
  cxMRUEdit, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxPC, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  cxGridCustomPopupMenu, cxGridPopupMenu, dxPSContainerLnk, dxPSdxLCLnk,
  dxPSCore, dxPScxGridLnk,
  cxDBExtLookupComboBox, cxNavigator, cxDBNavigator, cxListBox, cxDBEdit,
  cxGroupBox, cxRadioGroup, cxLookupEdit, cxDBLookupEdit, TypInfo,
  cxDBLookupComboBox, cxBlobEdit, cxImage, cxCurrencyEdit, cxButtonEdit,cxTimeEdit,
  cxHyperLinkEdit, cxCalc, cxSpinEdit, cxImageComboBox, cxCheckBox,
  cxCalendar, cxMemo, cxGridBandedTableView, cxGridDBBandedTableView,
  dxNavBarCollns, dxNavBarBase, dxNavBar, GradientLabel, RzPanel,
  RzSplit, dxPScxCommon, ADODB, cxDBData, dxTopPanel, JvComponentBase,AdvTabSet,
  cxintl;

type
  TActionNotification = procedure(Action : TBasicAction) of object;
  TfrmCustomModule = class(TForm)
    formStorage: TJvFormStorage;
    alEdit: TActionList;
    EditCut1: TEditCut;
    EditCopy1: TEditCopy;
    EditSelectAll1: TEditSelectAll;
    pmCustom: TPopupMenu;
    N2: TMenuItem;
    pmCopyToClipboard: TMenuItem;
    pmCutToClipboard: TMenuItem;
    pmSelectAllText: TMenuItem;
    JvEnterAsTab1: TJvEnterAsTab;
    miJumpToTable: TMenuItem;
    pnCaption: TPanel;
    cxIntl1: TcxIntl;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure pmCustomPopupMenu(Sender: TObject);
    procedure miJumpToMainTableClick(Sender: TObject);
    procedure miJumpToTableClick(Sender: TObject);
    procedure pmCustomPopup(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure formStorageRestorePlacement(Sender: TObject);
  private
    { Private declarations }
    FSupportedActionList : TList;
    FAutoKeyField : String;
    FWindowTag : Integer;
    function GetNotificationByAction(
      Action: TBasicAction): TActionNotification;
    function IsComponentReadOnly(ctrl: TObject): Boolean;
  protected
    FFrameTopPanel: TdxFrameTopPanel;
    function  GetTableId : String ; virtual;
    function  GetRecordId : String ; virtual;
    procedure SetMandatoryItems; virtual;
    procedure SetComponentsColor(Color: TColor ; UseReadOnly : Boolean = True ); virtual;
    procedure RegisterAction( const Action : TBasicAction; ANotification : TActionNotification);
    procedure UnRegisterAction( const Action : TBasicAction );
    procedure RegisterActions; virtual;
    procedure ResetActions;
  published
    property  AutoKeyField : String read FAutoKeyField write FAutoKeyField;
    property  TableId : String read GetTableID;
    property  RecordId : String read GetRecordID;
    property  MyWindowTag : Integer read FWindowTag write FWindowTag;
  public
    { Public declarations }
    procedure SetSecurity( iLevel : Integer ); virtual;
    function  ExecuteAction(Action: TBasicAction): Boolean;
    function  IsActionSupported(Action: TBasicAction): Boolean;
    procedure UpdateActionsState; virtual;
    procedure UpdateActionsVisibility; virtual;
    function  ValidateRecord( DataSet : TDataSet ) : Boolean; virtual;
    procedure SetTitleCaption;
    procedure SetTitleImage( iIndex : Integer );
  end;

var
  frmCustomModule: TfrmCustomModule;

implementation

uses ActionsDM, Main, DataModule, dxNavBarStyles;

{$R *.dfm}

type
  PActionRegisterRecord = ^TActionRegisterRecord;
  TActionRegisterRecord = record
    Action: TBasicAction;
    Notification: TActionNotification;
  end;


procedure TfrmCustomModule.FormCreate(Sender: TObject);
var
  advTab : TTabCollectionItem;
  OnTabChange : TTabChangeEvent;
begin
//  case DM.CurInterface of
//    0:Color := dmAppActions.lnfWeb.GroupOptions.Color; // frmMain.nbThemeColor.SectionColorTo;
//    1:Color := dmAppActions.lnfWebGreen.GroupOptions.Color; //frmMain.nbThemeColor.SectionColorTo;
//    2:Color := clBtnFace;
//  end;
  //
  DM.qrParam.Open;
  Font.Name := DM.qrParamFormsFont.Text;
  //
  FSupportedActionList := TList.Create;
  RegisterActions;
  UpdateActionsState;
  UpdateActionsVisibility;
  // - Agregar la opcion en la lista de ventanas
  // frmMain.dxBarWinList.Items.AddObject(Caption,Self);
  try
    OnTabChange := frmMain.tsVentanas.OnChange;
    frmMain.tsVentanas.OnChange := nil;
    frmMain.tsVentanas.Visible := True;
    advTab := frmMain.tsVentanas.AdvTabs.Add;
    advTab.Caption := Caption;
    advTab.ShowClose := True;
    advTab.AObject := Self;
    advTab.ImageIndex := frmMain.ImageIndex;
    frmMain.tsVentanas.TabIndex := advTab.Index;
  finally
    frmMain.tsVentanas.OnChange := OnTabChange;
  end;
  //
  formStorage.AppStoragePath := Name;
  formStorage.RestoreFormPlacement;
  //
  pmCustom.OnPopup := pmCustomPopup;
  miJumpToTable.OnClick := miJumpToTableClick;
  //
  FFrameTopPanel := TdxFrameTopPanel.Create(self);
  FFrameTopPanel.Parent := pnCaption;
  FFrameTopPanel.Align := alClient;
  FFrameTopPanel.Font.Size := 11;
  FFrameTopPanel.Font.Style := [fsBold];
  FFrameTopPanel.Font.Color := clWindow;
  FFrameTopPanel.Caption := Caption;
  FFrameTopPanel.Images := frmMain.ilNavBarSmall;
  //
  Application.ProcessMessages;
end;

procedure TfrmCustomModule.RegisterAction(const Action: TBasicAction;
  ANotification: TActionNotification);
var
  ARecord: PActionRegisterRecord;
begin
  New(ARecord);
  ARecord^.Action := Action;
  ARecord^.Notification := ANotification;
  FSupportedActionList.Add(ARecord)
end;

function TfrmCustomModule.GetNotificationByAction(Action: TBasicAction): TActionNotification;
var
  I: Integer;
begin
  Result := nil;
  if not Assigned(FSupportedActionList) then exit;
  for I := 0 to FSupportedActionList.Count - 1 do
    if PActionRegisterRecord(FSupportedActionList[I])^.Action = Action then
    begin
       Result := PActionRegisterRecord(FSupportedActionList[I])^.Notification;
       break;
    end;
end;

function TfrmCustomModule.IsActionSupported(Action: TBasicAction): Boolean;
begin
  Result := Assigned(GetNotificationByAction(Action));
end;

function TfrmCustomModule.ExecuteAction(Action: TBasicAction): Boolean;
var
  ANotification: TActionNotification;
begin
  ANotification := GetNotificationByAction(Action);
  Result := Assigned(ANotification);
  if Result then
    ANotification(Action);
  UpdateActionsState;
end;

procedure TfrmCustomModule.RegisterActions;
begin
  // Override
end;

procedure TfrmCustomModule.UpdateActionsState;
begin
  // Override
end;

procedure TfrmCustomModule.UpdateActionsVisibility;
var
  I: Integer;
  Action: TBasicAction;
begin
  try
    LockWindowUpdate(frmMain.Handle);
    for I := 0 to AppActions.ActionCount - 1 do
    begin
      Action := AppActions.Actions[I];
      if (Action is TCustomAction) and
         (Action <> dmAppActions.actPostear) and
         (Action <> dmAppActions.actValidar) then
        TCustomAction(Action).Visible := IsActionSupported(Action);
    end;
  finally
    LockWindowUpdate(0);
  end;
end;

procedure TfrmCustomModule.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmCustomModule.FormDestroy(Sender: TObject);
begin
//  With frmMain.dxBarWinList.Items do
//    Delete( IndexOfObject(Self) );
  FreeAndNil(FSupportedActionList);
  FreeAndNil(FFrameTopPanel);
end;

procedure TfrmCustomModule.ResetActions;
begin
  FreeAndNil(FSupportedActionList);
  FSupportedActionList := TList.Create;
  UpdateActionsVisibility;
end;

procedure TfrmCustomModule.SetSecurity(iLevel: Integer);
begin
  // Must override
end;

procedure TfrmCustomModule.UnRegisterAction(const Action: TBasicAction);
var
  I: Integer;
begin
  for I := 0 to FSupportedActionList.Count - 1 do
    if PActionRegisterRecord(FSupportedActionList[I])^.Action = Action then
    begin
       FSupportedActionList.Delete(I);
       break;
    end;
  //
  UpdateActionsVisibility;
end;

procedure TfrmCustomModule.SetMandatoryItems;
var
  i : Integer;
  li : TdxLayoutItem;
  obj : TObject;
  ctrl : TObject;
  fld : Variant;
  ds : TDataSource;
begin
  for i := 0 to ComponentCount-1 do begin
    if( Components[i] is TdxLayoutItem) then begin
      li := ( Components[i] as TdxLayOutItem );
      obj := li.Control;
      ctrl := obj;
      fld := GetProperty(obj,'DataBinding');
      if fld = NULL then continue;
      obj := GetObjectProp(obj,'DataBinding');// GetProperty(obj,'DataBinding');
      if Assigned(obj) then begin
        fld := GetProperty(obj,'DataField');
        if fld <> NULL then begin
          // Set Popup Menu - Comentado Temporalmente
              // SetObjectProp(ctrl,'PopupMenu',pmCustom);
          //
          ds := TDataSource(GetObjectProp(obj,'DataSource'));
          if ( Assigned(ds) ) and ( ds.DataSet.FieldByName(fld).Required ) then
            li.LookAndFeel := dmAppActions.lnfWebBold;
        end;
      end;
    end;
  end;
end;

procedure TfrmCustomModule.pmCustomPopupMenu(Sender: TObject);
var
  sName : String;
  aSender : TComponent;
  iTag : Integer;
begin
  inherited;
  aSender := ( Sender As TPopupMenu ).PopupComponent;
  miJumpToTable.Tag := -1;
  if  aSender.ClassnameIs('TCxGridSite') then begin
    //
    if ( ( aSender as TCxGridSite ).GridView is TcxGridTableView ) then begin
      if Assigned( ( ( aSender as TCxGridSite ).GridView as TcxGridTableView ).Controller.FocusedItem ) then begin //.RepositoryItem ) then begin
        miJumpToTable.Tag := ( ( aSender as TCxGridSite ).GridView as TcxGridTableView ).Controller.FocusedItem.Tag;
        Exit;
      end;
    end;
    if ( ( aSender as TCxGridSite ).GridView is TcxGridBandedTableView ) then begin
      if Assigned( ( ( aSender as TCxGridSite ).GridView as TcxGridBandedTableView ).Controller.FocusedItem) then begin //.RepositoryItem ) then begin
        miJumpToTable.Tag := ( ( aSender as TCxGridSite ).GridView as TcxGridBandedTableView ).Controller.FocusedItem.Tag;
        Exit;
      end;
    end;
  end;
  miJumpToTable.Enabled := (  ( aSender is TcxDBLookupComboBox ) or ( aSender is TcxDBExtLookupComboBox ) );
  if miJumpToTable.Enabled then begin
    iTag := -1;
    sName := '';
    if ( aSender is TcxDBLookupComboBox ) then begin
      if Assigned( ( aSender as TcxDBLookupComboBox ).RepositoryItem ) then begin
         sName := ( aSender as TcxDBLookupComboBox ).RepositoryItem.Name;
      end else begin
        iTag := ( aSender as TcxDBLookupComboBox ).Properties.ListSource.Tag;
      end;
    end;
    if ( aSender is TcxDbExtLookupComboBox ) then begin
      if Assigned( ( aSender as TcxDBExtLookupComboBox ).RepositoryItem ) then begin
         sName := ( aSender as TcxDBExtLookupComboBox ).RepositoryItem.Name;
      end else begin
         iTag := ( aSender as TcxDBExtLookupComboBox ).Properties.View.Tag;
      end;
    end;
    //
    sName := UpperCase(sName);
    //
    if iTag = -1 then
      miJumpToTable.Tag := DM.GetLookupFormTag(sName)
    else
      miJumpToTable.Tag := iTag;
  end;
end;

function TfrmCustomModule.IsComponentReadOnly( ctrl : TObject ) : Boolean;
var
  i : Integer;
  obj : TObject;
  fld : Variant;
begin
  Result := False;
  obj := ctrl;
  fld := GetProperty(obj,'Properties');
  if fld = NULL then begin
    Exit;
  end;
  obj := GetObjectProp( obj, 'Properties' );
  if Assigned(obj) then begin
    fld := GetProperty(obj,'ReadOnly');
    if fld <> NULL then
      Result := fld;
  end;
end;

procedure TfrmCustomModule.SetComponentsColor( Color : TColor ; UseReadOnly : Boolean = True);
var
  i : Integer;
  li : TdxLayoutItem;
  obj : TObject;
  ctrl : TObject;
  fld : Variant;
begin
  for i := 0 to ComponentCount-1 do begin
    if( Components[i] is TdxLayoutItem) then begin
      li := ( Components[i] as TdxLayOutItem );
      obj := li.Control;
      ctrl := obj;
      fld := GetProperty(obj,'Style');
      if fld = NULL then continue;
      obj := GetObjectProp(obj,'Style');
      if Assigned(obj) then begin
        fld := GetProperty(obj,'Color');
        if fld <> NULL then begin
          // Set Color
          if ( UseReadOnly ) and ( IsComponentReadOnly(ctrl) ) then
            SetProperty(obj,'Color', DM.ColorConsulta)
          else
            SetProperty(obj,'Color', Color);
        end;
      end;
    end;
  end;
end;

procedure TfrmCustomModule.miJumpToTableClick(Sender: TObject);
begin
  if miJumpToTable.Tag = -1 then exit;
  frmMain.LanzaVentana(miJumpToTable.Tag);
end;

procedure TfrmCustomModule.miJumpToMainTableClick(Sender: TObject);
begin
  if miJumpToTable.Tag = -1 then exit;
  frmMain.LanzaVentana(miJumpToTable.Tag);
end;

procedure TfrmCustomModule.pmCustomPopup(Sender: TObject);
var
  sName : String;
  aSender : TComponent;
  iTag : Integer;
begin
  inherited;
  aSender := ( Sender As TPopupMenu ).PopupComponent;
  miJumpToTable.Tag := -1;
  if  aSender.ClassnameIs('TCxGridSite') then begin
    //
    if ( ( aSender as TCxGridSite ).GridView is TcxGridTableView ) then begin
      if Assigned( ( ( aSender as TCxGridSite ).GridView as TcxGridTableView ).Controller.FocusedItem ) then begin //.RepositoryItem ) then begin
        miJumpToTable.Tag := ( ( aSender as TCxGridSite ).GridView as TcxGridTableView ).Controller.FocusedItem.Tag;
        Exit;
      end;
    end;
    if ( ( aSender as TCxGridSite ).GridView is TcxGridBandedTableView ) then begin
      if Assigned( ( ( aSender as TCxGridSite ).GridView as TcxGridBandedTableView ).Controller.FocusedItem) then begin //.RepositoryItem ) then begin
        miJumpToTable.Tag := ( ( aSender as TCxGridSite ).GridView as TcxGridBandedTableView ).Controller.FocusedItem.Tag;
        Exit;
      end;
    end;
  end;
  miJumpToTable.Enabled := (  ( aSender is TcxDBLookupComboBox ) or ( aSender is TcxDBExtLookupComboBox ) );
  if miJumpToTable.Enabled then begin
    iTag := -1;
    sName := '';
    if ( aSender is TcxDBLookupComboBox ) then begin
      if Assigned( ( aSender as TcxDBLookupComboBox ).RepositoryItem ) then begin
         sName := ( aSender as TcxDBLookupComboBox ).RepositoryItem.Name;
      end else begin
        iTag := ( aSender as TcxDBLookupComboBox ).Properties.ListSource.Tag;
      end;
    end;
    if ( aSender is TcxDbExtLookupComboBox ) then begin
      if Assigned( ( aSender as TcxDBExtLookupComboBox ).RepositoryItem ) then begin
         sName := ( aSender as TcxDBExtLookupComboBox ).RepositoryItem.Name;
      end else begin
         iTag := ( aSender as TcxDBExtLookupComboBox ).Properties.View.Tag;
      end;
    end;
    //
    sName := UpperCase(sName);
    //
    if iTag = -1 then
      miJumpToTable.Tag := DM.GetLookupFormTag(sName)
    else
      miJumpToTable.Tag := iTag;
  end;
end;

function TfrmCustomModule.ValidateRecord(DataSet: TDataSet): Boolean;
var
  i : Integer;
begin
 Result := True;
 for i := 0 to DataSet.FieldCount -1 do
  begin
   if UpperCase(DataSet.Fields[i].FieldName) = UpperCase(AutoKeyField) then continue;
   if ( DataSet.Fields[i].IsNull ) and ( DataSet.Fields[i].Required ) then
    begin
     Result := False;
     DM.Warning('Debe especificar un valor para el campo: ' + DataSet.Fields[i].DisplayName);
    end;
  end;
end;

function TfrmCustomModule.GetRecordId: String;
begin
  //
end;

function TfrmCustomModule.GetTableId: String;
begin
  //
end;

procedure TfrmCustomModule.SetTitleCaption;
begin
  FFrameTopPanel.Caption := Caption;
  pnCaption.Visible := ( WindowState = wsMaximized );
end;

procedure TfrmCustomModule.FormPaint(Sender: TObject);
begin
  Color := dmAppActions.lnfWeb.GroupOptions.Color;
  pnCaption.Color := Color;
  SetTitleCaption;
end;

procedure TfrmCustomModule.SetTitleImage(iIndex: Integer);
begin
  FFrameTopPanel.ImageIndex := iIndex;
end;

procedure TfrmCustomModule.formStorageRestorePlacement(Sender: TObject);
begin
//  if DM.SingleWindow then begin
//    WindowState := wsMaximized;
//    BorderIcons := [biSystemMenu, biMaximize];
//  end;
  WindowState := wsMaximized;
end;

end.
