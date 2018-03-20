unit ImpresionVarios;

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
  TfrmImpresionVarios = class(TForm)
    dxLayoutControl3: TdxLayoutControl;
    btaceptarcuadre: TcxButton;
    btcancelarcuadre: TcxButton;
    dxLayoutGroup2: TdxLayoutGroup;
    GrupoParametros: TdxLayoutGroup;
    GroupUsuario: TdxLayoutGroup;
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
    ppRptCambiosEnt: TppReport;
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
    ppDBCalc37: TppDBCalc;
    ppLabel257: TppLabel;
    qrReporte: TADOQuery;
    dsReporte: TDataSource;
    JvReporte: TJvMemoryData;
    JvReporteEntradaID: TStringField;
    JvReporteMuestrano: TStringField;
    JvReporteNombrePaciente: TStringField;
    JvReporteTotalPagado: TCurrencyField;
    JvReporteFecha: TStringField;
    dsReporteJ: TDataSource;
    ppReporteVarios: TppDBPipeline;
    ppSummaryBand1: TppSummaryBand;
    ppShape1: TppShape;
    ppLabel242: TppLabel;
    ppLabel246: TppLabel;
    ppLabel250: TppLabel;
    ppLabel1: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    cbExtSucursal: TcxExtLookupComboBox;
    dbExtUsuarioCrea: TcxExtLookupComboBox;
    dxLayoutControl3Item6: TdxLayoutItem;
    dbExtUsuarioMod: TcxExtLookupComboBox;
    dxLayoutControl3Item5: TdxLayoutItem;
    JvReporteUsuarioID: TStringField;
    JvReporteHoraEntrada: TStringField;
    JvReporteHoraRegistro: TStringField;
    JvReporteTiempo_Minutos: TStringField;
    JvReporteClienteNombre: TStringField;
    JvReporteNeto: TCurrencyField;
    JvReporteComentario: TStringField;
    JvReportePendiente: TCurrencyField;
    JvReporteUsuarioModifica: TStringField;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppRptTiempoCajeroEnt: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDBText3: TppDBText;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel4: TppLabel;
    ppLabel9: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppShape2: TppShape;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText4: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppLabel18: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel14: TppLabel;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppLabel19: TppLabel;
    ppLabel17: TppLabel;
    ppLabel15: TppLabel;
    ppRptComisionDr: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDBText12: TppDBText;
    ppLabel16: TppLabel;
    ppLabel24: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppSystemVariable6: TppSystemVariable;
    ppShape3: TppShape;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppLabel35: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppLabel36: TppLabel;
    ppLabel34: TppLabel;
    ppLabel32: TppLabel;
    ppDBText18: TppDBText;
    ppLabel33: TppLabel;
    ppLabel37: TppLabel;
    JvReporteComision: TCurrencyField;
    ppDBText19: TppDBText;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppImpPagosPend: TppReport;
    ppHeaderBand14: TppHeaderBand;
    ppDBText185: TppDBText;
    ppLabel170: TppLabel;
    ppLabel171: TppLabel;
    ppLabel172: TppLabel;
    ppLabel177: TppLabel;
    ppLabel191: TppLabel;
    ppLabel195: TppLabel;
    ppLabel200: TppLabel;
    ppLabel201: TppLabel;
    ppLabel202: TppLabel;
    ppLabel203: TppLabel;
    ppLabel204: TppLabel;
    ppLabel205: TppLabel;
    ppLabel206: TppLabel;
    ppSystemVariable14: TppSystemVariable;
    ppSystemVariable15: TppSystemVariable;
    ppLabel207: TppLabel;
    ppLabel208: TppLabel;
    ppSystemVariable16: TppSystemVariable;
    ppDetailBand19: TppDetailBand;
    ppDBText187: TppDBText;
    ppDBText188: TppDBText;
    ppDBText189: TppDBText;
    ppDBText191: TppDBText;
    ppDBText192: TppDBText;
    ppDBText194: TppDBText;
    ppDBText195: TppDBText;
    ppDBText196: TppDBText;
    ppDBText197: TppDBText;
    ppDBText198: TppDBText;
    ppDBText199: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppDBCalc29: TppDBCalc;
    ppDBCalc30: TppDBCalc;
    ppDBCalc31: TppDBCalc;
    ppDBCalc32: TppDBCalc;
    ppDBCalc33: TppDBCalc;
    ppDBCalc34: TppDBCalc;
    ppDBCalc35: TppDBCalc;
    ppLabel178: TppLabel;
    JvReporteTelefono1: TStringField;
    JvReporteTelefono2: TStringField;
    JvReporteBruto: TCurrencyField;
    JvReporteCoberturaSeguro: TCurrencyField;
    JvReporteDescuento: TCurrencyField;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    JvReporteOrigen: TStringField;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText20: TppDBText;
    ppLabel42: TppLabel;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppImpSeguros: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppDBText21: TppDBText;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel56: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppSystemVariable9: TppSystemVariable;
    ppDetailBand3: TppDetailBand;
    ppDBText22: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppLabel63: TppLabel;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppDBText34: TppDBText;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel64: TppLabel;
    ppDBCalc19: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppDBCalc21: TppDBCalc;
    ppDBCalc23: TppDBCalc;
    ppLabel45: TppLabel;
    JvReporteCoberturaPorC: TCurrencyField;
    ppImpSinFact: TppReport;
    ppHeaderBand4: TppHeaderBand;
    ppDBText23: TppDBText;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppSystemVariable10: TppSystemVariable;
    ppSystemVariable11: TppSystemVariable;
    ppLabel52: TppLabel;
    ppLabel55: TppLabel;
    ppSystemVariable12: TppSystemVariable;
    ppShape4: TppShape;
    ppLabel62: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLabel72: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText28: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppSummaryBand4: TppSummaryBand;
    ppLabel74: TppLabel;
    ppDBCalc14: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppLabel73: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel75: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    JvReporteTotal_Cobertura: TCurrencyField;
    ExtraOptions1: TExtraOptions;
    ppDBText38: TppDBText;
    JvReporteDomicilio: TStringField;
    ppDBText39: TppDBText;
    ppImpPagosPendAud: TppReport;
    ppHeaderBand5: TppHeaderBand;
    ppDBText40: TppDBText;
    ppLabel71: TppLabel;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
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
    ppDBText53: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppDBCalc28: TppDBCalc;
    ppLabel95: TppLabel;
    ppDBText41: TppDBText;
    ppDBText44: TppDBText;
    ppLabel78: TppLabel;
    ppDBText47: TppDBText;
    ppShape5: TppShape;
    JvReporteCentro: TStringField;
    JvReporteNombre: TStringField;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLabel87: TppLabel;
    ppLabel86: TppLabel;
    ppImpUsuarios: TppReport;
    ppHeaderBand6: TppHeaderBand;
    ppDBText45: TppDBText;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppLabel93: TppLabel;
    ppLabel100: TppLabel;
    ppSystemVariable19: TppSystemVariable;
    ppSystemVariable20: TppSystemVariable;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppSystemVariable21: TppSystemVariable;
    ppDetailBand6: TppDetailBand;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppFooterBand4: TppFooterBand;
    ppDBCalc17: TppDBCalc;
    ppLabel107: TppLabel;
    ppLabel94: TppLabel;
    ppLabel96: TppLabel;
    ppLabel98: TppLabel;
    ppImpDescuentos: TppReport;
    ppHeaderBand7: TppHeaderBand;
    ppDBText50: TppDBText;
    ppLabel97: TppLabel;
    ppLabel99: TppLabel;
    ppLabel103: TppLabel;
    ppLabel104: TppLabel;
    ppLabel105: TppLabel;
    ppLabel106: TppLabel;
    ppLabel108: TppLabel;
    ppLabel109: TppLabel;
    ppLabel110: TppLabel;
    ppLabel111: TppLabel;
    ppLabel112: TppLabel;
    ppLabel113: TppLabel;
    ppLabel114: TppLabel;
    ppLabel115: TppLabel;
    ppSystemVariable22: TppSystemVariable;
    ppSystemVariable26: TppSystemVariable;
    ppLabel116: TppLabel;
    ppLabel117: TppLabel;
    ppSystemVariable27: TppSystemVariable;
    ppDetailBand7: TppDetailBand;
    ppDBText51: TppDBText;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    ppDBText56: TppDBText;
    ppDBText57: TppDBText;
    ppDBText58: TppDBText;
    ppDBText59: TppDBText;
    ppDBText60: TppDBText;
    ppDBText61: TppDBText;
    ppDBText62: TppDBText;
    ppDBText63: TppDBText;
    ppDBText64: TppDBText;
    ppDBText65: TppDBText;
    ppFooterBand5: TppFooterBand;
    ppDBCalc22: TppDBCalc;
    ppDBCalc25: TppDBCalc;
    ppDBCalc26: TppDBCalc;
    ppDBCalc27: TppDBCalc;
    ppDBCalc38: TppDBCalc;
    ppLabel122: TppLabel;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppDBText66: TppDBText;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppLabel123: TppLabel;
    ppDBCalc39: TppDBCalc;
    ppDBCalc40: TppDBCalc;
    ppDBCalc42: TppDBCalc;
    ppDBCalc43: TppDBCalc;
    ppDBCalc44: TppDBCalc;
    JvReporteDescuentoPorC: TCurrencyField;
    JvReporteTipo_Descuento: TStringField;
    JvReporteFecha_Descuento: TStringField;
    ppLabel124: TppLabel;
    ppLabel118: TppLabel;
    ppLabel120: TppLabel;
    ppLabel119: TppLabel;
    ppLabel121: TppLabel;
    ppDBText67: TppDBText;
    GrupoCategoria: TdxLayoutGroup;
    dxLayoutControl3Item4: TdxLayoutItem;
    cbExtCategoria: TcxExtLookupComboBox;
    ppLabel125: TppLabel;
    ppLabel126: TppLabel;
    ppLabel127: TppLabel;
    ppLabel128: TppLabel;
    ppLabel129: TppLabel;
    ppLabel130: TppLabel;
    ppLabel131: TppLabel;
    ppLabel132: TppLabel;
    ppLabel133: TppLabel;
    ppLabel134: TppLabel;
    ppImpGeneral: TppReport;
    ppHeaderBand8: TppHeaderBand;
    ppDBText68: TppDBText;
    ppLabel135: TppLabel;
    ppLabel136: TppLabel;
    ppLabel138: TppLabel;
    ppLabel139: TppLabel;
    ppLabel140: TppLabel;
    ppLabel145: TppLabel;
    ppLabel146: TppLabel;
    ppLabel148: TppLabel;
    ppSystemVariable28: TppSystemVariable;
    ppSystemVariable29: TppSystemVariable;
    ppLabel149: TppLabel;
    ppLabel150: TppLabel;
    ppSystemVariable30: TppSystemVariable;
    ppLabel155: TppLabel;
    ppDetailBand8: TppDetailBand;
    ppDBText70: TppDBText;
    ppDBText71: TppDBText;
    ppDBText72: TppDBText;
    ppDBText73: TppDBText;
    ppDBText75: TppDBText;
    ppDBText76: TppDBText;
    ppDBText78: TppDBText;
    ppFooterBand6: TppFooterBand;
    ppDBCalc36: TppDBCalc;
    ppDBCalc41: TppDBCalc;
    ppDBCalc45: TppDBCalc;
    ppDBCalc46: TppDBCalc;
    ppLabel157: TppLabel;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppDBText82: TppDBText;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppLabel158: TppLabel;
    ppDBCalc47: TppDBCalc;
    ppDBCalc49: TppDBCalc;
    ppDBCalc50: TppDBCalc;
    ppDBCalc51: TppDBCalc;
    ppLabel137: TppLabel;
    ppLabel141: TppLabel;
    ppLabel142: TppLabel;
    ppLabel143: TppLabel;
    ppLabel144: TppLabel;
    ppLabel147: TppLabel;
    GrupoFormaPago: TdxLayoutGroup;
    dxLayoutControl3Group1: TdxLayoutGroup;
    cboFormaPago: TcxComboBox;
    dxLayoutControl3Item8: TdxLayoutItem;
    ppImpComisionDoctores: TppReport;
    ppHeaderBand9: TppHeaderBand;
    ppDBText69: TppDBText;
    ppLabel151: TppLabel;
    ppLabel152: TppLabel;
    ppLabel153: TppLabel;
    ppLabel154: TppLabel;
    ppLabel156: TppLabel;
    ppLabel159: TppLabel;
    ppLabel160: TppLabel;
    ppLabel161: TppLabel;
    ppSystemVariable31: TppSystemVariable;
    ppSystemVariable32: TppSystemVariable;
    ppLabel162: TppLabel;
    ppLabel163: TppLabel;
    ppSystemVariable33: TppSystemVariable;
    ppLabel165: TppLabel;
    ppDetailBand9: TppDetailBand;
    ppDBText74: TppDBText;
    ppDBText77: TppDBText;
    ppDBText79: TppDBText;
    ppDBText80: TppDBText;
    ppDBText81: TppDBText;
    ppDBText83: TppDBText;
    ppDBText84: TppDBText;
    ppFooterBand7: TppFooterBand;
    ppDBCalc24: TppDBCalc;
    ppDBCalc48: TppDBCalc;
    ppDBCalc52: TppDBCalc;
    ppDBCalc53: TppDBCalc;
    ppLabel174: TppLabel;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppDBText85: TppDBText;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppLabel175: TppLabel;
    ppDBCalc54: TppDBCalc;
    ppDBCalc55: TppDBCalc;
    ppDBCalc56: TppDBCalc;
    ppDBCalc57: TppDBCalc;
    JvReporteNombreDoctor: TStringField;
    JvReporteTotalComision: TCurrencyField;
    ppLabel176: TppLabel;
    ppLabel167: TppLabel;
    ppLabel168: TppLabel;
    ppLabel169: TppLabel;
    ppImpReferimiento: TppReport;
    ppDBText86: TppDBText;
    ppLabel164: TppLabel;
    ppLabel179: TppLabel;
    ppLabel181: TppLabel;
    ppDetailBand10: TppDetailBand;
    ppDBText87: TppDBText;
    ppDBText93: TppDBText;
    ppLabel194: TppLabel;
    ppLabel187: TppLabel;
    ppLabel188: TppLabel;
    ppLabel189: TppLabel;
    JvReporteCant_Entradas: TIntegerField;
    ppLabel166: TppLabel;
    ppSystemVariable34: TppSystemVariable;
    ppSystemVariable35: TppSystemVariable;
    ppLabel173: TppLabel;
    ppLabel180: TppLabel;
    ppSystemVariable36: TppSystemVariable;
    ppTitleBand1: TppTitleBand;
    ppColumnHeaderBand1: TppColumnHeaderBand;
    ppColumnFooterBand1: TppColumnFooterBand;
    QlistadoZonas: TADOQuery;
    DSzonas: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppListadoVentasZonas: TppReport;
    ppHeaderBand10: TppHeaderBand;
    ppDetailBand11: TppDetailBand;
    ppFooterBand8: TppFooterBand;
    procedure cboReporteExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Listado_por_Zonas();

    procedure Run;
  end;

