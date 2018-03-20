unit DialogCobroPesosLab;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, StdCtrls, cxButtons, cxTextEdit, dxLayoutControl,
  cxContainer, cxMaskEdit, cxDropDownEdit, cxCurrencyEdit, cxButtonEdit,
  cxCheckBox, cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox, cxCalendar,
  cxSpinEdit;

type
  TfrmDialogCobroPesosLab = class(TForm)
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
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Group7: TdxLayoutGroup;
    cbExtBancoCheque: TcxExtLookupComboBox;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutControl1Item15: TdxLayoutItem;
    dxLayoutControl1Item7: TdxLayoutItem;
    edNumeroCK: TcxMaskEdit;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Item10: TdxLayoutItem;
    btClearTC: TcxButton;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxLayoutControl1Group10: TdxLayoutGroup;
    btClearTD: TcxButton;
    btClearCK: TcxButton;
    dxLayoutControl1Item18: TdxLayoutItem;
    dxLayoutControl1Group11: TdxLayoutGroup;
    dtFechaCK: TcxDateEdit;
    edAprobacionTarC: TcxMaskEdit;
    edAprobacionTarD: TcxMaskEdit;
    dxLayoutControl1Group8: TdxLayoutGroup;
    dxLayoutControl1Item8: TdxLayoutItem;
    edTransaccion: TcxMaskEdit;
    dxLayoutControl1Item14: TdxLayoutItem;
    btClearTP: TcxButton;
    procedure btClearTPClick(Sender: TObject);
    procedure btClearCKClick(Sender: TObject);
    procedure btClearTDClick(Sender: TObject);
    procedure btClearTCClick(Sender: TObject);
    procedure btaceptarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cgDatosFocusedViewChanged(Sender: TcxCustomGrid; APrevFocusedView,
      AFocusedView: TcxCustomGridView);
    procedure cgDatosExit(Sender: TObject);
    procedure cgDatosEnter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    Accion  : String;
  public
    { Public declarations }
    procedure Run;
    procedure buscar;
  end;

var
  frmDialogCobroPesosLab: TfrmDialogCobroPesosLab;
  AdentroGrid : Boolean;

implementation

uses ActionsDM, DataModule, PuntoVentaLab, Main;

{$R *.dfm}

procedure TfrmDialogCobroPesosLab.cgDatosEnter(Sender: TObject);
begin
// buscar;
 AdentroGrid := True;
end;


procedure TfrmDialogCobroPesosLab.cgDatosExit(Sender: TObject);
begin
 buscar;
 AdentroGrid := False;
end;


procedure TfrmDialogCobroPesosLab.cgDatosFocusedViewChanged(Sender: TcxCustomGrid;
  APrevFocusedView, AFocusedView: TcxCustomGridView);
begin
// buscar;
end;


procedure TfrmDialogCobroPesosLab.FormCreate(Sender: TObject);
Var BuscarEn :TDataset;
    i       : integer;
    str     : string;
    cont    : integer;
begin
{  str:=FormatDateTime('yyyy',dm.Fecha_Server);
  For i := 0 to 20 do
  begin
      if i>0 then
      begin
       cont:=strtoint(str)+1;
       str := inttostr(cont);
      end;
      With cboAnoTC do
      begin
        Properties.Items.Add(str);
      end;
  End;
  str:=FormatDateTime('yyyy',dm.Fecha_Server);
  i:=0;
  cont:=0;
  For i := 0 to 20 do
  begin
      if i>0 then
      begin
       cont:=strtoint(str)+1;
       str := inttostr(cont);
      end;
      With cboAnoTD do
      begin
        Properties.Items.Add(str);
      end;
  End;
}  
end;

