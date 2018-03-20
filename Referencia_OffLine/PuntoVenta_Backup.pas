unit PuntoVenta_Backup;

interface
                                                    
uses 
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomModule, Menus, StdActns, ActnList, JvComponentBase, StrUtils,
  JvFormPlacement, ExtCtrls, JvExControls, JvComponent, JvEnterTab, DateUtils, 
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxCheckBox, cxDBEdit, cxCalc, cxSpinEdit,
  cxTimeEdit, cxDropDownEdit, cxCalendar, cxImageComboBox, cxMaskEdit, TXComp,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxDBLabel, cxCurrencyEdit,
  cxGroupBox, cxRadioGroup, cxMemo, cxSplitter, cxGridLevel, cxDBExtLookupComboBox,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, dxLayoutControl, StdCtrls, cxButtons,
  cxTextEdit, cxContainer, cxLabel, cxPC, ppDB, ppDBPipe, ppCtrls, ppStrtch,
  ppMemo, ppBands, myChkBox, ppVar, ppPrnabl, ppClass, ppCache, ppComm,
  ppRelatv, ppProd, ppReport, ADODB, dxmdaset, pptypes, cxBlobEdit, cxMCListBox,
  ComCtrls, JvDBGridFooter, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid;

type
  TfrmPuntoVenta_Backup = class(TfrmCustomModule)
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
    GridPruebasEntradasPacienteDetCOBERTURAAPLICADA: TcxGridDBColumn;
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
    dsEntradaPaciente: TDataSource;
    qrEntradaPacienteDetalle: TADOQuery;
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
    EdPaciente: TcxDBTextEdit;
    LcPaciente: TdxLayoutItem;
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
    EdCliente: TcxDBTextEdit;
    LcCliente: TdxLayoutItem;
    cxDBTextEdit9: TcxDBTextEdit;
    lcGeneralItem12: TdxLayoutItem;
    lcGeneralGroup4: TdxLayoutGroup;
    lcGeneralGroup5: TdxLayoutGroup;
    lcGeneralGroup6: TdxLayoutGroup;
    EdCoberturaValor: TcxDBCurrencyEdit;
    lcGeneralItem17: TdxLayoutItem;
    cxDBCheckBox1: TcxDBCheckBox;
    lcGeneralItem18: TdxLayoutItem;
    cxDBTextEdit11: TcxDBTextEdit;
    lcGeneralItem19: TdxLayoutItem;
    cxDBTextEdit12: TcxDBTextEdit;
    lcGeneralItem20: TdxLayoutItem;
    cxDBImageComboBox2: TcxDBImageComboBox;
    lcGeneralItem21: TdxLayoutItem;
    cxGridStyles: TcxStyleRepository;
    stGrDatos: TcxStyle;
    stGrEdit: TcxStyle;
    menuImpresion: TPopupMenu;
    RecibodeCobro1: TMenuItem;
    ExtraOptions1: TExtraOptions;
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
    ppSummaryFacturaSeguro: TppSummaryBand;
    ppLabel46: TppLabel;
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
    ppDetailBandConSeguro: TppDetailBand;
    ppDBText74: TppDBText;
    ppSummaryFactPacienteConSeguro: TppSummaryBand;
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
    ppDetailBandSinSeguro: TppDetailBand;
    ppSummaryFactPacienteSinSeguro: TppSummaryBand;
    ppLabel83: TppLabel;
    BtFunciones: TcxButton;
    lgBotonesItem12: TdxLayoutItem;
    MenuFunciones: TPopupMenu;
    ConfirmarCobertura1: TMenuItem;
    ppLabel97: TppLabel;
    ppDBText108: TppDBText;
    ppLabel98: TppLabel;
    ppDBText109: TppDBText;
    btnotacredito: TcxButton;
    lgBotonesItem13: TdxLayoutItem;
    NotadeCredito1: TMenuItem;
    lcGeneralGroup7: TdxLayoutGroup;
    EdDoctor: TcxDBExtLookupComboBox;
    lcGeneralItem24: TdxLayoutItem;
    lcGeneralItem26: TdxLayoutItem;
    lcGeneralItem28: TdxLayoutItem;
    lcGeneralItem29: TdxLayoutItem;
    cxDBDateEdit3: TcxDBDateEdit;
    cxDBImageComboBox7: TcxDBImageComboBox;
    cxDBImageComboBox8: TcxDBImageComboBox;
    cxDBExtLookupComboBox2: TcxDBExtLookupComboBox;
    lcGeneralItem30: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    lcGeneralItem31: TdxLayoutItem;
    CambiarLaboratorioNoenlasLineas1: TMenuItem;
    cxDBTextEdit14: TcxDBTextEdit;
    lcGeneralItem23: TdxLayoutItem;
    edcobexpporc: TcxDBCheckBox;
    lcGeneralItem16: TdxLayoutItem;
    pplbcobertura: TppLabel;
    AsignarDescuentoPermitidoalUsuario1: TMenuItem;
    EliminarDescuentoAplicado1: TMenuItem;
    cxDBCurrencyEdit9: TcxDBCurrencyEdit;
    lcGeneralItem33: TdxLayoutItem;
    lcGeneralGroup8: TdxLayoutGroup;
    cxDBTextEdit15: TcxDBTextEdit;
    lcGeneralItem34: TdxLayoutItem;
    ppLabel100: TppLabel;
    ppDBText59: TppDBText;
    cxDBCheckBox2: TcxDBCheckBox;
    lcGeneralItem35: TdxLayoutItem;
    MenuGrid: TPopupMenu;
    MenuItem1: TMenuItem;
    edtipocliente: TcxDBExtLookupComboBox;
    lcGeneralItem14: TdxLayoutItem;
    lcGeneralGroup9: TdxLayoutGroup;
    lcGeneralGroup10: TdxLayoutGroup;
    cxDBCurrencyEdit10: TcxDBCurrencyEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group7: TdxLayoutGroup;
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
    GastosVarios1: TMenuItem;
    LbHold: TcxLabel;
    lcGeneralItem38: TdxLayoutItem;
    BtHold: TcxButton;
    lgBotonesItem11: TdxLayoutItem;
    Asignar2daMuestra1: TMenuItem;
    RegistrarPruebadelExterior1: TMenuItem;
    cxDBDateEdit4: TcxDBDateEdit;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl1Item14: TdxLayoutItem;
    cxDBImageComboBox1: TcxDBImageComboBox;
    lcGeneralItem2: TdxLayoutItem;
    cxDBImageComboBox3: TcxDBImageComboBox;
    lcGeneralItem3: TdxLayoutItem;
    cxDBTextEdit10: TcxDBTextEdit;
    lcGeneralItem37: TdxLayoutItem;
    ppLabel107: TppLabel;
    LbPrecio: TppLabel;
    LbCodigo: TppLabel;
    LbDescripcion: TppLabel;
    LbPrecio1: TppLabel;
    LbDescripcion1: TppLabel;
    ppLabel108: TppLabel;
    ppLabel109: TppLabel;
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
    ppColumnHeaderBand1: TppColumnHeaderBand;
    ppColumnFooterBand1: TppColumnFooterBand;
    CodigodeBarra1: TMenuItem;
    RegistrarFechaPrometida1: TMenuItem;
    Materiales1: TMenuItem;
    GridPruebasEntradasPacienteDetCodigoCupID: TcxGridDBColumn;
    LbDescTit: TppLabel;
    LbDescuento: TppLabel;
    LbBrutoTit: TppLabel;
    LbBruto: TppLabel;
    ppLabel80: TppLabel;
    ppDBText64: TppDBText;
    RegistrarCobrosTemporales1: TMenuItem;
    cxDBDateEdit1: TcxDBDateEdit;
    lcGeneralItem22: TdxLayoutItem;
    cxDBTextEdit13: TcxDBTextEdit;
    lcGeneralItem13: TdxLayoutItem;
    ppImpFacturaExterior: TppReport;
    ppHeaderBand6: TppHeaderBand;
    ppDBText65: TppDBText;
    ppDBText88: TppDBText;
    ppLabel82: TppLabel;
    ppShape6: TppShape;
    ppLabel86: TppLabel;
    ppDBText92: TppDBText;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppDBText93: TppDBText;
    ppLabel90: TppLabel;
    ppDBText94: TppDBText;
    ppLabel91: TppLabel;
    ppLabel93: TppLabel;
    ppDBText97: TppDBText;
    ppLabel94: TppLabel;
    ppDBText98: TppDBText;
    ppDBText99: TppDBText;
    ppDetailBand4: TppDetailBand;
    ppSummaryBand4: TppSummaryBand;
    ppLabel81: TppLabel;
    ppDBText80: TppDBText;
    FacturaExterior1: TMenuItem;
    ppDBComentario: TppDBMemo;
    ppShape7: TppShape;
    ppMemoFactSeg: TppMemo;
    ppShape8: TppShape;
    ppMemoFactConSeg: TppMemo;
    ppMemoFactSinSeg: TppMemo;
    ppShape9: TppShape;
    EliminarOrdenesenHold1: TMenuItem;
    LbCobertura: TppLabel;
    MarcarPruebaNOProcesar1: TMenuItem;
    ppMemoFactExterior: TppMemo;
    ppDBDescripcion: TppDBMemo;
    ppLabel84: TppLabel;

    qrEntradaPacienteENTRADAID: TStringField;
    qrEntradaPacienteFECHA: TDateTimeField;
    qrEntradaPacienteHORAENTRADA: TStringField;
    qrEntradaPacientePACIENTEID: TStringField;
    qrEntradaPacienteCLIENTEID: TStringField;
    qrEntradaPacienteDOCTORID: TStringField;
    qrEntradaPacientePOLIZAID: TStringField;
    qrEntradaPacienteENCLINICA: TIntegerField;
    qrEntradaPacienteRECORDCLINICA: TStringField;
    qrEntradaPacienteNUMEROHABITACION: TStringField;
    qrEntradaPacienteFECHAENTRADA: TDateTimeField;
    qrEntradaPacienteFECHADEALTA: TDateTimeField;
    qrEntradaPacienteRESULTADOPACIENTE: TIntegerField;
    qrEntradaPacienteRESULTADODOCTOR: TIntegerField;
    qrEntradaPacienteFECHAPROMETIDA: TDateTimeField;
    qrEntradaPacienteHORAPROMETIDA: TStringField;
    qrEntradaPacienteFLEBOTOMISTAID: TStringField;
    qrEntradaPacientePROYECTOID: TStringField;
    qrEntradaPacienteBRUTO: TBCDField;
    qrEntradaPacienteDESCUENTO: TBCDField;
    qrEntradaPacienteSUBTOTAL: TBCDField;
    qrEntradaPacienteNETO: TBCDField;
    qrEntradaPacienteNOMBREPACIENTE: TStringField;
    qrEntradaPacienteTELEFONOS: TStringField;
    qrEntradaPacienteTELEFONO2: TStringField;
    qrEntradaPacienteEMAIL: TStringField;
    qrEntradaPacienteCLIENTENOMBRE: TStringField;
    qrEntradaPacienteSUCURSALID: TStringField;
    qrEntradaPacienteUSERID: TStringField;
    qrEntradaPacienteCOBROID: TStringField;
    qrEntradaPacienteTOTALPAGADO: TBCDField;
    qrEntradaPacientePRIORIDAD: TIntegerField;
    qrEntradaPacienteFAX: TStringField;
    qrEntradaPacienteTIPODOCUMENTO: TIntegerField;
    qrEntradaPacienteCOBERTURAPORC: TBCDField;
    qrEntradaPacienteCOBERTURASEGURO: TBCDField;
    qrEntradaPacienteCOBERTURAVALOR: TBCDField;
    qrEntradaPacienteDESCUENTOPORC: TBCDField;
    qrEntradaPacienteDESCUENTOVALOR: TBCDField;
    qrEntradaPacienteDESCUENTOBONO: TBCDField;
    qrEntradaPacienteORIGEN: TStringField;
    qrEntradaPacienteAPROBACIONNO: TStringField;
    qrEntradaPacienteCOBERTURARECHAZADA: TIntegerField;
    qrEntradaPacienteCOBERTURACONFIRMADA: TIntegerField;
    qrEntradaPacienteFECHAASEGURADORA: TDateTimeField;
    qrEntradaPacienteMUESTRANO: TStringField;
    qrEntradaPacienteMONEDAID: TStringField;
    qrEntradaPacienteCOBERTURAEXPPORC: TIntegerField;
    qrEntradaPacienteEDADPACIENTE: TIntegerField;
    qrEntradaPacienteSEXO: TIntegerField;
    qrEntradaPacienteNOMBREDOCTOR: TStringField;
    qrEntradaPacientePUBLICARINTERNET: TIntegerField;
    qrEntradaPacienteCARNET: TStringField;
    qrEntradaPacientePUBLICARINTERNETDOCTOR: TIntegerField;
    qrEntradaPacienteCUADREGLOBAL: TStringField;
    qrEntradaPacienteCUADREUSUARIO: TStringField;
    qrEntradaPacienteDESCAUTORIZADOPOR: TStringField;
    qrEntradaPacienteGASTOSVARIOS: TBCDField;
    qrEntradaPacienteNOAS400: TIntegerField;
    qrEntradaPacienteNOAXAPTA: TIntegerField;
    qrEntradaPacienteNOFACTURA: TIntegerField;
    qrEntradaPacienteFACTEXTERIOR: TIntegerField;
    qrEntradaPacienteHOLD: TIntegerField;
    qrEntradaPacienteREPMUESTRA: TIntegerField;
    qrEntradaPacienteENTRADAIDANT: TStringField;
    qrEntradaPacienteTIPOENTRADA: TStringField;
    qrEntradaPacienteFORMADEPAGO: TStringField;
    qrEntradaPacienteDESCUENTOCARD: TStringField;
    qrEntradaPacienteDESCUENTOTEXTO: TStringField;
    qrEntradaPacienteACUERDOPROPIO: TIntegerField;
    qrEntradaPacienteCLIENTEPADRE: TStringField;
    qrEntradaPacienteDESCUENTOPLANID: TStringField;
    qrEntradaPacienteFECHAREGISTRO: TDateTimeField;
    qrEntradaPacienteHORAREGISTRO: TStringField;
    qrEntradaPacienteTASA: TBCDField;
    qrEntradaPacienteESTATUS: TIntegerField;
    qrEntradaPacienteTIPOCLIENTEAS400: TIntegerField;
    qrEntradaPacienteCLASECREDITO: TStringField;
    qrEntradaPacienteCARNETNUMERO: TStringField;
    qrEntradaPacienteCLIENTEPADREAXAPTA: TStringField;
    qrEntradaPacientePACIENTEIDAXAPTA: TStringField;
    qrEntradaPacienteCLIENTEIDAXAPTA: TStringField;
    qrEntradaPacienteDOCTORIDAXAPTA: TStringField;
    qrEntradaPacienteNOTA: TStringField;
    qrEntradaPacienteDIRECCION: TStringField;
    qrEntradaPacienteAPROBACIONPOR: TStringField;
    qrEntradaPacienteNCFTYPEID: TStringField;
    qrEntradaPacienteNCFID: TStringField;
    qrEntradaPacienteNCFNAME: TStringField;
    qrEntradaPacienteTRANSFERIDO: TIntegerField;
    qrEntradaPacienteSUCURSAL: TIntegerField;
    qrEntradaPacienteNUMEROINTERNET: TIntegerField;
    qrEntradaPacienteRESULTADOCLIENTE: TIntegerField;
    qrEntradaPacientePUBLICARINTERNETCLIENTE: TIntegerField;
    qrEntradaPacienteCUADRADO: TIntegerField;
    qrEntradaPacienteRECID: TIntegerField;
    qrEntradaPacienteRECORDID: TIntegerField;
    qrEntradaPacienteDATAAREAID: TStringField;

    qrEntradaPacienteDetallePRUEBAID: TStringField;
    qrEntradaPacienteDetalleCOMBOPRUEBAID: TStringField;
    qrEntradaPacienteDetalleCODIGOAUTORIZACION: TStringField;
    qrEntradaPacienteDetalleDESCRIPCION: TStringField;
    qrEntradaPacienteDetalleCODIGOCUPID: TStringField;
    qrEntradaPacienteDetalleMUESTRAANT: TStringField;
    qrEntradaPacienteDetalleCOBERTURAAPLICA: TIntegerField;
    qrEntradaPacienteDetalleDESCRIPCIONCUP: TStringField;
    qrEntradaPacienteDetalleREFRECID: TIntegerField;
    qrEntradaPacienteDetalleSECUENCIA: TIntegerField;
    qrEntradaPacienteDetalleFLEBOTOMISTAID: TStringField;
    qrEntradaPacienteDetalleUNIDADMUESTRA: TStringField;
    qrEntradaPacienteDetalleSECUENCIAACT: TIntegerField;
    qrEntradaPacienteDetallePRECIO: TBCDField;
    qrEntradaPacienteDetalleDESCUENTO: TBCDField;
    qrEntradaPacienteDetalleDESCUENTOEXTRA: TBCDField;
    qrEntradaPacienteDetalleTOTALLINEA: TBCDField;
    qrEntradaPacienteDetalleTIPOPRUEBA: TStringField;
    qrEntradaPacienteDetalleTIPOAS400: TStringField;
    qrEntradaPacienteDetalleCODIGOAS400: TStringField;
    qrEntradaPacienteDetalleMEDIOAS400: TStringField;
    qrEntradaPacienteDetalleDESCPCT: TBCDField;
    qrEntradaPacienteDetalleCOBERTURAESPECIAL: TBCDField;
    qrEntradaPacienteDetalleCOBERTURAESPECIALPORC: TBCDField;
    qrEntradaPacienteDetalleCOBERTURAAPLICADA: TBCDField;
    qrEntradaPacienteDetalleDESCUENTOAPLICADO: TBCDField;
    qrEntradaPacienteDetalleFACTURAR: TIntegerField;
    qrEntradaPacienteDetalleSELECCIONAR: TIntegerField;
    qrEntradaPacienteDetalleMUESTRANO: TStringField;
    qrEntradaPacienteDetalleCOBERTURAEXPPORC: TIntegerField;
    qrEntradaPacienteDetalleURGENTE: TIntegerField;
    qrEntradaPacienteDetalleREPMUESTRA: TIntegerField;
    qrEntradaPacienteDetalleFECHAENTREGA: TDateTimeField;
    qrEntradaPacienteDetalleHORAENTREGA: TStringField;
    qrEntradaPacienteDetalleESTATUS: TStringField;
    qrEntradaPacienteDetalleDESCUENTOLINEAAPLICADO: TBCDField;
    qrEntradaPacienteDetalleCOMENTARIOMUESTRA: TStringField;
    qrEntradaPacienteDetalleCOMENTARIO: TStringField;
    qrEntradaPacienteDetalleCUADRADO: TIntegerField;
    qrEntradaPacienteDetalleTRANSFERIDO: TIntegerField;
    qrEntradaPacienteDetallePASARAXAPTA: TIntegerField;
    qrEntradaPacienteDetalleDATAAREAID: TStringField;
    qrEntradaPacienteDetalleRECID: TIntegerField;

    LbHora: TcxDBLabel;
    dxLayoutControl1Item15: TdxLayoutItem;
    qrEntradaPacienteTotalPendiente: TBCDField;
    LbHoraPrometida: TcxDBLabel;
    lcGeneralItem25: TdxLayoutItem;
    ppDBText89: TppDBText;
    procedure GridPruebasEntradasPacienteDetStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure ppSummaryBand4BeforePrint(Sender: TObject);
    procedure MarcarPruebaNOProcesar1Click(Sender: TObject);
    procedure EliminarOrdenesenHold1Click(Sender: TObject);
    procedure ppSummaryFactPacienteConSeguroBeforePrint(Sender: TObject);
    procedure FacturaExterior1Click(Sender: TObject);
    procedure ppDetailBand4BeforePrint(Sender: TObject);
    procedure RegistrarCobrosTemporales1Click(Sender: TObject);
    procedure qrEntradaPacienteClienteIDChange(Sender: TField);
    procedure Materiales1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RegistrarFechaPrometida1Click(Sender: TObject);
    procedure CodigodeBarra1Click(Sender: TObject);
    procedure ppSummaryFactPacienteSinSeguroBeforePrint(Sender: TObject);
    procedure ppDetailBandSinSeguroBeforePrint(Sender: TObject);
    procedure EdDoctorPropertiesChange(Sender: TObject);
    procedure ppDetailBand3BeforePrint(Sender: TObject);
    procedure qrEntradaPacienteTipoEntradaChange(Sender: TField);
    procedure qrEntradaPacienteDetalleBeforeInsert(DataSet: TDataSet);
    procedure qrEntradaPacienteDetalleBeforeEdit(DataSet: TDataSet);
    procedure RegistrarPruebadelExterior1Click(Sender: TObject);
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
    procedure AsignarDescuentoPermitidoalUsuario1Click(Sender: TObject);
    procedure AsignarDescuentoAutorizadoporCobros1Click(Sender: TObject);
    procedure ppSummaryFacturaSeguroBeforePrint(Sender: TObject);
    procedure qrEntradaPacienteCoberturaValorValidate(Sender: TField);
    procedure qrEntradaPacienteCoberturaExpPorcValidate(Sender: TField);
    procedure EdCoberturaValorExit(Sender: TObject);
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
    procedure CrearCobro;
    procedure ActNotaCredito;
//    procedure CrearNotaCredito;
    procedure RefrescarCobro;
    procedure ActDetalle;
    procedure ImpresionRecibo;
    procedure ImpresionNC;
    procedure ActInterface;

    procedure Act_Hold;
    procedure Del_Hold;
    procedure No_Procesar;
    procedure Buscar_Combo;
    procedure Buscar_Doctor;
    procedure Buscar_Muestra;
    procedure Act_Cliente;
    procedure Insert_Card_Descuento;
    procedure Insertar_Combo_Precio;
    procedure Insertar_Combo_Blanco;
    procedure Buscar_Cod_Cups(cliente: String; prueba: String);

    procedure CrearCobroAxapta(cliente: string; paciente: string; tipodoc: string;
                               cobroid: string; documento: string; fecha: TDateTime;
                               moneda:  string; aplica: string; _refId: Integer;
                               valor: Double; _areaId: string; _recId: Integer;
                               _padreId: string; _cuadro: Integer; _transf: Integer;
                               _suc: String);

    procedure CrearTransCliente(cliente: string; tipodoc: string; documento: string;
              tipoaplica: string; documentoaplica: string;fecha : TDateTime; valor: Double; moneda :string);

    function ExisteCobro    : Boolean;
    function TipoCobro      : String;
    function GetEntradaID   : String;
    function GetMuestraNo   : String;
    function GetReciboNo : String;
    function GetNotaCredito : String;
    function Asignar_Descuento : Boolean;
    function CanCambiarLaboratorio : Boolean;
    function ValidateCliente : Boolean;
    function GetNextSecDoc(tipodoc : string) : String;
    Function Crear_Usuario(nombre : String) : String;
    Function Crear_Clave(cedularnc : String) : Integer;
    Function Valida_Usuario(usuario : String) : Boolean;
    Function Buscar_User_Internet(Cliente : String) : Boolean;
    Procedure Procesar_Usuario;
    Procedure Insertar_Usuario(usuario: string; clave: string; name: string;
                               cedula: string; cliente: string; tipo: string;
                               actual: string);
  private
    { Private declarations }
  public
    { Public declarations }

    noseguro             : TcxStyle;

    operacion            : String;
    cobroid              : String;
    Docto_Ant            : String;
    Muestra_Ant          : String;
    ClienteFactura       : String;
    ClienteRecibo        : String;
    ConceptoNC           : String;
    valorNC              : Double;
    valorND              : Double;
    pendiente            : Double;
    efectivo             : Double;
    sumatotal            : Double;
    devuelta             : Double;
    comboprecio          : Boolean;
    Act_2da              : Boolean;
    seg_late             : Boolean;
    Record_Ant           : Integer;
    factor               : Integer;
    _recorId             : Integer;
    curCoberturaAplicada : Integer;

