unit ImpresionAcuerdo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, dxLayoutControl, StdCtrls, cxButtons,
  cxCurrencyEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxContainer, cxEdit, cxGroupBox, cxRadioGroup, cxControls,ADODB,pptypes,
  cxGraphics, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, ppStrtch,
  ppRichTx, ppBands, ppClass, ppCtrls, ppVar, ppPrnabl, ppCache, ppComm,
  ppRelatv, ppProd, ppReport, DB, ppDB, ppDBPipe, JvMemoryDataset, dlgMensajes,
  cxDBExtLookupComboBox, TXComp;

type
  TfrmImpresionAcuerdo = class(TForm)
    dxLayoutControl3: TdxLayoutControl;
    btaceptarcuadre: TcxButton;
    btcancelarcuadre: TcxButton;
    dxLayoutGroup2: TdxLayoutGroup;
    GrupoParametros: TdxLayoutGroup;
    botonescuadre: TdxLayoutGroup;
    dxLayoutControl3Item31: TdxLayoutItem;
    dxLayoutControl3Item10: TdxLayoutItem;
    Label2: TLabel;
    GrupoLaboratorio: TdxLayoutGroup;
    GrupoSucursales: TdxLayoutGroup;
    dxLayoutControl3Item42: TdxLayoutItem;
    RgImpresion: TcxRadioGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutControl3Group2: TdxLayoutGroup;
    GrupoOrdenar: TdxLayoutGroup;
    CbOrdenar: TcxComboBox;
    dxLayoutControl3Item1: TdxLayoutItem;
    cboReporte: TcxComboBox;
    dxLayoutControl3Item3: TdxLayoutItem;
    qrReporte: TADOQuery;
    dsReporte: TDataSource;
    JvReporte: TJvMemoryData;
    dsReporteJ: TDataSource;
    ppReporteAcuerdo: TppDBPipeline;
    cbExtPrueba: TcxExtLookupComboBox;
    ppImpConSeguro: TppReport;
    ppHeaderBand14: TppHeaderBand;
    ppDBText185: TppDBText;
    ppLabel170: TppLabel;
    ppLabel171: TppLabel;
    ppLabel177: TppLabel;
    ppLabel195: TppLabel;
    ppLabel199: TppLabel;
    ppLabel200: TppLabel;
    ppLabel203: TppLabel;
    ppLabel206: TppLabel;
    ppSystemVariable14: TppSystemVariable;
    ppSystemVariable15: TppSystemVariable;
    ppLabel207: TppLabel;
    ppLabel208: TppLabel;
    ppSystemVariable16: TppSystemVariable;
    ppDetailBand19: TppDetailBand;
    ppDBText188: TppDBText;
    ppDBText189: TppDBText;
    ppDBText194: TppDBText;
    ppDBText197: TppDBText;
    ppDBText193: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppDBCalc35: TppDBCalc;
    ppLabel178: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ExtraOptions1: TExtraOptions;
    ppImpSinSeguro: TppReport;
    ppHeaderBand5: TppHeaderBand;
    ppDBText40: TppDBText;
    ppLabel71: TppLabel;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLabel88: TppLabel;
    ppSystemVariable13: TppSystemVariable;
    ppSystemVariable17: TppSystemVariable;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppSystemVariable18: TppSystemVariable;
    ppDetailBand5: TppDetailBand;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText46: TppDBText;
    ppDBText52: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppDBCalc28: TppDBCalc;
    ppLabel95: TppLabel;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    GrupoCategoria: TdxLayoutGroup;
    dxLayoutControl3Item4: TdxLayoutItem;
    cbExtCliente: TcxExtLookupComboBox;
    ppLabel127: TppLabel;
    ppLabel128: TppLabel;
    ppLabel133: TppLabel;
    ppLabel134: TppLabel;
    qrReportePRUEBA: TStringField;
    qrReporteDESCRIPCION: TStringField;
    qrReporteCODIGO_CUP: TStringField;
    qrReporteDESDE: TDateTimeField;
    qrReporteHASTA: TDateTimeField;
    qrReportePRECIO: TBCDField;
    JvReportePrueba: TStringField;
    JvReporteDescripcion: TStringField;
    JvReporteFecha_Desde: TStringField;
    JvReporteFecha_Hasta: TStringField;
    JvReportePrecio: TCurrencyField;
    ppDBText67: TppDBText;
    ppLabel121: TppLabel;
    ppDBText1: TppDBText;
    JvReporteCodigo_Cup: TStringField;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    procedure FormCreate(Sender: TObject);
    procedure cboReportePropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure RefrescarCliente;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Run;
  end;