var
  frmImpresionVarios: TfrmImpresionVarios;
  Seleccion,Seleccion2 : string;

implementation

uses ActionsDM, DataModule, DatosClientesPlanes, Main;

{$R *.dfm}

procedure TfrmImpresionVarios.cboReporteExit(Sender: TObject);
begin
  If (cboReporte.Text = 'COMISIONES DE DOCTORES') Or
     (cboReporte.Text = 'PACIENTES REFERIDOS POR MEDICOS') then
     cbExtCategoria.Enabled:= False
  else
     cbExtCategoria.Enabled:= True;
end;

procedure TfrmImpresionVarios.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmImpresionVarios.FormShow(Sender: TObject);
begin
  If not DM.qrSucursal.Active then
    DM.qrSucursal.Open;
  If not DM.qrUsuario.Active then
    DM.qrUsuario.Open;
  cboReporte.Properties.Items.Clear;
  if not DM.qrGrupoCliente.Active then
    DM.qrGrupoCliente.Open;

  if (dm.CurRol = 7) or (dm.CurRol = 10) or
     (dm.CurRol = 11) or (dm.CurRol = 13) or
     (dm.CurRol = 18) then
  begin
    cboReporte.Properties.Items.Add('MODIFICACIONES ENTRADAS Y/O CAMBIOS');
    cboReporte.Properties.Items.Add('TIEMPO DE OFICIAL(CAJERO) POR ENTRADA');
    cboReporte.Properties.Items.Add('COMISION DR. COMPRES GUTIERREZ');
    cboReporte.Properties.Items.Add('LISTADO DE PAGOS PENDIENTES');
    cboReporte.Properties.Items.Add('DE ENTRADAS POR SEGUROS (ARS)');
    cboReporte.Properties.Items.Add('DE ENTRADAS A CREDITO SIN FACTURAR');
    cboReporte.Properties.Items.Add('GENERAL POR CLIENTE');
  end
  else if (dm.CurRol = 12) or (dm.CurRol = 15) or (dm.CurRol = 17) or (dm.CurRol = 8) Then
  begin
    cboReporte.Properties.Items.Add('DE ENTRADAS POR SEGUROS (ARS)');
    cboReporte.Properties.Items.Add('LISTADO DE PAGOS PENDIENTES');
  end;
  If (dm.CurRol = 19) or (dm.CurRol = 7) then
  begin
    cboReporte.Properties.Items.Add('DE PAGOS PENDIENTES (DEPTO. AUDITORIA)');
    cboReporte.Properties.Items.Add('DE USUARIOS');
  end;
  If (dm.CurRol = 11) or (dm.CurRol = 7) or (dm.CurRol = 17) then
  begin
    cboReporte.Properties.Items.Add('DE DESCUENTOS');
  end;
  If (dm.CurRol = 23) or (dm.CurRol = 7) then
  begin
    cboReporte.Properties.Items.Add('GENERAL POR CLIENTE');
    cboReporte.Properties.Items.Add('COMISIONES DE DOCTORES');
    cboReporte.Properties.Items.Add('PACIENTES REFERIDOS POR MEDICOS');
  end;
  FechaIni.Date := DM.Buscar_Fecha_Actual;
  FechaFin.Date := DM.Buscar_Fecha_Actual;
