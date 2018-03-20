unit PluginPymeSettings;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, Forms, Controls,
  JvPlugin, ImgList, JvStringHolder;

type
  TPluginPymeSettings = class(TJvPlugin)
    myIcon: TImageList;
    JvSupportInfo: TJvStrHolder;
    procedure JvPlugInInitialize(Sender: TObject; var AllowLoad: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function RegisterPlugin: TJvPlugin; stdcall;

implementation

{$R *.dfm}

// IMPORTANT NOTE: If you change the name of the Plugin container,
// you must set the type below to the same type. (Delphi changes
// the declaration, but not the procedure itself. Both the return
// type and the type created must be the same as the declared type above.
function RegisterPlugin: TJvPlugin;
begin
  Result := TPluginPymeSettings.Create(nil);
end;

procedure TPluginPymeSettings.JvPlugInInitialize(Sender: TObject;
  var AllowLoad: Boolean);
Var
  dm : TComponent;
  sup : TComponent;
begin
  HostApplication.Title := 'eSoft Accounting';
  dm := HostApplication.FindComponent('DM');
  if assigned(dm) then begin
     sup := dm.FindComponent('SupportInfo');
     if assigned(sup) then begin
       TJvStrHolder(sup).Strings.Text := JvSupportInfo.Strings.Text;
     end;
  end;
  if myIcon.Count > 0 then
    myIcon.GetIcon(0,HostApplication.Icon);
end;

end.
