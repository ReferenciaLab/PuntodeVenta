unit ImpresionEst;

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
  TfrmImpresionEst = class(TForm)
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
    ppListadoPacientesLR2000: TppReport;
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
    JvReporteTotalPagado: TCurrencyField;
    JvReporteFecha: TStringField;
    dsReporteJ: TDataSource;
    ppReporteLR2000: TppDBPipeline;
    ppSummaryBand1: TppSummaryBand;
    ppShape1: TppShape;
    ppLabel242: TppLabel;
    ppLabel246: TppLabel;
    ppLabel250: TppLabel;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    cbExtSucursal: TcxExtLookupComboBox;
    JvReporteSucursal: TStringField;
    JvReporteDescuento: TCurrencyField;
    JvReporteGrupoDescuentoTotal: TStringField;
    ppLabel3: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppDBText3: TppDBText;
    ppLabel9: TppLabel;
    ppDBText4: TppDBText;
    JvReporteNeto: TCurrencyField;
    ppDBCalc1: TppDBCalc;
    JvReporteBruto: TCurrencyField;
    JvReporteOficial: TStringField;
    JvReporteAsegurado: TIntegerField;
    JvReporteNo_Asegurado: TIntegerField;
    JvReporteTotal: TIntegerField;
    ppListadoProductividad: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDBText5: TppDBText;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppShape2: TppShape;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel22: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText11: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppLabel26: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppLabel14: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    GrupoHora: TdxLayoutGroup;
    HoraIni: TcxMaskEdit;
    dxLayoutControl3Item4: TdxLayoutItem;
    HoraFin: TcxMaskEdit;
    dxLayoutControl3Item5: TdxLayoutItem;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Run;
  end;

var
  frmImpresionEst: TfrmImpresionEst;
  Seleccion : string;

implementation

uses ActionsDM, DataModule, DatosClientesPlanes, Main;

{$R *.dfm}

procedure TfrmImpresionEst.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmImpresionEst.FormShow(Sender: TObject);
begin
  if not DM.qrSucursal.Active then
    DM.qrSucursal.Open;

  FechaIni.Date := DM.Buscar_Fecha_Actual;
  FechaFin.Date := DM.Buscar_Fecha_Actual;
  HoraIni.EditText := '00:00:00';
  HoraFin.EditText := '23:59:00';
end;