end;

procedure TfrmImpresionVarios.Listado_por_Zonas;
begin
    //********** Generera Listado de Ventas Por Zonas *****************************

end;

procedure TfrmImpresionVarios.Run;
Var Muestrano_Ant,CodSucursal,CodCategoria  : String;
begin
 showmodal;
 if ModalResult = mrOk then
 begin
 If cboReporte.Text = EmptyStr then
 Begin
    EtMensajeDlg('Debe Seleccionar el Tipo de Reporte.  Verifique.',etConfirmacion,[etOk],1,dm.Imagenes.Items[5].Bitmap,true);
    Exit;
 end;
 If MessageDlg('Desea Imprimir el Reporte de '+cboReporte.Text+'?', mtWarning, [mbYes,mbNo], 0) = mrYes then
 begin
    Application.ProcessMessages;
    CodSucursal:=EmptyStr;
    CodCategoria:=EmptyStr;
    DM.qrSucursal.locate('Nombre', cbExtSucursal.text,[]);
    CodSucursal  := DM.qrSucursal.FieldByName('SucursalID').AsString;
    DM.qrGrupoCliente.locate('Descripcion', cbExtCategoria.text,[]);
    CodCategoria := DM.qrGrupoCliente.FieldByName('GrupoCliente').AsString;

    Seleccion := EmptyStr;
    if cboReporte.Text = 'MODIFICACIONES ENTRADAS Y/O CAMBIOS' then
    begin
      Seleccion :=  ' Select distinct a.fecha,a.muestrano,e.nombrepaciente,e.Neto,e.ClienteNombre,e.Userid as Usuario_Entrada,a.UserId as Usuario_Modifica,comentario '+
                    ' From PTAuditoriaFact a Inner Join Ptentradapaciente e '+
                    ' On a.muestrano=e.muestrano Where 1=1 ';
    end
    else If cboReporte.Text = 'TIEMPO DE OFICIAL(CAJERO) POR ENTRADA' then
    begin
      Seleccion :=  ' Select UserID as Usuario_Entrada,Fecha,HoraEntrada,HoraRegistro ,'+
                    ' Datediff(minute,Convert(datetime,fechaentrada+'+#39+' '+#39+'+horaentrada,120),Convert(datetime,fechaentrada+'+#39+' '+#39+'+Substring(horaRegistro,1,8),120)) as Tiempo_Minutos,'+
                    ' Muestrano,ClienteNombre,nombrepaciente,Neto,TotalPagado From PTEntradaPaciente e Where len(horaregistro)= 8 And Substring(Muestrano,3,3)<> '+#39+'000'+#39
    end
    else If cboReporte.Text = 'COMISION DR. COMPRES GUTIERREZ' then
    begin
      Seleccion :=  ' SELECT E.MUESTRANO,E.FECHA,E.HORAENTRADA,E.NOMBREPACIENTE,E.CLIENTENOMBRE,E.NETO,E.TOTALPAGADO FROM PTENTRADAPACIENTE E INNER JOIN PTENTRADAPACIENTEDETALLE D '+
                    ' ON E.RECID=D.REFRECID '+
                    ' WHERE D.PRUEBAID='+#39+'COM00366'+#39+
                    ' AND E.SUCURSALID='+#39+'SF'+#39+
                    ' AND E.NOMBREDOCTOR NOT IN ('+#39+'PRIV'+#39+','+#39+''+#39+','+#39+'SARVITAP'+#39+')';
    end
    else If cboReporte.Text = 'LISTADO DE PAGOS PENDIENTES' then
    begin
      Seleccion :=  ' SELECT E.MUESTRANO,E.FECHA,E.HORAENTRADA,E.NOMBREPACIENTE,E.CLIENTENOMBRE,E.NETO,E.TOTALPAGADO,(E.NETO-E.TOTALPAGADO) AS PENDIENTE,TELEFONOS,TELEFONO2,BRUTO,E.DESCUENTO,COBERTURASEGURO,E.ENTRADAID,E.USERID,'+#39+'('+#39+'+G.GRUPOCLIENTE+'+#39+')-'+#39+'+E.CLIENTENOMBRE AS ORIGEN,'+
                    ' (SELECT TOP 1 '+#39+'*'+#39+' FROM PTENTRADAPACIENTEDETALLE WHERE DESCRIPCION LIKE '+#39+'%DOMICILIO%'+#39+' AND REFRECID=E.RECID) AS DOMICILIO FROM PTENTRADAPACIENTE E INNER JOIN PTGRUPOCLIENTE G ON E.ORIGEN=G.GRUPOCLIENTE'+
                    ' WHERE  E.ORIGEN IN ('+#39+'01'+#39+','+#39+'02'+#39+','+#39+'03'+#39+','+#39+'04'+#39+','+#39+'05'+#39+') AND (E.NETO - E.TOTALPAGADO) > 0 And E.RecID = ANY ( Select Refrecid from PtEntradaPacienteDetalle '+
                    ' Where Refrecid = e.Recid)';
      Seleccion := Seleccion +' And e.Estatus = 0 And e.Dataareaid='+#39+dm.CurEmpresa+#39;
      Seleccion := Seleccion +' And Substring(e.EntradaID,1,3)<>'+#39+'HOL'+#39;
      Seleccion := Seleccion +' And Not e.NombrePaciente like '+#39+'%VISA%CANADA%'+#39;

      If (cbExtSucursal.Text <> '') then
      begin
        Seleccion := Seleccion + ' And e.SucursalID ='+#39+CodSucursal+#39;
      end;
      If (cbExtCategoria.Text <> '') then
      begin
        Seleccion := Seleccion + ' And e.Origen ='+#39+CodCategoria+#39;
      end;
      If (cboFormaPago.Text <> '') then
      begin
        if cboFormaPago.Text='EFECTIVO' then
          Seleccion := Seleccion + ' And e.FormadePago ='+#39+'EFE'+#39
        else if cboFormaPago.Text='CREDITO' then
          Seleccion := Seleccion + ' And e.FormadePago ='+#39+'CRE'+#39
        else if cboFormaPago.Text='CASH' then
          Seleccion := Seleccion + ' And e.FormadePago ='+#39+'CASH'+#39;
      end;
      If (dbExtUsuarioCrea.Text <> '') then
      begin
        Seleccion := Seleccion + ' And e.UserID ='+#39+dbExtUsuarioCrea.EditValue+#39;
      end;
      If (dbExtUsuarioMod.Text <> '') then
      begin
        Seleccion := Seleccion + ' And e.FlebotomistaID ='+#39+dbExtUsuarioMod.EditValue+#39;
      end;
      If (FechaIni.Text<> '') and (FechaFin.Text<> '') then
      begin
        Seleccion := Seleccion + ' And e.Fecha Between '+#39+FormatDateTime('yyyymmdd', FechaIni.Date)+#39+ ' AND '+#39+FormatDateTime('yyyymmdd', FechaFin.Date)+#39;
      end;
      Seleccion := Seleccion +' Union All';
      Seleccion := Seleccion +' SELECT E.MUESTRANO,E.FECHA,E.HORAENTRADA,E.NOMBREPACIENTE,E.CLIENTENOMBRE,E.NETO,E.TOTALPAGADO,(E.NETO-E.TOTALPAGADO) AS PENDIENTE,TELEFONOS,TELEFONO2,BRUTO,E.DESCUENTO,COBERTURASEGURO,E.ENTRADAID,E.USERID,'+#39+'('+#39+'+G.GRUPOCLIENTE+'+#39+')-'+#39+'+E.CLIENTENOMBRE AS ORIGEN,'+
                    ' (SELECT TOP 1 '+#39+'*'+#39+' FROM PTENTRADAPACIENTEDETALLE WHERE DESCRIPCION LIKE '+#39+'%DOMICILIO%'+#39+' AND REFRECID=E.RECID) AS DOMICILIO FROM PTENTRADAPACIENTE E INNER JOIN PTGRUPOCLIENTE G ON E.ORIGEN=G.GRUPOCLIENTE'+
                    ' WHERE  E.ORIGEN IN ('+#39+'12'+#39+') AND E.FORMADEPAGO IN ('+#39+'EFE'+#39+','+#39+'CASH'+#39+') AND (E.NETO - E.TOTALPAGADO) > 0 And E.RecID = ANY ( Select Refrecid from PtEntradaPacienteDetalle '+
                    ' Where Refrecid = e.Recid)';
    end
    else If cboReporte.Text = 'DE ENTRADAS POR SEGUROS (ARS)' then
    begin
      Seleccion :=  ' SELECT E.USERID,E.FECHA,E.MUESTRANO,E.CLIENTEID,E.CLIENTENOMBRE,E.PACIENTEID,E.NOMBREPACIENTE,E.BRUTO,E.COBERTURAPORC,E.COBERTURASEGURO,E.NETO,(SELECT SUM(TOTALLINEA) FROM PTENTRADAPACIENTEDETALLE '+
                    ' WHERE REFRECID=E.RECID AND COBERTURAAPLICA=1) AS TOTAL_COBERTURA, '+
                    ' (SELECT TOP 1 '+#39+'*'+#39+' FROM PTENTRADAPACIENTEDETALLE WHERE DESCRIPCION LIKE '+#39+'%DOMICILIO%'+#39+' AND REFRECID=E.RECID) AS DOMICILIO FROM PTENTRADAPACIENTE E '+
                    ' WHERE E.ORIGEN IN ('+#39+'01'+#39') AND E.RECID IN (SELECT REFRECID FROM PTENTRADAPACIENTEDETALLE) ';
    end
    else If cboReporte.Text = 'DE PAGOS PENDIENTES (DEPTO. AUDITORIA)' then
    begin
      Seleccion :=  ' SELECT UPPER(S.NOMBRE) AS CENTRO, UPPER (U.NOMBRE) AS NOMBRE, E.CLIENTEID AS CODIGO, E.USERID,E.FECHA,E.MUESTRANO AS MUESTRANO, E.NOMBREPACIENTE AS NOMBREPACIENTE,E.CLIENTENOMBRE,E.NETO, (E.NETO-E.TOTALPAGADO) AS PENDIENTE,'+
                    ' (SELECT TOP 1 '+#39+'*'+#39+' FROM PTENTRADAPACIENTEDETALLE WHERE DESCRIPCION LIKE '+#39+'%DOMICILIO%'+#39+' AND REFRECID=E.RECID) AS DOMICILIO FROM PTENTRADAPACIENTE E INNER JOIN PTGRUPOCLIENTE G ON E.ORIGEN=G.GRUPOCLIENTE INNER JOIN DBO.PTSUCURSAL S ON E.SUCURSALID=S.SUCURSALID '+
                    ' INNER JOIN SYSUSUARIOS U ON E.USERID=U.USERID'+
                    ' WHERE  E.ORIGEN IN ('+#39+'01'+#39+','+#39+'02'+#39+','+#39+'03'+#39+') AND (E.NETO - E.TOTALPAGADO) > 0 And E.RecID = ANY ( Select Refrecid from PtEntradaPacienteDetalle '+
                    ' Where Refrecid = e.Recid)';
    end
    else If cboReporte.Text = 'GENERAL POR CLIENTE' then
    begin
      Seleccion :=  ' SELECT E.FECHA,E.MUESTRANO,E.CLIENTEID+'#39+'-'+#39+'+E.CLIENTENOMBRE AS CLIENTENOMBRE,E.NOMBREPACIENTE,NETO,TOTALPAGADO,(E.NETO-E.TOTALPAGADO) AS PENDIENTE FROM PTENTRADAPACIENTE E '+
                    ' WHERE E.RECID IN (SELECT REFRECID FROM PTENTRADAPACIENTEDETALLE)';
    end
    else If cboReporte.Text = 'DE USUARIOS' then
    begin
        If cbExtSucursal.Text = EmptyStr Then
          Seleccion :=  ' SELECT UPPER(USERID) AS USERID, UPPER(NOMBRE) AS NOMBRE FROM SYSUSUARIOS WHERE ESTATUS='+#39+'A'+#39
        else
          Seleccion :=  ' SELECT UPPER(USERID) AS USERID, UPPER(NOMBRE) AS NOMBRE FROM SYSUSUARIOS WHERE ESTATUS='+#39+'A'+#39+' And UserID in (Select UserID from PTUsuarioSucursal Where SucursalID='+#39+cbExtSucursal.EditValue+#39+')'
    end
    else If cboReporte.Text = 'DE DESCUENTOS' then
    begin
      Seleccion :=  '  SELECT E.MUESTRANO,E.FECHA,E.HORAENTRADA,E.NOMBREPACIENTE,E.CLIENTENOMBRE,E.NETO,E.TOTALPAGADO,(E.NETO-E.TOTALPAGADO) AS PENDIENTE, '+
                    '  TELEFONOS,TELEFONO2,E.BRUTO,E.DESCUENTOPORC,E.DESCUENTO,E.ENTRADAID,E.USERID,'+#39+'('+#39+'+G.GRUPOCLIENTE+'+#39+')-'+#39+'+G.DESCRIPCION AS ORIGEN,'+
                    '  (SELECT TOP 1 '+#39+'*'+#39+' FROM PTENTRADAPACIENTEDETALLE WHERE DESCRIPCION LIKE '+#39+'%DOMICILIO%'+#39+' AND REFRECID=E.RECID) AS DOMICILIO, '+
                    '  (SELECT Case Tipo_Descuento When '+#39+'S'+#39+' Then '+#39+'Sucursal'+#39+
                    '   When '+#39+'T'+#39+' Then '+#39+'Tarjeta'+#39+
							      '   When '+#39+'E'+#39+' Then '+#39+'Empleado'+#39+' end  FROM PtDescuento Where RefrecID=E.RECID) AS Tipo_Descuento,'+
                    '   E.SUCURSALID, '+
                    '  (SELECT Fecha_Insert FROM DBO.PtDescuento Where RefrecID=E.RECID) AS Fecha_Descuento '+
                    '  FROM PTENTRADAPACIENTE E INNER JOIN PTGRUPOCLIENTE G ON E.ORIGEN=G.GRUPOCLIENTE '+
                    '  WHERE  (E.DESCUENTO) > 0 AND E.RecID in (Select refrecID from PtDescuento) ';
    end
    else If cboReporte.Text = 'COMISIONES DE DOCTORES' then
    begin
      Seleccion :=  ' SELECT B.DOCTORID,B.DOCTORID+'#39+'-'+#39+'+B.NOMBRE AS NOMBREDOCTOR,E.ORIGEN,E.ENTRADAID,E.MUESTRANO,E.FECHA,E.NOMBREPACIENTE,'+
                    ' E.MONEDAID,E.NETO,E.TOTALPAGADO,B.COMISION,E.TASA,E.DATAAREAID,E.DOCTORID,E.ORIGEN,E.CLIENTENOMBRE '+
	                  ' FROM PTENTRADAPACIENTE E, PTDOCTOR B '+
                    ' WHERE E.DOCTORID = B.DOCTORID AND E.DATAAREAID = B.DATAAREAID AND B.COMISION > 0 '+
                    ' AND E.ORIGEN =3 AND ESTATUS=0	AND SUBSTRING(E.ENTRADAID,1,3)<>'+#39+'HOL'+#39
    end
    else If cboReporte.Text = 'PACIENTES REFERIDOS POR MEDICOS' then
    begin
      Seleccion :=  ' SELECT RTRIM(REPLACE(REPLACE(REPLACE(E.NOMBREDOCTOR,CHAR(10),'+#39+#39+'),CHAR(13),'+#39+#39+'),CHAR(9),'+#39+#39+')) As NOMBREDOCTOR, Count(*) Cant_Entradas  FROM PTENTRADAPACIENTE E '+
                    ' WHERE E.NOMBREDOCTOR NOT IN ('+#39+'PERSONAL'+#39+','+#39+'PRIVADO'+#39+')'+
                    ' AND E.ORIGEN IN ('+#39+'01'+#39+','+#39+'03'+#39+','+#39+'04'+#39+','+#39+'05'+#39+') AND E.NOMBREDOCTOR <> '+#39+''+#39+
                    ' AND E.RECID IN (SELECT REFRECID FROM PTENTRADAPACIENTEDETALLE) ';
    end
    else If cboReporte.Text = 'DE ENTRADAS A CREDITO SIN FACTURAR' then
    begin
      Seleccion :=  ' SELECT E.USERID,E.FECHA,E.MUESTRANO,E.CLIENTEID,E.CLIENTENOMBRE,E.PACIENTEID,E.NOMBREPACIENTE,E.NETO,E.HORAENTRADA FROM PTENTRADAPACIENTE E INNER JOIN PTCLIENTE C ON E.CLIENTEID=C.CLIENTEID, PTGRUPOCLIENTE G '+
                    ' WHERE  E.TRANSFERIDO='+#39+'0'+#39+' AND E.ESTATUS='+#39+'0'+#39+' AND E.ORIGEN IN ('+#39+'07'+#39+','+#39+'09'+#39+','+#39+'10'+#39+','+#39+'12'+#39+') AND (E.NETO - E.TOTALPAGADO) > 0 And E.ORIGEN=G.GRUPOCLIENTE And E.RecID = ANY ( Select Refrecid from PtEntradaPacienteDetalle '+
                    ' Where Refrecid = e.Recid) ';
      Seleccion2 := ' UNION ALL SELECT E.USERID,E.FECHA,E.MUESTRANO,E.CLIENTEID,E.CLIENTENOMBRE,E.PACIENTEID,E.NOMBREPACIENTE,E.NETO,E.HORAENTRADA FROM PTENTRADAPACIENTE E INNER JOIN PTCLIENTE C ON E.CLIENTEID=C.CLIENTEID, PTGRUPOCLIENTE G '+
                    ' WHERE  E.TRANSFERIDO='+#39+'0'+#39+' AND E.ESTATUS='+#39+'0'+#39+' AND E.ORIGEN IN ('+#39+'01'+#39+') AND E.ORIGEN=G.GRUPOCLIENTE And E.RecID = ANY ( Select Refrecid from PtEntradaPacienteDetalle '+
                    ' Where Refrecid = e.Recid) ';
      Seleccion2 := Seleccion2 +' And e.Estatus = 0 And e.Dataareaid='+#39+dm.CurEmpresa+#39;
      If (cbExtSucursal.Text <> '') then
      begin
        Seleccion2 := Seleccion2 + ' And e.SucursalID ='+#39+CodSucursal+#39;
      end;

      If (cbExtCategoria.Text <> '') then
      begin
        Seleccion2 := Seleccion2 + ' And e.Origen ='+#39+CodCategoria+#39;
      end;
      If (cboFormaPago.Text <> '') then
      begin
        if cboFormaPago.Text='EFECTIVO' then
          Seleccion2 := Seleccion2 + ' And e.FormadePago ='+#39+'EFE'+#39
        else if cboFormaPago.Text='CREDITO' then
          Seleccion2 := Seleccion2 + ' And e.FormadePago ='+#39+'CRE'+#39
        else if cboFormaPago.Text='CASH' then
          Seleccion2 := Seleccion2 + ' And e.FormadePago ='+#39+'CASH'+#39;
      end;
      If (dbExtUsuarioCrea.Text <> '') then
      begin
        Seleccion2 := Seleccion2 + ' And e.UserID ='+#39+dbExtUsuarioCrea.EditValue+#39;
      end;
      If (dbExtUsuarioMod.Text <> '') then
      begin
        Seleccion2 := Seleccion2 + ' And e.FlebotomistaID ='+#39+dbExtUsuarioMod.EditValue+#39;
      end;

      If (FechaIni.Text<> '') and (FechaFin.Text<> '') then
      begin
        Seleccion2 := Seleccion2 + ' And e.Fecha Between '+#39+FormatDateTime('yyyymmdd', FechaIni.Date)+#39+ ' AND '+#39+FormatDateTime('yyyymmdd', FechaFin.Date)+#39;
      end;
    end;
    If cboReporte.Text <> 'DE USUARIOS'  Then
    begin
        Seleccion := Seleccion +' And e.Estatus = 0 And e.Dataareaid='+#39+dm.CurEmpresa+#39;
        Seleccion := Seleccion +' And Substring(e.EntradaID,1,3)<>'+#39+'HOL'+#39;
        If (cbExtSucursal.Text <> '') then
        begin
          Seleccion := Seleccion + ' And e.SucursalID ='+#39+CodSucursal+#39;
        end;
        If (cbExtCategoria.Text <> '') then
        begin
          Seleccion := Seleccion + ' And e.Origen ='+#39+CodCategoria+#39;
        end;
        If (cboFormaPago.Text <> '') then
        begin
          if cboFormaPago.Text='EFECTIVO' then
            Seleccion := Seleccion + ' And e.FormadePago ='+#39+'EFE'+#39
          else if cboFormaPago.Text='CREDITO' then
            Seleccion := Seleccion + ' And e.FormadePago ='+#39+'CRE'+#39
          else if cboFormaPago.Text='CASH' then
            Seleccion := Seleccion + ' And e.FormadePago ='+#39+'CASH'+#39;
        end;
        If (dbExtUsuarioCrea.Text <> '') then
        begin
          Seleccion := Seleccion + ' And e.UserID ='+#39+dbExtUsuarioCrea.EditValue+#39;
        end;
        If (dbExtUsuarioMod.Text <> '') then
        begin
          Seleccion := Seleccion + ' And e.FlebotomistaID ='+#39+dbExtUsuarioMod.EditValue+#39;
        end;
        If (FechaIni.Text<> '') and (FechaFin.Text<> '') then
        begin
          Seleccion := Seleccion + ' And e.Fecha Between '+#39+FormatDateTime('yyyymmdd', FechaIni.Date)+#39+ ' AND '+#39+FormatDateTime('yyyymmdd', FechaFin.Date)+#39;
        end;
    end;

    If (CbOrdenar.ItemIndex = 0) Then
    Begin
      if cboReporte.Text = 'MODIFICACIONES ENTRADAS Y/O CAMBIOS' then
        Seleccion := Seleccion + ' Order By a.fecha,a.muestrano,e.nombrepaciente,e.Userid,a.UserId ,comentario '
      else if cboReporte.Text = 'LISTADO DE PAGOS PENDIENTES' then
        Seleccion := Seleccion + ' Order By e.Userid,e.Origen,e.EntradaID,e.fecha,e.muestrano '
      else If cboReporte.Text = 'DE ENTRADAS A CREDITO SIN FACTURAR' then
        Seleccion2:= Seleccion2 + ' Order By e.clienteid,e.EntradaID,e.fecha,e.muestrano,e.Userid '
      else If cboReporte.Text = 'GENERAL POR CLIENTE' then
         Seleccion := Seleccion +' Order By e.clienteid,e.fecha,e.muestrano,e.Userid '
      else If cboReporte.Text = 'COMISIONES DE DOCTORES' then
         Seleccion := Seleccion +' Order By e.DoctorID,e.fecha,e.muestrano,e.Userid '
      else If cboReporte.Text = 'PACIENTES REFERIDOS POR MEDICOS' then
         Seleccion := Seleccion +' Group by RTRIM(REPLACE(REPLACE(REPLACE(E.NOMBREDOCTOR,CHAR(10),'+#39+#39+'),CHAR(13),'+#39+#39+'),CHAR(9),'+#39+#39+')) Order By RTRIM(REPLACE(REPLACE(REPLACE(E.NOMBREDOCTOR,CHAR(10),'+#39+#39+'),CHAR(13),'+#39+#39+'),CHAR(9),'+#39+#39+')) '
      else
        Seleccion := Seleccion + ' Order By e.EntradaID,e.fecha,e.muestrano,e.Userid '
    end;
    If (CbOrdenar.ItemIndex = 1) Then
    Begin
      if cboReporte.Text = 'MODIFICACIONES ENTRADAS Y/O CAMBIOS' then
        Seleccion := Seleccion + ' Order By a.fecha,a.muestrano,e.nombrepaciente,e.Userid,a.UserId ,comentario '