var
  frmImpresionAcuerdo: TfrmImpresionAcuerdo;
  Seleccion,Seleccion2 : string;

implementation

uses ActionsDM, DataModule, DatosClientesPlanes, Main;

{$R *.dfm}

procedure TfrmImpresionAcuerdo.cboReportePropertiesChange(Sender: TObject);
begin
  If Length(cboReporte.Text) > 0 then
  begin
       RefrescarCliente;
  end;
end;

procedure TfrmImpresionAcuerdo.FormCreate(Sender: TObject);
begin

  DM.qrGrupoCteAc.Close;
  DM.qrGrupoCteAc.Open;

  DM.qrCliente.Close;
  DM.qrCliente.Open;

  DM.qrGrupoPrueba.Close;
  DM.qrGrupoPrueba.Open;

  DM.qrPruebas.Close;
  DM.qrPruebas.Open;

//  RefrescarPrueba;
//  RefrescarCliente;
end;

procedure TfrmImpresionAcuerdo.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = Vk_Down) then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);
  if (key = 13) then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);
  if (key = Vk_Up)  then
     PostMessage(Handle, Wm_NextDlgCtl, 1, 0);
  if (key = 27) then
  begin
   Close;
  end;
end;

procedure TfrmImpresionAcuerdo.FormShow(Sender: TObject);
begin

  If not DM.qrPruebas.Active then
    DM.qrPruebas.Open;
  cboReporte.Properties.Items.Clear;
  if not DM.qrGrupoCliente.Active then
    DM.qrGrupoCliente.Open;

  cboReporte.Properties.Items.Add('GRUPO');
  cboReporte.Properties.Items.Add('CLIENTE');
end;

procedure TfrmImpresionAcuerdo.Run;
Var Muestrano_Ant,CodPrueba,CodCliente,Resultado  : String;
    qrGrupo,qrCliente : TAdoQuery;
begin
 showmodal;
 if ModalResult = mrOk then
 begin
 If cboReporte.Text = EmptyStr then
 Begin
    EtMensajeDlg('Debe Seleccionar el Tipo de Reporte.  Verifique.',etConfirmacion,[etOk],1,dm.Imagenes.Items[5].Bitmap,true);
    Exit;
 end;
 If cbExtCliente.Text = EmptyStr then
 Begin
    EtMensajeDlg('Debe Seleccionar el Tipo de Cliente.  Verifique.',etConfirmacion,[etOk],1,dm.Imagenes.Items[5].Bitmap,true);
    Exit;
 end;
 If MessageDlg('Desea Imprimir el Reporte de '+cboReporte.Text+'?', mtWarning, [mbYes,mbNo], 0) = mrYes then
 begin
    Application.ProcessMessages;
    CodPrueba:=EmptyStr;
    CodCliente:=EmptyStr;
    DM.qrPruebas.locate('Descripcion', cbExtPrueba.text,[]);
    CodPrueba  := DM.qrPruebas.FieldByName('PruebaID').AsString;

