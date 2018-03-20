unit frmCargaVTPosSap;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, dxLayoutControl, StdCtrls, cxButtons,
  cxCurrencyEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxContainer, cxEdit, cxGroupBox, cxRadioGroup, cxControls,ADODB,pptypes,
  cxGraphics, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, ppStrtch,
  ppRichTx, ppBands, ppClass, ppCtrls, ppVar, ppPrnabl, ppCache, ppComm,
  ppRelatv, ppProd, ppReport, DB, ppDB, ppDBPipe, JvMemoryDataset, dlgMensajes,
  cxDBExtLookupComboBox;

type
  TfrmImpresionListing = class(TForm)
    dxLayoutControl3: TdxLayoutControl;
    btaceptarcuadre: TcxButton;
    btcancelarcuadre: TcxButton;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutControl3Group14: TdxLayoutGroup;
    GrupoParametros: TdxLayoutGroup;
    GroupSaldo: TdxLayoutGroup;
    botonescuadre: TdxLayoutGroup;
    dxLayoutControl3Item31: TdxLayoutItem;
    dxLayoutControl3Item10: TdxLayoutItem;
    Label2: TLabel;
    GrupoLaboratorio: TdxLayoutGroup;
    GrupoSucursales: TdxLayoutGroup;
    dxLayoutControl3Item42: TdxLayoutItem;
    GrupoToma: TdxLayoutGroup;
    FechaIni: TcxDateEdit;
    dxLayoutControl3Item2: TdxLayoutItem;
    FechaFin: TcxDateEdit;
    dxLayoutControl3Item33: TdxLayoutItem;
    RgImpresion: TcxRadioGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutControl3Group2: TdxLayoutGroup;
    GrupoOrdenar: TdxLayoutGroup;
    CbOrdenar: TcxComboBox;
    dxLayoutControl3Item1: TdxLayoutItem;
    cboReporte: TcxComboBox;
    dxLayoutControl3Item3: TdxLayoutItem;
    ppListadoControlPacientesUSA: TppReport;
    ppHeaderBand16: TppHeaderBand;
    ppDBText215: TppDBText;
    ppLabel237: TppLabel;
    ppLabel238: TppLabel;
    ppSystemVariable23: TppSystemVariable;
    ppSystemVariable24: TppSystemVariable;
    ppLabel239: TppLabel;
    ppLabel241: TppLabel;
    ppSystemVariable25: TppSystemVariable;
    ppDetailBand21: TppDetailBand;
    ppDBText218: TppDBText;
    ppDBText219: TppDBText;
    ppDBText223: TppDBText;
    ppDBText226: TppDBText;
    ppDBText228: TppDBText;
    ppDBText220: TppDBText;
    ppDBText221: TppDBText;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppDBCalc37: TppDBCalc;
    ppLabel257: TppLabel;
    ppDBCalc39: TppDBCalc;
    qrReporte: TADOQuery;
    dsReporte: TDataSource;
    JvReporte: TJvMemoryData;
    JvReporteEntradaID: TStringField;
    JvReporteMuestrano: TStringField;
    JvReporteNombrePaciente: TStringField;
    JvReporteSubtotal: TCurrencyField;
    JvReporteTotalPagado: TCurrencyField;
    JvReporteTotalEnvio: TCurrencyField;
    JvReporteTasa: TCurrencyField;
    JvReporteAnalisis: TMemoField;
    JvReporteFecha: TStringField;
    dsReporteJ: TDataSource;
    ppReporteUSA: TppDBPipeline;
    ppDBRichText1: TppDBRichText;
    ppSummaryBand1: TppSummaryBand;
    ppShape1: TppShape;
    ppLabel242: TppLabel;
    ppLabel246: TppLabel;
    ppLabel250: TppLabel;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    cbExtSucursal: TcxExtLookupComboBox;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Run;
  end;

var
  frmImpresionListing: TfrmImpresionListing;
  Seleccion : string;

implementation

uses ActionsDM, DataModule, DatosClientesPlanes, Main;

{$R *.dfm}

procedure TfrmImpresionListing.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmImpresionListing.FormShow(Sender: TObject);
begin
  if not DM.qrSucursal.Active then
    DM.qrSucursal.Open;

  FechaIni.Date := DM.Buscar_Fecha_Actual;
  FechaFin.Date := DM.Buscar_Fecha_Actual;
