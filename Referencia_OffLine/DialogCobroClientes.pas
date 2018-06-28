unit DialogCobroClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, StdCtrls, cxButtons, cxTextEdit, dxLayoutControl,
  cxContainer, cxMaskEdit, cxDropDownEdit, cxCurrencyEdit, cxButtonEdit,
  cxCheckBox, cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox, cxCalendar,
  cxSpinEdit, dxmdaset,ADODB, ppBands, ppStrtch, ppMemo, myChkBox, ppCtrls,
  ppVar, ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppDB, ppComm, ppRelatv,
  ppDBPipe,ppTypes;

type
  TfrmDialogCobroClientes = class(TForm)
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
    btClearTP: TcxButton;
    dxLayoutControl1Item14: TdxLayoutItem;
    dxLayoutControl1Group9: TdxLayoutGroup;
    dxLayoutControl1Group12: TdxLayoutGroup;
    dxLayoutControl1Item16: TdxLayoutItem;
    cbExtCliente: TcxExtLookupComboBox;
    mdPago: TdxMemData;
    mdPagoFormaDePago: TStringField;
    mdPagoOrden: TSmallintField;
    mdPagoPagado: TCurrencyField;
    mdPagoFormaPagoID: TStringField;
    mdPagorefrecid: TLargeintField;
    mdPagoMoneda: TStringField;
    mdPagoCobroID: TStringField;
    mdPagoPagadoTotal: TCurrencyField;
    mdPagoBancoID: TStringField;
    mdPagoNumero_Referencia: TStringField;
    mdPagoFecha_Vencimiento: TDateTimeField;
    mdPagoNumero_Aprobacion: TStringField;
    dxLayoutControl1Item17: TdxLayoutItem;
    btFindClient: TcxButton;
    dxLayoutControl1Group13: TdxLayoutGroup;
    edNombre: TcxTextEdit;
    dxLayoutControl1Item20: TdxLayoutItem;
    edCedula: TcxMaskEdit;
    dxLayoutControl1Item19: TdxLayoutItem;
    dxLayoutControl1Group14: TdxLayoutGroup;
    mdPagoConcepto: TStringField;
    qrImpCobro: TADOQuery;
    dsCobros: TDataSource;
    qrImpCobroNombre_Sucursal: TStringField;
    qrImpCobroResponsable: TStringField;
    qrImpCobroClienteID: TStringField;
    qrImpCobroNombre_Cliente: TStringField;
    qrImpCobroUsuarioID: TStringField;
    qrImpCobroMonedaID: TStringField;
    qrImpCobroReciboNo: TStringField;
    qrImpCobroForma_Pago: TStringField;
    qrImpCobroDescripcion: TStringField;
    qrImpCobroMonto: TBCDField;
    ppCobroCliente: TppDBPipeline;
    qrImpCobroTotal: TBCDField;
    qrImpCobroNumero_Serial: TStringField;
    qrImpCobroFecha_Emision: TDateTimeField;
    qrImpCobroFecha_Revision: TDateTimeField;
    ppImpCobroCliente: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDBText26: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppLabel6: TppLabel;
    ppLabel25: TppLabel;
    ppDBText31: TppDBText;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppShape2: TppShape;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel38: TppLabel;
    ppLabel227: TppLabel;
    ppDBText134: TppDBText;
    ppLabel233: TppLabel;
    ppLabel234: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel235: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppLabel236: TppLabel;
    ppDBText137: TppDBText;
    ppLabel90: TppLabel;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDetailBand2: TppDetailBand;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText136: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLine1: TppLine;
    ppLabel4: TppLabel;
    ppLabel259: TppLabel;
    ppLabel260: TppLabel;
    ppLabel261: TppLabel;
    ppDBText147: TppDBText;
    ppDBText148: TppDBText;
    ppDBText149: TppDBText;
    ppLabel231: TppLabel;
    ppDBText48: TppDBText;
    procedure edCedulaExit(Sender: TObject);
    procedure cbExtClienteClick(Sender: TObject);
    procedure cbExtClientePropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cbExtClienteExit(Sender: TObject);
    procedure btFindClientClick(Sender: TObject);
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
    efectivo             : Currency;
    cheque               : Currency;
    tarjetac             : Currency;
    tarjetad             : Currency;
    tpago                : Currency;
    sumatotal            : Currency;
    devuelta             : Currency;
    Secuencia            : Int64;
    cobroid              : String;
    MonedaID             : String;
    TipoCob              : String;
    Db1Servidor,Db2Servidor : String;
  public
    { Public declarations }
    procedure Run;
    procedure buscar;
    function  buscar_valores : Boolean;
    procedure RefrescarCobro;
    procedure correccion;
    procedure CancelarCobro;
    procedure CancelarCobroAct;
    Function  Inserta_Detalle_Int : Boolean;
    Function  ActPago : Boolean;
    function  GetSecuenciaId : Int64;
  end;

