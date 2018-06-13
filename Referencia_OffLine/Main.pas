﻿unit Main;

interface

uses
  SysUtils, Types, Classes, Variants, JvComponent, JvPrint, ImgList,
  Controls, Menus, Buttons, ExtCtrls, Forms, cxGraphics, cxControls,
  dxStatusBar, dxNavBarBase, dxNavBarStyles, dxNavBar, Tabs, Windows,
  dxBar, dxBarDBNav, dxsbar, dxNavBarCollns, DBActns, ActnList, JvAppEvent,
  dxBarExtItems, Dialogs, XPMan, JvBaseDlg, JvCalc, dxDockControl, ADODB,
  dxDockPanel, JvFormPlacement, JvAppStorage, JvAppRegistryStorage, Graphics,
  dxPSEngn, cxLookAndFeels, dxPSPrVwAdv, RzGroupBar, RzPrgres, RzStatus,
  RzDBStat, RzPanel, RzSplit, StdCtrls, DB, dxmdaset, IceLicense, ComCtrls,
  JvDesktopAlert, RzLabel, RzDBLbl, RzBckgnd, RzButton, cxInplaceContainer,
  JvStringHolder, cxFilterControl, cxDBFilterControl, cxNavigator, cxButtons,
  cxVGrid, cxOI, JvComponentBase, cxStyles, cxEdit, Modules, PymeConst,
  LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel, LMDFormDisplay,
  AdvTabSet, GradientLabel,dlgmensajes,
  PuntoVenta, PuntoVentaClinica, PuntoVentaMod,PuntoVentaLab,PuntoVentaNC,
  PuntoVentaND, DatosCodigosCup, TomaMuestras, AppEvnts,
  DatosMaterialesFactura,DatosPlanesAnuales, DatosPlanesCombos,
  DatosImpresoras, TransferenciaClinica, DatosClientesPlanes,DatosClientes,
  DatosClientesPtoVta,DatosClientesDomicilio,DatosTarjeta,DatosTarjetaNew,
//  PuntoVentaCaps, PuntoVentaLaboratorio, PuntoVentaAdministracion,
  DatosPruebas, DatosCombosPruebas, RegistrarMuestras, SeguimientoCodigoBarra,
  DatosUsuarioAndSuc,CargaVPosSap, CargaNCPosSap, Messages,CargaConcRec,
  ConsultaWServices, ConsultaWebAzul, DialogCobroClientes, ConsultaPagosClientes,
  UInterfaseAs400,GeneracionArchivo607;