////////////////////////////////////////////////////////////////////////////////

    SecuenciaLabel       : integer;
    SecAct               : integer;
    secuencia            : integer;
    Descripcion          : string;
    depact,muestraact    : string;
    colact               : integer;

    qfindLb              : TADOQuery;    
    qfindCltParams       : TADOQuery;
    qfindPacientes       : TADOQuery;
    qfindSucursal        : TADOQuery;

////////////////////////////////////////////////////////////////////////////////

    Procedure Mirar_Valor_CAB;
    Procedure Mirar_Valor_DET;
    Function  Cargar_Valor(campo: String; valor: Variant): String;

    procedure correccion;
    procedure Val_Descuento;
    procedure Buscar_Cliente;
    procedure Buscar_Paciente;
    procedure Buscar_Grupo_Clt(Grupo: string);
    procedure Buscar_Grupo_Pac(Grupo: string);

    procedure Agregar_Pacientes(PacienteId : String);

    function  buscar_valores : Boolean;
    procedure Confirmar_Precio_Prueba;

    procedure NuevaVenta;
    procedure BuscarDatos;
    procedure RefrescarInterface;
    procedure CancelarCobro;
    procedure ActTotales;
    procedure Act_Cobertura;

    procedure ActNotaDebito;
    procedure CrearNotaDebito;
    procedure CrearNotaCredito;

    procedure Boton_Cobrar;
    procedure Viejo_Cobrar;

    procedure Act_RecIdDetalle;
    procedure VerificarPagoDiferencia;
    procedure RefrescarGrid(SoloLectura : Boolean);
    function GetSecuenciaId : Integer;
    function MaxSecuenciaLinea : Integer;
    function Buscar_Linea: Integer;
    function ValidarMontoCobrado : Boolean;
    function CoberturaAplicada : Double;
    function Valor_Cobertura(_registro: integer) : Double;
    function ImporteLinea : Double;
    function TotalDescuentoLinea : Double;
    function ImporteBrutoExclLineaActual(refrecid : integer ;secuencia : integer) : Double;
    function ImporteBrutoExclLineaActualAplica(refrecid : integer ;secuencia : integer) : Double;
    function ImporteBrutoExclLineaActualAplicaAndCobertura(refrecid : integer ;secuencia : integer) : Double;

    procedure InsertarLabel;
    procedure ImprimirLabel;
    procedure InsertarMaterialesPrueba;
    procedure InsertarMaterialesDefault;
    procedure CrearLabels(SecAct : integer);
    function  BuscarDia(dia: Integer) : Integer;
    function  FechaPrometida(Prueba: string) : TDate;
    function  Buscar_Labels(muestra: String; prueba: String): Boolean;
  end;

Type
  TDias = Record
  Lunes, Martes, Miercoles, Jueves, Viernes, Sabado, Domingo : Integer;
  End;


var
  frmPuntoVenta_Backup   : TfrmPuntoVenta_Backup;
  qfindprueba     : TADOQuery;
  qpruebadesc     : TADOQuery;
  qfindprint      : TADOQuery;
  qfindcodcup     : TADOQuery;
  qfindRepetir    : TADOQuery;
  qfindcombo      : TADOQuery;
  qfindGrupoClt   : TADOQuery;
  qfindGrupoPac   : TADOQuery;
  Dias            : TDias;

implementation

uses ActionsDM, DataModule, Main, Pymeconst, UInterfaseAs400;

{$R *.dfm}


function TfrmPuntoVenta_Backup.ValidateCliente : Boolean;
var
 qfind : TADOQuery;
 ret : Boolean;
 suc : Boolean;
begin
  inherited;
  suc := True;
  ret := True;

  //Buscando los Datos del Cliente a Facturar y Sus Parametros.
  Buscar_Cliente;
{
  //Validando el Grupo Obligatorio de la Sucursal.
  If (qfindSucursal.FieldByName('GrupoId').AsString <> '') Then
   Begin
     If (qfindSucursal.FieldByName('GrupoId').AsString <> qrEntradaPacienteOrigen.Value) then
       Begin
        If Not suc then
          Begin
            suc := False;
            ret := False;
            DM.Warning('El Cliente Seleccionado NO Pertenece al Grupo Autorizado a Esta Sucursal.');
          End;
       End
     Else
      suc := True;
   End;

  If (qfindSucursal.FieldByName('ClienteId').AsString <> '') Then
    If (qfindSucursal.FieldByName('ClienteId').AsString <> qrEntradaPacienteClienteID.Value) Then
      suc := False;

  //Validando el Grupo Obligatorio de la Sucursal.
  If (qfindSucursal.FieldByName('GrupoId').AsString <> '') Then
    If (qfindSucursal.FieldByName('GrupoId').AsString <> qrEntradaPacienteOrigen.Value) then
      suc := False
     Else
      suc := True;

  If Not suc then
    Begin
     suc := False;
     ret := False;
     DM.Warning('El Cliente Seleccionado NO Pertenece al Grupo Autorizado a Esta Sucursal.');
    End;
}

  //Validando el Cliente Obligatorio de la Sucursal.
  If (qfindSucursal.FieldByName('Cliente_Uno').AsString <> '') And
     (qfindSucursal.FieldByName('Cliente_Dos').AsString <> '') Then
    If (qfindSucursal.FieldByName('Cliente_Uno').AsString <> qrEntradaPacienteClienteID.Value) And
       (qfindSucursal.FieldByName('Cliente_Dos').AsString <> qrEntradaPacienteClienteID.Value) Then
     Begin
      suc := False;
      ret := False;
      DM.Warning('El Cliente Seleccionado NO Pertenece al Grupo Autorizado a Esta Sucursal.');
     End;

  //Validando el Cliente y el Grupo de Cliente.
  if qrEntradaPacienteClienteID.Value <> '' then
   begin
    qfind := DM.Find('SELECT * FROM PTCliente WHERE ClienteId = :cli', qrEntradaPacienteClienteID.Value);
    if qfind.FieldByName('GrupoCliente').AsString <> qrEntradaPacienteOrigen.Value then
     begin
      DM.Warning('El Cliente Seleccionado NO Pertenece a Este Grupo de Clientes.');
      ret := false;
     end;
   end;

  result := ret;
  FreeAndNil(qfind);
end;


procedure TfrmPuntoVenta_Backup.CrearTransCliente(cliente: string; tipodoc: string; documento: string;
tipoaplica: string; documentoaplica: string; fecha : TDateTime; valor: Double; moneda :string);
var
 qinsert : TADOQuery;
begin
 qinsert := DM.NewQuery;

 qinsert.Close;
 qinsert.SQL.Text := ' Insert into PTClienteTransacciones(ClienteId, fecha, TipoDoc, Documento, TipoAplica, '+
                     ' DocumentoAplica,Valor,MonedaId,ValorMST) Values (:0,:1,:2,:3,:4,:5,:6,:7,:8)';
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


procedure TfrmPuntoVenta_Backup.CrearCobroAxapta(cliente: string; paciente: string; tipodoc: string;
                                          cobroid: string; documento: string; fecha: TDateTime;
                                          moneda:  string; aplica: string; _refId: Integer;
                                          valor: Double; _areaId: string; _recId: Integer;
                                         _padreId: string; _cuadro: Integer; _transf: Integer;
                                         _suc: String);
Var
 qinsert : TADOQuery;
begin
 qinsert := DM.NewQuery;

 qinsert.Close;
 qinsert.SQL.Text := ' Insert into PTCobroAxapta(CLIENTEID, PACIENTEID, TIPODOC, COBROID, DOCUMENTO, FECHA, '+
                     ' MONEDAID, DOCUMENTOAPLICA, REFRECID, VALOR, VALORMST, DATAAREAID, RECID, CLIENTEPADRE, '+
                     ' CUADRADO, TRANSFERIDO, SUCURSALID) Values (:0,:1,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16)';
 qinsert.Parameters[0].Value := cliente;
 qinsert.Parameters[1].Value := paciente;
 qinsert.Parameters[2].Value := tipodoc;
 qinsert.Parameters[3].Value := cobroid;
 qinsert.Parameters[4].Value := documento;
 qinsert.Parameters[5].Value := fecha;
 qinsert.Parameters[6].Value := moneda;
 qinsert.Parameters[7].Value := aplica;
 qinsert.Parameters[8].Value := _refId;
 qinsert.Parameters[9].Value := valor;
 qinsert.Parameters[10].Value := DM.ValorMoneda(valor,moneda,DM.qrparametroMonedaID.Value,fecha);
 qinsert.Parameters[11].Value := _areaId;
 qinsert.Parameters[12].Value := _recId;
 qinsert.Parameters[13].Value := _padreId;
 qinsert.Parameters[14].Value := _cuadro;
 qinsert.Parameters[15].Value := _transf;
 qinsert.Parameters[16].Value := _suc;
 qinsert.ExecSQL;

 FreeAndNil(qinsert);
end;


procedure TfrmPuntoVenta_Backup.CuadredeCaja1Click(Sender: TObject);
begin
  inherited;
  frmMain.LanzaVentana(1402);
end;

procedure TfrmPuntoVenta_Backup.CuadredeCaja2Click(Sender: TObject);
begin
  inherited;
  frmMain.LanzaVentana(-7987);
end;

procedure TfrmPuntoVenta_Backup.RefrescarGrid(SoloLectura: Boolean);
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


procedure TfrmPuntoVenta_Backup.ActInterface;
begin
 Act_Hold;
 Val_Descuento;

 DM.qrParametro.close;
 DM.qrParametro.open;
 qrEntradapacienteFechaEntrada.Required := False;
 qrEntradaPacienteDoctorID.Required := False;
 qrEntradaPacientePolizaID.Required := False;

 qrEntradaPacienteSexo.Required := True;
 qrEntradaPacienteEdadPaciente.Required := True;
{
 lcGeneralItem16.Visible := false;
 lcGeneralItem17.Visible := false;
 lcGeneralItem18.Visible := false;
 lcGeneralItem19.Visible := false;
 lcGeneralItem20.Visible := false;
}
 lcGeneralGroup6.Visible := false;

 lcGeneralItem13.Visible := false;
 lcGeneralItem22.Visible := false;
 lcGeneralItem31.Visible := false;

 ConfirmarCobertura1.Enabled := false;
 GridPruebasEntradasPacienteDetCoberturaAplica.Visible := false;
 GridPruebasEntradasPacienteDetCodigoCupID.Visible := false;
// GridPruebasEntradasPacienteDetCoberturaExpPorc.Visible := false;
// GridPruebasEntradasPacienteDetCoberturaEspecial.Visible := false;
 if qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSeg.Value then
 begin
  lcGeneralItem15.Caption := 'Afiliado No.:';
  qrEntradaPacientePolizaID.DisplayLabel := 'Afiliado No.:';
{
  lcGeneralItem16.Visible := true;
  lcGeneralItem17.Visible := true;
  lcGeneralItem18.Visible := true;
  lcGeneralItem19.Visible := true;
  lcGeneralItem20.Visible := true;
}
  lcGeneralGroup6.Visible := true;
//  ConfirmarCobertura1.Enabled := not qrEntradaPacienteCoberturaConfirmada.AsBoolean;
  ConfirmarCobertura1.Enabled := not (qrEntradaPacienteCoberturaConfirmada.AsInteger = 1);

  If (qrEntradaPacienteCoberturaRechazada.Value = 1) then
    ConfirmarCobertura1.Enabled := False;

  GridPruebasEntradasPacienteDetCoberturaAplica.Visible := true;
  GridPruebasEntradasPacienteDetCodigoCupID.Visible := True;
  //GridPruebasEntradasPacienteDetCoberturaExpPorc.Visible := true;
  //GridPruebasEntradasPacienteDetCoberturaEspecial.Visible := true;
  qrEntradaPacienteDoctorID.Required := True;
  qrEntradaPacientePolizaID.Required := True;
 end
 else
  if qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoCli.Value then
  begin
   lcGeneralItem15.Caption := 'Record';
   qrEntradaPacientePolizaID.DisplayLabel := 'Record';
   qrEntradapacienteFechaEntrada.Required := True;

   lcGeneralItem13.Visible := True;
   lcGeneralItem22.Visible := True;
   lcGeneralItem31.Visible := True;
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
       qrEntradaPacienteSexo.Required := False;
       qrEntradaPacienteEdadPaciente.Required := False;
     end
     else
      begin
       lcGeneralItem15.Caption := 'Referencia';
       qrEntradaPacientePolizaID.DisplayLabel := 'Referencia';
      end;
end;

procedure TfrmPuntoVenta_Backup.ImpresionRecibo;
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

  If (DM.qrCobroDetalle.RecordCount > 0) then
    Begin
      If DM.qrCobroCoberturaSeguro.value > 0 then
        begin
          DM.ppImpReciboConSeguro.DeviceType := dtScreen;
          DM.ppImpReciboConSeguro.Print;
        end
      else
        begin
          DM.ppImpReciboSinSeguro.DeviceType := dtScreen;
          DM.ppImpReciboSinSeguro.Print;
        end;
    End;
end;


procedure TfrmPuntoVenta_Backup.ImpresionNC;
begin
  DM.qrCobro.Close;
  DM.qrCobro.Parameters[0].Value := cobroid;
  DM.qrCobro.Open;

  DM.qrEntradaPacienteDetalle.Close;
  DM.qrEntradaPacienteDetalle.Parameters[0].Value := DM.qrCobroRecid.Value;
  DM.qrEntradaPacienteDetalle.Open;

  If (DM.qrCobro.RecordCount > 0) then
    Begin
      If DM.qrCobroCoberturaSeguro.value > 0 then
        begin
          DM.ppImpNCConSeguro.DeviceType := dtScreen;
          DM.ppImpNCConSeguro.Print;
        end
      else
        begin
          DM.ppImpNCSinSeguro.DeviceType := dtScreen;
          DM.ppImpNCSinSeguro.Print;
        end;
    End;
end;

procedure TfrmPuntoVenta_Backup.CambiarLaboratorioNoenlasLineas1Click(Sender: TObject);
begin
  inherited;
  if qrEntradaPacienteDetalle.RecordCount > 0 then
     frmMain.LanzaVentana(-7991)
  else
     beep;
end;