var
  frmDialogCobroClientes: TfrmDialogCobroClientes;
  AdentroGrid : Boolean;

implementation

uses ActionsDM, DataModule, Main;

{$R *.dfm}

procedure TfrmDialogCobroClientes.cbExtClienteClick(Sender: TObject);
begin
  btFindClientClick(Sender);
end;

procedure TfrmDialogCobroClientes.cbExtClienteExit(Sender: TObject);
begin
  btFindClientClick(Sender);
end;

procedure TfrmDialogCobroClientes.cbExtClientePropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  btFindClientClick(Sender);
end;

procedure TfrmDialogCobroClientes.cgDatosEnter(Sender: TObject);
begin
// buscar;
 AdentroGrid := True;
end;


procedure TfrmDialogCobroClientes.cgDatosExit(Sender: TObject);
begin
 buscar;
 AdentroGrid := False;
end;


procedure TfrmDialogCobroClientes.cgDatosFocusedViewChanged(Sender: TcxCustomGrid;
  APrevFocusedView, AFocusedView: TcxCustomGridView);
begin
// buscar;
end;


procedure TfrmDialogCobroClientes.FormCreate(Sender: TObject);
Var BuscarEn :TDataset;
    i       : integer;
    str     : string;
    cont    : integer;
begin
end;

procedure TfrmDialogCobroClientes.FormKeyDown(Sender: TObject; var Key: Word;
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


procedure TfrmDialogCobroClientes.FormShow(Sender: TObject);
begin
  DM.qryBanco.Connection :=dm.DataBase;
  With DM.qryBanco, sql do
  begin
    Close;
    Clear;
    Text :='Select BankCode,BankName from ODSC ';
    Open;
  end;
  If not DM.qrCliente.Active then
    DM.qrCliente.Open;
end;

procedure TfrmDialogCobroClientes.btaceptarClick(Sender: TObject);
begin
  Accion:='';
  If (tarjetac > 0) Then
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
    end
}
  end;
  If (tarjetad > 0) Then
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
  If (tpago > 0) Then
  begin
    If Trim(edTransaccion.Text)=EmptyStr Then
    begin
       Raise exception.CreateFmt('Debe registrar número de transacción.  Verifique.', []);
       edTransaccion.SetFocus;
    end;
  end;
  if  (cheque > 0) then
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
   mdPago.First;
    while not mdPago.Eof do
    begin
        if mdPagoPagado.Value > 0 then
        begin
             If (mdPagoFormaPagoID.Value = 'EFE') Then
             begin
                mdPago.Edit;
                mdPagoFecha_Vencimiento.Value :=StrToDate('01/01/1900');
                mdPagoConcepto.Value := edNombre.Text;
                mdPago.Post;
             end;
             If (mdPagoFormaPagoID.Value = 'TC') Then
             begin
                mdPago.Edit;
//                frmMain.frmTmp.mdPagoNumero_Referencia.Value := Trim(edNumeroTarC.EditValue);
//                If (Length(Trim(cboMesTC.EditText))> 0) And (Length(Trim(cboAnoTC.EditText))> 0) then
//                    frmMain.frmTmp.mdPagoFecha_Vencimiento.Value :=StrToDate('01'+'/'+Formatfloat('00',cboMesTC.EditValue)+'/'+Formatfloat('0000',cboAnoTC.EditValue))
//                else
                mdPagoFecha_Vencimiento.Value :=StrToDate('01/01/1900');
                mdPagoNumero_Aprobacion.Value := Trim(edAprobacionTarC.EditValue);
                mdPagoConcepto.Value := edNombre.Text;
                mdPago.Post;
             end;
             If (mdPagoFormaPagoID.Value = 'TD') Then
             begin
                mdPago.Edit;