end;

procedure TfrmImpresionListing.Run;
Var Muestrano_Ant,CodSucursal  : String;
begin
 showmodal;
 if ModalResult = mrOk then
 begin
 If cboReporte.Text = EmptyStr then
 Begin
    EtMensajeDlg('Debe Seleccionar el Tipo de Reporte.  Verifique.',etConfirmacion,[etOk],1,dm.Imagenes.Items[5].Bitmap,true);
    Exit;
 end;
 If MessageDlg('Desea Imprimir el Listado de '+cboReporte.Text+'?', mtWarning, [mbYes,mbNo], 0) = mrYes then
 begin
    Application.ProcessMessages;
    CodSucursal:=EmptyStr;
    DM.qrSucursal.locate('Nombre', cbExtSucursal.text,[]);
    CodSucursal := DM.qrSucursal.FieldByName('SucursalID').AsString;
    if cboReporte.Itemindex = 0 then
    begin
      Seleccion := ' select Distinct e.Fecha,e.EntradaId ,e.Muestrano as Muestrano, e.NombrePaciente ,e.userid as UsuarioID,'+
                    ' Case  When e.Neto-(e.TotalPagado) = 0 Then (e.TotalPagado-e.GastosVarios) '+
                    '	      When e.Neto-(e.TotalPagado) > 0 Then (e.TotalPagado) '+
                    '       When e.Neto-(e.TotalPagado+e.GastosVarios) < 0 Then (e.TotalPagado-e.GastosVarios) '+
                    '       When e.Neto-(e.TotalPagado+e.GastosVarios) > 0 Then (e.TotalPagado) End As TotalPagado,'+
                    ' Case When (e.TotalPagado-e.GastosVarios) > -1 Then (e.TotalPagado-e.GastosVarios)'+
                    ' When (e.TotalPagado-e.GastosVarios) < 0 Then 0 End As TotalPagado, '+
                    ' s.Nombre,isnull(d.Descripcion,'+#39+#39+') as Descripcion,'+
                    ' e.Neto,e.Tasa,e.Subtotal,';
    end
    else
    begin
      Seleccion := ' select Distinct e.Fecha,e.EntradaId ,e.Muestrano as Muestrano, e.NombrePaciente ,e.userid as UsuarioID, e.TotalPagado, '+
                 ' s.Nombre,isnull(d.Descripcion,'+#39+#39+') as Descripcion,'+
                 ' e.Neto,e.Tasa,e.Subtotal,';
    end;
    if cboReporte.Itemindex = 0 then
    begin
         Seleccion := Seleccion + ' CASE WHEN (e.GastosVarios * e.Tasa) =  0 THEN 0 '+
         		     ' WHEN e.Neto-(e.TotalPagado) =  e.GastosVarios THEN 0 '+
		        		 ' WHEN (e.GastosVarios * e.Tasa) > 0    and (e.GastosVarios * e.Tasa) <= 550  THEN 500 '+
				         ' WHEN (e.GastosVarios * e.Tasa) > 750  and (e.GastosVarios * e.Tasa) <= 850  THEN 800 '+
        				 ' WHEN (e.GastosVarios * e.Tasa) > 1150 and (e.GastosVarios * e.Tasa) <= 1250 THEN 1200 '+
        				 ' WHEN (e.GastosVarios * e.Tasa) > 1750 and (e.GastosVarios * e.Tasa) <= 1850 THEN 1800 '+
        				 ' ELSE 0 '+
                 ' END As TotalEnvio,';
    end
    else if (cboReporte.Itemindex = 1) or (cboReporte.Itemindex = 2) then
    begin
         Seleccion := Seleccion + ' (e.GastosVarios * e.Tasa) As TotalEnvio, ';
    end;
         Seleccion := Seleccion +' s.Nombre,isnull(d.Descripcion,'+#39+#39+')+'+#39+' '+#39+'+ isnull(d.Comentario ,'+#39+#39+') as Analisis,d.PruebaID '+
                                 ' from ptentradapaciente e inner join ptentradapacientedetalle d '+
                                 ' on d.refrecid = e.recid '+
                                 ' Inner Join ptsucursal s '+
                                 ' on e.SucursalID=s.SucursalID '+
                                 ' Where ';

    if cboReporte.Itemindex = 0 then
    begin
         Seleccion := Seleccion +' e.factexterior='+#39+'1'+#39+' And e.ClienteID='+#39+'00024994'+#39;
    end
    else if cboReporte.Itemindex = 1 then
    begin
         Seleccion := Seleccion + ' e.ClienteID='+#39+CodClienteFilUS+#39;
    end
    else if cboReporte.Itemindex = 2 then
    begin
         Seleccion := Seleccion + ' e.ClienteID='+#39+CodClienteFilRD+#39;
    end;

    Seleccion := Seleccion +' And e.Estatus = 0 And e.Dataareaid='+#39+dm.CurEmpresa+#39;
    Seleccion := Seleccion +' And Substring(EntradaID,1,3)<>'+#39+'HOL'+#39;
    If (cbExtSucursal.Text <> '') then
    begin
      Seleccion := Seleccion + ' AND e.SucursalID ='+#39+CodSucursal+#39;
    end;
    If (FechaIni.Text<> '') and (FechaFin.Text<> '') then
    begin
      Seleccion := Seleccion + ' AND Fecha Between '+#39+FormatDateTime('yyyymmdd', FechaIni.Date)+#39+ ' AND '+#39+FormatDateTime('yyyymmdd', FechaFin.Date)+#39;
    end;

    If (CbOrdenar.ItemIndex = 0) Then
      Seleccion := Seleccion + ' ORDER BY Fecha,Muestrano,d.PruebaID ';
    If (CbOrdenar.ItemIndex = 1) Then
      Seleccion := Seleccion + ' ORDER BY Fecha,Muestrano,d.PruebaID ';
    If (CbOrdenar.ItemIndex = 2) Then
      Seleccion := Seleccion + ' ORDER BY EntradaId, Muestrano ';
    If (CbOrdenar.ItemIndex = 3) Then
      Seleccion := Seleccion + ' ORDER BY Subtotal,Muestrano ';
    If (CbOrdenar.ItemIndex = 4) Then
      Seleccion := Seleccion + ' ORDER BY TotalPagado, Muestrano ';

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
        If Muestrano_Ant <> fieldbyname('Muestrano').AsString then
        begin
          jvReporte.Append;
          jvReporteFecha.AsString              := formatdatetime('dd/mm/yyyy',fieldbyname('Fecha').AsDateTime);
          jvReporteEntradaID.AsString          := fieldbyname('EntradaID').AsString;
          jvReporteMuestrano.AsString          := fieldbyname('Muestrano').AsString;
          jvReporteNombrePaciente.AsString     := fieldbyname('NombrePaciente').AsString;
          jvReporteSubTotal.AsFloat            := fieldbyname('SubTotal').AsFloat;
          jvReporteTotalPagado.AsFloat         := fieldbyname('TotalPagado').AsFloat;
          jvReporteTotalEnvio.AsFloat          := fieldbyname('TotalEnvio').AsFloat;
          jvReporteTasa.AsFloat                := fieldbyname('Tasa').AsFloat;
          jvReporteAnalisis.AsString           := fieldbyname('Analisis').AsString;
          Muestrano_Ant                        := fieldbyname('Muestrano').AsString;
        end
        else
        begin
          jvReporteAnalisis.AsString           := jvReporteAnalisis.AsString+#13+#10+fieldbyname('Analisis').AsString;
        end;
        Next;
      end;
      jvReporte.First;
      dsReporte.Enabled := True;
   end;
   If (jvReporte.RecordCount > 0) Then
   Begin
      if cbExtSucursal.Text = EmptyStr then
        ppLabel8.Caption := 'Todas las Sucursales'
      else
        ppLabel8.Caption := cbExtSucursal.Text;
      ppLabel6.Caption := 'Listado '+cboReporte.Text;
      ppLabel7.Caption :='Desde : '+FormatDateTime('dd/mm/yyyy', FechaIni.Date)+' Hasta : '+FormatDateTime('dd/mm/yyyy', FechaFin.Date);
        If (RgImpresion.ItemIndex = 0) Then
           ppListadoControlPacientesUSA.DeviceType := dtScreen
        else If (RgImpresion.ItemIndex = 1) Then
           ppListadoControlPacientesUSA.DeviceType := dtPrinter;
        ppListadoControlPacientesUSA.Print;
   end;
  end;
 end;
 end;
end.
