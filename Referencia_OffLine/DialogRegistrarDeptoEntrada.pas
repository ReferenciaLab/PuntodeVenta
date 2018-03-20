unit DialogAutorizaFacturaPend;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DialogModule, Menus, cxLookAndFeelPainters, dxLayoutControl,
  StdCtrls, cxButtons, cxControls, cxGraphics, cxSpinEdit, cxTimeEdit,
  cxDropDownEdit, cxCalendar, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox, ADODB, cxintl;

type
  TfrmDialogAutorizaFacturaPend = class(TfrmDialogModule)
    lcDialogGroup3: TdxLayoutGroup;
    EdUsuario: TcxTextEdit;
    lcDialogItem4: TdxLayoutItem;
    EdClave: TcxTextEdit;
    lcDialogItem5: TdxLayoutItem;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    valor  : Boolean;
    Usuario : String;

    procedure Run;
    procedure Cargar;
    procedure VerificarUsuario;
  end;

var
  frmDialogAutorizaFacturaPend: TfrmDialogAutorizaFacturaPend;

implementation

uses Main, DataModule, PymeConst;

{$R *.dfm}


procedure TfrmDialogAutorizaFacturaPend.Cargar;
begin
  EdUsuario.Text := '';
//  edhora.Time := Time;
//  edfecha.Date := DM.SystemDate;
//  CbDepto.Text := frmMain.frmRegMuestras.EdDepto.Text;
//  edhora.Properties.ReadOnly := True;
//  edfecha.Properties.ReadOnly := True;
//  CbDepto.Properties.ReadOnly := True;
end;


procedure TfrmDialogAutorizaFacturaPend.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (Key = Vk_Down) or (Key = 13) then
    PostMessage(Handle, Wm_NextDlgCtl, 0, 0);
  if Key = Vk_Up then
    PostMessage(Handle, Wm_NextDlgCtl, 1, 0);

  If (key = Vk_F9) Then btAceptar.Click;
end;


procedure TfrmDialogAutorizaFacturaPend.Run;
begin
 Cargar;

 showmodal;

 if ModalResult = mrOk then
   Begin
     VerificarUsuario;

     If ( DM.Mensaje('Desea Registrar la Entrada de Este Label?' ,mb_yesno) = id_yes ) and
        ( valor = true ) then
       Begin
//         frmMain.frmRegMuestras.Insertar_Entrada(Usuario, edfecha.Date, edhora.Text);
         frmMain.frmRegMuestras.Insertar_Entrada(EdUsuario.Text, edfecha.Date, edhora.Text);
       End;
   End;
end;


procedure TfrmDialogAutorizaFacturaPend.VerificarUsuario;
Var
 clave  : String;
 qfind  : TADOQuery;
begin
 valor := False;
 usuario := '';

 qfind := DM.NewQuery;
 qfind.Close;
 qfind.SQL.Text := ' SELECT * FROM SysUsuarios, PTUsuarioSucursal '+
                   ' WHERE  SysUsuarios.UserID = PTUsuarioSucursal.UserID '+
                   ' AND SysUsuarios.UserID = '+#39+edusuario.Text+#39+
//                   ' AND SysUsuarios.Clave = '+#39+edclave.Text+#39+
                   ' AND PTUsuarioSucursal.SucursalID = '+#39+DM.CurSucursal+#39;
 qfind.Open;

 If qfind.RecordCount = 0 then
  begin
   DM.Error(SUsuarioClaveNoE);
  end
 else
  begin
//   if (DecryptKey(qfind.FieldByName('Clave').AsString) <> edClave.Text) then
   usuario := qfind.FieldByName('Nombre').AsString;
   clave := DecryptKey(qfind.FieldByName('Clave').AsString);

//   if (qfind.FieldByName('Clave').AsString <> edClave.Text) then
   if (clave <> edClave.Text) then
    Begin
     DM.Error('La Clave y/o El Usuario Suministrado Es Incorrecto.');
    end
   else
    begin
     valor := True;
     DM.Info('La Flebotomista '+ Usuario +' Ha Sido Autorizada');
    end;
  end;
end;



end.