//                frmMain.frmTmp.mdPagoNumero_Referencia.Value := Trim(edNumeroTarD.EditValue);
//                If (Length(Trim(cboMesTD.EditText))> 0) And (Length(Trim(cboAnoTD.EditText))> 0) then
//                  frmMain.frmTmp.mdPagoFecha_Vencimiento.Value :=StrToDate('01'+'/'+Formatfloat('00',cboMesTD.EditValue)+'/'+Formatfloat('0000',cboAnoTD.EditValue))
//                else
                mdPagoFecha_Vencimiento.Value :=StrToDate('01/01/1900');
                mdPagoNumero_Aprobacion.Value := Trim(edAprobacionTarD.EditValue);
                mdPagoConcepto.Value := edNombre.Text;
                mdPago.Post;
             end;
             If (mdPagoFormaPagoID.Value = 'TP') Then
             begin
                mdPago.Edit;
                mdPagoNumero_Aprobacion.Value := Trim(edTransaccion.EditValue);
                mdPagoConcepto.Value := edNombre.Text;
                mdPago.Post;
             end;
             If (mdPagoFormaPagoID.Value = 'CK') Then
             begin
               mdPago.Edit;
               mdPagoBancoID.Value := Trim(cbExtBancoCheque.EditValue);
               mdPagoNumero_Referencia.Value :=Trim(edNumeroCK.EditValue);
               mdPagoFecha_Vencimiento.Value :=StrToDate(FormatDateTime('dd/mm/yyyy', dtFechaCK.EditValue));
               mdPagoConcepto.Value := edNombre.Text;
               mdPago.Post;
             end;
        end;
        mdPago.Next;
    end;
    mdPago.First;
    If DM.Mensaje('Desea Generar el Recibo Para Este Ingreso?',mb_yesno) = id_yes Then
    Begin
        If buscar_valores then
        begin
            If (DM.Redondeo(sumatotal + efectivo) > 0) Then
            Begin
                TipoCob := 'RI';
                correccion;
                If TipoCob = 'RI' then
                begin
                  if Inserta_Detalle_Int then
                  begin
                    If Not ActPago Then
                    begin
                      CancelarCobroAct;
                      TipoCob:=EmptyStr;
                      Raise exception.CreateFmt( ' NO Se Pudo Generar el Recibo de Ingreso. '+ #13 +
                                        ' Se Ha Generado Un Error en el SP. '+ #13 +
                                        ' Por Favor, Intentelo Nuevamente.!!!', []);
                    end;
                    //Imprimir_Cobro;
                      qrImpCobro.Close;
                      qrImpCobro.SQL.Text:=' Select s.Nombre as Nombre_Sucursal,c.Concepto as Responsable,c.ClienteID,e.Nombre as Nombre_Cliente,'+
                                            ' c.UsuarioID,c.MonedaID,c.ReciboNo,d.FormaDePagoID as Forma_Pago, '+
                                            '(Case d.FormaDePagoID when '+#39+'PGE'+#39+' Then '+#39+'Pago en Efectivo (RD$)'+#39+
                                            ' when '+#39+'PGD'+#39+' Then '+#39+'Tarjeta de Débito'+#39+
					                                  ' when '+#39+'PGT'+#39+' Then '+#39+'Tarjeta de Crédito'+#39+
					                                  ' when '+#39+'PGK'+#39+' Then '+#39+'Cheques'+#39+
                                            ' when '+#39+'PGU'+#39+' Then '+#39+'Pago en Efectivo (US$)'+#39+
                                            ' End) As Descripcion,d.Monto,(Select Isnull(Sum(Monto),0) From Ptcobrodetalle Where CobroID='+#39+cobroid+#39+') As Total, '+
                                            ' (Select Serial from PtSeriales Where Grupo_ID='+#39+'97'+#39+') As Numero_Serial,(Select Fecha_Emision from PtSeriales Where Grupo_ID='+#39+'97'+#39+') As Fecha_Emision,' +
                                            ' (Select Fecha_Revision from PtSeriales Where Grupo_ID='+#39+'97'+#39+') As Fecha_Revision '+
                                            ' From ptcobro c inner join ptcliente e on c.clienteid=e.ClienteID '+
                                            ' inner join ptSucursal s on c.SucursalID=s.SucursalID inner join PTCobroDetalle d on c.CobroID=d.CobroID '+
                                            ' WHERE c.cobroid='+#39+cobroid+#39;
                      qrImpCobro.Open;
                      if qrImpCobro.RecordCount > 0 then
                      begin
                        ppImpCobroCliente.PrinterSetup.Copies := 3;
                        ppImpCobroCliente.DeviceType := dtScreen;
                        ppImpCobroCliente.Print;
                      end;
                    //Fin Impresion Cobro
                  end;
                end
            end
            Else
            begin
                CancelarCobro;
    //                  Raise exception.CreateFmt('El Cobro NO Fue Generado. NO Registro Ningun Monto Cobrado. Por Favor Verifique.', []);
                DM.Info('El Cobro NO Fue Generado. NO Registro Ningun Monto Cobrado. Por Favor Verifique.');
            end;
        end
        Else
        begin
            CancelarCobro;
            Raise exception.CreateFmt('El Total Cobrado Es Mayor Que El Total Pendiente. Por Favor Verifique.', []);
        end;
      End
    Else
      Begin
        CancelarCobro;
        Raise exception.CreateFmt('La Generacion del Recibo Fue Abortada por el Usuario. Por Favor Verifique.', []);
    //          DM.Info('La Generacion del Recibo Fue Abortada por el Usuario. Por Favor Verifique.');
      End;
      Accion:='S';
      Close;
{  else
    Begin
      frmMain.frmTmp.CancelarCobro;
      Raise exception.CreateFmt('El Cobro Ha Sido Cancelado por el Usuario. Por Favor Verifique.', []);
//      DM.Info('El Cobro Ha Sido Cancelado por el Usuario. Por Favor Verifique.');
    end;
}
end;

