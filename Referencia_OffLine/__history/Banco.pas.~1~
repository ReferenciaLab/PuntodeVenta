unit Banco;

interface
                                                    
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomModule, Menus, StdActns, ActnList, JvComponentBase,
  JvFormPlacement, ExtCtrls, JvExControls, JvComponent, JvEnterTab,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxCheckBox, cxDBEdit, cxCalc, cxSpinEdit,
  cxTimeEdit, cxDropDownEdit, cxCalendar, cxImageComboBox, cxMaskEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxDBLabel, cxCurrencyEdit,
  cxGroupBox, cxRadioGroup, cxMemo, cxSplitter, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, dxLayoutControl, StdCtrls, cxButtons,
  cxTextEdit, cxContainer, cxLabel, cxPC, ppDB, ppDBPipe, ppCtrls, ppStrtch,
  ppMemo, ppBands, myChkBox, ppVar, ppPrnabl, ppClass, ppCache, ppComm,
  ppRelatv, ppProd, ppReport, ADODB, dxmdaset, cxDBExtLookupComboBox, TXComp,
  pptypes, cxBlobEdit;

type
  TfrmBanco = class(TfrmCustomModule)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxPageControlCabecera: TcxPageControl;
    dxLayoutControl1Item1: TdxLayoutItem;
    TabGeneral: TcxTabSheet;
    GridPruebasEntradasPacienteDet: TcxGridDBTableView;
    GridPruebasLevel1: TcxGridLevel;
    GridPruebas: TcxGrid;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
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
    GridPruebasEntradasPacienteDetPruebaID: TcxGridDBColumn;
    GridPruebasEntradasPacienteDetPrecio: TcxGridDBColumn;
    GridPruebasEntradasPacienteDetDescuento: TcxGridDBColumn;
    GridPruebasEntradasPacienteDetTotalLinea: TcxGridDBColumn;
    GridPruebasEntradasPacienteDetDescripcion: TcxGridDBColumn;
    GridPruebasEntradasPacienteDetDescPct: TcxGridDBColumn;
    lcGeneralGroup1: TdxLayoutGroup;
    lcGeneralGroup2: TdxLayoutGroup;
    cxDBTextEdit1: TcxDBTextEdit;
    lcGeneralItem1: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    lcGeneralItem2: TdxLayoutItem;
    cxDBTimeEdit1: TcxDBTimeEdit;
    lcGeneralItem3: TdxLayoutItem;
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
    lcGeneralGroup4: TdxLayoutGroup;
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
    GridPruebasEntradasPacienteDetCoberturaAplica: TcxGridDBColumn;
    GridPruebasEntradasPacienteDetCoberturaEspecial: TcxGridDBColumn;
    qrEntradaPacienteDetalleCoberturaEspecialPorc: TBCDField;
    qrEntradaPacienteDetalleCoberturaAplicada: TBCDField;
    qrEntradaPacienteMuestraNo: TStringField;
    qrEntradaPacienteDetalleDescuentoLineaAplicado: TBCDField;
    qrEntradaPacienteDetalleMuestraNo: TStringField;
    GridPruebasEntradasPacienteDetMuestraNo: TcxGridDBColumn;
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
    ppDBText64: TppDBText;
    ppDBText65: TppDBText;
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
    ppLabel69: TppLabel;
    ppDBText76: TppDBText;
    ppLabel70: TppLabel;
    ppDBText77: TppDBText;
    ppLabel71: TppLabel;
    ppDBText78: TppDBText;
    ppDBMemo4: TppDBMemo;
    ppImpFactPacienteSinSeguro: TppReport;
    ppHeaderBand5: TppHeaderBand;
    ppDBText75: TppDBText;
    ppDBText79: TppDBText;
    ppLabel62: TppLabel;
    ppDBText80: TppDBText;
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
    ppDBText88: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppLabel80: TppLabel;
    ppDBText89: TppDBText;
    ppLabel81: TppLabel;
    ppDBText90: TppDBText;
    ppLabel82: TppLabel;
    ppDBText91: TppDBText;
    ppDBMemo5: TppDBMemo;
    ppLabel83: TppLabel;
    ppDBText92: TppDBText;
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
    cxButton1: TcxButton;
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
    cxDBExtLookupComboBox4: TcxDBExtLookupComboBox;
    lcGeneralItem24: TdxLayoutItem;
    lcGeneralItem26: TdxLayoutItem;
    lcGeneralItem27: TdxLayoutItem;
    lcGeneralItem28: TdxLayoutItem;
    cxDBDateEdit3: TcxDBDateEdit;
    cxDBTimeEdit3: TcxDBTimeEdit;
    cxDBImageComboBox7: TcxDBImageComboBox;
    cxDBTextEdit13: TcxDBTextEdit;
    lcGeneralItem22: TdxLayoutItem;
    cxDBExtLookupComboBox2: TcxDBExtLookupComboBox;
    lcGeneralItem30: TdxLayoutItem;
    qrEntradaPacienteFechaEntrada: TDateTimeField;
    CambiarLaboratorioNoenlasLineas1: TMenuItem;
    qrEntradaPacienteCoberturaExpPorc: TBooleanField;
    pplbcobertura: TppLabel;
    qrEntradaPacienteDetalleComentario: TMemoField;
    GridPruebasEntradasPacienteDetComentario: TcxGridDBColumn;
    AsignarDescuentoPermitidoalUsuario1: TMenuItem;
    qrEntradaPacienteDetalleCoberturaExpPorc: TBooleanField;
    GridPruebasEntradasPacienteDetCoberturaExpPorc: TcxGridDBColumn;
    GridPruebasEntradasPacienteDetColumn2: TcxGridDBColumn;
    EliminarDescuentoAplicado1: TMenuItem;
    qrEntradaPacienteEdadPaciente: TBCDField;
    cxDBCurrencyEdit9: TcxDBCurrencyEdit;
    lcGeneralItem33: TdxLayoutItem;
    qrEntradaPacienteNombreDoctor: TStringField;
    cxDBTextEdit15: TcxDBTextEdit;
    lcGeneralItem34: TdxLayoutItem;
    ppLabel100: TppLabel;
    ppDBText59: TppDBText;
    qrEntradaPacientePublicarInternet: TBooleanField;
    MenuGrid: TPopupMenu;
    MenuItem1: TMenuItem;
    qrEntradaPacienteOrigen: TStringField;
    qrEntradaPacienteCarnet: TStringField;
    lcGeneralGroup9: TdxLayoutGroup;
    qrEntradaPacientePublicarInternetDoctor: TBooleanField;
    cxDBCheckBox3: TcxDBCheckBox;
    lcGeneralItem32: TdxLayoutItem;
    cxDBTextEdit16: TcxDBTextEdit;
    lcGeneralItem36: TdxLayoutItem;
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
    qrEntradaPacienteHold: TBooleanField;
    Asignar2daMuestra1: TMenuItem;
    qrEntradaPacienteRepMuestra: TBooleanField;
    qrEntradaPacienteDetalleRepMuestra: TBooleanField;
    qrEntradaPacienteDetalleMuestraAnt: TStringField;
    qrEntradaPacienteEntradaIdAnt: TStringField;
    qrEntradaPacienteNoAS400: TBooleanField;
    qrEntradaPacienteNoAxapta: TBooleanField;
    qrEntradaPacienteNoFactura: TBooleanField;
    qrEntradaPacienteFactExterior: TBooleanField;
    RegistrarPruebadelExterior1: TMenuItem;
    lcGeneralGroup15: TdxLayoutGroup;
    procedure RegistrarPruebadelExterior1Click(Sender: TObject);
    procedure qrEntradaPacienteNombrePacienteValidate(Sender: TField);
    procedure CxDbPacienteExit(Sender: TObject);
    procedure Asignar2daMuestra1Click(Sender: TObject);
    procedure BtHoldClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GastosVarios1Click(Sender: TObject);
    procedure AsignarDescuentoAutorizadoporCobros1Click(Sender: TObject);
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
    procedure AsignarDescuentoPermitidoalUsuario1Click(Sender: TObject);
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
    procedure CrearNotaCredito;
    procedure RefrescarCobro;
    procedure ActDetalle;
    procedure ImpresionRecibo;
    procedure ImpresionNC;
    procedure ActInterface;
    procedure act_hold;
    procedure Buscar_Muestra;

    procedure CrearTransCliente(cliente: string; tipodoc: string; documento: string;
              tipoaplica: string; documentoaplica: string;fecha : TDateTime; valor: Double;moneda :string);
    function ExisteCobro : Boolean;
    function TipoCobro : String;
    function GetEntradaID : String;
    function GetMuestraNo : String;
    function GetReciboNo : String;
    function GetNotaCredito : String;
    function CanCambiarLaboratorio : Boolean;
    function ValidateCliente : Boolean;
    function GetNextSecDoc(tipodoc : string) : String;

  private
    { Private declarations }
  public
    { Public declarations }
    factor      : Integer;
    recid       : Integer;
    valorNC     : Double;
    Act_2da     : Boolean;
    Record_Ant  : Integer;
    cobroid     : string;
    Docto_Ant   : String;
    Muestra_Ant : String;
    curCoberturaAplicada : Integer;

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
  frmBanco: TfrmBanco;
  qfindprueba : TADOQuery;
  qfindRepetir : TADOQuery;  