type
  TfrmMain = class(TForm, IcxLookAndFeelNotificationListener)
    ilTreeView: TImageList;
    dxToolBar: TdxBarManager;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    miOpciones: TdxBarButton;
    ConfigurarImpresora1: TdxBarButton;
    dxBarUsuario: TdxBarButton;
    dxBarRol: TdxBarButton;
    Salir1: TdxBarButton;
    Sistema1: TdxBarSubItem;
    miBarraEstado: TdxBarButton;
    miVer: TdxBarSubItem;
    Calculadora1: TdxBarButton;
    dxCloseYear: TdxBarButton;
    Herramientas1: TdxBarSubItem;
    Acercade1: TdxBarButton;
    Ayuda1: TdxBarSubItem;
    dxBarComando: TdxBarSubItem;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarButton19: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton21: TdxBarButton;
    dxBarCloseWindow: TdxBarButton;
    dxBarButton23: TdxBarButton;
    dxBarButton24: TdxBarButton;
    dxBarButton25: TdxBarButton;
    dxBarListItem1: TdxBarListItem;
    dxBarMRUListItem1: TdxBarMRUListItem;
    dxBarListItem2: TdxBarListItem;
    dxBarWinList: TdxBarListItem;
    PSetup: TPrinterSetupDialog;
    ilNavBarSmall: TImageList;
    JvCalculator: TJvCalculator;
    dxDockingManager: TdxDockingManager;
    dxDockSiteLeft: TdxDockSite;
    dpMenu: TdxDockPanel;
    JvFormStorage: TJvFormStorage;
    dxBarButton26: TdxBarButton;
    dxBarButton27: TdxBarButton;
    dxBarButton28: TdxBarButton;
    miDeveloperMenu: TdxBarSubItem;
    dxBarButton29: TdxBarButton;
    dxBarButton30: TdxBarButton;
    dxBarButton31: TdxBarButton;
    dxBarButton32: TdxBarButton;
    dxBarButton33: TdxBarButton;
    dxBarButton34: TdxBarButton;
    dxBarButton35: TdxBarButton;
    dxBarButton36: TdxBarButton;
    dxBarToggleNavBar: TdxBarButton;
    lnfController: TcxLookAndFeelController;
    dxBarButton37: TdxBarButton;
    dxBarButton38: TdxBarButton;
    dxBarButton39: TdxBarButton;
    dxBarButton40: TdxBarButton;
    alMainMenu: TActionList;
    nbMainMenu: TdxNavBar;
    StatusBar: TRzStatusBar;
    spTexto: TRzStatusPane;
    spAno: TRzStatusPane;
    ksCaps: TRzKeyStatus;
    ksNum: TRzKeyStatus;
    dbState: TRzDBStateStatus;
    pbStatusBar: TRzProgressBar;
    dxBarButton41: TdxBarButton;
    miContabilidad: TdxBarSubItem;
    miBanco: TdxBarSubItem;
    miCxc: TdxBarSubItem;
    miCxp: TdxBarSubItem;
    miFinanzas: TdxBarSubItem;
    miConfiguracion: TdxBarSubItem;
    dxBarButton42: TdxBarButton;
    dxBarButton43: TdxBarButton;
    dxBarButton44: TdxBarButton;
    dxBarButton45: TdxBarButton;
    dxBarButton46: TdxBarButton;
    dxBarButton47: TdxBarButton;
    dxBarButton48: TdxBarButton;
    dxBarButton49: TdxBarButton;
    dxBarButton50: TdxBarButton;
    dxBarButton51: TdxBarButton;
    dxBarButton52: TdxBarButton;
    dxBarButton53: TdxBarButton;
    dxBarButton54: TdxBarButton;
    dxBarButton55: TdxBarButton;
    dxBarButton56: TdxBarButton;
    dxBarButton57: TdxBarButton;
    dxBarButton58: TdxBarButton;
    dxBarButton59: TdxBarButton;
    dxBarButton60: TdxBarButton;
    dxBarButton61: TdxBarButton;
    dxBarButton62: TdxBarButton;
    dxBarButton63: TdxBarButton;
    dxBarButton64: TdxBarButton;
    dxBarButton65: TdxBarButton;
    dxBarButton66: TdxBarButton;
    dxBarButton67: TdxBarButton;
    dxBarButton68: TdxBarButton;
    dxBarButton69: TdxBarButton;
    dxBarButton70: TdxBarButton;
    dxBarButton71: TdxBarButton;
    dxBarButton72: TdxBarButton;
    dxBarButton73: TdxBarButton;
    dxBarButton74: TdxBarButton;
    dxBarButton75: TdxBarButton;
    dxBarButton76: TdxBarButton;
    dxBarButton77: TdxBarButton;
    dxBarButton78: TdxBarButton;
    dxBarButton79: TdxBarButton;
    dxBarButton80: TdxBarButton;
    dxBarButton81: TdxBarButton;
    dxBarButton82: TdxBarButton;
    dxBarButton83: TdxBarButton;
    dxBarButton84: TdxBarButton;
    dxBarButton85: TdxBarButton;
    dxBarButton86: TdxBarButton;
    dxBarButton87: TdxBarButton;
    dxBarButton88: TdxBarButton;
    dxBarButton89: TdxBarButton;
    dxBarButton90: TdxBarButton;
    dxBarButton91: TdxBarButton;
    dxBarButton92: TdxBarButton;
    dxBarButton93: TdxBarButton;
    dxBarButton94: TdxBarButton;
    dxBarButton95: TdxBarButton;
    dxBarButton96: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton97: TdxBarButton;
    dxBarButton98: TdxBarButton;
    dxBarButton99: TdxBarButton;
    dxBarButton100: TdxBarButton;
    dxBarButton101: TdxBarButton;
    dxBarButton102: TdxBarButton;
    dxBarButton103: TdxBarButton;
    dxBarButton104: TdxBarButton;
    dxBarButton105: TdxBarButton;
    dxBarButton106: TdxBarButton;
    dxBarButton107: TdxBarButton;
    miDataDictionary: TdxBarButton;
    dxBarButton108: TdxBarButton;
    dxBarButton109: TdxBarButton;
    dxBarButton110: TdxBarButton;
    dxBarButton111: TdxBarButton;
    dxBarButton112: TdxBarButton;
    dxBarButton113: TdxBarButton;
    dxMemDataMain: TdxMemData;
    dxMemDataMainCategoria: TStringField;
    dxMemDataMainTexto: TStringField;
    dxMemDataMainImageID: TIntegerField;
    dxMemDataMainModuloIdx: TSmallintField;
    dxBarUserScripts: TdxBarButton;
    dxBarQueryBuilder: TdxBarButton;
    dxBarButton114: TdxBarButton;
    mbFinanzas: TdxBarSubItem;
    mbComercio: TdxBarSubItem;
    dxBarButton115: TdxBarButton;
    dxBarButtonSysDoc: TdxBarButton;
    dxLayoutDockSite1: TdxLayoutDockSite;
    spFavoritos: TRzSizePanel;
    rpFavoritos: TRzPanel;
    tvFavoritos: TTreeView;
    rzCaption: TRzLabel;
    rzBackGround: TGradientLabel;
    dxBarFavoritos: TdxBarButton;
    shFavorites: TJvStrHolder;
    spUser: TRzGlyphStatus;
    deSystemDate: TdxBarDateCombo;
    miIDE: TdxBarButton;
    dxBarButton116: TdxBarButton;
    dpProperties: TdxDockPanel;
    dxFloatDockSite1: TdxFloatDockSite;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton117: TdxBarButton;
    dxBarOpenCompany: TdxBarButton;
    dxBarSendMail: TdxBarButton;
    dxBarButton118: TdxBarButton;
    JvAppEvents: TJvAppEvents;
    spFill: TRzGlyphStatus;
    dxBarUtil: TdxBarSubItem;
    dxBarExportData: TdxBarButton;
    dxBarImportData: TdxBarButton;
    dxBarCompanyExport: TdxBarButton;
    pnWorkSpace: TPanel;
    tsVentanas: TAdvTabSet;
    lmdForms: TLMDFormDisplay;
    ActPuntoVenta: TAction;
    ActReporte: TAction;
    ActClientes: TAction;
    ActDoctores: TAction;
    ActFlebotomista: TAction;
    ActProyectos: TAction;
    ActPruebas: TAction;
    ActSucursales: TAction;
    ActFormaPago: TAction;
    ActParametro: TAction;
    actSincronizar: TAction;
    actGrupoPrueba: TAction;
    ActMoneda: TAction;
    ActAcuerdoPrecios: TAction;
    actcuadre: TAction;
    actciudad: TAction;
    ActEspecialidad: TAction;
    ActGrupoCliente: TAction;
    ActAcuerdoDesc: TAction;
    ActGastosVarios: TAction;
    ActAcuerdoGastosVarios: TAction;
    ActTarjetasNew: TAction;
    ActPlanesCia: TAction;
    ActPuntoVentaCAP: TAction;
    ActPuntoVentaLaboratorio: TAction;
    actMatDefault: TAction;
    ActTomaMuestra: TAction;
    ActDiasProcesos: TAction;
    ActUnidades: TAction;
    ActMateriales: TAction;
    actDepto: TAction;
    actMuestras: TAction;
    AcSeguimientoLabel: TAction;
    ActRegistrarMuestras: TAction;
    ActPuntoVentaClinica: TAction;
    ActImpresoras: TAction;
    actRepCuadre: TAction;
    AcActualizaAS400: TAction;
    ActCuadreGlobal: TAction;
    ActPuntoVentaMod: TAction;
    ActPuntoVentaLab: TAction;
    TransfiereOrdAs400: TAction;
    ActActualizacionPagos: TAction;
    ActActivaCobro: TAction;
    ActPrecioAlternativo: TAction;
    ActTransferenciaClinica: TAction;
    ActReportesUsa: TAction;
    ActPuntoVentaNC: TAction;
    ActPuntoVentaND: TAction;
    ActPlanSPriv: TAction;
    ActReporteVarios: TAction;
    ActReportesEstadisticos: TAction;
    ActPacientesDomicilio: TAction;
    ActNCF: TAction;
    ActReporteDetVentas: TAction;
    dxBarSubItem4: TdxBarSubItem;
    ActUsuarioSucursal: TAction;
    ActCargaPosSap: TAction;
    ActDetPedidoVentas: TAction;
    ActCuadreCaja: TAction;
    ApplicationEvents1: TApplicationEvents;
    Timer1: TTimer;
    ActCuadreCajaMensual: TAction;
    ActCargaPosSapNC: TAction;
    ActDetNotaCredito: TAction;
    ActCargaConcArs: TAction;
    ActDetConcArs: TAction;
    ActReporteAcuerdo: TAction;
    ActConsultaWService: TAction;
    ActConsultaWAzul: TAction;
    ActCobroCliente: TAction;
    ActConsultaCobroCliente: TAction;
    ActReporte607: TAction;
    ActGrupoClienteFac: TAction;
    ActPuntoVentaNCF: TAction;
    procedure ActPuntoVentaNCFExecute(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ApplicationEvents1Message(var Msg: tagMSG; var Handled: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tsVentanasCanClose(Sender: TObject; TabIndex: Integer;
      var CanClose: Boolean);
    procedure tsVentanasChange(Sender: TObject; NewTab: Integer;
      var AllowChange: Boolean);
    procedure tsVentanasTabClose(Sender: TObject; TabIndex: Integer);
    procedure dxBarCompanyExportClick(Sender: TObject);
    procedure dxBarCloseWindowClick(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure UserMenuClick(Sender : TObject);
    procedure miBarraEstadoClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure JvAppEventsActiveFormChange(Sender: TObject);
    procedure dxBarRolClick(Sender: TObject);
    procedure dxNavBarLinkClick(Sender: TObject; ALink: TdxNavBarItemLink);
    procedure dxBarWinListClick(Sender: TObject);
    procedure dxBarWinListGetData(Sender: TObject);
    procedure ConfigurarImpresora1Click(Sender: TObject);
    procedure StatusBarPanels1DblClick(Sender: TObject);
    procedure Calculadora1Click(Sender: TObject);
    procedure Acercade1Click(Sender: TObject);
    procedure JvAppEventsShowHint(var HintStr: String;
      var CanShow: Boolean; var HintInfo: THintInfo);
    procedure dxBarButton29Click(Sender: TObject);
    procedure dxBarButton36Click(Sender: TObject);
    procedure dxBarToggleNavBarClick(Sender: TObject);
    procedure mmActionExecute(Sender: TObject);
    procedure miDataDictionaryClick(Sender: TObject);
    procedure spAnoDblClick(Sender: TObject);
    procedure dxBarUserScriptsClick(Sender: TObject);
    procedure dxBarQueryBuilderClick(Sender: TObject);
    procedure tvMenuComercioEditing(Sender: TObject; Node: TTreeNode;
      var AllowEdit: Boolean);
    procedure TreeItemDblClick(Sender: TObject);
    procedure dxBarButton115Click(Sender: TObject);
    procedure dxNavBar1CustomDrawNavigationPaneOverflowPanel(
      Sender: TObject; ACanvas: TCanvas; AViewInfo: TdxNavBarViewInfo;
      var AHandled: Boolean);
    procedure tvFavoritosDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure tvFavoritosDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure tvFavoritosEditing(Sender: TObject; Node: TTreeNode;
      var AllowEdit: Boolean);
    procedure tvFavoritosKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxBarFavoritosClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure deSystemDateChange(Sender: TObject);
    procedure miIDEClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxBarOpenCompanyClick(Sender: TObject);
    procedure dxBarButton118Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxBarExportDataClick(Sender: TObject);
    procedure dxBarImportDataClick(Sender: TObject);
    function  GetAppInfo(fName: string):string;
    function  GetAppFormVerCaption(Form: TForm):string;

  private
    TrialStatus: String;
    FileParameter: string;
    { Private declarations }
    ShouldClose : Boolean;
    IsClosing : Boolean;
    IsStarting : Boolean;
    CurWindowTag: Integer;
    function IsWindow(WindowTag: Integer): Integer;
    procedure SetOfficeColor;
  protected
    procedure MasterLookAndFeelChanged(Sender: TcxLookAndFeel; AChangedValues: TcxLookAndFeelValues);
    procedure MasterLookAndFeelDestroying(Sender: TcxLookAndFeel);
    function GetObject: TObject;
  public
    { Public declarations }

    CustPtoVta      : String;
    CustTarjeta     : String;
    Recibo          : Boolean;
    Exis_Cap        : Boolean;
    Exis_Lab        : Boolean;
    Exis_Adm        : Boolean;
    Exis_Vta        : Boolean;
    Exis_Cli        : Boolean;
    Tran_fer        : Boolean;
    Muestra_Unico   : Boolean;
    Muestra_Todos   : Boolean;
    Exis_Muestra    : Boolean;
    Exis_Codigo     : Boolean;
    Exis_RegMuestra : Boolean;
    ImageIndex      : Integer;

    frmTmp          : TfrmPuntoVenta;
    frmDom          : TfrmDatosClientesDomicilio;
    frmWS           : TfrmConsultaWServices;
    frmWA           : TfrmConsultaWebAzul;
//    frmTar          : TfrmDatosTarjeta;
    frmTar          : TfrmDatosTarjetaNew;
    frmClinica      : TfrmPuntoVentaClinica;
    frmTmpMod       : TfrmPuntoVentaMod;
    frmTmpLab       : TfrmPuntoVentaLab;
    frmTmpNCR       : TfrmPuntoVentaNC;
    frmTmpND        : TfrmPuntoVentaND;

    frmTmpMuestra   : TfrmTomaMuestras;
    frmRegMuestras  : TfrmRegistrarMuestras;
    frmSeguimiento  : TfrmSeguimientoCodigoBarra;
    frmCups         : TfrmDatosCodigosCup;
    frmPlanCombo    : TfrmDatosPlanesCombos;
    frmCombo        : TfrmDatosCombosPruebas;
    frmPlanes       : TfrmDatosPlanesAnuales;
    frmPlanCliente  : TfrmDatosClientesPlanes;
    frmCustPtoVta   : TfrmDatosClientesPtoVta;
    frmTransferencia: TfrmTransferenciaClinica;

    frmCap          : TfrmPuntoVenta;
    frmCapMod       : TfrmPuntoVentaMod;
    frmCapLab       : TfrmPuntoVentaLab;
    frmCapNCR       : TfrmPuntoVentaNC;
    frmCapND        : TfrmPuntoVentaND;

    frmLab          : TfrmPuntoVenta;
    frmLabMod       : TfrmPuntoVentaMod;
    frmLabLab       : TfrmPuntoVentaLab;
    frmLabNCR       : TfrmPuntoVentaNC;
    frmLabND        : TfrmPuntoVentaND;

    frmAdmin        : TfrmPuntoVenta;
    frmAdminMod     : TfrmPuntoVentaMod;
    frmAdminLab     : TfrmPuntoVentaLab;
    frmAdminNCR     : TfrmPuntoVentaNC;
    frmAdminND      : TfrmPuntoVentaND;

    frmDatPac       : TfrmDatosClientes;

    frmDatosClientesDomicilio:  TfrmDatosClientesDomicilio;
    frmDatosTarjeta:            TfrmDatosTarjeta;
    frmDatosTarjetaNew:         TfrmDatosTarjetaNew;
//    frmCap          : TfrmPuntoVentaCaps;
//    frmLab          : TfrmPuntoVentaLaboratorio;
//    frmAdmin        : TfrmPuntoVentaAdministracion;

    procedure BuildMenu;
    procedure CreateMenu;
    procedure CreateMenuTv;
    procedure SetActions;
    procedure ShowForm( frm : TCustomForm; show : boolean = true );
    procedure LanzaConsulta( iConsulta : Integer ; sParam : String; sParamOpcional : String = '');
    procedure LanzaVentana( iOpcion : Integer ; iSec : Integer = -2 );
    procedure SetAnoFiscalPanel;

    Function  Get_ComputerName : String;
    Function  Get_SesionUserName : String;
  end;

var
  frmMain: TfrmMain;

implementation

uses DataModule, ActionsDM, DatosModule, CustomModule,
  DatosRoles, DatosUsuario, OpcionesSistema,
  Splash, AboutBox,ConsultaModule, ReportsDM,
  RepExplorer, OpcionesModule, daDataDictionaryBuilder,
  DiccionarioDeDatos, StrUtils, OpcionesEmpresa, DatosUserScripts, ConsultaExplorer,
  ReportExplorer, QueryBuilderModule,dxOffice11, IDEModule,DialogSysOpenCompany,
  DialogDbSetup, JclStrings, DialogSysDataExport, DialogConsultaRelacionados,
  SysDocManager, DialogSysCompanyExport,DialogConsultaPaciente,DialogConsultaPerfilGenetico,DialogConsultaPruebas,
  DialogCobro,DialogConsultaCliente,DialogConsultaEntradas, DialogConsultaEntradasClinica,
  DatosGrupoClientes,DatosSucursales,DatosFormaPago,DatosProyectos,DatosFlebotomistas,
  DatosDoctor,DatosPacientes,DatosGrupoPrueba,OpcionesVenta,DialogImpCobro, DialogImpCobro2,
  ConfirmarCobertura,DatosMoneda,DatosAcuerdoPrecio,DialogNC,DialogNCR,DialogImpNC,CambioLaboratorio,
  DatosCiudad,DatosDescUsuario,DialogDescUsuario,DatosEpecialidad,DialogCobEspecial,
  DialogImpCuadre,ConsultaTransClientes,DialogBalCliente,DatosUsuarioSuc,DialogDescCobro,
  DatosAcuerdoDescuento,DatosGastosVarios,DatosAcuerdoGastosVarios,DatosGastosVariosTrans,
  DialogGastoExterior,DialogPrecioExterior,Dialog2daMuestra,DialogPrecioSucursal,
  GastosVariosTrans, DialogConsultaDoctores,DialogAuditoriaFact,

  CuadreCajaUsuario, CuadreCajaSucursal, CuadreCajaUsuario2, CuadreCajaSucursal2,

  CuadreCaja, CuadreCajaSucursalGlobal, DialogTransferenciaClinica, ProcesosPorLote,

  DatosClientesParametros, ConfirmarCoberturaTardia, DialogTomaMuestra,
  DatosTarjetasCliente, DatosTarjetaBonos, DialogCobroPesos, DialogCobroDolares, CargaPlanCia1,

  DatosCondPaciente, DatosCondMuestra, DatosDiasProcesamiento, DatosUnidades,
  DialogReciboIngresos, DatosMaterialesDefault, DatosMuestras, DatosCombos, DatosDepto,
  DialogProcesarPruebas, DialogImprimirLabel, DatosMateriales, DatosMaterialesPruebas,
  DatosUsuariosInternetClientes, DatosUsuariosInternetDoctor, DatosClientesParametros2,

  DialogConsultaCombos2, DialogConsultaCliente2, DialogConsultaCliente3,
  DialogConsultaPruebasCap, DialogConsultaPruebasLab, ImpresionEtiquetas,
  ImpresionListados, DialogAutorizaFacturaPend, DialogRegistrarDeptoSalida,
  DialogConsultaPruebasCombos, DialogConsultaCombos, DialogConsultaClientesPlanes,
  ProcesosPorLoteAS400, DialogConsultaPruebasOld, DialogConsultaPruebasPG, ConfirmarCoberturaTardiaMod,DialogCobroDolaresMod,
  DialogCobroPesosMod,DialogCobroPesosLab,DialogAutorizaFact,DialogNCMod,DialogComentarioPrueba,
  TransferenciaAs400,ActualizaCobros,ActivaCobroPV,DialogBalUsuarioDiario,DatosPrecioAlternativo,ImpresionListing,
  ImpresionVarios,ImpresionEst,ImpresionDetVentas,AutorizacionArs,AutorizacionArsMod,AutorizacionArsND,
  DialogFiliacion,DialogCobroPesosND,DialogCobroDolaresND,ConfirmarCoberturaTardiaND,DialogNCD,ActPlanSAut,uActualizaPto,
  DialogConsultaDependientes,DialogConsultaPacienteDom,DialogConsultaPacienteTar,ActNCF,TransferenciaPOSV_SAP,
  TransferenciaCuadre_SAP,VerificaCuadre_PtoVta,TransferenciaNC_SAP,TransferenciaCON_ARS,ImpresionAcuerdo,DatosGrupoClientesFac,
  UntPuntoVentaNCF;

{$R *.dfm}


//Obtener el Nombre de la Computadora Actual.
Function TfrmMain.Get_ComputerName : String;
  var c1    : dword;
  arrCh : array [0..MAX_PATH] of char;
begin
  c1 := MAX_PATH;
  GetComputerName(arrCh, c1);
  if c1 > 0 then
    result := arrCh
  else
    result := '';
end;

//Obtener el del Usuario - Sesion Actual en la PC.
Function TfrmMain.Get_SesionUserName : String;
var
  BufSize: DWord;
  Buffer: PChar;
begin
 BufSize := 1024;
 Buffer := StrAlloc(BufSize);
 try
  if GetUserName(Buffer, BufSize) then
    SetString(Result, Buffer, BufSize-1)
  else
    RaiseLastOSError;
 finally
   StrDispose(Buffer);
 end;
end;


procedure TfrmMain.ActPuntoVentaNCFExecute(Sender: TObject);
begin
  ImageIndex := TAction(Sender).ImageIndex;
  LanzaVentana( ( Sender As TAction ).Tag );
end;

procedure TfrmMain.ApplicationEvents1Message(var Msg: tagMSG;
  var Handled: Boolean);
begin
  if ((Msg.message >= WM_KEYFIRST) AND (Msg.message <= WM_KEYLAST)) OR
     ((Msg.message >= WM_MOUSEFIRST) AND (Msg.message <= WM_MOUSELAST)) then
    UltimoAcceso := GetTickCount;
end;

procedure TfrmMain.BuildMenu;
begin
  //SetActions;
  //CreateMenu;
  CreateMenuTv;
end;

procedure TfrmMain.Salir1Click(Sender: TObject);
begin
  if MessageDlg('Desea Salir del sistema?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
    Close;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
//Var keyBoardHook : HHOOK;
begin
  //
//  keyBoardHook := SetWindowsHookEx(WH_GETMESSAGE,@KeyboardHookProc,HInstance,GetCurrentThreadId());
  UltimoAcceso := GetTickCount;
  Caption := Application.Title;
  deSystemDate.Date := DM.Buscar_Fecha_Actual;
  Version_App := GetAppInfo(ParamStr(0));
  spFill.Caption := DM.IceLicense.GetOrganisationInfo+' - Versión : '+Version_App;
  tvFavoritos.Font.Name := DM.MenuFont;
  nbMainMenu.Font.Name := DM.MenuFont;
  dxToolBar.Font.Name := DM.FormFont;
  //
  dxToolBar.Style := bmsOffice11;
  dxDockingManager.ViewStyle := vsOffice11;
  lnfController.NativeStyle := True;
  dxBarUsuario.Visible := ivNever;
  dxBarRol.Visible := ivNever;
  dxCloseYear.Visible := ivNever;
  miDataDictionary.Visible := ivNever;
  dxBarQueryBuilder.Visible := ivNever;
  dxBarUserScripts.Visible := ivNever;
  miOpciones.Visible := ivNever;
  miDeveloperMenu.Visible := ivNever;
  dxBarCompanyExport.Visible := ivNever;
  //
  //
  dxBarToggleNavBar.Down := not dpMenu.AutoHide;
  miBarraEstado.Down := StatusBar.Visible;
  dxBarFavoritos.Down := spFavoritos.Visible;
  //
  Caption := Application.Title + ' - ' + DM.TituloEmpresa + TrialStatus; //IceLicense.GetOrganisationInfo;
  //
  RootLookAndFeel.AddChangeListener(Self);
  SetOfficeColor;
  //
  IsStarting := True;
  //
end;

procedure TfrmMain.UserMenuClick(Sender: TObject);
begin
  LanzaVentana( (Sender as TdxBarItem).Tag );
end;

procedure TfrmMain.LanzaVentana(iOpcion: Integer; iSec: Integer = -2);
var
  iParam : Integer;
  frm: TCustomForm;
begin
  try
    Screen.Cursor := crHourGlass;
    if iSec = -2 then
      iParam := DM.GetSecurity(iOpcion)
    else
      iParam := iSec;
//    if iParam = 0 then begin
//      DM.Error('Usted no esta autorizado para usar este formulario');
//      Exit;
//    end;
    if DM.SingleWindow then begin
      if IsWindow(iOpcion) <> 0  then exit;
    end;
    CurWindowTag := iOpcion;
    frm := Nil;
    LockWindowUpdate(Handle);
    case iOpcion of
     -1010:Begin
              frm := TfrmDatosRoles.Create(Self);
              TfrmCustomModule(frm).SetSecurity(iParam);
              ShowForm(frm);
           End;

     -1020:Begin
              frm := TfrmDatosUsuario.Create(Self);
              TfrmCustomModule(frm).SetSecurity(iParam);
              ShowForm(frm);
           end;

     -1818:Begin
              frm := TfrmIDEModule.Create(Self);
              ShowForm(frm);
           end;

     -9910:Begin
              try
                frmQueryBuilderModule := TfrmQueryBuilderModule.Create(Self);
                frmQueryBuilderModule.ShowModal;
              finally
                FreeAndNil(frmQueryBuilderModule);
              end;
           end;

     -9999:Begin
              frm := TfrmDatosUserScripts.Create(Self);
              TfrmDatosUserScripts(frm).ShowExecuteOnly;
              ShowForm(frm);
           end;

     -1030:Begin
              frm := TfrmOpcionesEmpresa.Create(Self);
              with TfrmCustomModule(frm) do begin
                if DM.IsAdmin then
                  SetSecurity(0)
                else
                  SetSecurity(3);
              end;
              ShowForm(frm);
           end;

     -1040:Begin
            frm := TfrmDiccionarioDeDatos.Create(Self);
            ShowForm(frm);
           end;

     -7999:with TfrmDialogConsultaPaciente.Create(Self) do begin
              Run;
              Free;
           end;
     -7979:with TfrmDialogConsultaPerfilGenetico.Create(Self) do begin
              Run;
              Free;
           end;
     -7998:with TfrmDialogConsultaPruebas.Create(Self) do begin
              Run;
              Free;
           end;
     -8035:with TfrmDialogFiliacion.Create(Self) do begin
              Run;
              Free;
           end;
     -7997:with TfrmDialogCobro.Create(Self) do begin
              Run;
              Free;
           end;

     -7996:with TfrmDialogConsultaCliente.Create(Self) do begin
              Run;
              Free;
           end;

     -7995:with TfrmDialogConsultaEntradas.Create(Self) do begin
              Run;
//LLamando la consulta (RAUL - TOMA DE MUESTRA).              Run(sParam);
              Free;
           end;

     -7994:with TfrmDialogConsultaPacienteDom.Create(Self) do begin
              Run;
              Free;
           end;

     -7990:with TfrmDialogConsultaPacienteTar.Create(Self) do begin
              Run;
              Free;
           end;

     -7993:with TfrmConfirmarCobertura.Create(Self) do begin
              Run;
              Free;
           end;

     -7992:If Factura_St='I' Then
            begin
              with TfrmDialogNC.Create(Self) do begin
                  Run;
                  Free;
              End;
            end
            else If Factura_St='M' Then
            begin
              with TfrmDialogNCMod.Create(Self) do begin
                  Run;
                  Free;
              end;
            end
            else If Factura_St='N' Then
            begin
              with TfrmDialogNCR.Create(Self) do begin
                  Run;
                  Free;
              end;
            end
            else If Factura_St='F' Then
            begin
              with TfrmDialogNCD.Create(Self) do begin
                  Run;
                  Free;
              end;
            end;
     -7991:with TfrmCambioLaboratorio.Create(Self) do begin
              Run;
              Free;
           end;

     -7989:with TfrmDialogDescUsuario.Create(Self) do begin
              Run(iOpcion,iParam);
              Free;
           end;

     -7988:with TfrmDialogCobEspecial.Create(Self) do begin
              Run;
              Free;
           end;

     -7987:with TfrmDialogImpCuadre.Create(Self) do begin
              Run;
              Free;
           end;

     -7986:with TfrmDialogDescCobro.Create(Self) do begin
              Run;
              Free;
           end;

     -7985:with TfrmDialogConsultaPruebasOld.Create(Self) do begin
              Run;
              Free;
           end;

     -7984:with TfrmDialogConsultaDoctores.Create(Self) do begin
              Run;
              Free;
           end;

     -7981:with TfrmDialogAutorizacion.Create(Self) do begin
              Run;
              Free;
           end;

     -8000:with TfrmDialog2daMuestra.Create(Self) do begin
              Run;
              Free;
           end;

     -8001:with TfrmDialogPrecioExterior.Create(Self) do begin
              Run;
              Free;
           end;

     -8002:with TfrmDialogGastoExterior.Create(Self) do begin
              Run;
              Free;
           end;

     -8003:with TfrmDialogConsultaPruebasCombos.Create(Self) do begin
              Run;
              Free;
           end;

      8006:with TfrmDatosClientesParametros.Create(Self) do begin
               Run;
               Free;
           end;

     -8006:with TfrmDatosClientesParametros2.Create(Self) do begin
              Run;
              Free;
           end;

     -8008:with TfrmDialogConsultaCliente2.Create(Self) do begin
              Run;
              Free;
           end;

     -8010:If Factura_St='I' Then
            begin
              with TfrmDialogCobroPesos.Create(Self)
              do begin
                Run;
                Free;
              End;
            end
            else If Factura_St='M' Then
            begin
               with TfrmDialogCobroPesosMod.Create(Self)
               do begin
                Run;
                Free;
               end;
            end
            else If Factura_St='L' Then
            begin
               with TfrmDialogCobroPesosLab.Create(Self)
               do begin
                Run;
                Free;
               end;
            end
            else If Factura_St='F' Then
            begin
               with TfrmDialogCobroPesosND.Create(Self)
               do begin
                Run;
                Free;
               end;
            end;

     -8011:If Factura_St='I' Then
            begin
              with TfrmDialogCobroDolares.Create(Self)
              do begin
                Run;
                Free;
              End;
            end
            else If Factura_St='M' Then
            begin
               with TfrmDialogCobroDolaresMod.Create(Self)
               do begin
                Run;
                Free;
               end;
            end
            else If Factura_St='F' Then
            begin
               with TfrmDialogCobroDolaresND.Create(Self)
               do begin
                Run;
                Free;
               end;
            end;

     -8012:with TfrmDialogConsultaCliente3.Create(Self) do begin
              Run;
              Free;
           end;

     -8014:with TfrmDialogConsultaCombos.Create(Self) do begin
              Run;
              Free;
           end;

     -8016:Begin
              frm := TfrmCargaPlanCia1.Create(Self);
              TfrmCargaPlanCia1(frm).BuscarDatos;
              ShowForm(frm);
           end;

     -8017:with TfrmDialogConsultaCombos2.Create(Self) do begin
              Run;
              Free;
           end;

     -8018:with TfrmDialogConsultaPruebasCap.Create(Self) do begin
              Run;
              Free;
           end;

     -8019:with TfrmDialogConsultaPruebasLab.Create(Self) do begin
              Run;
              Free;
           end;

     -8020:with TfrmDialogProcesarPruebas.Create(Self) do begin
              Run;
              Free;
           end;

     -8021: If Factura_St='I' Then
            begin
              with TfrmConfirmarCoberturaTardia.Create(Self)
              do begin
                Run;
                Free;
              End;
            end
            else If Factura_St='M' Then
            begin
               with TfrmConfirmarCoberturaTardiaMod.Create(Self)
               do begin
                Run;
                Free;
               end;
            end
            else If Factura_St='F' Then
            begin
               with TfrmConfirmarCoberturaTardiaND.Create(Self)
               do begin
                Run;
                Free;
               end;
            end;
     -8022:with TfrmDialogConsultaRelacionados.Create(Self) do begin
              Run;
              Free;
           end;

     -8034: If Factura_St='I' Then
            begin
              with TfrmAutorizacionArs.Create(Self)
              do begin
                Run;
                Free;
              End;
            end
            else If Factura_St='M' Then
            begin
               with TfrmAutorizacionArsMod.Create(Self)
               do begin
                Run;
                Free;
               end;
            end
            else If Factura_St='F' Then
            begin
               with TfrmAutorizacionArsND.Create(Self)
               do begin
                Run;
                Free;
               end;
            end;

     -8024:with TfrmDialogReciboIngreso.Create(Self) do begin
              Run;
              Free;
           end;

     -8025:with TfrmDialogTomaMuestra.Create(Self) do begin
              Run;
              Free;
           end;

     -8026:with TfrmDialogAutorizaFacturaPend.Create(Self) do begin
              Run;
              Free;
           end;

     -8027:with TfrmDialogRegistrarDeptoSalida.Create(Self) do begin
              Run;
              Free;
           end;

     -8028:with TfrmDialogImprimirLabel.Create(Self) do begin
              Run;
              Free;
           end;

     -8030:with TfrmDialogConsultaClientesPlanes.Create(Self) do begin
              Run;
              Free;
           end;

     -8031:with TfrmDialogConsultaEntradasClinica.Create(Self) do begin
              Run;
              Free;
           end;

     -8032:with TfrmDialogTransferenciaClinica.Create(Self) do begin
              Run;
              Free;
           end;
     -8033:with TfrmDialogAuditoriaFact.Create(Self) do begin
              Run;
              Free;
           end;

      1001:Begin
              Factura_St := 'I';
              frm := TfrmPuntoVenta.Create(Self) ;
              frmTmp := frm as TfrmPuntoVenta;
              TFrmCustomModule(frm).SetSecurity(iParam);
              ShowForm(frm);
            end;

      1002:begin
              frm := TfrmReportExplorer.Create(Self);
              TfrmReportExplorer(frm).ShowModulo(1);
              ShowForm(frm);
           end;

      1003:Begin
              frm := TfrmTomaMuestras.Create(Self) ;
              frmTmpMuestra := frm as TfrmTomaMuestras;
              TFrmCustomModule(frm).SetSecurity(iParam);
              ShowForm(frm);
            end;

      1004:Begin
              frm := TfrmRegistrarMuestras.Create(Self) ;
              frmRegMuestras := frm as TfrmRegistrarMuestras;
              TFrmCustomModule(frm).SetSecurity(iParam);
              ShowForm(frm);
            end;

      1005:Begin
              Factura_St := 'C';
              frm := TfrmPuntoVentaClinica.Create(Self) ;
              frmClinica := frm as TfrmPuntoVentaClinica;
              TFrmCustomModule(frm).SetSecurity(iParam);
              ShowForm(frm);
            end;
      1006:Begin
              Factura_St := 'M';
              frm := TfrmPuntoVentaMod.Create(Self) ;
              frmTmpMod := frm as TfrmPuntoVentaMod;
              TFrmCustomModule(frm).SetSecurity(iParam);
              ShowForm(frm);
            end;
      1007:Begin
              Factura_St := 'L';
              frm := TfrmPuntoVentaLab.Create(Self) ;
              frmTmpLab := frm as TfrmPuntoVentaLab;
              TFrmCustomModule(frm).SetSecurity(iParam);
              ShowForm(frm);
            end;
      1010:Begin
              Factura_St := 'N';
              frm := TfrmPuntoVentaNC.Create(Self) ;
              frmTmpNCR:= frm as TfrmPuntoVentaNC;
              TFrmCustomModule(frm).SetSecurity(iParam);
              ShowForm(frm);
            end;
      1011:Begin
              Factura_St := 'F';
              frm := TfrmPuntoVentaND.Create(Self) ;
              frmTmpND:= frm as TfrmPuntoVentaND;
              TFrmCustomModule(frm).SetSecurity(iParam);
              ShowForm(frm);
            end;

      1008:Begin
              frm := TfrmActCobros.Create(Self) ;
              frmActCobros := frm as TfrmActCobros;
              TFrmCustomModule(frm).SetSecurity(iParam);
              ShowForm(frm);
            end;

      1012:Begin
              frm := TfrmDatosClientesDomicilio.Create(Self);
              frmDom := frm as TfrmDatosClientesDomicilio;
              TfrmCustomModule(frm).SetSecurity(iParam);
              ShowForm(frm);
           End;

      1100:Begin
              frm := TfrmDatosClientesPtoVta.Create(Self);
              frmCustPtoVta := frm as TfrmDatosClientesPtoVta;
              TfrmCustomModule(frm).SetSecurity(iParam);
              ShowForm(frm);
           End;

      1101:Begin
//             Raise exception.CreateFmt(' NO SE PUEDE AGREGAR PACIENTES POR ESTA OPCION. '+ #13 +
//                                       ' UTILICE LA OPCION QUE SE CREO EN EL PUNTO DE VENTA. '+ #13 +
//                                       ' ES LA UNICA QUE FUNCIONA DE AHORA EN ADELANTE.!!!', []);
              frm := TfrmDatosClientes.Create(Self);
              frmDatPac        := frm as TfrmDatosClientes;
              TfrmCustomModule(frm).SetSecurity(iParam);
              ShowForm(frm);
           End;

      1102:Begin
              frm := TfrmDatosPacientes.Create(Self);
              TfrmCustomModule(frm).SetSecurity(iParam);
              ShowForm(frm);
           End;

      1103:Begin
              frm := TfrmDatosDoctor.Create(Self);
              TfrmCustomModule(frm).SetSecurity(iParam);
              ShowForm(frm);
           End;

      1104:Begin
              frm := TfrmDatosFlebotomistas.Create(Self);
              TfrmCustomModule(frm).SetSecurity(iParam);
              ShowForm(frm);
           End;

      1105:Begin
              frm := TfrmDatosProyectos.Create(Self);
              TfrmCustomModule(frm).SetSecurity(iParam);
              ShowForm(frm);
           End;

      1106:Begin
              frm := TfrmDatosPruebas.Create(Self);
              TfrmCustomModule(frm).SetSecurity(iParam);
              ShowForm(frm);
           End;

      1107:Begin
              frm := TfrmDatosFormaPago.Create(Self);
              TfrmCustomModule(frm).SetSecurity(iParam);
              ShowForm(frm);
           End;

      1108:Begin
              frm := TfrmDatosSucursales.Create(Self);
              TfrmCustomModule(frm).SetSecurity(iParam);
              ShowForm(frm);
           End;

      1109:Begin
              frm := TfrmDatosGrupoClientes.Create(Self);
              TfrmCustomModule(frm).SetSecurity(iParam);
              ShowForm(frm);
           End;

      1110:Begin
              frm := TfrmDatosGrupoPrueba.Create(Self);
              TfrmCustomModule(frm).SetSecurity(iParam);
              ShowForm(frm);
           End;

      1111:Begin
              frm := TfrmDatosMoneda.Create(Self);
              TfrmCustomModule(frm).SetSecurity(iParam);
              ShowForm(frm);
           End;

      1112:Begin
              frm := TfrmDatosCiudad.Create(Self);
              TfrmCustomModule(frm).SetSecurity(iParam);
              ShowForm(frm);
           End;

      1113:Begin
              frm := TfrmDatosEspecialidad.Create(Self);
              TfrmCustomModule(frm).SetSecurity(iParam);
              ShowForm(frm);
           End;

      1114:Begin
              frm := TfrmDatosGastosVarios.Create(Self);
              TfrmCustomModule(frm).SetSecurity(iParam);
              ShowForm(frm);
           End;

      1115:Begin
              frm := TfrmDatosTarjetaNew.Create(Self);
              frmTar := frm as TfrmDatosTarjetaNew;
              TfrmCustomModule(frm).SetSecurity(iParam);
              ShowForm(frm);
           End;

      1116:Begin
              frm := TfrmDatosDiasProcesamiento.Create(Self);
              TfrmCustomModule(frm).SetSecurity(iParam);
              ShowForm(frm);
           End;

      1117:Begin
              frm := TfrmDatosUnidades.Create(Self);
              TfrmCustomModule(frm).SetSecurity(iParam);
              ShowForm(frm);
           End;

      1118:Begin
              frm := TfrmDatosMateriales.Create(Self);
              TfrmCustomModule(frm).SetSecurity(iParam);
              ShowForm(frm);
           End;

      1119:Begin
              frm := TfrmDatosDepto.Create(Self);
              TfrmCustomModule(frm).SetSecurity(iParam);
              ShowForm(frm);
           End;

      1120:Begin
              frm := TfrmDatosMuestras.Create(Self);
              TfrmCustomModule(frm).SetSecurity(iParam);
              ShowForm(frm);
           End;
      1121:Begin
              frm := TfrmDatosPreciosAlt.Create(Self);
              TfrmCustomModule(frm).SetSecurity(iParam);
              ShowForm(frm);
           End;
      1122:Begin
              frm := TfrmDatosTarjetaNew.Create(Self);
              frmTar := frm as TfrmDatosTarjetaNew;
              TfrmCustomModule(frm).SetSecurity(iParam);
              ShowForm(frm);
           End;
      1123:Begin
              frm := TfrmDatosUsuarioAndSuc.Create(Self);
//              frmTar := frm as TfrmDatosUsuarioAndSuc;
              TfrmCustomModule(frm).SetSecurity(iParam);
              ShowForm(frm);
           End;
      1124:Begin
              frm := TfrmDatosGrupoClientesFac.Create(Self);
//              frmTar := frm as TfrmDatosUsuarioAndSuc;
              TfrmCustomModule(frm).SetSecurity(iParam);
              ShowForm(frm);
           End;
      1201:Begin
              frm := TfrmOpcionesVenta.Create(Self);
              TfrmCustomModule(frm).SetSecurity(iParam);
              ShowForm(frm);
           End;

      1202:Begin
              frm := TfrmDatosImpresoras.Create(Self);
              TfrmCustomModule(frm).SetSecurity(iParam);
              ShowForm(frm);
           End;

      1203:Begin
              frm := TfrmDatosAcuerdoPrecio.Create(Self);
              TfrmCustomModule(frm).SetSecurity(iParam);
              ShowForm(frm);
           End;

      1204:Begin
              frm := TfrmDatosAcuerdoDescuento.Create(Self);
              TfrmCustomModule(frm).SetSecurity(iParam);
              ShowForm(frm);
           End;

      1205:Begin
              frm := TfrmDatosAcuerdoGastosVarios.Create(Self);
              TfrmCustomModule(frm).SetSecurity(iParam);
              ShowForm(frm);
           End;

      1206:Begin
              frm := TfrmDatosMaterialesDefault.Create(Self);
              TfrmCustomModule(frm).SetSecurity(iParam);
              ShowForm(frm);
           End;

      1301:Begin
              frm := TfrmDatosPlanesAnuales.Create(Self) ;
              frmPlanes := frm as TfrmDatosPlanesAnuales;
              TFrmCustomModule(frm).SetSecurity(iParam);
              ShowForm(frm);
            end;
{
      1302:Begin
              frm := TfrmPuntoVentaCaps.Create(Self) ;
              frmCap := frm as TfrmPuntoVentaCaps;
              TFrmCustomModule(frm).SetSecurity(iParam);
              ShowForm(frm);
            end;

      1303:Begin
              frm := TfrmPuntoVentaLaboratorio.Create(Self) ;
              frmLab := frm as TfrmPuntoVentaLaboratorio;
              TFrmCustomModule(frm).SetSecurity(iParam);
              ShowForm(frm);
            end;

      1304:Begin
              frm := TfrmPuntoVentaAdministracion.Create(Self) ;
              frmAdmin := frm as TfrmPuntoVentaAdministracion;
              TFrmCustomModule(frm).SetSecurity(iParam);
              ShowForm(frm);
            end;
}
     1305:Begin
              frm := TfrmSeguimientoCodigoBarra.Create(Self) ;
              frmSeguimiento := frm as TfrmSeguimientoCodigoBarra;
              TFrmCustomModule(frm).SetSecurity(iParam);
              ShowForm(frm);
            end;

     1306:with TfrmProcesosPorLoteAS400.Create(Self) do begin
              Run;
              Free;
           end;

     1307:Begin
              frm := TfrmTransferenciaClinica.Create(Self) ;
              frmTransferencia := frm as TfrmTransferenciaClinica;
              TFrmCustomModule(frm).SetSecurity(iParam);
              ShowForm(frm);
            end;
     1308:Begin
              frm := TfrmTransferenciaAS400.Create(Self) ;
              frmTransferenciaAS400 := frm as TfrmTransferenciaAS400;
              TFrmCustomModule(frm).SetSecurity(iParam);
              ShowForm(frm);
            end;

     1309:with TfrmActivaCobro.Create(Self) do begin
              Run;
              Free;
            end;
     1310:with TfrmProcesosActPlanS.Create(Self) do begin
              Run;
              Free;
            end;
     1311:with TfrmActNCF.Create(Self) do begin
              Run;
              Free;
            end;
     1312:Begin
              frm := TfrmTransferenciaPOSV_SAP.Create(Self) ;
              frmTransferenciaPOSV_SAP := frm as TfrmTransferenciaPOSV_SAP;
              TFrmCustomModule(frm).SetSecurity(iParam);
              ShowForm(frm);
          end;

     1313:Begin
              frm := TfrmVerificaCuadre_VTA.Create(Self) ;
              frmVerificaCuadre_VTA := frm as TfrmVerificaCuadre_VTA;
              TFrmCustomModule(frm).SetSecurity(iParam);
              ShowForm(frm);
          end;

     1314:Begin
              frm := TfrmTransferenciaCuadre_SAP.Create(Self) ;
              frmTransferenciaCuadre_SAP := frm as TfrmTransferenciaCuadre_SAP;
              TFrmCustomModule(frm).SetSecurity(iParam);
              ShowForm(frm);
          end;

     1315:Begin
              frm := TfrmTransferenciaNC_SAP.Create(Self) ;
              frmTransferenciaNC_SAP := frm as TfrmTransferenciaNC_SAP;
              TFrmCustomModule(frm).SetSecurity(iParam);
              ShowForm(frm);
          end;

     1316:with TfrmCargaConcRec.Create(Self) do begin
              Run;
              Free;
           end;
     1317:Begin
              frm := TfrmTransferenciaCON_ARS.Create(Self) ;
              frmTransferenciaCON_ARS := frm as TfrmTransferenciaCON_ARS;
              TFrmCustomModule(frm).SetSecurity(iParam);
              ShowForm(frm);
          end;

     1318:Begin
              frm := TfrmConsultaWServices.Create(Self);
              frmConsultaWServices := frm as TfrmConsultaWServices;
              TfrmCustomModule(frm).SetSecurity(iParam);
              ShowForm(frm);
          end;

     1319:Begin
              frm := TfrmConsultaWebAzul.Create(Self);
              frmConsultaWebAzul := frm as TfrmConsultaWebAzul;
              TfrmCustomModule(frm).SetSecurity(iParam);
              ShowForm(frm);
          end;
     1320:with TfrmDialogCobroClientes.Create(Self) do begin
              Run;
              Free;
           end;
     1321:Begin
              frm := TfrmConsultaPagosClientes.Create(Self);
              frmConsultaPagosClientes := frm as TfrmConsultaPagosClientes;
              TfrmCustomModule(frm).SetSecurity(iParam);
              ShowForm(frm);
          end;
     1322:with TfrmGeneracionArchivo607.Create(Self) do begin
              Run;
              Free;
           end;

//     1402:with TfrmCuadreCaja.Create(Self) do begin
//     1401:with TfrmCuadreCajaSucursal.Create(Self) do begin
//     1402:with TfrmCuadreCajaUsuario.Create(Self) do begin
//     1401:with TfrmProcesosPorLote.Create(Self) do begin
     1401:with TfrmCuadreCajaSucursal2.Create(Self) do begin
              Run;
              Free;
           end;

     1402:with TfrmCuadreCajaUsuario2.Create(Self) do begin
              Run;
              Free;
           end;

     1403:with TfrmDialogImpCuadre.Create(Self) do begin
              Run;
              Free;
           end;

     1404:with TfrmCuadreCajaSucursalGlobal.Create(Self) do begin
              Run;
              Free;
           end;
     1405:with TfrmCargaVPosSap.Create(Self) do begin
              Run;
              Free;
           end;
     1406:with TfrmCargaNCPosSap.Create(Self) do begin
              Run;
              Free;
           end;

{     1501:with TfrmImpresionEtiquetas.Create(Self) do begin
              Run;
              Free;
           end;
}
     1501:with TfrmImpresionListing.Create(Self) do begin
              Run;
              Free;
           end;

     1502:with TfrmImpresionListados.Create(Self) do begin
              Run;
              Free;
           end;

     1503:with TfrmImpresionVarios.Create(Self) do begin
              Run;
              Free;
           end;
     1504:with TfrmImpresionEst.Create(Self) do begin
              Run;
              Free;
           end;
     1505:with TfrmImpresionDetVentas.Create(Self) do begin
              Run;
              Free;
           end;
     1506:with TfrmImpresionAcuerdo.Create(Self) do begin
              Run;
              Free;
           end;

     1549:Begin
              frm := TfrmReportExplorer.Create(Self) ;
              With TfrmReportExplorer(frm) do begin
                SetSecurity(iParam);
                ShowModulo(5, False);
              end;
              ShowForm(frm);
           end;

     9001:Begin
              frm := TfrmReportExplorer.Create(Self) ;
              With TfrmReportExplorer(frm) do begin
                SetSecurity(iParam);
                ShowModulo(11, False);
              end;
              ShowForm(frm);
           end;

     9002:Begin
              frm := TfrmReportExplorer.Create(Self) ;
              With TfrmReportExplorer(frm) do begin
                SetSecurity(iParam);
                ShowModulo(12, False);
              end;
              ShowForm(frm);
           end;

     9003:Begin
              frm := TfrmReportExplorer.Create(Self) ;
              With TfrmReportExplorer(frm) do begin
                SetSecurity(iParam);
                ShowModulo(13, False);
              end;
              ShowForm(frm);
           end;

     9004:Begin
              frm := TfrmReportExplorer.Create(Self) ;
              With TfrmReportExplorer(frm) do begin
                SetSecurity(iParam);
                ShowModulo(14, False);
              end;
              ShowForm(frm);
           end;

     9005:Begin
              frm := TfrmReportExplorer.Create(Self) ;
              With TfrmReportExplorer(frm) do begin
                SetSecurity(iParam);
                ShowModulo(15, False);
              end;
              ShowForm(frm);
           end;

     9006:Begin
              frm := TfrmReportExplorer.Create(Self) ;
              With TfrmReportExplorer(frm) do begin
                SetSecurity(iParam);
                ShowModulo(16, False);
              end;
              ShowForm(frm);
           end;

     9007:Begin
              frm := TfrmReportExplorer.Create(Self) ;
              With TfrmReportExplorer(frm) do begin
                SetSecurity(iParam);
                ShowModulo(17, False);
              end;
              ShowForm(frm);
           end;

     9008:Begin
              frm := TfrmReportExplorer.Create(Self) ;
              With TfrmReportExplorer(frm) do begin
                SetSecurity(iParam);
                ShowModulo(18, False);
              end;
              ShowForm(frm);
           end;

     1799:Begin
              frm := TfrmRepExplorer.Create(Self) ;
              ShowForm(frm);
           end;
      1800:Begin
             // Factura_St := 'I';
              frm := TFrmPuntoVentaNCF.Create(Self) ;
              //frmTmp := frm as TFrmPuntoVentaNCF;
              TFrmCustomModule(frm).SetSecurity(iParam);
              ShowForm(frm);
            end;
     end;
    if Assigned(frm) then begin
      (frm as TfrmCustomModule).MyWindowTag := iOpcion;
      tsVentanas.AdvTabs.Items[ tsVentanas.TabIndex ].Tag := iOpcion;
      (frm as TfrmCustomModule).SetTitleImage(ImageIndex);
      ImageIndex := -1;
    end;
  finally
    Screen.Cursor := crDefault;
    Application.ProcessMessages;
    LockWindowUpdate(0);
    RedrawWindow(Handle,nil,0,RDW_ERASE or RDW_FRAME or RDW_INVALIDATE or RDW_ALLCHILDREN);
  end;
end;


procedure TfrmMain.miBarraEstadoClick(Sender: TObject);
begin
    //miBarraEstado.Checked := not miBarraEstado.Checked;
  StatusBar.Visible := miBarraEstado.Down;
end;

procedure TfrmMain.FormResize(Sender: TObject);
begin
  spTexto.Width := ( self.ClientWidth - ( spAno.Width + spUser.Width + ksCaps.Width + ksNum.Width + dbState.Width + pbStatusBar.Width )) - 30;
end;

procedure TfrmMain.JvAppEventsActiveFormChange(Sender: TObject);
var
  CurrentForm: TCustomForm;
begin
  if not IsClosing then begin
    try
      LockWindowUpdate(Handle);
//      if MDIChildCount = 0 then begin
//       dmAppActions.CleanUpActions;
//       dxBarComando.Enabled := False; // Visible := ivNever;
//      end else begin
//       dxBarComando.Enabled := True; //Visible := ivAlways;
//      end;
      dbState.DataSource := nil;
      CurrentForm := lmdForms.ActiveForm;

      if CurrentForm is TfrmCustomModule then
       begin
        ( CurrentForm as TfrmCustomModule ).UpdateActionsState;
        ( CurrentForm as TfrmCustomModule ).UpdateActionsVisibility;

        if  CurrentForm is TfrmDatosModule then begin
          dbState.DataSource := ( CurrentForm as TfrmDatosModule ).dsDatos;
        end;

        if  CurrentForm is TfrmConsultaModule then begin
          dbState.DataSource := ( CurrentForm as TfrmConsultaModule ).dsDatos;
        end;

        if  CurrentForm is TfrmOpcionesModule then begin
          dbState.DataSource := ( CurrentForm as TfrmOpcionesModule ).dsDatos;
        end;

        if  CurrentForm is TfrmPuntoVenta then begin
          dbState.DataSource := ( CurrentForm as TfrmPuntoVenta ).dsEntradaPaciente;
        end;

        if  CurrentForm is TfrmPuntoVentaMod then begin
          dbState.DataSource := ( CurrentForm as TfrmPuntoVentaMod ).dsEntradaPaciente;
        end;

        if  CurrentForm is TfrmPuntoVentaLab then begin
          dbState.DataSource := ( CurrentForm as TfrmPuntoVentaLab ).dsEntradaPaciente;
        end;

        if  CurrentForm is TfrmPuntoVentaClinica then begin
          dbState.DataSource := ( CurrentForm as TfrmPuntoVentaClinica ).dsEntradaPaciente;
        end;

        ( CurrentForm as TfrmCustomModule ).SetTitleCaption;
      end;
    finally
      LockWindowUpdate(0);
      RedrawWindow(Handle,nil,0,RDW_ERASE or RDW_FRAME or RDW_INVALIDATE or RDW_ALLCHILDREN);
    end;
  end;
end;

procedure TfrmMain.dxBarRolClick(Sender: TObject);
begin
  LanzaVentana(( Sender as TdxBarItem).Tag );
end;

procedure TfrmMain.dxNavBarLinkClick(Sender: TObject;
  ALink: TdxNavBarItemLink);
begin
  ImageIndex := TAction(ALink.Item.Action).ImageIndex;
  LanzaVentana( ALink.Item.Tag );
end;

procedure TfrmMain.dxBarWinListClick(Sender: TObject);
begin
  With dxBarWinList do begin
    IsWindow(TfrmCustomModule( Items.Objects[ItemIndex]).MyWindowTag);
  end;
end;

procedure TfrmMain.dxBarWinListGetData(Sender: TObject);
begin
  With dxBarWinList do
    ItemIndex := Items.IndexOfObject(lmdForms.ActiveForm);
end;

procedure TfrmMain.ConfigurarImpresora1Click(Sender: TObject);
begin
  PSetup.Execute;
end;

procedure TfrmMain.LanzaConsulta(iConsulta: Integer; sParam: String; sParamOpcional : String = '');
var
  iSecurity : Integer;
  frm : TCustomForm;
begin
  try
    Screen.Cursor := crHourGlass;
    LockWindowUpdate(Handle);
    frm := nil;
    case iConsulta of
     -1040:Begin
            frm :=  TfrmDiccionarioDeDatos.Create(Self);
            TfrmDiccionarioDeDatos(frm).ShowTabla(sParam);
            ShowForm(frm);
           end;

    -9910:With TfrmQueryBuilderModule.Create(Self) do begin
              ShowSQl(sParam);
              Free;
           end;

     -9989:Begin
              frm := TfrmReportExplorer.Create(Self);
              TfrmReportExplorer(frm).LanzaReporte(StrToInt(sParam));
              ShowForm(frm);
           end;    // with

     -9999:Begin
              frm := TfrmDatosUserScripts.Create(Self);
              TfrmDatosUserScripts(frm).ShowScript(sParam);
              ShowForm(frm);
           end;

     -7998:with TfrmDialogDependiente.Create(Self) do begin
              Run(sParam);
              Free;
           end;

     -7995:with TfrmDialogImpCobro2.Create(Self) do begin
              Run(strtoint64(sParam));
              Free;
           end;

     -7994:with TfrmDialogImpCobro.Create(Self) do begin
              Run(strtoint64(sParam));
              Free;
           end;
     -7992:with TfrmDialogBalUsuarioDiario.Create(Self) do begin
              Run(sParam,sParamOpcional);
              Free;
           end;

     -7991:with TfrmDialogImpNC.Create(Self) do begin
              Run(strtoint64(sParam),sParamOpcional);
              Free;
           end;

     -7990:Begin
              frm := TfrmDatosDescUsuario.Create(Self);
              TfrmDatosDescUsuario(frm).BuscarData(sParam);
              ShowForm(frm);
           end;

     -7989:Begin
              frm := TfrmConsultaTransClientes.Create(Self);
              TfrmConsultaTransClientes(frm).ShowCliente(sParam);
              ShowForm(frm);
           end;

     -7988:with TfrmDialogBalCliente.Create(Self) do begin
              Run(sParam);
              Free;
           end;

     -7987:Begin
              frm := TfrmDatosUsuarioSuc.Create(Self);
              TfrmDatosUsuarioSuc(frm).BuscarData(sParam);
              ShowForm(frm);
           end;

     -7980:with TfrmDialogComentarioPrueba.Create(Self) do begin
              Run(sParam);
              Free;
           end;

     -7985:with TfrmDialogPrecioSucursal.Create(Self) do begin
              Run(sParam);
              Free;
           end;
{
     -7984:Begin
              frm := TfrmDatosGastosVariosTrans.Create(Self);
              TfrmDatosGastosVariosTrans(frm).SetRefrecid(sParam);
              ShowForm(frm);
           End;
}
     -7984:with TfrmGastosVariosTrans.Create(Self) do begin
              Run(sParam);
              Free;
           end;

     -7983:Begin
              frm := TfrmDatosMaterialesPruebas.Create(Self);
              TfrmDatosMaterialesPruebas(frm).SetPruebaid(sParam);
              ShowForm(frm);
           End;

     -7982:Begin
              frm := TfrmDatosMaterialesFactura.Create(Self);
              TfrmDatosMaterialesFactura(frm).SetRefrecid(sParam);
              ShowForm(frm);
           End;

     -8004:Begin
              frm := TfrmDatosCombosPruebas.Create(Self);
              frmCombo := frm as TfrmDatosCombosPruebas;
              TfrmDatosCombosPruebas(frm).BuscarData(sParam);
              ShowForm(frm);
           end;

     -8005:Begin
              frm := TfrmDatosTarjetasCliente.Create(Self);
              TfrmDatosTarjetasCliente(frm).BuscarData(sParam);
              ShowForm(frm);
           end;

     -8007:Begin
              frm := TfrmDatosCodigosCup.Create(Self);
              frmCups := frm as TfrmDatosCodigosCup;
              TfrmDatosCodigosCup(frm).BuscarData(sParam);
              ShowForm(frm);
           end;

     -8009:Begin
              frm := TfrmDatosTarjetaBonos.Create(Self);
              TfrmDatosTarjetaBonos(frm).BuscarData(sParam);
              ShowForm(frm);
           end;

     -8013:Begin
              frm := TfrmDatosPlanesCombos.Create(Self);
              frmPlanCombo := frm as TfrmDatosPlanesCombos;
              TfrmDatosPlanesCombos(frm).BuscarData(sParam);
              ShowForm(frm);
           end;

     -8015:Begin
              frm := TfrmDatosClientesPlanes.Create(Self);
              frmPlanCliente := frm as TfrmDatosClientesPlanes;
              TfrmDatosClientesPlanes(frm).BuscarData(sParam);
              ShowForm(frm);
           end;
     -7999:with TfrmDialogConsultaPaciente.Create(Self) do begin
              Run;
              Free;
           end;
     -7979:with TfrmDialogConsultaPerfilGenetico.Create(Self) do begin
              Run;
              Free;
           end;

     -8023:Begin
              frm := TfrmDatosUsuariosInternetClientes.Create(Self);
              frmDatosUsuariosInternetClientes := frm as TfrmDatosUsuariosInternetClientes;
              TfrmDatosUsuariosInternetClientes(frm).BuscarData(sParam);
              ShowForm(frm);
           end;

     -8029:Begin
              frm := TfrmDatosUsuariosInternetDoctor.Create(Self);
              TfrmDatosUsuariosInternetDoctor(frm).BuscarData(sParam);
              ShowForm(frm);
           end;

    end;

    if frm <> nil then begin
      TfrmCustomModule(frm).SetTitleImage(89);
      tsVentanas.AdvTabs.Items[ tsVentanas.TabIndex ].Tag := iConsulta;
    end;
  finally
    Screen.Cursor := crDefault;
    LockWindowUpdate(0);
    RedrawWindow(Handle,nil,0,RDW_ERASE or RDW_FRAME or RDW_INVALIDATE or RDW_ALLCHILDREN);
  end;
end;

procedure TfrmMain.StatusBarPanels1DblClick(Sender: TObject);
begin
  LanzaVentana(2090);
end;

procedure TfrmMain.SetAnoFiscalPanel;
begin
  //StatusBar.Panels[1].Text := DM.qrCgParamAnoFiscalBalance.AsString;
  //StatusBar.Panels[2].Text := DM.CurUser;
  spUser.Caption := DM.CurUser;
  spAno.Caption  := FormatDateTime('yyyy',DM.Buscar_Fecha_Actual);
end;

procedure TfrmMain.Calculadora1Click(Sender: TObject);
begin
  jvCalculator.Execute;
end;

procedure TfrmMain.Acercade1Click(Sender: TObject);
begin
  With TFrmAboutBox.Create(Self) do ShowModal;
end;

procedure TfrmMain.JvAppEventsShowHint(var HintStr: String;
  var CanShow: Boolean; var HintInfo: THintInfo);
begin
  spTexto.Caption := HintStr;
end;

procedure TfrmMain.dxBarCloseWindowClick(Sender: TObject);
var
  frm : TCustomForm;
  iCount : Integer;
  AllowChange : Boolean;
begin
  try
    LockWindowUpdate(Handle);
    if lmdForms.FormCount > 0 then begin
      iCount := lmdForms.FormCount - 1;
      lmdForms.RemoveForm(lmdForms.ActiveForm,True);
      if iCount > 0 then begin
        lmdForms.ActiveFormIndex := lmdForms.FormCount - 1;
        frm := lmdForms.Forms[ lmdForms.ActiveFormIndex ];
        with TfrmCustomModule(frm) do begin
          UpdateActionsState;
          UpdateActionsVisibility;
        end;
        frm.Show;
      end else begin
        dmAppActions.CleanUpActions;
      end;
    end else
      Salir1.Click;
  finally
    LockWindowUpdate(0);
  end;
end;

procedure TfrmMain.dxBarCompanyExportClick(Sender: TObject);
begin
  With TfrmDialogSysCompanyExport.Create(Self) do
    try
      ExportCompany;
    finally
      Free;
    end;
end;

procedure TfrmMain.dxBarButton29Click(Sender: TObject);
begin
  DMReports.ppReport.Template.New;
  DMReports.ppReport.Parameters.Clear;
  DMReports.ppReport.Parameters.Add('repTitle',DM.TituloEmpresa);
  DMReports.ppReport.Parameters.Add('repSubTitle',DM.TituloEmpresa);
  DMReports.ppDesigner.ShowModal;
end;

procedure TfrmMain.dxBarButton36Click(Sender: TObject);
begin
  Application.HelpCommand(HELP_CONTENTS, HelpContext);
end;

procedure TfrmMain.dxBarToggleNavBarClick(Sender: TObject);
begin
//  dpMenu.AutoHide := not dpMenu.AutoHide;
//  dpComercio.AutoHide := not dpComercio.AutoHide;
  dpMenu.AutoHide := not dpMenu.AutoHide;
  dxBarToggleNavBar.Down := not dpMenu.AutoHide; // dpMenu.AutoHide;
end;

procedure TfrmMain.mmActionExecute(Sender: TObject);
begin
  ImageIndex := TAction(Sender).ImageIndex;
  LanzaVentana( ( Sender As TAction ).Tag );
end;

procedure TfrmMain.SetActions;
var
  i : Integer;
begin
  DM.qrUserMenu.Close;
  DM.qrUserMenu.Parameters.ParamByName('pRol').Value := DM.CurRol;
  DM.qrUserMenu.Open;
  for i := 0 to alMainMenu.ActionCount -1 do begin
    if DM.qrUserMenu.Locate('OpcionID',alMainMenu.Actions[i].Tag,[]) then
      (alMainMenu.Actions[i] As TAction).Visible := ( DM.qrUserMenuNivel.Value >= 0 )
    else
      (alMainMenu.Actions[i] As TAction).Visible := False;
  end;
end;

procedure TfrmMain.miDataDictionaryClick(Sender: TObject);
begin
  LanzaVentana( -1040 );
end;

procedure TfrmMain.CreateMenu;
var
  pCount : Integer;
  i : Integer;
  iFin : Integer;
  iCom : Integer;
  x : Integer;
  y : Integer;
  s : String;
  sCat : String;
  sSubCat : String;
  sCurCat : String;
  sCurSubCat : String;
  nbPanel : TdxNavBarGroup;
  gbPanel : TRzGroupBar;
  gbGroup : TRzGroup;
  gbItem : TRzGroupItem;
  CurBarM  : TdxBarSubItem;
  CurBarG  : TdxBarSubItem;
  CurBarS  : TdxBarSubItem;
  CurBarI  : TdxBarButton;
  barLink  : TdxBarItemLink;
  bFirst   : Boolean;
  bClose   : Boolean;
  bActive  : Boolean;
begin
//  try
//    LockWindowUpdate(Handle);
//    dxMemDataMain.Open;
//    DM.qrUserMenu.Close;
//    DM.qrUserMenu.Parameters.ParamByName('pRol').Value := DM.CurRol;
//    DM.qrUserMenu.Open;
//    pCount := 0;
//    sCurCat := '';
//    sCurSubCat := '';
//    bFirst := True;
//    for i := 0 to frmMain.alMainMenu.ActionCount -1 do begin
//      s := frmMain.alMainMenu.Actions[i].Category;
//      x := 1;
//      y := Pos('_', s );
//      sCat := MidStr( s, x, y - 1);
//      sSubCat := MidStr( s, y + 1, 100  );
//      DM.qrUserMenu.Locate('OpcionID',frmMain.alMainMenu.Actions[i].Tag,[]);
//      bActive := True;
//      if ( not il_IsTrial ) and ( dxMemDataMain.Locate('Categoria', sCat, []) ) then begin
//        bActive := (Copy( il_License,dxMemDataMainModuloIdx.Value, 1 ) = '1');
//      end;
//      if (DM.qrUserMenuNivel.Value <> -1) and ( bActive ) then begin
//        if sCurCat <> sCat then begin
//          sCurCat := sCat;
//          sCurSubCat := '';
//          Inc(pCount);
//          if TAction(frmMain.alMainMenu.Actions[i]).HelpKeyword = 'Finanzas' then begin
//            nbPanel := nbMainMenu.Groups.Add;
//            CurBarM := mbFinanzas;
//            Inc(iFin);
//          end else begin
//            Inc(iCom);
//            nbPanel := nbComercio.Groups.Add;
//            CurBarM := mbComercio;
//          end;
//          nbPanel.Caption := sCurCat;
//          nbPanel.ShowControl := True;
//          nbPanel.UseControl := True;
//          nbPanel.UseSmallImages := True;
//          bClose := True;
//          //
//          if dxMemDataMain.Locate('Categoria', sCurCat, []) then begin
//            nbPanel.SmallImageIndex := dxMemDataMainImageID.Value;
//            nbPanel.Caption := dxMemDataMainTexto.Value;
//          end;
//          //
//          gbPanel := TRzGroupBar.Create(Self);
//          gbPanel.Style := gbsCategoryView;// gbsTaskList;
//          gbPanel.Parent := nbPanel.Control;
//          gbPanel.Align := alClient;
//          curBarG := TdxBarSubItem.Create(Self);
//          curBarG.Caption := nbPanel.Caption;
//          barLink := CurBarM.ItemLinks.Add;
//          barLink.Item := curBarG;
//          if bFirst then begin
//            barLink.BeginGroup := True;
//            bFirst := false;
//          end;
//        end;
//        if sCurSubCat <> sSubCat then begin
//          sCurSubCat := sSubCat;
//          gbGroup := TRzGroup.Create(Self);
//          gbGroup.Caption := sCurSubCat;
//          gbGroup.SmallImages := ilNavBarSmall;
//          gbGroup.LargeImages := ilNavBarSmall;
//          gbGroup.Close;
//          if bClose then begin
//            gbGroup.Open;
//            bClose := False;
//          end;
//          gbPanel.AddGroup(gbGroup);
//          curBarS := TdxBarSubItem.Create(Self);
//          curBarS.Caption := sCurSubCat;
//          barLink := CurBarG.ItemLinks.Add;
//          barLink.Item := curBarS;
//        end;
//        gbItem := gbGroup.Items.Add;
//        gbItem.Action := frmMain.alMainMenu.Actions[i];
//        curBarI := TdxBarButton.Create(Self);
//        curBarI.Action := frmMain.alMainMenu.Actions[i];
//        curBarI.PaintStyle := psCaption;
//        barLink := curBarS.ItemLinks.Add;
//        barLink.Item := curBarI;
//      end;
//    end;
//    dxMemDataMain.Close;
//    dpComercio.Visible := ( iCom > 0);
//    dpMenu.Visible := ( iFin > 0);
//    if iCom = 0 then begin
//      mbComercio.Visible := ivNever;
//    end;
//    if iFin = 0 then begin
//      mbFinanzas.Visible := ivNever;
//    end;
//    tabMenus.ActiveChildIndex := 0;
//  finally
//    LockWindowUpdate(0);
//  end;
end;

procedure TfrmMain.spAnoDblClick(Sender: TObject);
begin
  //LanzaVentana(2090);
end;

procedure TfrmMain.dxBarUserScriptsClick(Sender: TObject);
begin
  LanzaVentana(-9999);
end;

procedure TfrmMain.dxBarQueryBuilderClick(Sender: TObject);
begin
  LanzaVentana(-9910);
//  with DM  do begin
//    oqbDialog.Execute;
//  end;    // with
end;


procedure TfrmMain.CreateMenuTv;
var
  pCount : Integer;
  iFin, iCom : Integer;
  i : Integer;
  x : Integer;
  y : Integer;
  s : String;
  sCat : String;
  sSubCat : String;
  sCurCat : String;
  sCurSubCat : String;
  bFirst   : Boolean;
  bActive  : Boolean;
  nbPanel : TdxNavBarGroup;
  TvMenuComercio : TTreeView;
  tvCat : TTreeNode;
  tvGroup : TTreeNode;
  tvItem : TTreeNode;
  CurBarM  : TdxBarSubItem;
  CurBarG  : TdxBarSubItem;
  CurBarS  : TdxBarSubItem;
  CurBarI  : TdxBarButton;
  barLink  : TdxBarItemLink;
begin
  try
    LockWindowUpdate(Handle);
    nbMainMenu.Groups.Clear;
    shFavorites.Clear;
    tvFavoritos.Items.Clear;
    mbFinanzas.ItemLinks.Clear;
    dxMemDataMain.Open;
    if DM.IsAdmin then begin
      dxBarUsuario.Visible := ivAlways;
      dxBarRol.Visible := ivAlways;
      dxCloseYear.Visible := ivAlways;
      miDataDictionary.Visible := ivAlways;
      dxBarQueryBuilder.Visible := ivAlways;
      dxBarUserScripts.Visible := ivAlways;
      miOpciones.Visible := ivAlways;
      dxBarUtil.Visible := ivAlways;
      dxBarCompanyExport.Visible := ivAlways;
    end;
    if DM.IsDeveloper then begin
      miDeveloperMenu.Visible := ivAlways;
      //miIDE.Visible := ivNever;
    end;

    DM.qrFavoritos.Close;
    DM.qrFavoritos.Parameters.ParamByName('pUser').Value := DM.CurUser;
    DM.qrFavoritos.Open;
    DM.qrUserMenu.Close;
    DM.qrUserMenu.Parameters.ParamByName('pRol').Value := DM.CurRol;
    DM.qrUserMenu.Open;
    iFin := 0;
    iCom := 0;
    pCount := 0;
    sCurCat := '';
    sCurSubCat := '';
    bFirst := True;
    for i := 0 to frmMain.alMainMenu.ActionCount -1 do begin
      s := frmMain.alMainMenu.Actions[i].Category;
      x := 1;
      y := Pos('_', s );
      sCat := MidStr( s, x, y - 1);
      sSubCat := MidStr( s, y + 1, 100  );
      DM.qrUserMenu.Locate('OpcionID',frmMain.alMainMenu.Actions[i].Tag,[]);
      bActive := True;
      if ( not il_IsTrial ) and ( dxMemDataMain.Locate('Categoria', sCat, []) ) then begin
        bActive := (Copy( il_License,dxMemDataMainModuloIdx.Value, 1 ) = '1');
      end;
      if (DM.qrUserMenuNivel.Value <> -1) and ( bActive ) then begin
        if sCurCat <> sCat then begin
          sCurCat := sCat;
          sCurSubCat := '';
          Inc(pCount);
          if TAction(frmMain.alMainMenu.Actions[i]).HelpKeyword = 'Laboratorio' then begin
            nbPanel := nbMainMenu.Groups.Add;
            CurBarM := mbFinanzas;
            Inc(iFin);
          end else begin
            Inc(iFin); //Inc(iCom);
            CurBarM := mbFinanzas; // mbComercio;
            nbPanel := nbMainMenu.Groups.Add; //nbComercio.Groups.Add;
          end;
          nbPanel.Caption := sCurCat;
          nbPanel.ShowControl := True;
          nbPanel.UseControl := True;
          nbPanel.UseSmallImages := False; //True;
          //
          if dxMemDataMain.Locate('Categoria', sCurCat, []) then begin
            nbPanel.SmallImageIndex := dxMemDataMainImageID.Value;
            nbPanel.LargeImageIndex := dxMemDataMainImageID.Value;
            nbPanel.Caption := dxMemDataMainTexto.Value;
          end;
          //
          curBarG := TdxBarSubItem.Create(Self);
          curBarG.Caption := nbPanel.Caption;
          barLink := CurBarM.ItemLinks.Add;
          barLink.Item := curBarG;
          if bFirst then begin
            barLink.BeginGroup := True;
            bFirst := false;
          end;
          //
          tvMenuComercio := TTreeView.Create(Self);
          TvMenuComercio.DragMode := dmAutomatic;
          TvMenuComercio.HotTrack := True;
          tvMenuComercio.OnEditing := tvMenuComercioEditing;
          tvMenuComercio.OnDblClick := TreeItemDblClick;
          tvMenuComercio.Parent := nbPanel.Control;
          TvMenuComercio.AutoExpand := True;
          tvMenuComercio.Align := alClient;
          tvMenuComercio.Images := ilNavBarSmall;
        end;
        if sCurSubCat <> sSubCat then begin
          sCurSubCat := sSubCat;
          if TvMenuComercio.Items.Count > 0 then begin
            tvGroup := tvMenuComercio.Items.AddChild(tvCat, sCurSubCat);
            tvGroup.ImageIndex := 64;
            tvGroup.SelectedIndex := 64;
          end else
            tvGroup := TvMenuComercio.TopItem;
          //
          curBarS := TdxBarSubItem.Create(Self);
          curBarS.Caption := sCurSubCat;
          barLink := CurBarG.ItemLinks.Add;
          barLink.Item := curBarS;
        end;
        tvItem := tvMenuComercio.Items.AddChildObject(tvGroup,TAction(frmMain.alMainMenu.Actions[i]).Caption,frmMain.alMainMenu.Actions[i]);
        tvItem.ImageIndex := TAction(frmMain.alMainMenu.Actions[i]).ImageIndex;
        tvItem.SelectedIndex := TAction(frmMain.alMainMenu.Actions[i]).ImageIndex;
        // Crear Favortios
        if  DM.qrFavoritos.Locate('OpcionID',frmMain.alMainMenu.Actions[i].Tag,[]) then begin
          if shFavorites.Strings.IndexOf(IntToStr(frmMain.alMainMenu.Actions[i].Tag)) = -1 then begin
            tvItem := tvFavoritos.Items.AddChildObject(nil,TAction(frmMain.alMainMenu.Actions[i]).Caption,frmMain.alMainMenu.Actions[i]);
            tvItem.ImageIndex := TAction(frmMain.alMainMenu.Actions[i]).ImageIndex;
            tvItem.SelectedIndex := TAction(frmMain.alMainMenu.Actions[i]).ImageIndex;
            shFavorites.Strings.Add(IntToStr(frmMain.alMainMenu.Actions[i].Tag));
          end;
        end;
        //
        //tvItem.Tag := frmMain.alMainMenu.Actions[i].Tag;
        curBarI := TdxBarButton.Create(Self);
        curBarI.Action := frmMain.alMainMenu.Actions[i];
        curBarI.PaintStyle := psCaption;
        barLink := curBarS.ItemLinks.Add;
        barLink.Item := curBarI;
      end;
    end;
    dxMemDataMain.Close;
    //dpComercio.Visible := ( iCom > 0);
    dpMenu.Visible := ( iFin + iCom > 0) ;
    //tabMenus.ActiveChildIndex := 0;
  finally
    LockWindowUpdate(0);
  end;
end;

procedure TfrmMain.tvMenuComercioEditing(Sender: TObject; Node: TTreeNode;
  var AllowEdit: Boolean);
begin
  AllowEdit := False;
end;

procedure TfrmMain.Timer1Timer(Sender: TObject);
begin
  // si se llega al tope previsto, se muestra un mensaje
  if ((GetTickCount - UltimoAcceso) > 600000) And (DM.CurRolControlTiempo = True) Then
  begin
      UltimoAcceso := GetTickCount;
      Application.Terminate;
  end;
end;

procedure TfrmMain.TreeItemDblClick(Sender: TObject);
var
  tNode : TTreeNode;
begin
  tNode := ( Sender AS TTreeView ).Selected;
  if assigned(tNode) then begin
    if assigned(tNode.Data) then begin
      ImageIndex := TAction(tNode.Data).ImageIndex;
      TAction(tNode.Data).Execute;
    end;
  end;
end;

procedure TfrmMain.dxBarButton115Click(Sender: TObject);
var
  frmDataDict : TdaDataDictionaryBuilderForm;
begin
  frmDataDict := TdaDataDictionaryBuilderForm.Create(self);
  frmDataDict.DataDictionary := DMReports.ppDataDictionary;
  frmDataDict.ShowModal;
end;

function TfrmMain.IsWindow(WindowTag: Integer): Integer;
var iPrev : Integer;
    iX 		: Integer;
    iTag  : Integer;
begin
  iPrev := 0;
	Try
   //LockWindowUpdate(GetDesktopWindow);
    for iX := 0 to lmdForms.FormCount -1 do begin
      iTag := (lmdForms.Forms[iX] as TfrmCustomModule).MyWindowTag;
      if iTag = WindowTag then begin
        iPrev := iX + 1;
        lmdForms.ActiveFormIndex := iX;
        lmdForms.Forms[iX].Show;
        With TfrmCustomModule(lmdForms.Forms[iX]) do begin
          UpdateActionsState;
          UpdateActionsVisibility;
        end;
        Break;
      end;
    end;
	Finally
    //LockWindowUpdate(0);
  End;
  Result := iPrev;
end;

procedure TfrmMain.dxNavBar1CustomDrawNavigationPaneOverflowPanel(
  Sender: TObject; ACanvas: TCanvas; AViewInfo: TdxNavBarViewInfo;
  var AHandled: Boolean);
begin
  AHandled := True;
end;

procedure TfrmMain.tvFavoritosDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  if (Source is TTreeNode) then begin
    //
    Accept := Assigned((Source as TTreeNode).Data);
  end;
end;

procedure TfrmMain.tsVentanasCanClose(Sender: TObject; TabIndex: Integer;
  var CanClose: Boolean);
var
  i : Integer;
begin
  try
    CurWindowTag := tsVentanas.AdvTabs.Items[TabIndex].Tag;
//    for i := 0 to lmdForms.FormCount - 1 do begin
//      if TfrmCustomModule( lmdForms.Forms[i] ).MyWindowTag = CurWindowTag then begin
//        lmdForms.RemoveForm(lmdForms.Forms[i],True);
//        break;
//      end;
//    end;
    lmdForms.RemoveForm(lmdForms.ActiveForm,True);
    CanClose := True;
  except
    CanClose := False;
    raise;
  end;
end;

procedure TfrmMain.tsVentanasChange(Sender: TObject; NewTab: Integer;
  var AllowChange: Boolean);
var
  I: Integer;
begin
  try
    LockWindowUpdate(Handle);
    //IsWindow(TfrmCustomModule( tsVentanas.AdvTabs.Items[NewTab].AObject ).MyWindowTag);
    //IsWindow(tsVentanas.AdvTabs.Items[NewTab].Tag);
    for I := 0 to lmdforms.FormCount - 1 do begin
      if lmdForms.Forms[i] = tsVentanas.AdvTabs.Items[NewTab].AObject then begin
        lmdForms.ActiveFormIndex := i;
        break;
      end;
    end;
    //lmdForms.ActiveFormIndex := Abs( tsVentanas.TabIndex - ( lmdForms.FormCount - 1 ) );
    CurWindowTag := tsVentanas.AdvTabs.Items[NewTab].Tag;
  finally
    LockWindowUpdate(0);
  end;
end;

procedure TfrmMain.tsVentanasTabClose(Sender: TObject; TabIndex: Integer);
begin
  //dxBarCloseWindowClick(Sender);
  try
    LockWindowUpdate(Handle);
    tsVentanas.Visible := ( tsVentanas.AdvTabs.Count > 1 );
    if not tsVentanas.Visible then
      dmAppActions.CleanUpActions;
  finally
    LockWindowUpdate(0);
  end;
end;

procedure TfrmMain.tvFavoritosDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  tvItem : TTreeNode;
  Action : TAction;
begin
  Action := TAction((Source as TTreeView).Selected.Data);
  DM.DataBase.Execute('INSERT INTO SysMenu (OpcionId,Tipo,Grupo,Titulo,OpcionPadreID) VALUES ( ' +
                        IntToStr(Action.Tag) + ',1,' + #39 + DM.CurUser + #39 + ',' + #39 + Action.Caption  + #39 + ',0)' );
  tvItem := tvFavoritos.Items.AddChildObject(nil,Action.Caption,Action);
  tvItem.ImageIndex := Action.ImageIndex;
  tvItem.SelectedIndex := Action.ImageIndex;
end;

procedure TfrmMain.tvFavoritosEditing(Sender: TObject; Node: TTreeNode;
  var AllowEdit: Boolean);
begin
  AllowEdit := False;
end;

procedure TfrmMain.tvFavoritosKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  actIndex: Integer;
begin
  if (Key = VK_DELETE) and (Shift = []) and (Assigned(tvFavoritos.Selected)) then begin
    if MessageDlg('Desea eliminar esta opción de los favoritos?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then begin
      actIndex := (TAction(tvFavoritos.Selected.Data).Tag);
      DM.DataBase.Execute('DELETE SysMenu WHERE OpcionId = ' + IntToStr(actIndex) + ' AND Grupo = ' + #39 + DM.CurUser + #39);
      tvFavoritos.Selected.Delete;
    end;
  end;
end;

procedure TfrmMain.dxBarFavoritosClick(Sender: TObject);
begin
  spFavoritos.Visible := not spFavoritos.Visible;
end;

procedure TfrmMain.MasterLookAndFeelChanged(Sender: TcxLookAndFeel;
  AChangedValues: TcxLookAndFeelValues);
begin
  SetOfficeColor;
end;

procedure TfrmMain.MasterLookAndFeelDestroying(Sender: TcxLookAndFeel);
begin
  //TO-DO
end;

function TfrmMain.GetObject: TObject;
begin
  Result := Self;
end;

procedure TfrmMain.SetOfficeColor;
begin
  rzBackGround.Color := dxOffice11NavPaneHeaderColor1;
  rzBackGround.ColorTo := dxOffice11NavPaneHeaderColor2;
  spFavoritos.Color := dxOffice11.dxOffice11ToolbarsColor1;
  spFavoritos.BorderColor := dxOffice11.dxOffice11BarMarkColors2[1];
  spFavoritos.Invalidate;
  //
  dmAppActions.lnfWeb.GroupOptions.Color := dxOffice11.dxOffice11ToolbarsColor1;
  dmAppActions.lnfWeb.GroupOptions.CaptionOptions.Color := dxOffice11.dxOffice11BarMarkColors2[1];
  dmAppActions.lnfWeb.GroupOptions.FrameColor := dxOffice11.dxOffice11ControlBorderColor;
  dmAppActions.lnfWeb.ItemOptions.ControlBorderColor := dxOffice11.dxOffice11ControlBorderColor;
  //
  dmAppActions.lnfButtonGroup.GroupOptions.Color := dxOffice11.dxOffice11BarMarkColors1[1];
  dmAppActions.lnfButtonGroup.GroupOptions.FrameColor := dxOffice11.dxOffice11BarMarkColors1[1];
  dmAppActions.lnfButtonGroup.ItemOptions.ControlBorderColor := dxOffice11.dxOffice11ControlBorderColor;
  //
  dmAppActions.lnfNoBorder.GroupOptions.Color := dxOffice11.dxOffice11BarMarkColors1[1];
  //
  tsVentanas.BackgroundColor := dxOffice11ToolbarsColor1;
  tsVentanas.TabBorderColor := dxOffice11NavPaneBorder;
  tsVentanas.SelectedColor := dxOffice11SelectedColor1;
  tsVentanas.SelectedColorTo := dxOffice11SelectedColor2;
  tsVentanas.UnselectedColor := dxOffice11ToolbarsColor1;
  tsVentanas.UnselectedColorTo := dxOffice11ToolbarsColor2;
end;

procedure TfrmMain.ShowForm(frm: TCustomForm; show: boolean);
begin
  if TfrmCustomModule(frm).MyWindowTag = 0 then
    TfrmCustomModule(frm).MyWindowTag := CurWindowTag;
  lmdForms.AddForm(frm, show);
  TfrmCustomModule(frm).Visible := true;
end;

procedure TfrmMain.FormDestroy(Sender: TObject);
var
  I: Integer;
begin
  JvAppEvents.OnActiveFormChange := nil;
  JvAppEvents.OnShowHint := nil;
  //dxOffice11.CleanUpOffice11Colors;
  RootLookAndFeel.RemoveChangeListener(Self);
end;

procedure TfrmMain.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//    if (Key = VK_F1) and (ssCtrl in Shift) then
//    begin
//      Key := 0;
//    end;

end;

procedure TfrmMain.deSystemDateChange(Sender: TObject);
begin
  DM.SystemDate := dm.Buscar_Fecha_Actual;
end;

procedure TfrmMain.miIDEClick(Sender: TObject);
begin
  LanzaVentana(-1818);
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
var
  I: Integer;
begin
  for I := 0 to MDIChildCount  - 1 do begin    // Iterate
    MDIChildren[i].Close;
  end;    // for
  Action := caFree;
end;

procedure TfrmMain.dxBarOpenCompanyClick(Sender: TObject);
var
  I: Integer;
  FileName : String;
  User : String;
  Clave : String;
begin
  FileName := '';
  frmDialogSysOpenCompany := TfrmDialogSysOpenCompany.Create(Self);
  with frmDialogSysOpenCompany do begin
    try
      DM.ApplEmpresas.Close;
      DM.ApplEmpresas.Open;
      lcEmpresas.TabOrder := 2;
      ShowModal;
      If (frmDialogSysOpenCompany.conTest.Connected) then begin
        FileName := DM.ApplEmpresas.FieldByName('Descripcion').Text;//lcEmpresas.EditText;
        User := edUsuario.Text;
        Clave := edClave.Text;
        DM.qrSucursal.locate('Nombre',lcEmpresas.text,[]);
        DM.CurSucursal := DM.qrSucursal.FieldByName('SucursalID').AsString;
//        DM.CurSucursalAs400 := DM.qrSucursal.FieldByName('Sucursal').AsInteger;
      End Else Begin
        if IsStarting then begin
          Application.Terminate;
        end;
      end;
    finally
      Free;
    end;
  end;    // with
  IsStarting := False;
  if FileName <> '' then begin
    //
    while lmdForms.FormCount > 0 do begin
      dxBarCloseWindowClick(Sender);
    end;    // while
    for I := 0 to tsVentanas.AdvTabs.Count - 1 do
      tsVentanas.AdvTabs.Delete( tsVentanas.AdvTabs.Items[0].Index );
    tsVentanas.Visible := False;
    //
    DM.OpenCompany(FileName);
    DM.CheckUser(User,Clave);
    DM.SetUserOptions;
    DM.qrParam.Close;
    DM.qrParam.Open;
    DM.qrParametro.Close;
    DM.qrParametro.Open;
//    DM.qrCgParam.Close;
//    DM.qrCgParam.Open;
    DM.SetCompanyOptions;
    deSystemDate.Date := DM.Buscar_Fecha_Actual;
//    SetAnoFiscalPanel;
    spUser.Caption := DM.CurUser;
    If dm.qrParametroServidor_AS400.value <> EmptyStr then
    begin
       spAno.FillColor := clGreen;//verde
       spAno.Caption  :='Online'
    end
    else
    begin
       spAno.FillColor := clred;//verde
       spAno.Caption  :='Offline';
    end;

    CreateMenuTv;
    if not DM.qrSucursal.Active then
       DM.qrSucursal.Open;
    DM.qrSucursal.locate('SucursalID', DM.CurSucursal, []);
    if DM.TituloEmpresa = '' then
      Caption := Application.Title + TrialStatus
    else
      Caption := Application.Title + ' - ' + DM.TituloEmpresa + TrialStatus + ' - ' + DM.qrSucursal.FieldByName('Nombre').AsString ;
  end;
//      DM.ApplEmpresas.Close;
//      DM.ApplEmpresas.Open;
end;

procedure TfrmMain.dxBarButton118Click(Sender: TObject);
begin
  with TFrmDialogDbSEtup.Create(Self) do begin
    ShowModal;
  end;    // with
end;

procedure TfrmMain.FormShow(Sender: TObject);
Var Version   : String;
begin
  Version := dm.Verifica_Version('Laboratorio');
  if not dm.ApplEmpresas.Active then dm.ApplEmpresas.Open;
//  Showmessage('Servidor='+dm.ApplEmpresas.FieldByName('Servidor').Text+' '+dm.ApplEmpresas.FieldByName('Servidor').Text+' '+dm.ApplEmpresas.FieldByName('sqlUser').Text+' '+dm.ApplEmpresas.FieldByName('sqlPassword').Text+' '+dm.ApplEmpresas.FieldByName('Nombre').Text+' '+Version);
  VerificaVersionExec('Laboratorio',dm.ApplEmpresas.FieldByName('Servidor').Text,dm.ApplEmpresas.FieldByName('sqlUser').Text,dm.ApplEmpresas.FieldByName('sqlPassword').Text,dm.ApplEmpresas.FieldByName('Nombre').Text,Version);
  if bCambio_Ver = True then Application.Terminate;
  if IsStarting then begin
    FileParameter := ExtractFileName(ParamStr(1));
    dxBarOpenCompany.Click;
    dxBarToggleNavBar.Click;
  end;
   If dm.qrParametroServidor_AS400.value <> EmptyStr then
   begin
        If dm.PingHost(dm.qrParametroServidor_AS400.value,1) then
        begin
          InterfaseAS400.ASConnection.Close;
          InterfaseAS400.ASConnection.Open;
        end;
   end;
  if (dm.CurRol = 8) or (dm.CurRol = 12) Then LanzaVentana(1001);
  if (dm.CurRol = 14) Then LanzaVentana(1007);
end;

procedure TfrmMain.dxBarExportDataClick(Sender: TObject);
begin
  with TfrmDialogSysDataExport.Create(Self) do begin
    ShowModal;
    if ModalResult = mrOk then begin
      try
        spTexto.Caption := 'Exportando datos...';
        ExportDataSet.Close;

        case rgDataSet.ItemIndex of    //
          0:ExportDataSet.CommandText := 'Select * from CgCuentas ' ;
          1:ExportDataSet.CommandText := 'Select * from CcClientes ' ;
          2:ExportDataSet.CommandText := 'Select * from CpSuplidor ' ;
          3:ExportDataSet.CommandText := 'Select * from IvProductos Where Tipo = 1' ;
          4:ExportDataSet.CommandText := 'Select * from IvProductos Where Tipo = 2' ;
        end;    // case

        ExportDataSet.Open;
        qExportXML.FileName := edFileName.EditText;
        qExportXML.Execute;
      finally
        spTexto.Caption := '';
      end;
    end;
    Free;
  end;    // with
end;

procedure TfrmMain.dxBarImportDataClick(Sender: TObject);
begin
  with TfrmDialogSysDataExport.Create(Self) do begin
    SetForImport;
    ShowModal;
    if ModalResult = mrOk then begin
      try
        spTexto.Caption := 'Importando datos...';
        ExportDataSet.Close;

        case rgDataSet.ItemIndex of    //
          0:ExportDataSet.CommandText := 'Select * from CgCuentas ' ;
          1:ExportDataSet.CommandText := 'Select * from CcClientes ' ;
          2:ExportDataSet.CommandText := 'Select * from CpSuplidor' ;
          3:ExportDataSet.CommandText := 'Select * from IvProductos Where Tipo = 1' ;
          4:ExportDataSet.CommandText := 'Select * from IvProductos Where Tipo = 2' ;
        end;    // case

        ExportDataSet.Open;
        qImportWizard.FileName := edFileName.EditText;
        qImportWizard.Execute;
      finally
        spTexto.Caption := '';
      end;
    end;
    Free;
  end;    // with
end;
function  TfrmMain.GetAppInfo(fName: string):string;
type
  PaLeerBuffer = array [0..MAX_PATH] of char;
var
  Size, Size2 : DWord;
  Pt, Pt2     : Pointer;
  Idioma      : string;

begin
  Result:='';
  Size := GetFileVersionInfoSize(PChar (fName), Size2); {First modification !}
  if Size > 0 then
  begin
    GetMem (Pt, Size);
    GetFileVersionInfo (PChar (fName), 0, Size, Pt); {Last modification !}
    {Obtenemos la cadena de translacion, requerida para obtener el resto
    de datos del Versioninfo}
    VerQueryValue( Pt, '\VarFileInfo\Translation',Pt2, Size2);
    Idioma:=IntToHex( DWord(Pt2^) ,8 );
    {Le damos la vuelta (Es windows, que quieres...}
    Idioma:=Copy(Idioma,5,4)+Copy(Idioma,1,4);

    {Pedimos la info requerida...}
    VerQueryValue( Pt,Pchar('\StringFileInfo\'+Idioma+'\'+'FileVersion'),Pt2, Size2);
    if Size2 > 0 then
    begin
      {Y la devolvemos}
      Result:=Copy(PaLeerBuffer(Pt2^),1,Size2);
    end;
    FreeMem (Pt);
  end
end;
function  TfrmMain.GetAppFormVerCaption(Form: TForm):string;
var
  Size, Size2: DWord;
  Pt, Pt2: Pointer;
begin
   Size := GetFileVersionInfoSize(PChar (ParamStr (0)), Size2);
   if Size > 0 then
   begin
     GetMem (Pt, Size);
     try
        GetFileVersionInfo (PChar (ParamStr (0)), 0, Size, Pt);
        VerQueryValue (Pt, '\', Pt2, Size2);
        with TVSFixedFileInfo (Pt2^) do
        begin
          Result:= IntToStr (HiWord (dwFileVersionMS)) +'.'
          + IntToStr (LoWord (dwFileVersionMS)) + '.'
          + IntToStr (HiWord (dwFileVersionLS)) + '.'
          + IntToStr (LoWord (dwFileVersionLS));
       end;
     finally
       FreeMem (Pt);
     end;
   end;
end;
// end-else end
//initialization
//  ModuleInfoManager.AddCategory(SContabilidad,6);
//  ModuleInfoManager.AddCategory(SBanco,8);
//  ModuleInfoManager.AddCategory(SCuentasporCobrar,61);
//  ModuleInfoManager.AddCategory(SCuentasporPagar,62);
//  ModuleInfoManager.AddCategory(SVentas,73);
//  ModuleInfoManager.AddCategory(SCompras,72);
//  ModuleInfoManager.AddCategory(SInventario,47);
//  ModuleInfoManager.AddCategory(SServicios,50);
//  ModuleInfoManager.AddCategory(SNomina,84);

end.