//    DM.qrGrupoCliente.locate('Descripcion', cbExtCliente.text,[]);
//    CodCliente := DM.qrGrupoCliente.FieldByName('GrupoCliente').AsString;
    CodCliente  := cbExtCliente.EditValue;
    Seleccion   := EmptyStr;
    qrGrupo     := DM.NewQuery;
    qrcliente   := DM.NewQuery;
    if cboReporte.Text = 'GRUPO' then
    begin
      With qrGrupo, sql do
      begin
          Close;
          SQL.Text := ' SELECT C.CLIENTEID FROM PTCLIENTE C INNER JOIN PRICEDISCGROUP P ON C.CLIENTEID=P.CLIENTEID WHERE GRUPOPRECIO='+#39+CodCliente+#39+
                      ' AND GRUPOCLIENTE='+#39+'01'+#39;
          Open;
          if (RecordCount > 0) then
              Resultado := Fieldbyname('ClienteID').AsString
          else
              Resultado := EmptyStr;
      end;
      FreeAndNil(qrGrupo);
      if Length(Resultado)>0 then
      begin
          Seleccion :=  ' SELECT DISTINCT PRUEBARELATION AS PRUEBA,P.DESCRIPCION,C.CODIGOCUPID AS CODIGO_CUP,DESDE,HASTA,A.PRECIO FROM PTACUERDOCOMERCIAL A INNER JOIN PTPRUEBA P '+
                        ' ON A.PRUEBARELATION=P.PRUEBAID INNER JOIN PTCODIGOCUP C ON C.PRUEBAID=A.PRUEBARELATION '+
                        ' WHERE p.Estatus='+#39+'1'+#39+' and convert(varchar(08),Getdate(),112) Between convert(varchar(08),a.desde,112) And convert(varchar(08),a.hasta,112)'+
                        ' AND p.dataareaid = a.dataareaid '+
                        ' AND a.clienterelation = '+#39+cbExtCliente.EditingValue+#39+
                        ' And a.desde in (SELECT max(desde) FROM PTACUERDOCOMERCIAL '+
                        ' WHERE CLIENTERELATION='+#39+cbExtCliente.EditingValue+#39+
                        ' And Pruebarelation=p.pruebaid '+
                        ' And Convert(varchar(08),Getdate(),112) Between convert(varchar(08),desde,112) And convert(varchar(08),hasta,112)) '+
                        ' And a.RECID in (SELECT max(RECID) FROM PTACUERDOCOMERCIAL '+
                        ' WHERE CLIENTERELATION='+#39+cbExtCliente.EditingValue+#39+
                        ' And Pruebarelation=p.pruebaid '+
                        ' And Convert(varchar(08),Getdate(),112) Between convert(varchar(08),desde,112) And convert(varchar(08),hasta,112)) '+
                        ' And C.ClienteID='+#39+Resultado+#39;

          if cbExtPrueba.Text <> EmptyStr then
             Seleccion := Seleccion + ' And A.PRUEBARELATION='+#39+cbExtPrueba.EditingValue+#39;
      end
      else
      begin
          Seleccion :=  ' SELECT DISTINCT PRUEBARELATION AS PRUEBA,'+#39+#39+' AS CODIGO_CUP, P.DESCRIPCION,DESDE,HASTA,A.PRECIO FROM PTACUERDOCOMERCIAL A INNER JOIN PTPRUEBA P '+
                        ' ON A.PRUEBARELATION=P.PRUEBAID '+
                        ' WHERE p.Estatus='+#39+'1'+#39+' and convert(varchar(08),Getdate(),112) Between convert(varchar(08),a.desde,112) And convert(varchar(08),a.hasta,112)'+
                        ' AND p.dataareaid = a.dataareaid '+
                        ' AND a.clienterelation = '+#39+cbExtCliente.EditingValue+#39+
                        ' And a.desde in (SELECT max(desde) FROM PTACUERDOCOMERCIAL '+
                        ' WHERE CLIENTERELATION='+#39+cbExtCliente.EditingValue+#39+
                        ' And Pruebarelation=p.pruebaid '+
                        ' And Convert(varchar(08),Getdate(),112) Between convert(varchar(08),desde,112) And convert(varchar(08),hasta,112)) '+
                        ' And a.RECID in (SELECT max(RECID) FROM PTACUERDOCOMERCIAL '+
                        ' WHERE CLIENTERELATION='+#39+cbExtCliente.EditingValue+#39+
                        ' And Pruebarelation=p.pruebaid '+
                        ' And Convert(varchar(08),Getdate(),112) Between convert(varchar(08),desde,112) And convert(varchar(08),hasta,112)) ';

          if cbExtPrueba.Text <> EmptyStr then
             Seleccion := Seleccion + ' And A.PRUEBARELATION='+#39+cbExtPrueba.EditingValue+#39;

      end;
    end
    else If cboReporte.Text = 'CLIENTE' then
    begin
          Seleccion :=  ' SELECT DISTINCT PRUEBARELATION AS PRUEBA,'+#39+#39+' AS CODIGO_CUP,P.DESCRIPCION,DESDE,HASTA,A.PRECIO FROM PTACUERDOCOMERCIAL A INNER JOIN PTPRUEBA P '+
                        ' ON A.PRUEBARELATION=P.PRUEBAID '+
                        ' WHERE p.Estatus='+#39+'1'+#39+' and convert(varchar(08),Getdate(),112) Between convert(varchar(08),a.desde,112) And convert(varchar(08),a.hasta,112)'+
                        ' AND p.dataareaid = a.dataareaid '+
                        ' AND a.clienterelation = '+#39+cbExtCliente.EditingValue+#39+
                        ' And a.desde in (SELECT max(desde) FROM PTACUERDOCOMERCIAL '+
                        ' WHERE CLIENTERELATION='+#39+cbExtCliente.EditingValue+#39+
                        ' And Pruebarelation=p.pruebaid '+
                        ' And Convert(varchar(08),Getdate(),112) Between convert(varchar(08),desde,112) And convert(varchar(08),hasta,112)) '+
                        ' And a.RECID in (SELECT max(RECID) FROM PTACUERDOCOMERCIAL '+
                        ' WHERE CLIENTERELATION='+#39+cbExtCliente.EditingValue+#39+
                        ' And Pruebarelation=p.pruebaid '+
                        ' And Convert(varchar(08),Getdate(),112) Between convert(varchar(08),desde,112) And convert(varchar(08),hasta,112)) ';

          if cbExtPrueba.Text <> EmptyStr then
             Seleccion := Seleccion + ' And A.PRUEBARELATION='+#39+cbExtPrueba.EditingValue+#39;

    end;
    If (CbOrdenar.ItemIndex = 0) Then
    Begin
        Seleccion := Seleccion + ' Order By p.Descripcion '
    end
    else
    begin
        Seleccion := Seleccion + ' Order By Prueba '
    end;
    With qrReporte, sql do
    begin
      Close;
      SQL.Text := Seleccion;
      Open;
      if IsEmpty then
      begin
          EtMensajeDlg('Esta búsqueda NO arrojó datos.  Verifique.',etConfirmacion,[etOk],1,dm.Imagenes.Items[5].Bitmap,true);
          Exit;
      end;
      First;
      dsReporte.Enabled := False;
      if not jvReporte.Active then
         jvReporte.Active := true;
      jvReporte.EmptyTable;
      while not eof do
      begin
          jvReporte.Append;
          If (Length(Resultado)>0)  then
          begin
            jvReporteCodigo_Cup.AsString            := fieldbyname('Codigo_Cup').AsString;
          end;
          jvReportePrueba.AsString                  := fieldbyname('Prueba').AsString;
          jvReporteDescripcion.AsString             := fieldbyname('Descripcion').AsString;
          jvReporteFecha_Desde.AsString             := formatdatetime('dd/mm/yyyy',fieldbyname('Desde').AsDateTime);
          jvReporteFecha_Hasta.AsString             := formatdatetime('dd/mm/yyyy',fieldbyname('Hasta').AsDateTime);
          jvReportePrecio.AsFloat                   := fieldbyname('Precio').AsFloat;

        Next;
      end;
      jvReporte.First;
      dsReporte.Enabled := True;
   end;
   If (jvReporte.RecordCount > 0) Then
   Begin
      if (Length(Resultado)>0)  then
      begin
        if cbExtPrueba.Text = EmptyStr then
          ppLabel38.Caption := 'Todas las Pruebas'
        else
          ppLabel38.Caption := cbExtPrueba.EditValue+' - '+cbExtPrueba.Text;

        if cbExtCliente.Text = EmptyStr then
          ppLabel128.Caption := 'Todos los Clientes ó Grupos'
        else
          ppLabel128.Caption := cbExtCliente.EditingValue+' - '+cbExtCliente.Text;

        if cboReporte.Text='GRUPO' then
           ppLabel127.Caption:='Grupo      :'
        else if cboReporte.Text='CLIENTE' then
           ppLabel127.Caption:='Cliente    :';

        ppLabel39.Caption := 'Listado Acuerdos Comerciales Por '+cboReporte.Text;
