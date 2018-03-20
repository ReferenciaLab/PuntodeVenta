unit PuntoVentaAdministracionBackup;

interface
                                                    
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomModule, Menus, StdActns, ActnList, JvComponentBase,
  JvFormPlacement, ExtCtrls, JvExControls, JvComponent, JvEnterTab,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxCheckBox, cxDBEdit, cxCalc, cxSpinEdit,
  cxTimeEdit, cxDropDownEdit, cxCalendar, cxImageComboBox, cxMaskEdit, TXComp,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxDBLabel, cxCurrencyEdit,
  cxGroupBox, cxRadioGroup, cxMemo, cxSplitter, cxGridLevel, cxDBExtLookupComboBox,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, dxLayoutControl, StdCtrls, cxButtons,
  cxTextEdit, cxContainer, cxLabel, cxPC, ppDB, ppDBPipe, ppCtrls, ppStrtch,
  ppMemo, ppBands, myChkBox, ppVar, ppPrnabl, ppClass, ppCache, ppComm,
  ppRelatv, ppProd, ppReport, ADODB, dxmdaset, pptypes, cxBlobEdit;

type
  TfrmPuntoVentaAdministracionBackup = class(TfrmCustomModule)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxPageControlCabecera: TcxPageControl;
    dxLayoutControl1Item1: TdxLayoutItem;
    TabGeneral: TcxTabSheet;
    GridPruebas: TcxGrid;
    GridPruebasLevel1: TcxGridLevel;
    GridPruebasEntradasPacienteDet: TcxGridDBTableView;
    GridPruebasEntradasPacienteDetCoberturaAplica: TcxGridDBColumn;
    GridPruebasEntradasPacienteDetCoberturaEspecial: TcxGridDBColumn;
    GridPruebasEntradasPacienteDetPruebaID: TcxGridDBColumn;
    GridPruebasEntradasPacienteDetPrecio: TcxGridDBColumn;
    GridPruebasEntradasPacienteDetDescuento: TcxGridDBColumn;
    GridPruebasEntradasPacienteDetTotalLinea: TcxGridDBColumn;
    GridPruebasEntradasPacienteDetDescripcion: TcxGridDBColumn;
    GridPruebasEntradasPacienteDetDescPct: TcxGridDBColumn;
    GridPruebasEntradasPacienteDetCoberturaExpPorc: TcxGridDBColumn;
    GridPruebasEntradasPacienteDetColumn2: TcxGridDBColumn;
    GridPruebasEntradasPacienteDetMuestraNo: TcxGridDBColumn;
    GridPruebasEntradasPacienteDetComentario: TcxGridDBColumn;    
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxDBCurrencyEdit5: TcxDBCurrencyEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxDBCurrencyEdit6: TcxDBCurrencyEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    cxDBCurrencyEdit7: TcxDBCurrencyEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group8: TdxLayoutGroup;
    cxDBMemo1: TcxDBMemo;
    dxLayoutControl1Item10: TdxLayoutItem;
    lgBotones: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    lgBotonesItem1: TdxLayoutItem;
    btentrada: TcxButton;
    lgBotonesItem2: TdxLayoutItem;
    btpaciente: TcxButton;
    lgBotonesItem3: TdxLayoutItem;
    btprueba: TcxButton;
    lgBotonesItem4: TdxLayoutItem;
    btcancelar: TcxButton;
    lgBotonesItem5: TdxLayoutItem;
    bteliminar: TcxButton;
    lgBotonesItem6: TdxLayoutItem;
    btcliente: TcxButton;
    lgBotonesItem7: TdxLayoutItem;
    btgrabar: TcxButton;
    lgBotonesItem8: TdxLayoutItem;
    btcobrar: TcxButton;
    lgBotonesItem9: TdxLayoutItem;
    btimprimir: TcxButton;
    lcGeneralGroup_Root: TdxLayoutGroup;
    lcGeneral: TdxLayoutControl;
    mdPago: TdxMemData;
    mdPagoFormaDePago: TStringField;
    mdPagoOrden: TSmallintField;
    mdPagoPagado: TCurrencyField;
    mdPagoFormaPagoID: TStringField;
    mdPagorefrecid: TLargeintField;
    mdPagoMoneda: TStringField;
    dsPago: TDataSource;
    qrEntradaPaciente: TADOQuery;
    qrEntradaPacienteEntredaID: TStringField;
    qrEntradaPacienteFecha: TDateTimeField;
    qrEntradaPacientePacienteID: TStringField;
    qrEntradaPacienteClienteID: TStringField;
    qrEntradaPacienteDoctorID: TStringField;
    qrEntradaPacientePolizaID: TStringField;
    qrEntradaPacienteEnClinica: TBooleanField;
    qrEntradaPacienteRecordClinica: TStringField;
    qrEntradaPacienteResultadoPaciente: TIntegerField;
    qrEntradaPacienteResultadoDoctor: TIntegerField;
    qrEntradaPacienteFechaPrometida: TDateTimeField;
    qrEntradaPacienteHoraPrometida: TStringField;
    qrEntradaPacienteFlebotomistaID: TStringField;
    qrEntradaPacienteNota: TMemoField;
    qrEntradaPacienteCoberturaConfirmada: TBooleanField;
    qrEntradaPacienteProyectoID: TStringField;
    qrEntradaPacienteRecid: TLargeintField;
    qrEntradaPacienteBruto: TBCDField;
    qrEntradaPacienteDescuento: TBCDField;
    qrEntradaPacienteSubTotal: TBCDField;
    qrEntradaPacienteCoberturaSeguro: TBCDField;
    qrEntradaPacienteNeto: TBCDField;
    qrEntradaPacienteNombrePaciente: TStringField;
    qrEntradaPacienteDireccion: TMemoField;
    qrEntradaPacienteTelefonos: TStringField;
    qrEntradaPacienteEmail: TStringField;
    qrEntradaPacienteClienteNombre: TStringField;
    qrEntradaPacienteSucursalId: TStringField;
    qrEntradaPacienteUserID: TStringField;
    qrEntradaPacienteTotalPendiente: TFloatField;
    qrEntradaPacienteCobroID: TStringField;
    qrEntradaPacienteTotalPagado: TBCDField;
    qrEntradaPacienteHoraEntrada: TStringField;
    qrEntradaPacientePrioridad: TIntegerField;
    qrEntradaPacienteFax: TStringField;
    qrEntradaPacienteTipoDocumento: TIntegerField;
    qrEntradaPacienteCoberturaPorc: TBCDField;
    qrEntradaPacienteCoberturaValor: TBCDField;
    dsEntradaPaciente: TDataSource;
    qrEntradaPacienteDetalle: TADOQuery;
    qrEntradaPacienteDetallePruebaID: TStringField;
    qrEntradaPacienteDetalleComboPruebaID: TStringField;
    qrEntradaPacienteDetallePrecio: TBCDField;
    qrEntradaPacienteDetalleDescuento: TBCDField;
    qrEntradaPacienteDetalleDescuentoExtra: TBCDField;
    qrEntradaPacienteDetalleCodigoAutorizacion: TStringField;
    qrEntradaPacienteDetalleTotalLinea: TBCDField;
    qrEntradaPacienteDetalleRefRecid: TLargeintField;
    qrEntradaPacienteDetalleSecuencia: TLargeintField;
    qrEntradaPacienteDetalleDescripcion: TStringField;
    qrEntradaPacienteDetalleDescPct: TBCDField;
    dsEntradaPacienteDetalle: TDataSource;
    ppImpFactura: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    pplbtipodoc: TppLabel;
    ppDBText11: TppDBText;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppLabel8: TppLabel;
    ppDBText7: TppDBText;
    ppLabel9: TppLabel;
    ppDBText8: TppDBText;
    ppLabel10: TppLabel;
    ppDBText9: TppDBText;
    ppLabel11: TppLabel;
    ppDBText10: TppDBText;
    ppShape1: TppShape;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    myDBCheckBox1: TmyDBCheckBox;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel34: TppLabel;
    ppDBText38: TppDBText;
    ppDetailBand1: TppDetailBand;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLabel18: TppLabel;
    ppDBText19: TppDBText;
    ppLabel19: TppLabel;
    ppDBText20: TppDBText;
    ppLabel20: TppLabel;
    ppDBText21: TppDBText;
    ppLabel21: TppLabel;
    ppDBText22: TppDBText;
    ppLabel22: TppLabel;
    ppDBText23: TppDBText;
    ppLabel23: TppLabel;
    ppDBText24: TppDBText;
    ppLabel24: TppLabel;
    ppDBText25: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppLine1: TppLine;
    ppImpCotizacion: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLabel5: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppLabel28: TppLabel;
    ppDBText32: TppDBText;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppLabel31: TppLabel;
    ppDBText35: TppDBText;
    ppLabel32: TppLabel;
    ppDBText36: TppDBText;
    ppLabel33: TppLabel;
    ppDBText37: TppDBText;
    ppShape2: TppShape;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    myDBCheckBox2: TmyDBCheckBox;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppLabel41: TppLabel;
    ppDBText44: TppDBText;
    ppLabel42: TppLabel;
    ppDBText45: TppDBText;
    ppLabel43: TppLabel;
    ppDBText46: TppDBText;
    ppLabel44: TppLabel;
    ppDBText47: TppDBText;
    ppLabel45: TppLabel;
    ppDBText48: TppDBText;
    ppDBMemo2: TppDBMemo;
    ppLine2: TppLine;
    ppEntradaPaciente: TppDBPipeline;
    ppEntradaPacienteDetalle: TppDBPipeline;
    lcGeneralGroup1: TdxLayoutGroup;
    lcGeneralGroup2: TdxLayoutGroup;
    lcGeneralGroup3: TdxLayoutGroup;
    cxDBTextEdit1: TcxDBTextEdit;
    lcGeneralItem1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    lcGeneralItem4: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    lcGeneralItem5: TdxLayoutItem;
    CxDbPaciente: TcxDBTextEdit;
    lcGeneralItem6: TdxLayoutItem;
    cxDBMemo2: TcxDBMemo;
    lcGeneralItem7: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    lcGeneralItem8: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    lcGeneralItem9: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    lcGeneralItem10: TdxLayoutItem;
    cxDBTextEdit8: TcxDBTextEdit;
    lcGeneralItem11: TdxLayoutItem;
    cxDBTextEdit9: TcxDBTextEdit;
    lcGeneralItem12: TdxLayoutItem;
    cxDBExtLookupComboBox1: TcxDBExtLookupComboBox;
    lcGeneralItem13: TdxLayoutItem;
    lcGeneralGroup4: TdxLayoutGroup;
    lcGeneralGroup5: TdxLayoutGroup;
    lcGeneralGroup6: TdxLayoutGroup;
    edcoberturavalor: TcxDBCurrencyEdit;
    lcGeneralItem17: TdxLayoutItem;
    cxDBCheckBox1: TcxDBCheckBox;
    lcGeneralItem18: TdxLayoutItem;
    cxDBTextEdit11: TcxDBTextEdit;
    lcGeneralItem19: TdxLayoutItem;
    cxDBTextEdit12: TcxDBTextEdit;
    lcGeneralItem20: TdxLayoutItem;
    cxDBImageComboBox2: TcxDBImageComboBox;
    lcGeneralItem21: TdxLayoutItem;
    qrEntradaPacienteDescuentoPorc: TBCDField;
    qrEntradaPacienteDescuentoValor: TBCDField;
    qrEntradaPacienteAprobadoPor: TStringField;
    cxGridStyles: TcxStyleRepository;
    stGrDatos: TcxStyle;
    stGrEdit: TcxStyle;
    menuImpresion: TPopupMenu;
    RecibodeCobro1: TMenuItem;
    ExtraOptions1: TExtraOptions;
    qrEntradaPacienteDetalleCoberturaAplica: TBooleanField;
    qrEntradaPacienteDetalleCoberturaEspecial: TBCDField;
    qrEntradaPacienteDetalleCoberturaEspecialPorc: TBCDField;
    qrEntradaPacienteDetalleCoberturaAplicada: TBCDField;
    qrEntradaPacienteMuestraNo: TStringField;
    qrEntradaPacienteDetalleDescuentoLineaAplicado: TBCDField;
    qrEntradaPacienteDetalleMuestraNo: TStringField;
    VolantedePruebasARS1: TMenuItem;
    VolantedePruebasTomaMuestra1: TMenuItem;
    ppImpFacturaSeguro: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    pplbtelefono: TppLabel;
    ppDBText54: TppDBText;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppDBText57: TppDBText;
    ppLabel56: TppLabel;
    ppDBText61: TppDBText;
    ppShape3: TppShape;
    ppLabel58: TppLabel;
    ppLabel60: TppLabel;
    ppDBText62: TppDBText;
    ppDetailBand3: TppDetailBand;
    ppLabel66: TppLabel;
    ppDBText70: TppDBText;
    ppLabel67: TppLabel;
    ppDBText71: TppDBText;
    ppDBText53: TppDBText;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppDBText56: TppDBText;
    ppLabel59: TppLabel;
    ppDBText58: TppDBText;
    ppLabel61: TppLabel;
    ppLabel49: TppLabel;
    ppDBText60: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel46: TppLabel;
    ppDBMemo3: TppDBMemo;
    ppImpFactPacienteConSeguro: TppReport;
    ppHeaderBand4: TppHeaderBand;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppLabel47: TppLabel;
    ppDBText55: TppDBText;
    ppLabel48: TppLabel;
    ppLabel50: TppLabel;
    ppDBText63: TppDBText;
    ppLabel55: TppLabel;
    ppDBText66: TppDBText;
    ppShape4: TppShape;
    ppLabel57: TppLabel;
    ppDBText67: TppDBText;
    ppDBText68: TppDBText;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppDBText69: TppDBText;
    ppLabel65: TppLabel;
    ppDBText72: TppDBText;
    ppLabel68: TppLabel;
    ppDBText73: TppDBText;
    ppDetailBand4: TppDetailBand;
    ppDBText74: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppDBMemo4: TppDBMemo;
    ppImpFactPacienteSinSeguro: TppReport;
    ppHeaderBand5: TppHeaderBand;
    ppDBText75: TppDBText;
    ppDBText79: TppDBText;
    ppLabel62: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppDBText81: TppDBText;
    ppLabel74: TppLabel;
    ppDBText82: TppDBText;
    ppShape5: TppShape;
    ppLabel75: TppLabel;
    ppDBText83: TppDBText;
    ppDBText84: TppDBText;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppDBText85: TppDBText;
    ppLabel78: TppLabel;
    ppDBText86: TppDBText;
    ppLabel79: TppLabel;
    ppDBText87: TppDBText;
    ppDetailBand5: TppDetailBand;
    ppSummaryBand3: TppSummaryBand;
    ppDBMemo5: TppDBMemo;
    ppLabel83: TppLabel;
    ppImpReciboSinSeguro: TppReport;
    ppHeaderBand6: TppHeaderBand;
    ppDBText93: TppDBText;
    ppDBText94: TppDBText;
    ppLabel84: TppLabel;
    ppDBText95: TppDBText;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppDBText96: TppDBText;
    ppLabel87: TppLabel;
    ppDBText97: TppDBText;
    ppShape6: TppShape;
    ppLabel88: TppLabel;
    ppDBText98: TppDBText;
    ppDBText99: TppDBText;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppDBText100: TppDBText;
    ppLabel91: TppLabel;
    ppDBText101: TppDBText;
    ppLabel92: TppLabel;
    ppDBText102: TppDBText;
    ppLabel93: TppLabel;
    ppDetailBand6: TppDetailBand;
    ppDBText103: TppDBText;
    ppDBText104: TppDBText;
    ppSummaryBand4: TppSummaryBand;
    ppLabel94: TppLabel;
    ppDBText105: TppDBText;
    ppLabel95: TppLabel;
    ppDBText106: TppDBText;
    ppLabel96: TppLabel;
    ppDBText107: TppDBText;
    ppDBMemo6: TppDBMemo;
    BtFunciones: TcxButton;
    lgBotonesItem12: TdxLayoutItem;
    MenuFunciones: TPopupMenu;
    ConfirmarCobertura1: TMenuItem;
    qrEntradaPacienteAprobacionNo: TStringField;
    qrEntradaPacienteMonedaID: TStringField;
    ppLabel97: TppLabel;
    ppDBText108: TppDBText;
    ppLabel98: TppLabel;
    ppDBText109: TppDBText;
    ppLabel99: TppLabel;
    ppDBText110: TppDBText;
    btnotacredito: TcxButton;
    lgBotonesItem13: TdxLayoutItem;
    NotadeCredito1: TMenuItem;
    lcGeneralGroup7: TdxLayoutGroup;
    EdDoctor: TcxDBExtLookupComboBox;
    lcGeneralItem24: TdxLayoutItem;
    lcGeneralItem26: TdxLayoutItem;
    lcGeneralItem27: TdxLayoutItem;
    lcGeneralItem28: TdxLayoutItem;
    lcGeneralItem29: TdxLayoutItem;
    cxDBDateEdit3: TcxDBDateEdit;
    cxDBTimeEdit3: TcxDBTimeEdit;
    cxDBImageComboBox7: TcxDBImageComboBox;
    cxDBImageComboBox8: TcxDBImageComboBox;
    cxDBExtLookupComboBox2: TcxDBExtLookupComboBox;
    lcGeneralItem30: TdxLayoutItem;
    qrEntradaPacienteFechaEntrada: TDateTimeField;
    cxDBDateEdit2: TcxDBDateEdit;
    lcGeneralItem31: TdxLayoutItem;
    CambiarLaboratorioNoenlasLineas1: TMenuItem;
    cxDBTextEdit14: TcxDBTextEdit;
    lcGeneralItem23: TdxLayoutItem;
    qrEntradaPacienteCoberturaExpPorc: TBooleanField;
    edcobexpporc: TcxDBCheckBox;
    lcGeneralItem16: TdxLayoutItem;
    pplbcobertura: TppLabel;
    qrEntradaPacienteDetalleComentario: TMemoField;
    qrEntradaPacienteDetalleCoberturaExpPorc: TBooleanField;
    EliminarDescuentoAplicado1: TMenuItem;
    qrEntradaPacienteEdadPaciente: TBCDField;
    cxDBCurrencyEdit9: TcxDBCurrencyEdit;
    lcGeneralItem33: TdxLayoutItem;
    lcGeneralGroup8: TdxLayoutGroup;
    qrEntradaPacienteNombreDoctor: TStringField;
    cxDBTextEdit15: TcxDBTextEdit;
    lcGeneralItem34: TdxLayoutItem;
    ppLabel100: TppLabel;
    ppDBText59: TppDBText;
    qrEntradaPacientePublicarInternet: TBooleanField;
    cxDBCheckBox2: TcxDBCheckBox;
    lcGeneralItem35: TdxLayoutItem;
    MenuGrid: TPopupMenu;
    MenuItem1: TMenuItem;
    qrEntradaPacienteOrigen: TStringField;
    qrEntradaPacienteCarnet: TStringField;
    edtipocliente: TcxDBExtLookupComboBox;
    lcGeneralItem14: TdxLayoutItem;
    lcGeneralGroup9: TdxLayoutGroup;
    lcGeneralGroup10: TdxLayoutGroup;
    cxDBCurrencyEdit10: TcxDBCurrencyEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group7: TdxLayoutGroup;
    qrEntradaPacientePublicarInternetDoctor: TBooleanField;
    cxDBCheckBox3: TcxDBCheckBox;
    lcGeneralItem32: TdxLayoutItem;
    cxDBTextEdit16: TcxDBTextEdit;
    lcGeneralItem15: TdxLayoutItem;
    lcGeneralGroup12: TdxLayoutGroup;
    lcGeneralGroup13: TdxLayoutGroup;
    ppLabel101: TppLabel;
    ppDBText111: TppDBText;
    ppLabel102: TppLabel;
    ppDBText112: TppDBText;
    ppLabel103: TppLabel;
    ppDBText113: TppDBText;
    ppLabel104: TppLabel;
    ppDBText114: TppDBText;
    ppLabel105: TppLabel;
    ppDBText115: TppDBText;
    ppLabel106: TppLabel;
    ppDBText116: TppDBText;
    CuadredeCaja1: TMenuItem;
    CuadredeCaja2: TMenuItem;
    AsignarDescuentoAutorizadoporCobros1: TMenuItem;
    qrEntradaPacienteCuadreGlobal: TStringField;
    qrEntradaPacienteCuadreUsuario: TStringField;
    qrEntradaPacienteDescAutorizadoPor: TStringField;
    qrEntradaPacienteGastosVarios: TBCDField;
    GastosVarios1: TMenuItem;
    LbHold: TcxLabel;
    lcGeneralItem38: TdxLayoutItem;
    BtHold: TcxButton;
    lgBotonesItem11: TdxLayoutItem;
    Asignar2daMuestra1: TMenuItem;
    qrEntradaPacienteRepMuestra: TBooleanField;
    qrEntradaPacienteDetalleRepMuestra: TBooleanField;
    qrEntradaPacienteDetalleMuestraAnt: TStringField;
    qrEntradaPacienteEntradaIdAnt: TStringField;
    qrEntradaPacienteNoAS400: TBooleanField;
    qrEntradaPacienteNoAxapta: TBooleanField;
    qrEntradaPacienteNoFactura: TBooleanField;
    qrEntradaPacienteFactExterior: TBooleanField;
    qrEntradaPacienteDetalleFacturar: TBooleanField;
    qrEntradaPacienteTipoEntrada: TStringField;
    qrEntradaPacienteFormadePago: TStringField;
    cxDBDateEdit4: TcxDBDateEdit;
    dxLayoutControl1Item12: TdxLayoutItem;
    cxDBTimeEdit2: TcxDBTimeEdit;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl1Item14: TdxLayoutItem;
    cxDBImageComboBox1: TcxDBImageComboBox;
    lcGeneralItem2: TdxLayoutItem;
    cxDBImageComboBox3: TcxDBImageComboBox;
    lcGeneralItem3: TdxLayoutItem;
    cxDBTextEdit10: TcxDBTextEdit;
    lcGeneralItem37: TdxLayoutItem;
    qrEntradaPacienteDescuentoCard: TStringField;
    qrEntradaPacienteDescuentoTexto: TStringField;
    qrEntradaPacienteDetalleCodigoCupID: TStringField;
    qrEntradaPacienteDetalleDescripcionCup: TStringField;
    ppLabel107: TppLabel;
    LbPrecio: TppLabel;
    LbCodigo: TppLabel;
    LbDescripcion: TppLabel;
    LbPrecio1: TppLabel;
    LbDescripcion1: TppLabel;
    ppLabel108: TppLabel;
    ppLabel109: TppLabel;
    LbPaciente: TppLabel;
    LbNeto: TppLabel;
    LbPagado: TppLabel;
    LbPendiente: TppLabel;
    LbNetoTit: TppLabel;
    LbPagadoTit: TppLabel;
    LbPendienteTit: TppLabel;
    ppLabel69: TppLabel;
    ppDBText76: TppDBText;
    ppLabel70: TppLabel;
    ppDBText77: TppDBText;
    ppLabel71: TppLabel;
    ppDBText78: TppDBText;
    qrEntradaPacienteHold: TBooleanField;
    ppColumnHeaderBand1: TppColumnHeaderBand;
    ppColumnFooterBand1: TppColumnFooterBand;
    GridPruebasEntradasPacienteDetCodigoCupID: TcxGridDBColumn;
    procedure FormDestroy(Sender: TObject);
    procedure CodigodeBarra1Click(Sender: TObject);
    procedure ppSummaryBand3BeforePrint(Sender: TObject);
    procedure ppDetailBand5BeforePrint(Sender: TObject);
    procedure EdDoctorPropertiesChange(Sender: TObject);
    procedure ppDetailBand3BeforePrint(Sender: TObject);
    procedure qrEntradaPacienteTipoEntradaChange(Sender: TField);
    procedure qrEntradaPacienteDetalleBeforeInsert(DataSet: TDataSet);
    procedure qrEntradaPacienteDetalleBeforeEdit(DataSet: TDataSet);
    procedure qrEntradaPacienteNombrePacienteValidate(Sender: TField);
    procedure Asignar2daMuestra1Click(Sender: TObject);
    procedure BtHoldClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GastosVarios1Click(Sender: TObject);
    procedure CuadredeCaja2Click(Sender: TObject);
    procedure CuadredeCaja1Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure qrEntradaPacienteCoberturaPorcValidate(Sender: TField);
    procedure qrEntradaPacienteDoctorIDChange(Sender: TField);
    procedure qrEntradaPacienteDetalleAfterDelete(DataSet: TDataSet);
    procedure qrEntradaPacienteOrigenChange(Sender: TField);
    procedure qrEntradaPacienteAfterPost(DataSet: TDataSet);
    procedure EliminarDescuentoAplicado1Click(Sender: TObject);
    procedure qrEntradaPacienteDetalleBeforeDelete(DataSet: TDataSet);
    procedure qrEntradaPacienteDetallePruebaIDValidate(Sender: TField);
    procedure qrEntradaPacienteDetallePruebaIDChange(Sender: TField);
    procedure AsignarDescuentoAutorizadoporCobros1Click(Sender: TObject);    
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure qrEntradaPacienteCoberturaValorValidate(Sender: TField);
    procedure qrEntradaPacienteCoberturaExpPorcValidate(Sender: TField);
    procedure edcoberturavalorExit(Sender: TObject);
    procedure CambiarLaboratorioNoenlasLineas1Click(Sender: TObject);
    procedure NotadeCredito1Click(Sender: TObject);
    procedure btnotacreditoClick(Sender: TObject);
    procedure ConfirmarCobertura1Click(Sender: TObject);
    procedure RecibodeCobro1Click(Sender: TObject);
    procedure VolantedePruebasTomaMuestra1Click(Sender: TObject);
    procedure VolantedePruebasARS1Click(Sender: TObject);
    procedure ppHeaderBand3BeforePrint(Sender: TObject);
    procedure qrEntradaPacienteDetalleDescuentoChange(Sender: TField);
    procedure btentradaClick(Sender: TObject);
    procedure btclienteClick(Sender: TObject);
    procedure btcobrarClick(Sender: TObject);
    procedure btgrabarClick(Sender: TObject);
    procedure btimpcotClick(Sender: TObject);
    procedure bteliminarClick(Sender: TObject);
    procedure btcancelarClick(Sender: TObject);
    procedure btpruebaClick(Sender: TObject);
    procedure qrEntradaPacienteTipoDocumentoChange(Sender: TField);
    procedure qrEntradaPacienteCalcFields(DataSet: TDataSet);
    procedure qrEntradaPacienteDetalleAfterPost(DataSet: TDataSet);
    procedure qrEntradaPacienteDetalleBeforePost(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btpacienteClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  protected
    procedure SetColorTo(iColor: TColor);
    procedure SetReadOnlyToNoEdit;
    procedure SetComponentReadOnly( thisComponent : TComponent; bFlag : Boolean );
    procedure UnSetReadOnlyToNoEdit;
    procedure RecalcularLineas;
    procedure DesabilitarBotones(_SiNo : Boolean);

    procedure ActCobro;
    procedure ActNotaCredito;
    procedure CrearCobro;
    procedure RefrescarCobro;
    procedure CrearNotaCredito;
    procedure ActDetalle;
    procedure ImpresionRecibo;
    procedure ImpresionNC;
    procedure ActInterface;

    procedure act_hold;
    procedure Buscar_Combo;
    procedure Buscar_Doctor;
    procedure Buscar_Muestra;
    procedure Act_Seguro_Cliente;
    procedure Insert_Card_Descuento;
    procedure Insertar_Combo_Precio;
    procedure Insertar_Combo_Blanco;
    procedure Buscar_Cod_Cups(cliente: String; prueba: String);

    procedure CrearTransCliente(cliente: string; tipodoc: string; documento: string;
              tipoaplica: string; documentoaplica: string;fecha : TDateTime; valor: Double;moneda :string);
    function ExisteCobro : Boolean;
    function TipoCobro : String;
    function GetEntradaID : String;
    function GetMuestraNo : String;
    function GetReciboNo : String;
    function GetNotaCredito : String;
    function Asignar_Descuento : Boolean;    
    function CanCambiarLaboratorio : Boolean;
    function ValidateCliente : Boolean;
    function GetNextSecDoc(tipodoc : string) : String;

  private
    { Private declarations }
  public
    { Public declarations }
    factor          : Integer;
    recid           : Integer;
    valorNC         : Double;
    pendiente       : Double;
    efectivo        : Double;
    sumatotal       : Double;
    devuelta        : Double;
    comboprecio     : Boolean;
    Act_2da         : Boolean;
    Record_Ant      : Integer;
    cobroid         : string;
    Docto_Ant       : String;
    Muestra_Ant     : String;
    ClienteFactura  : string;
    curCoberturaAplicada : Integer;

////////////////////////////////////////////////////////////////////////////////
    qfindCltParams  : TADOQuery;
    qfindPacientes  : TADOQuery;
    procedure correccion;
    procedure Val_Descuento;
    procedure Buscar_Cliente;
    procedure Buscar_Paciente;
    function  buscar_valores : Boolean;
////////////////////////////////////////////////////////////////////////////////

    procedure NuevaVenta;
    procedure BuscarDatos;
    procedure RefrescarInterface;
    procedure CancelarCobro;
    procedure ActTotales;
    procedure RefrescarGrid(SoloLectura : Boolean);
    function MaxSecuenciaLinea : Integer;
    function ValidarMontoCobrado : Boolean;
    function CoberturaAplicada : Double;
    function ImporteLinea : Double;
    function TotalDescuentoLinea : Double;
    function ImporteBrutoExclLineaActual(refrecid : integer ;secuencia : integer) : Double;
    function ImporteBrutoExclLineaActualAndCobertura(refrecid : integer ;secuencia : integer) : Double;
    procedure VerificarPagoDiferencia;
  end;

var
  frmPuntoVentaAdministracionBackup   : TfrmPuntoVentaAdministracionBackup;
  qfindprueba     : TADOQuery;
  qfindprint      : TADOQuery;
  qfindcodcup     : TADOQuery;
  qfindRepetir    : TADOQuery;
  qfindcombo      : TADOQuery;
  qfindCltParams  : TADOQuery;
  qfindPacientes  : TADOQuery;


implementation

uses ActionsDM, DataModule, Main, Pymeconst;

{$R *.dfm}


function TfrmPuntoVentaAdministracionBackup.ValidateCliente : Boolean;
var
 qfind : TADOQuery;
 ret : Boolean;
begin
  inherited;
  ret := true;
  if qrEntradaPacienteClienteID.Value <> '' then
  begin
   qfind := DM.Find('Select * from PTCliente Where ClienteId = :cli',qrEntradaPacienteClienteID.Value);
   if qfind.FieldByName('GrupoCliente').AsString <> qrEntradaPacienteOrigen.Value then
   begin
    DM.Warning('El cliente seleccionado no pertenece a este tipo de cliente.');
    ret := false;
   end;
  end;

  result := ret;
  FreeAndNil(qfind);
end;

procedure TfrmPuntoVentaAdministracionBackup.CrearTransCliente(cliente: string; tipodoc: string; documento: string;
tipoaplica: string; documentoaplica: string;fecha : TDateTime; valor: Double;moneda :string);
var
 qinsert : TADOQuery;
begin
 qinsert := DM.NewQuery;

 qinsert.Close;
 qinsert.SQL.Text := 'Insert into PTClienteTransacciones(ClienteId,fecha,TipoDoc,Documento,TipoAplica,DocumentoAplica,Valor,MonedaId,ValorMST) '+
                     ' Values(:0,:1,:2,:3,:4,:5,:6,:7,:8)';
 qinsert.Parameters[0].Value := cliente;
 qinsert.Parameters[1].Value := fecha;
 qinsert.Parameters[2].Value := tipodoc;
 qinsert.Parameters[3].Value := documento;
 qinsert.Parameters[4].Value := tipoaplica;
 qinsert.Parameters[5].Value := documentoaplica;
 qinsert.Parameters[6].Value := valor;
 qinsert.Parameters[7].Value := moneda;
 qinsert.Parameters[8].Value := DM.ValorMoneda(valor,moneda,DM.qrparametroMonedaID.Value,fecha);
 qinsert.ExecSQL;

 FreeAndNil(qinsert);

end;

procedure TfrmPuntoVentaAdministracionBackup.CuadredeCaja1Click(Sender: TObject);
begin
  inherited;
  frmMain.LanzaVentana(1402);
end;

procedure TfrmPuntoVentaAdministracionBackup.CuadredeCaja2Click(Sender: TObject);
begin
  inherited;
  frmMain.LanzaVentana(-7987);
end;

procedure TfrmPuntoVentaAdministracionBackup.RefrescarGrid(SoloLectura: Boolean);
begin
 GridPruebasEntradasPacienteDet.NavigatorButtons.Delete.Visible := not SoloLectura;
 GridPruebasEntradasPacienteDet.NavigatorButtons.Insert.Visible := not SoloLectura;
 GridPruebasEntradasPacienteDet.NavigatorButtons.Post.Visible := not SoloLectura;
 GridPruebasEntradasPacienteDet.NavigatorButtons.Edit.Visible := not SoloLectura;

 GridPruebasEntradasPacienteDet.OptionsData.Appending := not SoloLectura;
 GridPruebasEntradasPacienteDet.OptionsData.Inserting := not SoloLectura;
 GridPruebasEntradasPacienteDet.OptionsData.Deleting := not SoloLectura;

 GridPruebasEntradasPacienteDetPruebaID.Options.Editing := not SoloLectura;
 GridPruebasEntradasPacienteDetComentario.Options.Editing := not SoloLectura;
end;


procedure TfrmPuntoVentaAdministracionBackup.ActInterface;
begin
 act_hold;
 Val_Descuento;

 DM.qrParametro.close;
 DM.qrParametro.open;
 qrEntradapacienteFechaEntrada.Required := False;
 qrEntradaPacienteDoctorID.Required := False;
 qrEntradaPacientePolizaID.Required := False;

 lcGeneralItem13.Visible := false;
 lcGeneralGroup6.Visible := false;
 lcGeneralItem31.Visible := false;
 ConfirmarCobertura1.Enabled := false;
 GridPruebasEntradasPacienteDetCoberturaAplica.Visible := false;

 if qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSeg.Value then
 begin
  lcGeneralItem15.Caption := 'Afiliado No.:';
  qrEntradaPacientePolizaID.DisplayLabel := 'Afiliado No.:';

  lcGeneralGroup6.Visible := true;
  ConfirmarCobertura1.Enabled := not qrEntradaPacienteCoberturaConfirmada.Value;
  GridPruebasEntradasPacienteDetCoberturaAplica.Visible := true;
  GridPruebasEntradasPacienteDetCodigoCupID.Visible := True;
  qrEntradaPacienteDoctorID.Required := True;
  qrEntradaPacientePolizaID.Required := True;
 end
 else
  if qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoClinica.Value then
  begin
   lcGeneralItem15.Caption := 'Record';
   qrEntradaPacientePolizaID.DisplayLabel := 'Record';
   qrEntradapacienteFechaEntrada.Required := True;
   lcGeneralItem31.Visible := true;
  end
  else
   if qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoPriv.Value then
   begin
    lcGeneralItem15.Caption := 'Referencia';
    qrEntradaPacientePolizaID.DisplayLabel := 'Referencia';
   end
   else
    if qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoEmp.Value then
    begin
     lcGeneralItem15.Caption := 'Referencia';
     qrEntradaPacientePolizaID.DisplayLabel := 'Referencia';
    end
    else
     if qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoLab.Value then
     begin
       CxDbPaciente.Enabled := True;
       lcGeneralGroup9.Enabled := True;
       lcGeneralItem6.Enabled := True;
       qrEntradaPacientePolizaID.Required := True;
       qrEntradaPacienteNombrePaciente.Required := True;
       lcGeneralItem15.Caption := 'Referencia';
       qrEntradaPacientePolizaID.DisplayLabel := 'Referencia';
     end
     else
      begin
       lcGeneralItem15.Caption := 'Referencia';
       qrEntradaPacientePolizaID.DisplayLabel := 'Referencia';
      end;
end;

procedure TfrmPuntoVentaAdministracionBackup.ImpresionRecibo;
begin
  DM.qrCobro.Close;
  DM.qrCobro.Parameters[0].Value := cobroid;
  DM.qrCobro.Open;

  DM.qrEntradaPacienteDetalle.Close;
  DM.qrEntradaPacienteDetalle.Parameters[0].Value := DM.qrCobroRecid.Value;
  DM.qrEntradaPacienteDetalle.Open;

  DM.qrCobroDetalle.Close;
  DM.qrCobroDetalle.Parameters[0].Value := cobroid;
  DM.qrCobroDetalle.Open;

  if DM.qrCobroCoberturaSeguro.value > 0 then
  begin
   DM.ppImpReciboConSeguro.DeviceType := dtScreen;
   DM.ppImpReciboConSeguro.Print;
  end
  else
  begin
   DM.ppImpReciboSinSeguro.DeviceType := dtScreen;
   DM.ppImpReciboSinSeguro.Print;
  end;
end;

procedure TfrmPuntoVentaAdministracionBackup.ImpresionNC;
begin
  DM.qrCobro.Close;
  DM.qrCobro.Parameters[0].Value := cobroid;
  DM.qrCobro.Open;

  DM.qrEntradaPacienteDetalle.Close;
  DM.qrEntradaPacienteDetalle.Parameters[0].Value := DM.qrCobroRecid.Value;
  DM.qrEntradaPacienteDetalle.Open;

  if DM.qrCobroCoberturaSeguro.value > 0 then
  begin
   DM.ppImpNCConSeguro.DeviceType := dtScreen;
   DM.ppImpNCConSeguro.Print;
  end
  else
  begin
   DM.ppImpNCSinSeguro.DeviceType := dtScreen;
   DM.ppImpNCSinSeguro.Print;
  end;

end;

procedure TfrmPuntoVentaAdministracionBackup.CambiarLaboratorioNoenlasLineas1Click(Sender: TObject);
begin
  inherited;
  if qrEntradaPacienteDetalle.RecordCount > 0 then
     frmMain.LanzaVentana(-7991)
  else
     beep;
end;

procedure TfrmPuntoVentaAdministracionBackup.CancelarCobro;
begin
 DM.DataBase.Execute('Delete from PTCobro Where CobroID = '+#39+cobroid+#39);
 DM.DataBase.Execute('Delete from PTCobroDetalle Where CobroID = '+#39+cobroid+#39);
 cobroid := '';
end;

function TfrmPuntoVentaAdministracionBackup.GetMuestraNo : String;
begin
  result := GetNextSecDoc('MT');
end;

function TfrmPuntoVentaAdministracionBackup.GetReciboNo : String;
begin
  result := GetNextSecDoc('RI');
end;

function TfrmPuntoVentaAdministracionBackup.GetNotaCredito : String;
begin
  result := GetNextSecDoc('NC');
end;

procedure TfrmPuntoVentaAdministracionBackup.ActDetalle;
var
 bM : TBookMark;
 qact : TADOQuery;
begin

 bM := qrEntradaPacienteDetalle.GetBookmark;

 qrEntradaPacienteDetalle.DisableControls;
 qrEntradaPacienteDetalle.First;

 qact := DM.NewQuery;

 while not qrEntradaPacienteDetalle.Eof do
 begin
  qact.Close;
  qact.SQL.Clear;
  qact.SQL.Text := 'Update PTEntradaPacienteDetalle set CoberturaAplicada = :cob,DescuentoLineaAplicado = :desc '+
                   ' where RefRecid = :rec and Secuencia = :sec';
  qact.Parameters[0].Value := CoberturaAplicada;
  qact.Parameters[1].Value := TotalDescuentoLinea;
  qact.Parameters[2].Value := qrEntradaPacienteDetalleRefRecid.Value;
  qact.Parameters[3].Value := qrEntradaPacienteDetalleSecuencia.Value;
  qact.ExecSQL;

  qrEntradaPacienteDetalle.Next;
 end;

 qrEntradaPacienteDetalle.GotoBookmark(bM);
 qrEntradaPacienteDetalle.FreeBookmark(bM);
 qrEntradaPacienteDetalle.EnableControls;
end;

function TfrmPuntoVentaAdministracionBackup.ImporteBrutoExclLineaActual(refrecid : integer ;secuencia : integer) : Double;
var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;
 qfind.Close;
 qfind.SQL.Text := 'Select sum(Precio) from PTEntradaPacienteDetalle Where RefRecid = :rec and Secuencia <> :sec';
 qfind.Parameters[0].Value := refrecid;
 qfind.Parameters[1].Value := secuencia;
 qfind.Open;

 if qfind.Fields[0].AsString <> '' then
    result := qfind.Fields[0].AsFloat
 else
    result := 0;

 FreeAndNil(qfind);
end;

function TfrmPuntoVentaAdministracionBackup.ImporteBrutoExclLineaActualAndCobertura(refrecid : integer ;secuencia : integer) : Double;
var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;
 qfind.Close;
 qfind.SQL.Text := 'Select sum(Precio),sum(CoberturaAplicada) from PTEntradaPacienteDetalle Where RefRecid = :rec and Secuencia <> :sec';
 qfind.Parameters[0].Value := refrecid;
 qfind.Parameters[1].Value := secuencia;
 qfind.Open;

 if qfind.Fields[0].AsString <> '' then
    result := qfind.Fields[0].AsFloat - qfind.Fields[1].AsFloat  
 else
    result := 0;

 FreeAndNil(qfind);
end;

function TfrmPuntoVentaAdministracionBackup.TotalDescuentoLinea : Double;
var
 DescuentoPorc,DescuentoPesosCab,DescuentoPesos : Double;
begin
   DescuentoPorc := 0;
   DescuentoPesosCab := 0;
   DescuentoPesos := 0;

   DescuentoPorc := (qrEntradaPacienteDetallePrecio.Value - CoberturaAplicada - qrEntradaPacienteDetalleDescuento.Value) * (qrEntradaPacienteDetalleDescPct.Value / 100);

   if (qrEntradaPacienteDescuentoValor.Value > 0) then
       DescuentoPesosCab := qrEntradaPacienteDetallePrecio.Value * qrEntradaPacienteDescuentoValor.Value /
                            (ImporteBrutoExclLineaActual(qrEntradaPacienteDetalleRefRecid.Value,qrEntradaPacienteDetalleSecuencia.Value) + (qrEntradaPacienteDetallePrecio.Value));

   if (qrEntradaPacienteDescuentoPorc.Value  > 0) then
       DescuentoPorc := DescuentoPorc + ((qrEntradaPacienteDetalleTotalLinea.Value - DescuentoPesosCab - CoberturaAplicada) * qrEntradaPacienteDescuentoPorc.Value /100);

   DescuentoPesos := DescuentoPesosCab + qrEntradaPacienteDetalleDescuento.Value;

   result := DescuentoPesos + DescuentoPorc;
end;

function TfrmPuntoVentaAdministracionBackup.ImporteLinea : Double;
Var
 Valor,DescPorc : Double;
begin
 DescPorc := 0;
 
 Valor := qrEntradaPacienteDetallePrecio.Value - qrEntradaPacienteDetalleDescuento.Value;

 if (qrEntradaPacienteDetalleDescPct.Value > 0) then
     DescPorc := Valor * qrEntradaPacienteDetalleDescPct.Value / 100;

 result := Valor - DescPorc;
end;

function TfrmPuntoVentaAdministracionBackup.CoberturaAplicada : Double;
var
 coberturaporc,CoberturaPesosCab : Double;

begin
 if qrEntradaPacienteDetalleCoberturaAplica.Value then
 begin
  if (qrEntradaPacienteDetalleCoberturaEspecialPorc.Value > 0) or
     (qrEntradaPacienteDetalleCoberturaEspecial.Value > 0) then
  begin

   if not qrEntradaPacienteDetalleCoberturaExpPorc.Value then
      result := qrEntradaPacienteDetalleCoberturaEspecial.Value
   else
   begin
      coberturaporc := (qrEntradaPacienteDetallePrecio.Value - TotalDescuentoLinea) *
                       (qrEntradaPacienteDetalleCoberturaEspecial.Value / 100);
      result := coberturaporc;
   end;
  end
  else
  begin
   coberturaporc := 0;
   CoberturaPesosCab := 0;

   if qrEntradaPacienteCoberturaConfirmada.value then
   begin
    if (qrEntradaPacienteCoberturaValor.Value > 0) then
        CoberturaPesosCab := qrEntradaPacienteDetallePrecio.Value * qrEntradaPacienteCoberturaValor.Value /
                             (ImporteBrutoExclLineaActual(qrEntradaPacienteDetalleRefRecid.Value,qrEntradaPacienteDetalleSecuencia.Value) + qrEntradaPacienteDetallePrecio.Value)
    else
     if (qrEntradaPacienteCoberturaPorc.Value  > 0) then
        coberturaporc := (qrEntradaPacienteDetalleTotalLinea.Value - CoberturaPesosCab) * qrEntradaPacienteCoberturaPorc.Value /100;
   end
   else
   begin
    if (qrEntradaPacienteCoberturaPorc.Value  > 0) then
        coberturaporc := (qrEntradaPacienteDetalleTotalLinea.Value - CoberturaPesosCab) * qrEntradaPacienteCoberturaPorc.Value /100;
   end;
   result := coberturaporc + CoberturaPesosCab;
  end;
 end
 else
  result := 0;
end;

procedure TfrmPuntoVentaAdministracionBackup.CodigodeBarra1Click(Sender: TObject);
begin
  inherited;
  Showmessage('Pendiente de Toma de Muestra.!!!');
end;

procedure TfrmPuntoVentaAdministracionBackup.ConfirmarCobertura1Click(Sender: TObject);
begin
  inherited;
  frmMain.LanzaVentana(-7993);
end;

procedure TfrmPuntoVentaAdministracionBackup.btcancelarClick(Sender: TObject);
begin
  inherited;
  if qrEntradaPaciente.State = dsinsert then
   begin
    if DM.Mensaje('Existe una entrada en proceso. Desea cancelar la entrada?',mb_yesno) = id_yes then
     begin
      if qrEntradaPacienteEntredaID.Value = '' then
       begin
        DM.DataBase.Execute('Delete from PTEntradaPacienteDetalle Where Refrecid = '+qrEntradaPacienteRecid.AsString);
        DM.DataBase.Execute('Delete from PTGastosVarioTrans Where Refrecid = '+qrEntradaPacienteRecid.AsString);
        if ExisteCobro then
         begin
          CancelarCobro;
          btgrabar.Enabled := True;
          btcobrar.Enabled := True;
          btnotacredito.Enabled := True;
        end;
       end;

      NuevaVenta;
     end;
   end;

  if qrEntradaPacienteEntredaID.Value <> '' then
   begin
    if qrEntradaPaciente.State = dsEdit then qrEntradaPaciente.Cancel;
     Desabilitarbotones(false);
    NuevaVenta;
   end;
end;


procedure TfrmPuntoVentaAdministracionBackup.btclienteClick(Sender: TObject);
begin
  inherited;
  beep;
  Showmessage('Esta Opcion NO Esta Disponible.!!!');  
{
  if qrEntradaPacienteCoberturaConfirmada.Value then
     DM.Info('La cobertura ha sido confirmada el cliente no puede ser cambiado.')
  else
  begin
   frmMain.LanzaVentana(-7996);
   actinterface;
  end;
}  
end;

procedure TfrmPuntoVentaAdministracionBackup.bteliminarClick(Sender: TObject);
begin
  inherited;
  beep;
  Showmessage('Esta Opcion NO Esta Disponible.!!!');
{
  if (qrEntradaPacienteDetallePruebaID.Text <> '') and (qrEntradaPacienteTotalPagado.Value = 0) then
  begin
   qrEntradaPacienteDetalle.Delete;
  end
  else
   beep;
}
end;

procedure TfrmPuntoVentaAdministracionBackup.btentradaClick(Sender: TObject);
var
 continuar : Boolean;
begin
  inherited;
 continuar := True;
 if (qrEntradaPaciente.State in [dsinsert,dsedit]) then
 begin
  if DM.Mensaje('Existe una entrada en proceso. Desea cancelar la entrada?',mb_yesno) = id_yes then
  begin
   if qrEntradaPacienteEntredaID.Value = '' then
   begin
    DM.DataBase.Execute('Delete from PTEntradaPacienteDetalle Where Refrecid = '+qrEntradaPacienteRecid.AsString);
    DM.DataBase.Execute('Delete from PTGastosVarioTrans Where Refrecid = '+qrEntradaPacienteRecid.AsString);

    if ExisteCobro then
    begin
     CancelarCobro;
     btgrabar.Enabled := True;
     btcobrar.Enabled := True;
     btnotacredito.Enabled := True;
    end;

   end;
  end
  else
   continuar := False;
 end;

 if continuar then
  frmMain.LanzaVentana(-7995);
end;

procedure TfrmPuntoVentaAdministracionBackup.btgrabarClick(Sender: TObject);
var
 imprimirFactPaciente : Boolean;
 imprimirRecibo,imprimirNC : Boolean;
begin
inherited;
if ValidateRecord(dsEntradaPaciente.DataSet) and ValidateCliente then
begin
 if DM.Mensaje('Desea grabar?',mb_yesno) = id_yes then
 begin
  qrEntradaPaciente.Edit;
  qrEntradaPacienteHold.Value := False;
  qrEntradaPacienteUserId.Value := DM.CurUser;
  qrEntradaPacienteFecha.Value := DM.SystemDate;
  qrEntradaPacienteHoraEntrada.Value := TimeToStr(Time);

  imprimirFactPaciente := false;
  imprimirRecibo := DM.qrParametroImprimirAlGrabarRecibo.Value;
  imprimirNC := DM.qrParametroImprimirAlGrabarNC.Value;

  if qrEntradaPacienteEntredaID.Value = '' then
  begin
    qrEntradaPacienteEntredaID.Value := GetEntradaID;

    if (QrEntradaPacienteFactExterior.Value = True) then
      imprimirFactPaciente := False
    Else
      imprimirFactPaciente := DM.qrParametroImprimirAlGrabar.Value;
  end;

  if (copy(qrEntradaPacienteEntredaID.value,1,3) = 'COT') Then
    Begin
     If (qrEntradaPacienteTipoDocumento.Value = 0) or
        (qrEntradaPacienteTipoDocumento.Value = 3) or
        (QrEntradaPacienteFactExterior.Value = True) then
       Begin
         qrEntradaPacienteEntredaID.Value := GetEntradaID;

         if (qrEntradaPacienteTipoDocumento.Value = 3) or
            (QrEntradaPacienteFactExterior.Value = True) then
           Begin
             qrEntradaPacienteTipoDocumento.Value := 3;
             qrEntradaPacienteNoAS400.Value := True;
             qrEntradaPacienteNoAxapta.Value := True;
             qrEntradaPacienteNoFactura.Value := True;
             qrEntradaPacienteFactExterior.Value := True;
             qrEntradaPacienteMonedaID.Value := DM.qrParametroMonedaDolares.Value;
             imprimirFactPaciente := False;
           end
         Else
          imprimirFactPaciente := DM.qrParametroImprimirAlGrabar.Value;
       end;
    end;

  //Actualizando los Datos del Cliente (Poliza - Aseguradora).
  Act_Seguro_Cliente;

  //Insertando Los Datos de la Tarjeta de Descuento.
  Insert_Card_Descuento;

  if qrEntradaPacienteDetalle.State in [dsEdit,dsInsert] then
     qrEntradaPacienteDetalle.Post;

  if qrEntradaPaciente.State in [dsEdit,dsInsert] then
    Begin
      qrEntradaPaciente.Edit;
      qrEntradaPacienteHold.Value := False;
      qrEntradaPaciente.Post;
    end;

  if ExisteCobro then
  begin
   if TipoCobro = 'RI' then ActCobro else ActNotaCredito;
  end;

  if imprimirFactPaciente then
    VolantedePruebasTomaMuestra1Click(nil);

  if (imprimirRecibo) and (cobroid <> '') and (TipoCobro = 'RI') then
    ImpresionRecibo;

  if (imprimirNC) and (cobroid <> '') and (TipoCobro = 'NC') then
    ImpresionNC;

  if (Act_2da = True) then
    Begin
      //Generando la Nota de Credito de la 2da. Muestra.
      Act_2da := False;
      valorNC := qrEntradaPacienteTotalPendiente.Value;
      CrearNotaCredito;
      btgrabarClick(nil);
    end;

  NuevaVenta;
 end;
end
else
 if ExisteCobro then CancelarCobro;
end;


procedure TfrmPuntoVentaAdministracionBackup.BtHoldClick(Sender: TObject);
begin
 inherited;
  if ValidateRecord(dsEntradaPaciente.DataSet) and ValidateCliente then
   begin
    if DM.Mensaje('Desea Poner en Hold?',mb_yesno) = id_yes then
     begin
       if qrEntradaPacienteEntredaID.Value = '' then
        begin
          qrEntradaPacienteEntredaID.Value := GetEntradaID;
        end;

       if (copy(qrEntradaPacienteEntredaID.value,1,3) = 'COT') and
          (qrEntradaPacienteTipoDocumento.Value = 0) then
        begin
          qrEntradaPacienteEntredaID.Value := GetEntradaID;
        end;

       qrEntradaPacienteUserId.Value := DM.CurUser;
       qrEntradaPacienteFecha.Value := DM.SystemDate;
       qrEntradaPacienteHoraEntrada.Value := TimeToStr(Time);
       qrEntradaPacienteHold.Value := True;

       if qrEntradaPacienteDetalle.State in [dsEdit,dsInsert] then
          qrEntradaPacienteDetalle.Post;

       if qrEntradaPaciente.State in [dsEdit,dsInsert] then
          qrEntradaPaciente.Post;

       DM.Info('El Documento Esta en Hold');
       NuevaVenta;
     end;
   end
  else
   if ExisteCobro then CancelarCobro;
end;

procedure TfrmPuntoVentaAdministracionBackup.btimpcotClick(Sender: TObject);
begin
  inherited;
  if qrEntradaPacienteEntredaID.Value <> '' then
  begin
   ppImpCotizacion.DeviceType := dtScreen;
   ppImpCotizacion.Print;
  end;
end;

procedure TfrmPuntoVentaAdministracionBackup.btnotacreditoClick(Sender: TObject);
begin
  inherited;
  if (qrEntradaPacienteNeto.Value <> 0) and (qrEntradaPaciente.State <> dsinsert) then
  begin
   CrearNotaCredito;
   frmMain.LanzaVentana(-7992);
  end
  else
   beep;
end;

procedure TfrmPuntoVentaAdministracionBackup.btpacienteClick(Sender: TObject);
begin
  inherited;
  beep;
  Showmessage('Esta Opcion NO Esta Disponible.!!!');
{
  frmMain.LanzaVentana(-7999);
  actinterface;
}
end;

procedure TfrmPuntoVentaAdministracionBackup.btpruebaClick(Sender: TObject);
begin
  inherited;
  beep;
  Showmessage('Esta Opcion NO Esta Disponible.!!!'); 
//  frmMain.LanzaVentana(-7998);
end;

procedure TfrmPuntoVentaAdministracionBackup.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmMain.Exis_Adm := False;

  if (qrEntradaPacienteEntredaId.asstring = '') then
      DM.DataBase.Execute('Delete from PTGastosVarioTrans Where Refrecid = '+qrEntradaPacienteRecid.AsString);
end;

procedure TfrmPuntoVentaAdministracionBackup.FormCreate(Sender: TObject);
begin
  inherited;
  frmMain.Exis_Adm := True;

  dxLayoutControl1.LookAndFeel := dmAppActions.lnfWeb;
  lcGeneral.LookAndFeel := dmAppActions.lnfWeb;
  lgBotones.LookAndFeel := dmAppActions.lnfWeb;//dmAppActions.lnfButtonGroup;

  DM.qrProyecto.Close;
  DM.qrProyecto.Open;
  DM.qrDoctor.Close;
  DM.qrDoctor.Open;
  DM.qrFlebotomistas.Close;
  DM.qrFlebotomistas.Open;
  DM.qrparametro.close;
  DM.qrParametro.Open;
  DM.qrMonedas.Close;
  DM.qrMonedas.Open;
  DM.qrGrupoCliente.Close;
  DM.qrGrupoCliente.Open;
  SetMandatoryItems;
  NuevaVenta;

end;

procedure TfrmPuntoVentaAdministracionBackup.FormDestroy(Sender: TObject);
begin
  inherited;
  frmMain.Exis_Adm := False;
end;

procedure TfrmPuntoVentaAdministracionBackup.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = vk_f2) then btclienteClick(nil);
  if (key = vk_f3) then btpacienteClick(nil);
  if (key = vk_f4) then btpruebaClick(nil);
  if (key = vk_f5) then btEntradaClick(nil);
  if (key = vk_f6) then bteliminarClick(nil);
  if (key = vk_f7) then btcancelarClick(nil);
  if (key = vk_f8) then btgrabarClick(nil);
  if (key = vk_f9) then btcobrarClick(nil);
  if (key = vk_f10) then btnotacreditoClick(nil);
  if (key = vk_f11) then BtFunciones.Click;
//  if(key = vk_f11) then MenuFunciones.Popup(0,0);
  if (key = vk_f12) then BtHoldClick(nil);
end;

procedure TfrmPuntoVentaAdministracionBackup.SetColorTo(iColor: TColor);
var
  i : Integer;
  oColor : TColor;
begin
  //SetComponentsColor(iColor);
  stGrEdit.Color := iColor;

  oColor := DM.ColorConsulta;
  for i := 0 to ComponentCount -1 do begin
    if ( Components[i] is TcxDbMaskEdit ) then begin
      if ( Components[i] as TcxDbMaskEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbMaskEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbMaskEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbComboBox ) then begin
      if ( Components[i] as TcxDbComboBox ).Properties.ReadOnly then
        ( Components[i] as TcxDbComboBox ).Style.Color := oColor
      else
        ( Components[i] as TcxDbComboBox ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbButtonEdit ) then begin
      if ( Components[i] as TcxDbButtonEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbButtonEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbButtonEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDBMRUEdit ) then begin
      if ( Components[i] as TcxDBMRUEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDBMRUEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDBMRUEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbTextEdit ) then begin
      if ( Components[i] as TcxDbTextEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbTextEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbTextEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbLookupComboBox ) then begin
      if ( Components[i] as TcxDbLookupComboBox ).Properties.ReadOnly then
        ( Components[i] as TcxDbLookupComboBox ).Style.Color := oColor
      else
        ( Components[i] as TcxDbLookupComboBox ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDBExtLookupComboBox ) then begin
      if ( Components[i] as TcxDBExtLookupComboBox ).Properties.ReadOnly then
        ( Components[i] as TcxDBExtLookupComboBox ).Style.Color := oColor
      else
        ( Components[i] as TcxDBExtLookupComboBox ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbCheckBox ) then begin
      if ( Components[i] as TcxDbCheckBox ).Properties.ReadOnly then
        ( Components[i] as TcxDbCheckBox ).Style.Color := oColor
      else
        ( Components[i] as TcxDbCheckBox ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbLookupComboBox ) then begin
      if ( Components[i] as TcxDbLookupComboBox ).Properties.ReadOnly then
        ( Components[i] as TcxDbLookupComboBox ).Style.Color := oColor
      else
        ( Components[i] as TcxDbLookupComboBox ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbImageComboBox ) then begin
      if ( Components[i] as TcxDbImageComboBox ).Properties.ReadOnly then
        ( Components[i] as TcxDbImageComboBox ).Style.Color := oColor
      else
        ( Components[i] as TcxDbImageComboBox ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbCalcEdit ) then begin
      if ( Components[i] as TcxDbCalcEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbCalcEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbCalcEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbSpinEdit ) then begin
      if ( Components[i] as TcxDbSpinEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbSpinEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbSpinEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbCurrencyEdit ) then begin
      if ( Components[i] as TcxDbCurrencyEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbCurrencyEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbCurrencyEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbTimeEdit ) then begin
      if ( Components[i] as TcxDbTimeEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbTimeEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbTimeEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbMemo ) then begin
      if ( Components[i] as TcxDbMemo ).Properties.ReadOnly then
        ( Components[i] as TcxDbMemo ).Style.Color := oColor
      else
        ( Components[i] as TcxDbMemo ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbHyperLinkEdit ) then begin
      if ( Components[i] as TcxDbHyperLinkEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbHyperLinkEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbHyperLinkEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbDateEdit ) then begin
      if ( Components[i] as TcxDbDateEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbDateEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbDateEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxMaskEdit ) then begin
      if ( Components[i] as TcxMaskEdit ).Properties.ReadOnly then
        ( Components[i] as TcxMaskEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxMaskEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxSpinEdit ) then begin
      if ( Components[i] as TcxSpinEdit ).Properties.ReadOnly then
        ( Components[i] as TcxSpinEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxSpinEdit ).Style.Color := iColor;
    end;
    //
  end;
end;

procedure TfrmPuntoVentaAdministracionBackup.SetReadOnlyToNoEdit;
var
  i : Integer;
begin
  for i := 0 to ComponentCount - 1 do begin
    if Components[i].Tag = 99 then
      SetComponentReadOnly( Components[i], True );
  end;
end;

procedure TfrmPuntoVentaAdministracionBackup.SetComponentReadOnly(thisComponent: TComponent; bFlag : Boolean);
var
  i : Integer;
  oColor : TColor;
begin
  oColor := DM.ColorConsulta;
    if ( thisComponent is TcxDbMaskEdit ) then begin
      ( thisComponent as TcxDbMaskEdit ).Enabled := (not bFlag); // .Properties.ReadOnly := bFlag;
    end;
    if ( thisComponent is TcxDbTextEdit ) then begin
      ( thisComponent as TcxDbTextEdit ).Enabled := (not bFlag);
       if (( thisComponent as TcxDbTextEdit ).Enabled) then
          ( thisComponent as TcxDbTextEdit ).Style.Font.Style := []
       else
          ( thisComponent as TcxDbTextEdit ).Style.Font.Style := [fsBold]
    end;
    if ( thisComponent is TcxDbLookupComboBox ) then begin
       ( thisComponent as TcxDbLookupComboBox ).Enabled := (not bFlag);
       if (( thisComponent as TcxDbLookupComboBox ).Enabled) then
          ( thisComponent as TcxDbLookupComboBox ).Style.Font.Style := []
       else
          ( thisComponent as TcxDbLookupComboBox ).Style.Font.Style := [fsBold]
    end;
    if ( thisComponent is TcxDBExtLookupComboBox ) then begin
      ( thisComponent as TcxDBExtLookupComboBox ).Enabled := (not bFlag);
       if (( thisComponent as TcxDBExtLookupComboBox ).Enabled) then
          ( thisComponent as TcxDBExtLookupComboBox ).Style.Font.Style := []
       else
          ( thisComponent as TcxDBExtLookupComboBox ).Style.Font.Style := [fsBold]
    end;
    if ( thisComponent is TcxDbCheckBox ) then begin
      ( thisComponent as TcxDbCheckBox ).Enabled := (not bFlag);
    end;
    if ( thisComponent is TcxDbImageComboBox ) then begin
      ( thisComponent as TcxDbImageComboBox ).Enabled := (not bFlag);
       if (( thisComponent as TcxDbImageComboBox ).Enabled) then
          ( thisComponent as TcxDbImageComboBox ).Style.Font.Style := []
       else
          ( thisComponent as TcxDbImageComboBox ).Style.Font.Style := [fsBold]
    end;
    if ( thisComponent is TcxDbCalcEdit ) then begin
      ( thisComponent as TcxDbCalcEdit ).Enabled := (not bFlag);
       if (( thisComponent as TcxDbCalcEdit ).Enabled) then
          ( thisComponent as TcxDbCalcEdit ).Style.Font.Style := []
       else
          ( thisComponent as TcxDbCalcEdit ).Style.Font.Style := [fsBold]
    end;
    if ( thisComponent is TcxDbSpinEdit ) then begin
      ( thisComponent as TcxDbSpinEdit ).Enabled := (not bFlag);
       if (( thisComponent as TcxDbSpinEdit ).Enabled) then
          ( thisComponent as TcxDbSpinEdit ).Style.Font.Style := []
       else
          ( thisComponent as TcxDbSpinEdit ).Style.Font.Style := [fsBold]
    end;
    if ( thisComponent is TcxDbCurrencyEdit ) then begin
      ( thisComponent as TcxDbCurrencyEdit ).Enabled := (not bFlag);
       if (( thisComponent as TcxDbCurrencyEdit ).Enabled) then
          ( thisComponent as TcxDbCurrencyEdit ).Style.Font.Style := []
       else
          ( thisComponent as TcxDbCurrencyEdit ).Style.Font.Style := [fsBold]
    end;
    if ( thisComponent is TcxDbTimeEdit ) then begin
      ( thisComponent as TcxDbTimeEdit ).Enabled := (not bFlag);
       if (( thisComponent as TcxDbTimeEdit ).Enabled) then
          ( thisComponent as TcxDbTimeEdit ).Style.Font.Style := []
       else
          ( thisComponent as TcxDbTimeEdit ).Style.Font.Style := [fsBold]
    end;
    if ( thisComponent is TcxDbMemo ) then begin
      ( thisComponent as TcxDbMemo ).Enabled := (not bFlag);
       if (( thisComponent as TcxDbMemo ).Enabled) then
          ( thisComponent as TcxDbMemo ).Style.Font.Style := []
       else
          ( thisComponent as TcxDbMemo ).Style.Font.Style := [fsBold]
    end;
    if ( thisComponent is TcxDbHyperLinkEdit ) then begin
      ( thisComponent as TcxDbHyperLinkEdit ).Enabled := (not bFlag);
       if (( thisComponent as TcxDbHyperLinkEdit ).Enabled) then
          ( thisComponent as TcxDbHyperLinkEdit ).Style.Font.Style := []
       else
          ( thisComponent as TcxDbHyperLinkEdit ).Style.Font.Style := [fsBold]
    end;
    if ( thisComponent is TcxDbDateEdit ) then begin
      ( thisComponent as TcxDbDateEdit ).Enabled := (not bFlag);
       if (( thisComponent as TcxDbDateEdit ).Enabled) then
          ( thisComponent as TcxDbDateEdit ).Style.Font.Style := []
       else
          ( thisComponent as TcxDbDateEdit ).Style.Font.Style := [fsBold]
    end;
end;

procedure TfrmPuntoVentaAdministracionBackup.UnSetReadOnlyToNoEdit;
var
  i : Integer;
begin
  for i := 0 to ComponentCount - 1 do begin
    if Components[i].Tag = 99 then
      SetComponentReadOnly( Components[i], False );
  end;
end;

procedure TfrmPuntoVentaAdministracionBackup.NotadeCredito1Click(Sender: TObject);
begin
  inherited;
  frmMain.LanzaConsulta(-7991,qrEntradaPacienteRecid.asstring);
end;

procedure TfrmPuntoVentaAdministracionBackup.NuevaVenta;
begin
  cobroid := '';
  DM.qrParametro.Close;
  DM.qrParametro.Open;

  recid := DM.qrParametroSecuencia.Value;

  edcobexpporc.Properties.ReadOnly := True; //qrEntradaPacienteCoberturaConfirmada.Value;
  edcoberturavalor.Properties.ReadOnly := True; //qrEntradaPacienteCoberturaConfirmada.Value;

  Asignar2daMuestra1.Enabled := True;
  ConfirmarCobertura1.Enabled := True;
  EliminarDescuentoAplicado1.Enabled := True;
  CambiarLaboratorioNoenlasLineas1.Enabled := True;
  AsignarDescuentoAutorizadoporCobros1.Enabled := True;

  SetColorTo(dm.ColorConsulta);
  cxPageControlCabecera.ActivePage := TabGeneral;

  actinterface;
end;


procedure TfrmPuntoVentaAdministracionBackup.qrEntradaPacienteAfterPost(DataSet: TDataSet);
var
 qdelete : TADOQuery;
 tipodoc : string;
begin
  inherited;
  case qrEntradaPacienteTipoDocumento.Value of
   0 : TipoDoc := 'FT';
   1 : TipoDoc := 'CT';
   2 : TipoDoc := 'DV';
  end;

  if TipoDoc <> 'CT' then
  begin
   qdelete := DM.NewQuery;
   qdelete.Close;
   qdelete.SQL.Text := 'Delete from PTClienteTransacciones where Clienteid =  '+#39+qrEntradaPacienteClienteID.value+#39+
                       '   and TipoDoc = '#39+TipoDoc+#39 +
                       '   and Documento = '+#39+qrEntradaPacienteEntredaID.value+#39;
   qdelete.ExecSQL;

   CrearTransCliente(qrEntradaPacienteClienteID.value,TipoDoc,qrEntradaPacienteEntredaID.value,TipoDoc,
                     qrEntradaPacienteEntredaID.value,qrEntradaPacienteFecha.value,
                     qrEntradaPacienteNeto.Value,qrEntradaPacienteMonedaID.Value);
  end;

end;

procedure TfrmPuntoVentaAdministracionBackup.qrEntradaPacienteCalcFields(DataSet: TDataSet);
begin
  inherited;
  qrEntradaPacienteTotalPendiente.Value := qrEntradaPacienteNeto.Value - qrEntradaPacienteTotalPagado.Value;
end;

procedure TfrmPuntoVentaAdministracionBackup.qrEntradaPacienteCoberturaExpPorcValidate(
  Sender: TField);
begin
  inherited;
  if (qrEntradaPacienteCoberturaValor.Value >= 100) and
     (qrEntradaPacienteCoberturaExpPorc.Value) then
     raise exception.CreateFmt('El porcentaje no puede ser mayor de 100',[]);

end;

procedure TfrmPuntoVentaAdministracionBackup.qrEntradaPacienteCoberturaPorcValidate(Sender: TField);
begin
  inherited;
  if (qrEntradaPacienteCoberturaPorc.Value > 100) then
     raise exception.CreateFmt('El porcentaje no puede ser mayor de 100',[]);
end;

procedure TfrmPuntoVentaAdministracionBackup.qrEntradaPacienteCoberturaValorValidate(
  Sender: TField);
begin
  inherited;
{  if (qrEntradaPacienteCoberturaValor.Value >= 100) and
     (qrEntradaPacienteCoberturaExpPorc.Value) then
     raise exception.CreateFmt('El porcentaje no puede ser mayor de 100',[]);}

  if (qrEntradaPacienteCoberturaValor.Value > qrEntradaPacienteSubTotal.Value){ and
     (not qrEntradaPacienteCoberturaExpPorc.Value)} then
     raise exception.CreateFmt('El valor de la coberutra no puede ser mayor que el total de la factura.',[]);
    
end;

procedure TfrmPuntoVentaAdministracionBackup.qrEntradaPacienteDetalleAfterDelete(DataSet: TDataSet);
begin
  inherited;
  ActTotales;
end;

procedure TfrmPuntoVentaAdministracionBackup.qrEntradaPacienteDetalleAfterPost(DataSet: TDataSet);
begin
  inherited;
  ActTotales;
  VerificarPagoDiferencia;
end;

procedure TfrmPuntoVentaAdministracionBackup.VerificarPagoDiferencia;
var
 qfind : TADOQuery;
begin
if (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSeg.value) and
     (qrEntradaPacienteNeto.Value > 0) then
  begin
   qfind := DM.find('Select * from PTCliente Where ClienteId = :cli',qrEntradaPacientePacienteId.Value);
   if (qfind.FieldByName('CobrarDiferencia').Value = False) then
   begin
    qrEntradaPacienteDescuentoValor.Value := 0;
    ActTotales;
    qrEntradaPacienteDescuentoValor.Value := qrEntradaPacienteNeto.Value;
    ActTotales;
   end;
   FreeAndNil(qfind);
  end;
end;

procedure TfrmPuntoVentaAdministracionBackup.qrEntradaPacienteDetalleBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
  if qrEntradaPacienteDetalleCoberturaAplica.value then
     curCoberturaAplicada := curCoberturaAplicada - 1;
end;

procedure TfrmPuntoVentaAdministracionBackup.qrEntradaPacienteDetalleBeforeEdit(DataSet: TDataSet);
begin
  inherited;
    comboprecio := True;
end;

procedure TfrmPuntoVentaAdministracionBackup.qrEntradaPacienteDetalleBeforeInsert(DataSet: TDataSet);
begin
  inherited;
    comboprecio := True;
end;

procedure TfrmPuntoVentaAdministracionBackup.qrEntradaPacienteDetalleBeforePost(DataSet: TDataSet);
begin
  inherited;
   qrEntradaPacienteDetalleTotalLinea.Value := ImporteLinea;
end;


procedure TfrmPuntoVentaAdministracionBackup.qrEntradaPacienteDetalleDescuentoChange(
  Sender: TField);
begin
  inherited;
  if qrEntradaPacienteDetalle.State in [dsInsert,dsEdit] then
     qrEntradaPacienteDetalleTotalLinea.Value := ImporteLinea;
end;


procedure TfrmPuntoVentaAdministracionBackup.qrEntradaPacienteDetallePruebaIDChange(Sender: TField);
var
 qfind : TADOQuery;
begin
  inherited;
  if (qrEntradaPacienteDetalle.State = dsInsert) or
     (qrEntradaPacienteDetalle.State = dsEdit) then
  begin
   //Buscando los Datos del Cliente a Facturar y Sus Parametros.
   Buscar_Cliente;

   //Registrando las Pruebas en Dollares del Exterior.
   If (qrEntradaPacienteFactExterior.Value = True) then
     Begin
       FreeAndNil(qfind);
       qrEntradaPacienteDetalleRefRecid.Value := recid;
       qrEntradaPacienteDetalleSecuencia.Value := MaxSecuenciaLinea;
       qrEntradaPacienteDetalleRepMuestra.Value := qrEntradaPacienteRepMuestra.Value;
       qrEntradaPacienteDetalleDescripcion.Value := qfindprueba.FieldByName('Descripcion').AsString;
       qrEntradaPacienteDetalleDescPct.Value := 0;
       qrEntradaPacienteDetalleDescuento.Value := 0;
       qrEntradaPacienteDetalleCoberturaAplica.Value := True;
       qrEntradaPacienteDetallePrecio.Value := 0;
       qrEntradaPacienteDetalleCoberturaEspecial.Value := 0;
       qrEntradaPacienteDetalleCoberturaExpPorc.Value := false;
       qrEntradaPacienteDetalleCoberturaEspecialPorc.Value := 0;
       qrEntradaPacienteDetalleFacturar.Value := False;
       qrEntradaPacienteDetalleRepMuestra.Value := qrEntradaPacienteRepMuestra.Value;
       qrEntradaPacienteDetalleMuestraNo.Value := qrEntradaPacienteMuestraNo.Value;
       Buscar_Cod_Cups(qrEntradaPacienteClienteID.Value, qrEntradaPacienteDetallePruebaID.Value);

       if (qfindRepetir.RecordCount > 0) then
         frmMain.LanzaVentana(-8001)
       Else
         frmMain.LanzaVentana(-8002);
     end
   Else
     Begin
       If (qfindprueba.FieldByName('Tipo').Value = 'C') then
         Begin
           If (qfindprueba.FieldByName('FacturarCabecera').Value = True) then
             Begin
               //Registrando la Cabecera de los Combos (CON PRECIO).
               qrEntradaPacienteDetalleRefRecid.Value := recid;
               qrEntradaPacienteDetallePrecio.Value := DM.PrecioPrueba(qrEntradaPacienteDetallePruebaID.Value,
                                                                       ClienteFactura,
                                                                       qrEntradaPacienteMonedaID.Value) * factor;
               qrEntradaPacienteDetalleDescripcion.Value := qfindprueba.FieldByName('Descripcion').AsString;
               qrEntradaPacienteDetalleDescuento.Value := 0;
               qrEntradaPacienteDetalleDescPct.Value := 0;
               qrEntradaPacienteDetalleSecuencia.Value := MaxSecuenciaLinea;
               qrEntradaPacienteDetalleCoberturaAplica.Value := DM.CoberturaAplica(qrEntradaPacienteClienteID.Value,
                                                                                   qrEntradaPacientePacienteID.Value,
                                                                                   curCoberturaAplicada,
                                                                                   qrEntradaPacienteRecid.value);
               if qrEntradaPacienteDetalleCoberturaAplica.Value then
                  curCoberturaAplicada := curCoberturaAplicada + 1;

               qrEntradaPacienteDetalleCoberturaEspecial.Value := DM.CoberturaPrueba(qrEntradaPacienteDetallePruebaID.Value,
                                                                                     qrEntradaPacienteClienteID.Value,
                                                                                     qrEntradaPacienteMonedaID.Value) * factor;
               if qrEntradaPacienteDetalleCoberturaEspecial.Value <> 0 then
                 qrEntradaPacienteDetalleCoberturaExpPorc.Value := DM.CoberturaPruebaPorc(qrEntradaPacienteDetallePruebaID.Value,
                                                                                          qrEntradaPacienteClienteID.Value,
                                                                                          qrEntradaPacienteMonedaID.Value)
               else
                 qrEntradaPacienteDetalleCoberturaExpPorc.Value := false;
               qrEntradaPacienteDetalleCoberturaEspecialPorc.Value := 0;
               qrEntradaPacienteDetalleFacturar.Value := False;
               qrEntradaPacienteDetalleRepMuestra.Value := qrEntradaPacienteRepMuestra.Value;
               qrEntradaPacienteDetalleMuestraNo.Value := qrEntradaPacienteMuestraNo.Value;
               Buscar_Cod_Cups(qrEntradaPacienteClienteID.Value, qrEntradaPacienteDetallePruebaID.Value);

               Buscar_Combo;
               Insertar_Combo_Blanco;
             End
           Else
             Begin
               //Registrando la Cabecera de los Combos (SIN PRECIO).
               qrEntradaPacienteDetalleRefRecid.Value := recid;
               qrEntradaPacienteDetalleSecuencia.Value := MaxSecuenciaLinea;
               qrEntradaPacienteDetalleRepMuestra.Value := qrEntradaPacienteRepMuestra.Value;
               qrEntradaPacienteDetalleDescripcion.Value := qfindprueba.FieldByName('Descripcion').AsString;
               qrEntradaPacienteDetalleDescPct.Value := 0;
               qrEntradaPacienteDetalleDescuento.Value := 0;
               qrEntradaPacienteDetalleCoberturaAplica.Value := True;
               qrEntradaPacienteDetallePrecio.Value := 0;
               qrEntradaPacienteDetalleCoberturaEspecial.Value := 0;
               qrEntradaPacienteDetalleCoberturaExpPorc.Value := false;
               qrEntradaPacienteDetalleCoberturaEspecialPorc.Value := 0;
               qrEntradaPacienteDetalleFacturar.Value := False;
               qrEntradaPacienteDetalleRepMuestra.Value := qrEntradaPacienteRepMuestra.Value;
               qrEntradaPacienteDetalleMuestraNo.Value := qrEntradaPacienteMuestraNo.Value;
               Buscar_Cod_Cups(qrEntradaPacienteClienteID.Value, qrEntradaPacienteDetallePruebaID.Value);

               Buscar_Combo;
               Insertar_Combo_Precio;
             End;
         End
       Else
         Begin
           If (comboprecio = True) Then
             Begin
               //Registrando las Pruebas NORMALES y/o Detalle de los Combos (CON PRECIO).
               qrEntradaPacienteDetalleRefRecid.Value := recid;
               qrEntradaPacienteDetallePrecio.Value := DM.PrecioPrueba(qrEntradaPacienteDetallePruebaID.Value,
                                                                       ClienteFactura,
                                                                       qrEntradaPacienteMonedaID.Value) * factor;
               qrEntradaPacienteDetalleDescripcion.Value := qfindprueba.FieldByName('Descripcion').AsString;
               qrEntradaPacienteDetalleDescuento.Value := 0;
               qrEntradaPacienteDetalleDescPct.Value := 0;
               qrEntradaPacienteDetalleSecuencia.Value := MaxSecuenciaLinea;
               qrEntradaPacienteDetalleCoberturaAplica.Value := DM.CoberturaAplica(qrEntradaPacienteClienteID.Value,
                                                                                   qrEntradaPacientePacienteID.Value,
                                                                                   curCoberturaAplicada,
                                                                                   qrEntradaPacienteRecid.value);
               if qrEntradaPacienteDetalleCoberturaAplica.Value then
                  curCoberturaAplicada := curCoberturaAplicada + 1;

               qrEntradaPacienteDetalleCoberturaEspecial.Value := DM.CoberturaPrueba(qrEntradaPacienteDetallePruebaID.Value,
                                                                                     qrEntradaPacienteClienteID.Value,
                                                                                     qrEntradaPacienteMonedaID.Value) * factor;
               if qrEntradaPacienteDetalleCoberturaEspecial.Value <> 0 then
                 qrEntradaPacienteDetalleCoberturaExpPorc.Value := DM.CoberturaPruebaPorc(qrEntradaPacienteDetallePruebaID.Value,
                                                                                          qrEntradaPacienteClienteID.Value,
                                                                                          qrEntradaPacienteMonedaID.Value)
               else
                 qrEntradaPacienteDetalleCoberturaExpPorc.Value := false;

               qrEntradaPacienteDetalleCoberturaEspecialPorc.Value := 0;
               qrEntradaPacienteDetalleFacturar.Value := False;
               qrEntradaPacienteDetalleRepMuestra.Value := qrEntradaPacienteRepMuestra.Value;
               qrEntradaPacienteDetalleMuestraNo.Value := qrEntradaPacienteMuestraNo.Value;
               Buscar_Cod_Cups(qrEntradaPacienteClienteID.Value, qrEntradaPacienteDetallePruebaID.Value);
             end
           Else
             Begin
               //Registrando el Detalle de los Combos (SIN PRECIO).
               qrEntradaPacienteDetalleRefRecid.Value := recid;
               qrEntradaPacienteDetalleSecuencia.Value := MaxSecuenciaLinea;
               qrEntradaPacienteDetalleRepMuestra.Value := qrEntradaPacienteRepMuestra.Value;
               qrEntradaPacienteDetalleDescripcion.Value := qfindprueba.FieldByName('Descripcion').AsString;
               qrEntradaPacienteDetalleDescPct.Value := 0;
               qrEntradaPacienteDetalleDescuento.Value := 0;
               qrEntradaPacienteDetalleCoberturaAplica.Value := True;
               qrEntradaPacienteDetallePrecio.Value := 0;
               qrEntradaPacienteDetalleCoberturaEspecial.Value := 0;
               qrEntradaPacienteDetalleCoberturaExpPorc.Value := false;
               qrEntradaPacienteDetalleCoberturaEspecialPorc.Value := 0;
               qrEntradaPacienteDetalleFacturar.Value := False;
               qrEntradaPacienteDetalleRepMuestra.Value := qrEntradaPacienteRepMuestra.Value;
               qrEntradaPacienteDetalleMuestraNo.Value := qrEntradaPacienteMuestraNo.Value;
               Buscar_Cod_Cups(qrEntradaPacienteClienteID.Value, qrEntradaPacienteDetallePruebaID.Value);
             End;
         end;
     End;
  end;
end;


procedure TfrmPuntoVentaAdministracionBackup.qrEntradaPacienteDetallePruebaIDValidate(Sender: TField);
begin
  inherited;
    Begin
      qfindprueba := DM.find('Select * from PTPrueba where PruebaID = :pru',qrEntradaPacienteDetallePruebaID.value);
      if qfindprueba.RecordCount = 0 then
         raise exception.CreateFmt('El código de prueba digitado no existe.',[]);

       If (qrEntradaPacienteFactExterior.Value = True) then
         Begin
           //Registrando las Pruebas en Dollares del Exterior.
          qfindRepetir := DM.NewQuery;
          qfindRepetir.Close;
          qfindRepetir.SQL.Text := 'SELECT * FROM PTPrueba '+
                                   'WHERE Exterior = 1 '+
                                   'AND PruebaID = :pru ';
          qfindRepetir.Parameters.ParamByName('pru').Value := qrEntradaPacienteDetallePruebaID.Value;
          qfindRepetir.Open;
         end
       Else
         Begin
          //Validando la 2da. Muestra.
//          if (qrEntradaPacienteRepMuestra.Value = True And Act_2da = True) Then
          if (Act_2da = True) Then
            Begin
              qfindRepetir := DM.NewQuery;
              qfindRepetir.Close;
              qfindRepetir.SQL.Text := 'SELECT * FROM PTEntradaPacienteDetalle '+
                                       'WHERE RefRecId = :rec '+
                                       'AND MuestraNo = :num '+
                                       'AND PruebaId = :pru ';
              qfindRepetir.Parameters.ParamByName('rec').Value := Record_Ant;
              qfindRepetir.Parameters.ParamByName('num').Value := Muestra_Ant;
              qfindRepetir.Parameters.ParamByName('pru').Value := qrEntradaPacienteDetallePruebaID.Value;
              qfindRepetir.Open;

              if (qfindRepetir.RecordCount > 0) then
                Begin
                  qrEntradaPacienteDetalleRepMuestra.Value := True;
                  qrEntradaPacienteDetalleMuestraAnt.Value := Muestra_Ant;
                  DM.Info('La Prueba No. ('+ qrEntradaPacienteDetallePruebaID.Value +') Es Una 2da. Muestra.');
                End
              Else
                Begin
                  qrEntradaPacienteDetalle.Delete;
                  Raise exception.CreateFmt('Esta Prueba NO Existe en la Factura Anterior.', []);
                End;
            End;
         End;
    End;
End;


procedure TfrmPuntoVentaAdministracionBackup.qrEntradaPacienteDoctorIDChange(Sender: TField);
begin
  inherited;
//  Buscar_Doctor;
end;

procedure TfrmPuntoVentaAdministracionBackup.EdDoctorPropertiesChange(Sender: TObject);
begin
  inherited;
  Buscar_Doctor;
end;

procedure TfrmPuntoVentaAdministracionBackup.Buscar_Doctor;
var
 qfind : TADOQuery;
begin
  inherited;
  if qrEntradaPaciente.State in [dsInsert,dsEdit] then
  begin
//   qfind := DM.Find('Select * from PTDoctor Where DoctorId = :doc', qrEntradaPacienteDoctorID.Value);
   qfind := DM.Find('Select * from PTDoctor Where DoctorId = :doc', EdDoctor.Text);

   qrEntradaPacienteDoctorID.Value := qfind.FieldByName('DoctorId').AsString;
   qrEntradaPacienteNombreDoctor.Value := qfind.FieldByName('Nombre').AsString;
   qrEntradaPacienteResultadoDoctor.Value := qfind.FieldByName('ResultadoDoctor').AsInteger;
   qrEntradaPacientePublicarInternetDoctor.Value := qfind.FieldByName('PublicarInternet').AsBoolean;

   FreeAndNil(qfind);
  end;
end;

procedure TfrmPuntoVentaAdministracionBackup.qrEntradaPacienteNombrePacienteValidate(
  Sender: TField);
begin
  inherited;
  if (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoLab.Value) then
    begin
      If (qrEntradaPacientePolizaID.Value = '') Then
        Begin
          qrEntradaPacientePolizaID.Value := qrEntradaPacienteNombrePaciente.Value;
        end;
    end;
end;

procedure TfrmPuntoVentaAdministracionBackup.qrEntradaPacienteOrigenChange(Sender: TField);
begin
  inherited;
  actinterface;
end;

procedure TfrmPuntoVentaAdministracionBackup.qrEntradaPacienteTipoDocumentoChange(Sender: TField);
begin
  inherited;
 if qrEntradaPacienteTipoDocumento.Value = 2 then
    factor := -1
 else
    factor := 1;

 if qrEntradaPaciente.State in [dsedit,dsinsert] then RecalcularLineas;
end;

procedure TfrmPuntoVentaAdministracionBackup.qrEntradaPacienteTipoEntradaChange(Sender: TField);
begin
  inherited;

  If (qrEntradaPacienteTipoEntrada.Value = 'D') then
    qrEntradaPacienteFormadePago.Value := 'Contra Entrega'
  Else
    qrEntradaPacienteFormadePago.Value := 'Contado';
end;

function TfrmPuntoVentaAdministracionBackup.MaxSecuenciaLinea : Integer;
Var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;

 qfind.Close;
 qfind.SQL.Text := 'Select max(Secuencia) from PTEntradaPacienteDetalle Where refRecid = '+ inttostr(recid);
 qfind.Open;

 result := qfind.Fields[0].AsInteger + 1;

 FreeAndNil(qfind);
end;




procedure TfrmPuntoVentaAdministracionBackup.MenuItem1Click(Sender: TObject);
begin
  inherited;
  frmMain.LanzaVentana(-7988);
end;

procedure TfrmPuntoVentaAdministracionBackup.ActTotales;
Var
 qfind : TADOQuery;
begin
 ActDetalle;
 qfind := DM.NewQuery;

 qfind.Close;
 qfind.SQL.Text := 'Select SUM(Precio), SUM(DescuentoLineaAplicado), SUM(CoberturaAplicada) From PTEntradaPacienteDetalle Where refRecid = '+ inttostr(recid);
 qfind.Open;
{
 qrEntradaPacienteBruto.Value := qfind.Fields[0].AsFloat;
 qrEntradaPacienteDescuento.Value := qfind.Fields[1].AsFloat;
 qrEntradaPacienteSubTotal.Value := qrEntradaPacienteBruto.Value - qrEntradaPacienteDescuento.Value;
 qrEntradaPacienteCoberturaSeguro.Value := qfind.Fields[2].AsFloat;
 qrEntradaPacienteGastosVarios.Value := DM.TotalGastosVarios(qrEntradaPacienteRecid.Value);
 qrEntradaPacienteNeto.Value := qrEntradaPacienteSubTotal.Value - qrEntradaPacienteCoberturaSeguro.Value + qrEntradaPacienteGastosVarios.Value;
}
 //Redondeo de los Valores del Punto de Venta.
 qrEntradaPacienteBruto.Value := Int(qfind.Fields[0].AsFloat);
 qrEntradaPacienteDescuento.Value := Int(qfind.Fields[1].AsFloat);
 qrEntradaPacienteSubTotal.Value := Int(qrEntradaPacienteBruto.Value - qrEntradaPacienteDescuento.Value);
 qrEntradaPacienteCoberturaSeguro.Value := Int(qfind.Fields[2].AsFloat);
 qrEntradaPacienteGastosVarios.Value := Int(DM.TotalGastosVarios(qrEntradaPacienteRecid.Value));
 qrEntradaPacienteNeto.Value := Int(qrEntradaPacienteSubTotal.Value -
                                    qrEntradaPacienteCoberturaSeguro.Value +
                                    qrEntradaPacienteGastosVarios.Value);
end;


procedure TfrmPuntoVentaAdministracionBackup.AsignarDescuentoAutorizadoporCobros1Click(
  Sender: TObject);
begin
  inherited;
  frmMain.LanzaVentana(-7986);
end;

procedure TfrmPuntoVentaAdministracionBackup.RecalcularLineas;
begin
 qrEntradaPacienteDetalle.DisableControls;
 qrEntradaPacienteDetalle.First;

 while not qrEntradaPacienteDetalle.Eof do
 begin
  qrEntradaPacienteDetalle.Edit;
  if (factor > 0) and (qrEntradaPacienteDetallePrecio.Value < 0 ) then
     qrEntradaPacienteDetallePrecio.Value := qrEntradaPacienteDetallePrecio.Value * -1
   else
    if (factor < 0) and (qrEntradaPacienteDetallePrecio.Value > 0 ) then
       qrEntradaPacienteDetallePrecio.Value := qrEntradaPacienteDetallePrecio.Value * factor;

  qrEntradaPacienteDetalle.Post;
  qrEntradaPacienteDetalle.Next;
 end;

 qrEntradaPacienteDetalle.First;
 qrEntradaPacienteDetalle.EnableControls;
end;


procedure TfrmPuntoVentaAdministracionBackup.RecibodeCobro1Click(Sender: TObject);
begin
  inherited;
  frmMain.LanzaConsulta(-7994,qrEntradaPacienteRecid.asstring);
end;


procedure TfrmPuntoVentaAdministracionBackup.EliminarDescuentoAplicado1Click(Sender: TObject);
begin
  inherited;
  qrEntradaPacienteDescuentoPorc.Value := 0;
  qrEntradaPacienteDescuentoValor.Value := 0;
  qrEntradaPacienteDescAutorizadoPor.value := '';
  ActTotales;
end;

function TfrmPuntoVentaAdministracionBackup.ExisteCobro : Boolean;
Var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;
 qfind.Close;
 qfind.SQL.Text := 'Select * from PTCobro Where CobroId = '+#39+cobroID+#39;
 qfind.Open;

 if qfind.RecordCount > 0 then result := True else result := false;

 FreeAndNil(qfind);
end;

function TfrmPuntoVentaAdministracionBackup.TipoCobro : String;
Var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;
 qfind.Close;
 qfind.SQL.Text := 'Select * from PTCobro Where CobroId = '+#39+cobroID+#39;
 qfind.Open;

 result := qfind.fieldbyname('TipoDoc').asstring;

 FreeAndNil(qfind);

end;

procedure TfrmPuntoVentaAdministracionBackup.DesabilitarBotones(_SiNo : Boolean);
begin
 btentrada.Enabled := not _SiNo;
 btpaciente.Enabled := not _SiNo;
 btprueba.Enabled := not _SiNo;
 btcancelar.Enabled := not _SiNo;
 bteliminar.Enabled := not _SiNo;
 btcliente.Enabled := not _SiNo;
 btgrabar.Enabled := not _SiNo;
 btcobrar.Enabled := not _SiNo;
 btnotacredito.Enabled := not _SiNo;
 btimprimir.Enabled := not _SiNo;
end;

procedure TfrmPuntoVentaAdministracionBackup.edcoberturavalorExit(Sender: TObject);
begin
  inherited;
  if qrEntradaPaciente.State in [dsedit,dsinsert] then
  begin
   qrEntradaPacienteDescuentoValor.Value := 0;
   ActTotales;
   VerificarPagoDiferencia;
  end;
end;


function TfrmPuntoVentaAdministracionBackup.GetNextSecDoc(tipodoc : string) : String;
var
 qsecdoc : TADOQuery;
begin
 qsecdoc := DM.NewQuery;

 qsecdoc.close;
 qsecdoc.SQL.Text := 'Select * from PTSecuenciaDoc Where TipoDoc = '+#39+tipodoc+#39;
 qsecdoc.Open;

 if (qsecdoc.FieldByName('UsarIdentificador').AsBoolean) then
   result := qsecdoc.FieldByName('TipoDoc').asstring + '-'+ formatfloat('00',strtofloat(DM.cursucursal))+'-'+formatfloat('000000',qsecdoc.FieldByName('Secuencia').Asfloat)
 else
   result := formatfloat('00',strtofloat(DM.cursucursal))+'-'+formatfloat('000000',qsecdoc.FieldByName('Secuencia').Asfloat);

 qsecdoc.close;
 qsecdoc.SQL.Clear;
 qsecdoc.SQL.Text := 'Update PTSecuenciaDoc set Secuencia = Secuencia + 1 Where TipoDoc = '+#39+tipodoc+#39;
 qsecdoc.ExecSQL;
end;


procedure TfrmPuntoVentaAdministracionBackup.GastosVarios1Click(Sender: TObject);
begin
  inherited;
  frmMain.lanzaConsulta(-7984,qrEntradaPacienteRecid.asstring);
end;

function TfrmPuntoVentaAdministracionBackup.GetEntradaID : String;
begin
 DM.qrParametro.Close;
 DM.qrParametro.Open;

 case qrEntradaPacienteTipoDocumento.Value of
   0 : begin
        result := GetNextSecDoc('FAC');
       end;

   1 : begin
        result := GetNextSecDoc('COT');
       end;

   2 : begin
        result := GetNextSecDoc('DEV');
      end;

   3 : begin
        result := GetNextSecDoc('EXT');
      end;
 end;
end;


procedure TfrmPuntoVentaAdministracionBackup.btcobrarClick(Sender: TObject);
begin
  inherited;
  beep;
  Showmessage('Esta Opcion NO Esta Disponible.!!!');
{
  if qrEntradaPacienteNeto.Value <> 0 then
   begin
     CrearCobro;
     RefrescarCobro;
//     frmMain.LanzaVentana(-7997);

    If (qrEntradaPacienteTipoDocumento.Value <> 3) Or
       (QrEntradaPacienteFactExterior.Value = False) Then
      Begin
       frmMain.LanzaVentana(-8010);
      end;

    If (qrEntradaPacienteTipoDocumento.Value = 3) Or
       (QrEntradaPacienteFactExterior.Value = True) Then
      Begin
       frmMain.LanzaVentana(-8011);
      end;
   end
  else
   beep;
}
end;


//LLenando la Tabla para los Cobros.
procedure TfrmPuntoVentaAdministracionBackup.CrearCobro;
Var
 qinsert    : TADOQuery;
 qformapago : TADOQuery;
 monto      : Double;
 busqueda   : String;
begin
 pendiente := 0;

 DM.qrParametro.Close;
 DM.qrParametro.Open;

 cobroid := DM.qrParametroSecuencia.AsString;

 DM.qrParametro.Edit;
 DM.qrParametroSecuencia.Value := DM.qrParametroSecuencia.Value + 1;
 DM.qrParametro.Post;

 qinsert := DM.NewQuery;
 qinsert.Close;
 qinsert.SQL.Text := 'INSERT INTO PTCobro(CobroID,SucursalID,Fecha,Hora,PacienteID,UsuarioID,refRecid,'+
                     ' TotalFactura,TotalPagado,PendienteFactura,ClienteID,Aplicado,MonedaId,TipoDoc) '+
                     ' VALUES (:0,:1,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13)';
 qinsert.Parameters[0].Value := cobroid;
 qinsert.Parameters[1].Value := DM.CurSucursal;
 qinsert.Parameters[2].Value := DM.SystemDate;
 qinsert.Parameters[3].Value := TimeToStr(Time);
 qinsert.Parameters[4].Value := qrEntradaPacientePacienteID.Value;
 qinsert.Parameters[5].Value := qrEntradaPacienteUserID.Value;
 qinsert.Parameters[6].Value := qrEntradaPacienteRecid.Value;
 qinsert.Parameters[7].Value := qrEntradaPacienteNeto.Value;
 qinsert.Parameters[8].Value := qrEntradaPacienteTotalPagado.Value;
 qinsert.Parameters[9].Value := qrEntradaPacienteTotalPendiente.Value;
 qinsert.Parameters[10].Value := qrEntradaPacienteClienteID.Value;
 qinsert.Parameters[11].Value := 0;
 qinsert.Parameters[12].Value := qrEntradaPacienteMonedaID.Value;
 qinsert.Parameters[13].Value := 'RI';
 qinsert.ExecSQL;

 //Cargando las Formas de Pago en Peso.
 If (qrEntradaPacienteTipoDocumento.Value <> 3) Or
    (QrEntradaPacienteFactExterior.Value = False) Then
   Begin
     qformapago := DM.NewQuery;
     qformapago.close;
     qformapago.SQL.Text := 'SELECT * FROM PTFormaDePago '+
                            'WHERE orden <= 4 ORDER BY orden ';
     qformapago.Open;
   end;

 //Cargando las Formas de Pago en Dolares.
 If (qrEntradaPacienteTipoDocumento.Value = 3) Or
    (QrEntradaPacienteFactExterior.Value = True) Then
   Begin
     qformapago := DM.NewQuery;
     qformapago.close;
     qformapago.SQL.Text := 'SELECT * FROM PTFormaDePago '+
                            'WHERE orden >= 5 ORDER BY orden ';
     qformapago.Open;
   end;

 qinsert.Close;
 qinsert.SQL.Clear;
 qinsert.SQL.Text := 'INSERT INTO PTCobroDetalle(CobroID,FormaDePagoID,Monto,Orden,RefRecid,MonedaID,MontoMST) '+
                     ' VALUES (:0,:1,:2,:3,:4,:5,:6)';

 monto := qrEntradaPacienteTotalPendiente.Value;
 pendiente := qrEntradaPacienteTotalPendiente.Value;

 while not qformapago.Eof do
 begin
  monto := 0;  //Para Obligar a Registrar el Monto Correspondiente.
  qinsert.Parameters[0].Value := cobroid;
  qinsert.Parameters[1].Value := qformapago.FieldByName('FormaDePagoId').AsString;
  qinsert.Parameters[2].Value := monto;
  qinsert.Parameters[3].Value := qformapago.FieldByName('Orden').AsString;
  qinsert.Parameters[4].Value := qrEntradaPacienteRecid.Value;
//  qinsert.Parameters[5].Value := qrEntradaPacienteMonedaID.Value;
  qinsert.Parameters[5].Value := qformapago.FieldByName('Moneda').AsString;
  qinsert.Parameters[6].Value := DM.ValorMoneda(monto,qrEntradaPacienteMonedaID.Value,DM.qrParametroMonedaID.Value,DM.SystemDate);
  qinsert.ExecSQL;

  qformapago.Next;
 end;

 FreeAndNil(qinsert);
 FreeAndNil(qformapago);
end;


//Llenando la Tabla Temporal Para La Pantalla de Cobro.
procedure TfrmPuntoVentaAdministracionBackup.RefrescarCobro;
Var
 qfind : TADOQuery;
begin
  //Limpiar Detalle de Pago
  mdPago.Close;
  mdPago.Open;
  mdPago.First;
  while not mdPago.Eof do
  begin
   mdPago.Delete;
   mdPago.Next;
  end;

 //Cargando las Formas de Pago en Peso.
 If (qrEntradaPacienteTipoDocumento.Value <> 3) Or
    (QrEntradaPacienteFactExterior.Value = False) Then
   Begin
     qfind := DM.NewQuery;
     qfind.Close;
     qfind.SQL.Text := 'SELECT * FROM PTCobroDetalle d, PTFormaDePago f '+
                       ' WHERE d.cobroid = '+ #39 + cobroID + #39 +
                       ' AND d.FormaDePagoId = f.FormaDePagoID '+
                       ' AND f.orden <= 4 '+
                       ' ORDER BY d.orden';
     qfind.Open;
   end;

 //Cargando las Formas de Pago en Dolares.
 If (qrEntradaPacienteTipoDocumento.Value = 3) Or
    (QrEntradaPacienteFactExterior.Value = True) Then
   Begin
     qfind := DM.NewQuery;
     qfind.Close;
     qfind.SQL.Text := 'SELECT * FROM PTCobroDetalle d, PTFormaDePago f '+
                       ' WHERE d.cobroid = '+ #39 + cobroID + #39 +
                       ' AND d.FormaDePagoId = f.FormaDePagoID '+
                       ' AND f.orden >= 5 '+
                       ' ORDER BY d.orden';
     qfind.Open;
   end;

  while not qfind.Eof do
  begin
   mdPago.Insert;
   mdPagoFormaPagoID.Value := qfind.FieldByName('FormaDePagoId').AsString;
   mdPagoFormaDePago.Value := qfind.FieldByName('Descripcion').AsString;
   mdPagoPagado.Value := qfind.FieldByName('Monto').AsFloat;
   mdPagoOrden.Value := qfind.FieldByName('Orden').AsInteger;
   mdPagorefrecid.Value := qfind.FieldByName('recid').AsInteger;
   mdPagoMoneda.Value := qfind.FieldByName('Moneda').AsString;
   mdPago.Post;

   qfind.Next;
  end;

  mdPago.First;

  FreeAndNil(qfind);
end;


procedure TfrmPuntoVentaAdministracionBackup.ActCobro;
Var
 qupdate    : TADOquery;
 qfind      : TADOQuery;
 qfindcobro : TADOquery;
begin
 DM.qrParametro.close;
 DM.qrParametro.open;

 qupdate := DM.NewQuery;
 qupdate.Close;
 qupdate.SQL.Text := 'Update PTCobroDetalle Set Monto = :mont, MontoMST = :mon2 where Recid = :rec';

 mdPago.First;

 while not mdPago.Eof do
 begin
  qupdate.Parameters[0].Value := mdPagoPagado.Value;
  qupdate.Parameters[1].Value := DM.ValorMoneda(mdPagoPagado.Value,
                                                qrEntradaPacienteMonedaID.Value,
                                                DM.qrParametroMonedaID.Value,
                                                DM.SystemDate);
  qupdate.Parameters[2].Value := mdPagorefrecid.Value;
  qupdate.ExecSQL;

  mdPago.Next;
 end;

 qupdate.Close;
 qupdate.SQL.Clear;
 qupdate.SQL.Text := 'Delete from PTCobroDetalle where CobroID = :rec and Monto = 0';
 qupdate.Parameters[0].Value := cobroid;
 qupdate.ExecSQL;

 qfind := DM.NewQuery;
 qfind.Close;
 qfind.SQL.Text := 'Select sum(Monto) from PTCobroDetalle Where CobroId = '+#39+cobroid+#39;
 qfind.Open;

 qupdate.Close;
 qupdate.SQL.Clear;
 qupdate.SQL.Text := 'Update PTCobro Set TotalCobrado = :tot, PendienteCobro = :pcob,'+
                     ' ReciboNo = :rec, Aplicado = :apl where CobroID = :rec';
 qupdate.Parameters[0].Value := qfind.Fields[0].AsFloat;
 qupdate.Parameters[1].Value := qrEntradaPacienteTotalPendiente.Value - qfind.Fields[0].AsFloat;
 qupdate.Parameters[2].Value := GetReciboNo;
 qupdate.Parameters[3].Value := 1;
 qupdate.Parameters[4].Value := cobroid;
 qupdate.ExecSQL;

 qfindcobro := DM.Find('Select * from PTCobro Where CobroID = :cob',cobroid);

 CrearTransCliente(qrEntradaPAcienteClienteId.value,'RI',qfindcobro.FieldByName('ReciboNo').value,'FT',
                   qrEntradaPAcienteEntredaId.value,qfindcobro.FieldByName('Fecha').value,qfind.Fields[0].AsFloat * -1,
                   qrEntradaPacienteMonedaId.Value);

 FreeAndNil(qfindcobro);

 qupdate.Close;
 qupdate.SQL.Clear;
 qupdate.SQL.Text := 'Insert into PTCobroAplicado(CobroID,EntradaId,MontoAplicado) values(:0,:1,:2)';
 qupdate.Parameters[0].Value := cobroid;
 qupdate.Parameters[1].Value := qrEntradaPAcienteEntredaId.value;
 qupdate.Parameters[2].Value := qfind.Fields[0].AsFloat;
 qupdate.ExecSQL;

 qrEntradaPaciente.Edit;
 qrEntradaPacienteTotalPagado.Value := qrEntradaPacienteTotalPagado.Value + qfind.Fields[0].AsFloat;
 qrEntradaPaciente.Post;

 FreeAndNil(qfind);
 FreeAndNil(qupdate);
end;


Function TfrmPuntoVentaAdministracionBackup.buscar_valores;
Var
  valor : Boolean;
begin
  valor := True;

  efectivo := 0;
  sumatotal := 0;
  devuelta := 0;

  mdPago.First;
  While Not mdPago.Eof do
   Begin
     If (mdPagoFormaPagoID.Value = 'CASH') Or
        (mdPagoFormaPagoID.Value = 'EFECTIVO') Then
       efectivo := efectivo + mdPagoPagado.Value
     Else
       sumatotal := sumatotal + mdPagoPagado.Value;

     mdPago.Next;
   End;

  devuelta := (sumatotal + efectivo) - pendiente;

  If (sumatotal > pendiente) Then
    Begin
     valor := False;    
     DM.Info('El Total Cobrado Es Mayor Que El Total Pendiente. Por Favor Verifique.');
//     Raise exception.CreateFmt('El Total Cobrado Es Mayor Que El Total Pendiente. Por Favor Verifique.', []);
    end;

  Result := valor;
end;


procedure TfrmPuntoVentaAdministracionBackup.correccion;
begin
  mdPago.First;
  While Not mdPago.Eof do
   Begin
//     If (mdPagoFormaPagoID.Value = 'EFECTIVO') And
     If (mdPagoFormaPagoID.Value = 'CASH') Or
        (mdPagoFormaPagoID.Value = 'EFECTIVO') And
        (efectivo > 0) And
        (devuelta > 0) Then
       Begin
         mdPago.Edit;
         mdPagoPagado.Value := efectivo - devuelta;
       end;

     mdPago.Next;
   End;
end;


function TfrmPuntoVentaAdministracionBackup.ValidarMontoCobrado : Boolean;
Var
 monto : Double;
begin
 monto := 0;
 mdPago.First;
 while not mdPago.Eof do
 begin
  monto := monto + mdPagoPagado.Value;
  mdPago.Next;
 end;

 if monto > qrEntradaPacienteTotalPendiente.Value then result := false else result := true;
end;


procedure TfrmPuntoVentaAdministracionBackup.CrearNotaCredito;
Var
 qinsert : TADOQuery;
begin
 DM.qrParametro.Close;
 DM.qrParametro.Open;

 cobroid := DM.qrParametroSecuencia.AsString;

 DM.qrParametro.Edit;
 DM.qrParametroSecuencia.Value := DM.qrParametroSecuencia.Value + 1;
 DM.qrParametro.Post;

 qinsert := DM.NewQuery;
 qinsert.Close;
 qinsert.SQL.Text := 'insert into PTCobro(CobroID,SucursalID,Fecha,Hora,PacienteID,UsuarioID,refRecid,'+
                     '                    TotalFactura,TotalPagado,PendienteFactura,ClienteID,Aplicado,MonedaId,TipoDoc) '+
                     '            Values(:0,:1,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13)';
 qinsert.Parameters[0].Value := cobroid;
 qinsert.Parameters[1].Value := DM.CurSucursal;
 qinsert.Parameters[2].Value := DM.SystemDate;
 qinsert.Parameters[3].Value := TimeToStr(Time);
 qinsert.Parameters[4].Value := qrEntradaPacientePacienteID.Value;
 qinsert.Parameters[5].Value := qrEntradaPacienteUserID.Value;
 qinsert.Parameters[6].Value := qrEntradaPacienteRecid.Value;
 qinsert.Parameters[7].Value := qrEntradaPacienteNeto.Value;
 qinsert.Parameters[8].Value := qrEntradaPacienteTotalPagado.Value;
 qinsert.Parameters[9].Value := qrEntradaPacienteTotalPendiente.Value;
 qinsert.Parameters[10].Value := qrEntradaPacienteClienteID.Value;
 qinsert.Parameters[11].Value := 0;
 qinsert.Parameters[12].Value := qrEntradaPacienteMonedaID.Value;
 qinsert.Parameters[13].Value := 'NC';
 qinsert.ExecSQL;

 FreeAndNil(qinsert);
end;


procedure TfrmPuntoVentaAdministracionBackup.ActNotaCredito;
Var
 qupdate : TADOquery;
 qfind : TADOQuery;
 qfindcobro : TADoQuery;
begin
 qupdate := DM.NewQuery;

 qupdate.Close;
 qupdate.SQL.Clear;
 qupdate.SQL.Text := 'Update PTCobro Set TotalCobrado = :tot,PendienteCobro = :pcob,'+
                     ' ReciboNo = :rec, Aplicado = :apl where CobroID = :rec';
 qupdate.Parameters[0].Value := ValorNC;
 qupdate.Parameters[1].Value := qrEntradaPacienteTotalPendiente.Value - ValorNC;
 qupdate.Parameters[2].Value := GetNotaCredito;
 qupdate.Parameters[3].Value := 1;
 qupdate.Parameters[4].Value := cobroid;
 qupdate.ExecSQL;

 qfindcobro := DM.Find('Select * from PTCobro Where CobroID = :cob',cobroid);

 CrearTransCliente(qrEntradaPAcienteClienteId.value,'NC',qfindcobro.FieldByName('ReciboNo').value,'FT',
                   qrEntradaPAcienteEntredaId.value,qfindcobro.FieldByName('Fecha').value,ValorNC * -1,
                   qrEntradaPacienteMonedaId.Value);

 FreeAndNil(qfindcobro);

 qupdate.Close;
 qupdate.SQL.Clear;
 qupdate.SQL.Text := 'Insert into PTCobroAplicado(CobroID,EntradaId,MontoAplicado) values(:0,:1,:2)';
 qupdate.Parameters[0].Value := cobroid;
 qupdate.Parameters[1].Value := qrEntradaPAcienteEntredaId.value;
 qupdate.Parameters[2].Value := ValorNC;
 qupdate.ExecSQL;

 qrEntradaPaciente.Edit;
 qrEntradaPacienteTotalPagado.Value := qrEntradaPacienteTotalPagado.Value + ValorNC;
 qrEntradaPaciente.Post;

 FreeAndNil(qfind);
 FreeAndNil(qupdate);
end;



procedure TfrmPuntoVentaAdministracionBackup.VolantedePruebasARS1Click(Sender: TObject);
begin
  inherited;
  if qrEntradaPacienteEntredaID.Value <> '' then
  begin
   ppImpFacturaSeguro.DeviceType := dtScreen;
   ppImpFacturaSeguro.Print;
  end;
end;

procedure TfrmPuntoVentaAdministracionBackup.VolantedePruebasTomaMuestra1Click(Sender: TObject);
begin
  inherited;
  if qrEntradaPacienteEntredaID.Value <> '' then
  begin
   if qrEntradaPacienteCoberturaSeguro.Value <> 0 then
   begin
    ppImpFactPacienteConSeguro.DeviceType := dtScreen;
    ppImpFactPacienteConSeguro.Print;
   end
   else
   begin
    ppImpFactPacienteSinSeguro.DeviceType := dtScreen;
    ppImpFactPacienteSinSeguro.Print;
   end
  end;
end;


procedure TfrmPuntoVentaAdministracionBackup.BuscarDatos;
begin
  qrEntradaPaciente.Close;
  qrEntradaPaciente.parameters[0].Value := recid;
  qrEntradaPaciente.Open;

  qrEntradaPacienteDetalle.Close;
  qrEntradaPacienteDetalle.parameters[0].Value := recid;
  qrEntradaPacienteDetalle.Open;

  curCoberturaAplicada := DM.CurCoberturaAplicada(recid);
end;

procedure TfrmPuntoVentaAdministracionBackup.RefrescarInterface;
begin
  actinterface;
//SE ESTA EJECUTANDO EN EL PROCEDIMIENTO ANTERIOR.  Val_Descuento;

  DM.qrParametro.Close;
  DM.qrParametro.Open;

  if (qrEntradaPacienteTotalPendiente.Value = 0) and (qrentradaPacienteBruto.Value <> 0) then
  begin
   btpaciente.Enabled := false;
   btprueba.Enabled := false;
   bteliminar.Enabled := false;
   btcliente.Enabled := false;
   btgrabar.Enabled := false;
   btcobrar.Enabled := false;
   btnotacredito.Enabled := false;

   Asignar2daMuestra1.Enabled := False;
   ConfirmarCobertura1.Enabled := false;
   EliminarDescuentoAplicado1.Enabled := false;
   CambiarLaboratorioNoenlasLineas1.Enabled := false;
   AsignarDescuentoAutorizadoporCobros1.Enabled := false;

{
  Asignar2daMuestra1.Enabled := True;
  ConfirmarCobertura1.Enabled := True;
  EliminarDescuentoAplicado1.Enabled := True;
  CambiarLaboratorioNoenlasLineas1.Enabled := True;
  AsignarDescuentoAutorizadoporCobros1.Enabled := True;
  ConfirmarCobertura1.Enabled := not qrEntradaPacienteCoberturaConfirmada.Value;
}
   UnSetReadOnlyToNoEdit;
   SetColorTo(dm.ColorConsulta);
   RefrescarGrid(true);
  end
  else
   if (qrEntradaPacienteTotalPagado.Value > 0) and (qrEntradaPacienteTotalPendiente.Value > 0) then
   begin
    btpaciente.Enabled := false;
    btprueba.Enabled := false;
    bteliminar.Enabled := false;
    btcliente.Enabled := false;
    btgrabar.Enabled := true;
    btcobrar.Enabled := true;
    btnotacredito.Enabled := true;

    edcobexpporc.Properties.ReadOnly := qrEntradaPacienteCoberturaConfirmada.Value;
    edcoberturavalor.Properties.ReadOnly := qrEntradaPacienteCoberturaConfirmada.Value;

    CambiarLaboratorioNoenlasLineas1.Enabled := CanCambiarLaboratorio;
    EliminarDescuentoAplicado1.Enabled := false;
    AsignarDescuentoAutorizadoporCobros1.Enabled := false;

    UnSetReadOnlyToNoEdit;
    SetColorTo(dm.ColorConsulta);
    RefrescarGrid(true);
   end
   else
    if qrEntradaPacienteTotalPagado.Value = 0 then
    begin
     btpaciente.Enabled := true;
     btprueba.Enabled := true;
     bteliminar.Enabled := true;
     btcliente.Enabled := true;
     btgrabar.Enabled := true;
     btcobrar.Enabled := true;
     btnotacredito.Enabled := true;

     edcobexpporc.Properties.ReadOnly := qrEntradaPacienteCoberturaConfirmada.Value;
     edcoberturavalor.Properties.ReadOnly := qrEntradaPacienteCoberturaConfirmada.Value;
     CambiarLaboratorioNoenlasLineas1.Enabled := CanCambiarLaboratorio;

     //Validando Los Parametros de Descuentos.
     Val_Descuento;

     if qrEntradaPaciente.State = dsInsert then
        SetColorTo(dm.ColorAgrega)
     else
        SetColorTo(dm.ColorModifica);
    // SetReadOnlyToNoEdit;
     qrEntradaPaciente.Edit;
     RefrescarGrid(false);
    end;
end;


//Validando Los Parametros de Descuentos.
procedure TfrmPuntoVentaAdministracionBackup.Val_Descuento;
begin
 //Buscando los Datos del Cliente a Facturar y Sus Parametros.
 Buscar_Cliente;

 //Si el Empleado Puede Otorgar Descuentos.
 If (Asignar_Descuento = True ) Then
   Begin
    //Si el Cliente Puede Recibir Descuentos.
    If (qfindCltParams.FieldByName('ActivarDescuentos').AsBoolean = True) then
      Begin
        EliminarDescuentoAplicado1.Enabled := True;
        AsignarDescuentoAutorizadoporCobros1.Enabled := true;
      end
    Else
      Begin
        //Si el Cliente NO Puede Recibir Descuentos.
        If qrEntradaPaciente.State in [dsEdit,dsInsert] then
          Begin
            EliminarDescuentoAplicado1.Enabled := True;
            EliminarDescuentoAplicado1Click(Nil);
          end;
        EliminarDescuentoAplicado1.Enabled := false;
        AsignarDescuentoAutorizadoporCobros1.Enabled := false;
      End;
   End
 Else
   Begin
     //Si el Empleado NO Puede Otorgar Descuentos.
     If qrEntradaPaciente.State in [dsEdit,dsInsert] then
       Begin
         EliminarDescuentoAplicado1.Enabled := True;
         EliminarDescuentoAplicado1Click(Nil);
       end;
     EliminarDescuentoAplicado1.Enabled := false;
     AsignarDescuentoAutorizadoporCobros1.Enabled := false;
   End;

 If qrEntradaPaciente.State in [dsEdit,dsInsert] then
   Begin
     //Buscando el Descuento Configurado al Cliente.
     qrEntradaPacienteDescuentoPorc.Value := DM.DescCliente(ClienteFactura);

     //Buscando el Cargo - Gasto Configurado al Cliente.
     DM.VerificarGastosVarios(ClienteFactura, qrEntradaPacienteRecid.value);

//     If (qrEntradaPacienteDescuentoPorc.Value = 0) then
     If (qrEntradaPacienteDescuentoPorc.Value < 0.5) then
       Begin
         //Buscando el Descuento Configurado al Paciente (EMPLEADOS - VIP - DOCTORES - ETC).
         If (qfindPacientes.FieldByName('Principal').AsString <> '') Then
           qrEntradaPacienteDescuentoPorc.Value := DM.DescCliente(qfindPacientes.FieldByName('Principal').AsString)
         Else
           qrEntradaPacienteDescuentoPorc.Value := DM.DescCliente(qfindPacientes.FieldByName('ClienteId').AsString)
       end;

     ActTotales;
   end;
end;


function TfrmPuntoVentaAdministracionBackup.CanCambiarLaboratorio;
var
 qfind : TADOQuery;
begin
 qfind := DM.Find('Select * from SysUsuarios Where UserID = :user',DM.CurUser);
 result := qfind.FieldByName('CambiarMuestraNo').AsBoolean;
 FreeAndNil(qfind);
end;


function TfrmPuntoVentaAdministracionBackup.Asignar_Descuento;
var
 qfind : TADOQuery;
begin
 qfind := DM.Find('Select * from SysUsuarios Where UserID = :user', DM.CurUser);
 result := qfind.FieldByName('AsignarDescuentos').AsBoolean;
 FreeAndNil(qfind);
end;




procedure TfrmPuntoVentaAdministracionBackup.act_hold;
var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;

 qfind.Close;
 qfind.SQL.Text := 'Select Count(RecId) from PTEntradaPaciente '+
                   'Where SucursalId = :suc AND Hold = 1 ';
 qfind.Parameters[0].Value := DM.CurSucursal;
 qfind.Open;

 If (qfind.RecordCount > 0) Then
   Begin
     LbHold.Caption := qfind.Fields[0].AsString + ' en Hold.' ;
     LbHold.Refresh;
   End
 Else
   Begin
     LbHold.Caption := '';
     LbHold.Refresh;
   End;

 FreeAndNil(qfind);
end;


procedure TfrmPuntoVentaAdministracionBackup.Asignar2daMuestra1Click(Sender: TObject);
begin
  inherited;
    frmMain.LanzaVentana(-8000);
    if (Docto_Ant <> '') then
      Buscar_Muestra
    else
      beep;
end;


procedure TfrmPuntoVentaAdministracionBackup.Buscar_Muestra;
Var
 qfind  : TADOQuery;
 Dias   : Extended;
begin
 DM.qrParametro.Close;
 DM.qrParametro.Open;

 qfind := DM.NewQuery;

 qfind.Close;
 qfind.SQL.Text := 'SELECT * FROM PTEntradaPaciente '+
                   'WHERE EntredaId = '+ #39 + Docto_Ant + #39 +
                   'AND RepMuestra = 1 ';
 qfind.Open;

 if (qfind.RecordCount > 0) then
   Begin
     Dias := (DM.SystemDate - qfind.FieldByName('Fecha').AsDateTime);

     If (Dias <= DM.qrParametroDiasEntrePruebas.Value) then
       Begin
         Act_2da     := True;
         Record_Ant  := qfind.FieldByName('RecId').AsInteger;
         Muestra_Ant := qfind.FieldByName('MuestraNo').AsString;
         qrEntradaPacienteEntradaIdAnt.Value := Docto_Ant;
         DM.Info('La Factura No. ('+ Docto_Ant +') Tiene Pruebas en 2da. Muestra.');
       end
     Else
       Begin
         Raise exception.CreateFmt('Ha Vencido el Plazo Para Realizar las Pruebas en 2da. Muestra de Esta Factura.', []);
       end;
   end
 Else
   Begin
     Raise exception.CreateFmt('La Factura No. ('+ Docto_Ant +') NO Tiene Pruebas en 2da. Muestra.', []);
   end;

 FreeAndNil(qfind);
end;


procedure TfrmPuntoVentaAdministracionBackup.Buscar_Combo;
begin
 qfindcombo := DM.NewQuery;

 qfindcombo.Close;
 qfindcombo.SQL.Text := 'SELECT * FROM PTCombosPruebas '+
                        'WHERE ComboId = '+ #39 + qrEntradaPacienteDetallePruebaID.Value + #39 +
                        'ORDER BY linea ';
 qfindcombo.Open;

 If (qfindcombo.RecordCount > 0) then
   qfindcombo.First
 Else
   Raise exception.CreateFmt('El Combo ('+ qrEntradaPacienteDetallePruebaID.Value +') NO Tiene Pruebas Registrada.', []);
end;


procedure TfrmPuntoVentaAdministracionBackup.Insertar_Combo_Precio;
begin
  While Not qfindcombo.Eof Do
    Begin
      qrEntradaPacienteDetalle.Post;
      qrEntradaPacienteDetalle.Insert;

      comboprecio := True;
      qrEntradaPacienteDetallePruebaID.Value := qfindcombo.FieldByName('PruebaID').AsString;
      qfindcombo.Next;
   End;

  FreeAndNil(qfindcombo);
end;


procedure TfrmPuntoVentaAdministracionBackup.Insertar_Combo_Blanco;
begin
  While Not qfindcombo.Eof Do
    Begin
      qrEntradaPacienteDetalle.Post;
      qrEntradaPacienteDetalle.Insert;

      comboprecio := False;
      qrEntradaPacienteDetallePruebaID.Value := qfindcombo.FieldByName('PruebaID').AsString;
      qfindcombo.Next;
    End;

  FreeAndNil(qfindcombo);
end;


//Actualizando los Datos del Cliente (Poliza - Aseguradora).
procedure TfrmPuntoVentaAdministracionBackup.Act_Seguro_Cliente;
Var
  qActualiza : TAdoQuery;
begin
 if qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSeg.Value then
   begin
     qActualiza := DM.NewQuery;
     qActualiza.Close;
     qActualiza.SQL.Text := 'UPDATE PTCliente SET '+
                            'Poliza = :pol, '+
                            'Seguro = :seg '+
                            'WHERE ClienteID = :pac ';
     qActualiza.Parameters.ParamByName('pol').Value := qrEntradaPacientePolizaID.Value;
     qActualiza.Parameters.ParamByName('seg').Value := qrEntradaPacienteClienteID.Value;
     qActualiza.Parameters.ParamByName('pac').Value := qrEntradaPacientePacienteID.Value;
     qActualiza.ExecSQL;
   end;
end;


//Buscando los Datos del Cliente a Facturar y Sus Parametros.
procedure TfrmPuntoVentaAdministracionBackup.Buscar_Cliente;
begin
  //Buscando los Datos del Cliente Registrado en el Punto de Venta.
  qfindCltParams := DM.Find('Select * from PTCliente Where ClienteID = :cli', qrEntradaPacienteClienteId.Value);

  If qfindCltParams.FieldByName('Principal').AsString <> '' then
    ClienteFactura := qfindCltParams.FieldByName('Principal').AsString
  Else
    ClienteFactura := qrEntradaPacienteClienteId.Value;

  //Cargando los PARAMETROS del Cliente Principal Registrado en el Punto de Venta.
  qfindCltParams := DM.Find('Select * from PTCliente Where ClienteID = :cli', ClienteFactura);

  //Buscando los Datos del PACIENTE Registrado y Sus Parametros.
  Buscar_Paciente;
end;


//Buscando los Datos del PACIENTE Registrado y Sus Parametros.
procedure TfrmPuntoVentaAdministracionBackup.Buscar_Paciente;
begin
  qfindPacientes := DM.Find('Select * from PTCliente Where ClienteID = :pac', qrEntradaPacientePacienteId.Value);
end;


//Buscando los Datos del Codigo CUPS del Cliente.
procedure TfrmPuntoVentaAdministracionBackup.Buscar_Cod_Cups(cliente: String; prueba: String);
begin
  qfindcodcup := DM.NewQuery;
  qfindcodcup.Close;
  qfindcodcup.SQL.Text := 'SELECT * FROM PTCodigosCup '+
                          'WHERE ClienteId = :clt '+
                          'AND PruebaId = :pru ';
  qfindcodcup.Parameters.ParamByName('clt').Value := cliente;
  qfindcodcup.Parameters.ParamByName('pru').Value := prueba;
  qfindcodcup.Open;

  if (qfindcodcup.RecordCount > 0) then
    Begin
      qrEntradaPacienteDetalle.Edit;
      qrEntradaPacienteDetalleCodigoCupID.Value := qfindcodcup.FieldByName('CodigoCupID').AsString;
      qrEntradaPacienteDetalleDescripcionCup.Value := qfindcodcup.FieldByName('DescripcionCup').AsString;
    end
  Else
    Begin
      qrEntradaPacienteDetalle.Edit;
      qrEntradaPacienteDetalleCodigoCupID.Value := prueba;
      qrEntradaPacienteDetalleDescripcionCup.Value := qrEntradaPacienteDetalleDescripcion.Value;
    end;

  FreeAndNil(qfindcodcup);
end;


//Insertando Los Datos de la Tarjeta de Descuento.
procedure TfrmPuntoVentaAdministracionBackup.Insert_Card_Descuento;
Var qfind, qactu, qinsert : TAdoQuery;
begin
 If (qrEntradaPacienteDescuentoTexto.Value <> 'SUCURSAL') And
    (qrEntradaPacienteDescuentoTexto.Value <> '') And
    (qrEntradaPacienteDescuentoCard.Value <> '') Then
   Begin
     //Actualizando el Estatus del BONO Utilizado.
     qactu := DM.NewQuery;
     qactu.Close;
     qactu.SQL.Text := 'UPDATE PTTarjetaBono '+
                       'SET Activo = 0 '+
                       'WHERE TarjetaID = :tar '+
                       'AND TarjetaNumero = :num ';
     qactu.Parameters.ParamByName('tar').Value := qrEntradaPacienteDescuentoTexto.Value;
     qactu.Parameters.ParamByName('num').Value := qrEntradaPacienteDescuentoCard.Value;
     qactu.ExecSQL;

     //Buscando Los Datos de la Tarjeta de Descuento En el Cliente.
     qfind := DM.NewQuery;
     qfind.Close;
     qfind.SQL.Text := 'SELECT * FROM PTTarjetaCliente '+
                       'WHERE ClienteId = :clt '+
                       'AND TarjetaID = :tar '+
                       'AND TarjetaNumero = :num ';
     qfind.Parameters.ParamByName('clt').Value := qrEntradaPacientePacienteID.Value;
     qfind.Parameters.ParamByName('tar').Value := qrEntradaPacienteDescuentoTexto.Value;
     qfind.Parameters.ParamByName('num').Value := qrEntradaPacienteDescuentoCard.Value;
     qfind.Open;
{
     If (qfind.RecordCount = 0) then
       Begin
         //Insertando Los Datos de la Tarjeta de Descuento En el Cliente.
         qinsert := DM.NewQuery;
         qinsert.Close;
         qinsert.SQL.Text := 'INSERT INTO PTTarjetaCliente '+
                             '(ClienteId, TarjetaID, TarjetaNumero) '+
                             'VALUES (:clt, :tar, :num) ';
         qinsert.Parameters.ParamByName('pol').Value := qrEntradaPacientePolizaID.Value;
         qinsert.Parameters.ParamByName('seg').Value := qrEntradaPacienteClienteID.Value;
         qinsert.Parameters.ParamByName('pac').Value := qrEntradaPacientePacienteID.Value;
         qinsert.ExecSQL;

         FreeAndNil(qinsert);
       end;
}
     FreeAndNil(qactu);
     FreeAndNil(qfind);
   end;
end;


procedure TfrmPuntoVentaAdministracionBackup.ppHeaderBand3BeforePrint(Sender: TObject);
begin
  inherited;
  ppLbTelefono.Caption := 'Tel.: ' + DM.qrParamTelefono.Value;
  if DM.qrParamFax.Value <> '' then ppLbTelefono.Caption := ppLbTelefono.Caption +' Fax : '+ DM.qrParamFax.Value;
end;

procedure TfrmPuntoVentaAdministracionBackup.ppSummaryBand1BeforePrint(Sender: TObject);
begin
  inherited;
  if qrEntradaPacienteCoberturaExpPorc.Value then
     pplbcobertura.Caption := formatfloat('##0.00',qrEntradaPacienteCoberturaValor.Value)
  else
  begin
     pplbcobertura.Caption := formatfloat('##0.00', qrEntradaPacienteCoberturaSeguro.Value * 100/qrEntradaPacienteSubtotal.value);
  end;

  //Buscando los Datos del Cliente.
  Buscar_Cliente;
{
  Eliminado el Jueves 21-12-2006. Acordamos Siempre Imprimir El Nombre del Paciente.

  //Imprimiento el Nombre del Pacliente
  If (qfindCltParams.FieldByName('ImprimirAliasNombre').AsBoolean = True) Then
    LbPaciente.Caption := qfindCltParams.FieldByName('Alias').AsString     //qfindPacientes.FieldByName('Alias').AsString
  Else
}
    LbPaciente.Caption := qrEntradaPacienteNombrePaciente.Value;
end;


procedure TfrmPuntoVentaAdministracionBackup.ppSummaryBand3BeforePrint(Sender: TObject);
begin
  inherited;
  //Buscando los Datos del Cliente.
  Buscar_Cliente;

  //Imprimiendo el Precio de la Prueba.
  If (qfindCltParams.FieldByName('IncluirPrecioTicket').AsBoolean = True) Then
    Begin
      LbNeto.Caption := FormatFloat('##,###,##0.00', qrEntradaPacienteNeto.Value);
      LbPagado.Caption := FormatFloat('##,###,##0.00', qrEntradaPacienteTotalPagado.Value);
      LbPendiente.Caption := FormatFloat('##,###,##0.00', qrEntradaPacienteTotalPendiente.Value);
    end
  Else
    Begin
      LbNeto.Caption := '';
      LbPagado.Caption := '';
      LbPendiente.Caption := '';
    end;
end;

//Impresion de los Codigos CUPS - Factura de Seguros.
procedure TfrmPuntoVentaAdministracionBackup.ppDetailBand3BeforePrint(Sender: TObject);
begin
  inherited;
  qfindprint := DM.find('Select * from PTPrueba where PruebaID = :pru', qrEntradaPacienteDetalleCodigoCupID.Value);

  If (qfindprint.FieldByName('Tipo').Value = 'C') then
   Begin
    LbPrecio.Caption := '';
    LbCodigo.Caption := '';
    LbDescripcion.Caption := '';
    LbPrecio.Visible := False;
    LbCodigo.Visible := False;
    LbDescripcion.Visible := False;
   end
  Else
   Begin
    LbCodigo.Caption := qrEntradaPacienteDetalleCodigoCupID.Value;
    LbDescripcion.Caption := qrEntradaPacienteDetalleDescripcionCup.Value;
    LbPrecio.Caption := FormatFloat('##,###,##0.00', qrEntradaPacienteDetallePrecio.Value);
    LbPrecio.Visible := True;
    LbCodigo.Visible := True;
    LbDescripcion.Visible := True;
   end;
end;

procedure TfrmPuntoVentaAdministracionBackup.ppDetailBand5BeforePrint(Sender: TObject);
begin
  inherited;
  qfindprint := DM.find('SELECT * FROM PTPrueba WHERE PruebaID = :pru', qrEntradaPacienteDetallePruebaId.Value);

  //Buscando los Datos del Cliente.
  Buscar_Cliente;

  //Imprimiendo la Descripcion de la Prueba.
  If (qfindCltParams.FieldByName('ImprimirAliasPrueba').AsBoolean = True) Then
    Begin
      LbDescripcion1.Caption := qfindprint.FieldByName('Alias').AsString;
    end
  Else
    Begin
      LbDescripcion1.Caption := qrEntradaPacienteDetalleDescripcion.Value;
    end;

  //Imprimiendo el Precio de la Prueba.
  If (qfindCltParams.FieldByName('IncluirPrecioTicket').AsBoolean = True) Then
    Begin
      LbNetoTit.Visible := True;
      LbPagadoTit.Visible := True;
      LbPendienteTit.Visible := True;
      LbPrecio1.Caption := FormatFloat('##,###,##0.00', qrEntradaPacienteDetallePrecio.Value);
    end
  Else
    Begin
      LbNetoTit.Visible := True;
      LbPagadoTit.Visible := True;
      LbPendienteTit.Visible := True;
      LbPrecio1.Caption := FormatFloat('##,###,##0.00', qrEntradaPacienteDetallePrecio.Value);      
    end;
end;



END.