procedure TfrmDialogCobroClientes.btClearCKClick(Sender: TObject);
begin
  cbExtBancoCheque.ItemIndex := -1;
  cbExtBancoCheque.Text := EmptyStr;
  dtFechaCK.Clear;
end;

procedure TfrmDialogCobroClientes.btClearTCClick(Sender: TObject);
begin
    edAprobacionTarC.Text :=EmptyStr;
end;

procedure TfrmDialogCobroClientes.btClearTDClick(Sender: TObject);
begin
    edAprobacionTarD.Text :=EmptyStr;
end;

procedure TfrmDialogCobroClientes.btClearTPClick(Sender: TObject);
begin
    edTransaccion.Text := EmptyStr;
end;

procedure TfrmDialogCobroClientes.btFindClientClick(Sender: TObject);
begin
  RefrescarCobro;
  buscar;
end;

procedure TfrmDialogCobroClientes.buscar;
begin
  buscar_valores;
  EdCobrado.TabStop               := False;
  EdDevuelta.TabStop              := False;
//  EdPendiente.TabStop             := False;
  EdCobrado.Properties.ReadOnly   := True;
  EdDevuelta.Properties.ReadOnly  := True;
//  EdPendiente.Properties.ReadOnly := True;
//  EdPendiente.Value               := 0;//frmMain.frmTmp.qrEntradaPacienteTotalPendiente.Value;
  EdCobrado.Value                 := EdPendiente.Value;//frmMain.frmTmp.sumatotal + frmMain.frmTmp.efectivo;
//  if frmMain.frmTmp.devuelta > 0 then
//    EdDevuelta.Value                := 0//frmMain.frmTmp.devuelta
//  else
  devuelta         := 0;
  EdCobrado.Refresh;
  EdDevuelta.Refresh;
  EdPendiente.Refresh;
end;

procedure TfrmDialogCobroClientes.Run;
begin
  showmodal;
  MonedaID := Dm.Verifica_MonedaCte(cbExtCliente.Text);
  If  (ModalResult = mrCancel) and (Accion<>'S') Then
  Begin
      CancelarCobro;
      Raise exception.CreateFmt('El Cobro Ha Sido Cancelado por el Usuario. Por Favor Verifique.', []);
//      DM.Info('El Cobro Ha Sido Cancelado por el Usuario. Por Favor Verifique.');
  end;
end;

Function TfrmDialogCobroClientes.buscar_valores;
Var
  valor : Boolean;