procedure TfrmDialogCobroPesosLab.FormKeyDown(Sender: TObject; var Key: Word;
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


procedure TfrmDialogCobroPesosLab.FormShow(Sender: TObject);
begin
    DM.qryBanco.Connection :=dm.DataBase;
    With DM.qryBanco, sql do
    begin
      Close;
      Clear;
      Text :='Select BankCode,BankName from dbo.ODSC ';
      Open;
    end;
end;

procedure TfrmDialogCobroPesosLab.btaceptarClick(Sender: TObject);
begin
  Accion:='';
  If (frmMain.frmTmpLab.tarjetac > 0) Then
  begin
{    If Trim(edNumeroTarC.Text)=EmptyStr Then
    begin
       Raise exception.CreateFmt('Debe registrar últimos 4 dígitos de la tarjeta de crédito.  Verifique.', []);
       edNumeroTarC.SetFocus;
    end;
}
    If Trim(edAprobacionTarC.Text)=EmptyStr Then
    begin
       Raise exception.CreateFmt('Debe registrar número de aprobación de la transacción.  Verifique.', []);
       edAprobacionTarC.SetFocus;
    end;

{    If (dm.TipoTarjeta[dm.ComprobarTarjeta(edNumeroTarC.Text)])='No válida' then
    begin
        If DM.Mensaje('Esta Tarjeta-Crédito No pertenece a estas Compañias (American Express - Visa - Mastercard - Discover).  Desea Aceptarlo?',mb_yesno) = id_no then
        begin
          edNumeroTarC.SetFocus;
          Exit;
        end;
    end;

    If Not(Length(Trim(cboMesTC.EditText))> 0)  Then
    begin
       If DM.Mensaje('Mes de Vencimiento de la Tarjeta de Crédito esta en blanco.  Desea Aceptarlo?',mb_yesno) = id_no then
       begin
        cboMesTC.SetFocus;
        Exit;
       end;
    end;
    If Not(Length(Trim(cboAnoTC.EditText))>0) Then
    begin
       If DM.Mensaje('Año de Vencimiento de la Tarjeta de Crédito esta en blanco.  Desea Aceptarlo?',mb_yesno) = id_no then
       begin
          cboAnoTC.SetFocus;
          Exit;
       end;
    end;
    if  (Length(Trim(cboMesTC.EditText))> 0) And (Length(Trim(cboAnoTC.EditText))> 0) then
    begin
      If StrToDate((FormatDateTime('dd/mm/yyyy',dm.Fecha_Server))) >  (StrToDate('01'+'/'+Formatfloat('00',cboMesTC.EditValue)+'/'+Formatfloat('0000',cboAnoTC.EditValue))) then
      begin
          If DM.Mensaje('Fecha-Vencimiento Tarjeta de Crédito debe ser > que la fecha del día.  Desea Aceptarlo?',mb_yesno) = id_no then
          begin
            cboAnoTC.SetFocus;
            Exit;
          end;
      end;
    end;
}
  end;
  If (frmMain.frmTmpLab.tarjetad > 0) Then
  begin
{    If Trim(edNumeroTarD.Text)=EmptyStr Then
    begin
       Raise exception.CreateFmt('Debe registrar últimos 4 dígitos de la tarjeta de débito.  Verifique.', []);
       edNumeroTarD.SetFocus;
    end;
}    
    If Trim(edAprobacionTarD.Text)=EmptyStr Then
    begin
       Raise exception.CreateFmt('Debe registrar número de aprobación de la transacción.  Verifique.', []);
       edAprobacionTarD.SetFocus;
    end;

{    If (dm.TipoTarjeta[dm.ComprobarTarjeta(edNumeroTarD.Text)])='No válida' then
    begin
        If DM.Mensaje('Esta Tarjeta-Débito No pertenece a estas Compañias (American Express - Visa - Mastercard - Discover).  Desea Aceptarlo ?',mb_yesno) = id_no then
        begin
          edNumeroTarD.SetFocus;
          Exit;
        end;
    end;

    If Not(Length(Trim(cboMesTD.EditText))>0)  Then
    begin
       If DM.Mensaje('Mes de Vencimiento de la Tarjeta de débito esta en blanco.  Desea Aceptarlo?',mb_yesno) = id_no then
       begin
        cboMesTD.SetFocus;
       end;
    end;
    If  Not(Length(Trim(cboAnoTD.EditText))>0)  Then
    begin
       If DM.Mensaje('Ano de Vencimiento de la Tarjeta de débito esta en blanco.  Desea Aceptarlo?',mb_yesno) = id_no then
       begin
        cboAnoTD.SetFocus;
        exit;
       end;
    end;
    if  (Length(Trim(cboMesTD.EditText))> 0) And (Length(Trim(cboAnoTD.EditText))> 0) then
    begin
      If StrToDate((FormatDateTime('dd/mm/yyyy',dm.Fecha_Server))) >  (StrToDate('01'+'/'+Formatfloat('00',cboMesTD.EditValue)+'/'+Formatfloat('0000',cboAnoTD.EditValue))) then
      begin
          If DM.Mensaje('Fecha-Vencimiento Tarjeta de Débito debe ser > que la fecha del día.  Desea Aceptarlo?',mb_yesno) = id_no then
          begin
            cboAnoTD.SetFocus;
            Exit;
          end;
      end;
    end;
}
  end;
  If (frmMain.frmTmpLab.tpago > 0) Then
  begin
    If Trim(edTransaccion.Text)=EmptyStr Then
    begin
       Raise exception.CreateFmt('Debe registrar número de transacción.  Verifique.', []);
       edTransaccion.SetFocus;
    end;
  end;

  if  (frmMain.frmTmpLab.cheque > 0) then
  begin
    If Trim(cbExtBancoCheque.Text) = EmptyStr Then
    begin
       Raise exception.CreateFmt('Debe registrar el Banco del cheque.  Verifique.', []);
       cbExtBancoCheque.SetFocus;
    end;
    If Trim(edNumeroCK.Text)=EmptyStr Then
    begin
       Raise exception.CreateFmt('Debe registrar número del cheque.  Verifique.', []);
       edNumeroCK.SetFocus;
    end;
    If Trim(dtfechaCK.EditValue)=EmptyStr Then
    begin
       Raise exception.CreateFmt('Debe registrar la fecha del cheque.  Verifique.', []);
       dtfechaCK.SetFocus;
    end;
  end;
   frmMain.frmTmpLab.mdPago.First;
    while not frmMain.frmTmpLab.mdPago.Eof do
    begin
        if frmMain.frmTmpLab.mdPagoPagado.Value > 0 then
        begin
             If (frmMain.frmTmpLab.mdPagoFormaPagoID.Value = 'EFE') Then
             begin
                frmMain.frmTmpLab.mdPago.Edit;
                frmMain.frmTmpLab.mdPagoFecha_Vencimiento.Value :=StrToDate('01/01/1900');
                frmMain.frmTmpLab.mdPago.Post;
             end;
             If (frmMain.frmTmpLab.mdPagoFormaPagoID.Value = 'TC') Then
             begin
                frmMain.frmTmpLab.mdPago.Edit;
//                frmMain.frmTmpLab.mdPagoNumero_Referencia.Value := Trim(edNumeroTarC.EditValue);
//                If (Length(Trim(cboMesTC.EditText))> 0) And (Length(Trim(cboAnoTC.EditText))> 0) then
//                    frmMain.frmTmpLab.mdPagoFecha_Vencimiento.Value :=StrToDate('01'+'/'+Formatfloat('00',cboMesTC.EditValue)+'/'+Formatfloat('0000',cboAnoTC.EditValue))
//                else
                frmMain.frmTmpLab.mdPagoFecha_Vencimiento.Value :=StrToDate('01/01/1900');
                frmMain.frmTmpLab.mdPagoNumero_Aprobacion.Value := Trim(edAprobacionTarC.EditValue);
                frmMain.frmTmpLab.mdPago.Post;
             end;
             If (frmMain.frmTmpLab.mdPagoFormaPagoID.Value = 'TD') Then
             begin
                frmMain.frmTmpLab.mdPago.Edit;
//                frmMain.frmTmpLab.mdPagoNumero_Referencia.Value := Trim(edNumeroTarD.EditValue);
//                If (Length(Trim(cboMesTD.EditText))> 0) And (Length(Trim(cboAnoTD.EditText))> 0) then
//                    frmMain.frmTmpLab.mdPagoFecha_Vencimiento.Value :=StrToDate('01'+'/'+Formatfloat('00',cboMesTD.EditValue)+'/'+Formatfloat('0000',cboAnoTD.EditValue))
//                else
                frmMain.frmTmpLab.mdPagoFecha_Vencimiento.Value :=StrToDate('01/01/1900');
                frmMain.frmTmpLab.mdPagoNumero_Aprobacion.Value := Trim(edAprobacionTarD.EditValue);
                frmMain.frmTmpLab.mdPago.Post;
             end;
             If (frmMain.frmTmpLab.mdPagoFormaPagoID.Value = 'TP') Then
             begin
                frmMain.frmTmpLab.mdPago.Edit;
                frmMain.frmTmpLab.mdPagoNumero_Aprobacion.Value := Trim(edTransaccion.EditValue);
                frmMain.frmTmpLab.mdPago.Post;
             end;
             If (frmMain.frmTmpLab.mdPagoFormaPagoID.Value = 'CK') Then
             begin
               frmMain.frmTmpLab.mdPago.Edit;
               frmMain.frmTmpLab.mdPagoBancoID.Value := Trim(cbExtBancoCheque.EditValue);
               frmMain.frmTmpLab.mdPagoNumero_Referencia.Value :=Trim(edNumeroCK.EditValue);
               frmMain.frmTmpLab.mdPagoFecha_Vencimiento.Value :=StrToDate(FormatDateTime('dd/mm/yyyy', dtFechaCK.EditValue));
               frmMain.frmTmpLab.mdPago.Post;
             end;
        end;
        frmMain.frmTmpLab.mdPago.Next;
    end;
    frmMain.frmTmpLab.mdPago.First;
  if (frmMain.frmTmpLab.qrEntradaPacienteDESCUENTO.Value > 0) and
     (frmMain.frmTmpLab.efectivo = 0) and
     (frmMain.frmTmpLab.qrEntradaPacienteOrigen.value = DM.qrParametroGrupoPriv.Value) And
     (Trim(frmMain.frmTmpLab.qrEntradaPacienteDescuentoCard.value) = EmptyStr) And
     (Trim(frmMain.frmTmpLab.qrEntradaPacienteDescuentoTexto.value) = EmptyStr) And
     (Trim(frmMain.frmTmpLab.qrEntradaPacienteDescuentoPlanID.value) = EmptyStr) Then
  begin
      frmMain.frmTmpLab.CancelarCobro;
      Raise exception.CreateFmt('Descuento sólo aplica a pagos en efectivo.  Por favor verifique.', []);
  end;
    If DM.Mensaje('Desea Generar el Recibo Para Este Ingreso?',mb_yesno) = id_yes Then
    Begin
        If frmMain.frmTmpLab.buscar_valores then
        begin
            If (DM.Redondeo(frmMain.frmTmpLab.sumatotal + frmMain.frmTmpLab.efectivo) > 0) Then
            Begin
                frmMain.frmTmpLab.TipoCob := 'RI';
                frmMain.frmTmpLab.correccion;
            end
            Else
            begin
                frmMain.frmTmpLab.CancelarCobro;
    //                  Raise exception.CreateFmt('El Cobro NO Fue Generado. NO Registro Ningun Monto Cobrado. Por Favor Verifique.', []);
                DM.Info('El Cobro NO Fue Generado. NO Registro Ningun Monto Cobrado. Por Favor Verifique.');
            end;
        end
        Else
        begin
            frmMain.frmTmpLab.CancelarCobro;
            Raise exception.CreateFmt('El Total Cobrado Es Mayor Que El Total Pendiente. Por Favor Verifique.', []);
        end;
      End
    Else
      Begin
        frmMain.frmTmpLab.CancelarCobro;
        Raise exception.CreateFmt('La Generacion del Recibo Fue Abortada por el Usuario. Por Favor Verifique.', []);
    //          DM.Info('La Generacion del Recibo Fue Abortada por el Usuario. Por Favor Verifique.');
      End;
      Accion:='S';
      Close;
{  else
    Begin
      frmMain.frmTmpLab.CancelarCobro;
      Raise exception.CreateFmt('El Cobro Ha Sido Cancelado por el Usuario. Por Favor Verifique.', []);
//      DM.Info('El Cobro Ha Sido Cancelado por el Usuario. Por Favor Verifique.');
    end;
}
end;

procedure TfrmDialogCobroPesosLab.btClearCKClick(Sender: TObject);
begin
  cbExtBancoCheque.ItemIndex := -1;
  cbExtBancoCheque.Text := EmptyStr;
  dtFechaCK.Clear;
end;

procedure TfrmDialogCobroPesosLab.btClearTCClick(Sender: TObject);
begin
    edAprobacionTarC.Text:=EmptyStr;
end;

procedure TfrmDialogCobroPesosLab.btClearTDClick(Sender: TObject);
begin
    edAprobacionTarD.Text:=EmptyStr;
end;

procedure TfrmDialogCobroPesosLab.btClearTPClick(Sender: TObject);
begin
    edTransaccion.Text := EmptyStr;
end;

procedure TfrmDialogCobroPesosLab.buscar;
begin
  frmMain.frmTmpLab.buscar_valores;
  EdCobrado.TabStop               := False;
  EdDevuelta.TabStop              := False;
  EdPendiente.TabStop             := False;
  EdCobrado.Properties.ReadOnly   := True;
  EdDevuelta.Properties.ReadOnly  := True;
  EdPendiente.Properties.ReadOnly := True;
  EdPendiente.Value               := frmMain.frmTmpLab.qrEntradaPacienteTotalPendiente.Value;
  EdCobrado.Value                 := frmMain.frmTmpLab.sumatotal + frmMain.frmTmpLab.efectivo;
  if frmMain.frmTmpLab.devuelta > 0 then
    EdDevuelta.Value                := frmMain.frmTmpLab.devuelta
  else
    frmMain.frmTmpLab.devuelta         := 0;
  EdCobrado.Refresh;
  EdDevuelta.Refresh;
  EdPendiente.Refresh;
end;

procedure TfrmDialogCobroPesosLab.Run;
begin
  buscar;
  showmodal;
   If  (ModalResult = mrCancel) and (Accion<>'S') Then
   Begin
      frmMain.frmTmpLab.CancelarCobro;
      Raise exception.CreateFmt('El Cobro Ha Sido Cancelado por el Usuario. Por Favor Verifique.', []);
//      DM.Info('El Cobro Ha Sido Cancelado por el Usuario. Por Favor Verifique.');
   end;
end;
end.