procedure TfrmPuntoVenta_Backup.CancelarCobro;
begin
 DM.DataBase.Execute('Delete from PTCobro Where CobroID = '+#39+cobroid+#39);
 DM.DataBase.Execute('DELETE FROM PTCobroDetalle WHERE CobroID = '+#39+cobroid+#39);
 cobroid := '';
end;


function TfrmPuntoVenta_Backup.GetSecuenciaId : Integer;
Var
 numero   : Integer;
 qsecdoc  : TADOQuery;
begin
 qsecdoc := DM.NewQuery;

 qsecdoc.close;
 qsecdoc.SQL.Text := ' SELECT * FROM PTSecuencia ';
 qsecdoc.Open;

 Numero := qsecdoc.FieldByName('SECUENCIA').AsInteger + 1;

 qsecdoc.close;
 qsecdoc.SQL.Text := ' UPDATE PTSecuencia SET secuencia = :sec ';
 qsecdoc.Parameters[0].Value := numero;
 qsecdoc.ExecSQL;

 Result := Numero;

 FreeAndNil(qsecdoc);
end;


function TfrmPuntoVenta_Backup.GetMuestraNo : String;
Var
 qsecdoc : TADOQuery;
 anio, mes, dia : Word;
begin
// result := GetNextSecDoc('MT');

 DM.qrParametro.close;
 DM.qrParametro.open;

 SecuenciaLabel := DM.qrParametroSecuenciaAct.Value + 1;

 DM.qrParametro.Edit;
 DM.qrParametroSecuenciaAct.Value := SecuenciaLabel;
 DM.qrParametro.Post;

////////////////////////////////////////////////////////////////////////////////

 DecodeDate(DM.SystemDate, anio, mes, dia);

 qsecdoc := DM.NewQuery;

 qsecdoc.close;
 qsecdoc.SQL.Text := ' SELECT * FROM PTSecuenciaDoc Where TipoDoc = '+ #39 + 'MT' + #39 +
                     ' AND SucursalId = '+ #39 + DM.CurSucursal + #39;
 qsecdoc.Open;

{
// Copy(IntToStr(anio), 3, 2) + '-'+ FormatFloat('00',strtofloat(DM.CurSucursal)) + '-' +

 If (qsecdoc.FieldByName('UsarIdentificador').AsBoolean) then
  result := qsecdoc.FieldByName('TipoDoc').asstring + '-'+
            Copy(IntToStr(anio), 3, 2) + '-' + FormatFloat('000',strtofloat(DM.CurSucursal)) + '-' +
            FormatFloat('000000',qsecdoc.FieldByName('Secuencia').Asfloat)
 Else
  result := Copy(IntToStr(anio), 3, 2) + '-' + FormatFloat('000',strtofloat(DM.CurSucursal))  + '-' +
            FormatFloat('000000',qsecdoc.FieldByName('Secuencia').Asfloat);
}
{
// OJO JUAN JOSE BLOQUEADO PARA CREAR UNA SECUENA PEQUEÑA E IMPRIMIR EL CODIGO DE BARRA.

 If (qsecdoc.FieldByName('UsarIdentificador').AsBoolean) then
  result := qsecdoc.FieldByName('TipoDoc').asstring +
            Copy(IntToStr(anio), 3, 2) + FormatFloat('000',strtofloat(DM.CurSucursal)) +
            FormatFloat('000000',qsecdoc.FieldByName('Secuencia').Asfloat)
 Else
  result := Copy(IntToStr(anio), 3, 2) + FormatFloat('000',strtofloat(DM.CurSucursal)) +
            FormatFloat('000000',qsecdoc.FieldByName('Secuencia').Asfloat);

// OJO JUAN JOSE BLOQUEADO PARA CREAR UNA SECUENACIA PEQUEÑA E IMPRIMIR EL CODIGO DE BARRA.

 If (qsecdoc.FieldByName('UsarIdentificador').AsBoolean) then
  result := qsecdoc.FieldByName('TipoDoc').asstring +
            Copy(IntToStr(anio), 3, 2) + FormatFloat('00',strtofloat(DM.CurSucursal)) +
            FormatFloat('0000',qsecdoc.FieldByName('Secuencia').Asfloat)
 Else
  result := Copy(IntToStr(anio), 3, 2) + FormatFloat('00',strtofloat(DM.CurSucursal)) +
            FormatFloat('0000',qsecdoc.FieldByName('Secuencia').Asfloat);
}
 If (qsecdoc.FieldByName('UsarIdentificador').AsBoolean) then
  result := qsecdoc.FieldByName('TipoDoc').asstring +
            Copy(IntToStr(anio), 3, 2) + DM.CurSucursal +
            FormatFloat('0000',qsecdoc.FieldByName('Secuencia').Asfloat)
 Else
  result := Copy(IntToStr(anio), 3, 2) + DM.CurSucursal +
            FormatFloat('0000',qsecdoc.FieldByName('Secuencia').Asfloat);

 qsecdoc.close;
 qsecdoc.SQL.Clear;
 qsecdoc.SQL.Text := 'Update PTSecuenciaDoc set Secuencia = Secuencia + 1 Where TipoDoc = '+ #39 + 'MT' + #39;
 qsecdoc.ExecSQL;

 FreeAndNil(qsecdoc); 
end;


function TfrmPuntoVenta_Backup.GetReciboNo : String;
begin
  result := GetNextSecDoc('RI');
end;


function TfrmPuntoVenta_Backup.GetNotaCredito : String;
begin
  result := GetNextSecDoc('NC');
end;


procedure TfrmPuntoVenta_Backup.ActDetalle;
var
 bM : TBookMark;
 qact : TADOQuery;
begin
 bM := qrEntradaPacienteDetalle.GetBookmark;

 //Pruebas de los Seguros.
 curCoberturaAplicada := 0;

 qrEntradaPacienteDetalle.DisableControls;
 qrEntradaPacienteDetalle.First;

 qact := DM.NewQuery;

 while not qrEntradaPacienteDetalle.Eof do
 begin
  //Calculando el Nuevo Precio de la Prueba Dependiendo del Cliente Actual.
  Confirmar_Precio_Prueba;

  qact.Close;
  qact.SQL.Clear;
  qact.SQL.Text := ' UPDATE PTEntradaPacienteDetalle SET '+
                   ' CoberturaAplicada = :cob, '+
                   ' DescuentoLineaAplicado = :desc '+
                   ' WHERE RefRecid = :rec '+
                   ' AND Secuencia = :sec ';
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


function TfrmPuntoVenta_Backup.ImporteBrutoExclLineaActual(refrecid : integer ;secuencia : integer) : Double;
var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;
 qfind.Close;
 qfind.SQL.Text := ' SELECT SUM(Precio) '+
                   ' FROM PTEntradaPacienteDetalle '+
                   ' WHERE RefRecid = :rec '+
                   ' AND Secuencia <> :sec ';
 qfind.Parameters[0].Value := refrecid;
 qfind.Parameters[1].Value := secuencia;
 qfind.Open;

 if qfind.Fields[0].AsString <> '' then
    result := qfind.Fields[0].AsFloat
 else
    result := 0;

 FreeAndNil(qfind);
end;


function TfrmPuntoVenta_Backup.ImporteBrutoExclLineaActualAplica(refrecid : integer ;secuencia : integer) : Double;
var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;
 qfind.Close;
 qfind.SQL.Text := ' SELECT SUM(Precio) '+
                   ' FROM PTEntradaPacienteDetalle '+
                   ' WHERE RefRecid = :rec '+
                   ' AND Secuencia <> :sec '+
                   ' AND CoberturaAplica = 1 ';
 qfind.Parameters[0].Value := refrecid;
 qfind.Parameters[1].Value := secuencia;
 qfind.Open;

 if qfind.Fields[0].AsString <> '' then
    result := qfind.Fields[0].AsFloat
 else
    result := 0;

 FreeAndNil(qfind);
end;


function TfrmPuntoVenta_Backup.ImporteBrutoExclLineaActualAplicaAndCobertura(refrecid : integer ;secuencia : integer) : Double;
var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;
 qfind.Close;
 qfind.SQL.Text := ' SELECT SUM(Precio), SUM(CoberturaAplicada) '+
                   ' FROM PTEntradaPacienteDetalle '+
                   ' WHERE RefRecid = :rec '+
                   ' AND Secuencia <> :sec '+
                   ' AND CoberturaAplica = 1 ';
 qfind.Parameters[0].Value := refrecid;
 qfind.Parameters[1].Value := secuencia;
 qfind.Open;

 if qfind.Fields[0].AsString <> '' then
    result := qfind.Fields[0].AsFloat - qfind.Fields[1].AsFloat
 else
    result := 0;

 FreeAndNil(qfind);
end;


function TfrmPuntoVenta_Backup.TotalDescuentoLinea : Double;
var
 DescuentoPorc,DescuentoPesosCab,DescuentoPesos : Double;
begin
  DescuentoPorc := 0;
  DescuentoPesosCab := 0;
  DescuentoPesos := 0;

  //Calculando el Descuento a las PRUEBAS y los COMBOS.
  qpruebadesc := DM.find('Select * from PTPrueba where PruebaID = :pru',qrEntradaPacienteDetallePruebaID.value);

  //Calculando el Descuento a las PRUEBAS y los COMBOS.
  If (qpruebadesc.FieldByName('Tipo').Value = 'P') Or
     (qpruebadesc.FieldByName('Tipo').Value = 'C') Then
    Begin
      DescuentoPorc := (qrEntradaPacienteDetallePrecio.Value -
                        CoberturaAplicada - qrEntradaPacienteDetalleDescuento.Value) *
                        (qrEntradaPacienteDetalleDescPct.Value / 100);

      if (qrEntradaPacienteDescuentoValor.Value > 0) then
        DescuentoPesosCab := qrEntradaPacienteDetallePrecio.Value * qrEntradaPacienteDescuentoValor.Value /
                             (ImporteBrutoExclLineaActual(qrEntradaPacienteDetalleRefRecid.Value,
                              qrEntradaPacienteDetalleSecuencia.Value) + (qrEntradaPacienteDetallePrecio.Value));

      if (qrEntradaPacienteDescuentoPorc.Value  > 0) then
        DescuentoPorc := DescuentoPorc + ((qrEntradaPacienteDetalleTotalLinea.Value - DescuentoPesosCab - CoberturaAplicada) * qrEntradaPacienteDescuentoPorc.Value /100);

      DescuentoPesos := DescuentoPesosCab + qrEntradaPacienteDetalleDescuento.Value;
    End;

  result := DescuentoPesos + DescuentoPorc;
end;


function TfrmPuntoVenta_Backup.ImporteLinea : Double;
Var
 Valor, DescPorc : Double;
begin
 DescPorc := 0;

 Valor := qrEntradaPacienteDetallePrecio.Value - qrEntradaPacienteDetalleDescuento.Value;

 if (qrEntradaPacienteDetalleDescPct.Value > 0) then
     DescPorc := Valor * qrEntradaPacienteDetalleDescPct.Value / 100;

 result := Valor - DescPorc;
end;


function TfrmPuntoVenta_Backup.CoberturaAplicada : Double;
var
 coberturaporc, CoberturaPesosCab : Double;
begin
 If (qrEntradaPacienteCoberturaRechazada.Value = 1) Then
   result := 0
 Else                                 
   Begin
    If (qrEntradaPacienteDetalleCoberturaAplica.Value = 1) then
     begin
      if (qrEntradaPacienteDetalleCoberturaEspecialPorc.Value > 0) or
         (qrEntradaPacienteDetalleCoberturaEspecial.Value > 0) then
       begin
//        if not qrEntradaPacienteDetalleCoberturaExpPorc.Value then
        if not (qrEntradaPacienteDetalleCoberturaExpPorc.Value = 1) then
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

         if (qrEntradaPacienteCoberturaConfirmada.Value = 1) then
           begin
            if (qrEntradaPacienteCoberturaValor.Value > 0) then
                CoberturaPesosCab := qrEntradaPacienteDetallePrecio.Value * qrEntradaPacienteCoberturaValor.Value /
                                     (ImporteBrutoExclLineaActualAplica(qrEntradaPacienteDetalleRefRecid.Value,
                                      qrEntradaPacienteDetalleSecuencia.Value) +
                                      qrEntradaPacienteDetallePrecio.Value)
            else
             if (qrEntradaPacienteCoberturaPorc.Value > 0.01 ) Or (EdCoberturaValor.Value > 0.01 ) Then
                coberturaporc := (qrEntradaPacienteDetalleTotalLinea.Value -
                                  CoberturaPesosCab) *
                                  EdCoberturaValor.Value /100;
//                                  qrEntradaPacienteCoberturaPorc.Value /100;
           end
         else
           begin
            if (qrEntradaPacienteCoberturaPorc.Value > 0.01 ) Or (EdCoberturaValor.Value > 0.01 ) Then
                coberturaporc := (qrEntradaPacienteDetalleTotalLinea.Value -
                                  CoberturaPesosCab) *
                                  EdCoberturaValor.Value /100;
//                                  qrEntradaPacienteCoberturaPorc.Value /100;
           end;

         result := DM.Redondeo(coberturaporc + CoberturaPesosCab);
       end;
     end
    else
     result := 0;
   end;

{
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
                             (ImporteBrutoExclLineaActualAplica(qrEntradaPacienteDetalleRefRecid.Value,qrEntradaPacienteDetalleSecuencia.Value) + qrEntradaPacienteDetallePrecio.Value)
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
}
end;


function TfrmPuntoVenta_Backup.Valor_Cobertura(_registro : integer) : Double;
var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;
 qfind.Close;
 qfind.SQL.Text := ' SELECT SUM(Precio) FROM PTEntradaPacienteDetalle '+
                   ' WHERE RefRecid = :rec '+
                   ' AND CoberturaAplica = 1 ';
 qfind.Parameters[0].Value := _registro;
 qfind.Open;

 if qfind.Fields[0].AsString <> '' then
   result := DM.Redondeo(qfind.Fields[0].AsFloat)
 else
   result := 0;

 FreeAndNil(qfind);
end;


procedure TfrmPuntoVenta_Backup.CodigodeBarra1Click(Sender: TObject);
begin
  inherited;
  Showmessage('Pendiente de Toma de Muestra.!!!');
end;

procedure TfrmPuntoVenta_Backup.RegistrarCobrosTemporales1Click(Sender: TObject);
begin
  inherited;
  frmMain.LanzaVentana(-8024);
end;

procedure TfrmPuntoVenta_Backup.RegistrarFechaPrometida1Click(Sender: TObject);
begin
  inherited;
  Showmessage('Pendiente de Toma de Muestra.!!!');
end;

procedure TfrmPuntoVenta_Backup.ConfirmarCobertura1Click(Sender: TObject);
begin
  inherited;
//  frmMain.LanzaVentana(-7993); //Confirmando la Cobertura Normal.
//  frmMain.LanzaVentana(-8021); //Confirmando la Cobertura Tardia.
  If (qrEntradaPacienteCoberturaRechazada.Value = 0) And
     (qrEntradaPacienteCoberturaConfirmada.Value = 0) Then
    frmMain.LanzaVentana(-8021)
  else
    Beep;
end;

procedure TfrmPuntoVenta_Backup.btcancelarClick(Sender: TObject);
begin
  inherited;
  if qrEntradaPaciente.State = dsinsert then
   begin
    if DM.Mensaje('Existe una entrada en proceso. Desea cancelar la entrada?',mb_yesno) = id_yes then
     begin
      if qrEntradaPacienteEntradaID.Value = '' then
       begin
        DM.DataBase.Execute('Delete from PTEntradaPacienteDetalle Where Refrecid = '+qrEntradaPacienteRECID.AsString);
        DM.DataBase.Execute('Delete from PTGastosVarioTrans Where Refrecid = '+qrEntradaPacienteRECID.AsString);
        DM.DataBase.Execute('Delete from PTMaterialesFactura Where Refrecid = '+qrEntradaPacienteRECID.AsString);        
        if ExisteCobro then
         begin
          CancelarCobro;
          btgrabar.Enabled := True;
// OJO - JUAN JOSE - BLOQUEADO PARA INTEGRARLO AL BOTON DE GUARDAR.          btcobrar.Enabled := True;
          btnotacredito.Enabled := True;
        end;
       end;

      NuevaVenta;
     end;
   end;

  if qrEntradaPacienteEntradaID.Value <> '' then
   begin
    if qrEntradaPaciente.State = dsEdit then qrEntradaPaciente.Cancel;
     Desabilitarbotones(false);
    NuevaVenta;
   end;
end;

procedure TfrmPuntoVenta_Backup.btclienteClick(Sender: TObject);
begin
  inherited;
  if (qrEntradaPacienteCoberturaConfirmada.Value = 1) Or
     (qrEntradaPacienteCoberturaRechazada.Value = 1) Then
     DM.Info('La Cobertura Ha Sido Confirmada ó Rechazada; El Cliente NO Puede Ser Cambiado.')
  else
  begin
   frmMain.LanzaVentana(-7996);
   EdCliente.SetFocus;
   actinterface;
  end;
end;

procedure TfrmPuntoVenta_Backup.bteliminarClick(Sender: TObject);
begin
  inherited;
  if (qrEntradaPacienteDetallePruebaID.Text <> '') and (qrEntradaPacienteTotalPagado.Value = 0) then
  begin
   qrEntradaPacienteDetalle.Delete;
  end
  else
   beep;
end;

procedure TfrmPuntoVenta_Backup.btentradaClick(Sender: TObject);
var
 continuar : Boolean;
begin
  inherited;
 continuar := True;
 if (qrEntradaPaciente.State in [dsinsert,dsedit]) then
 begin
  if DM.Mensaje('Existe una entrada en proceso. Desea cancelar la entrada?',mb_yesno) = id_yes then
  begin
   if qrEntradaPacienteEntradaID.Value = '' then
   begin
    DM.DataBase.Execute('Delete from PTEntradaPacienteDetalle Where Refrecid = '+qrEntradaPacienteRECID.AsString);
    DM.DataBase.Execute('Delete from PTGastosVarioTrans Where Refrecid = '+qrEntradaPacienteRECID.AsString);

    if ExisteCobro then
    begin
     CancelarCobro;
     btgrabar.Enabled := True;
// OJO - JUAN JOSE - BLOQUEADO PARA INTEGRARLO AL BOTON DE GUARDAR.     btcobrar.Enabled := True;
     btnotacredito.Enabled := True;
    end;

   end;
  end
  else
   continuar := False;
 end;

 if continuar then
   Begin
    Operacion := '';
    frmMain.LanzaVentana(-7995);
   end;
end;


procedure TfrmPuntoVenta_Backup.btgrabarClick(Sender: TObject);
var
 imprimirFactPaciente : Boolean;
 imprimirFactExterior : Boolean;
 imprimirRecibo, imprimirNC : Boolean;
begin
 inherited;
 if ValidateRecord(dsEntradaPaciente.DataSet) and ValidateCliente then
  begin
   if DM.Mensaje('Desea Grabar Este Registro?',mb_yesno) = id_yes then
    begin
     qrEntradaPaciente.Edit;
     qrEntradaPacienteHold.Value := 0;
     qrEntradaPacienteUserId.Value := DM.CurUser;
     qrEntradaPacienteFechaRegistro.Value := DM.SystemDate;
     qrEntradaPacienteHoraRegistro.Value := TimeToStr(Time);

     imprimirFactPaciente := False;
     imprimirFactExterior := False;
     imprimirRecibo := DM.qrParametroImprimirAlGrabarRecibo.Value;
     imprimirNC := DM.qrParametroImprimirAlGrabarNC.Value;

     if qrEntradaPacienteEntradaID.Value = '' then
      begin
         qrEntradaPacienteEntradaID.Value := GetEntradaID;

        if (QrEntradaPacienteFactExterior.Value = 1) then
          Begin
           imprimirFactPaciente := False;
           imprimirFactExterior := True;
         end
       Else
         imprimirFactPaciente := DM.qrParametroImprimirAlGrabar.Value;
      end;

     if (copy(qrEntradaPacienteEntradaID.value,1,3) = 'COT') Then
       Begin
        If (qrEntradaPacienteTipoDocumento.Value = 0) or
           (qrEntradaPacienteTipoDocumento.Value = 3) or
           (QrEntradaPacienteFactExterior.Value = 1) then
          Begin
            qrEntradaPacienteEntradaID.Value := GetEntradaID;

            If (qrEntradaPacienteTipoDocumento.Value = 3) or
               (QrEntradaPacienteFactExterior.Value = 1) then
              Begin
                qrEntradaPacienteTipoDocumento.Value := 3;
                qrEntradaPacienteNoAS400.Value := 1;
                qrEntradaPacienteNoAxapta.Value := 1;
                qrEntradaPacienteNoFactura.Value := 1;
                qrEntradaPacienteFactExterior.Value := 1;
                qrEntradaPacienteMonedaID.Value := DM.qrParametroMonedaDolares.Value;
                imprimirFactPaciente := False;
                imprimirFactExterior := True;
              end
            Else
             imprimirFactPaciente := DM.qrParametroImprimirAlGrabar.Value;
          end;
       end;

//     If ( Operacion <> '' ) Then
     If qrEntradaPaciente.State in [dsInsert] Then
       Begin
        //Actualizando los Datos del Cliente.
        Act_Cliente;

        //Insertando Los Datos de la Tarjeta de Descuento.
        Insert_Card_Descuento
       End;
{
//     If qrEntradaPacienteDetalle.State in [dsEdit, dsInsert] then
//       Showmessage('El Detalle Esta En Edicion.!!!');

     If qrEntradaPacienteDetalle.State in [dsEdit, dsInsert] then
     if qrEntradaPaciente.State in [dsEdit, dsInsert] then
       Begin
        Mirar_Valor_DET;
        qrEntradaPacienteDetalle.Edit;
        qrEntradaPacienteDetalle.Post;
       End;
}
     if qrEntradaPaciente.State in [dsEdit, dsInsert] then
       Begin
//        Mirar_Valor_CAB;
        qrEntradaPaciente.Edit;
        qrEntradaPacienteHold.Value := 0;
        qrEntradaPaciente.Post;
       end;

     If qrEntradaPacienteDetalle.State in [dsEdit, dsInsert] then
       Begin
        qrEntradaPacienteDetalle.Edit;
        qrEntradaPacienteDetalle.Post;
       End;

     //Generando las Acciones del Boton COBRAR Original.
     If Not ExisteCobro Then Boton_Cobrar;

     if ExisteCobro then
      begin
       if TipoCobro = 'RI' then
         ActCobro
       else
         ActNotaCredito;
      end;

//    If (qfindSucursal.FieldByName('Impresiones').AsBoolean <> True) Then
    If (qfindSucursal.FieldByName('Impresiones').AsInteger <> 1) Then
      Begin
       imprimirNC := False;
       imprimirRecibo := False;
       imprimirFactExterior := False;
       imprimirFactPaciente := False;
      end;

     if imprimirFactExterior then FacturaExterior1Click(nil);

     if (qrEntradaPacienteCoberturaSeguro.Value > 1) then VolantedePruebasARS1Click(nil);

     if imprimirFactPaciente then VolantedePruebasTomaMuestra1Click(nil);

     If (imprimirRecibo) and
        (cobroid <> '') and
        (TipoCobro = 'RI') then
      ImpresionRecibo;

     If (imprimirNC) and
        (cobroid <> '') and
        (TipoCobro = 'NC') then
      ImpresionNC;

     if (Act_2da = True) then
       Begin
         //Generando la Nota de Credito de la 2da. Muestra.
         Act_2da := False;
         valorNC := qrEntradaPacienteTotalPendiente.Value;
         ConceptoNC := 'Nota Por Segunda Muestra.';
         CrearNotaCredito;
         btgrabarClick(nil);
       end;

//     If qrEntradaPaciente.State in [dsInsert] Then
     If ( Operacion <> '' ) Then
       If (qrEntradaPacientePublicarInternet.Value = 1) Then
         If Not Buscar_User_Internet(qrEntradaPacientePacienteId.Value) Then
          Procesar_Usuario
         Else
          DM.Info('El Paciente '+ qrEntradaPacienteNombrePaciente.Value +' Ya Tiene Un Usuario de Internet Creado');

     //Insertando las Pruebas en el AS-400.
     InterfaseAS400.MandarPruebaAS400(qrEntradaPacienteMuestraNo.Value);

     NuevaVenta;
    end;
  end
 else
  if ExisteCobro then CancelarCobro;
end;


procedure TfrmPuntoVenta_Backup.BtHoldClick(Sender: TObject);
begin
 inherited;
  if ValidateRecord(dsEntradaPaciente.DataSet) and ValidateCliente then
   begin
    if DM.Mensaje('Desea Poner en Hold?',mb_yesno) = id_yes then
     begin
       if qrEntradaPacienteEntradaID.Value = '' then
        begin
          qrEntradaPacienteEntradaID.Value := GetEntradaID;
        end;

       if (copy(qrEntradaPacienteEntradaID.value,1,3) = 'COT') and
          (qrEntradaPacienteTipoDocumento.Value = 0) then
        begin
          qrEntradaPacienteEntradaID.Value := GetEntradaID;
        end;

       qrEntradaPacienteHold.Value := 1;
       qrEntradaPacienteUserId.Value := DM.CurUser;
       qrEntradaPacienteFechaRegistro.Value := DM.SystemDate;
       qrEntradaPacienteHoraRegistro.Value := TimeToStr(Time);

       if qrEntradaPacienteDetalle.State in [dsEdit,dsInsert] then
          qrEntradaPacienteDetalle.Post;

       if qrEntradaPaciente.State in [dsEdit,dsInsert] then
          qrEntradaPaciente.Post;

       DM.Info('El Registro Esta en Hold.!!!');
       NuevaVenta;
     end;
   end
  else
   if ExisteCobro then CancelarCobro;
end;

procedure TfrmPuntoVenta_Backup.btimpcotClick(Sender: TObject);
begin
  inherited;
  if qrEntradaPacienteEntradaID.Value <> '' then
  begin
   ppImpCotizacion.DeviceType := dtScreen;
   ppImpCotizacion.Print;
  end;
end;

procedure TfrmPuntoVenta_Backup.btnotacreditoClick(Sender: TObject);
begin
  inherited;
  if (qrEntradaPacienteNeto.Value > 0) and (qrEntradaPaciente.State <> dsinsert) then
  begin
   CrearNotaCredito;
   frmMain.LanzaVentana(-7992);
  end
  else
   beep;
end;

procedure TfrmPuntoVenta_Backup.btpacienteClick(Sender: TObject);
begin
  inherited;
  frmMain.LanzaVentana(-7999);
  EdPaciente.SetFocus;  
  actinterface;
end;

procedure TfrmPuntoVenta_Backup.btpruebaClick(Sender: TObject);
begin
  inherited;
  frmMain.LanzaVentana(-7998);
  GridPruebas.SetFocus;
end;



procedure TfrmPuntoVenta_Backup.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmMain.Exis_Vta := False;

  If (qrEntradaPacienteEntradaID.AsString = '') then
    begin
      DM.DataBase.Execute('Delete from PTGastosVarioTrans Where Refrecid = '+qrEntradaPacienteRECID.AsString);
      DM.DataBase.Execute('Delete from PTMaterialesFactura Where Refrecid = '+qrEntradaPacienteRECID.AsString); //TOMA DE MUESTRA
    end;
end;

procedure TfrmPuntoVenta_Backup.FormCreate(Sender: TObject);
begin
  inherited;
  frmMain.Exis_Vta := True;

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

  //Buscando los Datos de la Sucursal Actual.
  qfindSucursal := DM.Find('SELECT * FROM PTSucursal WHERE SucursalId = :suc', DM.CurSucursal);

  SetMandatoryItems;
  NuevaVenta;
end;

procedure TfrmPuntoVenta_Backup.FormDestroy(Sender: TObject);
begin
  if (qrEntradaPacienteEntradaID.asstring = '') then
    begin
      DM.DataBase.Execute('Delete from PTGastosVarioTrans Where Refrecid = '+qrEntradaPacienteRECID.AsString);
      DM.DataBase.Execute('Delete from PTMaterialesFactura Where Refrecid = '+qrEntradaPacienteRECID.AsString); //TOMA DE MUESTRA
    end;

  inherited;
  frmMain.Exis_Vta := False;
end;

procedure TfrmPuntoVenta_Backup.FormKeyDown(Sender: TObject; var Key: Word;
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
  if (key = vk_f8) then btgrabarClick(nil);
  if (key = vk_f9) then btimprimir.Click;
// OJO - JUAN JOSE - BLOQUEADO PARA INTEGRARLO AL BOTON DE GUARDAR.  if (key = vk_f9) then btcobrarClick(nil);
  if (key = vk_f10) then btnotacreditoClick(nil);
  if (key = vk_f11) then BtFunciones.Click;
  if (key = vk_f12) then BtHoldClick(nil);
end;

procedure TfrmPuntoVenta_Backup.SetColorTo(iColor: TColor);
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

procedure TfrmPuntoVenta_Backup.SetReadOnlyToNoEdit;
var
  i : Integer;
begin
  for i := 0 to ComponentCount - 1 do begin
    if Components[i].Tag = 99 then
      SetComponentReadOnly( Components[i], True );
  end;
end;

procedure TfrmPuntoVenta_Backup.SetComponentReadOnly(thisComponent: TComponent; bFlag : Boolean);
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

procedure TfrmPuntoVenta_Backup.UnSetReadOnlyToNoEdit;
var
  i : Integer;
begin
  for i := 0 to ComponentCount - 1 do begin
    if Components[i].Tag = 99 then
      SetComponentReadOnly( Components[i], False );
  end;
end;

procedure TfrmPuntoVenta_Backup.NotadeCredito1Click(Sender: TObject);
begin
  inherited;
  frmMain.LanzaConsulta(-7991, qrEntradaPacienteRECID.asstring);
end;

procedure TfrmPuntoVenta_Backup.NuevaVenta;
begin
  Operacion := 'E';
  cobroid := '';

  DM.qrParametro.Close;
  DM.qrParametro.Open;

  FreeAndNil(qfindprueba);
  FreeAndNil(qpruebadesc);

  _recorId := DM.qrParametroSecuencia.Value;

  noseguro := TcxStyle.Create(Self);
//  noseguro.Color := DM.ColorBorra;
  noseguro.Color := DM.ColorUrgente;
  noseguro.TextColor := ClBlack;

  DM.qrParametro.Edit;
  DM.qrParametroSecuencia.Value := DM.qrParametroSecuencia.Value + 1;
  DM.qrParametro.Post;

  if (qrEntradaPaciente.State in [dsinsert,dsedit]) then qrEntradaPaciente.Cancel;

  qrEntradaPaciente.Close;
  qrEntradaPaciente.parameters[0].Value := _recorId;
  qrEntradaPaciente.Open;

  if (qrEntradaPaciente.State in [dsinsert,dsedit]) then qrEntradaPaciente.Cancel;

  qrEntradaPacienteDetalle.Close;
  qrEntradaPacienteDetalle.parameters[0].Value := _recorId;
  qrEntradaPacienteDetalle.Open;

  qrEntradaPaciente.Insert;
  qrEntradaPacienteDATAAREAID.Value := 'ldr';
  qrEntradaPacienteRECID.Value := _recorId;
  qrEntradaPacienteRECORDID.Value := _recorId;

  qrEntradaPacienteCoberturaConfirmada.Value := 0;
  qrEntradaPacienteCoberturaRechazada.Value := 0;
  qrEntradaPacienteSucursalId.Value := DM.CurSucursal;
  qrEntradaPacienteSucursal.Value := qfindSucursal.FieldByName('SUCURSAL').AsInteger;

  If (qfindSucursal.FieldByName('GrupoId').AsString <> '') Then
    qrEntradaPacienteOrigen.Value := qfindSucursal.FieldByName('GrupoId').AsString
  Else
    qrEntradaPacienteOrigen.Value := '';

  If (qfindSucursal.FieldByName('Cliente_Uno').AsString <> '') Then
    qrEntradaPacienteClienteID.Value := qfindSucursal.FieldByName('Cliente_Uno').AsString
  Else
    qrEntradaPacienteClienteID.Value := '';

  qrEntradaPacienteBruto.Value := 0;
  qrEntradaPacienteDescuento.Value := 0;
  qrEntradaPacienteDescuentoBono.Value := 0;
  qrEntradaPacienteDescuentoPorc.Value := 0;
  qrEntradaPacienteDescuentoValor.Value := 0;
  qrEntradaPacienteSubTotal.Value := 0;
  qrEntradaPacienteCoberturaSeguro.Value := 0;
  qrEntradaPacienteNeto.Value := 0;
  qrEntradaPacienteTotalPagado.Value := 0;
  qrEntradaPacienteTotalPendiente.Value := 0;
  qrEntradaPacientePrioridad.Value := 0;
  qrEntradaPacienteResultadoPaciente.Value := 0;
  qrEntradaPacienteResultadoDoctor.Value := 0;
  qrEntradaPacienteTipoDocumento.Value := 0;
  qrEntradaPacienteUserId.Value := DM.CurUser;
  qrEntradaPacienteFecha.Value := DM.SystemDate;
  qrEntradaPacienteHoraEntrada.Value := TimeToStr(Time);
  qrEntradaPacienteCoberturaPorc.Value := 0;
  qrEntradaPacienteCoberturaValor.Value := 0;
  qrEntradaPacienteMuestraNo.Value := GetMuestraNo;
  qrEntradaPacienteMonedaID.Value := DM.qrParametroMonedaID.Value;
  qrEntradaPacienteCoberturaExpPorc.Value := 0;
  qrEntradaPacientePublicarInternet.Value := 0;
  qrEntradaPacientePublicarInternetDoctor.Value := 0;
  qrEntradaPacienteHold.Value := 0;
  qrEntradaPacienteNoAS400.Value := 0;
  qrEntradaPacienteNoAxapta.Value := 0;
  qrEntradaPacienteNoFactura.Value := 0;
  qrEntradaPacienteRepMuestra.Value := 0;
  qrEntradaPacienteFactExterior.Value := 0;
  qrEntradaPacienteAcuerdoPropio.Value := 0;
  qrEntradaPacienteCUADRADO.Value := 0;
  qrEntradaPacienteTRANSFERIDO.Value := 0;

  qrEntradaPacienteClientePadre.Value := '';
  qrEntradaPacienteTipoEntrada.Value := 'N';
  qrEntradaPacienteFormadePago.Value := 'Contado';
  qrEntradaPacienteTasa.Value := 32;  //OJO BLOQUEADO POR JUAN JOSE - TASA DE CAMBIO PARA PODER MOSTRARLA. DM.Tasa(DM.SystemDate, DM.qrParametroMonedaDolares.Value);

 // edcoberturaporc.Properties.ReadOnly := qrEntradaPacienteCoberturaConfirmada.Value;
  edcobexpporc.Properties.ReadOnly := (qrEntradaPacienteCoberturaConfirmada.Value = 1);
  edcoberturavalor.Properties.ReadOnly := (qrEntradaPacienteCoberturaConfirmada.Value = 1);
  ConfirmarCobertura1.Enabled := not (qrEntradaPacienteCoberturaConfirmada.Value = 1);
  RegistrarPruebadelExterior1.Enabled := True;
  Asignar2daMuestra1.Enabled := True;

  EliminarDescuentoAplicado1.Enabled := False;
  AsignarDescuentoPermitidoalUsuario1.Enabled := false;
  AsignarDescuentoAutorizadoporCobros1.Enabled := false;

  ValorNC := 0;
  ValorND := 0;
  ConceptoNC := '';
  seg_late := False;

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

  //Pruebas de los Seguros.
  curCoberturaAplicada := 0;

  InsertarMaterialesDefault;
  RefrescarGrid(false);
end;


procedure TfrmPuntoVenta_Backup.qrEntradaPacienteAfterPost(DataSet: TDataSet);
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
   qdelete.SQL.Text := ' Delete from PTClienteTransacciones where Clienteid =  '+#39+qrEntradaPacienteClienteID.value+#39+
                       ' and TipoDoc = '#39+TipoDoc+#39 +
                       ' and Documento = '+#39+ qrEntradaPacienteEntradaID.Value +#39;
   qdelete.ExecSQL;

   CrearTransCliente(qrEntradaPacienteClienteID.value, TipoDoc, qrEntradaPacienteEntradaID.Value,
                     TipoDoc, qrEntradaPacienteEntradaID.value, qrEntradaPacienteFecha.value,
                     qrEntradaPacienteNeto.Value, qrEntradaPacienteMonedaID.Value);
  end;
end;

procedure TfrmPuntoVenta_Backup.qrEntradaPacienteCalcFields(DataSet: TDataSet);
begin
  inherited;
  qrEntradaPacienteTotalPendiente.Value := qrEntradaPacienteNeto.Value - qrEntradaPacienteTotalPagado.Value;
end;

procedure TfrmPuntoVenta_Backup.qrEntradaPacienteClienteIDChange(Sender: TField);
begin
  inherited;
  If qrEntradaPaciente.State in [dsEdit,dsInsert] then
    ActTotales;
end;

procedure TfrmPuntoVenta_Backup.qrEntradaPacienteCoberturaExpPorcValidate(
  Sender: TField);
begin
  inherited;
  If (qrEntradaPacienteCoberturaValor.Value >= 100) And (qrEntradaPacienteCoberturaExpPorc.Value = 1) Then
    Raise exception.CreateFmt('El porcentaje no puede ser mayor de 100',[]);
end;

procedure TfrmPuntoVenta_Backup.qrEntradaPacienteCoberturaPorcValidate(Sender: TField);
begin
  inherited;
  If (qrEntradaPacienteCoberturaPorc.Value > 100) Then
    Raise exception.CreateFmt('El porcentaje no puede ser mayor de 100',[]);
end;

procedure TfrmPuntoVenta_Backup.qrEntradaPacienteCoberturaValorValidate(
  Sender: TField);
begin
  inherited;
{
 if (qrEntradaPacienteCoberturaValor.Value >= 100) and
     (qrEntradaPacienteCoberturaExpPorc.Value) then
     raise exception.CreateFmt('El porcentaje no puede ser mayor de 100',[]);
}
  If (qrEntradaPacienteCoberturaValor.Value > qrEntradaPacienteSubTotal.Value){ and
     (not qrEntradaPacienteCoberturaExpPorc.Value)} Then
    Raise exception.CreateFmt('El valor de la cobertura no puede ser mayor que el total de la factura.',[]);
end;

procedure TfrmPuntoVenta_Backup.qrEntradaPacienteDetalleAfterDelete(DataSet: TDataSet);
begin
  inherited;
  ActTotales;
end;

procedure TfrmPuntoVenta_Backup.qrEntradaPacienteDetalleAfterPost(DataSet: TDataSet);
begin
  inherited;
  if qrEntradaPaciente.State in [dsEdit, dsInsert] then
    Begin
      ActTotales;
      VerificarPagoDiferencia;
    End;
end;

procedure TfrmPuntoVenta_Backup.VerificarPagoDiferencia;
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
    qrEntradaPacienteDescuentoValor.Value := DM.Redondeo(qrEntradaPacienteNeto.Value);
    ActTotales;
   end;
   FreeAndNil(qfind);
  end;
end;

procedure TfrmPuntoVenta_Backup.qrEntradaPacienteDetalleBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
  if ( qrEntradaPacienteDetalleCoberturaAplica.Value = 1) then
     curCoberturaAplicada := curCoberturaAplicada - 1;
end;

procedure TfrmPuntoVenta_Backup.qrEntradaPacienteDetalleBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  comboprecio := True;
end;

procedure TfrmPuntoVenta_Backup.qrEntradaPacienteDetalleBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  comboprecio := True;
end;


procedure TfrmPuntoVenta_Backup.qrEntradaPacienteDetalleBeforePost(DataSet: TDataSet);
begin
 inherited;
 If qrEntradaPacienteDetalle.State in [dsEdit, dsInsert] then
  Begin
    If (qrEntradaPacienteDetalleDATAAREAID.IsNull) Or
       (qrEntradaPacienteDetalleDATAAREAID.Value = '') Or
       (qrEntradaPacienteDetalleDATAAREAID.Value = ' ') Then
      Begin
        qrEntradaPacienteDetalleCUADRADO.Value := qrEntradaPacienteCUADRADO.Value;
        qrEntradaPacienteDetalleTRANSFERIDO.Value := qrEntradaPacienteTRANSFERIDO.Value;
        qrEntradaPacienteDetalleDATAAREAID.Value := qrEntradaPacienteDATAAREAID.Value;
      End;

    If (qrEntradaPacienteDetalleRECID.IsNull) Or
       (qrEntradaPacienteDetalleRECID.Value < 1) Then
      Begin
        qrEntradaPacienteDetalleRECID.Value := GetSecuenciaId;
        qrEntradaPacienteDetalleCUADRADO.Value := qrEntradaPacienteCUADRADO.Value;
        qrEntradaPacienteDetalleTRANSFERIDO.Value := qrEntradaPacienteTRANSFERIDO.Value;
      End;

    qrEntradaPacienteDetalleTotalLinea.Value := ImporteLinea;
  End;
{
  DM.Info(
          '   VALORES EN LA TABLA AL MOMENTO DE GUARDAR.   ' + #13 +
          'Prueba: ' + qrEntradaPacienteDetallePRUEBAID.AsString + #13 +
          'Cabecera: ' + qrEntradaPacienteDetalleREFRECID.AsString + #13 +
          'Area: ' + qrEntradaPacienteDetalleDATAAREAID.AsString + #13 +
          'RecId: ' + qrEntradaPacienteDetalleRECID.AsString);
}          
End;


procedure TfrmPuntoVenta_Backup.qrEntradaPacienteDetalleDescuentoChange(
  Sender: TField);
begin
  inherited;
  if qrEntradaPacienteDetalle.State in [dsInsert,dsEdit] then
    qrEntradaPacienteDetalleTotalLinea.Value := ImporteLinea;
end;


procedure TfrmPuntoVenta_Backup.qrEntradaPacienteDetallePruebaIDChange(Sender: TField);
var
 qfind : TADOQuery;
begin
  inherited;
  if (qrEntradaPacienteDetalle.State = dsInsert) or
     (qrEntradaPacienteDetalle.State = dsEdit) then
  begin
   //Buscando los Datos del Cliente a Facturar y Sus Parametros.
   Buscar_Cliente;

   //Valores Predeterminado de las Pruebas Registradas.
   qrEntradaPacienteDetalleSecuencia.Value := MaxSecuenciaLinea;
   qrEntradaPacienteDetalleRefRecid.Value := qrEntradaPacienteRECID.Value;
   qrEntradaPacienteDetalleMuestraNo.Value := qrEntradaPacienteMuestraNo.Value;
   qrEntradaPacienteDetalleDATAAREAID.Value := qrEntradaPacienteDATAAREAID.Value;
   qrEntradaPacienteDetalleRepMuestra.Value := qrEntradaPacienteRepMuestra.Value;
   qrEntradaPacienteDetalleCUADRADO.Value := qrEntradaPacienteCUADRADO.Value;
   qrEntradaPacienteDetalleTRANSFERIDO.Value := qrEntradaPacienteTRANSFERIDO.Value;
   qrEntradaPacienteDetalleTipoPrueba.Value := qfindprueba.FieldByName('Tipo').AsString;
   qrEntradaPacienteDetalleDescripcion.Value := qfindprueba.FieldByName('Descripcion').AsString;    

   qrEntradaPacienteDetallePASARAXAPTA.Value := 1; //TRANSFERIR A AXAPTA (True).
   qrEntradaPacienteDetalleEstatus.Value := '0'; //TOMA DE MUESTRA
   qrEntradaPacienteDetalleUrgente.Value := 0; //TOMA DE MUESTRA
   qrEntradaPacienteDetalleSecuenciaAct.Value := SecuenciaLabel; //TOMA DE MUESTRA
   qrEntradaPacienteDetalleUnidadMuestra.Value := qfindprueba.FieldByName('Unidad').AsString; //TOMA DE MUESTRA
   qrEntradaPacienteDetalleSeleccionar.Value := 0;  //TOMA DE MUESTRA
{
   //Cambiado para poder ver las pruebas cubiertas por el seguro.
   //qrEntradaPacienteDetalleCoberturaAplica.Value := 1;

   if (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSeg.Value) then
     qrEntradaPacienteDetalleCoberturaAplica.Value := 1
   else
     qrEntradaPacienteDetalleCoberturaAplica.Value := 0;
}
   qrEntradaPacienteDetalleCoberturaAplica.Value := 0;
   qrEntradaPacienteDetalleDescPct.Value := 0;
   qrEntradaPacienteDetalleDescuento.Value := 0;
   qrEntradaPacienteDetallePrecio.Value := 0;
   qrEntradaPacienteDetalleFacturar.Value := 0;
   qrEntradaPacienteDetalleCoberturaEspecial.Value := 0;
   qrEntradaPacienteDetalleCoberturaExpPorc.Value := 0;
   qrEntradaPacienteDetalleCoberturaEspecialPorc.Value := 0;

   //Registrando las Pruebas en Dollares del Exterior.
   If (qrEntradaPacienteFactExterior.Value = 1) then
     Begin
       FreeAndNil(qfind);
{
       //OJO - JUAN JOSE - BLOQUEADO PARA PODER TOMAR EL PRECIO DE LA PRUEBA EN DOLLARES DESDE EL MANTENIMIENTO.
       If (qfindRepetir.RecordCount > 0) then
         frmMain.LanzaVentana(-8001)
       Else
         frmMain.LanzaVentana(-8002);
}
       If (qfindRepetir.RecordCount > 0) then
         Begin
           If (qfindprueba.FieldByName('PrecioDolares').Value > 1) Then
             qrEntradaPacienteDetallePrecio.Value := qfindprueba.FieldByName('PrecioDolares').Value
           Else
             frmMain.LanzaVentana(-8001)
         End
       Else
         frmMain.LanzaVentana(-8002);
     End
   Else
     Begin
       If (qfindprueba.FieldByName('Tipo').Value = 'C') then
         Begin
           If (qfindprueba.FieldByName('FacturarCabecera').Value = 1) then
             Begin
               qrEntradaPacienteDetallePASARAXAPTA.Value := 0; //TRANSFERIR A AXAPTA (False).

               //Registrando la Cabecera de los Combos (CON PRECIO).
               qrEntradaPacienteDetallePrecio.Value := DM.PrecioPrueba(qrEntradaPacienteDetallePruebaID.Value,
                                                                       ClienteFactura,
                                                                       qrEntradaPacienteMonedaID.Value) * factor;

               qrEntradaPacienteDetalleCoberturaAplica.Value := DM.CoberturaAplica(qrEntradaPacienteClienteID.Value,
                                                                                   qrEntradaPacientePacienteID.Value,
                                                                                   curCoberturaAplicada,
                                                                                   qrEntradaPacienteRECID.value);

               //Marcando la Prueba Como Cubierta por el Seguro o No Segun el Acuerdo Comercial.
               qrEntradaPacienteDetalleCoberturaAplica.Value := DM.VerificarCoberturaPrueba(qrEntradaPacienteOrigen.Value,
                                                                                            qrEntradaPacienteDetallePruebaID.Value,
                                                                                            qrEntradaPacienteClienteID.Value,
                                                                                            qrEntradaPacienteMonedaID.Value);

               If (qrEntradaPacienteDetalleCoberturaAplica.Value = 1) then curCoberturaAplicada := curCoberturaAplicada + 1;

               qrEntradaPacienteDetalleCoberturaEspecial.Value := DM.CoberturaPrueba(qrEntradaPacienteDetallePruebaID.Value,
                                                                                     qrEntradaPacienteClienteID.Value,
                                                                                     qrEntradaPacienteMonedaID.Value) * factor;
               if qrEntradaPacienteDetalleCoberturaEspecial.Value <> 0 then
                 qrEntradaPacienteDetalleCoberturaExpPorc.Value := DM.CoberturaPruebaPorc(qrEntradaPacienteDetallePruebaID.Value,
                                                                                          qrEntradaPacienteClienteID.Value,
                                                                                          qrEntradaPacienteMonedaID.Value)
               else
                 qrEntradaPacienteDetalleCoberturaExpPorc.Value := 0;

               Buscar_Combo;
               Insertar_Combo_Blanco;
             End
           Else
             Begin
               qrEntradaPacienteDetallePASARAXAPTA.Value := 0; //TRANSFERIR A AXAPTA (False).

               //Registrando la Cabecera de los Combos (SIN PRECIO).
               Buscar_Combo;
               Insertar_Combo_Precio;
             End;
         End
       Else
         Begin
           If (comboprecio = True) Then
             Begin
               //Registrando las Pruebas NORMALES y/o Detalle de los Combos (CON PRECIO).
               qrEntradaPacienteDetallePrecio.Value := DM.PrecioPrueba(qrEntradaPacienteDetallePruebaID.Value,
                                                                       ClienteFactura,
                                                                       qrEntradaPacienteMonedaID.Value) * factor;

               qrEntradaPacienteDetalleCoberturaAplica.Value := DM.CoberturaAplica(qrEntradaPacienteClienteID.Value,
                                                                                   qrEntradaPacientePacienteID.Value,
                                                                                   curCoberturaAplicada,
                                                                                   qrEntradaPacienteRECID.value);

               //Marcando la Prueba Como Cubierta por el Seguro o No Segun el Acuerdo Comercial.
               qrEntradaPacienteDetalleCoberturaAplica.Value := DM.VerificarCoberturaPrueba(qrEntradaPacienteOrigen.Value,
                                                                                            qrEntradaPacienteDetallePruebaID.Value,
                                                                                            qrEntradaPacienteClienteID.Value,
                                                                                            qrEntradaPacienteMonedaID.Value);

               if (qrEntradaPacienteDetalleCoberturaAplica.Value = 1) then curCoberturaAplicada := curCoberturaAplicada + 1;

               qrEntradaPacienteDetalleCoberturaEspecial.Value := DM.CoberturaPrueba(qrEntradaPacienteDetallePruebaID.Value,
                                                                                     qrEntradaPacienteClienteID.Value,
                                                                                     qrEntradaPacienteMonedaID.Value) * factor;
               if qrEntradaPacienteDetalleCoberturaEspecial.Value <> 0 then
                 qrEntradaPacienteDetalleCoberturaExpPorc.Value := DM.CoberturaPruebaPorc(qrEntradaPacienteDetallePruebaID.Value,
                                                                                          qrEntradaPacienteClienteID.Value,
                                                                                          qrEntradaPacienteMonedaID.Value)
               else
                 qrEntradaPacienteDetalleCoberturaExpPorc.Value := 0;
             end
           Else
             Begin
               //Registrando el Detalle de los Combos (SIN PRECIO).
               qrEntradaPacienteDetalleDescPct.Value := 0;
               qrEntradaPacienteDetalleDescuento.Value := 0;
               qrEntradaPacienteDetallePrecio.Value := 0;
               qrEntradaPacienteDetalleFacturar.Value := 0;
               qrEntradaPacienteDetalleCoberturaAplica.Value := 0;
               qrEntradaPacienteDetalleCoberturaEspecial.Value := 0;
               qrEntradaPacienteDetalleCoberturaExpPorc.Value := 0;
               qrEntradaPacienteDetalleCoberturaEspecialPorc.Value := 0;
             End;
         end;
     End;

   InsertarMaterialesPrueba;  //TOMA DE MUESTRA
   Buscar_Cod_Cups(qrEntradaPacienteClienteID.Value, qrEntradaPacienteDetallePruebaID.Value);
  end;
end;


procedure TfrmPuntoVenta_Backup.qrEntradaPacienteDetallePruebaIDValidate(Sender: TField);
begin
  inherited;
    Begin
      qfindprueba := DM.find('Select * from PTPrueba where PruebaID = :pru',qrEntradaPacienteDetallePruebaID.value);
      if qfindprueba.RecordCount = 0 then
         raise exception.CreateFmt('El código de prueba digitado no existe.',[]);

       If (qrEntradaPacienteFactExterior.Value = 1) then
         Begin
           //Registrando las Pruebas en Dollares del Exterior.
          qfindRepetir := DM.NewQuery;
          qfindRepetir.Close;
          qfindRepetir.SQL.Text := ' SELECT * FROM PTPrueba '+
                                   ' WHERE Exterior = 1 '+
                                   ' AND PruebaID = :pru ';
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
              qfindRepetir.SQL.Text := ' SELECT * FROM PTEntradaPacienteDetalle '+
                                       ' WHERE RefRecId = :rec '+
                                       ' AND MuestraNo = :num '+
                                       ' AND PruebaId = :pru ';
              qfindRepetir.Parameters.ParamByName('rec').Value := Record_Ant;
              qfindRepetir.Parameters.ParamByName('num').Value := Muestra_Ant;
              qfindRepetir.Parameters.ParamByName('pru').Value := qrEntradaPacienteDetallePruebaID.Value;
              qfindRepetir.Open;

              if (qfindRepetir.RecordCount > 0) then
                Begin
                  qrEntradaPacienteDetalleRepMuestra.Value := 1;
                  qrEntradaPacienteDetalleMuestraAnt.Value := Muestra_Ant;
                  DM.Info('La Prueba: ('+ qrEntradaPacienteDetalleDescripcion.Value +') Es Una 2da. Muestra.');
                End
              Else
                Begin
                  qrEntradaPacienteDetalle.Delete;
                  Raise exception.CreateFmt('Esta Prueba: ('+ qrEntradaPacienteDetalleDescripcion.Value +'). NO Existe en la Factura Anterior.', []);
                End;
            End;
         End;
    End;
End;


procedure TfrmPuntoVenta_Backup.qrEntradaPacienteDoctorIDChange(Sender: TField);
begin
  inherited;
//  Buscar_Doctor;
end;

procedure TfrmPuntoVenta_Backup.EdDoctorPropertiesChange(Sender: TObject);
begin
  inherited;
  Buscar_Doctor;
end;

procedure TfrmPuntoVenta_Backup.Buscar_Doctor;
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
   qrEntradaPacientePublicarInternetDoctor.Value := qfind.FieldByName('PublicarInternet').AsInteger;

   FreeAndNil(qfind);
  end;
end;

procedure TfrmPuntoVenta_Backup.qrEntradaPacienteNombrePacienteValidate(
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

procedure TfrmPuntoVenta_Backup.qrEntradaPacienteOrigenChange(Sender: TField);
begin
  inherited;
  actinterface;
end;

procedure TfrmPuntoVenta_Backup.qrEntradaPacienteTipoDocumentoChange(Sender: TField);
begin
  inherited;
 if qrEntradaPacienteTipoDocumento.Value = 2 then
    factor := -1
 else
    factor := 1;

 if qrEntradaPaciente.State in [dsedit,dsinsert] then RecalcularLineas;
end;

procedure TfrmPuntoVenta_Backup.qrEntradaPacienteTipoEntradaChange(Sender: TField);
begin
  inherited;

  If (qrEntradaPacienteTipoEntrada.Value = 'D') then
    qrEntradaPacienteFormadePago.Value := 'Contra Entrega'
  Else
    qrEntradaPacienteFormadePago.Value := 'Contado';
end;



procedure TfrmPuntoVenta_Backup.Materiales1Click(Sender: TObject);
begin
  inherited;
  frmMain.LanzaConsulta(-7982, qrEntradaPacienteRECID.AsString);
end;

function TfrmPuntoVenta_Backup.MaxSecuenciaLinea : Integer;
Var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;

 qfind.Close;
// qfind.SQL.Text := 'Select max(Secuencia) from PTEntradaPacienteDetalle Where refRecid = '+ inttostr(_recorId);
 qfind.SQL.Text := 'Select max(Secuencia) from PTEntradaPacienteDetalle Where refRecid = '+ inttostr(qrEntradaPacienteRECID.Value);
 qfind.Open;

 result := qfind.Fields[0].AsInteger + 1;

 FreeAndNil(qfind);
end;


function TfrmPuntoVenta_Backup.Buscar_Linea: Integer;
Var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;

 qfind.Close;
 qfind.SQL.Text := 'SELECT MAX(LineaNo) FROM PTMaterialesFactura ';
 qfind.Open;

 result := qfind.Fields[0].AsInteger + 1;

 FreeAndNil(qfind);
end;


procedure TfrmPuntoVenta_Backup.MenuItem1Click(Sender: TObject);
begin
  inherited;
  frmMain.LanzaVentana(-7988);
end;


procedure TfrmPuntoVenta_Backup.ActTotales;
Var
 qfind : TADOQuery;
begin
 ActDetalle;
 qfind := DM.NewQuery;

 qfind.Close;
 qfind.SQL.Text := ' SELECT SUM(Precio), SUM(DescuentoLineaAplicado), SUM(CoberturaAplicada) '+
                   ' FROM PTEntradaPacienteDetalle WHERE refRecid = '+ inttostr(qrEntradaPacienteRECID.Value);
//                   ' FROM PTEntradaPacienteDetalle WHERE refRecid = '+ inttostr(_recorId);
inttostr(qrEntradaPacienteRECID.Value);
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
 qrEntradaPacienteDescuento.Value := Int(qfind.Fields[1].AsFloat + qrEntradaPacienteDescuentoBono.Value);
 qrEntradaPacienteSubTotal.Value := Int(qrEntradaPacienteBruto.Value - qrEntradaPacienteDescuento.Value);
 qrEntradaPacienteCoberturaSeguro.Value := Int(qfind.Fields[2].AsFloat);

 If ( qrEntradaPacienteTipoDocumento.Value = 3 ) Or
    ( qrEntradaPacienteFactExterior.Value = 1 ) Then
   qrEntradaPacienteGastosVarios.Value := Round(DM.TotalGastosVariosUsa(qrEntradaPacienteRECID.Value))
 Else
   qrEntradaPacienteGastosVarios.Value := Int(DM.TotalGastosVarios(qrEntradaPacienteRECID.Value));

 qrEntradaPacienteNeto.Value := Int(qrEntradaPacienteSubTotal.Value -
                                    qrEntradaPacienteCoberturaSeguro.Value +
                                    qrEntradaPacienteGastosVarios.Value);
end;


procedure TfrmPuntoVenta_Backup.AsignarDescuentoAutorizadoporCobros1Click(
  Sender: TObject);
begin
  inherited;
  frmMain.LanzaVentana(-7986);
end;

procedure TfrmPuntoVenta_Backup.AsignarDescuentoPermitidoalUsuario1Click(
  Sender: TObject);
begin
  inherited;
  frmMain.LanzaVentana(-7989);
end;

procedure TfrmPuntoVenta_Backup.RecalcularLineas;
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


procedure TfrmPuntoVenta_Backup.RecibodeCobro1Click(Sender: TObject);
begin
  inherited;
  frmMain.LanzaConsulta(-7994, qrEntradaPacienteRECID.asstring);
end;


procedure TfrmPuntoVenta_Backup.EliminarDescuentoAplicado1Click(Sender: TObject);
begin
  inherited;
  qrEntradaPacienteDescuentoPorc.Value := 0;
  qrEntradaPacienteDescuentoValor.Value := 0;
  qrEntradaPacienteDescAutorizadoPor.value := '';
  ActTotales;
end;

procedure TfrmPuntoVenta_Backup.EliminarOrdenesenHold1Click(Sender: TObject);
begin
  inherited;
  //Eliminando Los Documentos en Hold.
  Del_Hold;
//  Showmessage(DateToStr(FechaPrometida(qrEntradaPacienteDetallePruebaId.Value)));
end;

procedure TfrmPuntoVenta_Backup.MarcarPruebaNOProcesar1Click(Sender: TObject);
begin
  inherited;
  No_Procesar;
end;

function TfrmPuntoVenta_Backup.ExisteCobro : Boolean;
Var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;
 qfind.Close;
 qfind.SQL.Text := 'SELECT * FROM PTCobro WHERE CobroId = '+#39+cobroID+#39;
 qfind.Open;

 if qfind.RecordCount > 0 then
   result := True
 else
   result := false;

 FreeAndNil(qfind);
end;

function TfrmPuntoVenta_Backup.TipoCobro : String;
Var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;
 qfind.Close;
 qfind.SQL.Text := 'SELECT * FROM PTCobro WHERE CobroId = '+#39+cobroID+#39;
 qfind.Open;

 result := qfind.fieldbyname('TipoDoc').asstring;

 FreeAndNil(qfind);

end;

procedure TfrmPuntoVenta_Backup.DesabilitarBotones(_SiNo : Boolean);
begin
 btentrada.Enabled := not _SiNo;
 btpaciente.Enabled := not _SiNo;
 btprueba.Enabled := not _SiNo;
 btcancelar.Enabled := not _SiNo;
 bteliminar.Enabled := not _SiNo;
 btcliente.Enabled := not _SiNo;
 btgrabar.Enabled := not _SiNo;
// OJO - JUAN JOSE - BLOQUEADO PARA INTEGRARLO AL BOTON DE GUARDAR. btcobrar.Enabled := not _SiNo;
 btnotacredito.Enabled := not _SiNo;
// btimprimir.Enabled := not _SiNo;

// If (qfindSucursal.FieldByName('Impresiones').AsBoolean <> True) Then
 If (qfindSucursal.FieldByName('Impresiones').AsInteger <> 1) Then
    btimprimir.Enabled := False
 Else
   btimprimir.Enabled := not _SiNo;
end;

procedure TfrmPuntoVenta_Backup.EdCoberturaValorExit(Sender: TObject);
begin
  inherited;
  Act_Cobertura
end;


procedure TfrmPuntoVenta_Backup.Act_Cobertura;
begin
 if qrEntradaPaciente.State in [dsedit, dsinsert] then
  begin
   qrEntradaPacienteDescuentoValor.Value := 0;
   ActTotales;
   VerificarPagoDiferencia;
  end;
end;


function TfrmPuntoVenta_Backup.GetNextSecDoc(tipodoc : string) : String;
var
 qsecdoc : TADOQuery;
begin
 qsecdoc := DM.NewQuery;

 qsecdoc.close;
 qsecdoc.SQL.Text := 'Select * from PTSecuenciaDoc Where TipoDoc = '+#39+tipodoc+#39;
 qsecdoc.Open;
{
 if (qsecdoc.FieldByName('UsarIdentificador').AsBoolean) then
   result := qsecdoc.FieldByName('TipoDoc').asstring + '-'+ formatfloat('00',strtofloat(DM.CurSucursal))+'-'+formatfloat('000000',qsecdoc.FieldByName('Secuencia').Asfloat)
 else
   result := formatfloat('00',strtofloat(DM.CurSucursal))+'-'+formatfloat('000000',qsecdoc.FieldByName('Secuencia').Asfloat);

 if (qsecdoc.FieldByName('UsarIdentificador').AsBoolean) then
   result := qsecdoc.FieldByName('TipoDoc').asstring + formatfloat('000',strtofloat(DM.CurSucursal)) + formatfloat('000000',qsecdoc.FieldByName('Secuencia').Asfloat)
 else
   result := formatfloat('000',strtofloat(DM.CurSucursal)) + formatfloat('000000',qsecdoc.FieldByName('Secuencia').Asfloat);
}
 if (qsecdoc.FieldByName('UsarIdentificador').AsBoolean) then
   result := qsecdoc.FieldByName('TipoDoc').asstring + DM.CurSucursal +
             formatfloat('000000',qsecdoc.FieldByName('Secuencia').Asfloat)
 else
   result := DM.CurSucursal + formatfloat('000000',qsecdoc.FieldByName('Secuencia').Asfloat);

 qsecdoc.close;
 qsecdoc.SQL.Clear;
 qsecdoc.SQL.Text := 'Update PTSecuenciaDoc set Secuencia = Secuencia + 1 Where TipoDoc = '+#39+tipodoc+#39;
 qsecdoc.ExecSQL;

 FreeAndNil(qsecdoc);
end;


procedure TfrmPuntoVenta_Backup.GastosVarios1Click(Sender: TObject);
begin
  inherited;
  frmMain.lanzaConsulta(-7984, qrEntradaPacienteRECID.asstring);
end;

function TfrmPuntoVenta_Backup.GetEntradaID : String;
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


procedure TfrmPuntoVenta_Backup.Boton_Cobrar;
begin
 If ( qrEntradaPacienteNeto.Value > 0.01 ) And
    ( qrentradaPacienteBruto.Value > 0.01 ) And
    ( qrEntradaPacienteTotalPendiente.Value > 0.01 ) Then
   Begin
     CrearCobro;
     RefrescarCobro;
//     frmMain.LanzaVentana(-7997);

    If (qrEntradaPacienteTipoDocumento.Value <> 3) Or
       (QrEntradaPacienteFactExterior.Value = 0) Then
      Begin
       frmMain.LanzaVentana(-8010);
      end;

    If (qrEntradaPacienteTipoDocumento.Value = 3) Or
       (QrEntradaPacienteFactExterior.Value = 1) Then
      Begin
       frmMain.LanzaVentana(-8011);
      end;
   End
  else
   beep;
end;


procedure TfrmPuntoVenta_Backup.Viejo_Cobrar;
begin
  inherited;
  if qrEntradaPacienteNeto.Value <> 0 then
   begin
     CrearCobro;
     RefrescarCobro;
//     frmMain.LanzaVentana(-7997);

    If (qrEntradaPacienteTipoDocumento.Value <> 3) Or
       (QrEntradaPacienteFactExterior.Value = 0) Then
      Begin
       frmMain.LanzaVentana(-8010);
      end;

    If (qrEntradaPacienteTipoDocumento.Value = 3) Or
       (QrEntradaPacienteFactExterior.Value = 1) Then
      Begin
       frmMain.LanzaVentana(-8011);
      end;
   end
  else
   beep;
end;


//LLenando la Tabla para los Cobros.
procedure TfrmPuntoVenta_Backup.CrearCobro;
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
 qinsert.SQL.Text := ' INSERT INTO PTCobro(CobroID,SucursalID,Fecha,Hora,PacienteID,UsuarioID,refRecid,'+
                     ' TotalFactura,TotalPagado,PendienteFactura,ClienteID,Aplicado,MonedaId,TipoDoc) '+
                     ' VALUES (:0,:1,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13)';
 qinsert.Parameters[0].Value := cobroid;
 qinsert.Parameters[1].Value := DM.CurSucursal;
 qinsert.Parameters[2].Value := DM.SystemDate;
 qinsert.Parameters[3].Value := TimeToStr(Time);
 qinsert.Parameters[4].Value := qrEntradaPacientePacienteID.Value;
 qinsert.Parameters[5].Value := qrEntradaPacienteUserID.Value;
 qinsert.Parameters[6].Value := qrEntradaPacienteRECID.Value;
 qinsert.Parameters[7].Value := DM.Redondeo(qrEntradaPacienteNeto.Value);
 qinsert.Parameters[8].Value := DM.Redondeo(qrEntradaPacienteTotalPagado.Value);
 qinsert.Parameters[9].Value := DM.Redondeo(qrEntradaPacienteTotalPendiente.Value);
 qinsert.Parameters[10].Value := qrEntradaPacienteClienteID.Value;
 qinsert.Parameters[11].Value := 0;
 qinsert.Parameters[12].Value := qrEntradaPacienteMonedaID.Value;
 qinsert.Parameters[13].Value := 'RI';
 qinsert.ExecSQL;

 //Cargando las Formas de Pago en Peso.
 If (qrEntradaPacienteTipoDocumento.Value <> 3) Or
    (QrEntradaPacienteFactExterior.Value = 0) Then
   Begin
     qformapago := DM.NewQuery;
     qformapago.close;
     qformapago.SQL.Text := 'SELECT * FROM PTFormaDePago '+
                            'WHERE orden <= 4 ORDER BY orden ';
     qformapago.Open;
   end;

 //Cargando las Formas de Pago en Dolares.
 If (qrEntradaPacienteTipoDocumento.Value = 3) Or
    (QrEntradaPacienteFactExterior.Value = 1) Then
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
  qinsert.Parameters[4].Value := qrEntradaPacienteRECID.Value;
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
procedure TfrmPuntoVenta_Backup.RefrescarCobro;
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
    (QrEntradaPacienteFactExterior.Value = 0) Then
   Begin
     qfind := DM.NewQuery;
     qfind.Close;
     qfind.SQL.Text := ' SELECT * FROM PTCobroDetalle d, PTFormaDePago f '+
                       ' WHERE d.cobroid = '+ #39 + cobroID + #39 +
                       ' AND d.FormaDePagoId = f.FormaDePagoID '+
                       ' AND f.orden <= 4 '+
                       ' ORDER BY d.orden';
     qfind.Open;
   end;

 //Cargando las Formas de Pago en Dolares.
 If (qrEntradaPacienteTipoDocumento.Value = 3) Or
    (QrEntradaPacienteFactExterior.Value = 1) Then
   Begin
     qfind := DM.NewQuery;
     qfind.Close;
     qfind.SQL.Text := ' SELECT * FROM PTCobroDetalle d, PTFormaDePago f '+
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


procedure TfrmPuntoVenta_Backup.ActCobro;
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

 qfindcobro := DM.Find('Select * from PTCobro Where CobroID = :cob', cobroid);

 CrearTransCliente(qrEntradaPacienteCLIENTEID.Value, 'RI', qfindcobro.FieldByName('ReciboNo').value, 'FT',
                   qrEntradaPacienteEntradaID.value, qfindcobro.FieldByName('Fecha').value,
                   qfind.Fields[0].AsFloat * -1, qrEntradaPacienteMonedaId.Value);

 CrearCobroAxapta(qrEntradaPacienteCLIENTEID.Value, qrEntradaPacientePACIENTEID.Value, 'RI', cobroid,
                  qfindcobro.FieldByName('ReciboNo').Value, qfindcobro.FieldByName('Fecha').Value,
                  qrEntradaPacienteMonedaId.Value, qrEntradaPacienteEntradaID.Value,
                  qrEntradaPacienteRECID.Value, qfind.Fields[0].AsFloat, qrEntradaPacienteDATAAREAID.Value,
                  StrtoInt(cobroid), qrEntradaPacienteCLIENTEPADRE.Value, 0, 0, DM.CurSucursal); //GetSecuenciaId);

 FreeAndNil(qfindcobro);

 qupdate.Close;
 qupdate.SQL.Clear;
 qupdate.SQL.Text := 'Insert into PTCobroAplicado(CobroID,EntradaId,MontoAplicado) values(:0,:1,:2)';
 qupdate.Parameters[0].Value := cobroid;
 qupdate.Parameters[1].Value := qrEntradaPacienteEntradaID.value;
 qupdate.Parameters[2].Value := qfind.Fields[0].AsFloat;
 qupdate.ExecSQL;

 qrEntradaPaciente.Edit;
 qrEntradaPacienteTotalPagado.Value := qrEntradaPacienteTotalPagado.Value + qfind.Fields[0].AsFloat;
 qrEntradaPaciente.Post;

 FreeAndNil(qfind);
 FreeAndNil(qupdate);
end;


Function TfrmPuntoVenta_Backup.buscar_valores;
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


procedure TfrmPuntoVenta_Backup.correccion;
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


function TfrmPuntoVenta_Backup.ValidarMontoCobrado : Boolean;
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


procedure TfrmPuntoVenta_Backup.CrearNotaCredito;
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
 qinsert.SQL.Text := ' INSERT INTO PTCobro(CobroID,SucursalID,Fecha,Hora,PacienteID,UsuarioID,refRecid,'+
                     ' TotalFactura,TotalPagado,PendienteFactura,ClienteID,Aplicado,MonedaId,TipoDoc, '+
                     ' Concepto) VALUES (:0,:1,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14)';
 qinsert.Parameters[0].Value := cobroid;
 qinsert.Parameters[1].Value := DM.CurSucursal;
 qinsert.Parameters[2].Value := DM.SystemDate;
 qinsert.Parameters[3].Value := TimeToStr(Time);
 qinsert.Parameters[4].Value := qrEntradaPacientePacienteID.Value;
 qinsert.Parameters[5].Value := qrEntradaPacienteUserID.Value;
 qinsert.Parameters[6].Value := qrEntradaPacienteRECID.Value;
 qinsert.Parameters[7].Value := qrEntradaPacienteNeto.Value;
 qinsert.Parameters[8].Value := qrEntradaPacienteTotalPagado.Value;
 qinsert.Parameters[9].Value := qrEntradaPacienteTotalPendiente.Value;
 qinsert.Parameters[10].Value := qrEntradaPacienteClienteID.Value;
 qinsert.Parameters[11].Value := 0;
 qinsert.Parameters[12].Value := qrEntradaPacienteMonedaID.Value;
 qinsert.Parameters[13].Value := 'NC';
 qinsert.Parameters[14].Value := ConceptoNC;
 qinsert.ExecSQL;

 FreeAndNil(qinsert);
end;


procedure TfrmPuntoVenta_Backup.ActNotaCredito;
Var
 qupdate : TADOquery;
 qfind : TADOQuery;
 qfindcobro : TADoQuery;
begin
 qupdate := DM.NewQuery;

 qupdate.Close;
 qupdate.SQL.Clear;
 qupdate.SQL.Text := ' UPDATE PTCobro SET '+
                     ' TotalCobrado = :tot, '+
                     ' PendienteCobro = :pcob, '+
                     ' ReciboNo = :rec, '+
                     ' Aplicado = :apl, '+
                     ' Concepto = :con '+
                     ' WHERE CobroID = :rec';

 qupdate.Parameters[0].Value := ValorNC;

 //Generando la Nota de Credito de la Confirmacion Tardia del Seguro.
 If Seg_Late then
   qupdate.Parameters[1].Value := 0
 Else
   qupdate.Parameters[1].Value := qrEntradaPacienteTotalPendiente.Value - ValorNC;

 qupdate.Parameters[2].Value := GetNotaCredito;
 qupdate.Parameters[3].Value := 1;
 qupdate.Parameters[4].Value := ConceptoNC;
 qupdate.Parameters[5].Value := cobroid;
 qupdate.ExecSQL;

 qfindcobro := DM.Find('SELECT * FROM PTCobro WHERE CobroID = :cob',cobroid);

 //Generando la Nota de Credito de la Confirmacion Tardia del Seguro.
 If Seg_Late then
   CrearTransCliente(qrEntradaPAcienteClienteId.value, 'NC', qfindcobro.FieldByName('ReciboNo').value, 'FT',
                     qrEntradaPacienteEntradaID.value, qfindcobro.FieldByName('Fecha').value, ValorNC,
                     qrEntradaPacienteMonedaId.Value)
 Else
   CrearTransCliente(qrEntradaPAcienteClienteId.value, 'NC', qfindcobro.FieldByName('ReciboNo').value, 'FT',
                     qrEntradaPacienteEntradaID.value, qfindcobro.FieldByName('Fecha').value, ValorNC * -1,
                     qrEntradaPacienteMonedaId.Value);

 CrearCobroAxapta(qrEntradaPacienteCLIENTEID.Value, qrEntradaPacientePACIENTEID.Value, 'NC', cobroid,
                  qfindcobro.FieldByName('ReciboNo').Value, qfindcobro.FieldByName('Fecha').Value,
                  qrEntradaPacienteMonedaId.Value, qrEntradaPacienteEntradaID.Value,
                  qrEntradaPacienteRECID.Value, qfind.Fields[0].AsFloat, qrEntradaPacienteDATAAREAID.Value,
                  StrtoInt(cobroid), qrEntradaPacienteCLIENTEPADRE.Value, 0, 0, DM.CurSucursal); //GetSecuenciaId);

 FreeAndNil(qfindcobro);

 qupdate.Close;
 qupdate.SQL.Clear;
 qupdate.SQL.Text := 'INSERT INTO PTCobroAplicado(CobroID,EntradaId,MontoAplicado) VALUES (:0,:1,:2)';
 qupdate.Parameters[0].Value := cobroid;
 qupdate.Parameters[1].Value := qrEntradaPacienteEntradaID.value;
 qupdate.Parameters[2].Value := ValorNC;
 qupdate.ExecSQL;

 //Generando la Nota de Credito de la Confirmacion Tardia del Seguro.
 If Seg_Late then ValorNC := 0;
 
 qrEntradaPaciente.Edit;
 qrEntradaPacienteTotalPagado.Value := qrEntradaPacienteTotalPagado.Value + ValorNC;
 qrEntradaPaciente.Post;

 FreeAndNil(qfind);
 FreeAndNil(qupdate);
end;


procedure TfrmPuntoVenta_Backup.CrearNotaDebito;
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
 qinsert.SQL.Text := ' INSERT INTO PTCobro(CobroID,SucursalID,Fecha,Hora,PacienteID,UsuarioID,refRecid,'+
                     ' TotalFactura,TotalPagado,PendienteFactura,ClienteID,Aplicado,MonedaId,TipoDoc, '+
                     ' Concepto) VALUES (:0,:1,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14)';
 qinsert.Parameters[0].Value := cobroid;
 qinsert.Parameters[1].Value := DM.CurSucursal;
 qinsert.Parameters[2].Value := DM.SystemDate;
 qinsert.Parameters[3].Value := TimeToStr(Time);
 qinsert.Parameters[4].Value := qrEntradaPacientePacienteID.Value;
 qinsert.Parameters[5].Value := qrEntradaPacienteUserID.Value;
 qinsert.Parameters[6].Value := qrEntradaPacienteRECID.Value;
 qinsert.Parameters[7].Value := qrEntradaPacienteNeto.Value;
 qinsert.Parameters[8].Value := qrEntradaPacienteTotalPagado.Value;
 qinsert.Parameters[9].Value := qrEntradaPacienteTotalPendiente.Value;
 qinsert.Parameters[10].Value := qrEntradaPacienteClienteID.Value;
 qinsert.Parameters[11].Value := 0;
 qinsert.Parameters[12].Value := qrEntradaPacienteMonedaID.Value;
 qinsert.Parameters[13].Value := 'NC';
 qinsert.Parameters[14].Value := ConceptoNC;
 qinsert.ExecSQL;

 FreeAndNil(qinsert);
end;


procedure TfrmPuntoVenta_Backup.ActNotaDebito;
Var
 qupdate : TADOquery;
 qfind : TADOQuery;
 qfindcobro : TADoQuery;
begin
 qupdate := DM.NewQuery;

 qupdate.Close;
 qupdate.SQL.Clear;
 qupdate.SQL.Text := ' UPDATE PTCobro SET '+
                     ' TotalCobrado = :tot, '+
                     ' PendienteCobro = :pcob, '+
                     ' ReciboNo = :rec, '+
                     ' Aplicado = :apl, '+
                     ' Concepto = :con '+
                     ' WHERE CobroID = :rec';
 qupdate.Parameters[0].Value := ValorND;
 qupdate.Parameters[1].Value := 0; //qrEntradaPacienteTotalPendiente.Value - ValorND;
 qupdate.Parameters[2].Value := GetNotaCredito;
 qupdate.Parameters[3].Value := 1;
 qupdate.Parameters[4].Value := ConceptoNC;
 qupdate.Parameters[5].Value := cobroid;
 qupdate.ExecSQL;

 qfindcobro := DM.Find('Select * from PTCobro Where CobroID = :cob',cobroid);

 CrearTransCliente(qrEntradaPacienteClienteId.value, 'NC', qfindcobro.FieldByName('ReciboNo').value, 'FT',
                   qrEntradaPacienteEntradaID.value, qfindcobro.FieldByName('Fecha').value, ValorND,
                   qrEntradaPacienteMonedaId.Value);
//                   qrEntradaPAcienteEntradaId.value,qfindcobro.FieldByName('Fecha').value, ValorND * -1,

 CrearCobroAxapta(qrEntradaPacienteCLIENTEID.Value, qrEntradaPacientePACIENTEID.Value, 'NC', cobroid,
                  qfindcobro.FieldByName('ReciboNo').Value, qfindcobro.FieldByName('Fecha').Value,
                  qrEntradaPacienteMonedaId.Value, qrEntradaPacienteEntradaID.Value,
                  qrEntradaPacienteRECID.Value, qfind.Fields[0].AsFloat, qrEntradaPacienteDATAAREAID.Value,
                  StrtoInt(cobroid), qrEntradaPacienteCLIENTEPADRE.Value, 0, 0, DM.CurSucursal); //GetSecuenciaId);

 FreeAndNil(qfindcobro);

 qupdate.Close;
 qupdate.SQL.Clear;
 qupdate.SQL.Text := 'Insert into PTCobroAplicado(CobroID,EntradaId,MontoAplicado) values(:0,:1,:2)';
 qupdate.Parameters[0].Value := cobroid;
 qupdate.Parameters[1].Value := qrEntradaPacienteEntradaID.value;
 qupdate.Parameters[2].Value := ValorND;
 qupdate.ExecSQL;

 //Generando la Nota de Credito de la Confirmacion Tardia del Seguro.
 If Seg_Late then ValorND := 0;
 
 qrEntradaPaciente.Edit;
 qrEntradaPacienteTotalPagado.Value := qrEntradaPacienteTotalPagado.Value + ValorND;
 qrEntradaPaciente.Post;

 FreeAndNil(qfind);
 FreeAndNil(qupdate);
end;

procedure TfrmPuntoVenta_Backup.VolantedePruebasARS1Click(Sender: TObject);
begin
  inherited;
  if qrEntradaPacienteEntradaID.Value <> '' then
  begin
   ppImpFacturaSeguro.DeviceType := dtScreen;
   ppImpFacturaSeguro.Print;
  end;
end;


procedure TfrmPuntoVenta_Backup.VolantedePruebasTomaMuestra1Click(Sender: TObject);
begin
  inherited;
  if qrEntradaPacienteEntradaID.Value <> '' then
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


procedure TfrmPuntoVenta_Backup.FacturaExterior1Click(Sender: TObject);
begin
 inherited;
 if qrEntradaPacienteEntradaID.Value <> '' then
   begin
    if (qrEntradaPacienteFactExterior.Value = 1) then
     begin
      ppImpFacturaExterior.DeviceType := dtScreen;
      ppImpFacturaExterior.Print;
     end
   end;
end;


procedure TfrmPuntoVenta_Backup.BuscarDatos;
begin
  qrEntradaPaciente.Close;
  qrEntradaPaciente.parameters[0].Value := _recorId;
  qrEntradaPaciente.Open;

  qrEntradaPacienteDetalle.Close;
  qrEntradaPacienteDetalle.parameters[0].Value := _recorId;
  qrEntradaPacienteDetalle.Open;

  curCoberturaAplicada := DM.CurCoberturaAplicada(_recorId);
end;


procedure TfrmPuntoVenta_Backup.RefrescarInterface;
begin
 actinterface;

 DM.qrParametro.Close;
 DM.qrParametro.Open;

 //Si Ya Se Registro Un Pago y NO Tiene Monto Pendiente.
 if (qrEntradaPacienteTotalPendiente.Value < 0.01) And
    (qrentradaPacienteBruto.Value > 0) Then
  begin
   btpaciente.Enabled := false;
   btprueba.Enabled := false;
   bteliminar.Enabled := false;
   btcliente.Enabled := false;
   btgrabar.Enabled := false;
// OJO - JUAN JOSE - BLOQUEADO PARA INTEGRARLO AL BOTON DE GUARDAR.   btcobrar.Enabled := false;
   btnotacredito.Enabled := false;

   If (qrEntradaPacienteCoberturaRechazada.Value = 1) Or
      (qrEntradaPacienteCoberturaConfirmada.Value = 1) Then
     ConfirmarCobertura1.Enabled := False;

   If (qrEntradaPacienteCoberturaRechazada.Value = 0) And
      (qrEntradaPacienteCoberturaConfirmada.Value = 0) Then
     ConfirmarCobertura1.Enabled := True;

   edcobexpporc.Properties.ReadOnly := True;
   edcoberturavalor.Properties.ReadOnly := True;

   Asignar2daMuestra1.Enabled := False;
   EliminarDescuentoAplicado1.Enabled := False;
   RegistrarPruebadelExterior1.Enabled := False;
   CambiarLaboratorioNoenlasLineas1.Enabled := False;
   AsignarDescuentoPermitidoalUsuario1.Enabled := False;
   AsignarDescuentoAutorizadoporCobros1.Enabled := False;

   UnSetReadOnlyToNoEdit;
   SetColorTo(dm.ColorConsulta);
   RefrescarGrid(true);
  end;

 //Si Ya Se Registro Un Pago y Tiene Monto Pendiente.
 if (qrEntradaPacienteTotalPagado.Value > 0) and
    (qrEntradaPacienteTotalPendiente.Value > 0) Then
   begin
    btpaciente.Enabled := false;
    btprueba.Enabled := false;
    bteliminar.Enabled := false;
    btcliente.Enabled := false;
    btgrabar.Enabled := true;
// OJO - JUAN JOSE - BLOQUEADO PARA INTEGRARLO AL BOTON DE GUARDAR.    btcobrar.Enabled := true;
    btnotacredito.Enabled := true;

    If (qrEntradaPacienteCoberturaRechazada.Value = 1) Or
       (qrEntradaPacienteCoberturaConfirmada.Value = 1) Then
      ConfirmarCobertura1.Enabled := False;

    If (qrEntradaPacienteCoberturaRechazada.Value = 0) And
       (qrEntradaPacienteCoberturaConfirmada.Value = 0) Then
      ConfirmarCobertura1.Enabled := True;

    edcobexpporc.Properties.ReadOnly := True;
    edcoberturavalor.Properties.ReadOnly := True;

    CambiarLaboratorioNoenlasLineas1.Enabled := CanCambiarLaboratorio;
    EliminarDescuentoAplicado1.Enabled := false;
    AsignarDescuentoPermitidoalUsuario1.Enabled := false;
    AsignarDescuentoAutorizadoporCobros1.Enabled := false;
   end;

 //Si Esta Registrando el Documento Actualmente.
 If (qrEntradaPacienteTotalPagado.Value < 0.01) And
    (qrEntradaPaciente.State = dsInsert) Then
   begin
     btpaciente.Enabled := true;
     btprueba.Enabled := true;
     bteliminar.Enabled := true;
     btcliente.Enabled := true;
     btgrabar.Enabled := true;
// OJO - JUAN JOSE - BLOQUEADO PARA INTEGRARLO AL BOTON DE GUARDAR.     btcobrar.Enabled := true;
     btnotacredito.Enabled := true;

//     edcoberturaporc.Properties.ReadOnly := qrEntradaPacienteCoberturaConfirmada.Value;
     edcobexpporc.Properties.ReadOnly := (qrEntradaPacienteCoberturaConfirmada.Value = 1);
     edcoberturavalor.Properties.ReadOnly := (qrEntradaPacienteCoberturaConfirmada.Value = 1);
     CambiarLaboratorioNoenlasLineas1.Enabled := CanCambiarLaboratorio;

     If (qrEntradaPacienteCoberturaRechazada.Value = 1) then
      Begin
        //Actualizando la Cobertura Rechazada.
        ConfirmarCobertura1.Enabled := False;
        edcobexpporc.Properties.ReadOnly := True;
        edcoberturavalor.Properties.ReadOnly := True;
      End;

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

 //Si la Cobertura Fue Confirmada.
 if (qrEntradaPacienteCoberturaConfirmada.Value = 1) Then
  begin
    btpaciente.Enabled := false;
    btprueba.Enabled := false;
    bteliminar.Enabled := false;
    btcliente.Enabled := false;

    Asignar2daMuestra1.Enabled := False;
    EliminarDescuentoAplicado1.Enabled := false;
    RegistrarPruebadelExterior1.Enabled := False;
    CambiarLaboratorioNoenlasLineas1.Enabled := false;
    AsignarDescuentoPermitidoalUsuario1.Enabled := false;
    AsignarDescuentoAutorizadoporCobros1.Enabled := false;

    ConfirmarCobertura1.Enabled := False;
    edcobexpporc.Properties.ReadOnly := True;
    edcoberturavalor.Properties.ReadOnly := True;

    //Si Tiene Monto Pendiente.
    if (qrEntradaPacienteTotalPendiente.Value > 0) Then
      Begin
        btgrabar.Enabled := true;
// OJO - JUAN JOSE - BLOQUEADO PARA INTEGRARLO AL BOTON DE GUARDAR.        btcobrar.Enabled := true;
        btnotacredito.Enabled := true;
      end;

    UnSetReadOnlyToNoEdit;
    SetColorTo(dm.ColorConsulta);
    RefrescarGrid(true);
  end;   
{
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

   ConfirmarCobertura1.Enabled := false;
   EliminarDescuentoAplicado1.Enabled := false;
   AsignarDescuentoPermitidoalUsuario1.Enabled := false;
   AsignarDescuentoAutorizadoporCobros1.Enabled := false;
   CambiarLaboratorioNoenlasLineas1.Enabled := false;
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
    btcliente.Enabled := false;
    btgrabar.Enabled := true;
    btcobrar.Enabled := true;
    btnotacredito.Enabled := true;
   // edcoberturaporc.Properties.ReadOnly := qrEntradaPacienteCoberturaConfirmada.Value;
    edcobexpporc.Properties.ReadOnly := qrEntradaPacienteCoberturaConfirmada.Value;
    edcoberturavalor.Properties.ReadOnly := qrEntradaPacienteCoberturaConfirmada.Value;

    CambiarLaboratorioNoenlasLineas1.Enabled := CanCambiarLaboratorio;
    EliminarDescuentoAplicado1.Enabled := false;
    AsignarDescuentoPermitidoalUsuario1.Enabled := false;
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
    // edcoberturaporc.Properties.ReadOnly := qrEntradaPacienteCoberturaConfirmada.Value;
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
}      
end;


//Validando Los Parametros de Descuentos.
procedure TfrmPuntoVenta_Backup.Val_Descuento;
begin
 //Buscando los Datos del Cliente a Facturar y Sus Parametros.
 Buscar_Cliente;
{
 If (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSeg.Value) Or
    (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoCli.Value) Or
    (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoEmp.Value) Or
    (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoLab.Value) then
   Begin
    If qrEntradaPaciente.State in [dsEdit,dsInsert] then
      Begin
        EliminarDescuentoAplicado1.Enabled := True;
        EliminarDescuentoAplicado1Click(Nil);
      end;
    EliminarDescuentoAplicado1.Enabled := false;
    AsignarDescuentoPermitidoalUsuario1.Enabled := false;
    AsignarDescuentoAutorizadoporCobros1.Enabled := false;
   end
 Else
   Begin
    If (qfindCltParams.FieldByName('ActivarDescuentos').AsBoolean = True) then
      Begin
        EliminarDescuentoAplicado1.Enabled := True;
        AsignarDescuentoPermitidoalUsuario1.Enabled := true;
        AsignarDescuentoAutorizadoporCobros1.Enabled := true;
      end;
   end;
}

 //Si el Empleado Puede Otorgar Descuentos.
 If ( Asignar_Descuento = True ) Then
   Begin
    //Si el Cliente Puede Recibir Descuentos.
    If (qfindCltParams.FieldByName('ActivarDescuentos').AsInteger = 1) then
      Begin
        EliminarDescuentoAplicado1.Enabled := True;
        AsignarDescuentoPermitidoalUsuario1.Enabled := true;
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
        AsignarDescuentoPermitidoalUsuario1.Enabled := false;
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
     AsignarDescuentoPermitidoalUsuario1.Enabled := false;
     AsignarDescuentoAutorizadoporCobros1.Enabled := false;
   End;

 If qrEntradaPaciente.State in [dsEdit,dsInsert] then
   Begin
     //Buscando el Descuento Configurado al Cliente.
     qrEntradaPacienteDescuentoPorc.Value := DM.DescCliente(ClienteFactura);

     //Buscando el Cargo - Gasto Configurado al Cliente.
     DM.VerificarGastosVarios(ClienteFactura, qrEntradaPacienteRECID.value);

     If (qrEntradaPacienteDescuentoPorc.Value < 0.1) then
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


function TfrmPuntoVenta_Backup.CanCambiarLaboratorio;
var
 qfind : TADOQuery;
begin
 qfind := DM.Find('SELECT * FROM SysUsuarios WHERE UserID = :user',DM.CurUser);
 result := qfind.FieldByName('CambiarMuestraNo').AsBoolean;
 FreeAndNil(qfind);
end;


function TfrmPuntoVenta_Backup.Asignar_Descuento;
var
 qfind : TADOQuery;
begin
 qfind := DM.Find('SELECT * FROM SysUsuarios WHERE UserID = :user',DM.CurUser);
 result := qfind.FieldByName('AsignarDescuentos').AsBoolean;
 FreeAndNil(qfind);
end;


procedure TfrmPuntoVenta_Backup.RegistrarPruebadelExterior1Click(Sender: TObject);
begin
 inherited;
  DM.qrParametro.Close;
  DM.qrParametro.Open;

  qrEntradaPacienteTipoDocumento.Value := 3;
  qrEntradaPacienteNoAS400.Value := 1;
  qrEntradaPacienteNoAxapta.Value := 1;
  qrEntradaPacienteNoFactura.Value := 1;
  qrEntradaPacienteFactExterior.Value := 1;
  qrEntradaPacienteMonedaID.Value := DM.qrParametroMonedaDolares.Value;
end;


//Poniendo el Documento en Hold.
procedure TfrmPuntoVenta_Backup.Act_Hold;
var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;

 qfind.Close;
 qfind.SQL.Text := 'SELECT COUNT(RecId) FROM PTEntradaPaciente '+
                   'WHERE SucursalId = :suc AND Hold = 1 ';
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


//Eliminando Los Documentos en Hold.
procedure TfrmPuntoVenta_Backup.Del_Hold;
var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;

 qfind.Close;
 qfind.SQL.Text := ' SELECT * FROM PTEntradaPaciente '+
                   ' WHERE SucursalId = :suc '+
                   ' AND UserId = :usr '+
                   ' AND Hold = 1 ';
 qfind.Parameters[0].Value := DM.CurSucursal;
 qfind.Parameters[1].Value := DM.CurUser;
 qfind.Open;

 If (qfind.RecordCount > 0) Then
   Begin
     qfind.First;
     While Not qfind.Eof do
      Begin
        DM.DataBase.Execute('Delete from PTEntradaPaciente Where RecId = '+ qfind.FieldByName('RecId').AsString);
        DM.DataBase.Execute('Delete from PTEntradaPacienteDetalle Where Refrecid = '+ qfind.FieldByName('RecId').AsString);

        qfind.Next;
      End;
   End;

 FreeAndNil(qfind);
end;


procedure TfrmPuntoVenta_Backup.No_Procesar;
Var
 qact : TADOQuery;
begin
{
 If ( DM.Mensaje('Desea Marcar Esta Prueba Como NO Procesar?' ,mb_yesno ) = id_yes ) Then
  Begin
   If ( qrEntradaPacienteDetalle.State in [dsEdit,dsInsert] ) Then
    If ( qrEntradaPacienteDetalle.RecordCount > 0 ) then
     Begin
      qrEntradaPacienteDetalle.Edit;
      qrEntradaPacienteDetalleEstatus.Value := 'N';
      DM.Info('La Prueba: ('+ qrEntradaPacienteDetalleDescripcion.Value +') NO Sera Procesada.!!!');
     End;
  End;
}
 If ( DM.Mensaje('Esta Seguro de que Esta Prueba NO Se Procesara?' ,mb_yesno) = id_yes ) Then
   Begin
     qact := DM.NewQuery;

     qact.Close;
     qact.SQL.Clear;
     qact.SQL.Text := ' UPDATE PTEntradaPacienteDetalle SET '+
                      ' Estatus = '+ #39 + 'N' + #39 +
                      ' WHERE RefRecid = :rec '+
                      ' AND Secuencia = :sec '+
                      ' AND pruebaId = :pru ';
     qact.Parameters[0].Value := qrEntradaPacienteDetalleRefRecid.Value;
     qact.Parameters[1].Value := qrEntradaPacienteDetalleSecuencia.Value;
     qact.Parameters[2].Value := qrEntradaPacienteDetallePruebaid.Value;
     qact.ExecSQL;

     FreeAndNil(qact);

     DM.Info('La Prueba: ('+ qrEntradaPacienteDetalleDescripcion.Value +') NO Sera Procesada.!!!');

//     RefrescarData;
   end;
end;


procedure TfrmPuntoVenta_Backup.Asignar2daMuestra1Click(Sender: TObject);
begin
  inherited;
  frmMain.LanzaVentana(-8000);
  if (Docto_Ant <> '') then
    Buscar_Muestra
  else
    beep;
end;


procedure TfrmPuntoVenta_Backup.Buscar_Muestra;
Var
 qfind  : TADOQuery;
 Dias   : Extended;
begin
 DM.qrParametro.Close;
 DM.qrParametro.Open;

 qfind := DM.NewQuery;

 qfind.Close;
 qfind.SQL.Text := 'SELECT * FROM PTEntradaPaciente '+
                   'WHERE EntradaId = '+ #39 + Docto_Ant + #39 +
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
       Raise exception.CreateFmt('Ha Vencido el Plazo Para Realizar las Pruebas en 2da. Muestra de Esta Factura.', [])
   end
 Else
   Raise exception.CreateFmt('La Factura No. ('+ Docto_Ant +') NO Tiene Pruebas en 2da. Muestra.', []);

 FreeAndNil(qfind);
end;


procedure TfrmPuntoVenta_Backup.Buscar_Combo;
begin
 qfindcombo := DM.NewQuery;

 qfindcombo.Close;
 qfindcombo.SQL.Text := ' SELECT * FROM PTCombosPruebas '+
                        ' WHERE ComboId = '+ #39 + qrEntradaPacienteDetallePruebaID.Value + #39 +
                        ' ORDER BY linea ';
 qfindcombo.Open;

 If (qfindcombo.RecordCount > 0) then
   qfindcombo.First
 Else
   Raise exception.CreateFmt('El Combo ('+ qrEntradaPacienteDetallePruebaID.Value +') NO Tiene Pruebas Registrada.', []);
end;


procedure TfrmPuntoVenta_Backup.Insertar_Combo_Precio;
begin
 While Not qfindcombo.Eof Do
  Begin
   If (qrEntradaPacienteDetallePruebaID.Value = '') Or
      (qrEntradaPacienteDetallePruebaID.IsNull) Then
     qrEntradaPacienteDetalle.Delete
   Else
     qrEntradaPacienteDetalle.Post;

   qrEntradaPacienteDetalle.Insert;

   If (qfindcombo.FieldByName('Sexo').AsInteger < 2) then
    Begin
     If (qfindcombo.FieldByName('Sexo').AsInteger <> qrEntradaPacienteSexo.Value) Then
      Begin
       //El Paciente NO ES del Sexo Configurado a La Prueba en el Combo.
       comboprecio := True;
       DM.Info('La Prueba: ( '+ qfindcombo.FieldByName('Descripcion').AsString +' ). NO Aplica Para Pacientes de Este Sexo.');
       qfindcombo.Next;
      End
     Else
      Begin
       //El Paciente ES del Sexo Configurado a La Prueba en el Combo.
       comboprecio := True;
       qrEntradaPacienteDetallePruebaID.Value := qfindcombo.FieldByName('PruebaID').AsString;
       qfindcombo.Next;
      End;
    End
   Else
    Begin
     //La Prueba Se Le Realiza a Ambos Sexos.
     comboprecio := True;
     qrEntradaPacienteDetallePruebaID.Value := qfindcombo.FieldByName('PruebaID').AsString;
     qfindcombo.Next;
    End;
  End;

 //Agregado Para Evitar Error al Momento de Actualizar el Detalle.
 If (qrEntradaPacienteDetallePruebaID.Value = '') Or
    (qrEntradaPacienteDetallePruebaID.IsNull) Then
   qrEntradaPacienteDetalle.Delete;

 //Agregado Para Evitar Error al Momento de Actualizar el Detalle.
 qrEntradaPacienteDetalle.Edit;
 FreeAndNil(qfindcombo);
end;


procedure TfrmPuntoVenta_Backup.Insertar_Combo_Blanco;
begin
 While Not qfindcombo.Eof Do
  Begin
   If (qrEntradaPacienteDetallePruebaID.Value = '') Or
      (qrEntradaPacienteDetallePruebaID.IsNull) Then
     qrEntradaPacienteDetalle.Delete
   Else
     qrEntradaPacienteDetalle.Post;

   qrEntradaPacienteDetalle.Insert;

   If (qfindcombo.FieldByName('Sexo').AsInteger < 2) then
    Begin
     If (qfindcombo.FieldByName('Sexo').AsInteger <> qrEntradaPacienteSexo.Value) Then
      Begin
       //El Paciente NO ES del Sexo Configurado a La Prueba en el Combo.
       comboprecio := False;
       DM.Info('La Prueba: ( '+ qfindcombo.FieldByName('Descripcion').AsString +' ). NO Aplica Para Pacientes de Este Sexo.');
       qfindcombo.Next;
      End
     Else
      Begin
       //El Paciente ES del Sexo Configurado a La Prueba en el Combo.
       comboprecio := False;
       qrEntradaPacienteDetallePruebaID.Value := qfindcombo.FieldByName('PruebaID').AsString;
       qfindcombo.Next;
      End;
    End
   Else
    Begin
     //La Prueba Se Le Realiza a Ambos Sexos.
     comboprecio := False;
     qrEntradaPacienteDetallePruebaID.Value := qfindcombo.FieldByName('PruebaID').AsString;
     qfindcombo.Next;
    End;
  End;

 //Agregado Para Evitar Error al Momento de Actualizar el Detalle.
 If (qrEntradaPacienteDetallePruebaID.Value = '') Or
    (qrEntradaPacienteDetallePruebaID.IsNull) Then
   qrEntradaPacienteDetalle.Delete;

 //Agregado Para Evitar Error al Momento de Actualizar el Detalle.
 qrEntradaPacienteDetalle.Edit;
 FreeAndNil(qfindcombo);
end;


 //Actualizando los Datos del Cliente (Numeros de Telefono - Fax - Internet).
procedure TfrmPuntoVenta_Backup.Act_Cliente;
Var
  texto       : String;
  qActualiza  : TAdoQuery;
begin
 if (qrEntradaPacientePublicarInternet.Value = 1) then
   texto := ' UPDATE PTCliente SET '+
            ' Telefono = :tel1, '+
            ' Telefono2 = :tel2, '+
            ' Fax = :fax1, '+
            ' PublicarInternet = :publ '+
            ' WHERE ClienteID = :pac '
 else
   texto := ' UPDATE PTCliente SET '+
            ' Telefono = :tel1, '+
            ' Telefono2 = :tel2, '+
            ' Fax = :fax1, '+
            ' WHERE ClienteID = :pac ';

 qActualiza := DM.NewQuery;
 qActualiza.Close;
 qActualiza.SQL.Text := texto;
 qActualiza.Parameters.ParamByName('tel1').Value := qrEntradaPacienteTelefonos.Value;
 qActualiza.Parameters.ParamByName('tel2').Value := qrEntradaPacienteTelefono2.Value;
 qActualiza.Parameters.ParamByName('fax1').Value := qrEntradaPacienteFax.Value;

 if (qrEntradaPacientePublicarInternet.Value = 1) then
   qActualiza.Parameters.ParamByName('publ').Value := qrEntradaPacientePublicarInternet.Value;

 qActualiza.Parameters.ParamByName('pac').Value  := qrEntradaPacientePacienteID.Value;
 qActualiza.ExecSQL;

 if qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSeg.Value then
   begin
     //Actualizando los Datos del Cliente (Poliza - Aseguradora).
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
procedure TfrmPuntoVenta_Backup.Buscar_Cliente;
begin
// If (qrEntradaPacienteClienteId.Value <> '') then
//  Begin
    //Buscando los Datos del Cliente Registrado en el Punto de Venta.
    qfindCltParams := DM.Find('Select * from PTCliente Where ClienteID = :cli', qrEntradaPacienteClienteId.Value);

    If qfindCltParams.FieldByName('Principal').AsString <> '' then
      Begin
        If (qfindCltParams.FieldByName('UsarAcuerdoPropio').AsInteger = 1) then
          Begin
            //Buscando los Acuerdos Comerciales del Cliente HIJO.
            ClienteFactura := qrEntradaPacienteClienteId.Value;
//            If (Operacion <> '') Then
            If qrEntradaPaciente.State in [dsInsert] Then
              Begin
                qrEntradaPacienteAcuerdoPropio.Value := 1;
                qrEntradaPacienteClientePadre.Value := qfindCltParams.FieldByName('Principal').AsString;
              End;
          End
        Else
          Begin
            //Buscando los Acuerdos Comerciales del Cliente (PADRE - PRINCIPAL).
            ClienteFactura := qfindCltParams.FieldByName('Principal').AsString;
//            If (Operacion <> '') Then
            If qrEntradaPaciente.State in [dsInsert] Then
              Begin
                qrEntradaPacienteAcuerdoPropio.Value := 0;
                qrEntradaPacienteClientePadre.Value := qfindCltParams.FieldByName('Principal').AsString;
              End;
          End;
      End
    Else
      Begin
        //Buscando los Acuerdos Comerciales del Cliente Registrado en el Punto de Venta.
        ClienteFactura := qrEntradaPacienteClienteId.Value;
//        If (Operacion <> '') Then
        If qrEntradaPaciente.State in [dsInsert] Then
         Begin
           qrEntradaPacienteAcuerdoPropio.Value := 0;
           qrEntradaPacienteClientePadre.Value := qrEntradaPacienteClienteId.Value;
         End;
      End;

    //Cargando los PARAMETROS del CLIENTE A FACTURAR en el Punto de Venta.
    qfindCltParams := DM.Find('Select * from PTCliente Where ClienteID = :cli', ClienteFactura);

    //Buscando los Datos del Grupo del Cliente.
    Buscar_Grupo_Clt(qfindCltParams.FieldByName('GrupoCliente').AsString);

    //Buscando los Datos del PACIENTE Registrado y Sus Parametros.
    Buscar_Paciente;
//  End;
end;


//Buscando los Datos del PACIENTE Registrado y Sus Parametros.
procedure TfrmPuntoVenta_Backup.Buscar_Paciente;
begin
  qfindPacientes := DM.Find('Select * from PTCliente Where ClienteID = :pac', qrEntradaPacientePacienteId.Value);

  //Buscando los Datos del Grupo del Paciente.
  Buscar_Grupo_Pac(qfindPacientes.FieldByName('GrupoCliente').AsString);
end;


//Buscando los Datos del Grupo del Cliente.
Procedure TfrmPuntoVenta_Backup.Buscar_Grupo_Clt(Grupo: string);
begin
 qfindGrupoClt := DM.Find('SELECT * FROM PTGrupoCliente WHERE GrupoCliente = :grp', Grupo);
end;


//Buscando los Datos del Grupo del Paciente.
Procedure TfrmPuntoVenta_Backup.Buscar_Grupo_Pac(Grupo: string);
begin
 qfindGrupoPac := DM.Find('SELECT * FROM PTGrupoCliente WHERE GrupoCliente = :grp', Grupo);
end;


//Buscando los Datos del Codigo CUPS del Cliente.
procedure TfrmPuntoVenta_Backup.Buscar_Cod_Cups(cliente: String; prueba: String);
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
procedure TfrmPuntoVenta_Backup.Insert_Card_Descuento;
Var qfind, qactu, qinsert : TAdoQuery;
begin
 If (qrEntradaPacienteDescuentoTexto.Value <> 'DESCUENTO SUCURSAL') And
    (qrEntradaPacienteDescuentoPlanId.Value <> 'SUCURSAL') And
    (qrEntradaPacienteDescuentoCard.Value <> '') Then
   Begin
     //Actualizando el Estatus del BONO Utilizado.
     qactu := DM.NewQuery;
     qactu.Close;
     qactu.SQL.Text := ' UPDATE PTTarjetaBono SET '+
//                       ' Activo = 0, '+
                       ' Consumido = Consumido + :con '+
                       ' WHERE TarjetaID = :tar '+
                       ' AND TarjetaNumero = :num ';
     qactu.Parameters.ParamByName('con').Value := qrEntradaPacienteDescuentoBono.Value;
     qactu.Parameters.ParamByName('tar').Value := qrEntradaPacienteDescuentoPlanId.Value;
     qactu.Parameters.ParamByName('num').Value := qrEntradaPacienteDescuentoCard.Value;
     qactu.ExecSQL;

     //Buscando Los Datos de la Tarjeta de Descuento En el Cliente.
     qfind := DM.NewQuery;
     qfind.Close;
     qfind.SQL.Text := ' SELECT * FROM PTTarjetaCliente '+
                       ' WHERE ClienteId = :clt '+
                       ' AND TarjetaID = :tar '+
                       ' AND TarjetaNumero = :num ';
     qfind.Parameters.ParamByName('clt').Value := qrEntradaPacientePacienteID.Value;
     qfind.Parameters.ParamByName('tar').Value := qrEntradaPacienteDescuentoPlanId.Value;
     qfind.Parameters.ParamByName('num').Value := qrEntradaPacienteDescuentoCard.Value;
     qfind.Open;

     If (qfind.RecordCount = 0) then
       Begin
         //Insertando Los Datos de la Tarjeta de Descuento En el Cliente.
         qinsert := DM.NewQuery;
         qinsert.Close;
         qinsert.SQL.Text := ' INSERT INTO PTTarjetaCliente '+
                             ' (ClienteId, TarjetaID, TarjetaNumero) '+
                             ' VALUES (:clt, :tar, :num) ';
         qinsert.Parameters.ParamByName('clt').Value := qrEntradaPacientePacienteID.Value;
         qinsert.Parameters.ParamByName('tar').Value := qrEntradaPacienteDescuentoPlanId.Value;
         qinsert.Parameters.ParamByName('num').Value := qrEntradaPacienteDescuentoCard.Value;
         qinsert.ExecSQL;

         FreeAndNil(qinsert);
       end;

     FreeAndNil(qactu);
     FreeAndNil(qfind);
   end;
end;


procedure TfrmPuntoVenta_Backup.ppHeaderBand3BeforePrint(Sender: TObject);
begin
  ppLbTelefono.Caption := 'Tel.: ' + DM.qrParamTelefono.Value;
  if DM.qrParamFax.Value <> '' then ppLbTelefono.Caption := ppLbTelefono.Caption +' Fax : '+ DM.qrParamFax.Value;

  if (qrEntradaPacienteCoberturaConfirmada.Value = 1) then
    LbCobertura.Caption := 'Cobertura Confirmada';

  if (qrEntradaPacienteCoberturaRechazada.Value = 1) then
    LbCobertura.Caption := 'Cobertura Rechazada';

  If (qrEntradaPacienteCoberturaConfirmada.Value = 0) And
     (qrEntradaPacienteCoberturaRechazada.Value = 0) Then
    LbCobertura.Caption := 'No Se Ha Solicitado La Cobertura';
end;


procedure TfrmPuntoVenta_Backup.ppSummaryFacturaSeguroBeforePrint(Sender: TObject);
begin
  if (qrEntradaPacienteCoberturaExpPorc.Value = 1)then
     pplbcobertura.Caption := formatfloat('##0.00', qrEntradaPacienteCoberturaValor.Value)
  else
   begin
     pplbcobertura.Caption := formatfloat('##0.00', qrEntradaPacienteCoberturaSeguro.Value * 100/qrEntradaPacienteSubtotal.value);
   end;

  //Buscando los Datos del Cliente.
  Buscar_Cliente;
{
  Eliminado el Jueves 21-12-2006. Acordamos Siempre Imprimir El Nombre del Paciente.
  //Imprimiendo el Nombre del Pacliente
  If (qfindCltParams.FieldByName('ImprimirAliasNombre').AsBoolean = True) Then
    LbPaciente.Caption := qfindCltParams.FieldByName('Alias').AsString     //qfindPacientes.FieldByName('Alias').AsString
  Else
    LbPaciente.Caption := qrEntradaPacienteNombrePaciente.Value;
}
  ppMemoFactSeg.Clear;
  ppMemoFactSeg.Lines.Append(DM.qrParametroNotaFacturaSeguro.Value);

  If (qrEntradaPacienteNota.Value <> '') Then
    Begin
      ppMemoFactSeg.Lines.Append('');
      ppMemoFactSeg.Lines.Append(qrEntradaPacienteNota.Value);
    end;

  If (qfindGrupoClt.FieldByName('Comentario').AsString <> '') Then
    Begin
      ppMemoFactSeg.Lines.Append('');
      ppMemoFactSeg.Lines.Append(qfindGrupoClt.FieldByName('Comentario').AsString);
    end;
{
  If (qfindGrupoPac.FieldByName('Comentario').AsString <> '') Then
    Begin
      ppMemoFactSeg.Lines.Append('');
      ppMemoFactSeg.Lines.Append(qfindGrupoPac.FieldByName('Comentario').AsString);
    end;
}    
end;


procedure TfrmPuntoVenta_Backup.ppSummaryBand4BeforePrint(Sender: TObject);
begin
  inherited;
  ppMemoFactExterior.Lines.Clear;
  ppMemoFactExterior.Lines.Append(DM.qrParametroNotaFacturaExterior.Value);
end;

procedure TfrmPuntoVenta_Backup.ppSummaryFactPacienteConSeguroBeforePrint(Sender: TObject);
begin
  inherited;
  Buscar_Cliente;

  ppMemoFactConSeg.Lines.Clear;
  ppMemoFactConSeg.Lines.Append(DM.qrParametroNotaFacturaPaciente.Value);

  If (qrEntradaPacienteNota.Value <> '') Then
    Begin
      ppMemoFactConSeg.Lines.Append('');
      ppMemoFactConSeg.Lines.Append(qrEntradaPacienteNota.Value);
    end;
{
  If (qfindGrupoClt.FieldByName('Comentario').AsString <> '') Then
    Begin
      ppMemoFactConSeg.Lines.Append('');
      ppMemoFactConSeg.Lines.Append(qfindGrupoClt.FieldByName('Comentario').AsString);
    end;
}
  If (qfindGrupoPac.FieldByName('Comentario').AsString <> '') Then
    Begin
      ppMemoFactConSeg.Lines.Append('');
      ppMemoFactConSeg.Lines.Append(qfindGrupoPac.FieldByName('Comentario').AsString);
    end;
end;

procedure TfrmPuntoVenta_Backup.ppSummaryFactPacienteSinSeguroBeforePrint(Sender: TObject);
begin
  //Buscando los Datos del Cliente.
  Buscar_Cliente;

  //Imprimiendo el Precio de la Prueba.
  If (qfindCltParams.FieldByName('IncluirPrecioTicket').AsInteger = 1) Then
    Begin
      if (qrEntradaPacienteDescuentoTexto.Value <> '') Then
        LbDescTit.Caption := qrEntradaPacienteDescuentoTexto.Value + ' : '
      else
        LbDescTit.Caption := 'Descuento : ';

      LbDescuento.Caption := FormatFloat('##,###,##0.00', qrEntradaPacienteDescuento.Value);
      LbBruto.Caption := FormatFloat('##,###,##0.00', qrEntradaPacienteBruto.Value);
      LbNeto.Caption := FormatFloat('##,###,##0.00', qrEntradaPacienteNeto.Value);
      LbPagado.Caption := FormatFloat('##,###,##0.00', qrEntradaPacienteTotalPagado.Value);
      LbPendiente.Caption := FormatFloat('##,###,##0.00', qrEntradaPacienteTotalPendiente.Value);
    end
  Else
    Begin
      LbDescTit.Caption := 'Descuento : ';
      LbDescuento.Caption := '';
      LbBruto.Caption := '';
      LbDescuento.Caption := '';
      LbNeto.Caption := '';
      LbPagado.Caption := '';
      LbPendiente.Caption := '';
    end;

  ppMemoFactSinSeg.Lines.Clear;
  ppMemoFactSinSeg.Lines.Append(DM.qrParametroNotaFacturaNoSeguro.Value);

  If (qrEntradaPacienteNota.Value <> '') Then
    Begin
      ppMemoFactSinSeg.Lines.Append('');
      ppMemoFactSinSeg.Lines.Append(qrEntradaPacienteNota.Value);
    end;
{
  If (qfindGrupoClt.FieldByName('Comentario').AsString <> '') Then
    Begin
      ppMemoFactSinSeg.Lines.Append('');
      ppMemoFactSinSeg.Lines.Append(qfindGrupoClt.FieldByName('Comentario').AsString);
    end;
}
  If (qfindGrupoPac.FieldByName('Comentario').AsString <> '') Then
    Begin
      ppMemoFactSinSeg.Lines.Append('');
      ppMemoFactSinSeg.Lines.Append(qfindGrupoPac.FieldByName('Comentario').AsString);
    end;
end;

//Impresion de los Codigos CUPS - Factura de Seguros.
procedure TfrmPuntoVenta_Backup.ppDetailBand3BeforePrint(Sender: TObject);
begin
//  qfindprint := DM.find('Select * from PTPrueba where PruebaID = :pru', qrEntradaPacienteDetalleCodigoCupID.Value);
  qfindprint := DM.find('Select * from PTPrueba where PruebaID = :pru', qrEntradaPacienteDetallePruebaId.Value);

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


//Imprimiendo el Comentario Como Descripcion en la Factura del Exterior.
procedure TfrmPuntoVenta_Backup.ppDetailBand4BeforePrint(Sender: TObject);
begin
  If (qrEntradaPacienteDetalleComentario.Value <> '') then
    Begin
      ppDBComentario.Visible := True;
      ppDBDescripcion.Visible := False;
    End
  Else
    Begin
      ppDBComentario.Visible := False;
      ppDBDescripcion.Visible := True;
    End;
end;


procedure TfrmPuntoVenta_Backup.ppDetailBandSinSeguroBeforePrint(Sender: TObject);
begin
  qfindprint := DM.find('SELECT * FROM PTPrueba WHERE PruebaID = :pru', qrEntradaPacienteDetallePruebaId.Value);

  //Buscando los Datos del Cliente.
  Buscar_Cliente;

  //Imprimiendo la Descripcion de la Prueba.
  If (qfindCltParams.FieldByName('ImprimirAliasPrueba').AsInteger = 1) Then
    Begin
      LbDescripcion1.Caption := qfindprint.FieldByName('Alias').AsString;
    end
  Else
    Begin
      LbDescripcion1.Caption := qrEntradaPacienteDetalleDescripcion.Value;
    end;

  //Imprimiendo el Precio de la Prueba.
  If (qfindCltParams.FieldByName('IncluirPrecioTicket').AsInteger = 1) Then
    Begin
      LbBrutoTit.Visible := True;
      LbDescTit.Visible := True;
      LbNetoTit.Visible := True;
      LbPagadoTit.Visible := True;
      LbPendienteTit.Visible := True;
      LbPrecio1.Caption := FormatFloat('##,###,##0.00', qrEntradaPacienteDetallePrecio.Value);
    end
  Else
    Begin
      LbBrutoTit.Visible := True;
      LbDescTit.Visible := True;
      LbNetoTit.Visible := True;
      LbPagadoTit.Visible := True;
      LbPendienteTit.Visible := True;
      LbPrecio1.Caption := FormatFloat('##,###,##0.00', qrEntradaPacienteDetallePrecio.Value);
    end;
end;


procedure TfrmPuntoVenta_Backup.InsertarMaterialesDefault;
Var
 qfind, qinsert : TADOQuery;
begin
 qfind := DM.NewQuery;
 qfind.Close;
 qfind.SQL.Text := 'Select * from PTMaterialesPrueba Where PruebaId = '+#39+'Default'+#39;
 qfind.Open;

 if (qfind.RecordCount > 0) then
 begin
   qinsert := DM.NewQuery;
   qinsert.Close;
   qinsert.SQL.Text := ' INSERT INTO PTMaterialesFactura '+
                       ' (refrecid,MaterialId,Cantidad,LineaNo) '+
                       ' VALUES (:0,:1,:2,:3) ';

   while (not qfind.Eof) do
   begin
    qinsert.Parameters[0].Value := qrEntradaPacienteRECID.Value;
    qinsert.Parameters[1].Value := qfind.FieldByName('MaterialId').AsString;
    qinsert.Parameters[2].Value := qfind.FieldByName('Cantidad').AsFloat;
    qinsert.Parameters[3].Value := Buscar_Linea();
    qinsert.ExecSQL;

    qfind.Next;
   end;

   FreeAndNil(qinsert);
 end;
 FreeAndNil(qfind);
end;


procedure TfrmPuntoVenta_Backup.InsertarMaterialesPrueba;
Var
 qfind, qinsert : TADOQuery;
begin
 qfind := DM.NewQuery;
 qfind.Close;
 qfind.SQL.Text := 'SELECT * FROM PTMaterialesPrueba WHERE PruebaId = '+#39+qrEntradaPacienteDetallePruebaid.value+#39;
 qfind.Open;

 if (qfind.RecordCount > 0) then
 begin
   qinsert := DM.NewQuery;
   qinsert.Close;

   qinsert.SQL.Text := ' INSERT INTO PTMaterialesFactura '+
                       ' (refrecid,refrecidline,MaterialId,Cantidad,pruebaid,LineaNo) '+
                       ' VALUES (:0,:1,:2,:3,:4,:5) ';

   while (not qfind.Eof) do
   begin
    qinsert.Parameters[0].Value := qrEntradaPacienteRECID.Value;
    qinsert.Parameters[1].Value := qrEntradaPacienteDetalleSecuencia.value;
    qinsert.Parameters[2].Value := qfind.FieldByName('MaterialId').AsString;
    qinsert.Parameters[3].Value := qfind.FieldByName('Cantidad').AsFloat;
    qinsert.Parameters[4].Value := qrEntradaPacienteDetallePruebaid.value;
    qinsert.Parameters[5].Value := Buscar_Linea();
    qinsert.ExecSQL;

    qfind.Next;
   end;

   FreeAndNil(qinsert);
 end;

 FreeAndNil(qfind);
end;


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

//Buscando el Label de la Prueba Registrada.
function TfrmPuntoVenta_Backup.Buscar_Labels(muestra: String; prueba: String): Boolean;
Var
 qfind : TADOQuery;
 valor : Boolean;
begin
 qfind := DM.NewQuery;

 qfind.Close;
 qfind.SQL.Text := 'SELECT * FROM PTLabel '+
                   'WHERE PruebaId = :prue '+
                   'AND MuestraNo = :mues ';
 qfind.Parameters.ParamByName('prue').Value := prueba;
 qfind.Parameters.ParamByName('mues').Value := muestra;
 qfind.Open;

 If (qfind.RecordCount > 0) Then
   result := True
 Else
   result := False;

 FreeAndNil(qfind);
end;


procedure TfrmPuntoVenta_Backup.CrearLabels(SecAct: Integer);
var
 first,faltanimp  : Boolean;
 secint : integer;
 Descabr,DescLarga : string;
begin
 qfindLb := DM.NewQuery;
 qfindLb.Close;
 qfindLb.SQL.Text := ' SELECT a.Entradaid, a.pacienteid, a.sucursalid, b.pruebaid, c.Descripcion, '+
                     '        c.Abreviacion, c.Departamento, c.TipoMuestra, c.Medio, c.Color, b.MuestraNo '+
                     ' FROM PTEntradaPaciente a, PTEntradaPacienteDetalle b, ptPrueba c '+
                     ' WHERE b.SecuenciaAct = '+ inttostr(SecAct) +
                     ' AND a.recid = b.refrecid '+
                     ' AND b.pruebaid = c.pruebaid '+
                     ' ORDER BY c.Medio, c.Departamento, c.Color, b.pruebaid ';
 qfindLb.Open;

 secuencia := 1;
 secint    := 0;
 first     := true;
 faltanimp := false;

 while (not qfindLb.Eof) do
 begin
  //Envase.......
  if (QfindLb.FieldByName('Medio').AsInteger = 0) then
  begin
   Descripcion := QfindLb.FieldByName('Descripcion').AsString;
   depact := QfindLb.FieldByName('Departamento').AsString;
   muestraact := QfindLb.FieldByName('MuestraNo').AsString;
   InsertarLabel;
   secuencia := secuencia + 1;
  end
  else
  begin
   if (first) then
   begin
    depact := QfindLb.FieldByName('Departamento').AsString;
    colact := QfindLb.FieldByName('Color').AsInteger;
    first := false;
   end;

   if (depact <> QfindLb.FieldByName('Departamento').AsString) or
      (colact <> QfindLb.FieldByName('Color').AsInteger) or
      (secint = 8) then
   begin
    if (secint = 1) then
        Descripcion := DescLarga
    else
        Descripcion := Descabr;

    InsertarLabel;
    Descabr := QfindLb.FieldByName('Abreviacion').AsString;
    DescLarga := QfindLb.FieldByName('Descripcion').AsString;
    muestraact := QfindLb.FieldByName('MuestraNo').AsString;

    secuencia := secuencia + 1;
    secint := 1;
    faltanimp := false;
   end
   else
   begin
    Descabr := Descabr + ' ' + QfindLb.FieldByName('Abreviacion').AsString;
    DescLarga := QfindLb.FieldByName('Descripcion').AsString;
    muestraact := QfindLb.FieldByName('MuestraNo').AsString;
    secint := secint + 1;
    faltanimp := true;
   end;

  end;

  qfindLb.Next;
 end;

 if (faltanimp) then
 begin
     if (secint = 1) then
        Descripcion := DescLarga
    else
        Descripcion := Descabr;

    InsertarLabel;
 end;
end;

procedure TfrmPuntoVenta_Backup.InsertarLabel;
var
 Qinsert    : TADOQuery;
 labelrecid : Integer;
begin
 If Not Buscar_Labels(QfindLb.FieldByName('EntradaId').Value,
                      QfindLb.FieldByName('PruebaId').Value) Then
   Begin
     Qinsert := DM.NewQuery;

     DM.qrParametro.Close;
     DM.qrParametro.Open;

     labelrecid := DM.qrParametroSecuenciaLabel.Value;

     DM.qrParametro.Edit;
     DM.qrParametroSecuenciaLabel.Value := DM.qrParametroSecuenciaLabel.Value + 1;
     DM.qrParametro.Post;

     Qinsert.Close;
     Qinsert.SQL.Text := ' INSERT INTO PTLabel (MuestraNo, Secuencia, Sucursal, DeptId, PacienteId, Descripcion, '+
                         ' EntradaId, Recid, PruebaId) '+
                         ' VALUES (:,:1,:2,:3,:4,:5,:6,:7,:8)';
     Qinsert.Parameters[0].Value := muestraact;
     Qinsert.Parameters[1].Value := secuencia;
     Qinsert.Parameters[2].Value := QfindLb.FieldByName('SucursalId').Value;
     Qinsert.Parameters[3].Value := depact;
     Qinsert.Parameters[4].Value := QfindLb.FieldByName('PacienteId').Value;
     Qinsert.Parameters[5].Value := Descripcion;
     Qinsert.Parameters[6].Value := QfindLb.FieldByName('EntradaId').Value;
     Qinsert.Parameters[7].Value := labelrecid;
     Qinsert.Parameters[8].Value := QfindLb.FieldByName('PruebaId').Value;
     Qinsert.ExecSQL;

     Qinsert.Close;
     Qinsert.SQL.Clear;
     Qinsert.SQL.Text := ' INSERT INTO PTLabelSeguimiento(RefRecid, Fecha, Hora, UserId, Accion, Recid, PruebaId) '+
                         ' VALUES (:0,:1,:2,:3,:4,:5,:6)';
     Qinsert.Parameters[0].Value := labelrecid;
     Qinsert.Parameters[1].Value := DM.SystemDate;
     Qinsert.Parameters[2].Value := time;
     Qinsert.Parameters[3].Value := DM.CurUser;
     Qinsert.Parameters[4].Value := 0; //Entrada
     Qinsert.Parameters[5].Value := labelrecid;
     Qinsert.Parameters[6].Value := QfindLb.FieldByName('PruebaId').Value;
     Qinsert.ExecSQL;

     FreeAndNil(Qinsert);
   End;
end;


procedure TfrmPuntoVenta_Backup.ImprimirLabel;
var
 qfind  : TADOQuery;
 texto  : TextFile;
 cadena : String;
Const
 LetraSec : array[1..27] of string = ('A','B','C','D','E','F','G','H','I','J','K','L','M','N',
                                      'Ñ','O','P','Q','R','S','T','U','V','W','X','Y','Z');
{
 LetraSec : array[1..24] of string = ('A','B','C','D','E','F','G','H','I','J','K','L','M',
                                      'N','O','P','Q','R','S','T','X','W','Y','Z');
}
begin
 qfind := DM.NewQuery;
 qfind.Close;
 qfind.SQL.Text := ' SELECT a.*,b.Descripcion as DescDept,c.Nombre FROM PTLabel a,PTDepartamento b,PTCliente c'+
                   ' WHERE a.EntradaId = '+#39+ qrEntradaPacienteEntradaID.Value +#39 +
                   ' AND a.Deptid = b.DepId AND a.PacienteId = c.ClienteId '+
                   ' ORDER BY recid,secuencia';
 qfind.Open;

 while not qfind.Eof do
 begin
  cadena := 'c:\Barcode';
  assignfile(texto, cadena);
  rewrite(texto);

  writeln(texto,'N');
  writeln(texto,'N');
  writeln(texto,'q1200');
  writeln(texto,'Q200,30+0');
  writeln(texto,'S2');
  writeln(texto,'D8');
  writeln(texto,'ZT');
  writeln(texto,'B235,15,0,3,2,6,98,N,"' + Qfind.FieldByName('MuestraNo').AsString+'"');
  writeln(texto,'A220,110,0,3,1,1,N,"' + Qfind.FieldByName('MuestraNo').AsString + '-' +
                                         FormatFloat('000', Qfind.FieldByName('Sucursal').AsFloat) +
                                         Qfind.FieldByName('Sucursal').AsString+'"');
  writeln(texto,'A415,110,0,1,1,1,N,"' + Qfind.FieldByName('DescDept').AsString+'"');
  writeln(texto,'A230,130,0,2,1,1,N,"' + Qfind.FieldByName('Nombre').AsString+'"');
  writeln(texto,'B500,130,0,3,2,3,50,N,"' + LetraSec[Qfind.FieldByName('Secuencia').AsInteger]+'"');
  writeln(texto,'A590,0,1,1,1,1,N,"' + DM.CurUser+'*"');
  writeln(texto,'A230,150,0,1,1,1,N,"' + Qfind.FieldByName('Descripcion').AsString+'"');
  writeln(texto,'P1');
  system.closefile(texto);

  cadena := 'C:\barcode.bat';
  assignfile(texto, cadena);
  rewrite(texto);
//  writeln(texto,'Type c:\barcode >prn');
  writeln(texto,'PRINT /d:lpt1 C:\barcode ');
  system.closefile(texto);
//  winexec('C:\barcode.bat',SW_SHOWNORMAL);
  winexec('print /d:lpt1 C:\barcode ',SW_SHOWNORMAL);
//  CreateProcess(NULL, "print /d:lpt1 c:\barcode ");

  qfind.Next;
 end;
end;

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


//Calculando el Nuevo Precio de la Prueba Dependiendo del Cliente Actual.
procedure TfrmPuntoVenta_Backup.Confirmar_Precio_Prueba;
var
 qprueba : TADOQuery;
begin
  inherited;
  if (qrEntradaPacienteDetalle.State = dsInsert) or
     (qrEntradaPacienteDetalle.State = dsEdit) then
  begin
   //Buscando los Datos del Cliente a Facturar y Sus Parametros.
   Buscar_Cliente;

   //Calculando el Descuento a las PRUEBAS y los COMBOS.
   qprueba := DM.find('SELECT * FROM PTPrueba WHERE PruebaID = :pru', qrEntradaPacienteDetallePruebaID.value);

   //Valores Predeterminado de las Pruebas Registradas.
//   qrEntradaPacienteDetalleRefRecid.Value := _recorId;
   qrEntradaPacienteDetalleRefRecid.Value := qrEntradaPacienteRECID.Value;
   qrEntradaPacienteDetalleSecuencia.Value := MaxSecuenciaLinea;
   qrEntradaPacienteDetalleRECID.Value := GetSecuenciaId;
   qrEntradaPacienteDetalleMuestraNo.Value := qrEntradaPacienteMuestraNo.Value;
   qrEntradaPacienteDetalleDATAAREAID.Value := qrEntradaPacienteDATAAREAID.Value;
   qrEntradaPacienteDetalleRepMuestra.Value := qrEntradaPacienteRepMuestra.Value;
   qrEntradaPacienteDetalleTipoPrueba.Value := qfindprueba.FieldByName('Tipo').AsString;
   qrEntradaPacienteDetalleDescripcion.Value := qfindprueba.FieldByName('Descripcion').AsString;

   qrEntradaPacienteDetalleEstatus.Value := '0'; //TOMA DE MUESTRA
   qrEntradaPacienteDetalleUrgente.Value := 0; //TOMA DE MUESTRA
   qrEntradaPacienteDetalleSecuenciaAct.Value := SecuenciaLabel; //TOMA DE MUESTRA
   qrEntradaPacienteDetalleUnidadMuestra.Value := qfindprueba.FieldByName('Unidad').AsString; //TOMA DE MUESTRA
   qrEntradaPacienteDetalleSeleccionar.Value := 0;  //TOMA DE MUESTRA

   qrEntradaPacienteDetalleCoberturaAplica.Value := 0;
   qrEntradaPacienteDetalleDescPct.Value := 0;
   qrEntradaPacienteDetalleDescuento.Value := 0;
   qrEntradaPacienteDetallePrecio.Value := 0;
   qrEntradaPacienteDetalleFacturar.Value := 0;
   qrEntradaPacienteDetalleCoberturaEspecial.Value := 0;
   qrEntradaPacienteDetalleCoberturaExpPorc.Value := 0;
   qrEntradaPacienteDetalleCoberturaEspecialPorc.Value := 0;

   //Registrando las Pruebas en Dollares del Exterior.
   If (qrEntradaPacienteFactExterior.Value = 1) then
     Begin
{
       If (qfindRepetir.RecordCount > 0) then
         Begin
           If (qfindprueba.FieldByName('PrecioDolares').Value > 1) Then
             qrEntradaPacienteDetallePrecio.Value := qfindprueba.FieldByName('PrecioDolares').Value
           Else
             frmMain.LanzaVentana(-8001)
         End
       Else
         frmMain.LanzaVentana(-8002);
}
     end
   Else
     Begin
       If (qprueba.FieldByName('Tipo').Value = 'C') then
         Begin
           If (qprueba.FieldByName('FacturarCabecera').Value = 1) then
             Begin
               //Registrando la Cabecera de los Combos (CON PRECIO).
               qrEntradaPacienteDetallePrecio.Value := DM.PrecioPrueba(qrEntradaPacienteDetallePruebaID.Value,
                                                                       ClienteFactura,
                                                                       qrEntradaPacienteMonedaID.Value) * factor;

               qrEntradaPacienteDetalleCoberturaAplica.Value := DM.CoberturaAplica(qrEntradaPacienteClienteID.Value,
                                                                                   qrEntradaPacientePacienteID.Value,
                                                                                   curCoberturaAplicada,
                                                                                   qrEntradaPacienteRECID.value);

               //Marcando la Prueba Como Cubierta por el Seguro o No Segun el Acuerdo Comercial.
               qrEntradaPacienteDetalleCoberturaAplica.Value := DM.VerificarCoberturaPrueba(qrEntradaPacienteOrigen.Value,
                                                                                            qrEntradaPacienteDetallePruebaID.Value,
                                                                                            qrEntradaPacienteClienteID.Value,
                                                                                            qrEntradaPacienteMonedaID.Value);

               If (qrEntradaPacienteDetalleCoberturaAplica.Value = 1) then curCoberturaAplicada := curCoberturaAplicada + 1;

               qrEntradaPacienteDetalleCoberturaEspecial.Value := DM.CoberturaPrueba(qrEntradaPacienteDetallePruebaID.Value,
                                                                                     qrEntradaPacienteClienteID.Value,
                                                                                     qrEntradaPacienteMonedaID.Value) * factor;
               if qrEntradaPacienteDetalleCoberturaEspecial.Value <> 0 then
                 qrEntradaPacienteDetalleCoberturaExpPorc.Value := DM.CoberturaPruebaPorc(qrEntradaPacienteDetallePruebaID.Value,
                                                                                          qrEntradaPacienteClienteID.Value,
                                                                                          qrEntradaPacienteMonedaID.Value)
               else
                 qrEntradaPacienteDetalleCoberturaExpPorc.Value := 0;

               Buscar_Combo;
               Insertar_Combo_Blanco;
             End
           Else
             Begin
               //Registrando la Cabecera de los Combos (SIN PRECIO).
               Buscar_Combo;
               Insertar_Combo_Precio;
             End;
         End
       Else
         Begin
           If (comboprecio = True) Then
             Begin
               //Registrando las Pruebas NORMALES y/o Detalle de los Combos (CON PRECIO).
               qrEntradaPacienteDetallePrecio.Value := DM.PrecioPrueba(qrEntradaPacienteDetallePruebaID.Value,
                                                                       ClienteFactura,
                                                                       qrEntradaPacienteMonedaID.Value) * factor;

               qrEntradaPacienteDetalleCoberturaAplica.Value := DM.CoberturaAplica(qrEntradaPacienteClienteID.Value,
                                                                                   qrEntradaPacientePacienteID.Value,
                                                                                   curCoberturaAplicada,
                                                                                   qrEntradaPacienteRECID.value);

               //Marcando la Prueba Como Cubierta por el Seguro o No Segun el Acuerdo Comercial.
               qrEntradaPacienteDetalleCoberturaAplica.Value := DM.VerificarCoberturaPrueba(qrEntradaPacienteOrigen.Value,
                                                                                            qrEntradaPacienteDetallePruebaID.Value,
                                                                                            qrEntradaPacienteClienteID.Value,
                                                                                            qrEntradaPacienteMonedaID.Value);

               if (qrEntradaPacienteDetalleCoberturaAplica.Value = 1) then curCoberturaAplicada := curCoberturaAplicada + 1;

               qrEntradaPacienteDetalleCoberturaEspecial.Value := DM.CoberturaPrueba(qrEntradaPacienteDetallePruebaID.Value,
                                                                                     qrEntradaPacienteClienteID.Value,
                                                                                     qrEntradaPacienteMonedaID.Value) * factor;
               if qrEntradaPacienteDetalleCoberturaEspecial.Value <> 0 then
                 qrEntradaPacienteDetalleCoberturaExpPorc.Value := DM.CoberturaPruebaPorc(qrEntradaPacienteDetallePruebaID.Value,
                                                                                          qrEntradaPacienteClienteID.Value,
                                                                                          qrEntradaPacienteMonedaID.Value)
               else
                 qrEntradaPacienteDetalleCoberturaExpPorc.Value := 0;
             end
           Else
             Begin
               //Registrando el Detalle de los Combos (SIN PRECIO).
               qrEntradaPacienteDetalleDescPct.Value := 0;
               qrEntradaPacienteDetalleDescuento.Value := 0;
               qrEntradaPacienteDetallePrecio.Value := 0;
               qrEntradaPacienteDetalleFacturar.Value := 0;
               qrEntradaPacienteDetalleCoberturaAplica.Value := 0;
               qrEntradaPacienteDetalleCoberturaEspecial.Value := 0;
               qrEntradaPacienteDetalleCoberturaExpPorc.Value := 0;
               qrEntradaPacienteDetalleCoberturaEspecialPorc.Value := 0;
             End;
         end;
     End;

   InsertarMaterialesPrueba;  //TOMA DE MUESTRA
   Buscar_Cod_Cups(qrEntradaPacienteClienteID.Value, qrEntradaPacienteDetallePruebaID.Value);

   FreeAndNil(qprueba);
  end;
end;


//Procesando el Usuario de Internet de Este Paciente.
procedure TfrmPuntoVenta_Backup.Procesar_Usuario;
Var
  Valor : Boolean;
  Pass2, Clave : Integer;
  Usuario, Useralt, Tipo : String;
begin
  //Creando la Clave de Internet.
  Clave :=  Crear_Clave(qfindPacientes.FieldByName('Identificacion').AsString);

  //Creando el Usuario de Internet.
  Usuario :=  Crear_Usuario(qfindPacientes.FieldByName('Nombre').AsString);

  //Creando el Usuario Alternativo. 6 Digitos o Menos.
  If ( Length(Usuario) > 6 ) Then
    Useralt := Copy(Usuario, 1, 6)
  Else
    Useralt := Usuario;

  //Creando el Usuario Alternativo. 4 Digitos de la Clave.
  Pass2 := StrToInt( RightStr (IntToStr (Clave), 4) );

  If Not Valida_Usuario(Usuario) then
    Begin
      //Creando el Usuario Alternativo (Useralt + Pass2).
      Usuario := Useralt + IntToStr(Pass2);
      While Not Valida_Usuario(Usuario) do
       Begin
         Pass2 := Pass2 + 1;
         Usuario := Useralt + IntToStr(Pass2);
         Next;
       End;
    End;

  //Identificando el Tipo de Clave.
  If (qfindPacientes.FieldByName('GrupoCliente').AsString = '02') Or
     (qfindPacientes.FieldByName('GrupoCliente').AsString = '07') Or
     (qfindPacientes.FieldByName('TipoCliente').AsString = 'PRI') Or
     (qfindPacientes.FieldByName('TipoCliente').AsString = 'EMP') Then
   Tipo := 'P'
 Else
   Tipo := 'C';

  Insertar_Usuario(Usuario, IntToStr(Clave),
                   qfindPacientes.FieldByName('Nombre').AsString,
                   qfindPacientes.FieldByName('Identificacion').AsString,
                   qrEntradaPacientePacienteId.Value, Tipo, 'N');
end;


//Creando la Clave de Internet Segun el Algoritmo de Alejandro Espinosa Curiel.
Function TfrmPuntoVenta_Backup.Crear_Clave(cedularnc : String) : Integer;
Var
  Numero  : Double;
  Valor   : Int64;
//  Valor   : Integer;
  Texto   : String; //AnsiString;
begin
  //Cargando la Cedula - RNC.
//  Valor := StrToInt(cedularnc);
  Valor := StrToInt64(cedularnc);

  //Obteniendo el Numero Unico (Alejandro Espinosa Curiel).
  Numero := ((Valor * 180) / 360) * 3.1416;

  //Obteniendo la Parte Entera del Numero Unico.
  Valor := Trunc(Numero);

  //Tomando las 1ras 6 Posiciones del Entero.
  Texto := RightStr(IntToStr(Valor), 6);
//  Texto := AnsiRightStr(IntToStr(Valor), 6);

  //Asignando la Clave Obtenida.
  Result := StrToInt(Texto);
end;


//Creando el Usuario de Internet.
Function TfrmPuntoVenta_Backup.Crear_Usuario(nombre : String) : String;
Var
  Texto : String;
  Valor, Largo, Blanco : Integer;
begin
  Largo := Length(nombre);

  Blanco := AnsiPos(' ', nombre);
//  Blanco := AnsiPos(#32, nombre);

  If (Largo > 10) Then
    Begin
      If (Blanco > 1) Then
        Begin
         Valor := Blanco - 1;

         If (Valor > 9) Then
           Texto := Copy(nombre, 1, 10)
         Else
           Texto := Copy(nombre, 1, Valor);
        End
      Else
        Texto := Copy(nombre, 1, 10);
    End
  Else
    Texto := nombre;

  Result := Texto;
end;


//Validando la Existencia del Usuario Creado.
Function TfrmPuntoVenta_Backup.Valida_Usuario(usuario : String) : Boolean;
Var
 qfind  : TAdoQuery;
begin
  qfind := DM.Find('SELECT * FROM PTUsuariosInternet WHERE UsuarioInternet = :usr', usuario);

  If (qfind.RecordCount > 0) then
    Result := False
  Else
    Result := True;

  FreeAndNil(qfind);
end;


//Insertando el Usuario de Internet Creado.
procedure TfrmPuntoVenta_Backup.Insertar_Usuario(usuario: string; clave: string; name: string; cedula: string;
                                          cliente: string; tipo: string; actual: string);
var
 qinsert : TADOQuery;
begin
 qinsert := DM.NewQuery;

 qinsert.Close;
 qinsert.SQL.Text := ' INSERT INTO PTUsuariosInternet(UsuarioInternet, ClaveInternet, Nombre, Identificacion, '+
                     ' ClienteId, Tipo, Actualizado) VALUES (:0, :1, :2, :3, :4, :5, :6)';
 qinsert.Parameters[0].Value := usuario;
 qinsert.Parameters[1].Value := clave;
 qinsert.Parameters[2].Value := name;
 qinsert.Parameters[3].Value := cedula;
 qinsert.Parameters[4].Value := cliente;
 qinsert.Parameters[5].Value := tipo;
 qinsert.Parameters[6].Value := 'N';
 qinsert.ExecSQL;

 FreeAndNil(qinsert);
end;


//Validando la Existencia del Usuario Creado.
Function TfrmPuntoVenta_Backup.Buscar_User_Internet(Cliente : String) : Boolean;
Var
 qfind  : TAdoQuery;
begin
  qfind := DM.Find('SELECT * FROM PTUsuariosInternet WHERE ClienteId = :clt', Cliente);

  If (qfind.RecordCount > 0) then
    Result := True
  Else
    Result := False;

  FreeAndNil(qfind);
end;


function TfrmPuntoVenta_Backup.BuscarDia(dia: Integer) : Integer;
Var
 valor : Integer;
begin
 valor := 0;

 If (dia = 1) And (Dias.Lunes > 0) then
   valor := 1;

 If (dia = 2) And (Dias.Martes > 0) then
   valor := 1;

 If (dia = 3) And (Dias.Miercoles > 0) then
   valor := 1;

 If (dia = 4) And (Dias.Jueves > 0) then
   valor := 1;

 If (dia = 5) And (Dias.Viernes > 0) then
   valor := 1;

 If (dia = 6) And (Dias.Sabado > 0) then
   valor := 1;

 If (dia = 7) And (Dias.Domingo > 0) then
   valor := 1;

 Result := valor;
end;

function TfrmPuntoVenta_Backup.FechaPrometida(Prueba: string) : TDate;
Var
 fecha : TDate;
 qtest : TADOQuery;
 qfrec : TADOQuery;
 idx, valor, conteo, semana, proceso : Integer;
begin
 valor := 0;
 conteo := 0;
 semana := 0;
 proceso := 0;
 idx := 0;

 Dias.Lunes := 0;
 Dias.Martes := 0;
 Dias.Miercoles := 0;
 Dias.Jueves := 0;
 Dias.Viernes := 0;
 Dias.Sabado := 0;
 Dias.Domingo := 0;

 qtest := DM.find('SELECT * FROM PTPrueba WHERE PruebaID = :pru', prueba);

 semana := DayOfTheWeek(DM.SystemDate);

 If (qtest.RecordCount > 0) Then
  Begin
    qfrec := DM.find('SELECT * FROM PTDiasProcesamiento WHERE CodDiasProc = :cod',
                     qtest.FieldByName('CodDiaProc').AsString);

    If (qfrec.RecordCount > 0) Then
      Begin
        If (qfrec.FieldByName('Lunes').AsBoolean = True) Then
          Begin
            Dias.Lunes := 1;
            valor := valor + 1;
          End;

        If (qfrec.FieldByName('Martes').AsBoolean = True) Then
          Begin
            Dias.Martes := 2;
            valor := valor + 2;
          End;

        If (qfrec.FieldByName('Miercoles').AsBoolean = True) Then
          Begin
            Dias.Miercoles := 3;
            valor := valor + 3;
          End;

        If (qfrec.FieldByName('Jueves').AsBoolean = True) Then
          Begin
            Dias.Jueves := 4;
            valor := valor + 4;
          End;

        If (qfrec.FieldByName('Viernes').AsBoolean = True) Then
          Begin
            Dias.Viernes := 5;
            valor := valor + 5;
          End;

        If (qfrec.FieldByName('Sabado').AsBoolean = True) Then
          Begin
            Dias.Sabado := 6;
            valor := valor + 6;
          End;

        If (qfrec.FieldByName('Domingo').AsBoolean = True) Then
          Begin
            Dias.Domingo := 7;
            valor := valor + 7;
          End;
      End;

    If ( valor > 0 ) Then
      Begin
       conteo := 0;
       idx  := semana - 1;
       Repeat
       Inc(idx);
       Inc(conteo);
       If (idx > 7) Then idx := idx - 7;

       Proceso := BuscarDia(idx);
       Until (Proceso > 0) Or (conteo = 7);

       If (Proceso > 0) Then
         Fecha := DM.SystemDate + (conteo - 0) + qtest.FieldByName('DiasResultado').AsInteger
       Else
         Fecha := DM.SystemDate + qtest.FieldByName('DiasResultado').AsInteger;
      End
    Else
      Fecha := DM.SystemDate + qtest.FieldByName('DiasResultado').AsInteger;
  End;

 Result := Fecha;
end;


procedure TfrmPuntoVenta_Backup.Agregar_Pacientes(PacienteId : String);
Var
 sqlString : String;
 qfind, qfindciudad : TADOQuery;
begin
 If ( qrEntradaPaciente.State in [dsinsert,dsedit] ) Then
//    ( qrEntradaPacientePacienteID.Value = '' ) Or
//    ( qrEntradaPacientePacienteID.IsNull ) Then
  Begin
   DM.qrParametro.Close;
   DM.qrParametro.Open;

   sqlString := 'SELECT * FROM PTCliente WHERE GrupoCliente IN (' + #39 +
                DM.qrParametroGrupoVip.Value + #39 + ',' + #39 +
                DM.qrParametroGrupoAcc.Value + #39 + ',' + #39 +
                DM.qrParametroGrupoEmp.Value + #39 + ',' + #39 +
                DM.qrParametroGrupoPriv.Value + #39 + ') '+
                'AND ClienteID LIKE '+ #39 + '%' + PacienteId + '%'+ #39;

   DM.qrPacientes.Close;
   DM.qrPacientes.SQL.Text := sqlString;
   DM.qrPacientes.Open;

   If (DM.qrPacientes.RecordCount > 0) Then
    Begin
      qfindciudad := DM.Find('Select * from PTCiudad Where CiudadID = :ciu', DM.qrPacientesCiudadID.AsString);

      qrEntradaPacientePacienteID.Value := DM.qrPacientesClienteID.Value;
      qrEntradaPacienteNombrePaciente.Value := DM.qrPacientesNombre.Value;
      qrEntradaPacienteDireccion.Value := DM.qrPacientesDireccion.Value;
      qrEntradaPacienteTelefonos.Value := DM.qrPacientesTelefono.Value;
      qrEntradaPacienteTelefono2.Value := DM.qrPacientesTelefono2.Value;
      qrEntradaPacienteFax.Value := DM.qrPacientesFax.Value;
      qrEntradaPacienteEmail.Value := DM.qrPacientesEMail.Value;
      qrEntradaPacienteSexo.Value := DM.qrPacientesSexo.Value;
      qrEntradaPacienteEdadPaciente.Value := Trunc((DM.SystemDate - DM.qrPacientesFechaNacimiento.Value) / 365);

      If (qfindciudad.RecordCount > 0) then
        qrEntradaPacienteDireccion.Value := qrEntradaPacienteDireccion.Value + #13 +
                                            qfindciudad.FieldByName('Descripcion').AsString;

      //Validando Los Parametros de Descuentos.
      Val_Descuento;

      //Llenar Los Parametros de los Pacientes. ////////////////////////////////////////////////////////////
      qrEntradaPacienteResultadoPaciente.Value := DM.qrPacientesEnvioResultado.Value;
      qrentradaPacientePublicarInternet.value := DM.qrPacientesPublicarInternet.Value;

      If (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSeg.Value) then
        begin
          If (DM.qrPacientesCobrarDiferencia.Value = 1) then
            EliminarDescuentoAplicado1Click(Nil);
        end;

      FreeAndNil(qfindCiudad);
    End;

  End;
end;


Function TfrmPuntoVenta_Backup.Cargar_Valor(campo: String; valor: Variant): String;
begin
 Result := campo + ' - ( ' + VarToStr(valor) + ' ).';
end;


procedure TfrmPuntoVenta_Backup.Mirar_Valor_CAB;
Var idx : Integer;
begin
  For idx := 0 To qrEntradaPaciente.FieldCount - 1 Do
   begin
     Showmessage('CAB - ' + Cargar_Valor(qrEntradaPaciente.Fields[idx].DisplayLabel,
                                         qrEntradaPaciente.Fields[idx].Value));
   end;
end;


procedure TfrmPuntoVenta_Backup.Mirar_Valor_DET;
Var idx : Integer;
begin
  For idx := 0 To qrEntradaPacienteDetalle.FieldCount - 1 Do
   begin
     Showmessage('DET - ' + Cargar_Valor(qrEntradaPacienteDetalle.Fields[idx].DisplayLabel,
                                         qrEntradaPacienteDetalle.Fields[idx].Value));
   end;
end;


procedure TfrmPuntoVenta_Backup.Act_RecIdDetalle;
begin
 If MessageDlg('Este Proceso ACTUALIZARA Todas Las Pruebas Registradas.!!!' + #13 +
               'Esta Seguro de Querer Ejecutarlo?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  Begin
   qrEntradaPacienteDetalle.Close;
   qrEntradaPacienteDetalle.SQL.Text := 'SELECT * FROM ptentradapacientedetalle ORDER BY refrecid, secuencia ';
   qrEntradaPacienteDetalle.Open;

   qrEntradaPacienteDetalle.First;
   While not qrEntradaPacienteDetalle.EOF do
    Begin
      qrEntradaPacienteDetalle.Edit;

      qrEntradaPacienteDetalleDATAAREAID.Value := 'ldr';
      qrEntradaPacienteDetalleRECID.Value := GetSecuenciaId;
      qrEntradaPacienteDetalle.Post;

      qrEntradaPacienteDetalle.Next;
    End;

   showmessage('Se Han ACTUALIZADO Todas Las Pruebas Registradas.!!!');
  end
 else
  begin
   showmessage('Operacion Abortada Por el Usuario.!!!');
   abort;
  end;
end;


procedure TfrmPuntoVenta_Backup.GridPruebasEntradasPacienteDetStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;
  if (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSeg.Value) then
   begin
    If (ARecord.Values[GridPruebasEntradasPacienteDetCoberturaAplica.Index] <> 1) Then
     AStyle := noseguro;
   end;
end;



END.