begin
  valor := True;

  efectivo  := 0;
  sumatotal := 0;
  devuelta  := 0;
  tarjetac  := 0;
  tarjetad  := 0;
  cheque    := 0;
  tpago     := 0;

  mdPago.First;
  While Not mdPago.Eof do
   Begin
     If (mdPagoFormaPagoID.Value = 'EFE') Or
        (mdPagoFormaPagoID.Value = 'CASH') Or
        (mdPagoFormaPagoID.Value = 'EFECTIVO') Then
       efectivo := DM.Redondeo(efectivo + mdPagoPagado.Value)
     Else
     begin
        If (mdPagoFormaPagoID.Value = 'TC') Then  tarjetac  := DM.Redondeo(tarjetac + mdPagoPagado.Value);
        If (mdPagoFormaPagoID.Value = 'TD') Then  tarjetad  := DM.Redondeo(tarjetad + mdPagoPagado.Value);
        If (mdPagoFormaPagoID.Value = 'CK') Then  cheque    := DM.Redondeo(cheque + mdPagoPagado.Value);
        If (mdPagoFormaPagoID.Value = 'TP') Then  tpago     := DM.Redondeo(tpago + mdPagoPagado.Value);
        sumatotal := DM.Redondeo(sumatotal + mdPagoPagado.Value);
     end;
     mdPago.Next;
   End;

   if not ((dm.CurRol = 10)) then
    begin
      if (efectivo > EdPendiente.Value) Or //qrEntradaPacienteTotalPendiente.Value) Or
         (((efectivo>0) and (sumatotal>0)) and (efectivo+sumatotal > EdPendiente.Value )) then //qrEntradaPacienteTotalPendiente.Value)) then
      Begin
          devuelta := DM.Redondeo((sumatotal + efectivo) - EdPendiente.Value); //qrEntradaPacienteTotalPendiente.Value);
      end;
    end;
  If ((sumatotal > EdPendiente.Value {qrEntradaPacienteTotalPendiente.Value}) And not(dm.CurRol = 10)) Or
     ((efectivo  >= EdPendiente.Value {qrEntradaPacienteTotalPendiente.Value}) And (sumatotal > 0)) Or
     ((sumatotal >= EdPendiente.Value {qrEntradaPacienteTotalPendiente.Value}) And (efectivo > 0))  Then
  Begin
     valor := False;
  end;
  Result := valor;
end;
procedure TfrmDialogCobroClientes.RefrescarCobro;
Var
 sql   : String;
 qfind : TADOQuery;
begin
  DM.qrParametro.Close;
  DM.qrParametro.Open;
  MonedaId := dm.Verifica_MonedaCte(cbExtCliente.EditValue);
  //Limpiar Detalle de Pago
  mdPago.Close;
  mdPago.Open;
  mdPago.First;

  while not mdPago.Eof do
  begin
     mdPago.Delete;
     mdPago.Next;
  end;
  cobroid := DM.Get_Secuencia_Big('COBRO', DM.CurSucursal);
  qfind := DM.NewQuery;
  sql := ' SELECT * FROM PTFormaDePago (nolock) '+
         ' WHERE moneda = '+ #39 + MonedaId  + #39 +
         ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39;
  if dm.CurRolPagoEfectivo = False then
  begin
   sql:=sql+' And FormadePagoID Not IN ('+#39+'EFE'+#39+')';
  end;
  if dm.CurRolPagoTC = False then
  begin
   sql:=sql+' And FormadePagoID Not IN ('+#39+'TC'+#39+')';
  end;
  if dm.CurRolPagoTD = False then
  begin
   sql:=sql+' And FormadePagoID Not IN ('+#39+'TD'+#39+')';
  end;
  if dm.CurRolPagoCK = False then
  begin
   sql:=sql+' And FormadePagoID Not IN ('+#39+'CK'+#39+')';
  end;
  if dm.CurRolPagoUS = False then
  begin
   sql:=sql+' And FormadePagoID Not IN ('+#39+'CASH'+#39+')';
  end;
  qfind.SQL.Text := sql+' ORDER BY Orden ';
  qfind.Open;
  if qfind.IsEmpty then
  begin
      DM.Error('Error Cargando Formas de Pago.  Verifique.');
  end
  else
  begin
    Secuencia:= DM.Get_Secuencia('Secuencia');
    qfind.First;
     while not qfind.Eof do
     begin
         mdPago.Insert;

         mdPagoFormaPagoID.Value  := qfind.FieldByName('FormaDePagoId').AsString;
         mdPagoFormaDePago.Value  := qfind.FieldByName('Descripcion').AsString;
         mdPagoPagado.Value       := 0;
         mdPagoOrden.Value        := qfind.FieldByName('Orden').AsInteger;
         mdPagorefrecid.Value     := Secuencia;
         mdPagoMoneda.Value       := MonedaId;
         mdPagoCobroID.Value      := cobroid;
         mdPago.Post;
         qfind.Next;
     end;
  end;
  mdPago.First;
  FreeAndNil(qfind);
