unit DialogCobroDolares;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, StdCtrls, cxButtons, cxTextEdit, dxLayoutControl,
  cxContainer, cxMaskEdit, cxDropDownEdit, cxCurrencyEdit;

type
  TfrmDialogCobroDolares = class(TForm)
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
  frmDialogCobroDolares: TfrmDialogCobroDolares;
  AdentroGrid : Boolean;

implementation


uses ActionsDM, DataModule, PuntoVenta, Main;

{$R *.dfm}


procedure TfrmDialogCobroDolares.cgDatosEnter(Sender: TObject);
begin
// buscar;
 AdentroGrid := True;
end;


procedure TfrmDialogCobroDolares.cgDatosExit(Sender: TObject);
begin
 buscar;
 AdentroGrid := False;
end;


procedure TfrmDialogCobroDolares.cgDatosFocusedViewChanged(Sender: TcxCustomGrid;
  APrevFocusedView, AFocusedView: TcxCustomGridView);
begin
// buscar;
end;


procedure TfrmDialogCobroDolares.FormKeyDown(Sender: TObject; var Key: Word;
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


procedure TfrmDialogCobroDolares.buscar;
begin
  if Factura_st='I' then
  Begin
    frmMain.frmTmp.buscar_valores;
    EdPendiente.Value := frmMain.frmTmp.qrEntradaPacienteTotalPendiente.Value;
    EdCobrado.Value   := frmMain.frmTmp.sumatotal + frmMain.frmTmp.efectivo;
    EdDevuelta.Value  := frmMain.frmTmp.devuelta;
  end else if Factura_st='M' then
  Begin
    frmMain.frmTmpMod.buscar_valores;
    EdPendiente.Value := frmMain.frmTmpMod.qrEntradaPacienteTotalPendiente.Value;
    EdCobrado.Value   := frmMain.frmTmpMod.sumatotal + frmMain.frmTmpMod.efectivo;
    EdDevuelta.Value  := frmMain.frmTmpMod.devuelta;
  end
  else
  if Factura_st='F' then
  Begin
    frmMain.frmTmpND.buscar_valores;
    EdPendiente.Value := frmMain.frmTmpND.qrEntradaPacienteTotalPendiente.Value;
    EdCobrado.Value   := frmMain.frmTmpND.sumatotal + frmMain.frmTmpND.efectivo;
    EdDevuelta.Value  := frmMain.frmTmpND.devuelta;
  end;

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


procedure TfrmDialogCobroDolares.Run;
begin
  buscar;
  showmodal;
  if Factura_st='I' then
  Begin
      If ModalResult = mrOk then
        begin
          If DM.Mensaje('Desea Generar el Recibo Para Este Ingreso?',mb_yesno) = id_yes Then
            Begin
              If frmMain.frmTmp.buscar_valores then
                begin
                  If (DM.Redondeo(frmMain.frmTmp.sumatotal + frmMain.frmTmp.efectivo) > 0) Then
                    Begin
                      frmMain.frmTmp.TipoCob := 'RI';
                      frmMain.frmTmp.correccion;
                    end
                  Else
                    begin
                      frmMain.frmTmp.CancelarCobro;
    //                  Raise exception.CreateFmt('El Cobro NO Fue Generado. NO Registro Ningun Monto Cobrado. Por Favor Verifique.', []);
                      DM.Info('El Cobro NO Fue Generado. NO Registro Ningun Monto Cobrado. Por Favor Verifique.');
                    end;
                end
              Else
                begin
                  frmMain.frmTmp.CancelarCobro;
                  Raise exception.CreateFmt('El Total Cobrado Es Mayor Que El Total Pendiente. Por Favor Verifique.', []);
                end;
            End
          Else
            Begin
              frmMain.frmTmp.CancelarCobro;
              Raise exception.CreateFmt('La Generacion del Recibo Fue Abortada por el Usuario. Por Favor Verifique.', []);
    //          DM.Info('La Generacion del Recibo Fue Abortada por el Usuario. Por Favor Verifique.');
            End;
        end
      else
        Begin
          frmMain.frmTmp.CancelarCobro;
          Raise exception.CreateFmt('El Cobro Ha Sido Cancelado por el Usuario. Por Favor Verifique.', []);
    //      DM.Info('El Cobro Ha Sido Cancelado por el Usuario. Por Favor Verifique.');
        end;
  end else if Factura_st='M' then
  Begin
      If ModalResult = mrOk then
        begin
          If DM.Mensaje('Desea Generar el Recibo Para Este Ingreso?',mb_yesno) = id_yes Then
            Begin
              If frmMain.frmTmpMod.buscar_valores then
                begin
                  If (DM.Redondeo(frmMain.frmTmpMod.sumatotal + frmMain.frmTmpMod.efectivo) > 0) Then
                    Begin
                      frmMain.frmTmpMod.TipoCob := 'RI';
                      frmMain.frmTmpMod.correccion;
                    end
                  Else
                    begin
                      frmMain.frmTmpMod.CancelarCobro;
    //                  Raise exception.CreateFmt('El Cobro NO Fue Generado. NO Registro Ningun Monto Cobrado. Por Favor Verifique.', []);
                      DM.Info('El Cobro NO Fue Generado. NO Registro Ningun Monto Cobrado. Por Favor Verifique.');
                    end;
                end
              Else
                begin
                  frmMain.frmTmpMod.CancelarCobro;
                  Raise exception.CreateFmt('El Total Cobrado Es Mayor Que El Total Pendiente. Por Favor Verifique.', []);
                end;
            End
          Else
            Begin
              frmMain.frmTmpMod.CancelarCobro;
              Raise exception.CreateFmt('La Generacion del Recibo Fue Abortada por el Usuario. Por Favor Verifique.', []);
    //          DM.Info('La Generacion del Recibo Fue Abortada por el Usuario. Por Favor Verifique.');
            End;
        end
      else
        Begin
          frmMain.frmTmpMod.CancelarCobro;
          Raise exception.CreateFmt('El Cobro Ha Sido Cancelado por el Usuario. Por Favor Verifique.', []);
    //      DM.Info('El Cobro Ha Sido Cancelado por el Usuario. Por Favor Verifique.');
        end;
  end
  else if Factura_st='F' then
  Begin
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
end;


end.


