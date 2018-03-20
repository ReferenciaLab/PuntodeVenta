unit ConfirmarCobertura;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxLayoutControl, cxControls, cxTextEdit, cxDBEdit, cxContainer,
  cxEdit, cxCheckBox, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons,
  dbTables,db, cxCurrencyEdit;

type
  TfrmConfirmarCobertura = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    cxButton1: TcxButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    edcoberturavalor: TcxDBCurrencyEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxDBCheckBox2: TcxDBCheckBox;
    dxLayoutControl1Item7: TdxLayoutItem;
    procedure edcoberturavalorExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Run;
  end;

var
  frmConfirmarCobertura: TfrmConfirmarCobertura;

implementation

uses ActionsDM, DataModule, Main, PuntoVenta;

{$R *.dfm}

procedure TfrmConfirmarCobertura.edcoberturavalorExit(Sender: TObject);
begin
  if frmMain.frmTmp.qrEntradaPaciente.State in [dsedit,dsinsert] then
   frmMain.frmTmp.ActTotales;
end;

procedure TfrmConfirmarCobertura.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = Vk_Down) then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);
  if (key = 13) then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);
  if (key = Vk_Up) then
     PostMessage(Handle, Wm_NextDlgCtl, 1, 0);
  if (key = 27) then
  begin
   Close;
  end;
end;

procedure TfrmConfirmarCobertura.Run;
Var
 Aprobacion, ConfirmadoPor : String;
 Confirmado : Boolean;
begin
 Aprobacion := frmMain.frmTmp.qrEntradaPacienteAprobacionNo.Value;
 ConfirmadoPor := frmMain.frmTmp.qrEntradaPacienteAPROBACIONPOR.Value;

 if (frmMain.frmTmp.qrEntradaPaciente.State <> dsEdit) and
    (frmMain.frmTmp.qrEntradaPaciente.State <> dsInsert) then
   frmMain.frmTmp.qrEntradaPaciente.Edit;

// frmMain.frmTmp.qrEntradaPacienteCoberturaConfirmada.Value := True;
 frmMain.frmTmp.qrEntradaPacienteCoberturaConfirmada.Value := 1;
 frmMain.frmTmp.qrEntradaPacienteCoberturaValor.Value := frmMain.frmTmp.qrEntradaPacienteCoberturaSeguro.Value ;
 showmodal;

 if ModalResult = mrOk then
   begin
    If (frmMain.frmTmp.qrEntradaPacienteCoberturaValor.Value < 1) Or
       (frmMain.frmTmp.qrEntradaPacienteCoberturaValor.IsNull) then
      DM.Error('El Monto de Cobertura Esta en Cero. Por Favor Verifique.!!!')
    Else
      Begin
        if frmMain.frmTmp.qrEntradaPacienteSubtotal.Value <> 0 then
           frmMain.frmTmp.qrEntradaPacienteCoberturaPorc.Value := frmMain.frmTmp.qrEntradaPacienteCoberturaValor.Value * 100 /
                                                                  frmMain.frmTmp.qrEntradaPacienteSubtotal.Value;
        frmMain.frmTmp.RefrescarInterface;
      End;
   End
 else
   begin
     frmMain.frmTmp.qrEntradaPacienteAprobacionNo.Value := Aprobacion;
     frmMain.frmTmp.qrEntradaPacienteAPROBACIONPOR.Value := ConfirmadoPor;
     frmMain.frmTmp.qrEntradaPacienteCoberturaConfirmada.Value := 0;
   end;
end;


end.