//        ppLabel40.Caption := 'Desde : '+FormatDateTime('dd/mm/yyyy', FechaIni.Date)+' Hasta : '+FormatDateTime('dd/mm/yyyy', FechaFin.Date);
      end
      else If (Length(Resultado)=0) then
      begin
        if cbExtPrueba.Text = EmptyStr then
          ppLabel84.Caption := 'Todas las Pruebas'
        else
          ppLabel84.Caption := cbExtPrueba.EditValue+' - '+cbExtPrueba.Text;

        if cbExtCliente.Text = EmptyStr then
          ppLabel134.Caption := 'Todas los Clientes ó Grupos'
        else
          ppLabel134.Caption := cbExtCliente.EditingValue+' - '+cbExtCliente.Text;

        if cboReporte.Text='GRUPO' then
           ppLabel133.Caption:='Grupo      :'
        else if cboReporte.Text='CLIENTE' then
           ppLabel133.Caption:='Cliente     :';

        ppLabel85.Caption := 'Listado Acuerdos Comerciales Por '+cboReporte.Text;
//        ppLabel86.Caption := 'Desde : '+FormatDateTime('dd/mm/yyyy', FechaIni.Date)+' Hasta : '+FormatDateTime('dd/mm/yyyy', FechaFin.Date);

      end;
      If (RgImpresion.ItemIndex = 0) And (Length(Resultado)>0) Then
         ppImpConSeguro.DeviceType := dtScreen
      else
      If (RgImpresion.ItemIndex = 0) And (Length(Resultado)=0) Then
         ppImpSinSeguro.DeviceType := dtScreen
      else
      If (RgImpresion.ItemIndex = 1) And (Length(Resultado)>0) Then
         ppImpConSeguro.DeviceType := dtPrinter
      else
      If (RgImpresion.ItemIndex = 1) And (Length(Resultado)=0) Then
         ppImpSinSeguro.DeviceType := dtPrinter;

      If Length(Resultado)>0 then
         ppImpConSeguro.Print
      else
         ppImpSinSeguro.Print;
   end;
  end;
 end;
 end;
procedure TfrmImpresionAcuerdo.RefrescarCliente;
begin
  If (cboReporte.Text = 'GRUPO') then
  begin
   cbExtCliente.RepositoryItem := DM.elcGrupoClienteAcu;
   cbExtCliente.Enabled := true;
  end
  Else If (cboReporte.Text = 'CLIENTE') then
  begin
   cbExtCliente.RepositoryItem := DM.elcCliente;
   cbExtCliente.Enabled := true;
  end
  Else If (cboReporte.Text = EmptyStr) then
  begin
//   cbExtCliente.RepositoryItem := System.DBNull.Value ;
   cbExtCliente.Enabled := False;
  end
end;

 Procedure ppRptComisionDrBeforePrint(Sender: TObject);
 Begin

 end;
end.
