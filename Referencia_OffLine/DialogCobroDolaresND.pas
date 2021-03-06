unit DialogCobroDolaresND;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, StdCtrls, cxButtons, cxTextEdit, dxLayoutControl,
  cxContainer, cxMaskEdit, cxDropDownEdit, cxCurrencyEdit;

type
  TfrmDialogCobroDolaresND = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dbDatos: TcxGridDBTableView;
    lvDatos: TcxGridLevel;
    cgDatos: TcxGrid;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    btcancelar: TcxButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    btaceptar: TcxButton;
    dxLayoutControl1Item6: TdxLayoutItem;
    dsDatos: TDataSource;
    dbDatosDescripcion: TcxGridDBColumn;
    dbDatosPagado: TcxGridDBColumn;
    dbDatosMoneda: TcxGridDBColumn;
    LcPendiente: TdxLayoutGroup;
    EdPendiente: TcxCurrencyEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    LcDevuelta: TdxLayoutGroup;
    EdCobrado: TcxCurrencyEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    EdDevuelta: TcxCurrencyEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    procedure cgDatosFocusedViewChanged(Sender: TcxCustomGrid; APrevFocusedView,
      AFocusedView: TcxCustomGridView);
    procedure cgDatosExit(Sender: TObject);
    procedure cgDatosEnter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Run;
    procedure buscar;
  end;

var
  frmDialogCobroDolaresND: TfrmDialogCobroDolaresND;
  AdentroGrid : Boolean;

implementation


uses ActionsDM, DataModule, PuntoVentaND, Main;

{$R *.dfm}


procedure TfrmDialogCobroDolaresND.cgDatosEnter(Sender: TObject);
begin
// buscar;
 AdentroGrid := True;
end;


procedure TfrmDialogCobroDolaresND.cgDatosExit(Sender: TObject);
begin
 buscar;
 AdentroGrid := False;
end;


procedure TfrmDialogCobroDolaresND.cgDatosFocusedViewChanged(Sender: TcxCustomGrid;
  APrevFocusedView, AFocusedView: TcxCustomGridView);
begin
// buscar;
end;


procedure TfrmDialogCobroDolaresND.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = Vk_Down) and (not AdentroGrid) then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);
  if (key = 13) then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);
  if (key = Vk_Up) and (not AdentroGrid) then
     PostMessage(Handle, Wm_NextDlgCtl, 1, 0);
  if (key = 27) then
  begin
   Close;
  end;
end;


procedure TfrmDialogCobroDolaresND.buscar;
begin
  frmMain.frmTmpND.buscar_valores;
  EdPendiente.Value := frmMain.frmTmpND.qrEntradaPacienteTotalPendiente.Value;
  EdCobrado.Value   := frmMain.frmTmpND.sumatotal + frmMain.frmTmpND.efectivo;
  EdDevuelta.Value  := frmMain.frmTmpND.devuelta;
  EdCobrado.TabStop               := False;
  EdDevuelta.TabStop              := False;
  EdPendiente.TabStop             := False;
  EdCobrado.Properties.ReadOnly   := True;
  EdDevuelta.Properties.ReadOnly  := True;
  EdPendiente.Properties.ReadOnly := True;

  If (EdDevuelta.Value < 0) Then
   EdDevuelta.Value := 0;

  EdCobrado.Refresh;
  EdDevuelta.Refresh;
  EdPendiente.Refresh;
end;


procedure TfrmDialogCobroDolaresND.Run;
begin
  buscar;
  showmodal;
      If ModalResult = mrOk then
        begin
          If DM.Mensaje('Desea Generar el Recibo Para Este Ingreso?',mb_yesno) = id_yes Then
            Begin
              If frmMain.frmTmpND.buscar_valores then
                begin
                  If (DM.Redondeo(frmMain.frmTmpND.sumatotal + frmMain.frmTmpND.efectivo) > 0) Then
                    Begin
                      frmMain.frmTmpND.TipoCob := 'RI';
                      frmMain.frmTmpND.correccion;
                    end
                  Else
                    begin
                      frmMain.frmTmpND.CancelarCobro;
    //                  Raise exception.CreateFmt('El Cobro NO Fue Generado. NO Registro Ningun Monto Cobrado. Por Favor Verifique.', []);
                      DM.Info('El Cobro NO Fue Generado. NO Registro Ningun Monto Cobrado. Por Favor Verifique.');
                    end;
                end
              Else
                begin
                  frmMain.frmTmpND.CancelarCobro;
                  Raise exception.CreateFmt('El Total Cobrado Es Mayor Que El Total Pendiente. Por Favor Verifique.', []);
                end;
            End
          Else
            Begin
              frmMain.frmTmpND.CancelarCobro;
              Raise exception.CreateFmt('La Generacion del Recibo Fue Abortada por el Usuario. Por Favor Verifique.', []);
    //          DM.Info('La Generacion del Recibo Fue Abortada por el Usuario. Por Favor Verifique.');
            End;
        end
      else
        Begin
          frmMain.frmTmpND.CancelarCobro;
          Raise exception.CreateFmt('El Cobro Ha Sido Cancelado por el Usuario. Por Favor Verifique.', []);
    //      DM.Info('El Cobro Ha Sido Cancelado por el Usuario. Por Favor Verifique.');
        end;
end;
end.