end;
procedure TfrmDialogCobroClientes.correccion;
begin
  mdPago.First;
  While Not mdPago.Eof do
   Begin
     If (mdPagoFormaPagoID.Value = 'EFE') Or
        (mdPagoFormaPagoID.Value = 'CASH') Or
        (mdPagoFormaPagoID.Value = 'EFECTIVO') Then
       Begin
         If (efectivo > 0.00) And (devuelta > 0.00) Then
         Begin
             mdPago.Edit;
             mdPagoPagado.Value := DM.Redondeo(efectivo - devuelta);
         End;
       End;

     mdPago.Next;
   End;
end;
procedure TfrmDialogCobroClientes.edCedulaExit(Sender: TObject);
Var
  qfind                   : TAdoQuery;
  Direccion,StrIDE,Limpio : String;
begin
  inherited;
  If ((Length(trim(EdCedula.EditValue))=13)) then
  Begin
      qfind := DM.NewQuery;
      DM.qrParametro.close;
      DM.qrParametro.open;
      If dm.qrParametroServidor_AS400.value = EmptyStr then
      begin
           Db1Servidor := 'Ced2011_1';
           Db2Servidor := 'Ced2011_2';
      end
      else
      begin
           Db1Servidor := 'Ced2016';
      end;
          StrIDE:=EdCedula.EditValue;
          Limpio  := DM.Cortar_Char('-', EdCedula.EditValue);

          qfind.Close;
          qfind.SQL.Text:=' SELECT NOMBRES,APELLIDO1,ISNULL(APELLIDO2,'+#39+#39+') AS APELLIDO2,FECHA_NAC,SEXO,COD_SANGRE,COD_NACION,P.COD_MUNICIPIO,P.COD_CIUDAD,'+
                               '  P.COD_SECTOR,ISNULL(CALLE,'+#39+#39+') AS CALLE,ISNULL(CASA,'+#39+#39+') AS CASA,ISNULL(EDIFICIO,'+#39+#39+') AS EDIFICIO, ISNULL(PISO,'+#39+#39+') AS PISO, ISNULL(APTO,'+#39+#39+') AS APTO,ISNULL(S.DESCRIPCION,'+#39+#39+') AS SECTOR,C.CIUDADID AS CIUDAD '+
                               '   FROM '+Db1Servidor+'..CEDULADOS P left join '+Db1Servidor+'..SECTOR_PARAJE S on  '+
                               '   		(S.COD_MUNICIPIO COLLATE SQL_AltDiction_CP850_CI_AI = P.COD_MUNICIPIO COLLATE SQL_AltDiction_CP850_CI_AI)  '+
                               '   		AND (S.COD_SECTOR COLLATE SQL_AltDiction_CP850_CI_AI = P.COD_SECTOR COLLATE SQL_AltDiction_CP850_CI_AI ) INNER JOIN   '+
                               '   '+Db1Servidor+'..MUNICIPIO M ON  '+
                               '   		M.COD_MUNICIPIO COLLATE SQL_AltDiction_CP850_CI_AI = P.COD_MUNICIPIO COLLATE SQL_AltDiction_CP850_CI_AI '+
                               '   		LEFT OUTER JOIN PTCIUDAD C ON '+
                               '   		C.COD_NUM_PADRON COLLATE SQL_AltDiction_CP850_CI_AI = P.COD_MUNICIPIO COLLATE SQL_AltDiction_CP850_CI_AI '+
                               ' WHERE MUN_CED ='+#39+Copy(EdCedula.EditValue,1,3)+#39+
                               ' AND   SEQ_CED ='+#39+copy(EdCedula.EditValue,5,7)+#39+
                               ' AND   VER_CED ='+#39+copy(EdCedula.EditValue,13,1)+#39;
          qfind.Open;
          If (dm.qrParametroServidor_AS400.value <> EmptyStr) then
          begin
                 If (qfind.RecordCount =0) Then
                 begin
                   Raise exception.CreateFmt(' Número de Cedula No Existe.  Verifique.', []);
                 end
          end
          else
          If (dm.qrParametroServidor_AS400.value = EmptyStr) and (qfind.RecordCount =0) then
          begin
                 qfind.Close;
                 qfind.SQL.Text:=' SELECT NOMBRES,APELLIDO1,ISNULL(APELLIDO2,'+#39+#39+') AS APELLIDO2,FECHA_NAC,SEXO,COD_SANGRE,COD_NACION,P.COD_MUNICIPIO,P.COD_CIUDAD,'+
                                       '  P.COD_SECTOR,ISNULL(CALLE,'+#39+#39+') AS CALLE,ISNULL(CASA,'+#39+#39+') AS CASA,ISNULL(EDIFICIO,'+#39+#39+') AS EDIFICIO, ISNULL(PISO,'+#39+#39+') AS PISO, ISNULL(APTO,'+#39+#39+') AS APTO,ISNULL(S.DESCRIPCION,'+#39+#39+') AS SECTOR,C.CIUDADID AS CIUDAD '+
                                       '   FROM '+Db2Servidor+'..CEDULADOS P left join '+Db2Servidor+'..SECTOR_PARAJE S on  '+
                                       '   		(S.COD_MUNICIPIO COLLATE SQL_AltDiction_CP850_CI_AI = P.COD_MUNICIPIO COLLATE SQL_AltDiction_CP850_CI_AI)  '+
                                       '   		AND (S.COD_SECTOR COLLATE SQL_AltDiction_CP850_CI_AI = P.COD_SECTOR COLLATE SQL_AltDiction_CP850_CI_AI ) INNER JOIN   '+
                                       '   '+Db2Servidor+'..MUNICIPIO M ON  '+
                                       '   		M.COD_MUNICIPIO COLLATE SQL_AltDiction_CP850_CI_AI = P.COD_MUNICIPIO COLLATE SQL_AltDiction_CP850_CI_AI '+
                                       '   		LEFT OUTER JOIN PTCIUDAD C ON '+
                                       '   		C.COD_NUM_PADRON COLLATE SQL_AltDiction_CP850_CI_AI = P.COD_MUNICIPIO COLLATE SQL_AltDiction_CP850_CI_AI '+
                                       ' WHERE MUN_CED ='+#39+Copy(EdCedula.EditValue,1,3)+#39+
                                       ' AND   SEQ_CED ='+#39+copy(EdCedula.EditValue,5,7)+#39+
                                       ' AND   VER_CED ='+#39+copy(EdCedula.EditValue,13,1)+#39;
                 qfind.Open;
                 If (qfind.RecordCount =0) Then
                 begin
                   Raise exception.CreateFmt(' Número de Cedula No Existe.  Verifique.', []);
                 end
           end;
           if (qfind.RecordCount > 0) then
           begin
             edNombre.EditValue := qfind.FieldByName('Nombres').AsString+' '+
                               qfind.FieldByName('APELLIDO1').AsString+' '+
                               qfind.FieldByName('APELLIDO2').AsString;
           End;
  end;
  FreeAndNil(qfind);