//      else if cboReporte.Text = 'LISTADO DE PAGOS PENDIENTES' then
//        Seleccion := Seleccion + ' Order By e.Userid,e.Origen,e.fecha,e.muestrano,e.nombrepaciente '
      else if cboReporte.Text = 'DE ENTRADAS POR SEGUROS (ARS)' then
        Seleccion := Seleccion + ' Group By E.USERID,E.FECHA,E.MUESTRANO,E.CLIENTEID,E.CLIENTENOMBRE,E.PACIENTEID,E.NOMBREPACIENTE,E.BRUTO,E.COBERTURAPORC,E.COBERTURASEGURO,E.NETO,E.RECID,DOMICILIO '+
                                 ' Order By e.ClienteNombre,e.fecha,e.Userid,e.Muestrano,e.nombrepaciente'
      else If cboReporte.Text = 'DE ENTRADAS A CREDITO SIN FACTURAR' then
        Seleccion2:= Seleccion2+ ' Order By e.clienteid,e.muestrano,e.fecha,e.nombrepaciente,e.Userid'
      else If cboReporte.Text = 'GENERAL POR CLIENTE' then
         Seleccion := Seleccion +' Order By e.clienteid,e.fecha,e.muestrano,e.Userid '
      else If cboReporte.Text = 'COMISIONES DE DOCTORES' then
         Seleccion := Seleccion +' Order By e.DoctorID,e.fecha,e.muestrano,e.Userid '
      else If cboReporte.Text = 'PACIENTES REFERIDOS POR MEDICOS' then
         Seleccion := Seleccion +' Group by RTRIM(REPLACE(REPLACE(REPLACE(E.NOMBREDOCTOR,CHAR(10),'+#39+#39+'),CHAR(13),'+#39+#39+'),CHAR(9),'+#39+#39+')) Order By RTRIM(REPLACE(REPLACE(REPLACE(E.NOMBREDOCTOR,CHAR(10),'+#39+#39+'),CHAR(13),'+#39+#39+'),CHAR(9),'+#39+#39+')) '
      else
      begin
        If Not ((cboReporte.Text ='DE USUARIOS') Or (cboReporte.Text ='LISTADO DE PAGOS PENDIENTES')) Then
        Seleccion := Seleccion + ' Order By e.muestrano,e.fecha,e.nombrepaciente,e.Userid';
      end;
    end;
    If (CbOrdenar.ItemIndex = 2) Then
      if cboReporte.Text = 'MODIFICACIONES ENTRADAS Y/O CAMBIOS' then
        Seleccion := Seleccion + ' Order By a.fecha,a.muestrano,e.nombrepaciente,e.Userid,a.UserId ,comentario '
      else
        Seleccion := Seleccion + ' Order By e.Neto,e.fecha,e.Muestrano,e.nombrepaciente,e.Userid';
    If (CbOrdenar.ItemIndex = 3) Then
    Begin
      if cboReporte.Text = 'MODIFICACIONES ENTRADAS Y/O CAMBIOS' then
        Seleccion := Seleccion + ' Order By a.fecha,a.muestrano,e.nombrepaciente,e.Userid,a.UserId ,comentario '
      else
        Seleccion := Seleccion + ' Order By e.TotalPagado,e.fecha,e.Muestrano,e.nombrepaciente,e.Userid';
    end;
