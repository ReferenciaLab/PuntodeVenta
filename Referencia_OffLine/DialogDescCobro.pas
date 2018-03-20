unit DialogDescCobro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DialogModule, Menus, cxLookAndFeelPainters, dxLayoutControl,
  StdCtrls, cxButtons, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxCurrencyEdit,db, cxMaskEdit, ADODB, cxintl;

type
  TfrmDialogDescCobro = class(TfrmDialogModule)
    eddescuento: TcxCurrencyEdit;
    lcDialogItem1: TdxLayoutItem;
    lcDialogGroup3: TdxLayoutGroup;
    edusuario: TcxTextEdit;
    lcDialogItem2: TdxLayoutItem;
    edclave: TcxMaskEdit;
    lcDialogItem3: TdxLayoutItem;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edclaveExit(Sender: TObject);
    procedure btAceptarClick(Sender: TObject);
    procedure eddescuentoExit(Sender: TObject);
    procedure VerificarUsuario;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Run;
  end;

var
  frmDialogDescCobro: TfrmDialogDescCobro;
  descmax : double;

implementation

uses Main, DataModule, Pymeconst;

{$R *.dfm}

procedure TfrmDialogDescCobro.VerificarUsuario;
Var
 qfind  : TADOQuery;
 clave, usuario  : String;
begin
 qfind := DM.NewQuery;
 qfind.Close;
 qfind.SQL.Text := ' SELECT * FROM SysUsuarios, PTUsuarioSucursal '+
                   ' WHERE  SysUsuarios.UserID = PTUsuarioSucursal.UserID '+
                   ' AND SysUsuarios.UserID = '+#39+edusuario.Text+#39+
//                   ' AND SysUsuarios.Clave = '+#39+edclave.Text+#39+
                   ' AND PTUsuarioSucursal.SucursalID = '+#39+DM.CurSucursal+#39;
 qfind.Open;

 if qfind.RecordCount = 0 then
 begin
  DM.Error(SUsuarioClaveNoE);
  eddescuento.Value := 0;
  descmax := eddescuento.Value;
 end
 else
 begin
//  if (DecryptKey(qfind.FieldByName('Clave').AsString) <> edClave.Text) then
  usuario := qfind.FieldByName('Nombre').AsString;
  clave := DecryptKey(qfind.FieldByName('Clave').AsString);

//  if (qfind.FieldByName('Clave').AsString <> edClave.Text) then
  if (clave <> edClave.Text) then
  begin
   eddescuento.Value := 0;
   descmax := eddescuento.Value;
   DM.Error('La clave suministrada no es la correcta.');
  end
  else
  begin
   eddescuento.Value := DM.DescuentoUsuario(edusuario.Text);
   descmax := eddescuento.Value;
  end;
 end;

 FreeAndNil(qfind);
end;

procedure TfrmDialogDescCobro.btAceptarClick(Sender: TObject);
begin
  inherited;
  if (edusuario.Text <> '') then
    VerificarUsuario
  else
    begin
     eddescuento.Value := 0;
     descmax := eddescuento.Value;
    end;
end;

procedure TfrmDialogDescCobro.edclaveExit(Sender: TObject);
begin
  inherited;
  if (edusuario.Text <> '') then
    VerificarUsuario
  else
    begin
      eddescuento.Value := 0;
      descmax := eddescuento.Value;
    end;
end;

procedure TfrmDialogDescCobro.eddescuentoExit(Sender: TObject);
begin
  inherited;
  if (eddescuento.Value > descmax) then
    begin
      eddescuento.Value := descmax;
      DM.Error('El descuento maximo permitido para este usuario es de '+formatfloat('##0.00',descmax));
    end;
end;

procedure TfrmDialogDescCobro.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key = Vk_Down) or (Key = 13) then
    PostMessage(Handle, Wm_NextDlgCtl, 0, 0);
  if Key = Vk_Up then
    PostMessage(Handle, Wm_NextDlgCtl, 1, 0);

  If (key = Vk_F9) Then btAceptar.Click;
end;

procedure TfrmDialogDescCobro.Run;
begin
  showmodal;

  if ModalResult = mrOk then
   begin
     frmMain.frmTmp.qrEntradaPaciente.Edit;
     frmMain.frmTmp.qrEntradaPacienteDescuentoPorc.Value := eddescuento.Value;
     frmMain.frmTmp.qrEntradaPacienteDescAutorizadoPor.Value := edusuario.Text;
     frmMain.frmTmp.qrEntradaPacienteDescuentoValor.Value := 0;
     frmMain.frmTmp.ActTotales;
     frmMain.frmTmp.VerificarPagoDiferencia;
   end;
end;

end.