end;

Function TfrmDialogCobroClientes.Inserta_Detalle_Int : Boolean;
Var
 qDetalle   : TAdoQuery;
 CPagoTotal : Currency;
begin
  Result  := False;
  CPagoTotal :=0;
  mdPago.First;
  while not mdPago.Eof do
  begin
      if mdPagoPagado.Value > 0 then
        CPagoTotal := CPagoTotal + mdPagoPagado.Value
      else
        mdPago.Delete;
      mdPago.Next;
  end;
  qDetalle := DM.NewQuery;
  mdPago.First;
  With qDetalle,sql do
  begin
       Close;
       Clear;
       Add('  Delete from PTCobroDetalleInt Where CobroID='+#39+cobroid+#39);
       ExecSQL;
  end;
  While not mdPago.Eof do
  begin
       if mdPagoPagado.Value > 0 then
       begin
           With qDetalle,sql do
           begin
               Close;
               Clear;
               Add('  INSERT INTO PTCobroDetalleInt (CobroID, FormaDePagoID, Monto, Orden, '+
                           ' RefRecid,MonedaID,MontoMST,ValorTotalMST,SinPrFilter,RecId,BancoID,Numero_Referencia,Fecha_Vencimiento,Numero_Aprobacion) '+
                           ' VALUES ('+#39+cobroid+#39+','+#39+mdPagoFormaPagoID.Value+#39+','+
                              FloatToStr(mdPagoPagado.Value)+','+#39+IntToStr(mdPagoOrden.Value)+#39+','+
                              IntToStr(mdPagorefrecid.Value)+','+#39+mdPagoMoneda.Value+#39+','+
                              FloatToStr(DM.ValorMoneda(mdPagoPagado.Value,mdPagoMoneda.Value,DM.qrParametroMonedaID.Value, DM.SystemDate))+','+
                              FloatToStr(DM.ValorMoneda(CPagoTotal,mdPagoMoneda.Value,DM.qrParametroMonedaID.Value, DM.SystemDate))+','+
                              IntToStr(0)+','+IntToStr(GetSecuenciaId)+','+#39+mdPagoBancoID.Value+#39+','+#39+mdPagoNumero_Referencia.Value+#39+','+#39+FormatDateTime('yyyymmdd', mdPagoFecha_Vencimiento.AsDateTime)+#39+','+#39+mdPagoNumero_Aprobacion.Value+#39+')');
               ExecSQL;
           end;
       end;
       mdPago.Next;
  end;
  mdPago.First;
  FreeAndNil(qDetalle);
  Result := True;
end;
function TfrmDialogCobroClientes.ActPago : Boolean;
begin
Result := False;
Try
  with  dm.sp_ActPagos_PC, Parameters do
  begin
    ParamByName('@ClienteID').Value   :=  VarToStr(cbExtCliente.EditValue);
    ParamByName('@CobroID').Value     := cobroid;
    ParamByName('@Tipo_Cobro').Value  := TipoCob;
    ParamByName('@UserID').Value      := DM.CurUser;
    ParamByName('@SucursalID').Value  := DM.CurSucursal;
    ParamByName('@Devuelta').Value    := Devuelta;
    ParamByName('@Monto_Cob').Value   := EdCobrado.Value;
    ParamByName('@Responsable').Value := edNombre.EditValue;
    ExecProc;
    Result:= True;
  end;
  Except
    if not dm.Database.Connected then
    begin
      dm.Database.Connected := True;
      dm.sp_ActPagos_PC.ExecProc;
      Result:=True;
    end;
  End
end;
procedure TfrmDialogCobroClientes.CancelarCobro;
begin
  if (Cobroid<>EmptyStr) then
  begin
       DM.DataBase.Execute(' DELETE FROM PTCobro WHERE CobroID = '+ #39 + cobroid + #39);

       DM.DataBase.Execute(' DELETE FROM PTCobroDetalle WHERE CobroID = '+ #39 + cobroid + #39);
  end;
// cobroid := '';
end;
procedure TfrmDialogCobroClientes.CancelarCobroAct;
begin

  if (Cobroid<>EmptyStr) then
  begin
       DM.DataBase.Execute(' DELETE FROM PTCobroDetalleInt WHERE CobroID = '+ #39 + cobroid + #39);
  end;
// cobroid := '';
end;

function TfrmDialogCobroClientes.GetSecuenciaId : Int64;
Var
 _valor   : String;
 numero   : Int64;
 qsecdoc  : TADOQuery;
begin
 _valor  := '';
 numero  := 0;

 qsecdoc := DM.NewQuery;
 With qsecdoc,sql do
 begin
   Close;
   Clear;
   Add(' DECLARE	@return_value int,@r_result bigint,@r_result2 bigint,@r_result3 bit ');
   Add(' EXEC	@return_value = [dbo].[Sec_Documentos] ');
   Add(' @Tipo_Doc = N'+#39+'SEDOC'+#39+',');
   Add(' @SucursalID = N'+#39+DM.CurSucursal+#39+',');
   Add(' @r_result = @r_result OUTPUT, ');
   Add(' @r_result2 = @r_result2 OUTPUT, ');
   Add(' @r_result3 = @r_result3 OUTPUT ');
   Add(' SELECT	@r_result as Secuencia,@r_result2 as SucursalAS400');
   Open;
   if not IsEmpty then
   begin
     if FieldByName('Secuencia').AsString <> '' then
       numero := StrtoInt64(FieldByName('Secuencia').AsString)
     else
       numero := 1;
     _valor := FormatFloat('000', FieldByName('SucursalAS400').AsInteger) +
               FormatFloat('000000000000', numero);
   end;
   Result := StrToInt64(_valor);
 end;
End;
end.