//    If (CbOrdenar.ItemIndex = 4) Then
//    Begin
//      if cboReporte.Text = 'LISTADO DE PAGOS PENDIENTES' then
//        Seleccion := Seleccion + ' Order By e.Userid,e.Origen,e.fecha,e.muestrano,e.nombrepaciente ';
//    end;
    With qrReporte, sql do
    begin
      Close;
      If cboReporte.Text = 'DE ENTRADAS A CREDITO SIN FACTURAR' then
          SQL.Text := Seleccion+' '+Seleccion2
      else If cboReporte.Text = 'LISTADO DE PAGOS PENDIENTES' then
          SQL.Text := Seleccion+' Order By e.Userid,Origen,e.fecha,e.muestrano,e.nombrepaciente '
      else
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
          If Not((cboReporte.Text ='DE USUARIOS') Or (cboReporte.Text ='PACIENTES REFERIDOS POR MEDICOS'))   then
          begin
            jvReporteFecha.AsString                   := formatdatetime('dd/mm/yyyy',fieldbyname('Fecha').AsDateTime);
            jvReporteMuestrano.AsString               := fieldbyname('Muestrano').AsString;
            jvReporteNombrePaciente.AsString          := fieldbyname('NombrePaciente').AsString;
            jvReporteClienteNombre.AsString           := fieldbyname('ClienteNombre').AsString;
            jvReporteNeto.AsFloat                     := fieldbyname('Neto').AsFloat;
          end;
          If  (cboReporte.Text = 'TIEMPO DE OFICIAL(CAJERO) POR ENTRADA') Or
              (cboReporte.Text = 'COMISION DR. COMPRES GUTIERREZ') Or
              (cboReporte.Text = 'LISTADO DE PAGOS PENDIENTES') Or
              (cboReporte.Text = 'DE DESCUENTOS') Then
          Begin
              jvReporteHoraEntrada.AsString         := fieldbyname('HoraEntrada').AsString;
              jvReporteTotalPagado.AsCurrency       := fieldbyname('TotalPagado').AsCurrency;
          end;
          If (cboReporte.Text = 'TIEMPO DE OFICIAL(CAJERO) POR ENTRADA') Then
              jvReporteHoraRegistro.AsString        := fieldbyname('HoraRegistro').AsString;

          If  (cboReporte.Text = 'MODIFICACIONES ENTRADAS Y/O CAMBIOS') Or
              (cboReporte.Text = 'TIEMPO DE OFICIAL(CAJERO) POR ENTRADA') Then
              jvReporteUsuarioID.Asstring           := fieldbyname('Usuario_Entrada').AsString;
          If  (cboReporte.Text = 'MODIFICACIONES ENTRADAS Y/O CAMBIOS') then
              jvReporteUsuarioModifica.Asstring     := fieldbyname('Usuario_Modifica').AsString;
          If cboReporte.Text = 'TIEMPO DE OFICIAL(CAJERO) POR ENTRADA' then
             jvReporteTiempo_Minutos.AsString       := fieldbyname('Tiempo_Minutos').AsString;
          If (cboReporte.Text = 'LISTADO DE PAGOS PENDIENTES') Or
             (cboReporte.Text = 'DE DESCUENTOS') Then
          Begin
              jvReportePendiente.AsCurrency         := fieldbyname('Pendiente').AsCurrency;
              jvReporteTelefono1.AsString           := fieldbyname('Telefonos').AsString;
              jvReporteTelefono2.AsString           := fieldbyname('Telefono2').AsString;
              jvReporteBruto.AsCurrency             := fieldbyname('Bruto').AsCurrency;
              If (cboReporte.Text = 'LISTADO DE PAGOS PENDIENTES') then jvReporteCoberturaSeguro.AsCurrency   := fieldbyname('CoberturaSeguro').AsCurrency;
              jvReporteDescuento.AsCurrency         := fieldbyname('Descuento').AsCurrency;
              jvReporteEntradaID.AsString           := fieldbyname('EntradaID').AsString;
              jvReporteOrigen.AsString              := fieldbyname('Origen').AsString;
              jvReporteUsuarioID.AsString           := fieldbyname('UserID').AsString;
              jvReporteDomicilio.AsString           := fieldbyname('Domicilio').AsString;
          end;
          If cboReporte.Text = 'COMISION DR. COMPRES GUTIERREZ' then
              jvReporteComision.AsCurrency          := (fieldbyname('TotalPagado').AsCurrency * 20)/100;
          if cboReporte.Text = 'MODIFICACIONES ENTRADAS Y/O CAMBIOS' then
              jvReporteComentario.AsString          := fieldbyname('Comentario').AsString;
          If cboReporte.Text = 'DE ENTRADAS POR SEGUROS (ARS)' then
          Begin
              jvReporteTotal_Cobertura.AsCurrency   := fieldbyname('Total_Cobertura').AsCurrency;
              jvReporteCoberturaPorC.AsCurrency     := fieldbyname('CoberturaPorc').AsCurrency;
              jvReporteCoberturaSeguro.AsCurrency   := fieldbyname('CoberturaSeguro').AsCurrency;
              jvReporteUsuarioID.AsString           := fieldbyname('UserID').AsString;
              jvReporteDomicilio.AsString           := fieldbyname('Domicilio').AsString;
          end;
          If cboReporte.Text = 'DE ENTRADAS A CREDITO SIN FACTURAR' then
          Begin
              jvReporteHoraEntrada.AsString         := fieldbyname('HoraEntrada').AsString;
              jvReporteUsuarioID.AsString           := fieldbyname('UserID').AsString;
          end;
          If cboReporte.Text = 'DE PAGOS PENDIENTES (DEPTO. AUDITORIA)' then
          Begin
              jvReporteCentro.AsString              := fieldbyname('Centro').AsString;
              JvReporteNombre.AsString              := fieldbyname('Nombre').AsString;
              jvReporteUsuarioID.AsString           := fieldbyname('UserID').AsString;
              jvReportePendiente.AsCurrency         := fieldbyname('Pendiente').AsCurrency;
          end;
          If cboReporte.Text = 'DE USUARIOS' then
          Begin
              JvReporteNombre.AsString              := fieldbyname('Nombre').AsString;
              jvReporteUsuarioID.AsString           := fieldbyname('UserID').AsString;
          end;
          If cboReporte.Text = 'DE DESCUENTOS' then
          Begin
              JvReporteDescuentoPorC.AsCurrency     := fieldbyname('DescuentoPorC').AsCurrency;
              JvReporteDescuento.AsCurrency         := fieldbyname('Descuento').AsCurrency;
              JvReporteTipo_Descuento.AsString      := fieldbyname('Tipo_Descuento').AsString;
              JvReporteFecha_Descuento.AsString     := formatdatetime('dd/mm/yyyy',fieldbyname('Fecha_Descuento').AsDateTime);
          end;
          If cboReporte.Text = 'GENERAL POR CLIENTE' then
          Begin
              JvReportePendiente.AsCurrency        := fieldbyname('Pendiente').AsCurrency;
              jvReporteTotalPagado.AsCurrency      := fieldbyname('TotalPagado').AsCurrency;
          End;
          If cboReporte.Text = 'COMISIONES DE DOCTORES' then
          Begin
              jvReporteNombreDoctor.AsString       := fieldbyname('NombreDoctor').AsString;
              jvReporteTotalPagado.AsCurrency      := fieldbyname('TotalPagado').AsCurrency;
              jvReporteTotalComision.AsCurrency    := (fieldbyname('TotalPagado').AsCurrency*fieldbyname('Comision').AsCurrency)/100;
          End;
          If cboReporte.Text ='PACIENTES REFERIDOS POR MEDICOS' then
          Begin
              jvReporteNombreDoctor.AsString       := fieldbyname('NombreDoctor').AsString;
              jvReporteCant_Entradas.AsInteger     := fieldbyname('Cant_Entradas').AsInteger;
          End;
        Next;
      end;
      jvReporte.First;
      dsReporte.Enabled := True;
   end;
   If (jvReporte.RecordCount > 0) Then
   Begin
      if cboReporte.Text = 'MODIFICACIONES ENTRADAS Y/O CAMBIOS' then
      begin
        if cbExtSucursal.Text = EmptyStr then
          ppLabel8.Caption := 'Todas las Sucursales'
        else
          ppLabel8.Caption := cbExtSucursal.Text;

        if cbExtCategoria.Text = EmptyStr then
          ppLabel126.Caption := 'Todas las Categorias'
        else
          ppLabel126.Caption := cbExtCategoria.Text;

        ppLabel6.Caption := 'Listado '+cboReporte.Text;
        ppLabel7.Caption :='Desde : '+FormatDateTime('dd/mm/yyyy', FechaIni.Date)+' Hasta : '+FormatDateTime('dd/mm/yyyy', FechaFin.Date);

        If (RgImpresion.ItemIndex = 0) Then
           ppRptCambiosEnt.DeviceType := dtScreen
        else If (RgImpresion.ItemIndex = 1) Then
           ppRptCambiosEnt.DeviceType := dtPrinter;

           ppRptCambiosEnt.Print;
      end
      else if cboReporte.Text = 'TIEMPO DE OFICIAL(CAJERO) POR ENTRADA' then
      begin
        if cbExtSucursal.Text = EmptyStr then
          ppLabel19.Caption := 'Todas las Sucursales'
        else
          ppLabel19.Caption := cbExtSucursal.Text;
        ppLabel17.Caption := 'Listado '+cboReporte.Text;
        ppLabel15.Caption :='Desde : '+FormatDateTime('dd/mm/yyyy', FechaIni.Date)+' Hasta : '+FormatDateTime('dd/mm/yyyy', FechaFin.Date);

        If (RgImpresion.ItemIndex = 0) Then
           ppRptTiempoCajeroEnt.DeviceType := dtScreen
        else If (RgImpresion.ItemIndex = 1) Then
           ppRptTiempoCajeroEnt.DeviceType := dtPrinter;
        ppRptTiempoCajeroEnt.Print;
      end
      else if cboReporte.Text = 'COMISION DR. COMPRES GUTIERREZ' then
      begin
        if cbExtSucursal.Text = EmptyStr then
          ppLabel36.Caption := 'Todas las Sucursales'
        else
          ppLabel36.Caption := cbExtSucursal.Text;
        ppLabel34.Caption := 'Listado '+cboReporte.Text;
        ppLabel32.Caption :='Desde : '+FormatDateTime('dd/mm/yyyy', FechaIni.Date)+' Hasta : '+FormatDateTime('dd/mm/yyyy', FechaFin.Date);

        If (RgImpresion.ItemIndex = 0) Then
           ppRptComisionDr.DeviceType := dtScreen
        else If (RgImpresion.ItemIndex = 1) Then
           ppRptComisionDr.DeviceType := dtPrinter;
        ppRptComisionDr.Print;
      end
      else if (cboReporte.Text = 'LISTADO DE PAGOS PENDIENTES') then
      begin
        if cbExtSucursal.Text = EmptyStr then
          ppLabel38.Caption := 'Todas las Sucursales'
        else
          ppLabel38.Caption := cbExtSucursal.Text;

        if cbExtCategoria.Text = EmptyStr then
          ppLabel128.Caption := 'Todas las Categorias'
        else
          ppLabel128.Caption := cbExtCategoria.Text;

        ppLabel39.Caption := 'Listado '+cboReporte.Text;
        ppLabel40.Caption := 'Desde : '+FormatDateTime('dd/mm/yyyy', FechaIni.Date)+' Hasta : '+FormatDateTime('dd/mm/yyyy', FechaFin.Date);
        if dbExtUsuarioCrea.EditValue <> Null then
          ppLabel41.Caption := 'Cajero : '+dbExtUsuarioCrea.EditValue
        else
          ppLabel41.Caption := 'Todos los Usuarios';
        If (RgImpresion.ItemIndex = 0) Then
           ppImpPagosPend.DeviceType := dtScreen
        else If (RgImpresion.ItemIndex = 1)  Then
           ppImpPagosPend.DeviceType := dtPrinter;
        ppImpPagosPend.Print;
      end
      else if (cboReporte.Text = 'DE PAGOS PENDIENTES (DEPTO. AUDITORIA)')then
      begin
        if cbExtSucursal.Text = EmptyStr then
          ppLabel84.Caption := 'Todas las Sucursales'
        else
          ppLabel84.Caption := cbExtSucursal.Text;

        if cbExtCategoria.Text = EmptyStr then
          ppLabel134.Caption := 'Todas las Categorias'
        else
          ppLabel134.Caption := cbExtCategoria.Text;

        ppLabel85.Caption := 'Listado '+cboReporte.Text;
        ppLabel86.Caption := 'Desde : '+FormatDateTime('dd/mm/yyyy', FechaIni.Date)+' Hasta : '+FormatDateTime('dd/mm/yyyy', FechaFin.Date);
        if dbExtUsuarioCrea.EditValue <> Null then
          ppLabel87.Caption := 'Cajero : '+dbExtUsuarioCrea.EditValue
        else
          ppLabel87.Caption := 'Todos los Usuarios';

        If (RgImpresion.ItemIndex = 0) Then
           ppImpPagosPendAud.DeviceType := dtScreen
        else If (RgImpresion.ItemIndex = 1)  Then
           ppImpPagosPendAud.DeviceType := dtPrinter;
        ppImpPagosPendAud.Print;
      end
      else if (cboReporte.Text = 'DE USUARIOS')then
      begin
        if cbExtSucursal.Text = EmptyStr then
          ppLabel94.Caption := 'Todas las Sucursales'
        else
          ppLabel94.Caption := cbExtSucursal.Text;

        ppLabel96.Caption := 'Listado '+cboReporte.Text;
