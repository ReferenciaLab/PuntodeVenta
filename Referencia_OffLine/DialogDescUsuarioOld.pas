unit DialogDescUsuarioOld;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DialogModule, Menus, cxLookAndFeelPainters, dxLayoutControl,
  StdCtrls, cxButtons, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxCurrencyEdit, db;

type
  TfrmDialogDescUsuarioOld = class(TfrmDialogModule)
    eddescuento: TcxCurrencyEdit;
    lcDialogItem1: TdxLayoutItem;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Run;
  end;

var
  frmDialogDescUsuarioOld: TfrmDialogDescUsuarioOld;

implementation

uses Main, DataModule;

{$R *.dfm}

procedure TfrmDialogDescUsuarioOld.Run;
begin
  eddescuento.Value := DM.DescuentoUsuario(Dm.CurUser);
  showmodal;
  if ModalResult = mrOk then
  begin
   if (frmMain.frmTmp.qrEntradaPaciente.State <> dsedit) and
      (frmMain.frmTmp.qrEntradaPaciente.State <> dsinsert) then
      frmMain.frmTmp.qrEntradaPaciente.Edit;

   frmMain.frmTmp.qrEntradaPacienteDescuentoPorc.Value := eddescuento.Value;
   frmMain.frmTmp.qrEntradaPacienteDescAutorizadoPor.Value := DM.CurUser;
   frmMain.frmTmp.qrEntradaPacienteDescuentoValor.Value := 0;
   frmMain.frmTmp.ActTotales;
   frmMain.frmTmp.VerificarPagoDiferencia;
  end;

end;

end.