procedure TfrmImpresionEst.Run;
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
      Seleccion :=  'select s.Nombre As Sucursal,e.Fecha,e.Muestrano,e.NombrePaciente,'+
                    'e.Bruto,e.Descuento,e.SubTotal,e.Neto,e.TotalPagado,'+
                    'e.GrupoDescuentoTotal from ptentradapaciente e,ptSucursal s '+
                    ' Where e.SucursalID=s.SucursalID and e.Clienteid='+#39+'00027001'+#39;
    end
    else if cboReporte.Itemindex = 1 then
    begin
      Seleccion := ' select Distinct e.Fecha,e.EntradaId ,e.Muestrano as Muestrano, e.NombrePaciente ,e.userid as UsuarioID, e.TotalPagado, '+
                   ' s.Nombre,isnull(d.Descripcion,'+#39+#39+') as Descripcion,'+
                   ' e.Neto,e.Tasa,e.Subtotal,';
    end
    else if cboReporte.Itemindex = 2 then
    begin
      Seleccion := ' Select u.Nombre As Oficial,'+
	                 ' COUNT(CASE WHEN Origen = '+#39+'01'+#39+' then 1 ELSE NULL END) as Seguro,'+
	                 ' COUNT(CASE WHEN Origen <> '+#39+'01'+#39+' then 1 ELSE NULL END) as No_Asegurado,'+
	                 ' COUNT(CASE WHEN Origen <> '+#39+'99'+#39+' then 1 ELSE NULL END) as Total '+
                   ' from PtEntradaPaciente e Inner Join SysUsuarios u On e.UserID=u.UserId '+
                   ' Where Substring(Muestrano,3,3)<>'+#39+'000'+#39+' and Isnull(Cod_Area,'+#39+#39+')<>'+#39+'L'+#39;
    end;
    Seleccion := Seleccion +' And e.Estatus = 0 And e.Dataareaid='+#39+dm.CurEmpresa+#39;
    Seleccion := Seleccion +' And Substring(e.EntradaID,1,3)<>'+#39+'HOL'+#39;

    If (cbExtSucursal.Text <> '') then
    begin
      Seleccion := Seleccion + ' AND e.SucursalID ='+#39+CodSucursal+#39;
    end;
    If (FechaIni.Text<> '') and (FechaFin.Text<> '') And (HoraIni.Text<> '') and (HoraFin.Text<> '') then
    begin
      Seleccion := Seleccion + ' AND Fecha Between '+#39+FormatDateTime('yyyymmdd', FechaIni.Date)+#39+ ' AND '+#39+FormatDateTime('yyyymmdd', FechaFin.Date)+#39;
    end;

    If (HoraIni.Text<> '') and (HoraFin.Text<> '') then
    begin
      Seleccion := Seleccion + ' AND HoraEntrada Between '+#39+HoraIni.Text+#39+ ' AND '+#39+HoraFin.Text+#39;
    end;

    If (CbOrdenar.ItemIndex = 0) Then
      Seleccion := Seleccion + ' ORDER BY e.Fecha,e.SucursalID ';
    If (CbOrdenar.ItemIndex = 1) Then
      Seleccion := Seleccion + ' Group by u.Nombre ';

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
          if cboReporte.Itemindex <> 2 then
          begin
            jvReporteSucursal.AsString           := fieldbyname('Sucursal').AsString;
            jvReporteFecha.AsString              := formatdatetime('dd/mm/yyyy',fieldbyname('Fecha').AsDateTime);
            jvReporteMuestrano.AsString          := fieldbyname('Muestrano').AsString;
            jvReporteNombrePaciente.AsString     := fieldbyname('NombrePaciente').AsString;
            jvReporteBruto.AsFloat               := fieldbyname('Bruto').AsFloat;
            jvReporteTotalPagado.AsFloat         := fieldbyname('TotalPagado').AsFloat;
            jvReporteDescuento.AsFloat           := fieldbyname('Descuento').AsFloat;
            jvReporteNeto.AsFloat                := fieldbyname('Neto').AsFloat;
            jvReporteGrupoDescuentoTotal.AsString:= fieldbyname('GrupoDescuentoTotal').AsString;
          end
          else
          begin
            jvReporteOficial.AsString             := fieldbyname('Oficial').AsString;
            JvReporteAsegurado.AsInteger          := fieldbyname('Seguro').AsInteger;
            JvReporteNo_Asegurado.AsInteger       := fieldbyname('No_ASegurado').AsInteger;
            JvReporteTotal.AsInteger              := fieldbyname('Total').AsInteger;
          end;
        Next;
      end;
      jvReporte.First;
      dsReporte.Enabled := True;
   end;
   If (jvReporte.RecordCount > 0) Then
   Begin
    if (cboReporte.Text = 'VENTAS MENSUALES') Or (cboReporte.Text = 'ENTRADAS POR LR2000') then
    begin
        if cbExtSucursal.Text = EmptyStr then
          ppLabel8.Caption := 'Todas las Sucursales'
        else
          ppLabel8.Caption := cbExtSucursal.Text;
        ppLabel6.Caption := 'Listado '+cboReporte.Text;
        ppLabel7.Caption :='Desde : '+FormatDateTime('dd/mm/yyyy', FechaIni.Date)+' Hasta : '+FormatDateTime('dd/mm/yyyy', FechaFin.Date);
          If (RgImpresion.ItemIndex = 0) Then
             ppListadoPacientesLR2000.DeviceType := dtScreen
          else If (RgImpresion.ItemIndex = 1) Then
             ppListadoPacientesLR2000.DeviceType := dtPrinter;
          ppListadoPacientesLR2000.Print;
    end
    else
    if cboReporte.Text = 'PRODUCTIVIDAD OFICIAL DE SERVICIOS' then
    begin
        if cbExtSucursal.Text = EmptyStr then
          ppLabel14.Caption := 'Todas las Sucursales'
        else
          ppLabel14.Caption := cbExtSucursal.Text;
        ppLabel18.Caption := 'Listado '+cboReporte.Text;
        ppLabel19.Caption :='Desde : '+FormatDateTime('dd/mm/yyyy', FechaIni.Date)+' '+HoraIni.Text+' Hasta : '+FormatDateTime('dd/mm/yyyy', FechaFin.Date)+' '+HoraFin.Text;

        If (RgImpresion.ItemIndex = 0) Then
           ppListadoProductividad.DeviceType := dtScreen
        else If (RgImpresion.ItemIndex = 1) Then
           ppListadoProductividad.DeviceType := dtPrinter;
        ppListadoProductividad.Print;
      end
    end;
 end;
 end;
 end;
end.