//        ppLabel97.Caption := 'Desde : '+FormatDateTime('dd/mm/yyyy', FechaIni.Date)+' Hasta : '+FormatDateTime('dd/mm/yyyy', FechaFin.Date);
        if dbExtUsuarioCrea.EditValue <> Null then
          ppLabel98.Caption := 'Cajero : '+dbExtUsuarioCrea.EditValue
        else
          ppLabel98.Caption := 'Todos los Usuarios';

        If (RgImpresion.ItemIndex = 0) Then
           ppImpUsuarios.DeviceType := dtScreen
        else If (RgImpresion.ItemIndex = 1)  Then
           ppImpUsuarios.DeviceType := dtPrinter;
        ppImpUsuarios.Print;
      end
      else if cboReporte.Text = 'DE ENTRADAS POR SEGUROS (ARS)' then
      begin
        if cbExtSucursal.Text = EmptyStr then
          ppLabel73.Caption := 'Todas las Sucursales'
        else
          ppLabel73.Caption := cbExtSucursal.Text;
        ppLabel59.Caption := 'Listado '+cboReporte.Text;
        ppLabel60.Caption :='Desde : '+FormatDateTime('dd/mm/yyyy', FechaIni.Date)+' Hasta : '+FormatDateTime('dd/mm/yyyy', FechaFin.Date);

        If (RgImpresion.ItemIndex = 0) Then
           ppImpSeguros.DeviceType := dtScreen
        else If (RgImpresion.ItemIndex = 1) Then
           ppImpSeguros.DeviceType := dtPrinter;
        ppImpSeguros.Print;
      end
      else if cboReporte.Text = 'DE ENTRADAS A CREDITO SIN FACTURAR' then
      begin
        if cbExtSucursal.Text = EmptyStr then
          ppLabel75.Caption := 'Todas las Sucursales'
        else
          ppLabel75.Caption := cbExtSucursal.Text;

        if cbExtCategoria.Text = EmptyStr then
          ppLabel130.Caption := 'Todas las Categorias'
        else
          ppLabel130.Caption := cbExtCategoria.Text;

        ppLabel69.Caption := 'Listado '+cboReporte.Text;
        ppLabel70.Caption :='Desde : '+FormatDateTime('dd/mm/yyyy', FechaIni.Date)+' Hasta : '+FormatDateTime('dd/mm/yyyy', FechaFin.Date);

        If (RgImpresion.ItemIndex = 0) Then
           ppImpSinFact.DeviceType := dtScreen
        else If (RgImpresion.ItemIndex = 1) Then
           ppImpSinFact.DeviceType := dtPrinter;
        ppImpSinFact.Print;
      end
      else if (cboReporte.Text = 'DE DESCUENTOS') then
      begin
        if cbExtSucursal.Text = EmptyStr then
          ppLabel124.Caption := 'Todas las Sucursales'
        else
          ppLabel124.Caption := cbExtSucursal.Text;

        if cbExtCategoria.Text = EmptyStr then
          ppLabel132.Caption := 'Todas las Categorias'
        else
          ppLabel132.Caption := cbExtCategoria.Text;

        ppLabel118.Caption := 'Listado '+cboReporte.Text;
        ppLabel119.Caption := 'Desde : '+FormatDateTime('dd/mm/yyyy', FechaIni.Date)+' Hasta : '+FormatDateTime('dd/mm/yyyy', FechaFin.Date);
        if dbExtUsuarioCrea.EditValue <> Null then
          ppLabel120.Caption := 'Cajero : '+dbExtUsuarioCrea.EditValue
        else
          ppLabel120.Caption := 'Todos los Usuarios';
        If (RgImpresion.ItemIndex = 0) Then
           ppImpDescuentos.DeviceType := dtScreen
        else If (RgImpresion.ItemIndex = 1)  Then
           ppImpDescuentos.DeviceType := dtPrinter;
        ppImpDescuentos.Print;
      end
      else if (cboReporte.Text = 'GENERAL POR CLIENTE') then
      begin
        if cbExtSucursal.Text = EmptyStr then
          ppLabel141.Caption := 'Todas las Sucursales'
        else
          ppLabel141.Caption := cbExtSucursal.Text;

        if cbExtCategoria.Text = EmptyStr then
          ppLabel142.Caption := 'Todas las Categorias'
        else
          ppLabel142.Caption := cbExtCategoria.Text;

        ppLabel143.Caption := 'Listado '+cboReporte.Text;
        ppLabel144.Caption := 'Desde : '+FormatDateTime('dd/mm/yyyy', FechaIni.Date)+' Hasta : '+FormatDateTime('dd/mm/yyyy', FechaFin.Date);
        if dbExtUsuarioCrea.EditValue <> Null then
          ppLabel147.Caption := 'Cajero : '+dbExtUsuarioCrea.EditValue
        else
          ppLabel147.Caption := 'Todos los Usuarios';
        If (RgImpresion.ItemIndex = 0) Then
           ppImpGeneral.DeviceType := dtScreen
        else If (RgImpresion.ItemIndex = 1)  Then
           ppImpGeneral.DeviceType := dtPrinter;
        ppImpGeneral.Print;
      end
      else if (cboReporte.Text = 'COMISIONES DE DOCTORES') then
      begin
        if cbExtSucursal.Text = EmptyStr then
          ppLabel176.Caption := 'Todas las Sucursales'
        else
          ppLabel176.Caption := cbExtSucursal.Text;

        ppLabel167.Caption := 'Listado '+cboReporte.Text;
        ppLabel168.Caption := 'Desde : '+FormatDateTime('dd/mm/yyyy', FechaIni.Date)+' Hasta : '+FormatDateTime('dd/mm/yyyy', FechaFin.Date);
        if dbExtUsuarioCrea.EditValue <> Null then
          ppLabel169.Caption := 'Cajero : '+dbExtUsuarioCrea.EditValue
        else
          ppLabel169.Caption := 'Todos los Usuarios';
        If (RgImpresion.ItemIndex = 0) Then
           ppImpComisionDoctores.DeviceType := dtScreen
        else If (RgImpresion.ItemIndex = 1)  Then
           ppImpComisionDoctores.DeviceType := dtPrinter;
        ppImpComisionDoctores.Print;
      end
      else if (cboReporte.Text = 'PACIENTES REFERIDOS POR MEDICOS') then
      begin
        if cbExtSucursal.Text = EmptyStr then
          ppLabel194.Caption := 'Todas las Sucursales'
        else
          ppLabel194.Caption := cbExtSucursal.Text;

        ppLabel187.Caption := 'Listado '+cboReporte.Text;
        ppLabel188.Caption := 'Desde : '+FormatDateTime('dd/mm/yyyy', FechaIni.Date)+' Hasta : '+FormatDateTime('dd/mm/yyyy', FechaFin.Date);
        if dbExtUsuarioCrea.EditValue <> Null then
          ppLabel189.Caption := 'Cajero : '+dbExtUsuarioCrea.EditValue
        else
          ppLabel189.Caption := 'Todos los Usuarios';
        If (RgImpresion.ItemIndex = 0) Then
           ppImpReferimiento.DeviceType := dtScreen
        else If (RgImpresion.ItemIndex = 1)  Then
           ppImpReferimiento.DeviceType := dtPrinter;
        ppImpReferimiento.Print;
      end;

   end;
  end;
 end;
 end;
 Procedure ppRptComisionDrBeforePrint(Sender: TObject);
 Begin

 end;
end.
