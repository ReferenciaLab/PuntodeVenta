unit CambioLaboratorio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxLayoutControl, cxControls, cxTextEdit, cxDBEdit, cxContainer,
  cxEdit, cxCheckBox, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons,
  dbTables,db;

type
  TfrmCambioLaboratorio = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    cxButton1: TcxButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Run;
  end;

var
  frmCambioLaboratorio: TfrmCambioLaboratorio;

implementation

uses ActionsDM, DataModule, Main, PuntoVenta;

{$R *.dfm}

procedure TfrmCambioLaboratorio.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmCambioLaboratorio.Run;
Var
 Laboratorio : String;
begin
 If (frmMain.Exis_Vta = True) then
  Begin
    Laboratorio := frmMain.frmTmp.qrEntradaPacienteDetalleMuestraNo.Value;
    frmMain.frmTmp.qrEntradaPacienteDetalle.edit;
    showmodal;
    if (ModalResult = mrCancel) and (frmMain.frmTmp.qrEntradaPacienteDetalleMuestraNo.Value <> Laboratorio) then
      frmMain.frmTmp.qrEntradaPacienteDetalleMuestraNo.Value := Laboratorio;
    frmMain.frmTmp.qrEntradaPacienteDetalle.post;
  end;

 If (frmMain.Exis_Cli = True) then
  Begin
    Laboratorio := frmMain.frmClinica.qrEntradaPacienteDetalleMuestraNo.Value;
    frmMain.frmClinica.qrEntradaPacienteDetalle.edit;
    showmodal;
    if (ModalResult = mrCancel) and (frmMain.frmClinica.qrEntradaPacienteDetalleMuestraNo.Value <> Laboratorio) then
      frmMain.frmClinica.qrEntradaPacienteDetalleMuestraNo.Value := Laboratorio;
    frmMain.frmClinica.qrEntradaPacienteDetalle.post;
  end;
end;


end.