implementation

uses ActionsDM,DataModule,Main;

{$R *.dfm}

function TfrmBanco.ValidateCliente : Boolean;
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

procedure TfrmBanco.CrearTransCliente(cliente: string; tipodoc: string; documento: string;
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

procedure TfrmBanco.CuadredeCaja1Click(Sender: TObject);
begin
  inherited;
  frmMain.LanzaVentana(1402);
end;

procedure TfrmBanco.CuadredeCaja2Click(Sender: TObject);
begin
  inherited;
  frmMain.LanzaVentana(-7987);
end;

procedure TfrmBanco.CxDbPacienteExit(Sender: TObject);
begin
  inherited;
////////////////////////////////////////////////////////////
end;

procedure TfrmBanco.RefrescarGrid(SoloLectura: Boolean);
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

function TfrmBanco.CanCambiarLaboratorio;
var
 qfind : TADOQuery;
begin
 qfind := DM.Find('Select * from SysUsuarios Where UserID = :user',DM.CurUser);

 result := qfind.FieldByName('CambiarMuestraNo').AsBoolean;

 FreeAndNil(qfind);
 
end;


procedure TfrmBanco.ActInterface;
begin
 act_hold;

 DM.qrParametro.close;
 DM.qrParametro.open;
 qrEntradapacienteFechaEntrada.Required := False;
 qrEntradaPacienteDoctorID.Required := False;
 qrEntradaPacientePolizaID.Required := False;
 {
 lcGeneralItem16.Visible := false;
 lcGeneralItem17.Visible := false;
 lcGeneralItem18.Visible := false;
 lcGeneralItem19.Visible := false;
 lcGeneralItem20.Visible := false;

 lcGeneralGroup6.Visible := false;
 lcGeneralItem13.Visible := false;
 lcGeneralItem31.Visible := false;
 lcGeneralItem36.Visible := false;
 ConfirmarCobertura1.Enabled := false;   }
 GridPruebasEntradasPacienteDetCoberturaAplica.Visible := false;
// GridPruebasEntradasPacienteDetCoberturaExpPorc.Visible := false;
// GridPruebasEntradasPacienteDetCoberturaEspecial.Visible := false;
 if qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSeg.Value then
 begin
  //lcGeneralItem15.Caption := 'Poliza';
  lcGeneralItem36.Visible := True;
  //lcGeneralItem16.Visible := true;
 { lcGeneralItem17.Visible := true;
  lcGeneralItem18.Visible := true;
  lcGeneralItem19.Visible := true;
  lcGeneralItem20.Visible := true;}
//  lcGeneralGroup6.Visible := true;
  ConfirmarCobertura1.Enabled := not qrEntradaPacienteCoberturaConfirmada.Value;
  GridPruebasEntradasPacienteDetCoberturaAplica.Visible := true;
  //GridPruebasEntradasPacienteDetCoberturaExpPorc.Visible := true;
  //GridPruebasEntradasPacienteDetCoberturaEspecial.Visible := true;
  qrEntradaPacienteDoctorID.Required := True;
  qrEntradaPacientePolizaID.Required := True;
  {AsignarDescuentoPermitidoalUsuario1.Enabled := false;
  AsignarDescuentoAutorizadoporCobros1.Enabled := false;}
 end
 else
  if qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoClinica.Value then
  begin
//   lcGeneralItem15.Caption := 'Record';
   qrEntradapacienteFechaEntrada.Required := True;
  // lcGeneralItem31.Visible := true;
  end
  else
   if qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoPriv.Value then
   begin
//    lcGeneralItem15.Caption := 'Referencia';
   end
   else
    if qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoEmp.Value then
    begin
     AsignarDescuentoPermitidoalUsuario1.Enabled := false;
     AsignarDescuentoAutorizadoporCobros1.Enabled := false;
//     lcGeneralItem15.Caption := 'Referencia';
    end
    else
     if qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoLab.Value then
     begin
       CxDbPaciente.Enabled := True;
       lcGeneralGroup9.Enabled := True;
       lcGeneralItem6.Enabled := True;
       qrEntradaPacientePolizaID.Required := True;
       qrEntradaPacienteNombrePaciente.Required := True;
//       lcGeneralItem15.Caption := 'Referencia';
     end
     else
//      lcGeneralItem15.Caption := 'Referencia';
end;

procedure TfrmBanco.ImpresionRecibo;
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

procedure TfrmBanco.ImpresionNC;
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

procedure TfrmBanco.CambiarLaboratorioNoenlasLineas1Click(Sender: TObject);
begin
  inherited;
  if qrEntradaPacienteDetalle.RecordCount > 0 then
     frmMain.LanzaVentana(-7991)
  else
     beep;
end;

procedure TfrmBanco.CancelarCobro;
begin
 DM.DataBase.Execute('Delete from PTCobro Where CobroID = '+#39+cobroid+#39);
 DM.DataBase.Execute('Delete from PTCobroDetalle Where CobroID = '+#39+cobroid+#39);
 cobroid := '';
end;

function TfrmBanco.GetMuestraNo : String;
begin
  result := GetNextSecDoc('MT');
end;

function TfrmBanco.GetReciboNo : String;
begin
  result := GetNextSecDoc('RI');
end;

function TfrmBanco.GetNotaCredito : String;
begin
  result := GetNextSecDoc('NC');
end;

procedure TfrmBanco.ActDetalle;
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

function TfrmBanco.ImporteBrutoExclLineaActual(refrecid : integer ;secuencia : integer) : Double;
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

function TfrmBanco.ImporteBrutoExclLineaActualAndCobertura(refrecid : integer ;secuencia : integer) : Double;
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

function TfrmBanco.TotalDescuentoLinea : Double;
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

function TfrmBanco.ImporteLinea : Double;
Var
 Valor,DescPorc : Double;
begin
 DescPorc := 0;
 
 Valor := qrEntradaPacienteDetallePrecio.Value - qrEntradaPacienteDetalleDescuento.Value;

 if (qrEntradaPacienteDetalleDescPct.Value > 0) then
     DescPorc := Valor * qrEntradaPacienteDetalleDescPct.Value / 100;

 result := Valor - DescPorc;
end;

function TfrmBanco.CoberturaAplicada : Double;
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

procedure TfrmBanco.ConfirmarCobertura1Click(Sender: TObject);
begin
  inherited;
  frmMain.LanzaVentana(-7993);
end;

procedure TfrmBanco.btcancelarClick(Sender: TObject);
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

procedure TfrmBanco.btcobrarClick(Sender: TObject);
begin
  inherited;
  if qrEntradaPacienteNeto.Value <> 0 then
  begin
   CrearCobro;
   RefrescarCobro;
   frmMain.LanzaVentana(-7997);
  end
  else
   beep;
end;

procedure TfrmBanco.btclienteClick(Sender: TObject);
begin
  inherited;
  if qrEntradaPacienteCoberturaConfirmada.Value then
     DM.Info('La cobertura ha sido confirmada el cliente no puede ser cambiado.')
  else
  begin
   frmMain.LanzaVentana(-7996);
   actinterface;
  end;
end;

procedure TfrmBanco.bteliminarClick(Sender: TObject);
begin
  inherited;
  if (qrEntradaPacienteDetallePruebaID.Text <> '') and (qrEntradaPacienteTotalPagado.Value = 0) then
  begin
   qrEntradaPacienteDetalle.Delete;
  end
  else
   beep;
end;

procedure TfrmBanco.btentradaClick(Sender: TObject);
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

procedure TfrmBanco.btgrabarClick(Sender: TObject);
var
 imprimirFactPaciente : Boolean;
 imprimirRecibo,imprimirNC : Boolean;
begin
inherited;
if ValidateRecord(dsEntradaPaciente.DataSet) and ValidateCliente then
begin
 if DM.Mensaje('Desea grabar?',mb_yesno) = id_yes then
 begin
  imprimirFactPaciente := false;
  imprimirRecibo := DM.qrParametroImprimirAlGrabarRecibo.Value;
  imprimirNC := DM.qrParametroImprimirAlGrabarNC.Value;

  if qrEntradaPacienteEntredaID.Value = '' then
  begin
    qrEntradaPacienteEntredaID.Value := GetEntradaID;
    qrEntradaPacienteUserId.Value := DM.CurUser;
    qrEntradaPacienteFecha.Value := DM.SystemDate;
    qrEntradaPacienteHoraEntrada.Value := TimeToStr(Time);
    qrEntradaPacienteHold.Value := False;

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
           Begin
             imprimirFactPaciente := DM.qrParametroImprimirAlGrabar.Value;
           End;

         qrEntradaPacienteEntredaID.Value := GetEntradaID;
         qrEntradaPacienteUserId.Value := DM.CurUser;
         qrEntradaPacienteFecha.Value := DM.SystemDate;
         qrEntradaPacienteHoraEntrada.Value := TimeToStr(Time);
         qrEntradaPacienteHold.Value := False;
       end;
    end;

  if qrEntradaPacienteDetalle.State in [dsEdit,dsInsert] then
     qrEntradaPacienteDetalle.Post;

  if qrEntradaPaciente.State in [dsEdit,dsInsert] then
     qrEntradaPaciente.Post;

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


procedure TfrmBanco.BtHoldClick(Sender: TObject);
begin
 inherited;
  if ValidateRecord(dsEntradaPaciente.DataSet) and ValidateCliente then
   begin
    if DM.Mensaje('Desea Poner en Hold?',mb_yesno) = id_yes then
     begin
      if qrEntradaPacienteEntredaID.Value = '' then
       begin
        qrEntradaPacienteEntredaID.Value := GetEntradaID;
        qrEntradaPacienteUserId.Value := DM.CurUser;
        qrEntradaPacienteFecha.Value := DM.SystemDate;
        qrEntradaPacienteHoraEntrada.Value := TimeToStr(Time);
        qrEntradaPacienteHold.Value := True;
       end;

      if (copy(qrEntradaPacienteEntredaID.value,1,3) = 'COT') and
         (qrEntradaPacienteTipoDocumento.Value = 0) then
       begin
        qrEntradaPacienteEntredaID.Value := GetEntradaID;
        qrEntradaPacienteUserId.Value := DM.CurUser;
        qrEntradaPacienteFecha.Value := DM.SystemDate;
        qrEntradaPacienteHoraEntrada.Value := TimeToStr(Time);
        qrEntradaPacienteHold.Value := True;        
       end;

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

procedure TfrmBanco.btimpcotClick(Sender: TObject);
begin
  inherited;
  if qrEntradaPacienteEntredaID.Value <> '' then
  begin
   ppImpCotizacion.DeviceType := dtScreen;
   ppImpCotizacion.Print;
  end;
end;

procedure TfrmBanco.btnotacreditoClick(Sender: TObject);
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

procedure TfrmBanco.btpacienteClick(Sender: TObject);
begin
  inherited;
  frmMain.LanzaVentana(-7999);
  actinterface;
end;

procedure TfrmBanco.btpruebaClick(Sender: TObject);
begin
  inherited;
  frmMain.LanzaVentana(-7998);
end;

procedure TfrmBanco.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if (qrEntradaPacienteEntredaId.asstring = '') then
      DM.DataBase.Execute('Delete from PTGastosVarioTrans Where Refrecid = '+qrEntradaPacienteRecid.AsString);
end;

procedure TfrmBanco.FormCreate(Sender: TObject);
begin

  inherited;
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

procedure TfrmBanco.FormKeyDown(Sender: TObject; var Key: Word;
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
  if (key = vk_f12) then BtHoldClick(nil);
end;

procedure TfrmBanco.SetColorTo(iColor: TColor);
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

procedure TfrmBanco.SetReadOnlyToNoEdit;
var
  i : Integer;
begin
  for i := 0 to ComponentCount - 1 do begin
    if Components[i].Tag = 99 then
      SetComponentReadOnly( Components[i], True );
  end;
end;

procedure TfrmBanco.SetComponentReadOnly(thisComponent: TComponent; bFlag : Boolean);
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

procedure TfrmBanco.UnSetReadOnlyToNoEdit;
var
  i : Integer;
begin
  for i := 0 to ComponentCount - 1 do begin
    if Components[i].Tag = 99 then
      SetComponentReadOnly( Components[i], False );
  end;
end;

procedure TfrmBanco.NotadeCredito1Click(Sender: TObject);
begin
  inherited;
  frmMain.LanzaConsulta(-7991,qrEntradaPacienteRecid.asstring);
end;

procedure TfrmBanco.NuevaVenta;
begin
  cobroid := '';
  DM.qrParametro.Close;
  DM.qrParametro.Open;

  recid := DM.qrParametroSecuencia.Value;

  DM.qrParametro.Edit;
  DM.qrParametroSecuencia.Value := DM.qrParametroSecuencia.Value + 1;
  DM.qrParametro.Post;

  if (qrEntradaPaciente.State in [dsinsert,dsedit]) then qrEntradaPaciente.Cancel;
  qrEntradaPaciente.Close;
  qrEntradaPaciente.parameters[0].Value := recid;
  qrEntradaPaciente.Open;

  if (qrEntradaPaciente.State in [dsinsert,dsedit]) then qrEntradaPaciente.Cancel;
  qrEntradaPacienteDetalle.Close;
  qrEntradaPacienteDetalle.parameters[0].Value := recid;
  qrEntradaPacienteDetalle.Open;

  qrEntradaPaciente.Insert;
  qrEntradaPacienteRecid.Value := recid;

  qrEntradaPacienteCoberturaConfirmada.Value := false;
  qrEntradaPacienteSucursalId.Value := DM.CurSucursal;
  qrEntradaPacienteBruto.Value := 0;
  qrEntradaPacienteDescuento.Value := 0;
  qrEntradaPacienteSubTotal.Value := 0;
  qrEntradaPacienteCoberturaSeguro.Value := 0;
  qrEntradaPacienteNeto.Value := 0;
  qrEntradaPacienteTotalPagado.Value := 0;
  qrEntradaPacienteTotalPendiente.Value := 0;
  qrEntradaPacientePrioridad.Value := 0;
  qrEntradaPacienteResultadoPaciente.Value := 0;
  qrEntradaPacienteResultadoDoctor.Value := 3;
  qrEntradaPacienteTipoDocumento.Value := 0;
  qrEntradaPacienteDescuentoPorc.Value := 0;
  qrEntradaPacienteDescuentoValor.Value := 0;
  qrEntradaPacienteFecha.Value := DM.SystemDate;
  qrEntradaPacienteUserId.Value := DM.CurUser;
 // qrEntradaPacienteOrigen.Value := 0;
  qrEntradaPacienteCoberturaPorc.Value := 0;
  qrEntradaPacienteCoberturaValor.Value := 0;
  qrEntradaPacienteMuestraNo.Value := GetMuestraNo;
  qrEntradaPacienteMonedaID.Value := DM.qrParametroMonedaID.Value;
  qrEntradaPacienteCoberturaExpPorc.Value := false;
  qrEntradaPacientePublicarInternet.Value := false;
  qrEntradaPacientePublicarInternetDoctor.Value := False;
  qrEntradaPacienteHold.Value := False;
  qrEntradaPacienteNoAS400.Value := False;
  qrEntradaPacienteNoAxapta.Value := False;
  qrEntradaPacienteNoFactura.Value := False;
  qrEntradaPacienteRepMuestra.Value := False;
  qrEntradaPacienteFactExterior.Value := False;  

 // edcoberturaporc.Properties.ReadOnly := qrEntradaPacienteCoberturaConfirmada.Value;
//  edcobexpporc.Properties.ReadOnly := qrEntradaPacienteCoberturaConfirmada.Value;
//  edcoberturavalor.Properties.ReadOnly := qrEntradaPacienteCoberturaConfirmada.Value;
  ConfirmarCobertura1.Enabled := not qrEntradaPacienteCoberturaConfirmada.Value;
  AsignarDescuentoPermitidoalUsuario1.Enabled := True;
  AsignarDescuentoAutorizadoporCobros1.Enabled := True;
  EliminarDescuentoAplicado1.Enabled := True;

  //Valores de la 2da. Muestra.
  Act_2da     := False;
  Record_Ant  := 0;
  Docto_Ant   := '';
  Muestra_Ant := '';
  //Valores de la 2da. Muestra.  

  SetColorTo(dm.ColorAgrega);
 // SetReadOnlyToNoEdit;

  cxPageControlCabecera.ActivePage := TabGeneral;
  actinterface;
  CambiarLaboratorioNoenlasLineas1.Enabled := CanCambiarLaboratorio;
  curCoberturaAplicada := 0;
  RefrescarGrid(false);
end;

procedure TfrmBanco.ppHeaderBand3BeforePrint(Sender: TObject);
begin
  inherited;
  ppLbTelefono.Caption := 'Tel.: ' + DM.qrParamTelefono.Value;
  if DM.qrParamFax.Value <> '' then ppLbTelefono.Caption := ppLbTelefono.Caption +' Fax : '+ DM.qrParamFax.Value;
end;

procedure TfrmBanco.ppSummaryBand1BeforePrint(Sender: TObject);
begin
  inherited;
  if qrEntradaPacienteCoberturaExpPorc.Value then
     pplbcobertura.Caption := formatfloat('##0.00',qrEntradaPacienteCoberturaValor.Value)
  else
  begin
     pplbcobertura.Caption := formatfloat('##0.00',qrEntradaPacienteCoberturaSeguro.Value * 100/qrEntradaPacienteSubtotal.value); 
  end;

end;

procedure TfrmBanco.qrEntradaPacienteAfterPost(DataSet: TDataSet);
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

procedure TfrmBanco.qrEntradaPacienteCalcFields(DataSet: TDataSet);
begin
  inherited;
  qrEntradaPacienteTotalPendiente.Value := qrEntradaPacienteNeto.Value - qrEntradaPacienteTotalPagado.Value;
end;

procedure TfrmBanco.qrEntradaPacienteCoberturaExpPorcValidate(
  Sender: TField);
begin
  inherited;
  if (qrEntradaPacienteCoberturaValor.Value >= 100) and
     (qrEntradaPacienteCoberturaExpPorc.Value) then
     raise exception.CreateFmt('El porcentaje no puede ser mayor de 100',[]);

end;

procedure TfrmBanco.qrEntradaPacienteCoberturaPorcValidate(Sender: TField);
begin
  inherited;
  if (qrEntradaPacienteCoberturaPorc.Value > 100) then
     raise exception.CreateFmt('El porcentaje no puede ser mayor de 100',[]);
end;

procedure TfrmBanco.qrEntradaPacienteCoberturaValorValidate(
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

procedure TfrmBanco.qrEntradaPacienteDetalleAfterDelete(DataSet: TDataSet);
begin
  inherited;
  ActTotales;
end;

procedure TfrmBanco.qrEntradaPacienteDetalleAfterPost(DataSet: TDataSet);
begin
  inherited;
  ActTotales;
  VerificarPagoDiferencia;
end;

procedure TfrmBanco.VerificarPagoDiferencia;
var
 qfind : TADOQuery;
begin
if (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSeg.value) and
     (qrEntradaPacienteNeto.Value > 0) then
  begin
   qfind := DM.find('Select * from PTCliente Where ClienteId = :cli',qrEntradaPacientePacienteId.Value);
   if (qfind.FieldByName('NoCobrarDiferencia').Value = True) then
   begin
    qrEntradaPacienteDescuentoValor.Value := 0;
    ActTotales;
    qrEntradaPacienteDescuentoValor.Value := qrEntradaPacienteNeto.Value;
    ActTotales;
   end;
   FreeAndNil(qfind);
  end;
end;

procedure TfrmBanco.qrEntradaPacienteDetalleBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
  if qrEntradaPacienteDetalleCoberturaAplica.value then
     curCoberturaAplicada := curCoberturaAplicada - 1;
end;

procedure TfrmBanco.qrEntradaPacienteDetalleBeforePost(DataSet: TDataSet);
begin
  inherited;
   qrEntradaPacienteDetalleTotalLinea.Value := ImporteLinea;
end;

procedure TfrmBanco.qrEntradaPacienteDetalleDescuentoChange(
  Sender: TField);
begin
  inherited;
  if qrEntradaPacienteDetalle.State in [dsInsert,dsEdit] then
     qrEntradaPacienteDetalleTotalLinea.Value := ImporteLinea;
  
end;

procedure TfrmBanco.qrEntradaPacienteDetallePruebaIDChange(Sender: TField);
var
 qfind : TADOQuery;
 ClienteFactura : string;
begin
  inherited;
  if (qrEntradaPacienteDetalle.State = dsInsert) or
     (qrEntradaPacienteDetalle.State = dsEdit) then
  begin
   //Registrando las Pruebas en Dollares del Exterior.
   If (qrEntradaPacienteFactExterior.Value = True) then
     Begin
       qfind := DM.Find('Select * from PTCliente Where ClienteID = :cli',qrEntradaPacienteClienteId.Value);

       if qfind.FieldByName('Principal').AsString <> '' then
         ClienteFactura := qfind.FieldByName('Principal').AsString
       else
         ClienteFactura := qrEntradaPacienteClienteId.Value;

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
       qrEntradaPacienteDetalleMuestraNo.Value := qrEntradaPacienteMuestraNo.Value;

       if (qfindRepetir.RecordCount > 0) then
         frmMain.LanzaVentana(-8001)
       Else
         frmMain.LanzaVentana(-8002);
     end
   Else
     Begin
       qfind := DM.Find('Select * from PTCliente Where ClienteID = :cli',qrEntradaPacienteClienteId.Value);

       if qfind.FieldByName('Principal').AsString <> '' then
          ClienteFactura := qfind.FieldByName('Principal').AsString
       else
          ClienteFactura := qrEntradaPacienteClienteId.Value;

       FreeAndNil(qfind);

       qrEntradaPacienteDetalleRefRecid.Value := recid;
       qrEntradaPacienteDetalleRepMuestra.Value := qrEntradaPacienteRepMuestra.Value;
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
          curCoberturaAplicada := frmMain.frmTmp.curCoberturaAplicada + 1;

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
       qrEntradaPacienteDetalleMuestraNo.Value := qrEntradaPacienteMuestraNo.Value;
     End;
  end;
end;

procedure TfrmBanco.qrEntradaPacienteDetallePruebaIDValidate(
  Sender: TField);
begin
  inherited;
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
//      if (qrEntradaPacienteRepMuestra.Value = True And Act_2da = True) Then
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
            end
          Else
            Begin
              qrEntradaPacienteDetalle.Delete;
              Raise exception.CreateFmt('Esta Prueba NO Existe en la Factura Anterior.', []);
            end;
        End;
     End;
end;

procedure TfrmBanco.qrEntradaPacienteDoctorIDChange(Sender: TField);
var
 qfind : TADOQuery;
begin
  inherited;
  if qrEntradaPaciente.State in [dsInsert,dsEdit] then
  begin
   qfind := DM.Find('Select * from PTDoctor Where DoctorId = :doc',qrEntradaPacienteDoctorID.Value);
   qrEntradaPacienteNombreDoctor.Value := qfind.FieldByName('Nombre').AsString;
   qrEntradaPacienteResultadoDoctor.Value := qfind.FieldByName('ResultadoDoctor').AsInteger;
   qrEntradaPacientePublicarInternetDoctor.Value := qfind.FieldByName('PublicarInternet').AsBoolean;
   FreeAndNil(qfind);
  end;

end;

procedure TfrmBanco.qrEntradaPacienteNombrePacienteValidate(
  Sender: TField);
begin
  inherited;
  if (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoLab.Value) then
    begin
//      If (qrEntradaPacientePolizaID.IsNull or qrEntradaPacientePolizaID.Value = '') Then
      If (qrEntradaPacientePolizaID.Value = '') Then
        Begin
          qrEntradaPacientePolizaID.Value := qrEntradaPacienteNombrePaciente.Value;
        end;
    end;
end;

procedure TfrmBanco.qrEntradaPacienteOrigenChange(Sender: TField);
begin
  inherited;
  actinterface;
end;

procedure TfrmBanco.qrEntradaPacienteTipoDocumentoChange(Sender: TField);
begin
  inherited;
 if qrEntradaPacienteTipoDocumento.Value = 2 then
    factor := -1
 else
    factor := 1;

 if qrEntradaPaciente.State in [dsedit,dsinsert] then RecalcularLineas;
end;

function TfrmBanco.MaxSecuenciaLinea : Integer;
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

procedure TfrmBanco.MenuItem1Click(Sender: TObject);
begin
  inherited;
  frmMain.LanzaVentana(-7988);
end;

procedure TfrmBanco.ActTotales;
Var
 qfind : TADOQuery;
begin
 ActDetalle;
 qfind := DM.NewQuery;

 qfind.Close;
 qfind.SQL.Text := 'Select SUM(Precio), SUM(DescuentoLineaAplicado), SUM(CoberturaAplicada) From PTEntradaPacienteDetalle Where refRecid = '+ inttostr(recid);
 qfind.Open;

 qrEntradaPacienteBruto.Value := qfind.Fields[0].AsFloat;
 qrEntradaPacienteDescuento.Value := qfind.Fields[1].AsFloat;
 qrEntradaPacienteSubTotal.Value := qrEntradaPacienteBruto.Value - qrEntradaPacienteDescuento.Value;
 qrEntradaPacienteCoberturaSeguro.Value := qfind.Fields[2].AsFloat;
 qrEntradaPacienteGastosVarios.Value := DM.TotalGastosVarios(qrEntradaPacienteRecid.Value);
 qrEntradaPacienteNeto.Value := qrEntradaPacienteSubTotal.Value - qrEntradaPacienteCoberturaSeguro.Value + qrEntradaPacienteGastosVarios.Value;
end;


procedure TfrmBanco.AsignarDescuentoAutorizadoporCobros1Click(
  Sender: TObject);
begin
  inherited;
  frmMain.LanzaVentana(-7986);
end;

procedure TfrmBanco.AsignarDescuentoPermitidoalUsuario1Click(
  Sender: TObject);
begin
  inherited;
  frmMain.LanzaVentana(-7989);
end;

procedure TfrmBanco.RecalcularLineas;
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


procedure TfrmBanco.RecibodeCobro1Click(Sender: TObject);
begin
  inherited;
  frmMain.LanzaConsulta(-7994,qrEntradaPacienteRecid.asstring);
end;

procedure TfrmBanco.EliminarDescuentoAplicado1Click(Sender: TObject);
begin
  inherited;
  qrEntradaPacienteDescuentoPorc.Value := 0;
  qrEntradaPacienteDescAutorizadoPor.value := '';
  ActTotales;
end;

function TfrmBanco.ExisteCobro : Boolean;
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

function TfrmBanco.TipoCobro : String;
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

procedure TfrmBanco.DesabilitarBotones(_SiNo : Boolean);
begin
 btentrada.Enabled := not _SiNo;
 btpaciente.Enabled := not _SiNo;
 btprueba.Enabled := not _SiNo;
 btcancelar.Enabled := not _SiNo;
 bteliminar.Enabled := not _SiNo;
 //btcliente.Enabled := not _SiNo;
 btgrabar.Enabled := not _SiNo;
 btcobrar.Enabled := not _SiNo;
 btnotacredito.Enabled := not _SiNo;
 btimprimir.Enabled := not _SiNo;

end;

procedure TfrmBanco.edcoberturavalorExit(Sender: TObject);
begin
  inherited;
  if qrEntradaPaciente.State in [dsedit,dsinsert] then
  begin
   qrEntradaPacienteDescuentoValor.Value := 0;
   ActTotales;
   VerificarPagoDiferencia;
  end;
end;

procedure TfrmBanco.ActCobro;
Var
 qupdate    : TADOquery;
 qfind      : TADOQuery;
 qfindcobro : TADOquery;
begin
 DM.qrParametro.close;
 DM.qrParametro.open;

 qupdate := DM.NewQuery;
 qupdate.Close;
 qupdate.SQL.Text := 'Update PTCobroDetalle Set Monto = :mont,MontoMST = :mon2 where Recid = :rec';

 mdPago.First;

 while not mdPago.Eof do
 begin
  qupdate.Parameters[0].Value := mdPagoPagado.Value;
  qupdate.Parameters[1].Value := DM.ValorMoneda(mdPagoPagado.Value,qrEntradaPAcienteMonedaID.Value,DM.qrParametroMonedaID.Value,DM.SystemDate);
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
 qupdate.SQL.Text := 'Update PTCobro Set TotalCobrado = :tot,PendienteCobro = :pcob,'+
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

procedure TfrmBanco.ActNotaCredito;
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


function TfrmBanco.GetNextSecDoc(tipodoc : string) : String;
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


procedure TfrmBanco.GastosVarios1Click(Sender: TObject);
begin
  inherited;
  frmMain.lanzaConsulta(-7984,qrEntradaPacienteRecid.asstring);
end;

function TfrmBanco.GetEntradaID : String;
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

procedure TfrmBanco.CrearCobro;
Var
 qinsert : TADOQuery;
 qformapago : TADOQuery;
 monto : Double;
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
 qinsert.Parameters[13].Value := 'RI';
 qinsert.ExecSQL;

 qformapago := DM.NewQuery;
 qformapago.close;
 qformapago.SQL.Text := 'Select * from PTFormaDePago order by orden';
 qformapago.Open;

 qinsert.Close;
 qinsert.SQL.Clear;
 qinsert.SQL.Text := 'insert into PTCobroDetalle(CobroID,FormaDePagoID,Monto,Orden,RefRecid,MonedaID,MontoMST) '+
                     '            Values(:0,:1,:2,:3,:4,:5,:6)';

 monto := qrEntradaPacienteTotalPendiente.Value;

 while not qformapago.Eof do
 begin
  qinsert.Parameters[0].Value := cobroid;
  qinsert.Parameters[1].Value := qformapago.FieldByName('FormaDePagoId').AsString;
  qinsert.Parameters[2].Value := monto;
  qinsert.Parameters[3].Value := qformapago.FieldByName('Orden').AsString;
  qinsert.Parameters[4].Value := qrEntradaPacienteRecid.Value;
  qinsert.Parameters[5].Value := qrEntradaPacienteMonedaID.Value;
  qinsert.Parameters[6].Value := DM.ValorMoneda(monto,qrEntradaPacienteMonedaID.Value,DM.qrParametroMonedaID.Value,DM.SystemDate);
  qinsert.ExecSQL;

  monto := 0;

  qformapago.Next;
 end;

 FreeAndNil(qinsert);
 FreeAndNil(qformapago);

end;

procedure TfrmBanco.CrearNotaCredito;
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

procedure TfrmBanco.RefrescarCobro;
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

  qfind := DM.NewQuery;
  qfind.Close;
  qfind.SQL.Text := 'Select * from PTCobroDetalle d, PTFormaDePago f '+
                    ' Where d.cobroid = '+ #39 + cobroID + #39 +
                    '   and d.FormaDePagoId = f.FormaDePagoID '+
                    ' Order by d.orden';
  qfind.Open;

  while not qfind.Eof do
  begin
   mdPago.Insert;
   mdPagoFormaPagoID.Value := qfind.FieldByName('FormaDePagoId').AsString;
   mdPagoFormaDePago.Value := qfind.FieldByName('Descripcion').AsString;
   mdPagoPagado.Value := qfind.FieldByName('Monto').AsFloat;
   mdPagoOrden.Value := qfind.FieldByName('Orden').AsInteger;
   mdPagorefrecid.Value := qfind.FieldByName('recid').AsInteger;
   mdPago.Post;

   qfind.Next;
  end;

  mdPago.First;

  FreeAndNil(qfind);

end;

function TfrmBanco.ValidarMontoCobrado : Boolean;
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

procedure TfrmBanco.VolantedePruebasARS1Click(Sender: TObject);
begin
  inherited;
  if qrEntradaPacienteEntredaID.Value <> '' then
  begin
   ppImpFacturaSeguro.DeviceType := dtScreen;
   ppImpFacturaSeguro.Print;
  end;
end;

procedure TfrmBanco.VolantedePruebasTomaMuestra1Click(Sender: TObject);
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


procedure TfrmBanco.BuscarDatos;
begin
  qrEntradaPaciente.Close;
  qrEntradaPaciente.parameters[0].Value := recid;
  qrEntradaPaciente.Open;

  qrEntradaPacienteDetalle.Close;
  qrEntradaPacienteDetalle.parameters[0].Value := recid;
  qrEntradaPacienteDetalle.Open;

  curCoberturaAplicada := DM.CurCoberturaAplicada(recid);
end;

procedure TfrmBanco.RefrescarInterface;
begin
  actinterface;
  DM.qrParametro.Close;
  DM.qrParametro.Open;

  if (qrEntradaPacienteTotalPendiente.Value = 0) and (qrentradaPacienteBruto.Value <> 0) then
  begin
   btpaciente.Enabled := false;
   btprueba.Enabled := false;
   bteliminar.Enabled := false;
   //btcliente.Enabled := false;
   btgrabar.Enabled := false;
   btcobrar.Enabled := false;
   btnotacredito.Enabled := false;
   ConfirmarCobertura1.Enabled := false;
   AsignarDescuentoPermitidoalUsuario1.Enabled := false;
   AsignarDescuentoAutorizadoporCobros1.Enabled := false;
   CambiarLaboratorioNoenlasLineas1.Enabled := false;
   EliminarDescuentoAplicado1.Enabled := false;

   Asignar2daMuestra1.Enabled := False;
   RegistrarPruebadelExterior1.Enabled := False;

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
    //btcliente.Enabled := false;
    btgrabar.Enabled := true;
    btcobrar.Enabled := true;
    btnotacredito.Enabled := true;
   // edcoberturaporc.Properties.ReadOnly := qrEntradaPacienteCoberturaConfirmada.Value;
//    edcobexpporc.Properties.ReadOnly := qrEntradaPacienteCoberturaConfirmada.Value;
//    edcoberturavalor.Properties.ReadOnly := qrEntradaPacienteCoberturaConfirmada.Value;
    CambiarLaboratorioNoenlasLineas1.Enabled := CanCambiarLaboratorio;
    AsignarDescuentoPermitidoalUsuario1.Enabled := false;
    AsignarDescuentoAutorizadoporCobros1.Enabled := false;
    EliminarDescuentoAplicado1.Enabled := false;
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
     //btcliente.Enabled := true;
     btgrabar.Enabled := true;
     btcobrar.Enabled := true;
     btnotacredito.Enabled := true;
    // edcoberturaporc.Properties.ReadOnly := qrEntradaPacienteCoberturaConfirmada.Value;
//     edcobexpporc.Properties.ReadOnly := qrEntradaPacienteCoberturaConfirmada.Value;
//     edcoberturavalor.Properties.ReadOnly := qrEntradaPacienteCoberturaConfirmada.Value;
     CambiarLaboratorioNoenlasLineas1.Enabled := CanCambiarLaboratorio;
     if {(qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSeg.Value) or }
        (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoEmp.Value) then
     begin
        AsignarDescuentoPermitidoalUsuario1.Enabled := false;
        AsignarDescuentoAutorizadoporCobros1.Enabled := false;
     end
     else
     begin
        AsignarDescuentoPermitidoalUsuario1.Enabled := true;
        AsignarDescuentoAutorizadoporCobros1.Enabled := true;
     end;
     EliminarDescuentoAplicado1.Enabled := True;        
     if qrEntradaPaciente.State = dsInsert then
        SetColorTo(dm.ColorAgrega)
     else
        SetColorTo(dm.ColorModifica);
    // SetReadOnlyToNoEdit;
     qrEntradaPaciente.Edit;
     RefrescarGrid(false);
    end;
end;


procedure TfrmBanco.RegistrarPruebadelExterior1Click(Sender: TObject);
begin
 inherited;
  DM.qrParametro.Close;
  DM.qrParametro.Open;

  qrEntradaPacienteTipoDocumento.Value := 3;
  qrEntradaPacienteNoAS400.Value := True;
  qrEntradaPacienteNoAxapta.Value := True;
  qrEntradaPacienteNoFactura.Value := True;
  qrEntradaPacienteFactExterior.Value := True;
  qrEntradaPacienteMonedaID.Value := DM.qrParametroMonedaDolares.Value;
end;

procedure TfrmBanco.act_hold;
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


procedure TfrmBanco.Asignar2daMuestra1Click(Sender: TObject);
begin
  inherited;
    frmMain.LanzaVentana(-8000);
    if (Docto_Ant <> '') then
      Buscar_Muestra
    else
      beep;
end;


procedure TfrmBanco.Buscar_Muestra;
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




END.
