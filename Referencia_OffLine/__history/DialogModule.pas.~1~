unit DialogModule;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, dxLayoutControl, StdCtrls, cxButtons,
  cxControls, RzButton, Menus, cxintl;

type
  TfrmDialogModule = class(TForm)
    lcDialogGroup_Root: TdxLayoutGroup;
    lcDialog: TdxLayoutControl;
    lcDialogGroup1: TdxLayoutGroup;
    lcDialogGroup2: TdxLayoutGroup;
    btCancelar: TcxButton;
    liBtCancelar: TdxLayoutItem;
    btAceptar: TcxButton;
    liBtAceptar: TdxLayoutItem;
    cxIntl1: TcxIntl;
    procedure FormCreate(Sender: TObject);
  private
    function IsComponentReadOnly(ctrl: TObject): Boolean;
    { Private declarations }
  protected
    procedure SetComponentsColor(Color: TColor; UseReadOnly: Boolean = True);
  public
    { Public declarations }
  end;

var
  frmDialogModule: TfrmDialogModule;

implementation

uses DataModule, ActionsDM, dxPsUtl, TypInfo;

{$R *.dfm}


function TfrmDialogModule.IsComponentReadOnly( ctrl : TObject ) : Boolean;
var
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


procedure TfrmDialogModule.SetComponentsColor( Color : TColor ; UseReadOnly : Boolean = True);
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
            SetProperty(obj,'Color',DM.ColorConsulta)
          else
            SetProperty(obj,'Color',Color);
        end;
      end;
    end;
  end;
end;


procedure TfrmDialogModule.FormCreate(Sender: TObject);
begin
  lcDialog.LookAndFeel := dmAppActions.lnfWeb;
end;


end.
