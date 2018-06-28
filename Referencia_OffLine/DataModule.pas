unit DataModule;

interface

uses
  ImgList, Controls, Graphics,ShellApi,
  JvComponent, JvBaseDlg, JvDesktopAlert, JvMemoryDataset,
  DB, ADODB, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxDBExtLookupComboBox, cxEditRepositoryItems, cxDBEditRepository, cxEdit,
  dxmdaset, Atexto, Classes, SysUtils, dxLayoutLookAndFeels,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData,
  StdActns, ActnList, Menus, cxDBLookupComboBox, madExceptVcl,
  Types, Forms, JvPluginManager, JvStringHolder, SplashForm,
  cxExtEditRepositoryItems, JvAppStorage, JvAppXMLStorage, JvComponentBase,
  cxCurrencyEdit, PymeConst, ABSMain, IceLicense, TXComp, ppComm, ppRelatv,
  ppDB, ppDBPipe, cxCheckBox, ppBands, ppCtrls, ppPrnabl, ppClass, ppCache,
  ppProd, ppReport, ppStrtch, ppSubRpt, ppVar, ppMemo, daDataView,
  daQueryDataView, daADO, ppParameter, daDataModule, ppModule, raCodMod,
  LMDSysInfo, LMDCustomComponent, LMDOneInstance, LMDBaseController,
  LMDCustomContainer, LMDCustomImageList, LMDBitmapList,IdLib,ping_funcs,IPExtra,icmp_dll,
  cxTextEdit,printers,dlgMensajes,cxImage,jpeg, ppRegion, ppBarCod,Ced2000EditLib,
  RAWPrinter, ppRichTx;
  // git   hghghfghfh

type
  TDM = class(TDataModule)
    DataBase: TADOConnection;
    qrUserMenu: TADOQuery;
    qrParam: TADOQuery;
    qrParamColorConsulta: TIntegerField;
    qrParamColorAgregar: TIntegerField;
    qrParamColorEditar: TIntegerField;
    qrParamColorBorrar: TIntegerField;
    qrParamTituloEmpresa: TStringField;
    qrParamSubTituloEmpresa: TStringField;
    sqlCommand: TADOQuery;
    qrLogin: TADOQuery;
    qrLoginUserId: TStringField;
    qrLoginClave: TStringField;
    qrLoginNombre: TStringField;
    qrLoginRolID: TSmallintField;
    qrUserRol: TADOQuery;
    qrUserRolUserId: TStringField;
    qrUserRolRolID: TSmallintField;
    qrUserRolAdministrador: TBooleanField;
    qrUserRolDescripcion: TStringField;
    qrUserRolNombre: TStringField;
    qrParamSerial: TStringField;
    Letras: TLetras;
    cmdInsertCgTransacciones: TADOCommand;
    qrParamInterface: TIntegerField;
    mdDimensiones: TdxMemData;
    mdDimensionesTipo: TSmallintField;
    mdDimensionesNombre: TStringField;
    cxEditRepository: TcxEditRepository;
    cxTextEdit: TcxEditRepositoryTextItem;
    cxIntEdit: TcxEditRepositorySpinItem;
    cxCalcEdit: TcxEditRepositoryCalcItem;
    cxDateEdit: TcxEditRepositoryDateItem;
    cxComboBoxEdit: TcxEditRepositoryComboBoxItem;
    cxCheckBoxEdit: TcxEditRepositoryImageComboBoxItem;
    cxViewRepository: TcxGridViewRepository;
    qrRol: TADODataSet;
    qrUser: TADODataSet;
    qrRolRolID: TSmallintField;
    qrRolDescripcion: TStringField;
    qrRolAdministrador: TBooleanField;
    qrUserUserId: TStringField;
    qrUserClave: TStringField;
    qrUserNombre: TStringField;
    qrUserRolID: TSmallintField;
    qrMissingRights: TADODataSet;
    qrMissingRightsObjectID: TSmallintField;
    qrPermisos: TADODataSet;
    qrPermisosRolID: TSmallintField;
    qrPermisosOpcionID: TSmallintField;
    qrPermisosNivel: TSmallintField;
    dsDepartamento: TDataSource;
    cxPostadoSiNoAmbos: TcxEditRepositoryImageComboBoxItem;
    qrUserMenuRolId: TSmallintField;
    qrUserMenuOpcionId: TSmallintField;
    qrUserMenuNivel: TSmallintField;
    qrParamMenuFont: TStringField;
    qrParamFormsFont: TStringField;
    qrUserRolInterface: TIntegerField;
    qrUserRolMenuFont: TStringField;
    qrUserRolFormsFont: TStringField;
    cxIcTodoGrupoTabla: TcxEditRepositoryImageComboBoxItem;
    cxIcIvDimField: TcxEditRepositoryImageComboBoxItem;
    memVoucher: TJvMemoryData;
    qrCoGrupoDesc: TADOQuery;
    dsCoGrupoDesc: TDataSource;
    qrCoGrupoPrecio: TADOQuery;
    dsCoGrupoPrecio: TDataSource;
    qrCoGrupoBono: TADOQuery;
    dsCoGrupoBono: TDataSource;
    dsVeSecciones: TDataSource;
    qrZona: TADOQuery;
    dsZona: TDataSource;
    dsSubZona: TDataSource;
    qrSubZona: TADOQuery;
    icTodoTabla: TcxEditRepositoryImageComboBoxItem;
    qrUserInterface: TIntegerField;
    qrUserMenuFont: TStringField;
    qrUserFormsFont: TStringField;
    qrUserMultipleVentanas: TBooleanField;
    qrUserRolDesarrollador: TBooleanField;
    qrUserRolMultipleVentanas: TBooleanField;
    InfoAlert: TJvDesktopAlert;
    ilMessages: TImageList;
    qrFavoritos: TADOQuery;
    qrUserRolDescuentoTope: TFloatField;
    qrUserRolCambiarPrecio: TBooleanField;
    sqlInserta: TADOQuery;
    cxDateMaskEdit: TcxEditRepositoryMaskItem;
    JvPluginManager: TJvPluginManager;
    SupportInfo: TJvStrHolder;
    qrGrupoEquipo: TADOQuery;
    dsGrupoEquipo: TDataSource;
    qrTecnicos: TADOQuery;
    dsTecnicos: TDataSource;
    qrEquipo: TADOQuery;
    dsEquipo: TDataSource;
    qrConceptoMO: TADOQuery;
    qrConceptoCO: TADOQuery;
    qrConceptoGA: TADOQuery;
    qrConceptoIG: TADOQuery;
    dsConceptoMO: TDataSource;
    dsConceptoCO: TDataSource;
    dsConceptoGA: TDataSource;
    dsConceptoIG: TDataSource;
    qrOrdenesEntrada: TADOQuery;
    dsOrdenesEntrada: TDataSource;
    cxSvProgressBar: TcxEditRepositoryProgressBar;
    conXmlFile: TJvAppXMLFileStorage;
    IceLicense: TIceLicense;
    ApplInfo: TABSQuery;
    ApplEmpresas: TABSTable;
    qrParamDireccion: TStringField;
    qrParamPais: TStringField;
    qrParamCiudad: TStringField;
    qrParamEstado: TStringField;
    qrParamZipCode: TStringField;
    qrParamDireccionWeb: TStringField;
    qrParameMail: TStringField;
    qrParamTelefono: TStringField;
    qrParamFax: TStringField;
    qrParamRNC: TStringField;
    qrProcesos: TABSQuery;
    qrProcesosProcesoId: TStringField;
    qrProcesosDescripcion: TStringField;
    qrProcesosScript: TMemoField;
    dsProcesos: TDataSource;
    cxLcProcesos: TcxEditRepositoryLookupComboBoxItem;
    qrSucursal: TADOQuery;
    dsSucursal: TDataSource;
    ppSucursal: TppDBPipeline;
    qrDoctor: TADOQuery;
    dsDoctor: TDataSource;
    ExtraOptions1: TExtraOptions;
    qrPacientes: TADOQuery;
    dsPacientes: TDataSource;
    qrProyecto: TADOQuery;
    qrProyectoProyectoID: TStringField;
    qrProyectoDescripcion: TStringField;
    qrProyectoClienteID: TStringField;
    qrProyectoEstatus: TIntegerField;
    dsProyecto: TDataSource;
    qrClientes: TADOQuery;
    dsClientes: TDataSource;
    qrFlebotomistas: TADOQuery;
    dsFlebotomistas: TDataSource;
    qrParametro: TADOQuery;
    qrParametroSecuenciaEntrada: TLargeintField;
    qrParametroSecuencia: TLargeintField;
    qrParametroRNC: TStringField;
    qrParametroSecuenciaDev: TLargeintField;
    qrParametroSecuenciaCot: TLargeintField;
    qrParametroIndetificadorFactura: TStringField;
    qrParametroIdentificadorDevolucion: TStringField;
    qrParametroIdentificadorCotizacion: TStringField;
    qrParametroImprimirAlGrabar: TBooleanField;
    dsParametro: TDataSource;
    ppParametro: TppDBPipeline;
    icFormaEntregaPruebas: TcxEditRepositoryImageComboBoxItem;
    vwDoctores: TcxGridDBTableView;
    vwDoctoresDoctorID: TcxGridDBColumn;
    vwDoctoresNombre: TcxGridDBColumn;
    vwProyectos: TcxGridDBTableView;
    vwProyectosProyectoID: TcxGridDBColumn;
    vwProyectosDescripcion: TcxGridDBColumn;
    vwProyectosEstatus: TcxGridDBColumn;
    vwFlebotomista: TcxGridDBTableView;
    vwFlebotomistaEstatus: TcxGridDBColumn;
    vwFlebotomistaFlebotomistaID: TcxGridDBColumn;
    vwFlebotomistaDescripcion: TcxGridDBColumn;
    elcDoctores: TcxEditRepositoryExtLookupComboBoxItem;
    elcProyecto: TcxEditRepositoryExtLookupComboBoxItem;
    elcFlebotomista: TcxEditRepositoryExtLookupComboBoxItem;
    qrEntradaPacienteCons: TADOQuery;
    dsEntradaPacienteCons: TDataSource;
    qrParametroIdentificadorMuestra: TStringField;
    qrParametroSecuenciaMuestra: TLargeintField;
    qrGrupoCliente: TADOQuery;
    dsGrupoCliente: TDataSource;
    vwGrupoCliente: TcxGridDBTableView;
    elcGrupoCliente: TcxEditRepositoryExtLookupComboBoxItem;
    vwGrupoClienteGrupoCliente: TcxGridDBColumn;
    vwGrupoClienteDescripcion: TcxGridDBColumn;
    qrParametroAutoNumerarClientes: TBooleanField;
    qrParametroSecuenciaCliente: TLargeintField;
    qrParametroAutoNumerarPacientes: TBooleanField;
    qrParametroAutoNumerarPruebas: TBooleanField;
    qrParametroSecuenciaPruebas: TLargeintField;
    vwClientes: TcxGridDBTableView;
    vwClientesClienteID: TcxGridDBColumn;
    vwClientesNombre: TcxGridDBColumn;
    vwClientesGrupoCliente: TcxGridDBColumn;
    elcClientes: TcxEditRepositoryExtLookupComboBoxItem;
    vwPacientes: TcxGridDBTableView;
    elcPacientes: TcxEditRepositoryExtLookupComboBoxItem;
    qrGrupoPrueba: TADOQuery;
    dsGrupoPrueba: TDataSource;
    vwGrupoPrueba: TcxGridDBTableView;
    vwGrupoPruebaGrupoPruebaID: TcxGridDBColumn;
    vwGrupoPruebaDescripcion: TcxGridDBColumn;
    elcGrupoPrueba: TcxEditRepositoryExtLookupComboBoxItem;
    ppParam: TppDBPipeline;
    dsParam: TDataSource;
    qrParametroImprimirAlGrabarRecibo: TBooleanField;
    qrParametroImprimirAlGrabarFacturaSeg: TBooleanField;
    qrParametroNotaFacturaSeguro: TMemoField;
    qrParametroNotaFacturaPaciente: TMemoField;
    qrParametroNotaFacturaNoSeguro: TMemoField;
    qrParametroIdentificadorRecibo: TStringField;
    qrParametroSecuenciaRecibo: TLargeintField;
    ppImpReciboSinSeguro: TppReport;
    ppHeaderBand6: TppHeaderBand;
    ppDBText93: TppDBText;
    ppDBText94: TppDBText;
    ppLabel84: TppLabel;
    ppDBText98: TppDBText;
    ppDetailBand6: TppDetailBand;
    ppDBText103: TppDBText;
    ppSummaryBand4: TppSummaryBand;
    ppLabel94: TppLabel;
    ppDBText105: TppDBText;
    ppLabel95: TppLabel;
    ppDBText106: TppDBText;
    ppLabel96: TppLabel;
    ppDBText107: TppDBText;
    qrCobro: TADOQuery;
    dsCobro: TDataSource;
    ppCobro: TppDBPipeline;
    qrEntradaPacienteDetalle: TADOQuery;
    dsEntradaPacienteDetalle: TDataSource;
    ppEntradaPacienteDetalle: TppDBPipeline;
    qrCobroDetalle: TADOQuery;
    dsCobroDetalle: TDataSource;
    ppCobroDetalle: TppDBPipeline;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand1: TppDetailBand;
    qrCobroDetalleCobroID: TStringField;
    qrCobroDetalleFormaDePagoID: TStringField;
    qrCobroDetalleMonto: TBCDField;
    qrCobroDetalleFormaDePagoID_1: TStringField;
    qrCobroDetalleDescripcion: TStringField;
    ppImpReciboConSeguro: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppDetailBand3: TppDetailBand;
    qrMonedas: TADOQuery;
    dsMonedas: TDataSource;
    qrMonedasMoneadaID: TStringField;
    qrMonedasDescripcion: TStringField;
    qrMonedasSimbolo: TStringField;
    qrMonedasCuentaBeneficio: TStringField;
    qrMonedasCuentaPerdida: TStringField;
    lcMonedas: TcxEditRepositoryLookupComboBoxItem;
    vwPruebas: TcxGridDBTableView;
    vwPruebasPruebaID: TcxGridDBColumn;
    vwPruebasDescripcion: TcxGridDBColumn;
    elcPruebas: TcxEditRepositoryExtLookupComboBoxItem;
    qrParametroIdentificadorNC: TStringField;
    qrParametroSecuenciaNC: TLargeintField;
    qrParametroImprimirAlGrabarNC: TBooleanField;
    ppImpNCSinSeguro: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppLabel17: TppLabel;
    ppDBText25: TppDBText;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppDBText29: TppDBText;
    ppLabel23: TppLabel;
    ppDBText30: TppDBText;
    ppLabel24: TppLabel;
    ppDBText31: TppDBText;
    ppLabel26: TppLabel;
    ppDBText32: TppDBText;
    ppDetailBand4: TppDetailBand;
    ppDBText33: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppLabel27: TppLabel;
    ppDBText35: TppDBText;
    ppLabel28: TppLabel;
    ppDBText36: TppDBText;
    ppLabel29: TppLabel;
    ppDBText37: TppDBText;
    ppLabel30: TppLabel;
    ppDBText38: TppDBText;
    ppLabel31: TppLabel;
    ppDBText39: TppDBText;
    ppImpNCConSeguro: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppLabel32: TppLabel;
    ppDBText46: TppDBText;
    ppDetailBand7: TppDetailBand;
    ppDBText52: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppLabel41: TppLabel;
    ppDBText53: TppDBText;
    ppLabel42: TppLabel;
    ppDBText54: TppDBText;
    ppLabel43: TppLabel;
    ppDBText55: TppDBText;
    ppLabel44: TppLabel;
    ppDBText56: TppDBText;
    ppLabel45: TppLabel;
    ppDBText57: TppDBText;
    icTipoCliente: TcxEditRepositoryImageComboBoxItem;
    qrCiudad: TADOQuery;
    dsCiudad: TDataSource;
    qrCiudadCiudadID: TStringField;
    qrCiudadDescripcion: TStringField;
    vwCiudad: TcxGridDBTableView;
    vwCiudadCiudadID: TcxGridDBColumn;
    vwCiudadDescripcion: TcxGridDBColumn;
    elcCiudad: TcxEditRepositoryExtLookupComboBoxItem;
    qrParametroPreciosBaseDolares: TBooleanField;
    qrParametroMonedaDolares: TStringField;
    qrParametroMonedaID: TStringField;
    qrEspecialidad: TADOQuery;
    dsEspecialidad: TDataSource;
    qrEspecialidadEspecialidadID: TStringField;
    qrEspecialidadDescripcion: TStringField;
    vwEspecialidad: TcxGridDBTableView;
    vwEspecialidadEspecialidadID: TcxGridDBColumn;
    vwEspecialidadDescripcion: TcxGridDBColumn;
    elcEspecialidad: TcxEditRepositoryExtLookupComboBoxItem;
    qrParametroAutoNumerarDoctor: TBooleanField;
    vwPacientesClienteID: TcxGridDBColumn;
    vwPacientesNombre: TcxGridDBColumn;
    vwPacientesTelefono: TcxGridDBColumn;
    qrSeguros: TADOQuery;
    dsSeguros: TDataSource;
    vwSeguros: TcxGridDBTableView;
    vwSegurosClienteID: TcxGridDBColumn;
    vwSegurosNombre: TcxGridDBColumn;
    elcSeguro: TcxEditRepositoryExtLookupComboBoxItem;
    qrParametroSecuenciaCuadre: TLargeintField;
    qrParametroIdentificadorCuadre: TStringField;
    ppCorteCajaDetRep: TppDBPipeline;
    dsCorteCajaDetRep: TDataSource;
    qrCorteCajaDetRep: TADOQuery;
    ppImpCuadreCaja: TppReport;
    ppHeaderBand4: TppHeaderBand;
    ppLabel46: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppDBText41: TppDBText;
    ppLabel50: TppLabel;
    ppDBText58: TppDBText;
    ppLabel51: TppLabel;
    ppDBText59: TppDBText;
    ppLabel52: TppLabel;
    ppDBText60: TppDBText;
    ppLine3: TppLine;
    ppDetailBand5: TppDetailBand;
    ppDBText63: TppDBText;
    ppDBText64: TppDBText;
    ppSummaryBand5: TppSummaryBand;
    ppLine8: TppLine;
    ppLabel55: TppLabel;
    lbdiferencia: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLine5: TppLine;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBCalc1: TppDBCalc;
    ppLine9: TppLine;
    qrGastosVarios: TADOQuery;
    dsGastosVarios: TDataSource;
    qrGastosVariosGastoVarioId: TStringField;
    qrGastosVariosDescripcion: TStringField;
    vwGastosVarios: TcxGridDBTableView;
    vwGastosVariosGastoVarioId: TcxGridDBColumn;
    vwGastosVariosDescripcion: TcxGridDBColumn;
    elcGastosVarios: TcxEditRepositoryExtLookupComboBoxItem;
    qrParametroDiasEntrePruebas: TIntegerField;
    qrParametroAutoNumerarCombos: TBooleanField;
    qrParametroSecuenciaCombos: TLargeintField;
    qrPruebas: TADOQuery;
    dsPruebas: TDataSource;
    qrParamRutaReportes: TStringField;
    qrParametroClienteLaboratorio: TStringField;
    qrParametroAutoNumerarTarjetas: TBooleanField;
    qrParametroSecuenciaTarjetas: TLargeintField;
    cxIcTodoGrupoTablaTarjetaDescuentos: TcxEditRepositoryImageComboBoxItem;
    qrTarjetasDesc: TADOQuery;
    dsTarjetasDesc: TDataSource;
    qrTarjetasDescTarjetaID: TStringField;
    qrTarjetasDescDescripcion: TStringField;
    qrTarjetasDescDigitos: TSmallintField;
    qrTarjetasDescContacto: TStringField;
    qrTarjetasDescTelefono: TStringField;
    qrTarjetasDescInterno: TBooleanField;
    qrTarjetasDescFactorPuntos: TBCDField;
    qrTarjetasDescDescuento: TBCDField;
    vwTarjetaDescuento: TcxGridDBTableView;
    vwTarjetaDescuentoTarjetaID: TcxGridDBColumn;
    vwTarjetaDescuentoDescripcion: TcxGridDBColumn;
    elcTarjetaDescuento: TcxEditRepositoryExtLookupComboBoxItem;
    qrPlanesEmpresa: TADOQuery;
    dsPlanesEmpresa: TDataSource;
    qrClientesPlanes: TADOQuery;
    dsClientesPlanes: TDataSource;
    qrPlanesCombos: TADOQuery;
    dsPlanesCombos: TDataSource;
    qrClientesPlanesPlanId: TStringField;
    qrClientesPlanesEmpresaID: TStringField;
    qrClientesPlanesEmpleadoID: TStringField;
    qrClientesPlanesClienteID: TStringField;
    qrClientesPlanesCodigoAxapta: TStringField;
    qrClientesPlanesIdentificacion: TStringField;
    qrClientesPlanesNombre: TStringField;
    qrClientesPlanesDepartamento: TStringField;
    qrClientesPlanesContacto: TStringField;
    qrClientesPlanesTelefono: TStringField;
    qrClientesPlanesTelefono2: TStringField;
    qrClientesPlanesFax: TStringField;
    qrClientesPlanesDireccion: TMemoField;
    qrClientesPlanesCiudadID: TStringField;
    qrClientesPlanesemail: TStringField;
    qrClientesPlanesSexo: TIntegerField;
    qrClientesPlanesFechaNacimiento: TDateTimeField;
    qrClientesPlanesAlias: TStringField;
    qrClientesPlanesTipoSangre: TStringField;
    qrPlanesEmpresaPlanId: TStringField;
    qrPlanesEmpresaClienteID: TStringField;
    qrPlanesEmpresaCodigoAxapta: TStringField;
    qrPlanesEmpresaIdentificacion: TStringField;
    qrPlanesEmpresaNombre: TStringField;
    qrPlanesEmpresaTelefono: TStringField;
    qrPlanesEmpresaTelefono2: TStringField;
    qrPlanesEmpresaFax: TStringField;
    qrPlanesEmpresaDireccion: TMemoField;
    qrPlanesEmpresaCiudadID: TStringField;
    qrPlanesEmpresaemail: TStringField;
    qrPlanesEmpresaFecha: TDateTimeField;
    qrPlanesEmpresaTotalPacientes: TIntegerField;
    qrPlanesEmpresaAdicionales: TIntegerField;
    qrPlanesCombosPlanId: TStringField;
    qrPlanesCombosCodigoId: TStringField;
    qrPlanesCombosPruebaID: TStringField;
    qrPlanesCombosClienteID: TStringField;
    qrPlanesCombosDescripcion: TStringField;
    qrPlanesCombosNombreCliente: TStringField;
    qrPlanesCombosEstatus: TBooleanField;
    qrPlanesCombosLinea: TIntegerField;
    qrParametroAutoNumerarPlanes: TBooleanField;
    qrParametroSecuenciaPlanes: TLargeintField;
    qrPlanesEmpresaEstatus: TBooleanField;
    qrParametroAutoNumerarPlanCombo: TBooleanField;
    qrParametroSecuenciaPlanCombo: TLargeintField;
    ppColumnHeaderBand1: TppColumnHeaderBand;
    ppColumnFooterBand1: TppColumnFooterBand;
    qrParametroClienteCap: TStringField;
    qrParametroClientePlanAnual: TStringField;
    ppDBText40: TppDBText;
    qrDiasProcesamiento: TADOQuery;
    dsDiasProcesamiento: TDataSource;
    qrUnidades: TADOQuery;
    qrUnidadesUnidad: TStringField;
    qrUnidadesDescripcion: TStringField;
    dsUnidades: TDataSource;
    qrMateriales: TADOQuery;
    qrMaterialesMaterialId: TStringField;
    qrMaterialesDescripcion: TStringField;
    dsMateriales: TDataSource;
    qrDepartamentos: TADOQuery;
    dsDepartamentos: TDataSource;
    qrParametroSecuenciaAct: TLargeintField;
    qrParametroSecuenciaLabel: TLargeintField;
    vwDiasProcesamiento: TcxGridDBTableView;
    vwDiasProcesamientoCodDiasProc: TcxGridDBColumn;
    vwDiasProcesamientoDescripcion: TcxGridDBColumn;
    vwUnidades: TcxGridDBTableView;
    vwUnidadesUnidad: TcxGridDBColumn;
    vwUnidadesDescripcion: TcxGridDBColumn;
    vwMateriales: TcxGridDBTableView;
    vwMaterialesMaterialId: TcxGridDBColumn;
    vwMaterialesDescripcion: TcxGridDBColumn;
    vwDepartamento: TcxGridDBTableView;
    vwDepartamentoDepid: TcxGridDBColumn;
    vwDepartamentoDescripcion: TcxGridDBColumn;
    elcDiasProcesamiento: TcxEditRepositoryExtLookupComboBoxItem;
    elcUnidades: TcxEditRepositoryExtLookupComboBoxItem;
    elcMateriales: TcxEditRepositoryExtLookupComboBoxItem;
    elcDepartamento: TcxEditRepositoryExtLookupComboBoxItem;
    ppImpReciboTemp: TppReport;
    ppHeaderBand5: TppHeaderBand;
    ppDBText21: TppDBText;
    ppDBText62: TppDBText;
    ppLabel56: TppLabel;
    ppDBText65: TppDBText;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppDBText66: TppDBText;
    ppShape4: TppShape;
    ppLabel59: TppLabel;
    ppDBText67: TppDBText;
    ppDBText68: TppDBText;
    ppLabel60: TppLabel;
    ppLabel63: TppLabel;
    ppDBText69: TppDBText;
    ppLabel64: TppLabel;
    ppDBText70: TppDBText;
    ppLabel65: TppLabel;
    ppDBText71: TppDBText;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppDBText72: TppDBText;
    ppDetailBand8: TppDetailBand;
    ppDBText73: TppDBText;
    ppDBText74: TppDBText;
    ppSummaryBand6: TppSummaryBand;
    ppLabel68: TppLabel;
    ppDBText75: TppDBText;
    ppLabel72: TppLabel;
    ppDBText79: TppDBText;
    ppSubReport3: TppSubReport;
    ppChildReport3: TppChildReport;
    ppDetailBand9: TppDetailBand;
    ppDBText80: TppDBText;
    ppDBText81: TppDBText;
    ppLabel73: TppLabel;
    qrCobroTemp: TADOQuery;
    dsCobroTemp: TDataSource;
    ppCobroTemp: TppDBPipeline;
    qrCobroDetalleMonedaID: TStringField;
    qrCobroDetalleMontoMST: TBCDField;
    qrCobroDetalleMoneda: TStringField;
    qrClientesPlanesComboId: TStringField;
    qrClientesPlanesLinea: TLargeintField;
    qrClientesPlanesSangre: TBooleanField;
    qrClientesPlanesOrina: TBooleanField;
    qrClientesPlanesEsputo: TBooleanField;
    qrClientesPlanesGarganta: TBooleanField;
    qrClientesPlanesNail: TBooleanField;
    qrClientesPlanesFechaSangre: TDateTimeField;
    qrClientesPlanesFechaOrina: TDateTimeField;
    qrClientesPlanesFechaEsputo: TDateTimeField;
    qrClientesPlanesFechaGarganta: TDateTimeField;
    qrClientesPlanesFechaNail: TDateTimeField;
    qrClientesPlanesMuestraId: TStringField;
    qrClientesPlanesEstatus: TStringField;
    qrClientesPlanesCargo: TStringField;
    qrClientesPlanesEdad: TIntegerField;
    qrClientesPlanesSucursal: TStringField;
    qrClientesPlanesPacienteCiaId: TStringField;
    qrClientesPlanesTomado: TBooleanField;
    qrClientesPlanesImpreso: TBooleanField;
    qrClientesPlanesGenerado: TBooleanField;
    qrPlanesEmpresaFechaInicial: TDateTimeField;
    qrPlanesEmpresaFechaFinal: TDateTimeField;
    qrPlanesEmpresaMuestraActual: TIntegerField;
    qrPlanesEmpresaMuestraInicial: TIntegerField;
    qrPlanesEmpresaMuestraFinal: TIntegerField;
    qrPlanesEmpresaAlias: TStringField;
    qrPlanesEmpresaPacienteCiaId: TStringField;
    qrParametroDireccion: TMemoField;
    qrParametroNotaExterior: TStringField;
    qrParametroEmpresa: TStringField;
    ppImpReciboExterior: TppReport;
    ppHeaderBand7: TppHeaderBand;
    ppDBText78: TppDBText;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppDBText82: TppDBText;
    ppShape5: TppShape;
    ppDBText84: TppDBText;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppDBText85: TppDBText;
    ppLabel77: TppLabel;
    ppDBText86: TppDBText;
    ppLabel78: TppLabel;
    ppDBText87: TppDBText;
    ppLabel79: TppLabel;
    ppDBText88: TppDBText;
    ppDetailBand10: TppDetailBand;
    ppDBDescripcion: TppDBText;
    ppSummaryBand7: TppSummaryBand;
    ppLabel82: TppLabel;
    ppDBText92: TppDBText;
    ppLabel83: TppLabel;
    ppDBText97: TppDBText;
    ppDBComentario: TppDBMemo;
    ppShape8: TppShape;
    dsMuestras: TDataSource;
    qrMuestras: TADOQuery;
    qrMuestrasDescripcion: TStringField;
    qrMuestrasCodigoAxapta: TStringField;
    vwMuestras: TcxGridDBTableView;
    elcMuestras: TcxEditRepositoryExtLookupComboBoxItem;
    vwMuestrasDescripcion: TcxGridDBColumn;
    ppLabel69: TppLabel;
    ppDBText77: TppDBText;
    qrConceptoNotas: TADOQuery;
    dsConceptoNotas: TDataSource;
    qrConceptoNotasConceptoId: TStringField;
    qrConceptoNotasDescripcion: TStringField;
    vwConceptoNotas: TcxGridDBTableView;
    vwConceptoNotasConceptoId: TcxGridDBColumn;
    vwConceptoNotasDescripcion: TcxGridDBColumn;
    elcConceptoNotas: TcxEditRepositoryExtLookupComboBoxItem;
    ppDBText90: TppDBText;
    ppLabel80: TppLabel;
    qrParametroNotaFacturaExterior: TMemoField;
    qrClientesPlanesTipoImpresion: TStringField;
    qrPlanesEmpresaTipoImpresion: TStringField;
    qrMuestrasTipoAS400: TStringField;
    qrTarjetasDescBono: TBooleanField;
    qrTarjetasDescNumeroUnico: TBooleanField;
    qrTarjetasDescNumeroObligatorio: TBooleanField;
    qrFlebotomistasFLEBOTOMISTAID: TStringField;
    qrFlebotomistasDESCRIPCION: TStringField;
    qrFlebotomistasESTATUS: TIntegerField;
    qrFlebotomistasCODIGOAXAPTA: TStringField;
    qrFlebotomistasDATAAREAID: TStringField;
    qrGrupoClienteGRUPOCLIENTE: TStringField;
    qrGrupoClienteDESCRIPCION: TStringField;
    qrGrupoClienteCODIGOAXAPTA: TStringField;
    qrGrupoClienteCOMENTARIO: TMemoField;
    qrGrupoClienteDATAAREAID: TStringField;
    qrGrupoPruebaGRUPOPRUEBA: TStringField;
    qrGrupoPruebaDESCRIPCION: TStringField;
    qrGrupoPruebaCODIGOAXAPTA: TStringField;
    qrGrupoPruebaCOMENTARIO: TMemoField;
    qrGrupoPruebaDATAAREAID: TStringField;
    qrEntradaPacienteConsTotalPendiente: TFloatField;
    qrSucursalNOMBRE: TStringField;
    qrSucursalSUCURSALID: TStringField;
    qrSucursalDIRECCION: TMemoField;
    qrSucursalTELEFONO: TStringField;
    qrSucursalFAX: TStringField;
    qrSucursalCLIENTEID: TStringField;
    qrSucursalGRUPOID: TStringField;
    qrSucursalCLIENTE_UNO: TStringField;
    qrSucursalCLIENTE_DOS: TStringField;
    qrSucursalIMPRESIONES: TIntegerField;
    qrSucursalDATAAREAID: TStringField;
    qrDepartamentosDEPID: TStringField;
    qrDepartamentosDESCRIPCION: TStringField;
    qrDepartamentosDATAAREAID: TStringField;
    qrSegurosCLIENTEID: TStringField;
    qrSegurosNOMBRE: TStringField;
    qrSegurosCONTACTO: TStringField;
    qrSegurosTELEFONO: TStringField;
    qrSegurosFAX: TStringField;
    qrSegurosGRUPOCLIENTE: TStringField;
    qrSegurosINCLUIRPRECIOTICKET: TIntegerField;
    qrSegurosAUTOCONFIRMAR: TIntegerField;
    qrSegurosEMPLEADOID: TStringField;
    qrSegurosCODIGOAXAPTA: TStringField;
    qrSegurosEMAIL: TStringField;
    qrSegurosDIRECCIONWEB: TStringField;
    qrSegurosTELEFONO2: TStringField;
    qrSegurosMONEDAID: TStringField;
    qrSegurosIDENTIFICACION: TStringField;
    qrSegurosORIGEN: TIntegerField;
    qrSegurosCIUDADID: TStringField;
    qrSegurosPRUEBASPORDIA: TIntegerField;
    qrSegurosCOBERTURAPORC: TBCDField;
    qrSegurosPRINCIPAL: TStringField;
    qrSegurosENVIORESULTADO: TIntegerField;
    qrSegurosPUBLICARINTERNET: TIntegerField;
    qrSegurosSEXO: TIntegerField;
    qrSegurosFECHANACIMIENTO: TDateTimeField;
    qrSegurosSEGURO: TStringField;
    qrSegurosCARNETNUMERO: TStringField;
    qrSegurosPOLIZA: TStringField;
    qrSegurosCOBRARDIFERENCIA: TIntegerField;
    qrSegurosENVIARFAX: TIntegerField;
    qrSegurosACTIVARDESCUENTOS: TIntegerField;
    qrSegurosUSARALIASNOMBRE: TIntegerField;
    qrSegurosUSARALIASPRUEBAS: TIntegerField;
    qrSegurosSIEMPREINTERNET: TIntegerField;
    qrSegurosIMPRIMIRALIASNOMBRE: TIntegerField;
    qrSegurosIMPRIMIRALIASPRUEBA: TIntegerField;
    qrSegurosIMPRIMIRSOLOTOTALES: TIntegerField;
    qrSegurosIMPRIMIRALIASRESULTADOS: TIntegerField;
    qrSegurosUSARACUERDOPROPIO: TIntegerField;
    qrSegurosALIAS: TStringField;
    qrSegurosQUIENPAGA: TStringField;
    qrSegurosTIPOCLIENTE: TStringField;
    qrSegurosENTREGARRESULTADOS: TStringField;
    qrSegurosTEXTOREFERENCIA: TStringField;
    qrSegurosSIEMPREIMPRIMIR: TIntegerField;
    qrSegurosTIPOSANGRE: TStringField;
    qrSegurosPACIENTECIAID: TStringField;
    qrSegurosSECTOR: TStringField;
    qrSegurosUSUARIOINTERNET: TStringField;
    qrSegurosCLAVEINTERNET: TStringField;
    qrSegurosESTATUS: TIntegerField;
    qrSegurosTIPOINTERNET: TStringField;
    qrSegurosCLASECREDITO: TStringField;
    qrSegurosDOCTORID: TStringField;
    qrSegurosTIPOCLIENTEAS400: TIntegerField;
    qrSegurosDATAAREAID: TStringField;
    qrDiasProcesamientoCODDIASPROC: TStringField;
    qrDiasProcesamientoDESCRIPCION: TStringField;
    qrDiasProcesamientoLUNES: TIntegerField;
    qrDiasProcesamientoMARTES: TIntegerField;
    qrDiasProcesamientoMIERCOLES: TIntegerField;
    qrDiasProcesamientoJUEVES: TIntegerField;
    qrDiasProcesamientoVIERNES: TIntegerField;
    qrDiasProcesamientoSABADO: TIntegerField;
    qrDiasProcesamientoDOMINGO: TIntegerField;
    qrDiasProcesamientoDATAAREAID: TStringField;
    qrEntradaPacienteDetallePRUEBAID: TStringField;
    qrEntradaPacienteDetalleCOMBOPRUEBAID: TStringField;
    qrEntradaPacienteDetalleCODIGOAUTORIZACION: TStringField;
    qrEntradaPacienteDetalleDESCRIPCION: TStringField;
    qrEntradaPacienteDetalleCODIGOCUPID: TStringField;
    qrEntradaPacienteDetalleMUESTRAANT: TStringField;
    qrEntradaPacienteDetalleCOBERTURAAPLICA: TIntegerField;
    qrEntradaPacienteDetalleDESCRIPCIONCUP: TStringField;
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
    qrEntradaPacienteDetalleDATAAREAID: TStringField;
    qrEntradaPacienteConsENTRADAID: TStringField;
    qrEntradaPacienteConsFECHA: TDateTimeField;
    qrEntradaPacienteConsHORAENTRADA: TStringField;
    qrEntradaPacienteConsPACIENTEID: TStringField;
    qrEntradaPacienteConsCLIENTEID: TStringField;
    qrEntradaPacienteConsDOCTORID: TStringField;
    qrEntradaPacienteConsPOLIZAID: TStringField;
    qrEntradaPacienteConsENCLINICA: TIntegerField;
    qrEntradaPacienteConsRECORDCLINICA: TStringField;
    qrEntradaPacienteConsNUMEROHABITACION: TStringField;
    qrEntradaPacienteConsFECHAENTRADA: TDateTimeField;
    qrEntradaPacienteConsFECHADEALTA: TDateTimeField;
    qrEntradaPacienteConsRESULTADOPACIENTE: TIntegerField;
    qrEntradaPacienteConsRESULTADODOCTOR: TIntegerField;
    qrEntradaPacienteConsFECHAPROMETIDA: TDateTimeField;
    qrEntradaPacienteConsHORAPROMETIDA: TStringField;
    qrEntradaPacienteConsFLEBOTOMISTAID: TStringField;
    qrEntradaPacienteConsPROYECTOID: TStringField;
    qrEntradaPacienteConsRECORDID: TIntegerField;
    qrEntradaPacienteConsBRUTO: TBCDField;
    qrEntradaPacienteConsDESCUENTO: TBCDField;
    qrEntradaPacienteConsSUBTOTAL: TBCDField;
    qrEntradaPacienteConsNETO: TBCDField;
    qrEntradaPacienteConsNOMBREPACIENTE: TStringField;
    qrEntradaPacienteConsTELEFONOS: TStringField;
    qrEntradaPacienteConsTELEFONO2: TStringField;
    qrEntradaPacienteConsEMAIL: TStringField;
    qrEntradaPacienteConsCLIENTENOMBRE: TStringField;
    qrEntradaPacienteConsSUCURSALID: TStringField;
    qrEntradaPacienteConsUSERID: TStringField;
    qrEntradaPacienteConsCOBROID: TStringField;
    qrEntradaPacienteConsTOTALPAGADO: TBCDField;
    qrEntradaPacienteConsPRIORIDAD: TIntegerField;
    qrEntradaPacienteConsFAX: TStringField;
    qrEntradaPacienteConsTIPODOCUMENTO: TIntegerField;
    qrEntradaPacienteConsCOBERTURAPORC: TBCDField;
    qrEntradaPacienteConsCOBERTURASEGURO: TBCDField;
    qrEntradaPacienteConsCOBERTURAVALOR: TBCDField;
    qrEntradaPacienteConsDESCUENTOPORC: TBCDField;
    qrEntradaPacienteConsDESCUENTOVALOR: TBCDField;
    qrEntradaPacienteConsDESCUENTOBONO: TBCDField;
    qrEntradaPacienteConsORIGEN: TStringField;
    qrEntradaPacienteConsAPROBACIONNO: TStringField;
    qrEntradaPacienteConsAPROBACIONPOR: TStringField;
    qrEntradaPacienteConsCOBERTURARECHAZADA: TIntegerField;
    qrEntradaPacienteConsCOBERTURACONFIRMADA: TIntegerField;
    qrEntradaPacienteConsFECHAASEGURADORA: TDateTimeField;
    qrEntradaPacienteConsMUESTRANO: TStringField;
    qrEntradaPacienteConsMONEDAID: TStringField;
    qrEntradaPacienteConsCOBERTURAEXPPORC: TIntegerField;
    qrEntradaPacienteConsEDADPACIENTE: TIntegerField;
    qrEntradaPacienteConsSEXO: TIntegerField;
    qrEntradaPacienteConsNOMBREDOCTOR: TStringField;
    qrEntradaPacienteConsPUBLICARINTERNET: TIntegerField;
    qrEntradaPacienteConsCARNET: TStringField;
    qrEntradaPacienteConsPUBLICARINTERNETDOCTOR: TIntegerField;
    qrEntradaPacienteConsCUADREGLOBAL: TStringField;
    qrEntradaPacienteConsCUADREUSUARIO: TStringField;
    qrEntradaPacienteConsDESCAUTORIZADOPOR: TStringField;
    qrEntradaPacienteConsGASTOSVARIOS: TBCDField;
    qrEntradaPacienteConsNOAS400: TIntegerField;
    qrEntradaPacienteConsNOAXAPTA: TIntegerField;
    qrEntradaPacienteConsNOFACTURA: TIntegerField;
    qrEntradaPacienteConsFACTEXTERIOR: TIntegerField;
    qrEntradaPacienteConsHOLD: TIntegerField;
    qrEntradaPacienteConsREPMUESTRA: TIntegerField;
    qrEntradaPacienteConsENTRADAIDANT: TStringField;
    qrEntradaPacienteConsTIPOENTRADA: TStringField;
    qrEntradaPacienteConsFORMADEPAGO: TStringField;
    qrEntradaPacienteConsDESCUENTOCARD: TStringField;
    qrEntradaPacienteConsDESCUENTOTEXTO: TStringField;
    qrEntradaPacienteConsACUERDOPROPIO: TIntegerField;
    qrEntradaPacienteConsCLIENTEPADRE: TStringField;
    qrEntradaPacienteConsDESCUENTOPLANID: TStringField;
    qrEntradaPacienteConsFECHAREGISTRO: TDateTimeField;
    qrEntradaPacienteConsHORAREGISTRO: TStringField;
    qrEntradaPacienteConsTASA: TBCDField;
    qrEntradaPacienteConsESTATUS: TIntegerField;
    qrEntradaPacienteConsTIPOCLIENTEAS400: TIntegerField;
    qrEntradaPacienteConsCLASECREDITO: TStringField;
    qrEntradaPacienteConsCARNETNUMERO: TStringField;
    qrEntradaPacienteConsCLIENTEPADREAXAPTA: TStringField;
    qrEntradaPacienteConsPACIENTEIDAXAPTA: TStringField;
    qrEntradaPacienteConsCLIENTEIDAXAPTA: TStringField;
    qrEntradaPacienteConsDOCTORIDAXAPTA: TStringField;
    qrEntradaPacienteConsDATAAREAID: TStringField;
    qrSegurosDIRECCION: TStringField;
    qrParametroGrupoAcc: TStringField;
    qrParametroGrupoCli: TStringField;
    qrParametroGrupoEmp: TStringField;
    qrParametroGrupoLab: TStringField;
    qrParametroGrupoPriv: TStringField;
    qrParametroGrupoSeg: TStringField;
    qrParametroGrupoVip: TStringField;
    qrParametroGrupoCia: TStringField;
    qrEntradaPacienteConsNOTA: TStringField;
    qrEntradaPacienteConsDIRECCION: TStringField;
    qrEntradaPacienteDetalleCOMENTARIOMUESTRA: TStringField;
    qrEntradaPacienteDetalleCOMENTARIO: TStringField;
    ppDBText34: TppDBText;
    ppLabel25: TppLabel;
    ppDBText44: TppDBText;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppDBText45: TppDBText;
    ppDBText47: TppDBText;
    ppLabel36: TppLabel;
    ppDBText95: TppDBText;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppDBText96: TppDBText;
    ppDBText99: TppDBText;
    ppLabel88: TppLabel;
    ppLabel102: TppLabel;
    ppDBText115: TppDBText;
    ppShape3: TppShape;
    ppLabel35: TppLabel;
    ppLabel37: TppLabel;
    ppDBText48: TppDBText;
    ppLabel38: TppLabel;
    ppDBText49: TppDBText;
    ppLabel39: TppLabel;
    ppDBText50: TppDBText;
    ppLabel40: TppLabel;
    ppDBText51: TppDBText;
    ppDBText91: TppDBText;
    ppLabel81: TppLabel;
    ppDBText112: TppDBText;
    ppLabel98: TppLabel;
    ppLabel103: TppLabel;
    ppDBText116: TppDBText;
    ppShape6: TppShape;
    ppLabel87: TppLabel;
    ppLabel89: TppLabel;
    ppDBText100: TppDBText;
    ppLabel90: TppLabel;
    ppDBText101: TppDBText;
    ppLabel91: TppLabel;
    ppDBText102: TppDBText;
    ppLabel92: TppLabel;
    ppDBText104: TppDBText;
    ppDBText113: TppDBText;
    ppLabel100: TppLabel;
    ppLabel104: TppLabel;
    ppDBText117: TppDBText;
    qrDoctorDOCTORID: TStringField;
    qrDoctorNOMBRE: TStringField;
    qrDoctorCONTACTO: TStringField;
    qrDoctorTELEFONO: TStringField;
    qrDoctorFAX: TStringField;
    qrDoctorCODIGOAXAPTA: TStringField;
    qrDoctorEMAIL: TStringField;
    qrDoctorCELULAR: TStringField;
    qrDoctorDIRECCION: TStringField;
    qrDoctorCIUDADID: TStringField;
    qrDoctorRESULTADODOCTOR: TIntegerField;
    qrDoctorESPECIALIDADID: TStringField;
    qrDoctorPUBLICARINTERNET: TIntegerField;
    qrDoctorCODIGORESULTADO: TStringField;
    qrDoctorUSUARIOINTERNET: TStringField;
    qrDoctorCLAVEINTERNET: TStringField;
    qrDoctorCOMISION: TBCDField;
    qrDoctorDIRECCIONCONSULTA2: TStringField;
    qrDoctorDIRECCIONCONSULTA1: TStringField;
    qrDoctorESPECIALIDAD: TStringField;
    qrDoctorCODIGOWEB: TStringField;
    qrDoctorDATAAREAID: TStringField;
    ppDBText76: TppDBText;
    qrProyectoCodigoAxapta: TStringField;
    qrParametroClienteProyecto: TStringField;
    qrParametroGrupoProy: TStringField;
    qrMuestrasTIPOID: TStringField;
    qrMuestrasDATAAREAID: TStringField;
    vwMuestrasTIPOID: TcxGridDBColumn;
    qrPruebasPRUEBAID: TStringField;
    qrPruebasALIAS: TStringField;
    qrPruebasDESCRIPCION: TStringField;
    qrPruebasESTATUS: TIntegerField;
    qrPruebasGRUPOPRUEBAID: TStringField;
    qrPruebasDEPARTAMENTO: TStringField;
    qrPruebasPRECIO: TBCDField;
    qrPruebasPERMITECAMBIOPRECIO: TIntegerField;
    qrPruebasCODIGOAXAPTA: TStringField;
    qrPruebasPRECIODOLARES: TBCDField;
    qrPruebasCOSTO: TBCDField;
    qrPruebasEXTERIOR: TIntegerField;
    qrPruebasFACTURARCABECERA: TIntegerField;
    qrPruebasPRUEBAS: TIntegerField;
    qrPruebasTIPO: TStringField;
    qrPruebasORINA: TIntegerField;
    qrPruebasSANGRE: TIntegerField;
    qrPruebasCONDPACIENTE: TStringField;
    qrPruebasCONDMUESTRA: TStringField;
    qrPruebasCODDIAPROC: TStringField;
    qrPruebasDIASRESULTADO: TIntegerField;
    qrPruebasUNIDAD: TStringField;
    qrPruebasABREVIACION: TStringField;
    qrPruebasMEDIO: TIntegerField;
    qrPruebasCOLOR: TIntegerField;
    qrPruebasDEPID: TStringField;
    qrPruebasTIPOAS400: TStringField;
    qrPruebasCODIGOIDAS400: TStringField;
    qrPruebasMEDIOAS400: TStringField;
    qrPruebasNOPROCESAR: TIntegerField;
    qrPruebasCOMENTARIONOPROCESAR: TStringField;
    qrPruebasDATAAREAID: TStringField;
    qrPruebasTIPOMUESTRA: TStringField;
    qrPacientesCLIENTEID: TStringField;
    qrPacientesNOMBRE: TStringField;
    qrPacientesCONTACTO: TStringField;
    qrPacientesTELEFONO: TStringField;
    qrPacientesFAX: TStringField;
    qrPacientesGRUPOCLIENTE: TStringField;
    qrPacientesINCLUIRPRECIOTICKET: TIntegerField;
    qrPacientesAUTOCONFIRMAR: TIntegerField;
    qrPacientesEMPLEADOID: TStringField;
    qrPacientesCODIGOAXAPTA: TStringField;
    qrPacientesEMAIL: TStringField;
    qrPacientesDIRECCIONWEB: TStringField;
    qrPacientesTELEFONO2: TStringField;
    qrPacientesMONEDAID: TStringField;
    qrPacientesIDENTIFICACION: TStringField;
    qrPacientesORIGEN: TIntegerField;
    qrPacientesDIRECCION: TStringField;
    qrPacientesCIUDADID: TStringField;
    qrPacientesPRUEBASPORDIA: TIntegerField;
    qrPacientesCOBERTURAPORC: TBCDField;
    qrPacientesPRINCIPAL: TStringField;
    qrPacientesENVIORESULTADO: TIntegerField;
    qrPacientesPUBLICARINTERNET: TIntegerField;
    qrPacientesFECHANACIMIENTO: TDateTimeField;
    qrPacientesSEGURO: TStringField;
    qrPacientesCARNETNUMERO: TStringField;
    qrPacientesPOLIZA: TStringField;
    qrPacientesCOBRARDIFERENCIA: TIntegerField;
    qrPacientesENVIARFAX: TIntegerField;
    qrPacientesACTIVARDESCUENTOS: TIntegerField;
    qrPacientesUSARALIASNOMBRE: TIntegerField;
    qrPacientesUSARALIASPRUEBAS: TIntegerField;
    qrPacientesSIEMPREINTERNET: TIntegerField;
    qrPacientesIMPRIMIRALIASNOMBRE: TIntegerField;
    qrPacientesIMPRIMIRALIASPRUEBA: TIntegerField;
    qrPacientesIMPRIMIRSOLOTOTALES: TIntegerField;
    qrPacientesIMPRIMIRALIASRESULTADOS: TIntegerField;
    qrPacientesUSARACUERDOPROPIO: TIntegerField;
    qrPacientesALIAS: TStringField;
    qrPacientesQUIENPAGA: TStringField;
    qrPacientesTIPOCLIENTE: TStringField;
    qrPacientesENTREGARRESULTADOS: TStringField;
    qrPacientesTEXTOREFERENCIA: TStringField;
    qrPacientesSIEMPREIMPRIMIR: TIntegerField;
    qrPacientesTIPOSANGRE: TStringField;
    qrPacientesPACIENTECIAID: TStringField;
    qrPacientesSECTOR: TStringField;
    qrPacientesUSUARIOINTERNET: TStringField;
    qrPacientesCLAVEINTERNET: TStringField;
    qrPacientesTIPOINTERNET: TStringField;
    qrPacientesCLASECREDITO: TStringField;
    qrPacientesDOCTORID: TStringField;
    qrPacientesSEXO: TIntegerField;
    qrPacientesESTATUS: TIntegerField;
    qrPacientesTIPOCLIENTEAS400: TIntegerField;
    qrPacientesCODIGOIDAS400: TStringField;
    qrPacientesGRUPOPRECIO: TStringField;
    qrPacientesFORMAPAGO: TStringField;
    qrPacientesDATAAREAID: TStringField;
    qrPacientesGRUPODESCUENTOLINEA: TStringField;
    qrPacientesGRUPODESCUENTOTOTAL: TStringField;
    qrClientesCLIENTEID: TStringField;
    qrClientesNOMBRE: TStringField;
    qrClientesCONTACTO: TStringField;
    qrClientesTELEFONO: TStringField;
    qrClientesFAX: TStringField;
    qrClientesGRUPOCLIENTE: TStringField;
    qrClientesINCLUIRPRECIOTICKET: TIntegerField;
    qrClientesAUTOCONFIRMAR: TIntegerField;
    qrClientesEMPLEADOID: TStringField;
    qrClientesCODIGOAXAPTA: TStringField;
    qrClientesEMAIL: TStringField;
    qrClientesDIRECCIONWEB: TStringField;
    qrClientesTELEFONO2: TStringField;
    qrClientesMONEDAID: TStringField;
    qrClientesIDENTIFICACION: TStringField;
    qrClientesORIGEN: TIntegerField;
    qrClientesDIRECCION: TStringField;
    qrClientesCIUDADID: TStringField;
    qrClientesPRUEBASPORDIA: TIntegerField;
    qrClientesCOBERTURAPORC: TBCDField;
    qrClientesPRINCIPAL: TStringField;
    qrClientesENVIORESULTADO: TIntegerField;
    qrClientesPUBLICARINTERNET: TIntegerField;
    qrClientesFECHANACIMIENTO: TDateTimeField;
    qrClientesSEGURO: TStringField;
    qrClientesCARNETNUMERO: TStringField;
    qrClientesPOLIZA: TStringField;
    qrClientesCOBRARDIFERENCIA: TIntegerField;
    qrClientesENVIARFAX: TIntegerField;
    qrClientesACTIVARDESCUENTOS: TIntegerField;
    qrClientesUSARALIASNOMBRE: TIntegerField;
    qrClientesUSARALIASPRUEBAS: TIntegerField;
    qrClientesSIEMPREINTERNET: TIntegerField;
    qrClientesIMPRIMIRALIASNOMBRE: TIntegerField;
    qrClientesIMPRIMIRALIASPRUEBA: TIntegerField;
    qrClientesIMPRIMIRSOLOTOTALES: TIntegerField;
    qrClientesIMPRIMIRALIASRESULTADOS: TIntegerField;
    qrClientesUSARACUERDOPROPIO: TIntegerField;
    qrClientesALIAS: TStringField;
    qrClientesQUIENPAGA: TStringField;
    qrClientesTIPOCLIENTE: TStringField;
    qrClientesENTREGARRESULTADOS: TStringField;
    qrClientesTEXTOREFERENCIA: TStringField;
    qrClientesSIEMPREIMPRIMIR: TIntegerField;
    qrClientesTIPOSANGRE: TStringField;
    qrClientesPACIENTECIAID: TStringField;
    qrClientesSECTOR: TStringField;
    qrClientesUSUARIOINTERNET: TStringField;
    qrClientesCLAVEINTERNET: TStringField;
    qrClientesTIPOINTERNET: TStringField;
    qrClientesCLASECREDITO: TStringField;
    qrClientesDOCTORID: TStringField;
    qrClientesSEXO: TIntegerField;
    qrClientesESTATUS: TIntegerField;
    qrClientesTIPOCLIENTEAS400: TIntegerField;
    qrClientesCODIGOIDAS400: TStringField;
    qrClientesGRUPOPRECIO: TStringField;
    qrClientesFORMAPAGO: TStringField;
    qrClientesDATAAREAID: TStringField;
    qrClientesGRUPODESCUENTOLINEA: TStringField;
    qrClientesGRUPODESCUENTOTOTAL: TStringField;
    qrEntradaPacienteDetalleDESCUENTOLINEAAPLICADO: TBCDField;
    qrEntradaPacienteDetalleCUADRADO: TIntegerField;
    qrEntradaPacienteDetalleTRANSFERIDO: TIntegerField;
    qrEntradaPacienteDetallePASARAXAPTA: TIntegerField;
    qrEntradaPacienteDetalleCOMBO: TIntegerField;
    qrEntradaPacienteDetalleADICIONAL: TBCDField;
    qrEntradaPacienteDetalleREPREALIZADA: TIntegerField;
    qrEntradaPacienteDetalleREPMUESTRANO: TStringField;
    qrEntradaPacienteConsNCFTYPEID: TStringField;
    qrEntradaPacienteConsNCFID: TStringField;
    qrEntradaPacienteConsNCFNAME: TStringField;
    qrEntradaPacienteConsCUADRADO: TIntegerField;
    qrEntradaPacienteConsTRANSFERIDO: TIntegerField;
    qrEntradaPacienteConsSUCURSAL: TIntegerField;
    qrEntradaPacienteConsNUMEROINTERNET: TIntegerField;
    qrEntradaPacienteConsPUBLICARINTERNETCLIENTE: TIntegerField;
    qrEntradaPacienteConsCOBERTURAPRECONFIRMADA: TIntegerField;
    qrEntradaPacienteConsCOBERTURAMONTOPRECONFIRMADO: TBCDField;
    qrEntradaPacienteConsTRANSFERENCIA: TStringField;
    qrEntradaPacienteConsGRUPOPRECIO: TStringField;
    qrEntradaPacienteConsGRUPODESCUENTOLINEA: TStringField;
    qrEntradaPacienteConsGRUPODESCUENTOTOTAL: TStringField;
    qrEntradaPacienteConsRESULTADOCLIENTE: TIntegerField;
    qrLoginRutaBarcode: TStringField;
    ppImpCuadreCajaUsuarioOld: TppReport;
    ppParameterList1: TppParameterList;
    ppHeaderBand10: TppHeaderBand;
    ppLabel117: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLabel118: TppLabel;
    ppDetailBand14: TppDetailBand;
    ppLabel120: TppLabel;
    ppLabel121: TppLabel;
    ppDBText134: TppDBText;
    ppDBText135: TppDBText;
    ppLabel125: TppLabel;
    ppLabel126: TppLabel;
    ppDBText136: TppDBText;
    ppDBText137: TppDBText;
    ppLabel130: TppLabel;
    ppLine17: TppLine;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppDBText125: TppDBText;
    ppLabel112: TppLabel;
    ppDBText126: TppDBText;
    ppLabel113: TppLabel;
    ppDBText127: TppDBText;
    ppLabel114: TppLabel;
    ppDBText128: TppDBText;
    ppLine1: TppLine;
    ppDBText131: TppDBText;
    ppLabel155: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppLabel122: TppLabel;
    ppLabel127: TppLabel;
    ppDBText133: TppDBText;
    ppDBText148: TppDBText;
    ppLabel137: TppLabel;
    ppLabel150: TppLabel;
    ppDBText151: TppDBText;
    ppDBText152: TppDBText;
    ppLabel157: TppLabel;
    ppLabel138: TppLabel;
    ppDBText154: TppDBText;
    ppLabel156: TppLabel;
    ppLabel158: TppLabel;
    ppDBText155: TppDBText;
    ppLine16: TppLine;
    ppLine19: TppLine;
    ppCorteDetalle: TppDBPipeline;
    dsCorteDetalle: TDataSource;
    qrCorteDetalle: TADOQuery;
    qrCorteDetalleCorteID: TStringField;
    qrCorteDetalleTipo: TStringField;
    qrCorteDetalleFormaDePagoId: TStringField;
    qrCorteDetalleMonedaId: TStringField;
    qrCorteDetalleValor: TBCDField;
    qrCorteDetalleValorMST: TBCDField;
    ppLine22: TppLine;
    ppLabel131: TppLabel;
    ppDBText138: TppDBText;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLabel133: TppLabel;
    ppLabel134: TppLabel;
    ppLine12: TppLine;
    ppLine24: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppTitleBand1: TppTitleBand;
    ppClientesPlanesListado: TppReport;
    ppHeaderBand11: TppHeaderBand;
    ppSystemVariable6: TppSystemVariable;
    ppSystemVariable7: TppSystemVariable;
    ppLabel141: TppLabel;
    ppLine14: TppLine;
    ppDBText140: TppDBText;
    ppLabel144: TppLabel;
    ppColumnHeaderBand3: TppColumnHeaderBand;
    ppDetailBand16: TppDetailBand;
    ppDBText141: TppDBText;
    ppDBText145: TppDBText;
    ppDBText147: TppDBText;
    ppDBText157: TppDBText;
    ppDBText158: TppDBText;
    ppColumnFooterBand3: TppColumnFooterBand;
    ppSummaryBand12: TppSummaryBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppLabel145: TppLabel;
    ppLabel146: TppLabel;
    ppLabel147: TppLabel;
    ppLabel148: TppLabel;
    ppLabel149: TppLabel;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppParameterList2: TppParameterList;
    dsEntradaDetRep: TDataSource;
    ppEntradaDetRep: TppDBPipeline;
    qrEntradaCabRep: TADOQuery;
    dsEntradaCabRep: TDataSource;
    ppEntradaCabRep: TppDBPipeline;
    qrEntradaCabRepENTRADAID: TStringField;
    qrEntradaCabRepFECHA: TDateTimeField;
    qrEntradaCabRepHORAENTRADA: TStringField;
    qrEntradaCabRepPACIENTEID: TStringField;
    qrEntradaCabRepCLIENTEID: TStringField;
    qrEntradaCabRepDOCTORID: TStringField;
    qrEntradaCabRepPOLIZAID: TStringField;
    qrEntradaCabRepENCLINICA: TIntegerField;
    qrEntradaCabRepRECORDCLINICA: TStringField;
    qrEntradaCabRepNUMEROHABITACION: TStringField;
    qrEntradaCabRepFECHAENTRADA: TDateTimeField;
    qrEntradaCabRepFECHADEALTA: TDateTimeField;
    qrEntradaCabRepFECHAPROMETIDA: TDateTimeField;
    qrEntradaCabRepHORAPROMETIDA: TStringField;
    qrEntradaCabRepFLEBOTOMISTAID: TStringField;
    qrEntradaCabRepNOTA: TStringField;
    qrEntradaCabRepPROYECTOID: TStringField;
    qrEntradaCabRepRECORDID: TIntegerField;
    qrEntradaCabRepBRUTO: TBCDField;
    qrEntradaCabRepDESCUENTO: TBCDField;
    qrEntradaCabRepSUBTOTAL: TBCDField;
    qrEntradaCabRepNETO: TBCDField;
    qrEntradaCabRepNOMBREPACIENTE: TStringField;
    qrEntradaCabRepDIRECCION: TStringField;
    qrEntradaCabRepTELEFONOS: TStringField;
    qrEntradaCabRepTELEFONO2: TStringField;
    qrEntradaCabRepEMAIL: TStringField;
    qrEntradaCabRepCLIENTENOMBRE: TStringField;
    qrEntradaCabRepSUCURSALID: TStringField;
    qrEntradaCabRepUSERID: TStringField;
    qrEntradaCabRepCOBROID: TStringField;
    qrEntradaCabRepTOTALPAGADO: TBCDField;
    qrEntradaCabRepPRIORIDAD: TIntegerField;
    qrEntradaCabRepFAX: TStringField;
    qrEntradaCabRepCOBERTURAPORC: TBCDField;
    qrEntradaCabRepCOBERTURASEGURO: TBCDField;
    qrEntradaCabRepCOBERTURAVALOR: TBCDField;
    qrEntradaCabRepDESCUENTOPORC: TBCDField;
    qrEntradaCabRepDESCUENTOVALOR: TBCDField;
    qrEntradaCabRepDESCUENTOBONO: TBCDField;
    qrEntradaCabRepORIGEN: TStringField;
    qrEntradaCabRepAPROBACIONNO: TStringField;
    qrEntradaCabRepAPROBACIONPOR: TStringField;
    qrEntradaCabRepCOBERTURARECHAZADA: TIntegerField;
    qrEntradaCabRepCOBERTURACONFIRMADA: TIntegerField;
    qrEntradaCabRepFECHAASEGURADORA: TDateTimeField;
    qrEntradaCabRepMUESTRANO: TStringField;
    qrEntradaCabRepMONEDAID: TStringField;
    qrEntradaCabRepCOBERTURAEXPPORC: TIntegerField;
    qrEntradaCabRepEDADPACIENTE: TIntegerField;
    qrEntradaCabRepNOMBREDOCTOR: TStringField;
    qrEntradaCabRepPUBLICARINTERNET: TIntegerField;
    qrEntradaCabRepCARNET: TStringField;
    qrEntradaCabRepPUBLICARINTERNETDOCTOR: TIntegerField;
    qrEntradaCabRepCUADREGLOBAL: TStringField;
    qrEntradaCabRepCUADREUSUARIO: TStringField;
    qrEntradaCabRepDESCAUTORIZADOPOR: TStringField;
    qrEntradaCabRepGASTOSVARIOS: TBCDField;
    qrEntradaCabRepNOAS400: TIntegerField;
    qrEntradaCabRepNOAXAPTA: TIntegerField;
    qrEntradaCabRepNOFACTURA: TIntegerField;
    qrEntradaCabRepFACTEXTERIOR: TIntegerField;
    qrEntradaCabRepHOLD: TIntegerField;
    qrEntradaCabRepREPMUESTRA: TIntegerField;
    qrEntradaCabRepENTRADAIDANT: TStringField;
    qrEntradaCabRepTIPOENTRADA: TStringField;
    qrEntradaCabRepFORMADEPAGO: TStringField;
    qrEntradaCabRepDESCUENTOCARD: TStringField;
    qrEntradaCabRepDESCUENTOTEXTO: TStringField;
    qrEntradaCabRepACUERDOPROPIO: TIntegerField;
    qrEntradaCabRepCLIENTEPADRE: TStringField;
    qrEntradaCabRepDESCUENTOPLANID: TStringField;
    qrEntradaCabRepFECHAREGISTRO: TDateTimeField;
    qrEntradaCabRepHORAREGISTRO: TStringField;
    qrEntradaCabRepTASA: TBCDField;
    qrEntradaCabRepESTATUS: TIntegerField;
    qrEntradaCabRepTIPOCLIENTEAS400: TIntegerField;
    qrEntradaCabRepCLASECREDITO: TStringField;
    qrEntradaCabRepCARNETNUMERO: TStringField;
    qrEntradaCabRepCLIENTEPADREAXAPTA: TStringField;
    qrEntradaCabRepPACIENTEIDAXAPTA: TStringField;
    qrEntradaCabRepCLIENTEIDAXAPTA: TStringField;
    qrEntradaCabRepDOCTORIDAXAPTA: TStringField;
    qrEntradaCabRepNCFTYPEID: TStringField;
    qrEntradaCabRepNCFID: TStringField;
    qrEntradaCabRepNCFNAME: TStringField;
    qrEntradaCabRepSEXO: TIntegerField;
    qrEntradaCabRepCUADRADO: TIntegerField;
    qrEntradaCabRepTRANSFERIDO: TIntegerField;
    qrEntradaCabRepSUCURSAL: TIntegerField;
    qrEntradaCabRepNUMEROINTERNET: TIntegerField;
    qrEntradaCabRepPUBLICARINTERNETCLIENTE: TIntegerField;
    qrEntradaCabRepCOBERTURAPRECONFIRMADA: TIntegerField;
    qrEntradaCabRepCOBERTURAMONTOPRECONFIRMADO: TBCDField;
    qrEntradaCabRepTRANSFERENCIA: TStringField;
    qrEntradaCabRepGRUPOPRECIO: TStringField;
    qrEntradaCabRepTIPODOCUMENTO: TIntegerField;
    qrEntradaCabRepGRUPODESCUENTOLINEA: TStringField;
    qrEntradaCabRepGRUPODESCUENTOTOTAL: TStringField;
    qrEntradaCabRepRESULTADOCLIENTE: TIntegerField;
    qrEntradaCabRepRESULTADODOCTOR: TIntegerField;
    qrEntradaCabRepRESULTADOPACIENTE: TIntegerField;
    qrEntradaCabRepDATAAREAID: TStringField;
    qrEntradaCabRepTotalPendiente: TCurrencyField;
    qrEntradaDetRep: TADOQuery;
    qrEntradaDetRepPRUEBAID: TStringField;
    qrEntradaDetRepCOMBOPRUEBAID: TStringField;
    qrEntradaDetRepCODIGOAUTORIZACION: TStringField;
    qrEntradaDetRepDESCRIPCION: TStringField;
    qrEntradaDetRepCODIGOCUPID: TStringField;
    qrEntradaDetRepMUESTRAANT: TStringField;
    qrEntradaDetRepCOBERTURAAPLICA: TIntegerField;
    qrEntradaDetRepDESCRIPCIONCUP: TStringField;
    qrEntradaDetRepSECUENCIA: TIntegerField;
    qrEntradaDetRepFLEBOTOMISTAID: TStringField;
    qrEntradaDetRepCOMENTARIOMUESTRA: TStringField;
    qrEntradaDetRepUNIDADMUESTRA: TStringField;
    qrEntradaDetRepSECUENCIAACT: TIntegerField;
    qrEntradaDetRepPRECIO: TBCDField;
    qrEntradaDetRepDESCUENTO: TBCDField;
    qrEntradaDetRepDESCUENTOEXTRA: TBCDField;
    qrEntradaDetRepTOTALLINEA: TBCDField;
    qrEntradaDetRepCOMENTARIO: TStringField;
    qrEntradaDetRepTIPOPRUEBA: TStringField;
    qrEntradaDetRepTIPOAS400: TStringField;
    qrEntradaDetRepCODIGOAS400: TStringField;
    qrEntradaDetRepMEDIOAS400: TStringField;
    qrEntradaDetRepDESCPCT: TBCDField;
    qrEntradaDetRepCOBERTURAESPECIAL: TBCDField;
    qrEntradaDetRepCOBERTURAESPECIALPORC: TBCDField;
    qrEntradaDetRepCOBERTURAAPLICADA: TBCDField;
    qrEntradaDetRepDESCUENTOAPLICADO: TBCDField;
    qrEntradaDetRepFACTURAR: TIntegerField;
    qrEntradaDetRepSELECCIONAR: TIntegerField;
    qrEntradaDetRepMUESTRANO: TStringField;
    qrEntradaDetRepCOBERTURAEXPPORC: TIntegerField;
    qrEntradaDetRepURGENTE: TIntegerField;
    qrEntradaDetRepREPMUESTRA: TIntegerField;
    qrEntradaDetRepFECHAENTREGA: TDateTimeField;
    qrEntradaDetRepHORAENTREGA: TStringField;
    qrEntradaDetRepESTATUS: TStringField;
    qrEntradaDetRepDESCUENTOLINEAAPLICADO: TBCDField;
    qrEntradaDetRepCUADRADO: TIntegerField;
    qrEntradaDetRepTRANSFERIDO: TIntegerField;
    qrEntradaDetRepPASARAXAPTA: TIntegerField;
    qrEntradaDetRepCOMBO: TIntegerField;
    qrEntradaDetRepADICIONAL: TBCDField;
    qrEntradaDetRepREPREALIZADA: TIntegerField;
    qrEntradaDetRepREPMUESTRANO: TStringField;
    qrEntradaDetRepTIENEACUERDOPRECIO: TIntegerField;
    qrEntradaDetRepTIENEACUERDODESCUENTO: TIntegerField;
    qrEntradaDetRepDATAAREAID: TStringField;
    ppImpEntradasxGrupos: TppReport;
    ppHeaderBand13: TppHeaderBand;
    ppDBText169: TppDBText;
    ppDBText170: TppDBText;
    ppLabel162: TppLabel;
    ppLabel166: TppLabel;
    ppSystemVariable11: TppSystemVariable;
    ppSystemVariable12: TppSystemVariable;
    ppLabel167: TppLabel;
    ppLabel168: TppLabel;
    ppLabel169: TppLabel;
    ppSystemVariable13: TppSystemVariable;
    ppDetailBand18: TppDetailBand;
    ppDBText171: TppDBText;
    ppDBText172: TppDBText;
    ppDBText173: TppDBText;
    ppDBText174: TppDBText;
    ppDBText175: TppDBText;
    ppDBText176: TppDBText;
    ppDBText177: TppDBText;
    ppDBText178: TppDBText;
    ppDBText179: TppDBText;
    ppDBText180: TppDBText;
    ppDBText181: TppDBText;
    ppDBText182: TppDBText;
    ppDBText183: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppLbGrupo: TppLabel;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppDBCalc21: TppDBCalc;
    ppDBCalc22: TppDBCalc;
    ppDBCalc23: TppDBCalc;
    ppDBCalc24: TppDBCalc;
    ppDBCalc25: TppDBCalc;
    ppDBCalc26: TppDBCalc;
    ppDBCalc27: TppDBCalc;
    ppLabel174: TppLabel;
    ppDBCalc28: TppDBCalc;
    ppLabel175: TppLabel;
    ppImpPagosPend: TppReport;
    ppHeaderBand14: TppHeaderBand;
    ppDBText185: TppDBText;
    ppDBText186: TppDBText;
    ppLabel170: TppLabel;
    ppLabel176: TppLabel;
    ppDetailBand19: TppDetailBand;
    ppDBText187: TppDBText;
    ppDBText188: TppDBText;
    ppDBText189: TppDBText;
    ppDBText190: TppDBText;
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
    ppDBText193: TppDBText;
    ppImpPacienteDescuento: TppReport;
    ppHeaderBand9: TppHeaderBand;
    ppDBText83: TppDBText;
    ppDBText89: TppDBText;
    ppLabel74: TppLabel;
    ppLabel110: TppLabel;
    ppDetailBand13: TppDetailBand;
    ppDBText118: TppDBText;
    ppDBText119: TppDBText;
    ppDBText120: TppDBText;
    ppDBText159: TppDBText;
    ppDBText160: TppDBText;
    ppDBText161: TppDBText;
    ppDBText162: TppDBText;
    ppDBText163: TppDBText;
    ppDBText164: TppDBText;
    ppDBText165: TppDBText;
    ppDBText166: TppDBText;
    ppDBText167: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppLabel152: TppLabel;
    raCodeModule1: TraCodeModule;
    ppLabel173: TppLabel;
    ppLabel184: TppLabel;
    ppLabel185: TppLabel;
    ppLabel187: TppLabel;
    ppLabel188: TppLabel;
    ppLabel190: TppLabel;
    ppLabel192: TppLabel;
    ppLabel193: TppLabel;
    ppLabel194: TppLabel;
    ppLabel196: TppLabel;
    ppLabel197: TppLabel;
    ppLabel198: TppLabel;
    ppLabel186: TppLabel;
    ppLabel171: TppLabel;
    ppLabel172: TppLabel;
    ppLabel177: TppLabel;
    ppLabel189: TppLabel;
    ppLabel191: TppLabel;
    ppLabel195: TppLabel;
    ppLabel199: TppLabel;
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
    ppLabel105: TppLabel;
    ppLabel109: TppLabel;
    ppLabel111: TppLabel;
    ppLabel209: TppLabel;
    ppLabel210: TppLabel;
    ppLabel211: TppLabel;
    ppLabel213: TppLabel;
    ppLabel214: TppLabel;
    ppLabel215: TppLabel;
    ppSystemVariable8: TppSystemVariable;
    ppSystemVariable9: TppSystemVariable;
    ppLabel216: TppLabel;
    ppLabel217: TppLabel;
    ppSystemVariable10: TppSystemVariable;
    ppLabel218: TppLabel;
    ppLabel219: TppLabel;
    ppLabel220: TppLabel;
    ppLabel221: TppLabel;
    qrEntradaCabDetRep: TADOQuery;
    dsEntradaCabDetRep: TDataSource;
    ppEntradaCabDetRep: TppDBPipeline;
    qrEntradaCabDetRepENTRADAID: TStringField;
    qrEntradaCabDetRepFECHA: TDateTimeField;
    qrEntradaCabDetRepHORAENTRADA: TStringField;
    qrEntradaCabDetRepPACIENTEID: TStringField;
    qrEntradaCabDetRepCLIENTEID: TStringField;
    qrEntradaCabDetRepDOCTORID: TStringField;
    qrEntradaCabDetRepPOLIZAID: TStringField;
    qrEntradaCabDetRepENCLINICA: TIntegerField;
    qrEntradaCabDetRepRECORDCLINICA: TStringField;
    qrEntradaCabDetRepNUMEROHABITACION: TStringField;
    qrEntradaCabDetRepFECHAENTRADA: TDateTimeField;
    qrEntradaCabDetRepFECHADEALTA: TDateTimeField;
    qrEntradaCabDetRepFECHAPROMETIDA: TDateTimeField;
    qrEntradaCabDetRepHORAPROMETIDA: TStringField;
    qrEntradaCabDetRepFLEBOTOMISTAID: TStringField;
    qrEntradaCabDetRepNOTA: TStringField;
    qrEntradaCabDetRepPROYECTOID: TStringField;
    qrEntradaCabDetRepRECORDID: TIntegerField;
    qrEntradaCabDetRepBRUTO: TBCDField;
    qrEntradaCabDetRepDESCUENTO: TBCDField;
    qrEntradaCabDetRepSUBTOTAL: TBCDField;
    qrEntradaCabDetRepNETO: TBCDField;
    qrEntradaCabDetRepNOMBREPACIENTE: TStringField;
    qrEntradaCabDetRepDIRECCION: TStringField;
    qrEntradaCabDetRepTELEFONOS: TStringField;
    qrEntradaCabDetRepTELEFONO2: TStringField;
    qrEntradaCabDetRepEMAIL: TStringField;
    qrEntradaCabDetRepCLIENTENOMBRE: TStringField;
    qrEntradaCabDetRepSUCURSALID: TStringField;
    qrEntradaCabDetRepUSERID: TStringField;
    qrEntradaCabDetRepCOBROID: TStringField;
    qrEntradaCabDetRepTOTALPAGADO: TBCDField;
    qrEntradaCabDetRepPRIORIDAD: TIntegerField;
    qrEntradaCabDetRepFAX: TStringField;
    qrEntradaCabDetRepCOBERTURAPORC: TBCDField;
    qrEntradaCabDetRepCOBERTURASEGURO: TBCDField;
    qrEntradaCabDetRepCOBERTURAVALOR: TBCDField;
    qrEntradaCabDetRepDESCUENTOPORC: TBCDField;
    qrEntradaCabDetRepDESCUENTOVALOR: TBCDField;
    qrEntradaCabDetRepDESCUENTOBONO: TBCDField;
    qrEntradaCabDetRepORIGEN: TStringField;
    qrEntradaCabDetRepAPROBACIONNO: TStringField;
    qrEntradaCabDetRepAPROBACIONPOR: TStringField;
    qrEntradaCabDetRepCOBERTURARECHAZADA: TIntegerField;
    qrEntradaCabDetRepCOBERTURACONFIRMADA: TIntegerField;
    qrEntradaCabDetRepFECHAASEGURADORA: TDateTimeField;
    qrEntradaCabDetRepMUESTRANO: TStringField;
    qrEntradaCabDetRepMONEDAID: TStringField;
    qrEntradaCabDetRepCOBERTURAEXPPORC: TIntegerField;
    qrEntradaCabDetRepEDADPACIENTE: TIntegerField;
    qrEntradaCabDetRepNOMBREDOCTOR: TStringField;
    qrEntradaCabDetRepPUBLICARINTERNET: TIntegerField;
    qrEntradaCabDetRepCARNET: TStringField;
    qrEntradaCabDetRepPUBLICARINTERNETDOCTOR: TIntegerField;
    qrEntradaCabDetRepCUADREGLOBAL: TStringField;
    qrEntradaCabDetRepCUADREUSUARIO: TStringField;
    qrEntradaCabDetRepDESCAUTORIZADOPOR: TStringField;
    qrEntradaCabDetRepGASTOSVARIOS: TBCDField;
    qrEntradaCabDetRepNOAS400: TIntegerField;
    qrEntradaCabDetRepNOAXAPTA: TIntegerField;
    qrEntradaCabDetRepNOFACTURA: TIntegerField;
    qrEntradaCabDetRepFACTEXTERIOR: TIntegerField;
    qrEntradaCabDetRepHOLD: TIntegerField;
    qrEntradaCabDetRepREPMUESTRA: TIntegerField;
    qrEntradaCabDetRepENTRADAIDANT: TStringField;
    qrEntradaCabDetRepTIPOENTRADA: TStringField;
    qrEntradaCabDetRepFORMADEPAGO: TStringField;
    qrEntradaCabDetRepDESCUENTOCARD: TStringField;
    qrEntradaCabDetRepDESCUENTOTEXTO: TStringField;
    qrEntradaCabDetRepACUERDOPROPIO: TIntegerField;
    qrEntradaCabDetRepCLIENTEPADRE: TStringField;
    qrEntradaCabDetRepDESCUENTOPLANID: TStringField;
    qrEntradaCabDetRepFECHAREGISTRO: TDateTimeField;
    qrEntradaCabDetRepHORAREGISTRO: TStringField;
    qrEntradaCabDetRepTASA: TBCDField;
    qrEntradaCabDetRepESTATUS: TIntegerField;
    qrEntradaCabDetRepTIPOCLIENTEAS400: TIntegerField;
    qrEntradaCabDetRepCLASECREDITO: TStringField;
    qrEntradaCabDetRepCARNETNUMERO: TStringField;
    qrEntradaCabDetRepCLIENTEPADREAXAPTA: TStringField;
    qrEntradaCabDetRepPACIENTEIDAXAPTA: TStringField;
    qrEntradaCabDetRepCLIENTEIDAXAPTA: TStringField;
    qrEntradaCabDetRepDOCTORIDAXAPTA: TStringField;
    qrEntradaCabDetRepNCFTYPEID: TStringField;
    qrEntradaCabDetRepNCFID: TStringField;
    qrEntradaCabDetRepNCFNAME: TStringField;
    qrEntradaCabDetRepSEXO: TIntegerField;
    qrEntradaCabDetRepCUADRADO: TIntegerField;
    qrEntradaCabDetRepTRANSFERIDO: TIntegerField;
    qrEntradaCabDetRepSUCURSAL: TIntegerField;
    qrEntradaCabDetRepNUMEROINTERNET: TIntegerField;
    qrEntradaCabDetRepPUBLICARINTERNETCLIENTE: TIntegerField;
    qrEntradaCabDetRepCOBERTURAPRECONFIRMADA: TIntegerField;
    qrEntradaCabDetRepCOBERTURAMONTOPRECONFIRMADO: TBCDField;
    qrEntradaCabDetRepTRANSFERENCIA: TStringField;
    qrEntradaCabDetRepGRUPOPRECIO: TStringField;
    qrEntradaCabDetRepTIPODOCUMENTO: TIntegerField;
    qrEntradaCabDetRepGRUPODESCUENTOLINEA: TStringField;
    qrEntradaCabDetRepGRUPODESCUENTOTOTAL: TStringField;
    qrEntradaCabDetRepRESULTADOCLIENTE: TIntegerField;
    qrEntradaCabDetRepRESULTADODOCTOR: TIntegerField;
    qrEntradaCabDetRepRESULTADOPACIENTE: TIntegerField;
    qrEntradaCabDetRepDATAAREAID: TStringField;
    qrEntradaCabDetRepPRUEBAID: TStringField;
    qrEntradaCabDetRepCOMBOPRUEBAID: TStringField;
    qrEntradaCabDetRepCODIGOAUTORIZACION: TStringField;
    qrEntradaCabDetRepDESCRIPCION: TStringField;
    qrEntradaCabDetRepCODIGOCUPID: TStringField;
    qrEntradaCabDetRepMUESTRAANT: TStringField;
    qrEntradaCabDetRepCOBERTURAAPLICA: TIntegerField;
    qrEntradaCabDetRepDESCRIPCIONCUP: TStringField;
    qrEntradaCabDetRepSECUENCIA: TIntegerField;
    qrEntradaCabDetRepFLEBOTOMISTAID_1: TStringField;
    qrEntradaCabDetRepCOMENTARIOMUESTRA: TStringField;
    qrEntradaCabDetRepUNIDADMUESTRA: TStringField;
    qrEntradaCabDetRepSECUENCIAACT: TIntegerField;
    qrEntradaCabDetRepPRECIO: TBCDField;
    qrEntradaCabDetRepDESCUENTO_1: TBCDField;
    qrEntradaCabDetRepDESCUENTOEXTRA: TBCDField;
    qrEntradaCabDetRepTOTALLINEA: TBCDField;
    qrEntradaCabDetRepCOMENTARIO: TStringField;
    qrEntradaCabDetRepTIPOPRUEBA: TStringField;
    qrEntradaCabDetRepTIPOAS400: TStringField;
    qrEntradaCabDetRepCODIGOAS400: TStringField;
    qrEntradaCabDetRepMEDIOAS400: TStringField;
    qrEntradaCabDetRepDESCPCT: TBCDField;
    qrEntradaCabDetRepCOBERTURAESPECIAL: TBCDField;
    qrEntradaCabDetRepCOBERTURAESPECIALPORC: TBCDField;
    qrEntradaCabDetRepCOBERTURAAPLICADA: TBCDField;
    qrEntradaCabDetRepDESCUENTOAPLICADO: TBCDField;
    qrEntradaCabDetRepFACTURAR: TIntegerField;
    qrEntradaCabDetRepSELECCIONAR: TIntegerField;
    qrEntradaCabDetRepMUESTRANO_1: TStringField;
    qrEntradaCabDetRepCOBERTURAEXPPORC_1: TIntegerField;
    qrEntradaCabDetRepURGENTE: TIntegerField;
    qrEntradaCabDetRepREPMUESTRA_1: TIntegerField;
    qrEntradaCabDetRepFECHAENTREGA: TDateTimeField;
    qrEntradaCabDetRepHORAENTREGA: TStringField;
    qrEntradaCabDetRepESTATUS_1: TStringField;
    qrEntradaCabDetRepDESCUENTOLINEAAPLICADO: TBCDField;
    qrEntradaCabDetRepCUADRADO_1: TIntegerField;
    qrEntradaCabDetRepTRANSFERIDO_1: TIntegerField;
    qrEntradaCabDetRepPASARAXAPTA: TIntegerField;
    qrEntradaCabDetRepCOMBO: TIntegerField;
    qrEntradaCabDetRepADICIONAL: TBCDField;
    qrEntradaCabDetRepREPREALIZADA: TIntegerField;
    qrEntradaCabDetRepREPMUESTRANO: TStringField;
    qrEntradaCabDetRepTIENEACUERDOPRECIO: TIntegerField;
    qrEntradaCabDetRepTIENEACUERDODESCUENTO: TIntegerField;
    qrEntradaCabDetRepDATAAREAID_1: TStringField;
    ppImpPruebaExterior: TppReport;
    ppHeaderBand12: TppHeaderBand;
    ppDBText168: TppDBText;
    ppDBText184: TppDBText;
    ppLabel153: TppLabel;
    ppLabel154: TppLabel;
    ppSystemVariable17: TppSystemVariable;
    ppSystemVariable18: TppSystemVariable;
    ppLabel160: TppLabel;
    ppLabel161: TppLabel;
    ppLabel163: TppLabel;
    ppSystemVariable19: TppSystemVariable;
    ppLabel164: TppLabel;
    ppLabel165: TppLabel;
    ppLabel179: TppLabel;
    ppLabel183: TppLabel;
    ppLabel212: TppLabel;
    ppLabel222: TppLabel;
    ppDetailBand17: TppDetailBand;
    ppDBText200: TppDBText;
    ppDBText201: TppDBText;
    ppDBText202: TppDBText;
    ppDBText206: TppDBText;
    ppDBText207: TppDBText;
    ppDBText210: TppDBText;
    ppLabel180: TppLabel;
    ppDBComentario1: TppDBMemo;
    ppDBDescripcion1: TppDBMemo;
    ppLine15: TppLine;
    ppLine18: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLabel181: TppLabel;
    ppLabel182: TppLabel;
    ppLabel223: TppLabel;
    ppLabel224: TppLabel;
    ppListadoPruebasDepto: TppReport;
    ppHeaderBand15: TppHeaderBand;
    ppDBText203: TppDBText;
    ppDBText204: TppDBText;
    ppLabel225: TppLabel;
    ppLabel226: TppLabel;
    ppSystemVariable20: TppSystemVariable;
    ppSystemVariable21: TppSystemVariable;
    ppLabel227: TppLabel;
    ppLabel228: TppLabel;
    ppLabel229: TppLabel;
    ppSystemVariable22: TppSystemVariable;
    ppLabel230: TppLabel;
    ppLabel231: TppLabel;
    ppLabel232: TppLabel;
    ppLabel234: TppLabel;
    ppLabel236: TppLabel;
    ppDetailBand20: TppDetailBand;
    ppDBText208: TppDBText;
    ppDBText209: TppDBText;
    ppDBText211: TppDBText;
    ppDBText212: TppDBText;
    ppDBText213: TppDBText;
    ppDBText214: TppDBText;
    ppFooterBand4: TppFooterBand;
    ppDBCalc36: TppDBCalc;
    ppLabel243: TppLabel;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppLbDepartamento: TppLabel;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppDBCalc43: TppDBCalc;
    ppLabel245: TppLabel;
    ppLabel235: TppLabel;
    ppLabel233: TppLabel;
    ppDBText205: TppDBText;
    qrSucursalSUCURSAL: TIntegerField;
    qrCobroCobroID: TStringField;
    qrCobroTurnoID: TStringField;
    qrCobroEntradaID: TStringField;
    qrCobroSucursalID: TStringField;
    qrCobroFecha: TDateTimeField;
    qrCobroHora: TStringField;
    qrCobroPacienteID: TStringField;
    qrCobroPacientePrincipalID: TStringField;
    qrCobroUsuarioID: TStringField;
    qrCobroTotalCobrado: TBCDField;
    qrCobroTotalFactura: TBCDField;
    qrCobroTotalPagado: TBCDField;
    qrCobroPendienteFactura: TBCDField;
    qrCobroPendienteCobro: TBCDField;
    qrCobroReciboNo: TStringField;
    qrCobroClienteID: TStringField;
    qrCobroAplicado: TBooleanField;
    qrCobroMonedaID: TStringField;
    qrCobroTipoDoc: TStringField;
    qrCobroConcepto: TStringField;
    qrCobroCUADREGLOBAL: TStringField;
    qrCobroCUADREUSUARIO: TStringField;
    qrCobroENTRADAID_1: TStringField;
    qrCobroFECHA_1: TDateTimeField;
    qrCobroHORAENTRADA: TStringField;
    qrCobroPACIENTEID_1: TStringField;
    qrCobroCLIENTEID_1: TStringField;
    qrCobroDOCTORID: TStringField;
    qrCobroPOLIZAID: TStringField;
    qrCobroENCLINICA: TIntegerField;
    qrCobroRECORDCLINICA: TStringField;
    qrCobroNUMEROHABITACION: TStringField;
    qrCobroFECHAENTRADA: TDateTimeField;
    qrCobroFECHADEALTA: TDateTimeField;
    qrCobroFECHAPROMETIDA: TDateTimeField;
    qrCobroHORAPROMETIDA: TStringField;
    qrCobroFLEBOTOMISTAID: TStringField;
    qrCobroNOTA: TStringField;
    qrCobroPROYECTOID: TStringField;
    qrCobroRECORDID: TIntegerField;
    qrCobroBRUTO: TBCDField;
    qrCobroDESCUENTO: TBCDField;
    qrCobroSUBTOTAL: TBCDField;
    qrCobroNETO: TBCDField;
    qrCobroNOMBREPACIENTE: TStringField;
    qrCobroDIRECCION: TStringField;
    qrCobroTELEFONOS: TStringField;
    qrCobroTELEFONO2: TStringField;
    qrCobroEMAIL: TStringField;
    qrCobroCLIENTENOMBRE: TStringField;
    qrCobroSUCURSALID_1: TStringField;
    qrCobroUSERID: TStringField;
    qrCobroCOBROID_1: TStringField;
    qrCobroTOTALPAGADO_1: TBCDField;
    qrCobroPRIORIDAD: TIntegerField;
    qrCobroFAX: TStringField;
    qrCobroCOBERTURAPORC: TBCDField;
    qrCobroCOBERTURASEGURO: TBCDField;
    qrCobroCOBERTURAVALOR: TBCDField;
    qrCobroDESCUENTOPORC: TBCDField;
    qrCobroDESCUENTOVALOR: TBCDField;
    qrCobroDESCUENTOBONO: TBCDField;
    qrCobroORIGEN: TStringField;
    qrCobroAPROBACIONNO: TStringField;
    qrCobroAPROBACIONPOR: TStringField;
    qrCobroCOBERTURARECHAZADA: TIntegerField;
    qrCobroCOBERTURACONFIRMADA: TIntegerField;
    qrCobroFECHAASEGURADORA: TDateTimeField;
    qrCobroMUESTRANO: TStringField;
    qrCobroMONEDAID_1: TStringField;
    qrCobroCOBERTURAEXPPORC: TIntegerField;
    qrCobroEDADPACIENTE: TIntegerField;
    qrCobroNOMBREDOCTOR: TStringField;
    qrCobroPUBLICARINTERNET: TIntegerField;
    qrCobroCARNET: TStringField;
    qrCobroPUBLICARINTERNETDOCTOR: TIntegerField;
    qrCobroCUADREGLOBAL_1: TStringField;
    qrCobroCUADREUSUARIO_1: TStringField;
    qrCobroDESCAUTORIZADOPOR: TStringField;
    qrCobroGASTOSVARIOS: TBCDField;
    qrCobroNOAS400: TIntegerField;
    qrCobroNOAXAPTA: TIntegerField;
    qrCobroNOFACTURA: TIntegerField;
    qrCobroFACTEXTERIOR: TIntegerField;
    qrCobroHOLD: TIntegerField;
    qrCobroREPMUESTRA: TIntegerField;
    qrCobroENTRADAIDANT: TStringField;
    qrCobroTIPOENTRADA: TStringField;
    qrCobroFORMADEPAGO: TStringField;
    qrCobroDESCUENTOCARD: TStringField;
    qrCobroDESCUENTOTEXTO: TStringField;
    qrCobroACUERDOPROPIO: TIntegerField;
    qrCobroCLIENTEPADRE: TStringField;
    qrCobroDESCUENTOPLANID: TStringField;
    qrCobroFECHAREGISTRO: TDateTimeField;
    qrCobroHORAREGISTRO: TStringField;
    qrCobroTASA: TBCDField;
    qrCobroESTATUS: TIntegerField;
    qrCobroTIPOCLIENTEAS400: TIntegerField;
    qrCobroCLASECREDITO: TStringField;
    qrCobroCARNETNUMERO: TStringField;
    qrCobroCLIENTEPADREAXAPTA: TStringField;
    qrCobroPACIENTEIDAXAPTA: TStringField;
    qrCobroCLIENTEIDAXAPTA: TStringField;
    qrCobroDOCTORIDAXAPTA: TStringField;
    qrCobroNCFTYPEID: TStringField;
    qrCobroNCFID: TStringField;
    qrCobroNCFNAME: TStringField;
    qrCobroSEXO: TIntegerField;
    qrCobroCUADRADO: TIntegerField;
    qrCobroTRANSFERIDO: TIntegerField;
    qrCobroSUCURSAL: TIntegerField;
    qrCobroNUMEROINTERNET: TIntegerField;
    qrCobroPUBLICARINTERNETCLIENTE: TIntegerField;
    qrCobroCOBERTURAPRECONFIRMADA: TIntegerField;
    qrCobroCOBERTURAMONTOPRECONFIRMADO: TBCDField;
    qrCobroTRANSFERENCIA: TStringField;
    qrCobroGRUPOPRECIO: TStringField;
    qrCobroTIPODOCUMENTO: TIntegerField;
    qrCobroGRUPODESCUENTOLINEA: TStringField;
    qrCobroGRUPODESCUENTOTOTAL: TStringField;
    qrCobroRESULTADOCLIENTE: TIntegerField;
    qrCobroRESULTADODOCTOR: TIntegerField;
    qrCobroRESULTADOPACIENTE: TIntegerField;
    qrCobroDATAAREAID: TStringField;
    qrCobroTotalEfectivo: TBCDField;
    qrCobroCardCredito: TBCDField;
    qrCobroCardDebito: TBCDField;
    qrCobroTotalCheque: TBCDField;
    qrCobroTotalDollares: TBCDField;
    qrCobroTotalOtros: TBCDField;
    qrCobroTotalEnvioUsa: TBCDField;
    qrCobroTotalPruebaUsa: TBCDField;    
    qrEntradaPacienteDetalleTIENEACUERDOPRECIO: TIntegerField;
    qrEntradaPacienteDetalleTIENEACUERDODESCUENTO: TIntegerField;
    qrEntradaPacienteDetalleCUADREGLOBAL: TStringField;
    qrEntradaPacienteDetalleCUADREUSUARIO: TStringField;
    qrEntradaPacienteDetalleEXTERIOR: TIntegerField;
    qrEntradaPacienteDetalleLDRDEPARTAMENTOID: TStringField;
    qrCobroDetalleCUADREGLOBAL: TStringField;
    qrCobroDetalleCUADREUSUARIO: TStringField;
    qrCobroDetalleDATAAREAID: TStringField;
    qrCobroTempCobroID: TStringField;
    qrCobroTempTurnoID: TStringField;
    qrCobroTempEntradaID: TStringField;
    qrCobroTempSucursalID: TStringField;
    qrCobroTempFecha: TDateTimeField;
    qrCobroTempHora: TStringField;
    qrCobroTempPacienteID: TStringField;
    qrCobroTempPacientePrincipalID: TStringField;
    qrCobroTempUsuarioID: TStringField;
    qrCobroTempTotalCobrado: TBCDField;
    qrCobroTempTotalFactura: TBCDField;
    qrCobroTempTotalPagado: TBCDField;
    qrCobroTempPendienteFactura: TBCDField;
    qrCobroTempPendienteCobro: TBCDField;
    qrCobroTempReciboNo: TStringField;
    qrCobroTempClienteID: TStringField;
    qrCobroTempAplicado: TBooleanField;
    qrCobroTempMonedaID: TStringField;
    qrCobroTempTipoDoc: TStringField;
    qrCobroTempConcepto: TStringField;
    qrCobroTempCUADREGLOBAL: TStringField;
    qrCobroTempCUADREUSUARIO: TStringField;
    qrCobroTempCLIENTEID_1: TStringField;
    qrCobroTempNOMBRE: TStringField;
    qrCobroTempCONTACTO: TStringField;
    qrCobroTempTELEFONO: TStringField;
    qrCobroTempFAX: TStringField;
    qrCobroTempGRUPOCLIENTE: TStringField;
    qrCobroTempINCLUIRPRECIOTICKET: TIntegerField;
    qrCobroTempAUTOCONFIRMAR: TIntegerField;
    qrCobroTempEMPLEADOID: TStringField;
    qrCobroTempCODIGOAXAPTA: TStringField;
    qrCobroTempEMAIL: TStringField;
    qrCobroTempDIRECCIONWEB: TStringField;
    qrCobroTempTELEFONO2: TStringField;
    qrCobroTempMONEDAID_1: TStringField;
    qrCobroTempIDENTIFICACION: TStringField;
    qrCobroTempORIGEN: TIntegerField;
    qrCobroTempDIRECCION: TStringField;
    qrCobroTempCIUDADID: TStringField;
    qrCobroTempPRUEBASPORDIA: TIntegerField;
    qrCobroTempCOBERTURAPORC: TBCDField;
    qrCobroTempPRINCIPAL: TStringField;
    qrCobroTempENVIORESULTADO: TIntegerField;
    qrCobroTempPUBLICARINTERNET: TIntegerField;
    qrCobroTempFECHANACIMIENTO: TDateTimeField;
    qrCobroTempSEGURO: TStringField;
    qrCobroTempCARNETNUMERO: TStringField;
    qrCobroTempPOLIZA: TStringField;
    qrCobroTempCOBRARDIFERENCIA: TIntegerField;
    qrCobroTempENVIARFAX: TIntegerField;
    qrCobroTempACTIVARDESCUENTOS: TIntegerField;
    qrCobroTempUSARALIASNOMBRE: TIntegerField;
    qrCobroTempUSARALIASPRUEBAS: TIntegerField;
    qrCobroTempSIEMPREINTERNET: TIntegerField;
    qrCobroTempIMPRIMIRALIASNOMBRE: TIntegerField;
    qrCobroTempIMPRIMIRALIASPRUEBA: TIntegerField;
    qrCobroTempIMPRIMIRSOLOTOTALES: TIntegerField;
    qrCobroTempIMPRIMIRALIASRESULTADOS: TIntegerField;
    qrCobroTempUSARACUERDOPROPIO: TIntegerField;
    qrCobroTempALIAS: TStringField;
    qrCobroTempQUIENPAGA: TStringField;
    qrCobroTempTIPOCLIENTE: TStringField;
    qrCobroTempENTREGARRESULTADOS: TStringField;
    qrCobroTempTEXTOREFERENCIA: TStringField;
    qrCobroTempSIEMPREIMPRIMIR: TIntegerField;
    qrCobroTempTIPOSANGRE: TStringField;
    qrCobroTempPACIENTECIAID: TStringField;
    qrCobroTempSECTOR: TStringField;
    qrCobroTempUSUARIOINTERNET: TStringField;
    qrCobroTempCLAVEINTERNET: TStringField;
    qrCobroTempTIPOINTERNET: TStringField;
    qrCobroTempCLASECREDITO: TStringField;
    qrCobroTempDOCTORID: TStringField;
    qrCobroTempDATAAREAID: TStringField;
    qrCobroTempSEXO: TIntegerField;
    qrCobroTempESTATUS: TIntegerField;
    qrCobroTempTIPOCLIENTEAS400: TIntegerField;
    qrCobroTempCODIGOIDAS400: TStringField;
    qrCobroTempGRUPOPRECIO: TStringField;
    qrCobroTempFORMAPAGO: TStringField;
    qrCobroTempGRUPODESCUENTOLINEA: TStringField;
    qrCobroTempGRUPODESCUENTOTOTAL: TStringField;
    qrCorteCajaDetRepCorteId: TStringField;
    qrCorteCajaDetRepFecha: TDateTimeField;
    qrCorteCajaDetRepHora: TStringField;
    qrCorteCajaDetRepUsuario: TStringField;
    qrCorteCajaDetRepSucursalId: TStringField;
    qrCorteCajaDetRepSucursal: TStringField;
    qrCorteCajaDetRepTotal_Bruto: TBCDField;
    qrCorteCajaDetRepTotal_Cobertura: TBCDField;
    qrCorteCajaDetRepTotal_Descuento: TBCDField;
    qrCorteCajaDetRepTotal_Gastos: TBCDField;
    qrCorteCajaDetRepTotal_Pagado: TBCDField;
    qrCorteCajaDetRepTotal_Pendiente: TBCDField;
    qrCorteCajaDetRepTotal_Credito: TBCDField;
    qrCorteCajaDetRepTotal_Contado: TBCDField;
    qrCorteCajaDetRepTotal_Venta: TBCDField;
    qrCorteCajaDetRepMonedaId: TStringField;
    qrCorteCajaDetRepTotal_PagoRD: TBCDField;
    qrCorteCajaDetRepTotal_PagoUS: TBCDField;
    qrCorteCajaDetRepTotal_VtaRD: TBCDField;
    qrCorteCajaDetRepTotal_VtaUS: TBCDField;
    qrCorteCajaDetRepDepo_Filtro: TBCDField;
    qrCorteCajaDetRepDepo_Normal: TBCDField;
    qrCorteCajaDetRepTotal_ContRD: TBCDField;
    qrCorteCajaDetRepTotal_ContUS: TBCDField;
    qrCorteCajaDetRepTotal_Normal: TBCDField;
    qrCorteCajaDetRepTotal_Filtro: TBCDField;
    qrCorteCajaDetRepEfectivo_Reportado: TBCDField;
    qrCorteCajaDetRepDollares_Reportado: TBCDField;
    ppListadoPagosDesglosados: TppReport;
    ppHeaderBand16: TppHeaderBand;
    ppDBText215: TppDBText;
    ppDBText216: TppDBText;
    ppLabel237: TppLabel;
    ppLabel238: TppLabel;
    ppSystemVariable23: TppSystemVariable;
    ppSystemVariable24: TppSystemVariable;
    ppLabel239: TppLabel;
    ppLabel240: TppLabel;
    ppLabel241: TppLabel;
    ppSystemVariable25: TppSystemVariable;
    ppLabel242: TppLabel;
    ppLabel244: TppLabel;
    ppLabel246: TppLabel;
    ppLabel249: TppLabel;
    ppLabel250: TppLabel;
    ppLabel251: TppLabel;
    ppLabel252: TppLabel;
    ppLabel255: TppLabel;
    ppLabel256: TppLabel;
    ppDetailBand21: TppDetailBand;
    ppDBText217: TppDBText;
    ppDBText218: TppDBText;
    ppDBText219: TppDBText;
    ppDBText222: TppDBText;
    ppDBText223: TppDBText;
    ppDBText226: TppDBText;
    ppDBText228: TppDBText;
    ppFooterBand5: TppFooterBand;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppDBCalc37: TppDBCalc;
    ppLabel257: TppLabel;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppLabelUsuario: TppLabel;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppDBCalc41: TppDBCalc;
    ppDBCalc42: TppDBCalc;
    ppDBCalc45: TppDBCalc;
    ppLabel259: TppLabel;
    ppLabel247: TppLabel;
    ppLabel248: TppLabel;
    ppLabel253: TppLabel;
    ppDBText220: TppDBText;
    ppDBText221: TppDBText;
    ppDBText224: TppDBText;
    ppDBText225: TppDBText;
    ppDBText227: TppDBText;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc38: TppDBCalc;
    ppDBCalc39: TppDBCalc;
    ppDBCalc40: TppDBCalc;
    ppDBCalc44: TppDBCalc;
    ppDBCalc46: TppDBCalc;
    ppDBCalc47: TppDBCalc;
    ppColumnHeaderBand2: TppColumnHeaderBand;
    ppColumnFooterBand2: TppColumnFooterBand;
    ppColumnHeaderBand4: TppColumnHeaderBand;
    ppColumnFooterBand4: TppColumnFooterBand;
    qrParametroClienteClinica: TStringField;
    qrEntradaCabDetRepCUADREGLOBAL_1: TStringField;
    qrEntradaCabDetRepCUADREUSUARIO_1: TStringField;
    qrEntradaCabDetRepEXTERIOR: TIntegerField;
    qrEntradaCabDetRepLDRDEPARTAMENTOID: TStringField;
    qrEntradaCabDetRepPRECIOCOMBO: TBCDField;
    qrEntradaPacienteDetallePRECIOCOMBO: TBCDField;
    qrEntradaClinica: TADOQuery;
    dsEntradaClinica: TDataSource;
    qrEntradaClinicaENTRADAID: TStringField;
    qrEntradaClinicaFECHA: TDateTimeField;
    qrEntradaClinicaHORAENTRADA: TStringField;
    qrEntradaClinicaPACIENTEID: TStringField;
    qrEntradaClinicaCLIENTEID: TStringField;
    qrEntradaClinicaDOCTORID: TStringField;
    qrEntradaClinicaPOLIZAID: TStringField;
    qrEntradaClinicaENCLINICA: TIntegerField;
    qrEntradaClinicaRECORDCLINICA: TStringField;
    qrEntradaClinicaNUMEROHABITACION: TStringField;
    qrEntradaClinicaFECHAENTRADA: TDateTimeField;
    qrEntradaClinicaFECHADEALTA: TDateTimeField;
    qrEntradaClinicaFECHAPROMETIDA: TDateTimeField;
    qrEntradaClinicaHORAPROMETIDA: TStringField;
    qrEntradaClinicaFLEBOTOMISTAID: TStringField;
    qrEntradaClinicaNOTA: TStringField;
    qrEntradaClinicaPROYECTOID: TStringField;
    qrEntradaClinicaRECORDID: TIntegerField;
    qrEntradaClinicaBRUTO: TBCDField;
    qrEntradaClinicaDESCUENTO: TBCDField;
    qrEntradaClinicaSUBTOTAL: TBCDField;
    qrEntradaClinicaNETO: TBCDField;
    qrEntradaClinicaNOMBREPACIENTE: TStringField;
    qrEntradaClinicaDIRECCION: TStringField;
    qrEntradaClinicaTELEFONOS: TStringField;
    qrEntradaClinicaTELEFONO2: TStringField;
    qrEntradaClinicaEMAIL: TStringField;
    qrEntradaClinicaCLIENTENOMBRE: TStringField;
    qrEntradaClinicaSUCURSALID: TStringField;
    qrEntradaClinicaUSERID: TStringField;
    qrEntradaClinicaCOBROID: TStringField;
    qrEntradaClinicaTOTALPAGADO: TBCDField;
    qrEntradaClinicaPRIORIDAD: TIntegerField;
    qrEntradaClinicaFAX: TStringField;
    qrEntradaClinicaCOBERTURAPORC: TBCDField;
    qrEntradaClinicaCOBERTURASEGURO: TBCDField;
    qrEntradaClinicaCOBERTURAVALOR: TBCDField;
    qrEntradaClinicaDESCUENTOPORC: TBCDField;
    qrEntradaClinicaDESCUENTOVALOR: TBCDField;
    qrEntradaClinicaDESCUENTOBONO: TBCDField;
    qrEntradaClinicaORIGEN: TStringField;
    qrEntradaClinicaAPROBACIONNO: TStringField;
    qrEntradaClinicaAPROBACIONPOR: TStringField;
    qrEntradaClinicaCOBERTURARECHAZADA: TIntegerField;
    qrEntradaClinicaCOBERTURACONFIRMADA: TIntegerField;
    qrEntradaClinicaFECHAASEGURADORA: TDateTimeField;
    qrEntradaClinicaMUESTRANO: TStringField;
    qrEntradaClinicaMONEDAID: TStringField;
    qrEntradaClinicaCOBERTURAEXPPORC: TIntegerField;
    qrEntradaClinicaEDADPACIENTE: TIntegerField;
    qrEntradaClinicaNOMBREDOCTOR: TStringField;
    qrEntradaClinicaPUBLICARINTERNET: TIntegerField;
    qrEntradaClinicaCARNET: TStringField;
    qrEntradaClinicaPUBLICARINTERNETDOCTOR: TIntegerField;
    qrEntradaClinicaCUADREGLOBAL: TStringField;
    qrEntradaClinicaCUADREUSUARIO: TStringField;
    qrEntradaClinicaDESCAUTORIZADOPOR: TStringField;
    qrEntradaClinicaGASTOSVARIOS: TBCDField;
    qrEntradaClinicaNOAS400: TIntegerField;
    qrEntradaClinicaNOAXAPTA: TIntegerField;
    qrEntradaClinicaNOFACTURA: TIntegerField;
    qrEntradaClinicaFACTEXTERIOR: TIntegerField;
    qrEntradaClinicaHOLD: TIntegerField;
    qrEntradaClinicaREPMUESTRA: TIntegerField;
    qrEntradaClinicaENTRADAIDANT: TStringField;
    qrEntradaClinicaTIPOENTRADA: TStringField;
    qrEntradaClinicaFORMADEPAGO: TStringField;
    qrEntradaClinicaDESCUENTOCARD: TStringField;
    qrEntradaClinicaDESCUENTOTEXTO: TStringField;
    qrEntradaClinicaACUERDOPROPIO: TIntegerField;
    qrEntradaClinicaCLIENTEPADRE: TStringField;
    qrEntradaClinicaDESCUENTOPLANID: TStringField;
    qrEntradaClinicaFECHAREGISTRO: TDateTimeField;
    qrEntradaClinicaHORAREGISTRO: TStringField;
    qrEntradaClinicaTASA: TBCDField;
    qrEntradaClinicaESTATUS: TIntegerField;
    qrEntradaClinicaTIPOCLIENTEAS400: TIntegerField;
    qrEntradaClinicaCLASECREDITO: TStringField;
    qrEntradaClinicaCARNETNUMERO: TStringField;
    qrEntradaClinicaCLIENTEPADREAXAPTA: TStringField;
    qrEntradaClinicaPACIENTEIDAXAPTA: TStringField;
    qrEntradaClinicaCLIENTEIDAXAPTA: TStringField;
    qrEntradaClinicaDOCTORIDAXAPTA: TStringField;
    qrEntradaClinicaNCFTYPEID: TStringField;
    qrEntradaClinicaNCFID: TStringField;
    qrEntradaClinicaNCFNAME: TStringField;
    qrEntradaClinicaSEXO: TIntegerField;
    qrEntradaClinicaCUADRADO: TIntegerField;
    qrEntradaClinicaTRANSFERIDO: TIntegerField;
    qrEntradaClinicaSUCURSAL: TIntegerField;
    qrEntradaClinicaNUMEROINTERNET: TIntegerField;
    qrEntradaClinicaPUBLICARINTERNETCLIENTE: TIntegerField;
    qrEntradaClinicaCOBERTURAPRECONFIRMADA: TIntegerField;
    qrEntradaClinicaCOBERTURAMONTOPRECONFIRMADO: TBCDField;
    qrEntradaClinicaTRANSFERENCIA: TStringField;
    qrEntradaClinicaGRUPOPRECIO: TStringField;
    qrEntradaClinicaTIPODOCUMENTO: TIntegerField;
    qrEntradaClinicaGRUPODESCUENTOLINEA: TStringField;
    qrEntradaClinicaGRUPODESCUENTOTOTAL: TStringField;
    qrEntradaClinicaRESULTADOCLIENTE: TIntegerField;
    qrEntradaClinicaRESULTADODOCTOR: TIntegerField;
    qrEntradaClinicaRESULTADOPACIENTE: TIntegerField;
    qrEntradaClinicaDATAAREAID: TStringField;
    ppShape2: TppShape;
    ppLabel20: TppLabel;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLabel3: TppLabel;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppLabel6: TppLabel;
    ppShape1: TppShape;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppDBText11: TppDBText;
    ppLabel9: TppLabel;
    ppDBText12: TppDBText;
    ppLabel10: TppLabel;
    ppDBText13: TppDBText;
    ppLabel11: TppLabel;
    ppDBText15: TppDBText;
    ppDBText108: TppDBText;
    ppLabel93: TppLabel;
    ppLabel99: TppLabel;
    ppDBText110: TppDBText;
    ppLabel12: TppLabel;
    ppDBText16: TppDBText;
    ppLabel13: TppLabel;
    ppDBText17: TppDBText;
    ppLabel14: TppLabel;
    ppDBText18: TppDBText;
    ppLabel15: TppLabel;
    ppDBText19: TppDBText;
    ppLabel16: TppLabel;
    ppDBText20: TppDBText;
    ppDBText22: TppDBText;
    ppDBText61: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    r: TIntegerField;
    qrEntradaClinicaENTRADAID_POS: TStringField;
    qrEntradaClinicaMUESTRANO_POS: TStringField;
    qrEntradaClinicaTotalPendiente: TCurrencyField;
    qrEntradaClinicaESTATUS_CLINICA: TStringField;
    qrEntradaCabDetRepFROM_CLINICA: TIntegerField;
    qrEntradaCabDetRepFROM_CLINICA_1: TIntegerField;
    qrEntradaCabDetRepENTRADAID_POS: TStringField;
    qrEntradaCabDetRepMUESTRANO_POS: TStringField;
    qrEntradaPacienteConsFROM_CLINICA: TIntegerField;
    qrEntradaCabRepFROM_CLINICA: TIntegerField;
    qrEntradaDetRepCUADREGLOBAL: TStringField;
    qrEntradaDetRepCUADREUSUARIO: TStringField;
    qrEntradaDetRepEXTERIOR: TIntegerField;
    qrEntradaDetRepLDRDEPARTAMENTOID: TStringField;
    qrEntradaDetRepPRECIOCOMBO: TBCDField;
    qrEntradaDetRepFROM_CLINICA: TIntegerField;
    qrEntradaDetRepENTRADAID_POS: TStringField;
    qrEntradaDetRepMUESTRANO_POS: TStringField;
    qrEntradaPacienteDetalleFROM_CLINICA: TIntegerField;
    qrEntradaPacienteDetalleENTRADAID_POS: TStringField;
    qrEntradaPacienteDetalleMUESTRANO_POS: TStringField;
    ppImpCuadreCajaFinal: TppReport;
    ppTitleBand3: TppTitleBand;
    ppHeaderBand17: TppHeaderBand;
    ppLabel53: TppLabel;
    ppSystemVariable26: TppSystemVariable;
    ppSystemVariable27: TppSystemVariable;
    ppLabel54: TppLabel;
    ppLabel101: TppLabel;
    ppLabel254: TppLabel;
    ppLabel258: TppLabel;
    ppDBText114: TppDBText;
    ppLabel260: TppLabel;
    ppDBText229: TppDBText;
    ppLabel261: TppLabel;
    ppDBText230: TppDBText;
    ppLabel262: TppLabel;
    ppDBText231: TppDBText;
    ppLine31: TppLine;
    ppDBText232: TppDBText;
    ppLabel263: TppLabel;
    ppSystemVariable28: TppSystemVariable;
    ppDetailBand22: TppDetailBand;
    ppLabel264: TppLabel;
    ppLabel265: TppLabel;
    ppDBText233: TppDBText;
    ppDBText234: TppDBText;
    ppLabel266: TppLabel;
    ppLabel267: TppLabel;
    ppDBText235: TppDBText;
    ppDBText236: TppDBText;
    ppLabel268: TppLabel;
    ppLine32: TppLine;
    ppLabel269: TppLabel;
    ppLabel270: TppLabel;
    ppDBText237: TppDBText;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLabel271: TppLabel;
    ppLabel272: TppLabel;
    ppDBText238: TppDBText;
    ppDBText239: TppDBText;
    ppLabel273: TppLabel;
    ppLabel274: TppLabel;
    ppDBText240: TppDBText;
    ppDBText241: TppDBText;
    ppLabel275: TppLabel;
    ppLabel276: TppLabel;
    ppLabel277: TppLabel;
    ppDBText242: TppDBText;
    ppDBText243: TppDBText;
    ppLabel278: TppLabel;
    ppLabel279: TppLabel;
    ppDBText244: TppDBText;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLabel280: TppLabel;
    ppDBText245: TppDBText;
    ppDBText246: TppDBText;
    ppLabel281: TppLabel;
    ppLabel282: TppLabel;
    ppDBText247: TppDBText;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppLine39: TppLine;
    ppLabel283: TppLabel;
    ppDBText248: TppDBText;
    ppLine40: TppLine;
    ppLine41: TppLine;
    ppLabel284: TppLabel;
    ppDBText249: TppDBText;
    ppLine42: TppLine;
    ppLine43: TppLine;
    ppLine44: TppLine;
    ppLine45: TppLine;
    ppLabel285: TppLabel;
    ppLabel286: TppLabel;
    ppLine46: TppLine;
    ppLine47: TppLine;
    ppLabel287: TppLabel;
    ppLine48: TppLine;
    ppLine49: TppLine;
    ppLine50: TppLine;
    ppLine51: TppLine;
    ppLabel288: TppLabel;
    ppLabel289: TppLabel;
    ppSubReport6: TppSubReport;
    ppChildReport6: TppChildReport;
    ppTitleBand4: TppTitleBand;
    ppLabel290: TppLabel;
    ppShape10: TppShape;
    ppLabel291: TppLabel;
    ppLabel292: TppLabel;
    ppLabel293: TppLabel;
    ppLabel294: TppLabel;
    ppDetailBand23: TppDetailBand;
    ppDBText250: TppDBText;
    ppDBText251: TppDBText;
    ppDBText252: TppDBText;
    ppDBText253: TppDBText;
    ppSummaryBand8: TppSummaryBand;
    ppParameterList3: TppParameterList;
    ppLine2: TppLine;
    ppLine4: TppLine;
    ppDBText268: TppDBText;
    ppImpCuadreCajaSucursal: TppReport;
    ppTitleBand5: TppTitleBand;
    ppHeaderBand18: TppHeaderBand;
    ppLabel119: TppLabel;
    ppSystemVariable29: TppSystemVariable;
    ppSystemVariable30: TppSystemVariable;
    ppLabel123: TppLabel;
    ppLabel124: TppLabel;
    ppLabel128: TppLabel;
    ppDBText132: TppDBText;
    ppLabel129: TppLabel;
    ppDBText139: TppDBText;
    ppLabel132: TppLabel;
    ppDBText149: TppDBText;
    ppLabel135: TppLabel;
    ppDBText150: TppDBText;
    ppLine13: TppLine;
    ppDBText153: TppDBText;
    ppLabel151: TppLabel;
    ppSystemVariable31: TppSystemVariable;
    ppDBText156: TppDBText;
    ppDetailBand24: TppDetailBand;
    ppLabel159: TppLabel;
    ppLabel295: TppLabel;
    ppDBText254: TppDBText;
    ppDBText255: TppDBText;
    ppLabel296: TppLabel;
    ppLabel297: TppLabel;
    ppDBText256: TppDBText;
    ppDBText257: TppDBText;
    ppLabel299: TppLabel;
    ppLabel300: TppLabel;
    ppDBText258: TppDBText;
    ppDBText259: TppDBText;
    ppLabel301: TppLabel;
    ppLabel302: TppLabel;
    ppDBText260: TppDBText;
    ppDBText261: TppDBText;
    ppLabel303: TppLabel;
    ppLabel304: TppLabel;
    ppDBText262: TppDBText;
    ppLabel305: TppLabel;
    ppLabel306: TppLabel;
    ppDBText263: TppDBText;
    ppLine21: TppLine;
    ppLine23: TppLine;
    ppLine53: TppLine;
    ppLine54: TppLine;
    ppSubReport7: TppSubReport;
    ppChildReport7: TppChildReport;
    ppTitleBand6: TppTitleBand;
    ppLabel311: TppLabel;
    ppShape12: TppShape;
    ppLabel312: TppLabel;
    ppLabel313: TppLabel;
    ppLabel314: TppLabel;
    ppLabel315: TppLabel;
    ppDetailBand25: TppDetailBand;
    ppDBText265: TppDBText;
    ppDBText266: TppDBText;
    ppDBText267: TppDBText;
    ppDBText269: TppDBText;
    ppSummaryBand9: TppSummaryBand;
    ppLine59: TppLine;
    ppLine60: TppLine;
    ppParameterList4: TppParameterList;
    ppLine20: TppLine;
    ppLine25: TppLine;
    qrCorteSucursal: TADOQuery;
    dsCorteSucursal: TDataSource;
    qrCorteSucursalCorteId: TStringField;
    qrCorteSucursalUsuario: TStringField;
    qrCorteSucursalValor: TBCDField;
    qrCorteSucursalValorMST: TBCDField;
    qrCorteSucursalTotalEfectivo: TCurrencyField;
    qrCorteSucursalCardCredito: TCurrencyField;
    qrCorteSucursalCardDebito: TCurrencyField;
    qrCorteSucursalTotalCheque: TCurrencyField;
    qrCorteSucursalTotalDollares: TCurrencyField;
    qrCorteSucursalTotalOtros: TCurrencyField;
    qrCorteSucursalTotalTarjetas: TCurrencyField;
    qrCorteSucursalTotalNormal: TCurrencyField;
    qrCorteSucursalTotalFiltro: TCurrencyField;
    ppSubReport8: TppSubReport;
    ppChildReport8: TppChildReport;
    ppTitleBand7: TppTitleBand;
    ppLabel298: TppLabel;
    ppDetailBand26: TppDetailBand;
    ppSummaryBand10: TppSummaryBand;
    ppLabel307: TppLabel;
    ppLabel309: TppLabel;
    ppLabel310: TppLabel;
    ppLabel316: TppLabel;
    ppLabel317: TppLabel;
    ppLabel318: TppLabel;
    ppLabel319: TppLabel;
    ppCorteSucursal: TppDBPipeline;
    ppDBText264: TppDBText;
    ppDBText271: TppDBText;
    ppDBText272: TppDBText;
    ppDBText273: TppDBText;
    ppDBText274: TppDBText;
    ppDBText275: TppDBText;
    ppDBText276: TppDBText;
    ppDBCalc49: TppDBCalc;
    ppLabel308: TppLabel;
    ppDBCalc51: TppDBCalc;
    ppDBCalc52: TppDBCalc;
    ppDBCalc53: TppDBCalc;
    ppDBCalc54: TppDBCalc;
    ppDBCalc55: TppDBCalc;
    qrSucursalSINPRFILTER: TIntegerField;
    qrSucursalMONTO_PORC: TBCDField;
    qrSucursalMONTO_CANT: TBCDField;
    qrClientesSINPRFILTER: TIntegerField;
    qrGrupoClienteSINPRFILTERGROUP: TIntegerField;
    qrEntradaPacienteConsSINPRFILTER: TIntegerField;
    qrEntradaPacienteDetalleSINPRFILTER: TIntegerField;
    qrCobroDetalleSINPRFILTER: TIntegerField;
    qrCobroTempSINPRFILTER: TIntegerField;
    qrCobroTempSINPRFILTER_1: TIntegerField;
    qrEntradaCabDetRepSINPRFILTER: TIntegerField;
    qrEntradaCabDetRepSINPRFILTER_1: TIntegerField;
    qrEntradaClinicaSINPRFILTER: TIntegerField;
    qrEntradaDetRepSINPRFILTER: TIntegerField;
    qrEntradaCabRepSINPRFILTER: TIntegerField;
    ppCuadreUsuario2: TppReport;
    ppTitleBand8: TppTitleBand;
    ppHeaderBand19: TppHeaderBand;
    ppLabel320: TppLabel;
    ppSystemVariable32: TppSystemVariable;
    ppSystemVariable33: TppSystemVariable;
    ppLabel321: TppLabel;
    ppLabel322: TppLabel;
    ppLabel323: TppLabel;
    ppDBText270: TppDBText;
    ppLabel324: TppLabel;
    ppDBText277: TppDBText;
    ppLabel325: TppLabel;
    ppDBText278: TppDBText;
    ppLabel326: TppLabel;
    ppDBText279: TppDBText;
    ppLine26: TppLine;
    ppDBText280: TppDBText;
    ppLabel327: TppLabel;
    ppSystemVariable34: TppSystemVariable;
    ppDBText281: TppDBText;
    ppDetailBand27: TppDetailBand;
    ppLabel328: TppLabel;
    ppLabel329: TppLabel;
    ppDBText282: TppDBText;
    ppDBText283: TppDBText;
    ppLabel330: TppLabel;
    ppLabel331: TppLabel;
    ppDBText284: TppDBText;
    ppDBText285: TppDBText;
    ppLabel332: TppLabel;
    ppLine52: TppLine;
    ppLabel333: TppLabel;
    ppLabel334: TppLabel;
    ppDBText286: TppDBText;
    ppDBText287: TppDBText;
    ppLabel335: TppLabel;
    ppLabel336: TppLabel;
    ppDBText288: TppDBText;
    ppDBText289: TppDBText;
    ppLabel337: TppLabel;
    ppLabel338: TppLabel;
    ppDBText290: TppDBText;
    ppLabel339: TppLabel;
    ppLabel340: TppLabel;
    ppDBText291: TppDBText;
    ppLine55: TppLine;
    ppLine56: TppLine;
    ppLine57: TppLine;
    ppLabel341: TppLabel;
    ppDBText292: TppDBText;
    ppLine58: TppLine;
    ppLine61: TppLine;
    ppLine62: TppLine;
    ppLine63: TppLine;
    ppLabel342: TppLabel;
    ppLabel343: TppLabel;
    ppLine64: TppLine;
    ppLine65: TppLine;
    ppLine66: TppLine;
    ppLine67: TppLine;
    ppSubReport9: TppSubReport;
    ppChildReport9: TppChildReport;
    ppTitleBand9: TppTitleBand;
    ppLabel345: TppLabel;
    ppShape13: TppShape;
    ppLabel346: TppLabel;
    ppLabel347: TppLabel;
    ppLabel348: TppLabel;
    ppLabel349: TppLabel;
    ppDetailBand28: TppDetailBand;
    ppDBText293: TppDBText;
    ppDBText294: TppDBText;
    ppDBText295: TppDBText;
    ppDBText296: TppDBText;
    ppSummaryBand13: TppSummaryBand;
    ppLine68: TppLine;
    ppLine69: TppLine;
    ppParameterList5: TppParameterList;
    ppCuadreSucursal2: TppReport;
    ppTitleBand10: TppTitleBand;
    ppHeaderBand20: TppHeaderBand;
    ppLabel350: TppLabel;
    ppSystemVariable35: TppSystemVariable;
    ppSystemVariable36: TppSystemVariable;
    ppLabel351: TppLabel;
    ppLabel352: TppLabel;
    ppLabel353: TppLabel;
    ppDBText297: TppDBText;
    ppLabel354: TppLabel;
    ppDBText298: TppDBText;
    ppLabel355: TppLabel;
    ppDBText299: TppDBText;
    ppLabel356: TppLabel;
    ppDBText300: TppDBText;
    ppLine70: TppLine;
    ppDBText301: TppDBText;
    ppLabel357: TppLabel;
    ppSystemVariable37: TppSystemVariable;
    ppDBText302: TppDBText;
    ppDetailBand29: TppDetailBand;
    ppLabel358: TppLabel;
    ppLabel359: TppLabel;
    ppDBText303: TppDBText;
    ppDBText304: TppDBText;
    ppLabel360: TppLabel;
    ppLabel361: TppLabel;
    ppDBText305: TppDBText;
    ppDBText306: TppDBText;
    ppLabel362: TppLabel;
    ppLabel363: TppLabel;
    ppDBText307: TppDBText;
    ppDBText308: TppDBText;
    ppLabel364: TppLabel;
    ppLabel365: TppLabel;
    ppDBText309: TppDBText;
    ppDBText310: TppDBText;
    ppLabel366: TppLabel;
    ppLabel367: TppLabel;
    ppDBText311: TppDBText;
    ppLabel368: TppLabel;
    ppLabel369: TppLabel;
    ppDBText312: TppDBText;
    ppLine71: TppLine;
    ppLine72: TppLine;
    ppLine73: TppLine;
    ppLine74: TppLine;
    ppSubReport10: TppSubReport;
    ppChildReport10: TppChildReport;
    ppTitleBand11: TppTitleBand;
    ppLabel370: TppLabel;
    ppShape14: TppShape;
    ppLabel371: TppLabel;
    ppLabel372: TppLabel;
    ppLabel373: TppLabel;
    ppLabel374: TppLabel;
    ppDetailBand30: TppDetailBand;
    ppDBText313: TppDBText;
    ppDBText314: TppDBText;
    ppDBText315: TppDBText;
    ppDBText316: TppDBText;
    ppSummaryBand14: TppSummaryBand;
    ppLine75: TppLine;
    ppLine76: TppLine;
    ppLine77: TppLine;
    ppLine78: TppLine;
    ppSubReport11: TppSubReport;
    ppChildReport11: TppChildReport;
    ppTitleBand12: TppTitleBand;
    ppLabel375: TppLabel;
    ppLabel376: TppLabel;
    ppLabel377: TppLabel;
    ppLabel378: TppLabel;
    ppLabel380: TppLabel;
    ppLabel381: TppLabel;
    ppDetailBand31: TppDetailBand;
    ppDBText317: TppDBText;
    ppDBText318: TppDBText;
    ppDBText319: TppDBText;
    ppDBText320: TppDBText;
    ppDBText321: TppDBText;
    ppDBText322: TppDBText;
    ppDBText323: TppDBText;
    ppSummaryBand15: TppSummaryBand;
    ppDBCalc48: TppDBCalc;
    ppLabel383: TppLabel;
    ppDBCalc50: TppDBCalc;
    ppDBCalc56: TppDBCalc;
    ppDBCalc57: TppDBCalc;
    ppDBCalc58: TppDBCalc;
    ppDBCalc59: TppDBCalc;
    ppParameterList6: TppParameterList;
    ppLine79: TppLine;
    ppDBText324: TppDBText;
    ppLabel385: TppLabel;
    ppLabel386: TppLabel;
    ppDBText325: TppDBText;
    ppLine82: TppLine;
    LbDifPesos2: TppLabel;
    ppImpCuadreDepositoFiscal: TppReport;
    ppTitleBand13: TppTitleBand;
    ppHeaderBand21: TppHeaderBand;
    ppLabel344: TppLabel;
    ppSystemVariable38: TppSystemVariable;
    ppSystemVariable39: TppSystemVariable;
    ppLabel384: TppLabel;
    ppLabel387: TppLabel;
    ppLabel388: TppLabel;
    ppDBText326: TppDBText;
    ppLabel389: TppLabel;
    ppDBText327: TppDBText;
    ppLabel390: TppLabel;
    ppDBText328: TppDBText;
    ppLabel391: TppLabel;
    ppDBText329: TppDBText;
    ppLine80: TppLine;
    ppDBText330: TppDBText;
    ppLabel392: TppLabel;
    ppSystemVariable40: TppSystemVariable;
    ppDBText331: TppDBText;
    ppDetailBand32: TppDetailBand;
    ppParameterList7: TppParameterList;
    ppDBText347: TppDBText;
    ppLabel416: TppLabel;
    ppDBText348: TppDBText;
    qrParametroBanco_Cuenta_1: TStringField;
    qrParametroBanco_Nombre_1: TStringField;
    qrParametroBanco_Cuenta_2: TStringField;
    qrParametroBanco_Nombre_2: TStringField;
    ppLine81: TppLine;
    ppLine85: TppLine;
    ppLine88: TppLine;
    ppSubReport12: TppSubReport;
    ppChildReport12: TppChildReport;
    ppTitleBand14: TppTitleBand;
    ppLabel410: TppLabel;
    ppShape15: TppShape;
    ppLabel411: TppLabel;
    ppLabel412: TppLabel;
    ppLabel413: TppLabel;
    ppLabel414: TppLabel;
    ppDetailBand33: TppDetailBand;
    ppDBText343: TppDBText;
    ppDBText344: TppDBText;
    ppDBText345: TppDBText;
    ppDBText346: TppDBText;
    ppSummaryBand16: TppSummaryBand;
    ppSubReport13: TppSubReport;
    ppChildReport13: TppChildReport;
    ppTitleBand15: TppTitleBand;
    ppLabel395: TppLabel;
    ppLabel396: TppLabel;
    ppLabel397: TppLabel;
    ppLabel399: TppLabel;
    ppLabel400: TppLabel;
    ppLabel401: TppLabel;
    ppDetailBand34: TppDetailBand;
    ppSummaryBand17: TppSummaryBand;
    ppDBCalc60: TppDBCalc;
    ppLabel406: TppLabel;
    ppDBCalc61: TppDBCalc;
    ppDBCalc63: TppDBCalc;
    ppDBCalc65: TppDBCalc;
    qrCobroTotalTarjetas: TCurrencyField;
    ppDBText333: TppDBText;
    ppDBText334: TppDBText;
    ppLabel398: TppLabel;
    ppDBText335: TppDBText;
    ppDBText336: TppDBText;
    ppDBText337: TppDBText;
    ppDBText341: TppDBText;
    ppImpCuadreDepositoFiltro: TppReport;
    ppTitleBand16: TppTitleBand;
    ppHeaderBand22: TppHeaderBand;
    ppLabel402: TppLabel;
    ppSystemVariable41: TppSystemVariable;
    ppSystemVariable42: TppSystemVariable;
    ppLabel407: TppLabel;
    ppLabel408: TppLabel;
    ppLabel409: TppLabel;
    ppDBText338: TppDBText;
    ppLabel415: TppLabel;
    ppDBText342: TppDBText;
    ppLabel417: TppLabel;
    ppDBText349: TppDBText;
    ppLabel418: TppLabel;
    ppDBText350: TppDBText;
    ppLine83: TppLine;
    ppDBText351: TppDBText;
    ppLabel419: TppLabel;
    ppSystemVariable43: TppSystemVariable;
    ppDBText352: TppDBText;
    ppDBText353: TppDBText;
    ppLabel420: TppLabel;
    ppDBText354: TppDBText;
    ppDetailBand35: TppDetailBand;
    ppLine87: TppLine;
    ppLine90: TppLine;
    ppSubReport14: TppSubReport;
    ppChildReport14: TppChildReport;
    ppTitleBand17: TppTitleBand;
    ppLabel425: TppLabel;
    ppShape16: TppShape;
    ppLabel426: TppLabel;
    ppLabel427: TppLabel;
    ppLabel428: TppLabel;
    ppLabel429: TppLabel;
    ppDetailBand36: TppDetailBand;
    ppDBText357: TppDBText;
    ppDBText358: TppDBText;
    ppDBText359: TppDBText;
    ppDBText360: TppDBText;
    ppSummaryBand18: TppSummaryBand;
    ppParameterList8: TppParameterList;
    ppLine84: TppLine;
    ppLine86: TppLine;
    ppSubReport15: TppSubReport;
    ppChildReport15: TppChildReport;
    ppTitleBand18: TppTitleBand;
    ppLabel393: TppLabel;
    ppLabel394: TppLabel;
    ppLabel403: TppLabel;
    ppLabel404: TppLabel;
    ppLabel421: TppLabel;
    ppLabel422: TppLabel;
    ppDetailBand37: TppDetailBand;
    ppDBText332: TppDBText;
    ppDBText339: TppDBText;
    ppDBText340: TppDBText;
    ppDBText355: TppDBText;
    ppDBText356: TppDBText;
    ppSummaryBand19: TppSummaryBand;
    ppDBCalc62: TppDBCalc;
    ppLabel423: TppLabel;
    ppDBCalc64: TppDBCalc;
    ppDBCalc66: TppDBCalc;
    qrCorteDeposito: TADOQuery;
    dsCorteDeposito: TDataSource;
    qrCorteDepositoCorteId: TStringField;
    qrCorteDepositoUsuario: TStringField;
    qrCorteDepositoValor: TBCDField;
    qrCorteDepositoValorMST: TBCDField;
    qrCorteDepositoTotalEfectivo: TCurrencyField;
    qrCorteDepositoCardCredito: TCurrencyField;
    qrCorteDepositoCardDebito: TCurrencyField;
    qrCorteDepositoTotalCheque: TCurrencyField;
    qrCorteDepositoTotalDollares: TCurrencyField;
    qrCorteDepositoTotalOtros: TCurrencyField;
    qrCorteDepositoTotalTarjetas: TCurrencyField;
    qrCorteDepositoTotalNormal: TCurrencyField;
    qrCorteDepositoTotalFiltro: TCurrencyField;
    ppCorteDeposito: TppDBPipeline;
    ppDepositoSucursal: TppReport;
    ppTitleBand19: TppTitleBand;
    ppHeaderBand23: TppHeaderBand;
    ppLabel405: TppLabel;
    ppSystemVariable44: TppSystemVariable;
    ppSystemVariable45: TppSystemVariable;
    ppLabel424: TppLabel;
    ppLabel430: TppLabel;
    ppLine91: TppLine;
    ppDBText365: TppDBText;
    ppLabel435: TppLabel;
    ppSystemVariable46: TppSystemVariable;
    ppDetailBand38: TppDetailBand;
    ppParameterList9: TppParameterList;
    ppSummaryBand20: TppSummaryBand;
    ppLabel431: TppLabel;
    ppLabel432: TppLabel;
    ppLabel433: TppLabel;
    ppLabel436: TppLabel;
    ppLabel437: TppLabel;
    ppDBText361: TppDBText;
    ppDBText362: TppDBText;
    ppDBText363: TppDBText;
    ppDBText364: TppDBText;
    ppDBText366: TppDBText;
    ppDBText367: TppDBText;
    ppDBText368: TppDBText;
    ppDBText369: TppDBText;
    ppDBText370: TppDBText;
    ppDBCalc73: TppDBCalc;
    ppLabel434: TppLabel;
    ppDBCalc74: TppDBCalc;
    ppDBCalc75: TppDBCalc;
    ppDBCalc76: TppDBCalc;
    ppDBCalc77: TppDBCalc;
    ppDBCalc78: TppDBCalc;
    qrCorteDepositoSucursalId: TStringField;
    ppDBText371: TppDBText;
    ppDBText372: TppDBText;
    ppSubReport5: TppSubReport;
    ppChildReport5: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppLabel136: TppLabel;
    ppShape11: TppShape;
    ppLabel139: TppLabel;
    ppLabel140: TppLabel;
    ppLabel142: TppLabel;
    ppLabel143: TppLabel;
    ppDetailBand15: TppDetailBand;
    ppDBText142: TppDBText;
    ppDBText143: TppDBText;
    ppDBText144: TppDBText;
    ppDBText146: TppDBText;
    ppSummaryBand11: TppSummaryBand;
    ppLabel379: TppLabel;
    ppDBText373: TppDBText;
    ppLabel382: TppLabel;
    ppDBText374: TppDBText;
    qrSegurosCODIGOIDAS400: TStringField;
    qrSegurosGRUPOPRECIO: TStringField;
    qrSegurosFORMAPAGO: TStringField;
    qrSegurosGRUPODESCUENTOLINEA: TStringField;
    qrSegurosGRUPODESCUENTOTOTAL: TStringField;
    qrSegurosSINPRFILTER: TIntegerField;
    qrMaterialesDATAAREAID: TStringField;
    qrUnidadesDATAAREAID: TStringField;
    qrSucursalBanco_Cuenta_1: TStringField;
    qrSucursalBanco_Nombre_1: TStringField;
    qrSucursalBanco_Cuenta_2: TStringField;
    qrSucursalBanco_Nombre_2: TStringField;
    LbDifPesosOld: TppLabel;
    ppImpCuadreCajaUsuario: TppReport;
    ppTitleBand21: TppTitleBand;
    ppHeaderBand24: TppHeaderBand;
    ppLabel438: TppLabel;
    ppSystemVariable47: TppSystemVariable;
    ppSystemVariable48: TppSystemVariable;
    ppLabel439: TppLabel;
    ppLabel440: TppLabel;
    ppLabel441: TppLabel;
    ppDBText375: TppDBText;
    ppLabel442: TppLabel;
    ppLabel443: TppLabel;
    ppDBText376: TppDBText;
    ppLabel444: TppLabel;
    ppDBText377: TppDBText;
    ppLine92: TppLine;
    ppDBText378: TppDBText;
    ppLabel445: TppLabel;
    ppSystemVariable49: TppSystemVariable;
    ppDBText379: TppDBText;
    ppDBText382: TppDBText;
    ppDetailCuadredeCajaUsuario: TppDetailBand;
    ppParameterList10: TppParameterList;
    ppLabel447: TppLabel;
    ppLabel448: TppLabel;
    ppDBText383: TppDBText;
    ppDBText384: TppDBText;
    ppLabel449: TppLabel;
    ppLabel450: TppLabel;
    ppDBText385: TppDBText;
    ppDBText386: TppDBText;
    ppLabel451: TppLabel;
    ppLine93: TppLine;
    ppLabel460: TppLabel;
    ppLabel461: TppLabel;
    ppDBText393: TppDBText;
    ppDBText394: TppDBText;
    ppLabel462: TppLabel;
    ppLabel463: TppLabel;
    ppDBText395: TppDBText;
    ppDBText396: TppDBText;
    ppLabel464: TppLabel;
    ppLabel465: TppLabel;
    ppDBText397: TppDBText;
    ppLabel466: TppLabel;
    ppLabel467: TppLabel;
    ppDBText398: TppDBText;
    ppLine94: TppLine;
    ppLine95: TppLine;
    ppLine96: TppLine;
    ppLabel468: TppLabel;
    ppDBText399: TppDBText;
    ppLine97: TppLine;
    ppLine98: TppLine;
    ppLine99: TppLine;
    ppLine100: TppLine;
    ppLabel469: TppLabel;
    ppLine101: TppLine;
    ppLine102: TppLine;
    ppLine103: TppLine;
    ppLine104: TppLine;
    ppLine105: TppLine;
    ppSubReport16: TppSubReport;
    ppChildReport16: TppChildReport;
    ppTitleBand20: TppTitleBand;
    ppLabel452: TppLabel;
    ppShape17: TppShape;
    ppLabel453: TppLabel;
    ppLabel454: TppLabel;
    ppLabel455: TppLabel;
    ppLabel456: TppLabel;
    ppDetailBand39: TppDetailBand;
    ppDBText387: TppDBText;
    ppDBText388: TppDBText;
    ppDBText389: TppDBText;
    ppDBText390: TppDBText;
    ppSummaryBand21: TppSummaryBand;
    qrCorteCajaDetRepDiferenciaPesos: TCurrencyField;
    qrCorteCajaDetRepDiferenciaDollar: TCurrencyField;
    qrCorteCajaDetRepLbDiferenciaPesos: TStringField;
    qrCorteCajaDetRepLbDiferenciaDollar: TStringField;
    ppDBText391: TppDBText;
    ppDBText392: TppDBText;
    qrParametroGrupoSoc: TStringField;
    qrParametroClientePlanSocial: TStringField;
    qrCorteCajaDetRepCobros_Today: TBCDField;
    qrCorteCajaDetRepCobros_Anter: TBCDField;
    qrCobroFechaDia: TIntegerField;
    ppGroup6: TppGroup;
    ppGroupHeaderBand6: TppGroupHeaderBand;
    ppGroupFooterBand6: TppGroupFooterBand;
    ppDBCalc67: TppDBCalc;
    ppDBCalc68: TppDBCalc;
    ppDBCalc69: TppDBCalc;
    ppDBCalc70: TppDBCalc;
    ppDBCalc71: TppDBCalc;
    ppDBCalc72: TppDBCalc;
    ppDBCalc79: TppDBCalc;
    ppDBCalc80: TppDBCalc;
    ppLbDesglosado: TppLabel;
    ppGroup7: TppGroup;
    ppGroupHeaderBand7: TppGroupHeaderBand;
    ppGroupFooterBand7: TppGroupFooterBand;
    ppDBCalc81: TppDBCalc;
    ppLbCobrosFiscal: TppLabel;
    ppDBCalc82: TppDBCalc;
    ppDBCalc83: TppDBCalc;
    ppDBCalc84: TppDBCalc;
    ppGroup8: TppGroup;
    ppGroupHeaderBand8: TppGroupHeaderBand;
    ppGroupFooterBand8: TppGroupFooterBand;
    ppDBCalc85: TppDBCalc;
    ppDBCalc86: TppDBCalc;
    ppDBCalc88: TppDBCalc;
    ppLbCobrosFiltro: TppLabel;
    qrCorteCajaDetRepPendientexPagar: TCurrencyField;
    ppImpCuadreUsuarioUno: TppReport;
    ppTitleBand22: TppTitleBand;
    ppHeaderBand25: TppHeaderBand;
    ppLabel446: TppLabel;
    ppSystemVariable50: TppSystemVariable;
    ppSystemVariable51: TppSystemVariable;
    ppLabel457: TppLabel;
    ppLabel458: TppLabel;
    ppLabel459: TppLabel;
    ppDBText380: TppDBText;
    ppLabel470: TppLabel;
    ppLabel471: TppLabel;
    ppDBText381: TppDBText;
    ppLabel472: TppLabel;
    ppDBText400: TppDBText;
    ppLine106: TppLine;
    ppDBText401: TppDBText;
    ppLabel473: TppLabel;
    ppSystemVariable52: TppSystemVariable;
    ppDBText402: TppDBText;
    ppDBText403: TppDBText;
    ppDetailBand40: TppDetailBand;
    ppLabel474: TppLabel;
    ppLabel475: TppLabel;
    ppDBText404: TppDBText;
    ppDBText405: TppDBText;
    ppLabel476: TppLabel;
    ppLabel477: TppLabel;
    ppDBText406: TppDBText;
    ppDBText407: TppDBText;
    ppLabel478: TppLabel;
    ppLine107: TppLine;
    ppLabel479: TppLabel;
    ppLabel480: TppLabel;
    ppDBText408: TppDBText;
    ppDBText409: TppDBText;
    ppLabel481: TppLabel;
    ppLabel482: TppLabel;
    ppDBText410: TppDBText;
    ppDBText411: TppDBText;
    ppLabel483: TppLabel;
    ppLabel484: TppLabel;
    ppDBText412: TppDBText;
    ppLabel485: TppLabel;
    ppLabel486: TppLabel;
    ppDBText413: TppDBText;
    ppLine108: TppLine;
    ppLine109: TppLine;
    ppLine110: TppLine;
    ppLabel487: TppLabel;
    ppDBText414: TppDBText;
    ppLine111: TppLine;
    ppLine112: TppLine;
    ppLine113: TppLine;
    ppLine114: TppLine;
    ppLabel488: TppLabel;
    ppLine115: TppLine;
    ppLine116: TppLine;
    ppLine117: TppLine;
    ppLine118: TppLine;
    ppLine119: TppLine;
    ppSubReport17: TppSubReport;
    ppChildReport17: TppChildReport;
    ppTitleBand23: TppTitleBand;
    ppLabel489: TppLabel;
    ppShape18: TppShape;
    ppLabel490: TppLabel;
    ppLabel491: TppLabel;
    ppLabel492: TppLabel;
    ppLabel493: TppLabel;
    ppDetailBand41: TppDetailBand;
    ppDBText415: TppDBText;
    ppDBText416: TppDBText;
    ppDBText417: TppDBText;
    ppDBText418: TppDBText;
    ppSummaryBand22: TppSummaryBand;
    ppDBText419: TppDBText;
    ppDBText420: TppDBText;
    ppParameterList11: TppParameterList;
    ppImpCuadreUsuarioDos: TppReport;
    ppTitleBand24: TppTitleBand;
    ppHeaderBand26: TppHeaderBand;
    ppLabel494: TppLabel;
    ppSystemVariable53: TppSystemVariable;
    ppSystemVariable54: TppSystemVariable;
    ppLabel495: TppLabel;
    ppLabel496: TppLabel;
    ppLabel497: TppLabel;
    ppDBText421: TppDBText;
    ppLabel498: TppLabel;
    ppLabel499: TppLabel;
    ppDBText422: TppDBText;
    ppLabel500: TppLabel;
    ppDBText423: TppDBText;
    ppLine120: TppLine;
    ppDBText424: TppDBText;
    ppLabel501: TppLabel;
    ppSystemVariable55: TppSystemVariable;
    ppDBText425: TppDBText;
    ppDBText426: TppDBText;
    ppDetailBand42: TppDetailBand;
    ppLabel502: TppLabel;
    ppLabel503: TppLabel;
    ppDBText427: TppDBText;
    ppDBText428: TppDBText;
    ppLabel504: TppLabel;
    ppLabel505: TppLabel;
    ppDBText429: TppDBText;
    ppDBText430: TppDBText;
    ppLabel506: TppLabel;
    ppLine121: TppLine;
    ppLabel507: TppLabel;
    ppLabel508: TppLabel;
    ppDBText431: TppDBText;
    ppDBText432: TppDBText;
    ppLabel509: TppLabel;
    ppLabel510: TppLabel;
    ppDBText433: TppDBText;
    ppDBText434: TppDBText;
    ppLabel511: TppLabel;
    ppLabel512: TppLabel;
    ppDBText435: TppDBText;
    ppLabel513: TppLabel;
    ppLabel514: TppLabel;
    ppDBText436: TppDBText;
    ppLine122: TppLine;
    ppLine123: TppLine;
    ppLine124: TppLine;
    ppLabel515: TppLabel;
    ppDBText437: TppDBText;
    ppLine125: TppLine;
    ppLine126: TppLine;
    ppLine127: TppLine;
    ppLine128: TppLine;
    ppLabel516: TppLabel;
    ppLine129: TppLine;
    ppLine130: TppLine;
    ppLine131: TppLine;
    ppLine132: TppLine;
    ppLine133: TppLine;
    ppSubReport18: TppSubReport;
    ppChildReport18: TppChildReport;
    ppTitleBand25: TppTitleBand;
    ppLabel517: TppLabel;
    ppShape19: TppShape;
    ppLabel518: TppLabel;
    ppLabel519: TppLabel;
    ppLabel520: TppLabel;
    ppLabel521: TppLabel;
    ppDetailBand43: TppDetailBand;
    ppDBText438: TppDBText;
    ppDBText439: TppDBText;
    ppDBText440: TppDBText;
    ppDBText441: TppDBText;
    ppSummaryBand23: TppSummaryBand;
    ppDBText442: TppDBText;
    ppDBText443: TppDBText;
    ppParameterList12: TppParameterList;
    ppCuadreSucursalUno: TppReport;
    ppTitleBand26: TppTitleBand;
    ppHeaderBand27: TppHeaderBand;
    ppLabel522: TppLabel;
    ppSystemVariable56: TppSystemVariable;
    ppSystemVariable57: TppSystemVariable;
    ppLabel523: TppLabel;
    ppLabel524: TppLabel;
    ppLabel525: TppLabel;
    ppDBText444: TppDBText;
    ppLabel526: TppLabel;
    ppDBText445: TppDBText;
    ppLabel527: TppLabel;
    ppDBText446: TppDBText;
    ppLabel528: TppLabel;
    ppDBText447: TppDBText;
    ppLine134: TppLine;
    ppDBText448: TppDBText;
    ppLabel529: TppLabel;
    ppSystemVariable58: TppSystemVariable;
    ppDBText449: TppDBText;
    ppDetailBand44: TppDetailBand;
    ppLabel530: TppLabel;
    ppLabel531: TppLabel;
    ppDBText450: TppDBText;
    ppDBText451: TppDBText;
    ppLabel532: TppLabel;
    ppLabel533: TppLabel;
    ppDBText452: TppDBText;
    ppDBText453: TppDBText;
    ppLabel534: TppLabel;
    ppLabel535: TppLabel;
    ppDBText454: TppDBText;
    ppDBText455: TppDBText;
    ppLabel536: TppLabel;
    ppLabel537: TppLabel;
    ppDBText456: TppDBText;
    ppDBText457: TppDBText;
    ppLabel538: TppLabel;
    ppLabel539: TppLabel;
    ppDBText458: TppDBText;
    ppLabel540: TppLabel;
    ppLabel541: TppLabel;
    ppDBText459: TppDBText;
    ppLine135: TppLine;
    ppLine136: TppLine;
    ppLine137: TppLine;
    ppLine138: TppLine;
    ppSubReport19: TppSubReport;
    ppChildReport19: TppChildReport;
    ppTitleBand27: TppTitleBand;
    ppLabel542: TppLabel;
    ppShape20: TppShape;
    ppLabel543: TppLabel;
    ppLabel544: TppLabel;
    ppLabel545: TppLabel;
    ppLabel546: TppLabel;
    ppDetailBand45: TppDetailBand;
    ppDBText460: TppDBText;
    ppDBText461: TppDBText;
    ppDBText462: TppDBText;
    ppDBText463: TppDBText;
    ppSummaryBand24: TppSummaryBand;
    ppLine139: TppLine;
    ppLine140: TppLine;
    ppLine141: TppLine;
    ppLine142: TppLine;
    ppSubReport20: TppSubReport;
    ppChildReport20: TppChildReport;
    ppTitleBand28: TppTitleBand;
    ppLabel547: TppLabel;
    ppLabel548: TppLabel;
    ppLabel549: TppLabel;
    ppLabel550: TppLabel;
    ppLabel551: TppLabel;
    ppLabel552: TppLabel;
    ppDBText464: TppDBText;
    ppDetailBand46: TppDetailBand;
    ppDBText466: TppDBText;
    ppDBText467: TppDBText;
    ppDBText468: TppDBText;
    ppDBText469: TppDBText;
    ppDBText470: TppDBText;
    ppDBText471: TppDBText;
    ppSummaryBand25: TppSummaryBand;
    ppDBCalc87: TppDBCalc;
    ppLabel553: TppLabel;
    ppDBCalc89: TppDBCalc;
    ppDBCalc90: TppDBCalc;
    ppDBCalc91: TppDBCalc;
    ppDBCalc92: TppDBCalc;
    ppParameterList13: TppParameterList;
    ppCuadreSucursalDos: TppReport;
    ppTitleBand29: TppTitleBand;
    ppHeaderBand28: TppHeaderBand;
    ppLabel554: TppLabel;
    ppSystemVariable59: TppSystemVariable;
    ppSystemVariable60: TppSystemVariable;
    ppLabel555: TppLabel;
    ppLabel556: TppLabel;
    ppLabel557: TppLabel;
    ppDBText473: TppDBText;
    ppLabel558: TppLabel;
    ppDBText474: TppDBText;
    ppLabel559: TppLabel;
    ppDBText475: TppDBText;
    ppLabel560: TppLabel;
    ppDBText476: TppDBText;
    ppLine143: TppLine;
    ppDBText477: TppDBText;
    ppLabel561: TppLabel;
    ppSystemVariable61: TppSystemVariable;
    ppDBText478: TppDBText;
    ppDetailBand47: TppDetailBand;
    ppLabel562: TppLabel;
    ppLabel563: TppLabel;
    ppDBText479: TppDBText;
    ppDBText480: TppDBText;
    ppLabel564: TppLabel;
    ppLabel565: TppLabel;
    ppDBText481: TppDBText;
    ppDBText482: TppDBText;
    ppLabel566: TppLabel;
    ppLabel567: TppLabel;
    ppDBText483: TppDBText;
    ppDBText484: TppDBText;
    ppLabel568: TppLabel;
    ppLabel569: TppLabel;
    ppDBText485: TppDBText;
    ppDBText486: TppDBText;
    ppLabel570: TppLabel;
    ppLabel571: TppLabel;
    ppDBText487: TppDBText;
    ppLabel572: TppLabel;
    ppLabel573: TppLabel;
    ppDBText488: TppDBText;
    ppLine144: TppLine;
    ppLine145: TppLine;
    ppLine146: TppLine;
    ppLine147: TppLine;
    ppSubReport21: TppSubReport;
    ppChildReport21: TppChildReport;
    ppTitleBand30: TppTitleBand;
    ppLabel574: TppLabel;
    ppShape21: TppShape;
    ppLabel575: TppLabel;
    ppLabel576: TppLabel;
    ppLabel577: TppLabel;
    ppLabel578: TppLabel;
    ppDetailBand48: TppDetailBand;
    ppDBText489: TppDBText;
    ppDBText490: TppDBText;
    ppDBText491: TppDBText;
    ppDBText492: TppDBText;
    ppSummaryBand26: TppSummaryBand;
    ppLine148: TppLine;
    ppLine149: TppLine;
    ppLine150: TppLine;
    ppLine151: TppLine;
    ppSubReport22: TppSubReport;
    ppChildReport22: TppChildReport;
    ppTitleBand31: TppTitleBand;
    ppLabel579: TppLabel;
    ppLabel580: TppLabel;
    ppLabel581: TppLabel;
    ppLabel582: TppLabel;
    ppLabel583: TppLabel;
    ppLabel584: TppLabel;
    ppDBText493: TppDBText;
    ppDetailBand49: TppDetailBand;
    ppDBText495: TppDBText;
    ppDBText496: TppDBText;
    ppDBText497: TppDBText;
    ppDBText498: TppDBText;
    ppDBText499: TppDBText;
    ppDBText500: TppDBText;
    ppSummaryBand27: TppSummaryBand;
    ppDBCalc94: TppDBCalc;
    ppLabel585: TppLabel;
    ppDBCalc95: TppDBCalc;
    ppDBCalc96: TppDBCalc;
    ppDBCalc97: TppDBCalc;
    ppDBCalc98: TppDBCalc;
    ppParameterList14: TppParameterList;
    qrCorteCajaDetRepPendientexPagarUno: TCurrencyField;
    qrCorteCajaDetRepPendientexPagarDos: TCurrencyField;
    qrCorteCajaDetRepDiferenciaPesosUno: TCurrencyField;
    qrCorteCajaDetRepDiferenciaPesosDos: TCurrencyField;
    qrCorteCajaDetRepDiferenciaDollarUno: TCurrencyField;
    qrCorteCajaDetRepDiferenciaDollarDos: TCurrencyField;
    qrCorteCajaDetRepLbDiferenciaPesosUno: TStringField;
    qrCorteCajaDetRepLbDiferenciaDollarUno: TStringField;
    qrCorteCajaDetRepLbDiferenciaPesosDos: TStringField;
    qrCorteCajaDetRepLbDiferenciaDollarDos: TStringField;
    qrCorteCajaDetRepTotal_Bruto_Uno: TBCDField;
    qrCorteCajaDetRepTotal_Bruto_Dos: TBCDField;
    qrCorteCajaDetRepTotal_Cobertura_Uno: TBCDField;
    qrCorteCajaDetRepTotal_Cobertura_Dos: TBCDField;
    qrCorteCajaDetRepTotal_Descuento_Uno: TBCDField;
    qrCorteCajaDetRepTotal_Descuento_Dos: TBCDField;
    qrCorteCajaDetRepTotal_Gastos_Uno: TBCDField;
    qrCorteCajaDetRepTotal_Gastos_Dos: TBCDField;
    qrCorteCajaDetRepTotal_Pagado_Uno: TBCDField;
    qrCorteCajaDetRepTotal_Pagado_Dos: TBCDField;
    qrCorteCajaDetRepTotal_Pendiente_Uno: TBCDField;
    qrCorteCajaDetRepTotal_Pendiente_Dos: TBCDField;
    qrCorteCajaDetRepTotal_Credito_Uno: TBCDField;
    qrCorteCajaDetRepTotal_Credito_Dos: TBCDField;
    qrCorteCajaDetRepTotal_Contado_Uno: TBCDField;
    qrCorteCajaDetRepTotal_Contado_Dos: TBCDField;
    qrCorteCajaDetRepTotal_Venta_Uno: TBCDField;
    qrCorteCajaDetRepTotal_Venta_Dos: TBCDField;
    qrCorteCajaDetRepTotal_PagoRD_Uno: TBCDField;
    qrCorteCajaDetRepTotal_PagoRD_Dos: TBCDField;
    qrCorteCajaDetRepTotal_PagoUS_Uno: TBCDField;
    qrCorteCajaDetRepTotal_PagoUS_Dos: TBCDField;
    qrCorteCajaDetRepTotal_VtaRD_Uno: TBCDField;
    qrCorteCajaDetRepTotal_VtaRD_Dos: TBCDField;
    qrCorteCajaDetRepTotal_VtaUS_Uno: TBCDField;
    qrCorteCajaDetRepTotal_VtaUS_Dos: TBCDField;
    qrCorteCajaDetRepDepo_Filtro_Uno: TBCDField;
    qrCorteCajaDetRepDepo_Filtro_Dos: TBCDField;
    qrCorteCajaDetRepDepo_Normal_Uno: TBCDField;
    qrCorteCajaDetRepDepo_Normal_Dos: TBCDField;
    qrCorteCajaDetRepTotal_ContRD_Uno: TBCDField;
    qrCorteCajaDetRepTotal_ContRD_Dos: TBCDField;
    qrCorteCajaDetRepTotal_ContUS_Uno: TBCDField;
    qrCorteCajaDetRepTotal_ContUS_Dos: TBCDField;
    qrCorteCajaDetRepTotal_Normal_Uno: TBCDField;
    qrCorteCajaDetRepTotal_Normal_Dos: TBCDField;
    qrCorteCajaDetRepTotal_Filtro_Uno: TBCDField;
    qrCorteCajaDetRepTotal_Filtro_Dos: TBCDField;
    qrCorteCajaDetRepEfectivo_Reportado_Uno: TBCDField;
    qrCorteCajaDetRepEfectivo_Reportado_Dos: TBCDField;
    qrCorteCajaDetRepDollares_Reportado_Uno: TBCDField;
    qrCorteCajaDetRepDollares_Reportado_Dos: TBCDField;
    qrCorteCajaDetRepCobros_Today_Uno: TBCDField;
    qrCorteCajaDetRepCobros_Today_Dos: TBCDField;
    qrCorteCajaDetRepCobros_Anter_Uno: TBCDField;
    qrCorteCajaDetRepCobros_Anter_Dos: TBCDField;
    ppDBText502: TppDBText;
    ppLabel586: TppLabel;
    ppDBText503: TppDBText;
    ppDBText504: TppDBText;
    ppLabel587: TppLabel;
    ppDBText505: TppDBText;
    ppDBText506: TppDBText;
    ppLabel588: TppLabel;
    ppDBText507: TppDBText;
    ppDBText508: TppDBText;
    ppLabel589: TppLabel;
    ppDBText509: TppDBText;
    qrCorteCajaDetRepSINPRFILTER: TIntegerField;
    qrCobroDetalleOrden: TIntegerField;
    qrCobroDetalleORDEN_1: TIntegerField;
    qrCobroTempSecuencia: TAutoIncField;
    qrCobroSecuencia: TAutoIncField;
    qrCobroSINPRFILTER: TIntegerField;
    qrCobroFROM_CLINICA: TIntegerField;
    qrSucursalRuta_Foto: TStringField;
    LMDOneInstance1: TLMDOneInstance;
    qrPacientesSINPRFILTER: TIntegerField;
    icFormaEntregaPruebaDoctor: TcxEditRepositoryImageComboBoxItem;
    ppDBText465: TppDBText;
    Imagenes: TLMDBitmapList;
    LMDSysInfo1: TLMDSysInfo;
    ppCuadreSucursalGlobal: TppReport;
    ppTitleBand32: TppTitleBand;
    ppLabel590: TppLabel;
    ppSystemVariable62: TppSystemVariable;
    ppSystemVariable63: TppSystemVariable;
    ppLabel591: TppLabel;
    ppLabel592: TppLabel;
    ppLabel597: TppLabel;
    ppSystemVariable64: TppSystemVariable;
    ppDBText513: TppDBText;
    ppLine152: TppLine;
    ppLabel617: TppLabel;
    ppLabel619: TppLabel;
    ppLabel618: TppLabel;
    ppLabel620: TppLabel;
    ppLabel621: TppLabel;
    ppLabel593: TppLabel;
    ppLabel594: TppLabel;
    ppLbFecha1: TppLabel;
    ppDBText472: TppDBText;
    ppDetailBand50: TppDetailBand;
    ppDBText529: TppDBText;
    ppDBText530: TppDBText;
    ppDBText531: TppDBText;
    ppDBText532: TppDBText;
    ppDBText533: TppDBText;
    ppDBText534: TppDBText;
    ppDBText14: TppDBText;
    ppSummaryBand28: TppSummaryBand;
    ppDBCalc93: TppDBCalc;
    ppLbFecha2: TppLabel;
    ppDBCalc99: TppDBCalc;
    ppDBCalc100: TppDBCalc;
    ppDBCalc101: TppDBCalc;
    ppDBCalc102: TppDBCalc;
    ppDBCalc103: TppDBCalc;
    ppDBText494: TppDBText;
    ppParameterList15: TppParameterList;
    qrCorteGlobal: TADOQuery;
    qrCorteGlobalSucursalId: TStringField;
    qrCorteGlobalFecha: TDateTimeField;
    qrCorteGlobalValor: TBCDField;
    qrCorteGlobalValorMST: TBCDField;
    qrCorteGlobalTotalEfectivo: TCurrencyField;
    qrCorteGlobalCardCredito: TCurrencyField;
    qrCorteGlobalCardDebito: TCurrencyField;
    qrCorteGlobalTotalCheque: TCurrencyField;
    qrCorteGlobalTotalDollares: TCurrencyField;
    qrCorteGlobalTotalOtros: TCurrencyField;
    qrCorteGlobalTotalTarjetas: TCurrencyField;
    qrCorteGlobalTotalNormal: TCurrencyField;
    qrCorteGlobalTotalFiltro: TCurrencyField;
    qrCorteGlobalSucursal: TStringField;
    ppCorteGlobal: TppDBPipeline;
    dsCorteGlobal: TDataSource;
    qrParametroGrupoExt: TStringField;
    qrSucursalStPlanSocial: TStringField;
    qrPruebasCOMENTARIO_REQ: TIntegerField;
    qrPruebasCOD_SEC_PRUEBA: TIntegerField;
    ppCuadreSucursalGlobal1: TppReport;
    ppTitleBand33: TppTitleBand;
    ppLabel612: TppLabel;
    ppSystemVariable65: TppSystemVariable;
    ppSystemVariable66: TppSystemVariable;
    ppLabel613: TppLabel;
    ppLabel614: TppLabel;
    ppLabel615: TppLabel;
    ppSystemVariable67: TppSystemVariable;
    ppDBText539: TppDBText;
    ppLine153: TppLine;
    ppLabel616: TppLabel;
    ppLabel622: TppLabel;
    ppLabel624: TppLabel;
    ppLabel625: TppLabel;
    ppLabel628: TppLabel;
    ppDBText540: TppDBText;
    ppDetailBand52: TppDetailBand;
    ppDBText541: TppDBText;
    ppDBText542: TppDBText;
    ppDBText544: TppDBText;
    ppDBText545: TppDBText;
    ppSummaryBand30: TppSummaryBand;
    ppDBCalc104: TppDBCalc;
    ppLabel629: TppLabel;
    ppDBCalc106: TppDBCalc;
    ppDBCalc107: TppDBCalc;
    ppDBText548: TppDBText;
    ppParameterList16: TppParameterList;
    ppCuadreSucursalGlobal2: TppReport;
    ppTitleBand34: TppTitleBand;
    ppLabel630: TppLabel;
    ppSystemVariable68: TppSystemVariable;
    ppSystemVariable69: TppSystemVariable;
    ppLabel631: TppLabel;
    ppLabel632: TppLabel;
    ppLabel633: TppLabel;
    ppSystemVariable70: TppSystemVariable;
    ppDBText549: TppDBText;
    ppLine154: TppLine;
    ppLabel634: TppLabel;
    ppLabel636: TppLabel;
    ppLabel639: TppLabel;
    ppLabel641: TppLabel;
    ppDBText550: TppDBText;
    ppDetailBand53: TppDetailBand;
    ppDBText551: TppDBText;
    ppDBText553: TppDBText;
    ppDBText556: TppDBText;
    ppSummaryBand31: TppSummaryBand;
    ppLabel642: TppLabel;
    ppDBCalc111: TppDBCalc;
    ppDBCalc114: TppDBCalc;
    ppDBText558: TppDBText;
    ppParameterList17: TppParameterList;
    ppReciboEnMoneda: TppReport;
    ppHeaderBand30: TppHeaderBand;
    ppDBText543: TppDBText;
    ppDBText546: TppDBText;
    ppLabel627: TppLabel;
    ppDBText547: TppDBText;
    ppDBText552: TppDBText;
    ppLabel635: TppLabel;
    ppLabel637: TppLabel;
    ppDBText554: TppDBText;
    ppDBText555: TppDBText;
    ppLabel638: TppLabel;
    ppShape23: TppShape;
    ppLabel640: TppLabel;
    ppLabel643: TppLabel;
    ppDBText557: TppDBText;
    ppLabel644: TppLabel;
    ppDBText559: TppDBText;
    ppLabel645: TppLabel;
    ppDBText560: TppDBText;
    ppLabel646: TppLabel;
    ppDBText561: TppDBText;
    ppDBText562: TppDBText;
    ppLabel647: TppLabel;
    ppLabel648: TppLabel;
    ppDBText563: TppDBText;
    ppColumnHeaderBand6: TppColumnHeaderBand;
    ppDetailBand54: TppDetailBand;
    ppDBText564: TppDBText;
    ppColumnFooterBand6: TppColumnFooterBand;
    ppSummaryBand32: TppSummaryBand;
    ppLabel649: TppLabel;
    ppDBText565: TppDBText;
    ppLabel650: TppLabel;
    ppDBText566: TppDBText;
    ppLabel651: TppLabel;
    ppDBText567: TppDBText;
    ppLabel652: TppLabel;
    ppDBText568: TppDBText;
    ppLabel653: TppLabel;
    ppDBText569: TppDBText;
    ppSubReport23: TppSubReport;
    ppChildReport23: TppChildReport;
    ppDetailBand55: TppDetailBand;
    ppDBText570: TppDBText;
    ppDBText571: TppDBText;
    ppDBText572: TppDBText;
    ppDBText573: TppDBText;
    ppDBText574: TppDBText;
    ppDBText575: TppDBText;
    ppDBText576: TppDBText;
    vwSucursal: TcxGridDBTableView;
    vwSucursalSucursalID: TcxGridDBColumn;
    vwSucursalNombre: TcxGridDBColumn;
    elcSucursal: TcxEditRepositoryExtLookupComboBoxItem;
    ppParameterList18: TppParameterList;
    ppCobroTicket: TppDBPipeline;
    ppCobroTicketRep: TppReport;
    qryCobroTicket: TADOQuery;
    dsQryCobroRep: TDataSource;
    ppHeaderBand29: TppHeaderBand;
    ppDetailBand51: TppDetailBand;
    ppFooterBand6: TppFooterBand;
    ppImpReciboTicket: TppReport;
    ppHeaderBand31: TppHeaderBand;
    ppDBText501: TppDBText;
    ppDBText511: TppDBText;
    ppDBText512: TppDBText;
    ppLabel596: TppLabel;
    ppLabel598: TppLabel;
    ppDBText514: TppDBText;
    ppDBText515: TppDBText;
    ppLabel599: TppLabel;
    ppShape22: TppShape;
    ppLabel600: TppLabel;
    ppLabel601: TppLabel;
    ppDBText516: TppDBText;
    ppLabel602: TppLabel;
    ppDBText517: TppDBText;
    ppLabel603: TppLabel;
    ppDBText518: TppDBText;
    ppLabel604: TppLabel;
    ppDBText519: TppDBText;
    ppDBText520: TppDBText;
    ppLabel605: TppLabel;
    ppLabel606: TppLabel;
    ppDBText521: TppDBText;
    ppColumnHeaderBand5: TppColumnHeaderBand;
    ppDetailBand56: TppDetailBand;
    ppDBText522: TppDBText;
    ppColumnFooterBand5: TppColumnFooterBand;
    ppSummaryBand29: TppSummaryBand;
    ppLabel607: TppLabel;
    ppDBText523: TppDBText;
    ppLabel608: TppLabel;
    ppDBText524: TppDBText;
    ppLabel609: TppLabel;
    ppDBText525: TppDBText;
    ppLabel610: TppLabel;
    ppDBText526: TppDBText;
    ppLabel611: TppLabel;
    ppDBText527: TppDBText;
    ppDBText536: TppDBText;
    ppDBText537: TppDBText;
    ppDBText538: TppDBText;
    ppDBText577: TppDBText;
    ppDBText578: TppDBText;
    ppParameterList19: TppParameterList;
    qryCobroTicketNombrePaciente: TStringField;
    qryCobroTicketClienteNombre: TStringField;
    qryCobroTicketReciboNo: TStringField;
    qryCobroTicketEntradaId: TStringField;
    qryCobroTicketMuestrano: TStringField;
    qryCobroTicketFecha: TDateTimeField;
    qryCobroTicketHora: TStringField;
    qryCobroTicketUsuarioID: TStringField;
    qryCobroTicketMonedaId: TStringField;
    qryCobroTicketTituloEmpresa: TStringField;
    qryCobroTicketNombre: TStringField;
    qryCobroTicketTelefono: TStringField;
    qryCobroTicketDescripcion: TStringField;
    qryCobroTicketPendienteFactura: TBCDField;
    qryCobroTicketTotalCobrado: TBCDField;
    qryCobroTicketPendienteCobro: TBCDField;
    qryCobroTicketTotalFactura: TBCDField;
    qryCobroTicketTotalPagado: TBCDField;
    qryCobroTicketCoberturaSeguro: TBCDField;
    qryCobroTicketFactExterior: TIntegerField;
    qryCobroTicketTotalPruebaUsa: TBCDField;
    qryCobroTicketTotalEnvioUsa: TBCDField;
    qryCobroTicketComentario: TStringField;
    ppImpNCDEV: TppReport;
    ppHeaderBand32: TppHeaderBand;
    ppDBText579: TppDBText;
    ppDBText580: TppDBText;
    ppLabel97: TppLabel;
    ppDBText581: TppDBText;
    ppLabel654: TppLabel;
    ppLabel655: TppLabel;
    ppDBText582: TppDBText;
    ppDBText583: TppDBText;
    ppDBText584: TppDBText;
    ppLabel656: TppLabel;
    ppLabel657: TppLabel;
    ppDBText585: TppDBText;
    ppLabel658: TppLabel;
    ppDBText586: TppDBText;
    ppLabel659: TppLabel;
    ppDBText587: TppDBText;
    ppLabel660: TppLabel;
    ppDBText588: TppDBText;
    ppDBText589: TppDBText;
    ppLabel661: TppLabel;
    ppDBText590: TppDBText;
    ppLabel662: TppLabel;
    ppLabel663: TppLabel;
    ppDBText591: TppDBText;
    ppShape7: TppShape;
    ppLabel664: TppLabel;
    ppDetailBand11: TppDetailBand;
    ppDBText592: TppDBText;
    ppSummaryBand33: TppSummaryBand;
    ppLabel665: TppLabel;
    ppDBText593: TppDBText;
    ppLabel666: TppLabel;
    ppDBText594: TppDBText;
    ppLabel667: TppLabel;
    ppDBText595: TppDBText;
    ppLabel668: TppLabel;
    ppDBText596: TppDBText;
    ppLabel669: TppLabel;
    ppDBText597: TppDBText;
    qryCobroTicketConcepto: TStringField;
    ppImpND: TppReport;
    ppHeaderBand33: TppHeaderBand;
    ppDBText598: TppDBText;
    ppDBText599: TppDBText;
    ppLabel670: TppLabel;
    ppDBText600: TppDBText;
    ppLabel671: TppLabel;
    ppLabel672: TppLabel;
    ppDBText601: TppDBText;
    ppDBText602: TppDBText;
    ppDBText603: TppDBText;
    ppLabel673: TppLabel;
    ppLabel674: TppLabel;
    ppDBText604: TppDBText;
    ppLabel675: TppLabel;
    ppDBText605: TppDBText;
    ppLabel676: TppLabel;
    ppDBText606: TppDBText;
    ppLabel677: TppLabel;
    ppDBText607: TppDBText;
    ppDBText608: TppDBText;
    ppLabel678: TppLabel;
    ppDBText609: TppDBText;
    ppLabel679: TppLabel;
    ppLabel680: TppLabel;
    ppDBText610: TppDBText;
    ppShape24: TppShape;
    ppLabel681: TppLabel;
    ppDetailBand57: TppDetailBand;
    ppDBText611: TppDBText;
    ppSummaryBand34: TppSummaryBand;
    ppLabel682: TppLabel;
    ppDBText612: TppDBText;
    ppLabel683: TppLabel;
    ppDBText613: TppDBText;
    ppLabel684: TppLabel;
    ppDBText614: TppDBText;
    ppLabel685: TppLabel;
    ppDBText615: TppDBText;
    ppLabel686: TppLabel;
    ppDBText616: TppDBText;
    qrParametroDescuento_Empleado: TBCDField;
    ppLabel687: TppLabel;
    qryCobroTicketAutorizacion: TStringField;
    ppDBText618: TppDBText;
    ppLine155: TppLine;
    ppLabel688: TppLabel;
    ppDBMemo1: TppDBMemo;
    qryCobroTicketNotaNCredito: TStringField;
    qrUsuarioSucursal: TADOQuery;
    dsUsuarioSucursal: TDataSource;
    qrUsuarioSucursalUserID: TStringField;
    qrUsuarioSucursalNombre: TStringField;
    vwUsuarioSucursal: TcxGridDBTableView;
    elcUsuarioSucursal: TcxEditRepositoryExtLookupComboBoxItem;
    qrUsuarioSucursalSucursalID: TStringField;
    qrUsuarioSucursalClave: TStringField;
    vwUsuarioSucursalUserID: TcxGridDBColumn;
    vwUsuarioSucursalNombre: TcxGridDBColumn;
    vwUsuarioSucursalSucursalID: TcxGridDBColumn;
    vwUsuarioSucursalClave: TcxGridDBColumn;
    ppLabel689: TppLabel;
    ppDBText617: TppDBText;
    qryCobroTicketFecha_Autoriza: TStringField;
    ppImpNDCK: TppReport;
    ppHeaderBand34: TppHeaderBand;
    ppDBText619: TppDBText;
    ppDBText620: TppDBText;
    ppLabel690: TppLabel;
    ppDBText621: TppDBText;
    ppLabel691: TppLabel;
    ppLabel692: TppLabel;
    ppDBText622: TppDBText;
    ppDBText623: TppDBText;
    ppDBText624: TppDBText;
    ppLabel693: TppLabel;
    ppLabel694: TppLabel;
    ppDBText625: TppDBText;
    ppLabel695: TppLabel;
    ppDBText626: TppDBText;
    ppLabel696: TppLabel;
    ppDBText627: TppDBText;
    ppLabel697: TppLabel;
    ppDBText628: TppDBText;
    ppDBText629: TppDBText;
    ppLabel698: TppLabel;
    ppDBText630: TppDBText;
    ppLabel699: TppLabel;
    ppLabel700: TppLabel;
    ppDBText631: TppDBText;
    ppShape25: TppShape;
    ppLabel701: TppLabel;
    ppDetailBand58: TppDetailBand;
    ppDBText633: TppDBText;
    ppSummaryBand35: TppSummaryBand;
    ppLabel703: TppLabel;
    ppDBText634: TppDBText;
    ppLabel704: TppLabel;
    ppDBText635: TppDBText;
    ppLabel705: TppLabel;
    ppDBText636: TppDBText;
    ppLabel706: TppLabel;
    ppDBText637: TppDBText;
    ppDBText638: TppDBText;
    ppLine156: TppLine;
    ppLabel708: TppLabel;
    ppDBMemo2: TppDBMemo;
    ppLabel709: TppLabel;
    ppSubReport4: TppSubReport;
    ppChildReport4: TppChildReport;
    ppDetailBand59: TppDetailBand;
    ppDBText632: TppDBText;
    ppDBText639: TppDBText;
    qryCobroTicketCobroID: TStringField;
    CobroID: TppParameter;
    ppSubReport24: TppSubReport;
    ppChildReport24: TppChildReport;
    ppDetailBand60: TppDetailBand;
    ppDBText109: TppDBText;
    ppDBText111: TppDBText;
    ppLabel702: TppLabel;
    ppLabel707: TppLabel;
    qrEntradaClinicaFECHANACIMIENTO: TDateTimeField;
    qrEntradaClinicaCOD_CASO: TStringField;
    ppDBText528: TppDBText;
    ppLabel710: TppLabel;
    ppDBText535: TppDBText;
    ppLabel711: TppLabel;
    ppLabel712: TppLabel;
    ppDBText640: TppDBText;
    ppDBCalc105: TppDBCalc;
    qrCorteGlobalTotalCredito: TCurrencyField;
    ppLabel713: TppLabel;
    ppDBText641: TppDBText;
    ppDBCalc108: TppDBCalc;
    qrCorteGlobalTotalIngreso: TCurrencyField;
    ppDBText642: TppDBText;
    ppDBCalc109: TppDBCalc;
    qrCorteGlobalTotalCDollares: TCurrencyField;
    ppLine157: TppLine;
    ppSummaryBand36: TppSummaryBand;
    ppSummaryBand37: TppSummaryBand;
    Sp_ActPagos: TADOStoredProc;
    ppDBText644: TppDBText;
    ppDBText645: TppDBText;
    ppDBText646: TppDBText;
    sp_ActNota: TADOStoredProc;
    Foto: TADOTable;
    Qry_Foto: TADOQuery;
    sp_ActRegNC: TADOStoredProc;
    qrEntradaPacienteConsENTRADAID_REF: TStringField;
    sp_ActRegEP: TADOStoredProc;
    sp_ActNotaNC: TADOStoredProc;
    ppLabel623: TppLabel;
    ppDBText647: TppDBText;
    qrParametroNotaNCreditoBalance: TMemoField;
    qrParametroCod_ISO: TStringField;
    qrParametroNCF: TStringField;
    sp_ActCuadreUsuario: TADOStoredProc;
    sp_ActCuadreSucursal: TADOStoredProc;
    qrDiagnostico: TADOQuery;
    dsDiagnostico: TDataSource;
    qrDiagnosticoCod_Diag: TStringField;
    qrDiagnosticoDescripcion: TStringField;
    elcDiagnostico: TcxEditRepositoryExtLookupComboBoxItem;
    vwDiagnostico: TcxGridDBTableView;
    vwDiagnosticoCod_Diag: TcxGridDBColumn;
    vwDiagnosticoDescripcion: TcxGridDBColumn;
    qrSucursalCodUserUniv: TStringField;
    sp_ActNCF: TADOStoredProc;
    qrNCF: TADOQuery;
    dsNCF: TDataSource;
    qrNCFNCFTYPEID: TStringField;
    qrNCFMuestrano: TStringField;
    qrNCFEntradaID: TStringField;
    qrNCFNCFID: TStringField;
    qrNCFNCFNAME: TStringField;
    qrNCFRNC: TStringField;
    ppNCF: TppDBPipeline;
    qrNCFFECHA: TDateTimeField;
    qrDocumento: TADOQuery;
    dsDocumento: TDataSource;
    qrDocumentoTipoDocID: TSmallintField;
    qrDocumentoDescripcion: TStringField;
    qrDocumentoMascara: TStringField;
    qrDocumentoEstatus: TStringField;
    vwDocumento: TcxGridDBTableView;
    vwDocumentoTipoDocID: TcxGridDBColumn;
    vwDocumentoDescripcion: TcxGridDBColumn;
    vwDocumentoMascara: TcxGridDBColumn;
    elcDocumento: TcxEditRepositoryExtLookupComboBoxItem;
    qrUsuario: TADOQuery;
    dsUsuario: TDataSource;
    vwUsuario: TcxGridDBTableView;
    elcUsuario: TcxEditRepositoryExtLookupComboBoxItem;
    qrUsuarioUserID: TStringField;
    vwUsuarioUserID: TcxGridDBColumn;
    qrUsuarioM: TADOQuery;
    StringField1: TStringField;
    dsUsuarioM: TDataSource;
    vwUsuarioM: TcxGridDBTableView;
    vwUsuarioMUserID: TcxGridDBColumn;
    elcUsuarioM: TcxEditRepositoryExtLookupComboBoxItem;
    Qry_FotoMUN_CED: TStringField;
    Qry_FotoSEQ_CED: TStringField;
    Qry_FotoVER_CED: TStringField;
    Qry_FotoIMAGEN: TBlobField;
    qrSucursalStImpLabelLab: TStringField;
    qrSucursalRECID: TLargeintField;
    qrSucursalLDRCLIENTEID: TStringField;
    qrPacientesCOD_PROV_REF: TStringField;
    qrPacientesRECID: TLargeintField;
    qrPruebasSEXO: TIntegerField;
    qrPruebasAYUNA: TBooleanField;
    qrPruebasRECID: TLargeintField;
    qrFlebotomistasRECID: TLargeintField;
    qrMaterialesRECID: TLargeintField;
    qrEntradaCabRepENTRADAID_REF: TStringField;
    qrEntradaCabRepFECHANACIMIENTO: TDateTimeField;
    qrEntradaCabRepCOD_CASO: TStringField;
    qrEntradaCabRepSTNOTAC: TStringField;
    qrEntradaCabRepUSRNOTAC: TStringField;
    qrEntradaCabRepCOD_DIAG: TStringField;
    qrEntradaCabRepRECID: TLargeintField;
    qrProyectoDataAreaID: TStringField;
    qrClientesRECID: TLargeintField;
    qrClientesTipo: TStringField;
    qrEntradaDetRepRECID: TLargeintField;
    qrDoctorRECID: TLargeintField;
    qrDiasProcesamientoRECID: TLargeintField;
    qrGrupoClienteRECID: TLargeintField;
    qrGrupoPruebaRECID: TLargeintField;
    qrCobroRecId: TLargeintField;
    qrCobroENTRADAID_REF: TStringField;
    qrCobroSINPRFILTER_1: TIntegerField;
    qrCobroFECHANACIMIENTO: TDateTimeField;
    qrCobroCOD_CASO: TStringField;
    qrCobroSTNOTAC: TStringField;
    qrCobroUSRNOTAC: TStringField;
    qrCobroCOD_DIAG: TStringField;
    qrCobroRECID_1: TLargeintField;
    qrEntradaClinicaRECID: TLargeintField;
    qrParametroSecuenciaPaciente: TLargeintField;
    qrParametroSecuenciaDoctor: TLargeintField;
    qrEntradaPacienteConsRECID: TLargeintField;
    qrCobroDetalleRecId: TLargeintField;
    qrCobroDetalleRECID_1: TLargeintField;
    qrCobroDetalleRefRecid: TLargeintField;
    qrCobrorefRecid: TLargeintField;
    qrParametroServidor_AS400: TStringField;
    qrSegurosCOD_PROV_REF: TStringField;
    qrSegurosRECID: TLargeintField;
    qrEntradaPacienteDetalleREFRECID: TLargeintField;
    qrEntradaPacienteDetalleRECID: TLargeintField;
    qrEntradaPacienteDetalleNCR_ESTATUS: TBooleanField;
    qrEntradaDetRepREFRECID: TLargeintField;
    qrEntradaDetRepREFRECID_POS: TLargeintField;
    qrEntradaDetRepNCR_ESTATUS: TBooleanField;
    qrDepartamentosRECID: TLargeintField;
    qrUnidadesRECID: TLargeintField;
    qrCobroTemprefRecid: TLargeintField;
    qrCobroTempRecId: TLargeintField;
    qrCobroTempCOD_PROV_REF: TStringField;
    qrCobroTempRECID_1: TLargeintField;
    qrMuestrasRECID: TLargeintField;
    qrEntradaCabDetRepENTRADAID_REF: TStringField;
    qrEntradaCabDetRepFECHANACIMIENTO: TDateTimeField;
    qrEntradaCabDetRepCOD_CASO: TStringField;
    qrEntradaCabDetRepSTNOTAC: TStringField;
    qrEntradaCabDetRepUSRNOTAC: TStringField;
    qrEntradaCabDetRepCOD_DIAG: TStringField;
    qrEntradaCabDetRepRECID: TLargeintField;
    qrEntradaCabDetRepREFRECID: TLargeintField;
    qrEntradaCabDetRepREFRECID_POS: TLargeintField;
    qrEntradaCabDetRepRECID_1: TLargeintField;
    qrEntradaCabDetRepNCR_ESTATUS: TBooleanField;
    qrEntradaClinicaREFRECID_POS: TLargeintField;
    qrEntradaPacienteDetalleREFRECID_POS: TLargeintField;
    qrParametroGrupoOtro: TStringField;
    qrSucursalGrupoTarifaSuc: TWordField;
    qrSucursalFuera_Linea: TBooleanField;
    qrSucursalFeriado: TBooleanField;
    qrSucursalStImpFactLab: TBooleanField;
    elcDocumentoSeguro: TcxEditRepositoryExtLookupComboBoxItem;
    vwDocumentoSeguro: TcxGridDBTableView;
    qrDocumentoSeguro: TADOQuery;
    dsDocumentoSeguro: TDataSource;
    vwDocumentoSeguroDescripcion: TcxGridDBColumn;
    elcNacionalidad: TcxEditRepositoryExtLookupComboBoxItem;
    vwNacionalidad: TcxGridDBTableView;
    qrNacionalidad: TADOQuery;
    dsNacionalidad: TDataSource;
    qrNacionalidadCOD_NACION: TIntegerField;
    qrNacionalidadDESCRIPCION: TStringField;
    qrNacionalidadNOMBREPAIS: TStringField;
    qrNacionalidadACCESOINTERNACIONAL: TStringField;
    vwNacionalidadCOD_NACION: TcxGridDBColumn;
    vwNacionalidadDESCRIPCION: TcxGridDBColumn;
    vwNacionalidadNOMBREPAIS: TcxGridDBColumn;
    vwNacionalidadACCESOINTERNACIONAL: TcxGridDBColumn;
    qrParametroSecuenciaFleb: TLargeintField;
    qrEmpleado: TADOQuery;
    dsEmpleado: TDataSource;
    vwEmpleado: TcxGridDBTableView;
    vwEmpleadoEMPLID: TcxGridDBColumn;
    vwEmpleadoNAME: TcxGridDBColumn;
    elcEmpleado: TcxEditRepositoryExtLookupComboBoxItem;
    ppImpLabel: TppReport;
    ppLabel: TppDBPipeline;
    QryLabel: TADOQuery;
    dsLabel: TDataSource;
    QryLabelMuestrano: TStringField;
    QryLabelLabel: TStringField;
    QryLabelDepartamento: TStringField;
    QryLabelNombrePaciente: TStringField;
    QryLabelDescripcionLabel2: TStringField;
    QryLabelSecuencia: TStringField;
    ppDetailBand61: TppDetailBand;
    ppDBText648: TppDBText;
    ppDBText649: TppDBText;
    ppDBText650: TppDBText;
    ppDBText651: TppDBText;
    ppDBText652: TppDBText;
    ppDBText653: TppDBText;
    ppDBText654: TppDBText;
    ppDBBarCode1: TppDBBarCode;
    QryLabelDescripcionLabel: TStringField;
    sp_Act: TADOStoredProc;
    qrPacientesNUMPRINT: TWordField;
    qrPacientesCOD_NACION: TIntegerField;
    qrPacientesTIPO_DOCUMENTO: TIntegerField;
    qrClientesNUMPRINT: TWordField;
    qrClientesCOD_NACION: TIntegerField;
    qrClientesTIPO_DOCUMENTO: TIntegerField;
    ApplDb: TABSDatabase;
    sp_ActPerfilGenetico: TADOStoredProc;
    qrSucursalGrupoPrecioPriv: TWordField;
    ppLabel716: TppLabel;
    ppLabel717: TppLabel;
    ppLabel595: TppLabel;
    RP_Recibos_Pesos: TRAWPrinter;
    RP_Recibos_Dolar: TRAWPrinter;
    qryCobroTicketRefrecid: TLargeintField;
    qryCobroTicketRNC: TStringField;
    qryCobroTicketSecuencia: TIntegerField;
    qryCobroTicketSubTituloEmpresa: TStringField;
    qryCobroTicketOrigen: TStringField;
    Sp_ActPagos_NV: TADOStoredProc;
    qryCobroTicketdevuelta: TBCDField;
    qrCliente: TADOQuery;
    dsCliente: TDataSource;
    vwCliente: TcxGridDBTableView;
    elcCliente: TcxEditRepositoryExtLookupComboBoxItem;
    qrClienteClienteid: TStringField;
    qrClienteNombre_Cliente: TStringField;
    qrClienteGrupo_Cliente: TStringField;
    vwClienteClienteid: TcxGridDBColumn;
    vwClienteNombre_Cliente: TcxGridDBColumn;
    vwClienteGrupo_Cliente: TcxGridDBColumn;
    ActPreFacturaSap: TADOStoredProc;
    DBSAP: TADOConnection;
    elcBanco: TcxEditRepositoryExtLookupComboBoxItem;
    vwBanco: TcxGridDBTableView;
    qryBanco: TADOQuery;
    qryBancoBankCode: TWideStringField;
    qryBancoBankName: TWideStringField;
    dsBanco: TDataSource;
    vwBancoBankCode: TcxGridDBColumn;
    vwBancoBankName: TcxGridDBColumn;
    ActPagoDetalle: TADOStoredProc;
    ActCuadreSap: TADOStoredProc;
    qrParametroNota_AutorizacionX: TStringField;
    qrCobroTotalTpago: TBCDField;
    qrCorteGlobalTotalTPago: TBCDField;
    qrCorteSucursalTotalTPago: TCurrencyField;
    qrCorteDepositoTotalTPago: TCurrencyField;
    elcGrupoClienteFac: TcxEditRepositoryExtLookupComboBoxItem;
    qrGrupoClienteFact: TADOQuery;
    dsGrupoClienteFact: TDataSource;
    vwGrupoClienteFact: TcxGridDBTableView;
    vwGrupoClienteFactGRUPOCLIENTE: TcxGridDBColumn;
    vwGrupoClienteFactDESCRIPCION: TcxGridDBColumn;
    sp_ActCargaVPosSap: TADOStoredProc;
    ActCuadreSapMensual: TADOStoredProc;
    sp_ActCargaNCPosSap: TADOStoredProc;
    ActNotaCreditoSap: TADOStoredProc;
    vwGrupoClienteAcu: TcxGridDBTableView;
    qrGrupoCteAc: TADOQuery;
    dsGrupoCteAc: TDataSource;
    qrGrupoCteAcGROUPID: TWideStringField;
    qrGrupoCteAcNAME: TWideStringField;
    qrGrupoCteAcINCLTAX: TIntegerField;
    qrGrupoCteAcDATAAREAID: TWideStringField;
    qrGrupoCteAcRECVERSION: TIntegerField;
    qrGrupoCteAcRECID: TLargeintField;
    elcGrupoClienteAcu: TcxEditRepositoryExtLookupComboBoxItem;
    vwGrupoClienteAcuGROUPID: TcxGridDBColumn;
    vwGrupoClienteAcuNAME: TcxGridDBColumn;
    vwGrupoClienteAcuRECID: TcxGridDBColumn;
    qrGrupoClienteArs: TADOQuery;
    dsGrupoClienteArs: TDataSource;
    qrGrupoClienteArsCodigoID: TStringField;
    qrGrupoClienteArsDescripcion: TStringField;
    qrGrupoClienteArsEstatus: TStringField;
    vwGrupoClienteArs: TcxGridDBTableView;
    vwGrupoClienteArsCodigoID: TcxGridDBColumn;
    vwGrupoClienteArsDescripcion: TcxGridDBColumn;
    vwGrupoClienteArsEstatus: TcxGridDBColumn;
    elcGrupoClienteArs: TcxEditRepositoryExtLookupComboBoxItem;
    qrEmpleadoEMPLID: TStringField;
    qrEmpleadoNAME: TStringField;
    ppImpCuadreUsuarioTres: TppReport;
    ppTitleBand35: TppTitleBand;
    ppHeaderBand35: TppHeaderBand;
    ppLabel626: TppLabel;
    ppSystemVariable71: TppSystemVariable;
    ppSystemVariable72: TppSystemVariable;
    ppLabel714: TppLabel;
    ppLabel715: TppLabel;
    ppLabel718: TppLabel;
    ppDBText124: TppDBText;
    ppLabel719: TppLabel;
    ppLabel720: TppLabel;
    ppDBText510: TppDBText;
    ppLabel721: TppLabel;
    ppDBText643: TppDBText;
    ppLine89: TppLine;
    ppDBText655: TppDBText;
    ppLabel722: TppLabel;
    ppSystemVariable73: TppSystemVariable;
    ppDBText656: TppDBText;
    ppDBText657: TppDBText;
    ppDBText658: TppDBText;
    ppLabel723: TppLabel;
    ppDBText659: TppDBText;
    ppDetailBand62: TppDetailBand;
    ppLabel724: TppLabel;
    ppLabel725: TppLabel;
    ppDBText660: TppDBText;
    ppDBText661: TppDBText;
    ppLabel726: TppLabel;
    ppLabel727: TppLabel;
    ppDBText662: TppDBText;
    ppDBText663: TppDBText;
    ppLabel728: TppLabel;
    ppLine158: TppLine;
    ppLabel729: TppLabel;
    ppLabel730: TppLabel;
    ppDBText664: TppDBText;
    ppDBText665: TppDBText;
    ppLabel731: TppLabel;
    ppLabel732: TppLabel;
    ppDBText666: TppDBText;
    ppDBText667: TppDBText;
    ppLabel733: TppLabel;
    ppLabel734: TppLabel;
    ppDBText668: TppDBText;
    ppLabel735: TppLabel;
    ppLabel736: TppLabel;
    ppDBText669: TppDBText;
    ppLine159: TppLine;
    ppLine160: TppLine;
    ppLine161: TppLine;
    ppLabel737: TppLabel;
    ppDBText670: TppDBText;
    ppLine162: TppLine;
    ppLine163: TppLine;
    ppLine164: TppLine;
    ppLine165: TppLine;
    ppLabel738: TppLabel;
    ppLine166: TppLine;
    ppLine167: TppLine;
    ppLine168: TppLine;
    ppLine169: TppLine;
    ppLine170: TppLine;
    ppSubReport25: TppSubReport;
    ppChildReport25: TppChildReport;
    ppTitleBand36: TppTitleBand;
    ppLabel739: TppLabel;
    ppShape26: TppShape;
    ppLabel740: TppLabel;
    ppLabel741: TppLabel;
    ppLabel742: TppLabel;
    ppLabel743: TppLabel;
    ppDetailBand63: TppDetailBand;
    ppDBText671: TppDBText;
    ppDBText672: TppDBText;
    ppDBText673: TppDBText;
    ppDBText674: TppDBText;
    ppSummaryBand38: TppSummaryBand;
    ppDBText675: TppDBText;
    ppDBText676: TppDBText;
    ppParameterList20: TppParameterList;
    qrCorteCajaDetRepTotal_PagoRD_Tres: TBCDField;
    qrCorteCajaDetRepDepo_Filtro2: TBCDField;
    qrCorteCajaDetRepDepo_Filtro2_Uno: TBCDField;
    qrCorteCajaDetRepDepo_Filtro2_Dos: TBCDField;
    qrCorteCajaDetRepCobros_Today_Tres: TBCDField;
    qrCorteCajaDetRepCobros_Anter_Tres: TBCDField;
    qrCorteCajaDetRepTotal_Filtro2: TBCDField;
    qrCorteCajaDetRepTotal_Filtro_Tres: TBCDField;
    qrCorteCajaDetRepTotal_Bruto_Tres: TBCDField;
    qrCorteCajaDetRepTotal_Cobertura_Tres: TBCDField;
    qrCorteCajaDetRepTotal_Descuento_Tres: TBCDField;
    qrCorteCajaDetRepTotal_Gastos_Tres: TBCDField;
    qrCorteCajaDetRepTotal_Pendiente_Tres: TBCDField;
    qrCorteCajaDetRepTotal_Credito_Tres: TBCDField;
    qrCorteCajaDetRepTotal_Contado_Tres: TBCDField;
    qrCorteCajaDetRepTotal_Venta_Tres: TBCDField;
    qrCorteCajaDetRepTotal_VtaRD_Tres: TBCDField;
    qrCorteCajaDetRepTotal_Normal_Tres: TBCDField;
    qrSucursalBankCode: TStringField;
    qrSucursalBankCode1: TStringField;
    qrSucursalBanco_Cuenta_3: TStringField;
    qrSucursalBanco_Nombre_3: TStringField;
    qrSucursalMonto_Porc_1: TBCDField;
    qrSucursalSinprFilter_1: TIntegerField;
    qrCorteCajaDetRepPendientexPagarTres: TCurrencyField;
    ppImpCuadreDepositoFiltroDos: TppReport;
    ppTitleBand37: TppTitleBand;
    ppHeaderBand36: TppHeaderBand;
    ppLabel744: TppLabel;
    ppSystemVariable74: TppSystemVariable;
    ppSystemVariable75: TppSystemVariable;
    ppLabel745: TppLabel;
    ppLabel746: TppLabel;
    ppLabel747: TppLabel;
    ppDBText677: TppDBText;
    ppLabel748: TppLabel;
    ppDBText678: TppDBText;
    ppLabel749: TppLabel;
    ppDBText679: TppDBText;
    ppLabel750: TppLabel;
    ppDBText680: TppDBText;
    ppLine171: TppLine;
    ppDBText681: TppDBText;
    ppLabel751: TppLabel;
    ppSystemVariable76: TppSystemVariable;
    ppDBText682: TppDBText;
    ppDBText683: TppDBText;
    ppLabel752: TppLabel;
    ppDBText684: TppDBText;
    ppDetailBand64: TppDetailBand;
    ppLine172: TppLine;
    ppLine173: TppLine;
    ppSubReport26: TppSubReport;
    ppChildReport26: TppChildReport;
    ppTitleBand38: TppTitleBand;
    ppLabel753: TppLabel;
    ppLabel754: TppLabel;
    ppLabel755: TppLabel;
    ppLabel756: TppLabel;
    ppLabel757: TppLabel;
    ppLabel758: TppLabel;
    ppLabel759: TppLabel;
    ppDetailBand65: TppDetailBand;
    ppDBText685: TppDBText;
    ppDBText686: TppDBText;
    ppDBText687: TppDBText;
    ppDBText688: TppDBText;
    ppDBText689: TppDBText;
    ppDBText690: TppDBText;
    ppSummaryBand39: TppSummaryBand;
    ppDBCalc110: TppDBCalc;
    ppLabel760: TppLabel;
    ppDBCalc112: TppDBCalc;
    ppDBCalc113: TppDBCalc;
    ppGroup9: TppGroup;
    ppGroupHeaderBand9: TppGroupHeaderBand;
    ppGroupFooterBand9: TppGroupFooterBand;
    ppDBCalc115: TppDBCalc;
    ppLabel761: TppLabel;
    ppDBCalc116: TppDBCalc;
    ppDBCalc117: TppDBCalc;
    ppSummaryBand40: TppSummaryBand;
    ppSubReport27: TppSubReport;
    ppChildReport27: TppChildReport;
    ppTitleBand39: TppTitleBand;
    ppLabel762: TppLabel;
    ppShape27: TppShape;
    ppLabel763: TppLabel;
    ppLabel764: TppLabel;
    ppLabel765: TppLabel;
    ppLabel766: TppLabel;
    ppDetailBand66: TppDetailBand;
    ppDBText691: TppDBText;
    ppDBText692: TppDBText;
    ppDBText693: TppDBText;
    ppDBText694: TppDBText;
    ppSummaryBand41: TppSummaryBand;
    ppLine174: TppLine;
    ppLine175: TppLine;
    ppParameterList21: TppParameterList;
    ppCuadreSucursalTres: TppReport;
    ppTitleBand40: TppTitleBand;
    ppHeaderBand37: TppHeaderBand;
    ppLabel767: TppLabel;
    ppSystemVariable77: TppSystemVariable;
    ppSystemVariable78: TppSystemVariable;
    ppLabel768: TppLabel;
    ppLabel769: TppLabel;
    ppLabel770: TppLabel;
    ppDBText695: TppDBText;
    ppLabel771: TppLabel;
    ppDBText696: TppDBText;
    ppLabel772: TppLabel;
    ppDBText697: TppDBText;
    ppLabel773: TppLabel;
    ppDBText698: TppDBText;
    ppLine176: TppLine;
    ppLabel774: TppLabel;
    ppSystemVariable79: TppSystemVariable;
    ppDBText699: TppDBText;
    ppDBText700: TppDBText;
    ppLabel775: TppLabel;
    ppDBText701: TppDBText;
    ppDBText702: TppDBText;
    ppDetailBand67: TppDetailBand;
    ppLabel776: TppLabel;
    ppLabel777: TppLabel;
    ppDBText703: TppDBText;
    ppDBText704: TppDBText;
    ppLabel778: TppLabel;
    ppLabel779: TppLabel;
    ppDBText705: TppDBText;
    ppDBText706: TppDBText;
    ppLabel780: TppLabel;
    ppLabel781: TppLabel;
    ppDBText707: TppDBText;
    ppDBText708: TppDBText;
    ppLabel782: TppLabel;
    ppLabel783: TppLabel;
    ppDBText709: TppDBText;
    ppDBText710: TppDBText;
    ppLabel784: TppLabel;
    ppLabel785: TppLabel;
    ppDBText711: TppDBText;
    ppLabel786: TppLabel;
    ppLabel787: TppLabel;
    ppDBText712: TppDBText;
    ppLine177: TppLine;
    ppLine178: TppLine;
    ppLine179: TppLine;
    ppLine180: TppLine;
    ppSubReport28: TppSubReport;
    ppChildReport28: TppChildReport;
    ppTitleBand41: TppTitleBand;
    ppLabel788: TppLabel;
    ppShape28: TppShape;
    ppLabel789: TppLabel;
    ppLabel790: TppLabel;
    ppLabel791: TppLabel;
    ppLabel792: TppLabel;
    ppDetailBand68: TppDetailBand;
    ppDBText713: TppDBText;
    ppDBText714: TppDBText;
    ppDBText715: TppDBText;
    ppDBText716: TppDBText;
    ppSummaryBand42: TppSummaryBand;
    ppLine181: TppLine;
    ppLine182: TppLine;
    ppLine183: TppLine;
    ppLine184: TppLine;
    ppSubReport29: TppSubReport;
    ppChildReport29: TppChildReport;
    ppTitleBand42: TppTitleBand;
    ppLabel793: TppLabel;
    ppLabel794: TppLabel;
    ppLabel795: TppLabel;
    ppLabel796: TppLabel;
    ppLabel797: TppLabel;
    ppLabel798: TppLabel;
    ppDBText717: TppDBText;
    ppDetailBand69: TppDetailBand;
    ppDBText718: TppDBText;
    ppDBText719: TppDBText;
    ppDBText720: TppDBText;
    ppDBText721: TppDBText;
    ppDBText722: TppDBText;
    ppDBText723: TppDBText;
    ppSummaryBand43: TppSummaryBand;
    ppDBCalc118: TppDBCalc;
    ppLabel799: TppLabel;
    ppDBCalc119: TppDBCalc;
    ppDBCalc120: TppDBCalc;
    ppDBCalc121: TppDBCalc;
    ppDBCalc122: TppDBCalc;
    ppParameterList22: TppParameterList;
    qrCorteCajaDetRepTotal_ContRD_Tres: TBCDField;
    qrCorteSucursalTotalFiltro_Dos: TCurrencyField;
    qrCorteDepositoTotalFiltro_Dos: TCurrencyField;
    qrCorteGlobalTotalFiltro_Dos: TCurrencyField;
    qrCorteCajaDetRepLbDiferenciaPesosTres: TStringField;
    qrCorteCajaDetRepLbDiferenciaDollarTres: TStringField;
    qrCorteCajaDetRepDiferenciaPesosTres: TCurrencyField;
    qrCorteCajaDetRepDiferenciaDollarTres: TCurrencyField;
    qrCorteCajaDetRepEfectivoReportadoTres: TBCDField;
    qrCorteCajaDetRepEfectivo_Reportado_Tres: TBCDField;
    ppDBText724: TppDBText;
    ppDBText725: TppDBText;
    ppDBCalc123: TppDBCalc;
    qrParametroMonto_Filtro2: TBCDField;
    ppLabel800: TppLabel;
    ppDBText726: TppDBText;
    ppDBCalc124: TppDBCalc;
    ppCuadreSucursalGlobal3: TppReport;
    ppTitleBand43: TppTitleBand;
    ppLabel801: TppLabel;
    ppSystemVariable80: TppSystemVariable;
    ppSystemVariable81: TppSystemVariable;
    ppLabel802: TppLabel;
    ppLabel803: TppLabel;
    ppLabel804: TppLabel;
    ppSystemVariable82: TppSystemVariable;
    ppDBText727: TppDBText;
    ppLine185: TppLine;
    ppLabel805: TppLabel;
    ppLabel806: TppLabel;
    ppLabel808: TppLabel;
    ppDBText728: TppDBText;
    ppDetailBand70: TppDetailBand;
    ppDBText729: TppDBText;
    ppDBText731: TppDBText;
    ppSummaryBand44: TppSummaryBand;
    ppLabel809: TppLabel;
    ppDBText732: TppDBText;
    ppDBCalc126: TppDBCalc;
    ppParameterList23: TppParameterList;
    ppReport1: TppReport;
    ppHeaderBand38: TppHeaderBand;
    ppDetailBand71: TppDetailBand;
    ppFooterBand8: TppFooterBand;
    DelCuadreDiario: TADOStoredProc;
    DelCuadrePeriodo: TADOStoredProc;
    ppImpInternet: TppReport;
    ppHeaderBand8: TppHeaderBand;
    ppDBText121: TppDBText;
    ppLabel106: TppLabel;
    ppLabel107: TppLabel;
    ppDBText122: TppDBText;
    ppDBText123: TppDBText;
    ppLabel108: TppLabel;
    ppShape9: TppShape;
    ppDBText129: TppDBText;
    ppLabel115: TppLabel;
    ppLabel116: TppLabel;
    ppDBText130: TppDBText;
    ppMemo1: TppMemo;
    ppMemo4: TppMemo;
    ppDetailBand12: TppDetailBand;
    ppFooterBand7: TppFooterBand;
    ppRichText1: TppRichText;
    qrInternet: TADOQuery;
    qrInternetUSUARIOINTERNET: TStringField;
    qrInternetCLAVEINTERNET: TStringField;
    qrInternetNOMBRE: TStringField;
    qrInternetIDENTIFICACION: TStringField;
    qrInternetCLIENTEID: TStringField;
    qrInternetTIPO: TStringField;
    qrInternetACTUALIZADO: TStringField;
    qrInternetDATAAREAID: TStringField;
    qrInternetRECID: TLargeintField;
    dsInternet: TDataSource;
    ppInternet: TppDBPipeline;
    ppParameterList24: TppParameterList;
    Sp_ActPagos_PC: TADOStoredProc;
    qrParametroNotaFacturaSeguroUniv: TMemoField;
    qrParametroNotaFacturaEnvase: TMemoField;
    qrGrupoClienteFactGRUPOCLIENTE: TStringField;
    qrGrupoClienteFactDESCRIPCION: TStringField;
    qrGrupoClienteFactCODIGOAXAPTA: TStringField;
    qrGrupoClienteFactCOMENTARIO: TMemoField;
    qrGrupoClienteFactDATAAREAID: TStringField;
    qrGrupoClienteFactRECID: TLargeintField;
    qrGrupoClienteFactSINPRFILTERGROUP: TIntegerField;
    qrGrupoClienteFactSINPRFILTERGROUP_UNO: TIntegerField;
    qrParametroServidor_Sap: TStringField;
    qrNCFMENSAJE_VALIDA: TStringField;
    qrParametroFecha_Valida_Comp: TDateTimeField;
    qrParametroFecha_Valida_Comp_Dos: TDateTimeField;
    qrParametroLink_Rnc: TStringField;
    qrParametroNotaFacturaPacienteHiv: TStringField;
    procedure ppImpInternetBeforePrint(Sender: TObject);
    procedure ppCuadreSucursalGlobalBeforePrint(Sender: TObject);
    procedure qrCorteGlobalCalcFields(DataSet: TDataSet);
    procedure ppHeaderBand28BeforePrint(Sender: TObject);
    procedure ppTitleBand31BeforePrint(Sender: TObject);
    procedure ppTitleBand28BeforePrint(Sender: TObject);
    procedure ppHeaderBand27BeforePrint(Sender: TObject);
    procedure ppHeaderBand26BeforePrint(Sender: TObject);
    procedure ppHeaderBand25BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand6BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand8BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand7BeforePrint(Sender: TObject);
    procedure ppTitleBand12BeforePrint(Sender: TObject);
    procedure ppHeaderBand22BeforePrint(Sender: TObject);
    procedure ppHeaderBand21BeforePrint(Sender: TObject);
    procedure qrCorteDepositoCalcFields(DataSet: TDataSet);
    procedure qrCorteSucursalCalcFields(DataSet: TDataSet);
    procedure qrCorteCajaDetRepCalcFields(DataSet: TDataSet);
    procedure qrEntradaClinicaCalcFields(DataSet: TDataSet);
    procedure qrCobroCalcFields(DataSet: TDataSet);
    procedure ppGroupHeaderBand5BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand3BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand4BeforePrint(Sender: TObject);
    procedure ppDetailBand17BeforePrint(Sender: TObject);
    procedure qrEntradaCabRepCalcFields(DataSet: TDataSet);
    procedure ppDetailBand10BeforePrint(Sender: TObject);
    procedure ppImpReciboTicketBeforePrint(Sender: TObject);
    procedure ppSummaryBand5BeforePrint(Sender: TObject);
    procedure ppImpCuadreCajaBeforePrint(Sender: TObject);
    procedure ppDetailBand5AfterPrint(Sender: TObject);
    procedure elcDoctoresPropertiesInitPopup(Sender: TObject);
    procedure qrEntradaPacienteConsCalcFields(DataSet: TDataSet);
    procedure ApplDbChangeDatabaseSettingsProgress(Sender: TObject;
      PercentDone: Integer; var Continue: Boolean);
    procedure ApplDb1AfterChangeDatabaseSettings(Sender: TObject);
    procedure ApplDbBeforeChangeDatabaseSettings(Sender: TObject);
    procedure ApplEmpresasNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure LookUpEditInitPopup(Sender: TObject);
    procedure qrParamNewRecord(DataSet: TDataSet);
    procedure ExceptionAlertMessageClick(Sender: TObject);
    procedure DataBaseWillExecute(Connection: TADOConnection;
      var CommandText: WideString; var CursorType: TCursorType;
      var LockType: TADOLockType; var CommandType: TCommandType;
      var ExecuteOptions: TExecuteOptions; var EventStatus: TEventStatus;
      const Command: _Command; const Recordset: _Recordset);
    procedure DataBaseExecuteComplete(Connection: TADOConnection;
      RecordsAffected: Integer; const Error: Error;
      var EventStatus: TEventStatus; const Command: _Command;
      const Recordset: _Recordset);
    procedure JvPluginManagerNewCommand(Sender: TObject; ACaption, AHint,
      AData: String; AShortCut: TShortCut; ABitmap: TBitmap;
      AEvent: TNotifyEvent);
    procedure DataModuleDestroy(Sender: TObject);
    procedure IceLicenseAppKeyIncorrect(Sender: TObject);
    procedure IceLicenseCheckError(Sender: TObject);
    procedure IceLicenseClockMovedBack(Sender: TObject);
    procedure IceLicenseExeModified(Sender: TObject);
    procedure IceLicenseLicenseExpired(Sender: TObject);
    procedure IceLicenseLicenseFileError(Sender: TObject);
    procedure IceLicenseLicenseInfo(UserName, UserCompanyName, Software, Vendor,
      DateCreation, Expiration, HardwareLocked, NetworkControl,
      NetworkUser: String);
    procedure IceLicenseLicenseInvalid(Sender: TObject);
    procedure IceLicenseNetworkError(Sender: TObject);
    procedure IceLicenseNetworkMaxUser(Sender: TObject);
    procedure IceLicenseNetworkReject(Sender: TObject);
    procedure IceLicenseRegistered(LicenseActivKey: String);
    procedure IceLicenseTrial(Sender: TObject);
    procedure IceLicenseTrialExpired(Sender: TObject);
    procedure IceLicenseTrialProgress(Status: String);
  private
    { Private declarations }
   _frozen          : boolean;
   _exceptObject    : TObject;
   _exceptAddr      : pointer;
   _crashedThreadId : dword;
   _bugReport       : string;
   _screenShot      : string;
   _canContinue     : boolean;
   _handled         : boolean;

   FSystemDate      : TDate;
   _DateSystem      : TDate;
   _TimeSystem      : TDateTime;
   _DateTimeSystem  : TDateTime;
//   FSystemDate      : TDateTime;

   frmSplashForm : TfrmSplashForm;
    procedure LicenseError(Texto: String; Terminate: Boolean);
    procedure SetIsAdmin;
    procedure SyncMenuRights;
    procedure ApplyLicenseFile;
  published
    procedure OpenCompany(FileName: String); virtual;

    property  SystemDate : TDate read FSystemDate write FSystemDate;
    property  Fecha_Sistema : TDate read _DateSystem write _DateSystem;
    property  Hora_Sistema : TDateTime read _TimeSystem write _TimeSystem;
    property  Fecha_Server : TDateTime read _DateTimeSystem write _DateTimeSystem;

    procedure SetCompanyOptions;//Created with Castalia Extract Method Refactoring
  public
    { Public declarations }
    CambiarPrecio  : boolean;
    DescuentoTope  : Real;
    ColorConsulta  : Integer;
    ColorAgrega    : Integer;
    ColorModifica  : Integer;
    ColorBorra     : Integer;
    ColorReady     : Integer;
    ColorUrgente   : Integer;
    CurInterface   : Integer;
    ColorNormal    : Integer;
    CurCompanyFile : String;
    SupportURL     : String;
    SupporteMail   : String;
    MenuFont       : String;
    FormFont       : String;
    IsActivated    : Boolean;
    IsLogged       : Boolean;
    IsAdmin        : Boolean;
    IsDeveloper    : Boolean;
    CurRol         : Integer;
    IsAdicionalUSA    : Boolean;
    IsCambiosEntrada  : Boolean;
    IsImprimirLab     : Boolean;
    CurUser           : String;
    CurRuta           : String;
    CurArea           : String;
    IsEliminaPrueba : Boolean;
    vURLWSDL        : String;
    vWSDL           : String;
    WsArsID         : String;
    CodProveedor    : Int64;
    Afiliado        : String;
    Id_Trans        : WideString;
    TipoPlan        : String;
    NSS             : String;
    Regimen         : String;
    Contrato        : Integer;
    Num_Session     : String;
    dWebID          : Double;
    dBenVal         : Double;
    GrupoArs        : String;
    CodArs          : Integer;
    CurEmpresa      : String;
    CurSucursal     : String;
    CurUserUniv     : String;
    Cod_Doctor      : String;
    Nombre_Doctor   : String;
    Tipo_Doctor     : String;
    Telefono_Pac    : String;
    Complementariedad       : Integer;
    CurRolVisualScr         : Boolean;
    CurRolCreaEntrada       : Boolean;
    CurRolCreaCotizacion    : Boolean;
    CurRolAplicaPagos       : Boolean;
    CurRolPagoEfectivo      : Boolean;
    CurRolPagoTC            : Boolean;
    CurRolPagoTD            : Boolean;
    CurRolPagoCK            : Boolean;
    CurRolPagoUS            : Boolean;
    CurRolClienteSeguro     : Boolean;
    CurRolClientePlanSocial : Boolean;
    CurRolClientePrivado    : Boolean;
    CurRolClienteVIP        : Boolean;
    CurRolClienteFuncionario: Boolean;
    CurRolClienteCAP        : Boolean;
    CurRolClienteLaboratorio: Boolean;
    CurRolClienteClinica    : Boolean;
    CurRolClientePlanCia    : Boolean;
    CurRolClienteProyectos  : Boolean;
    CurRolClienteAccionistas: Boolean;
    CurRolClienteOtrasCXC   : Boolean;
    CurRolClienteExterior   : Boolean;
    CurRolNotaCredito       : Boolean;
    CurRolActLaboratorio    : Boolean;
    CurRolControlTiempo     : Boolean;
    Visualiza_Pagado_Entrada: Boolean;
    CurDescuentoTope  : Integer;
    Sucursal_Def      : String;
    CurSucursalAs400  : integer;
    SingleWindow      : Boolean;
    TituloEmpresa     : String;
    SubTituloEmpresa  : String;
    RncEmpresa        : String;
    DireciconEmpresa  : String;
    TelefonoEmprea    : String;
    FaxEmpresa        : String;
    eMailEmpresa      : String;
    urlEmpresa        : String;
    SysApplFolder     : string;
    CurCompany        : string;
    ValorAbonar       : Double;
    TipoPago          : String;
    Cobro_Var         : String;
    Cuadre_Imp        : String;
    Plan_Premium      : String;
    GroupPrivado      : String;
    GrupoPrecioPriv   : String;
    Filtro_UnoDos     : Integer;
    NombAplicacion, NombreExe,Token,PacienteID : String;
//NullEqualityRule: TNullCompareRule;
//NullMagnitudeRule: TNullCompareRule;
    NullAsStringValue : string;
    NullStrictConvert : Boolean;
//BooleanToStringRule: TBooleanToStringRule;
//    BooleanTrueAsOrdinalValue: Integer;

    function GetDigitoVerificador(Cedula : string; TipoDoc : String) : Boolean;
    Function Get_Secuencia_Id : Int64;
    Function Get_Secuencia(Campo: String) : Integer;
    Function Get_Secuencia_Big(tipodoc : String; _sucursal : String) : String;
    function Get_Secuencia_Pat(tipodoc : String; _sucursal : String) : String;
    function Get_Secuencia_Pac(tipodoc : String; _sucursal : String) : String;
    Function Cortar_Char(cortarchar: char; Texto: String): String;
    Function FindConceptoCuenta(Concepto: String): String;
    Function FindConceptoImpuesto(Concepto: String): String;
    Function GetLookupFormTag( sName : String ) : Integer;
    Function GetSecurity( iOpcion  : Integer ) : Integer;
    function CheckUser(UserId, Clave: string): Boolean;
    Function HashString( Texto : String ) : String;
    procedure SplitCalc(aText: string; aList: TStringList);
    procedure SetInfoPosition;
    procedure Info( Texto : String );
    procedure Warning( Texto : String );
    procedure Error(Texto: String);
    procedure ListErrors(Texto: TStrings);
    procedure Act_Empleado_NotaCredito(Cod_Empleado,CobroID : String);
    procedure Act_NotaEntrada_NC(RecID,TipoNC,DescSalida : String;Monto : Currency);
    function il_Cg : Boolean;
    function il_Bc : Boolean;
    function il_Cc : Boolean;
    function il_Cp : Boolean;
    function il_In : Boolean;
    function il_Fa : Boolean;
    function il_Co : Boolean;
    function il_No : Boolean;
    function il_Sv : Boolean;
    procedure SetUserOptions;
    procedure CheckOrSetCompanyName( Name : String );
    function NewQuery: TAdoQuery; overload;
    function NewDataSet: TADODataSet; overload;
    function Find(Sql : String; Params : String) : TADOQuery;
    function Find_Ldr(Sql : String; Params : String) : TADOQuery;
    function Redondeo(valor: double):double;
    function RedondeoCobertura(valor: double):double;
    function CalcMora(_prestamoNo,_cuotaNo : integer) : Double;
    function Mensaje(mensg : pchar;botones : word) : integer;
    Function Verifica_Cliente_Filiacion(ClienteID : String) : Boolean;

    function DescuentoUsuario(_user : string) : Double;
    function DescuentoTarjeta(Cod_Tarjeta : string) : Double;
    function Tasa(fecha : TDateTime; moneda : string) : Double;
    function ValorMoneda(valor: Double; frommoneda : string; tomoneda : string; fecha : TDateTime) : Double;

    Function Buscar_Precio_Lista(prueba, moneda,sucursalid,Fecha : string) : Double;
    function Precio_Prueba_Configurado(prueba, cliente, moneda, Origen, GrupoPrivado, GrupoPrecio, ClaseCredito, Fecha : string) : Double;
    function PrecioPrueba(prueba, cliente, moneda, sucursalid, fecha : string) : Double;
    function PrecioPruebaCosto(prueba, cliente, moneda, fecha : string) : Double;
    function PrecioPruebaMoneda(prueba, cliente, moneda, fecha: string) : Double;

    function Cobertura_Prueba_Configurada(prueba, cliente, moneda,fecha : string) : Double;
    function CoberturaPrueba(prueba,cliente,moneda,fecha : string) : Double;
    function CoberturaPruebaMoneda(prueba,cliente,moneda,fecha: string) : Double;
    function CoberturaPruebaPorc(prueba,cliente,moneda,fecha : string) : Integer;
    function CoberturaPruebaMonedaPorc(prueba,cliente,moneda,fecha: string) : Integer;

    function CoberturaPermitida(cliente : string) : Integer;
    function CurCoberturaAplicada(refrecid : Int64) : Int64;
    function ValidarSeguroPruebaCobertura_Precio(_cliente, _prueba, _moneda, sucursalid, fecha  : String): Double;
    function CoberturaAplica(cliente, paciente : String; curaplicada : Integer; refrecid : int64 ; fecha : String) : Int64;
    function ValidarSeguroPruebaCobertura(_origen, _gruprecio, _prueba, _moneda, _cliente, _paciente, fecha : String;
                                          curaplicada : Integer; refrecid : int64) : Integer;
    function VerificarCoberturaPruebaAdicional(origen,prueba,cliente,moneda,fecha: String) : Double;

    function Rellenar(valor :string; cantidad :integer; clave :string; posicion  :string):String;
    Function Disponibilidad_Devuelta_Efectivo(Cajero:String;SucursalID:String;FormaPago:String):Double;

    function SelectPrinter (NombrePrinter : String) : SmallInt;
    function DescTarjetaBono(tarjeta, numero : String) : double;
    function DescCliente(cliente,fecha: string) : Double;
    function TotalGastosVarios(_refrecid : Int64) : Double;
    function TotalGastosVariosUsa(_refrecid : Int64) : Double;
    function Buscar_Fecha_Actual : TDate;
    function Buscar_Hora_Actual  : String;
    function Buscar_Fecha_Y_Hora : TDateTime;
    Function Busca_PruebaFiliacionAD(I : Integer) : String;
    Function RevisaVersion:string;
    Function PingHost(Host : String; Timeout: integer) : Boolean;
    Function IsDate(str: string): Boolean;
    Function Empleado_Existe(PacienteID : String) : Boolean;
    Function Buscar_Random: String;
    Function Verifica_Pago(Refrecid : String):Double;
    Function Verifica_Version(App : String) : String;
    Function Verifica_Balance_Credito(Autorizacion : String):Double;
    Function BuscaCodigoIDAs400(PruebaID : String) : Integer;
    Function Es_Feriado : Boolean;
    procedure BuscaFoto(Forma: TForm ;MUN_CED:String;SEQ_CED :String; VER_CED :String);
    procedure VerificarGastosVarios(cliente: string;_refrecid : Int64);
    Procedure NewQuery( var qrAdo : TADOQuery ); overload;
    Function  Total_Pruebas(_registro : int64) : Int64;
    function  Valor_Afiliado_Seg(_registro : int64) : Currency;
    function  GetTokenCount(Cadena,Separador:string):integer;
    function  NthWord(Texto,Delimitador : string; Posicion: Integer): string;
    function  ExistePago(Recid : String;EntradaID : String) : Boolean;
    function  ContDiasTrabajo(Fecha : TDate) : Integer;
    function  Verifica_MonedaCliente(ClienteID : String;MonedaID : String) : Boolean;
    function  FechaCorteLab(Fecha : TDate) :Boolean;
    function  ValidaRNC(sRNC : String):Boolean;
    Function  ActNCF(Tipo:String;Cia:String;RecID:Int64;Muestrano:String;EntradaID:String;RNC:String;Monto:Currency):Boolean;
    Function  ActPerfil(Tipo_Documento:Integer;Documento:String;Nombre:String;Sexo:Integer;Fecha_Nac:String;Telefono:String;RecID:Int64):Boolean;
    Function  Buscar_CantCobertura(SCobertura : String; Cant : Integer) : String;
    Function  GrupoPrivado(SucursalID : String) : String;
    Function  GrupoPrecioPrivado(SucursalID : String) : String;
    Function  Buscar_GrupoPrecio(ClienteID : String) : String;
    Function  Buscar_GrupoCliente(PruebaID,ClienteID,Moneda,fecha : String) : String;
    Function  Verifica_Clave_Internet(Clave : String) : Boolean;
    Function  Verifica_NombrePaciente(ClienteID : String;Nombre : String) : Boolean;
    Function  Verifica_FechaNacimiento(ClienteID : String;Fecha : String) : Boolean;
    Function  Busca_Internet_Identificacion(Identificacion : String) : String;
    Function  Retorna_Cliente_Internet(Identificacion : String) : String;
    Function  TotalPruebas_USA : Integer;
    Function  GetSucursalS(Seguro : String) : String;
    Function  Verifica_Plan_Ex(ClienteID:String;SucursalID:String) : Boolean;
    Function  Verifica_Plan_ClienteEx(ClienteID:String) : Boolean;    
    Function  Chequea_Combo(RecID : Int64) : Boolean;
    Function  Buscar_Cadenas(Cadena : String) : String;
    Function  Verifica_Prueba_Domicilio(Muestrano : String) : Boolean;
    Function  Verifica_Existencia_PruebaDomicilio(Muestrano : String) : Boolean;
    Function  Verifica_Id_Visita(Id_Visita : String;Muestrano : String) : Boolean;
    Function  Verifica_Entradas_PG(RecID : Int64): Boolean;
    Function  Verifica_Cliente_Coprologico(ClienteID : String;PruebaID : String;RecId : String;Tipo : String;SucID : String; Cliente2 : String): String;
    Function  Crear_Clave_Alfa(Pasaporte : String) : Integer;
    Function  Convertir_Cadena(Pasaporte : String) : Integer;
    Function  PruebaCombo(RecID : Int64) : String;
    Function  GetSecuenciaDetId : Int64;
    Function  GetSecuenciaDomId : Int64;
    Function  GetMaxCodFlebAX   : String;
    Function  GetMaxDescFlebAX  : String;
    Function  VerificarPruebasEmbarazo(RecId : Int64): Boolean;
    Function  Pruebas_Exclusion(Origen : String; ClienteID : String) : String;
    Function  ComprobarTarjeta(C: string) : Integer;
    Function  Buscar_PruebaGrupo(PruebaID : String;GrupoID : String) : Boolean;
    Function  Total_Acum_Mensual_Filtro2(Fecha : String) : Currency;
    Function  Verifica_Referimiento(RecID : String):Boolean;
    Function  TotalDetallePrueba(Refrecid : String):System.Extended;
    Function  Verifica_MonedaCte(ClienteID : String) : String;
    Function  Verifica_Cliente_Inv_Ameba(ClienteID : String;RecId : String;Tipo : String): String;
    Function  Verifica_Universal_UroCopro(RecID : String):Boolean;
    Function  Verifica_Envase_Unifix_CoprolArs(RecID : String):Boolean;
    Function  Busca_Servidor_Fuera_Linea: String;
    Function  Verifica_Pagos_Usuario_FueraLinea(_fecha: TDate): Boolean;
    Function  Verifica_Pagos_Sucursal_FueraLinea(_fecha: TDate): Boolean;
    Function  Verifica_Filtro_UnoDos(_Sucursal: String): Boolean;
    Function  Verifica_Pago_Filtro(_Recid: String): Boolean;
    Function  VerificaPruebaAntiHiv(Recid: String): Boolean;
    CONST     TipoTarjeta : array [0..4] of string = ('No v�lida', 'Amex', 'Visa', 'Mastercard', 'Discover');
    procedure AppError(Texto: String;
                       frozen          : boolean;
                       exceptObject    : TObject;
                       exceptAddr      : pointer;
                       crashedThreadId : dword;
                       var bugReport   : string;
                       var screenShot  : string;
                       var canContinue : boolean;
                       var handled     : boolean);
    procedure ImpresionRwPrint_Recibo_Pesos;
    procedure ImpresionRwPrint_Recibo_Dolar;
    procedure ImpresionRwPrint_Nota_Debito;
    procedure ImpresionRwPrint_Nota_Credito;
    procedure ImpresionRwPrint_Devolucion;
    Function Estremos(TextE1,TextE2 : String ; LengE :SmallInt):String ;
    Function DateToInt(xDate : TDate): Integer;

end;

function EncryptKey(sKey: String): String;
Function GetTableNameByDataSet(ADataSet: TDataSet) : String;
function DecryptKey(sKey: String): String;

Const
  ColorInfoFrom     =  $00FADAC4;
  ColorInfoTo       =  $00F5BFA0;
  ColorWarningFrom  = $00C5F9FA;
  ColorWarningTo    = $00A2F4F2;
  ColorErrorFrom    = $00C5C5FA;
  ColorErrorTo      = $00A2A4F4;
  CodPacienteLab    = '00008805';
  CodPacienteADN    = '00029127';
  CodPacientePlanS  = '00018822';
  CodPacienteSinCed = '00029448';
  CodClientePlanS   = '00033293';
  CodigoIDAS400     = '00000528';
  CodClienteFilRD   = '00033162';
  CodClienteFilUS   = '00033163';
  CodCteClinicaA    = '151';
  CodCteExterior    = '305';
  CodCteADN         = '1140';
  CodDoctorGenPT    = '000001';
  CodDoctorGenAS    = '99999';
  CodDoctorLab      = 1219;
  CodPolizaPacLab   = 'Paciente Laboratorios';
  CodEfectivo       = 'EFE';
  CodDolar          = 'CASH';
  CodTarjetaCredito = 'TC';
  CodTarjetaDebito  = 'TD';
  CodCheque         = 'CK';
  GrupoOtrasCxc     = '12';
  GrupoArsSDS       = '1';
  GrupoArsUniversal = '2';
  GrupoArsPalic     = '3';
  GrupoArsSenasa    = '4';
  GrupoArsYunen     = '5';
Var
  DM: TDM;
  il_UserName           : String;
  il_UserCompanyName    : String;
  il_Software           : String;
  il_Vendor             : String;
  il_DateCreation       : String;
  il_Expiration         : String;
  il_HardwareLocked     : String;
  il_ProgramState       : String;
  il_License            : String;
  il_PcID               : String;
  il_NetworkControl     : String;
  il_NetworkUser        : String;
  il_IsTrial            : Boolean;
  il_TrialDays          : Integer;
  ValorFormaPagoE       : Double;
  ValorFormaPagoI       : Double;
  findAcuerdoCom,bCambio_Ver : Boolean;
  Ruta_Recibo           : System.AnsiString;
  Ruta_Factura          : System.AnsiString;
  Ruta_BarCode          : System.AnsiString;
  Version_App           : String;
  Factura_St            : String;
  Auditoria_St          : String;
  No_Cambio_Precio      : String;
  Tiene_Balance         : integer;
  intCorteCuadre        : Integer;
  Credito_St            : String;

implementation


uses StrUtils, Dialogs, JclStrings, Main, Math, madExcept, DateUtils,
     ReportsDM, Splash, ActionsDM, DialogDbSetup, ApplDbChangeSettings,uActualizaPto;

{$R *.dfm}

{ TDM }


function TDM.Get_Secuencia(Campo: String) : Integer;
Var
 _buscar : String;
 _borrar : String;
 _valor  : Integer;
 qBuscar : TADOQuery;
begin
 _buscar  := ' SELECT ' + Campo + ' FROM PTParametro (nolock) ';
 _borrar  := ' UPDATE PTParametro with (rowlock) SET ' + Campo + ' = ' + Campo + ' + 1 ';

 _valor  := 0;
 qBuscar := DM.NewQuery;

 qBuscar.Close;
 qBuscar.SQL.Text := _buscar;
 qBuscar.Open;

 if qBuscar.Fields[0].AsString <> '' then
  _valor := qBuscar.Fields[0].AsInteger + 1
 else
  _valor := 1;

 qBuscar.Active := False;
 qBuscar.SQL.Text := _borrar;
 qBuscar.ExecSQL;

 DM.DataBase.Execute(_borrar);

 Result := _valor;

 FreeAndNil(qBuscar);
end;


function TDM.Get_Secuencia_Id : Int64;
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
       numero := StrToInt64(FieldByName('Secuencia').AsString)
     else
       numero := 1;

     _valor := FormatFloat('00', FieldByName('SucursalAS400').AsInteger) +
               FormatFloat('0000000000000', numero);
   end;
 Result := StrToInt64(_valor);
 FreeAndNil(qsecdoc);
 end;

end;


function TDM.Get_Secuencia_Big(tipodoc : String; _sucursal : String) : String;
Var
 _valor  : Int64;
 qsecdoc : TADOQuery;
begin
 _valor := 0;
  qsecdoc := DM.NewQuery;
 With qsecdoc,sql do
 begin
   Close;
   Clear;
   Add(' DECLARE	@return_value int,@r_result bigint,@r_result2 bigint,@r_result3 bit ');
   Add(' EXEC	@return_value = [dbo].[Sec_Documentos] ');
   Add(' @Tipo_Doc = N'+#39+tipodoc+#39+',');
   Add(' @SucursalID = N'+#39+_sucursal+#39+',');
   Add(' @r_result = @r_result OUTPUT, ');
   Add(' @r_result2 = @r_result2 OUTPUT, ');
   Add(' @r_result3 = @r_result3 OUTPUT ');
   Add(' SELECT	@r_result as Secuencia,@r_result2 as SucursalAS400');
   Open;
   if not IsEmpty then
   begin
       if FieldByName('Secuencia').AsString <> '' then
        _valor := StrToInt64(FieldByName('Secuencia').AsString)
       else
        _valor := 1;

       Result := FormatFloat('00', FieldByName('SucursalAS400').AsInteger) +
                 FormatFloat('00000000', _valor);
   end;
 end;
 FreeAndNil(qsecdoc);
end;

function TDM.Get_Secuencia_Pat(tipodoc : String; _sucursal : String) : String;
Var
 _valor  : Int64;
 qsecdoc : TADOQuery;
  anio, mes, dia : Word;
begin
 _valor := 0;
  qsecdoc := DM.NewQuery;
 DecodeDate(DM.SystemDate, anio, mes, dia);
 With qsecdoc,sql do
 begin
   Close;
   Clear;
   Add(' DECLARE	@return_value int,@r_result bigint,@r_result2 bigint,@r_result3 bit ');
   Add(' EXEC	@return_value = [dbo].[Sec_Documentos] ');
   Add(' @Tipo_Doc = N'+#39+tipodoc+#39+',');
   Add(' @SucursalID = N'+#39+_sucursal+#39+',');
   Add(' @r_result = @r_result OUTPUT, ');
   Add(' @r_result2 = @r_result2 OUTPUT, ');
   Add(' @r_result3 = @r_result3 OUTPUT ');
   Add(' SELECT	@r_result as Secuencia,@r_result2 as SucursalAS400');
   Open;
   if not IsEmpty then
   begin
       if FieldByName('Secuencia').AsString <> '' then
        _valor := StrToInt64(FieldByName('Secuencia').AsString)
       else
        _valor := 1;

        result := Copy(IntToStr(anio), 3, 2) +
                  FormatFloat('000000', FieldByName('Secuencia').AsFloat);
   end;
 end;
 FreeAndNil(qsecdoc);
end;
function TDM.Get_Secuencia_Pac(tipodoc : String; _sucursal : String) : String;
Var
 _valor  : Int64;
 qsecdoc : TADOQuery;
begin
     _valor  := 0;
     qsecdoc := DM.NewQuery;
     qsecdoc := DM.NewQuery;
     With qsecdoc,sql do
     begin
       Close;
       Clear;
       Add(' DECLARE	@return_value int,@r_result bigint,@r_result2 bigint,@r_result3 bit ');
       Add(' EXEC	@return_value = [dbo].[Sec_Documentos] ');
       Add(' @Tipo_Doc = N'+#39+tipodoc+#39+',');
       Add(' @SucursalID = N'+#39+DM.CurSucursal+#39+',');
       Add(' @r_result = @r_result OUTPUT, ');
       Add(' @r_result2 = @r_result2 OUTPUT, ');
       Add(' @r_result3 = @r_result3 OUTPUT ');
       Add(' SELECT	@r_result as Secuencia,@r_result2 as SucursalAS400');
       Open;
       if not IsEmpty then
       begin
         if FieldByName('Secuencia').AsString <> '' then
           _valor := StrToInt64(FieldByName('Secuencia').AsString)
         else
           _valor := 1;

         result := FormatFloat('00', FieldByName('SucursalAS400').AsInteger) +
                                      FormatFloat('000000', _valor);

       end;
     End;
     FreeAndNil(qsecdoc);
end;

procedure TDM.elcDoctoresPropertiesInitPopup(Sender: TObject);
begin
 qrDoctor.close;
 qrDoctor.Open;
end;


function TDM.GetSecurity(iOpcion : Integer): Integer;
begin
  qrUserMenu.Close;
  qrUserMenu.Parameters.ParamByName('pRol').Value := CurRol;
  qrUserMenu.Open;
  if qrUserMenu.Locate('OpcionID',iOpcion,[]) then begin
    Result := qrUserMenuNivel.Value;
  end else
    Result := -1;
end;


//Created with Castalia Extract Method Refactoring
procedure TDM.SetCompanyOptions;
begin
  ColorConsulta := qrParamColorConsulta.Value;
  ColorAgrega   := qrParamColorAgregar.Value;
  ColorModifica := qrParamColorEditar.Value;
  ColorBorra    := qrParamColorBorrar.Value;
  ColorUrgente  := $0047D5FE;
  ColorReady    := ColorBorra;
  ColorNormal   := clWhite;

  TituloEmpresa := qrParamTituloEmpresa.Text;
  SubTituloEmpresa := qrParamSubTituloEmpresa.Text;
  RncEmpresa := qrParamRNC.Text;
  TelefonoEmprea := qrParamTelefono.Text;
  FaxEmpresa := qrParamFax.Text;
  eMailEmpresa := qrParameMail.Text;
  urlEmpresa := qrParamDireccionWeb.Text;
  DireciconEmpresa := qrParamDireccion.Text;
  CurInterface := qrParamInterface.Value;

  if Assigned(DMReports) then
    DMReports.SetReportTitles;
end;


procedure TDM.FormCreate(Sender: TObject);
 function CheckApplicationFiles( Folder : String ) : Boolean;
  var
    curFile : String;
  begin
    Result := True;
    NullAsStringValue:=EmptyStr;
    NullStrictConvert:= false;
    // - Application DataBase
//    Folder := 'C:\Punto de Venta Offline';
    curFile := Folder + '\Laboratorio.abs';
    Result := ( (Result) AND (FileExists(curFile) ) );
    // - Archivo de Licencia
    curFile := Folder + '\Laboratorio.key';
    Result := ( (Result) AND (FileExists(curFile) ) );
  end
  ;
var
 FileName : String;
begin
  ApplDb.Connected := False;
  // Buscar arhcivo de configuracion del cliente
  if ParamStr(1) = EmptyStr then
  begin
    FileName := ExtractFilePath(ParamStr(0)) + '\Laboratorio.ini';
  end
  else
  begin
    FileName := ParamStr(1);
  end;
  if not FileExists(FileName) then
  begin
    raise Exception.Create(SIniFileNotFound);
  end;
  conXmlFile.FileName := FileName;
  conXmlFile.Reload;
  // Buscar el folder de la aplicacion
  CurUser := conXmlFile.ReadString('Usuario');
  SysApplFolder := conXmlFile.ReadString('Aplicacion');
  CurCompany    := conXmlFile.ReadString('Empresa');
  Sucursal_Def  := conXmlFile.ReadString('Sucursal');
//  EtMensajeDlg(FileName+'   '+CurUser+'   '+SysApplFolder+'   '+CurCompany+'   '+Sucursal_Def, etError, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
  if not CheckApplicationFiles(SysApplFolder) then
    raise Exception.Create(SAppFolderNoValido);
  //
  try
    FileName                := SysApplFolder + '\Laboratorio.abs';
    ApplDb.DatabaseFileName := FileName;
    ApplDb.Connected        := True;
  except
    raise;
    Application.Terminate;
  end;
  //
  ApplyLicenseFile;
  //
  ApplInfo.Close;
  ApplInfo.Open;
  Application.Title := ApplInfo.FieldByName('Description').Text;
  if ApplInfo.FieldByName('Vendor_URL').Text = '' then
    SupportURL      := 'www.Labreferencia.com' //ApplInfo.FieldByName('Developer_URL').Text
  else
    SupportURL      := 'www.Labreferencia.com';//ApplInfo.FieldByName('Vendor_URL').Text;
  if ApplInfo.FieldByName('Vendor_SupportEmail').Text = '' then
    SupporteMail    := 'Williamsg@Labreferencia.com' //ApplInfo.FieldByName('Developer_SupportEmail').Text
  else
    SupporteMail    := 'Williamsg@Labreferencia.com'; //ApplInfo.FieldByName('Vendor_SupportEmail').Text;
//  EtMensajeDlg(Application.Title+'   '+SupportURL+'   '+SupporteMail, etError, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
  NombAplicacion    := 'Punto de Venta';
  NombreExe         := 'Laboratorio';
  DM.OpenCompany(FileName);
// JvPluginManager.LoadPlugins; // - Comentado para futuro uso
end;


function EncryptKey(sKey: String): String;
var
  i, j : Integer;
begin
  result := '';
  j := 5 * length(sKey);
  for i := 1 to length(sKey) do begin
    result := result + Chr( Ord(sKey[i]) + j );
  end;
end;


function DecryptKey(sKey: String): String;
var
  i, j : Integer;
begin
  result := '';
  j := 5 * length(sKey);
  for i := 1 to length(sKey) do begin
    result := result + Chr( Ord(sKey[i]) - j );
  end;
end;

Function TDM.CheckUser(UserId, Clave: string) : Boolean;
begin
  qrLogin.close;
  qrLogin.Parameters.ParamByName('pUser').Value := UserId;
  qrLogin.Open;

  curUser    := UserId;
//  CurEmpresa := 'pru';
  CurEmpresa := 'ldr';
  Result := (not qrLogin.Eof AND (DecryptKey(qrLoginClave.Text) = Clave) );
  if Result then begin
    SetIsAdmin;
  end;
end;


procedure TDM.SetIsAdmin;
begin
  qrUserRol.Close;
  qrUserRol.Parameters.ParamByName('pUser').Value := CurUser;
  qrUserRol.Open;

  IsAdmin := qrUserRolAdministrador.Value;
  IsDeveloper := qrUserRolDesarrollador.Value;
  CurRol  := qrUserRolRolID.Value;
  qrUserRol.Close;
end;


function TDM.HashString(Texto: String): String;
var
  iL : Integer;
  iC : Integer;
begin
//  if Texto = '' then Texto := TimeToStr(Now);
  if Texto = '' then Texto := TimeToStr(DM.Buscar_Fecha_Y_Hora);
  for iL := 1 to Length(Texto) do begin
    iC := Trunc( ( Ord(Texto[iL]) * iL ) / 7 );
    Result := Result + IntToStr(iC);
  end;
  Result := ReverseString(Result);
  Result := StrLeft(Result,4) + StrRight(Result,4);
end;


procedure TDM.SplitCalc(aText: string; aList: TStringList);
var
  p: Integer;
begin
  aList.Clear;
  if aText = '' then Exit;
  aText := trim(aText);
  while aText <> '' do
  begin
    if aText[1] = '|' then
    begin
      delete(aText, 1, 1);
      p := pos('|', aText);
      if p <> 0 then
      begin
        aList.append(copy(aText, 1, p - 1));
        delete(aText, 1, p);
      end;
    end
    else
    begin
      p := pos('|', atext);
      if p = 0 then
      begin
        aList.Append(aText);
        atext := '';
      end
      else
      begin
        aList.append(copy(aText, 1, p - 1));
        delete(aText, 1, p);
      end;
    end;
    aText := trim(aText);
  end;
end;


procedure TDM.LookUpEditInitPopup(Sender: TObject);
var
  lcDataSet : TDataSet;
begin
  if ( Sender is TcxDBLookupComboBox ) then
    lcDataSet := (( Sender as TcxDBLookupComboBox ).RepositoryItem As TcxEditRepositoryLookupComboBoxItem).Properties.ListSource.DataSet
  else begin
    if ( Sender is TcxDBExtLookupComboBox ) then
      lcDataSet := ( ( ( Sender as TcxDBExtLookupComboBox ).RepositoryItem As TcxEditRepositoryExtLookupComboBoxItem).Properties.View as TcxGridDBTableView ).DataController.DataSource.DataSet;
  end;
  if qrRol.IsEmpty then begin
    qrRol.Append;
    qrRolDescripcion.Text := 'Adminstrador';
    qrRolAdministrador.Value := True;
    qrRol.Post;
    qrRol.Close;
    qrRol.Open;
  end;
  // Verificar que exista al menos un usuario
  qrUser.Close;
  qrUser.Open;
  if qrUser.IsEmpty then begin
    qrUser.Append;
    qrUserUserId.Text := 'ADMIN';
    qrUserRolID.Value := qrRolRolID.Value;
    qrUserNombre.Text := 'Adminstrador';
    qrUserClave.Text := '';
    qrUser.Post;
    qrUser.Close;  //
  end;
  if Assigned(lcDataSet) then begin
    try
      lcDataSet.Close;
      lcDataSet.Open;
    except
      //
    end;
  end;
end;


procedure TDM.SyncMenuRights;
begin
  qrRol.Close;
  qrRol.CommandText := 'SELECT * FROM SysRoles (nolock) WHERE Administrador = 1';
  qrRol.Open;
end;


Function GetTableNameByDataSet(ADataSet: TDataSet) : String;
var
  qrDataSet : TAdoQuery;
  sql       : String;
begin
  if ( ADataSet is TAdoQuery ) then begin
    qrDataSet := ( ADataSet as TAdoQuery );
    sql := qrDataSet.SQL.Text;
    sql := Copy( sql, Pos('FROM', sql) + 5, Length(sql) );
    sql := TrimLeft(sql);
    if Pos(' ', sql) > 0 then
      sql := Copy( sql, 1, Pos(' ',sql)-1);
  end;
  sql := TrimRight(sql);
  Result := sql;
end;


procedure TDM.Info(Texto: String);
var
  IAlert: TJvDesktopAlert;
  bmp: TBitmap;
Begin
  //MessageDlg(Texto, mtInformation, [mbOK], 0);
  IAlert := TJvDesktopAlert.Create(Self);
  IAlert.AutoFocus := True;
  IAlert.AutoFree := True;
  IAlert.Colors.WindowFrom := ColorInfoFrom;
  IAlert.Colors.WindowTo := ColorInfoTo;
  IAlert.HeaderText := 'Informaci�n';
  IAlert.MessageText := Texto;
  bmp := TBitmap.Create;
  ilMessages.GetBitmap(0,bmp);
  IAlert.Options := IAlert.Options - [daoCanClick];
  IAlert.Image.Assign(bmp);
  IAlert.Location.Position := dapOwnerFormCenter;
  IAlert.Location.Height := Max(76,IAlert.Form.lblText.Height + 10);
  IAlert.Execute;
end;


procedure TDM.Warning(Texto: String);
var
  IAlert: TJvDesktopAlert;
  bmp: TBitmap;
begin
  //MessageDlg(Texto, mtWarning, [mbOK], 0);
  IAlert := TJvDesktopAlert.Create(Self);
  IAlert.AutoFocus := True;
  IAlert.AutoFree := True;
  IAlert.Colors.WindowFrom := ColorWarningFrom;
  IAlert.Colors.WindowTo := ColorWarningTo;
  IAlert.HeaderText := 'Aviso';
  IAlert.MessageText := Texto;
  bmp := TBitmap.Create;
  ilMessages.GetBitmap(1,bmp);
  IAlert.Options := IAlert.Options - [daoCanClick];
  IAlert.Image.Assign(bmp);
  IAlert.Location.Position := dapOwnerFormCenter;
  IAlert.Location.Height := Max(76,IAlert.Form.lblText.Height + 10);
  IAlert.Execute;
end;


procedure TDM.Error(Texto: String);
var
  IAlert: TJvDesktopAlert;
  bmp: TBitmap;
begin
  Beep;
  //MessageDlg(Texto, mtError, [mbOK], 0);
  IAlert := TJvDesktopAlert.Create(Self);
  IAlert.AutoFocus := True;
  IAlert.AutoFree := True;
  IAlert.Colors.WindowFrom := ColorErrorFrom;
  IAlert.Colors.WindowTo := ColorErrorTo;
  IAlert.HeaderText := 'Error';
  IAlert.MessageText := Texto;
  bmp := TBitmap.Create;
  ilMessages.GetBitmap(2,bmp);
  IAlert.Options := IAlert.Options - [daoCanClick];
  IAlert.Image.Assign(bmp);
  IAlert.Location.Position := dapOwnerFormCenter;
  IAlert.Location.Height := Max(76,IAlert.Form.lblText.Height + 10);
  IAlert.Execute;
end;


procedure TDM.ListErrors(Texto: TStrings);
var
  i : Integer;
  txt : String;
begin
  for i := 0 to Texto.Count-1 do begin
    txt := txt + Texto.Strings[i] + #13#10;
  end;
  Error(txt);
end;


procedure TDM.SetInfoPosition;
var
  p : TPoint;
begin
  p.X := 0;
  p.Y := 0;
  p := frmMain.ClientToScreen(p);
end;


function TDM.GetLookupFormTag(sName: String): Integer;
var
  i : Integer;
begin
  Result := -1;
  for i := 0 to cxEditRepository.Count-1 do begin
    if UpperCase( cxEditRepository.Items[i].Name ) = sName then begin
      Result := cxEditRepository.Items[i].Tag;
      break;
    end;
  end;
end;


function TDM.il_Cg: Boolean;
begin
  Result := ( Copy(il_License,1,1 ) = '1' );
end;


function TDM.il_Bc: Boolean;
begin
  Result := ( Copy(il_License,2,1 ) = '1' );
end;


function TDM.il_Cc: Boolean;
begin
  Result := ( Copy(il_License,3,1 ) = '1' );
end;


function TDM.il_Cp: Boolean;
begin
  Result := ( Copy(il_License,4,1 ) = '1' );
end;


function TDM.il_In: Boolean;
begin
  Result := ( Copy(il_License,5,1 ) = '1' );
end;


function TDM.il_Co: Boolean;
begin
  Result := ( Copy(il_License,6,1 ) = '1' );
end;


function TDM.il_Fa: Boolean;
begin
  Result := ( Copy(il_License,7,1 ) = '1' );
end;


procedure TDM.SetUserOptions;
begin
  qrParam.Close;
  qrParam.Open;
  //
  qrUserRol.Close;
  qrUserRol.Parameters.ParamByName('pUser').Value := CurUser;
  qrUserRol.Open;

  if qrUserRolInterface.AsString <> '' then
    CurInterface := qrUserRolInterface.Value
  else
    CurInterface := qrParamInterface.Value;
  //
  SingleWindow := (not qrUserRolMultipleVentanas.Value);
  //
  if qrUserRolMenuFont.AsString <> '' then
    MenuFont := qrUserRolMenuFont.Text
  else
    MenuFont := qrParamMenuFont.Text;
  //
  if qrUserRolFormsFont.AsString <> '' then
    FormFont := qrUserRolFormsFont.Text
  else
    FormFont := qrParamFormsFont.Text;
end;


procedure TDM.qrCobroCalcFields(DataSet: TDataSet);
Var
  _texto       : String;
  qexterior    : TADOQuery;
  qformacobros : TADOQuery;
begin
  qrCobroFechaDia.Value       := 0;
  qrCobroTotalOtros.Value     := 0;
  qrCobroCardDebito.Value     := 0;
  qrCobroTotalCheque.Value    := 0;
  qrCobroCardCredito.Value    := 0;
  qrCobroTotalDollares.Value  := 0;
  qrCobroTotalEfectivo.Value  := 0;
  qrCobroTotalTarjetas.Value  := 0;
  qrCobroTotalEnvioUsa.Value  := 0;
  qrCobroTotalPruebaUsa.Value := 0;

 If (qrCobroFecha.Value = qrCobroFECHA_1.Value) Then
   qrCobroFechaDia.Value := 1
 Else
   qrCobroFechaDia.Value := 99;


 if ( (DM.qrCobro.FieldByName('FactExterior').AsInteger = 1) Or
      (DM.qrCobro.FieldByName('TipoDocumento').AsInteger = 3) ) then
   Begin
    qexterior := DM.NewQuery;
    qexterior.close;
    qexterior.sql.Text := ' SELECT SUM(Precio) FROM PTEntradaPacienteDetalle (nolock) '+
                          ' WHERE RefRecid = :rec '+
                          ' AND DataAreaId = ' + #39 + CurEmpresa + #39 +
                          ' AND Exterior = 0 ';
    qexterior.Parameters[0].Value := DM.qrCobro.FieldByName('RecId').AsString;;
    qexterior.Open;

    If (qexterior.Fields[0].AsString <> '') Then
      Begin
        qrCobroTotalPruebaUsa.Value  := Redondeo(DM.qrCobro.FieldByName('Neto').AsFloat -
                                                 DM.qrCobro.FieldByName('GastosVarios').AsFloat -
                                                 qexterior.Fields[0].AsFloat);

        qrCobroTotalEnvioUsa.Value  := Redondeo(DM.qrCobro.FieldByName('GastosVarios').AsFloat -
                                                qexterior.Fields[0].AsFloat);

        FreeAndNil(qexterior);
      end
    Else
      Begin
        qrCobroTotalPruebaUsa.Value  := Redondeo(DM.qrCobro.FieldByName('Neto').AsFloat -
                                                 DM.qrCobro.FieldByName('GastosVarios').AsFloat);

        qrCobroTotalEnvioUsa.Value  := Redondeo(DM.qrCobro.FieldByName('GastosVarios').AsFloat);

        FreeAndNil(qexterior);
      end;
   end;

 if (Cobro_Var = 'Usuario') then
   Begin
    _texto := ' SELECT D.CobroId, D.FormadePagoId, D.MonedaId, '+
              ' SUM(D.monto), SUM(D.montoMST) FROM PTCobro C (nolock) , PTCobroDetalle D (nolock) '+
              ' WHERE C.cobroid = D.CobroId '+
              ' AND C.CobroId = :rec '+
              ' AND C.Fecha = '+#39+FormatDateTime('yyyymmdd', DM.qrCobro.FieldByName('Fecha').AsDateTime)+#39+
              ' AND C.SucursalId = :suc '+
              ' AND C.UsuarioId = :usr '+
              ' AND C.CuadreUsuario = :cdr '+
              ' GROUP BY D.CobroId, D.FormadePagoId, D.MonedaId '+
              ' ORDER BY D.CobroId, D.FormadePagoId, D.MonedaId ';
   end;

 if (Cobro_Var = 'Sucursal') then
   Begin
    _texto := ' SELECT D.CobroId, D.FormadePagoId, D.MonedaId, '+
              ' SUM(D.monto), SUM(D.montoMST) FROM PTCobro C (nolock), PTCobroDetalle D (nolock)'+
              ' WHERE C.CobroId = D.CobroId '+
              ' AND C.CobroId = :rec '+
              ' AND C.Fecha = '+#39+FormatDateTime('yyyymmdd', DM.qrCobro.FieldByName('Fecha').AsDateTime)+#39+
              ' AND C.SucursalId = :suc '+
              ' AND C.UsuarioId = :usr '+
              ' AND C.CuadreGlobal = :cdr '+
              ' GROUP BY D.CobroId, D.FormadePagoId, D.MonedaId '+
              ' ORDER BY D.CobroId, D.FormadePagoId, D.MonedaId ';
   end;

 if (Cobro_Var = 'Usuario') or (Cobro_Var = 'Sucursal') then
   Begin
    qformacobros := DM.NewQuery;
    qformacobros.close;
    qformacobros.sql.Text := _texto;
    qformacobros.Parameters.ParamByName('rec').Value := DM.qrCobro.FieldByName('CobroId').AsString;
    qformacobros.Parameters.ParamByName('suc').Value := DM.qrCobro.FieldByName('SucursalId').AsString;
    qformacobros.Parameters.ParamByName('usr').Value := DM.qrCobro.FieldByName('UsuarioId').AsString;
    if (Cobro_Var = 'Usuario') then
      qformacobros.Parameters.ParamByName('cdr').Value := DM.qrCobro.FieldByName('CuadreUsuario').AsString;
    if (Cobro_Var = 'Sucursal') then
      qformacobros.Parameters.ParamByName('cdr').Value := DM.qrCobro.FieldByName('CuadreGlobal').AsString;
    qformacobros.Active := True;

    if (qformacobros.RecordCount > 0) then
      Begin
        qformacobros.First;
        qrCobroTotalEfectivo.Value := 0;
        qrCobroTotalTarjetas.Value := 0;
        qrCobroTotalOtros.Value := 0;
        qrCobroTotalCheque.Value := 0;
        qrCobroCardCredito.Value := 0;
        qrCobroCardDebito.Value := 0;
        qrCobroTotalDollares.Value := 0;

        while Not qformacobros.Eof do
        Begin
          if (qformacobros.FieldByName('FormaDePagoId').AsString = 'EFE') then
            qrCobroTotalEfectivo.Value := Redondeo(qformacobros.Fields[3].AsFloat);

          if (qformacobros.FieldByName('FormaDePagoId').AsString = 'CASH') then
            qrCobroTotalDollares.Value := Redondeo(qformacobros.Fields[3].AsFloat);

          if (qformacobros.FieldByName('FormaDePagoId').AsString = 'TC') then
            Begin
              qrCobroCardCredito.Value := Redondeo(qformacobros.Fields[3].AsFloat);
              qrCobroTotalTarjetas.Value := Redondeo(qrCobroTotalTarjetas.Value + qformacobros.Fields[3].AsFloat);
            end;

          if (qformacobros.FieldByName('FormaDePagoId').AsString = 'TD') then
            Begin
              qrCobroCardDebito.Value := Redondeo(qformacobros.Fields[3].AsFloat);
              qrCobroTotalTarjetas.Value := Redondeo(qrCobroTotalTarjetas.Value + qformacobros.Fields[3].AsFloat);
            end;

          if (qformacobros.FieldByName('FormaDePagoId').AsString = 'CK') then
            Begin
              qrCobroTotalCheque.Value := Redondeo(qformacobros.Fields[3].AsFloat);
              qrCobroTotalOtros.Value := Redondeo(qrCobroTotalOtros.Value + qformacobros.Fields[3].AsFloat);
            end;

          if (qformacobros.FieldByName('FormaDePagoId').AsString = 'TP') then
            Begin
              qrCobroTotalTPago.Value := Redondeo(qformacobros.Fields[3].AsFloat);
              qrCobroTotalOtros.Value := Redondeo(qrCobroTotalOtros.Value + qformacobros.Fields[3].AsFloat);
            end;

          if (qformacobros.FieldByName('FormaDePagoId').AsString = 'NC') then
            Begin
              qrCobroCardDebito.Value := Redondeo(qformacobros.Fields[3].AsFloat);
              qrCobroTotalOtros.Value := Redondeo(qrCobroTotalOtros.Value + qformacobros.Fields[3].AsFloat);
            end;

          if (qformacobros.FieldByName('FormaDePagoId').AsString = 'TB') then
            Begin
              qrCobroCardDebito.Value := Redondeo(qformacobros.Fields[3].AsFloat);
              qrCobroTotalOtros.Value := Redondeo(qrCobroTotalOtros.Value + qformacobros.Fields[3].AsFloat);
            end;

          qformacobros.Next;
        end;
      end;

    FreeAndNil(qformacobros);
   end;
end;


procedure TDM.qrCorteCajaDetRepCalcFields(DataSet: TDataSet);
Var
  qfindSucursal : TADOQuery;
begin
  qrCorteCajaDetRepPendientexPagar.Value := Redondeo(qrCorteCajaDetRep.FieldByName('Total_Contado').Value -
                                                     qrCorteCajaDetRep.FieldByName('Cobros_Today').Value);

  qrCorteCajaDetRepLbDiferenciaPesos.Value := '';
  qrCorteCajaDetRepLbDiferenciaDollar.Value := '';

  qfindSucursal := DM.Find_Ldr('SELECT Nombre FROM PTSucursal (nolock) WHERE SucursalId = :suc', qrCorteCajaDetRepSucursalId.Value);
  qrCorteCajaDetRepSucursal.Value := qfindSucursal.FieldByName('Nombre').AsString;
  FreeAndNil(qfindSucursal);

  qrCorteCajaDetRepDiferenciaPesos.Value := Redondeo(qrCorteCajaDetRep.FieldByName('Efectivo_Reportado').Value -
                                                     qrCorteCajaDetRep.FieldByName('Total_ContRD').Value);

  qrCorteCajaDetRepDiferenciaDollar.Value := Redondeo(qrCorteCajaDetRep.FieldByName('Dollares_Reportado').Value -
                                                      qrCorteCajaDetRep.FieldByName('Total_ContUS').Value);

  if (qrCorteCajaDetRepDiferenciaPesos.Value >= 0.01) then
    qrCorteCajaDetRepLbDiferenciaPesos.Value := 'S O B R A N T E (RD$) ';

  if (qrCorteCajaDetRepDiferenciaPesos.Value <= -0.01) then
    qrCorteCajaDetRepLbDiferenciaPesos.Value := 'F A L T A N T E (RD$) ';

  if (qrCorteCajaDetRepDiferenciaDollar.Value >= 0.01) then
    qrCorteCajaDetRepLbDiferenciaDollar.Value := 'S O B R A N T E (US$) ';

  if (qrCorteCajaDetRepDiferenciaDollar.Value <= -0.01) then
    qrCorteCajaDetRepLbDiferenciaDollar.Value := 'F A L T A N T E (US$) ';

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

  qrCorteCajaDetRepPendientexPagarUno.Value := Redondeo(qrCorteCajaDetRep.FieldByName('Total_Contado_Uno').Value -
                                                        qrCorteCajaDetRep.FieldByName('Cobros_Today_Uno').Value);

  qrCorteCajaDetRepLbDiferenciaPesosUno.Value := '';
  qrCorteCajaDetRepLbDiferenciaDollarUno.Value := '';

  qrCorteCajaDetRepDiferenciaPesosUno.Value := Redondeo(qrCorteCajaDetRep.FieldByName('Efectivo_Reportado').Value -
                                                        qrCorteCajaDetRep.FieldByName('Total_ContRD_Uno').Value);

  qrCorteCajaDetRepDiferenciaDollarUno.Value := Redondeo(qrCorteCajaDetRep.FieldByName('Dollares_Reportado').Value -
                                                         qrCorteCajaDetRep.FieldByName('Total_ContUS_Uno').Value);

  if (qrCorteCajaDetRepDiferenciaPesosUno.Value >= 0.01) then
    qrCorteCajaDetRepLbDiferenciaPesosUno.Value := 'S O B R A N T E (RD$) ';

  if (qrCorteCajaDetRepDiferenciaPesosUno.Value <= -0.01) then
    qrCorteCajaDetRepLbDiferenciaPesosUno.Value := 'F A L T A N T E (RD$) ';

  if (qrCorteCajaDetRepDiferenciaDollarUno.Value >= 0.01) then
    qrCorteCajaDetRepLbDiferenciaDollarUno.Value := 'S O B R A N T E (US$) ';

  if (qrCorteCajaDetRepDiferenciaDollarUno.Value <= -0.01) then
    qrCorteCajaDetRepLbDiferenciaDollarUno.Value := 'F A L T A N T E (US$) ';

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
///
///
  If DM.Filtro_UnoDos =1 then
  begin
      qrCorteCajaDetRepTotal_Bruto_Dos.Value := (Redondeo(qrCorteCajaDetRep.FieldByName('Total_Bruto_Dos').Value +
                                                            qrCorteCajaDetRep.FieldByName('Total_Bruto_Tres').Value));

      qrCorteCajaDetRepTotal_Gastos_Dos.Value := (Redondeo(qrCorteCajaDetRep.FieldByName('Total_Gastos_Dos').Value +
                                                            qrCorteCajaDetRep.FieldByName('Total_Gastos_Tres').Value));

      qrCorteCajaDetRepTotal_Cobertura_Dos.Value := (Redondeo(qrCorteCajaDetRep.FieldByName('Total_Cobertura_Dos').Value +
                                                            qrCorteCajaDetRep.FieldByName('Total_Cobertura_Tres').Value));

      qrCorteCajaDetRepTotal_Descuento_Dos.Value := (Redondeo(qrCorteCajaDetRep.FieldByName('Total_Descuento_Dos').Value +
                                                            qrCorteCajaDetRep.FieldByName('Total_Descuento_Tres').Value));

      qrCorteCajaDetRepTotal_Credito_Dos.Value := (Redondeo(qrCorteCajaDetRep.FieldByName('Total_Credito_Dos').Value +
                                                            qrCorteCajaDetRep.FieldByName('Total_Credito_Tres').Value));

      qrCorteCajaDetRepTotal_Contado_Dos.Value := (Redondeo(qrCorteCajaDetRep.FieldByName('Total_Contado_Dos').Value +
                                                            qrCorteCajaDetRep.FieldByName('Total_Contado_Tres').Value));

      qrCorteCajaDetRepTotal_VtaRD_Dos.Value := (Redondeo(qrCorteCajaDetRep.FieldByName('Total_VtaRD_Dos').Value +
                                                            qrCorteCajaDetRep.FieldByName('Total_VtaRD_Tres').Value));

      qrCorteCajaDetRepTotal_PagoRD_Dos.Value := (Redondeo(qrCorteCajaDetRep.FieldByName('Total_PagoRD_Dos').Value +
                                                            qrCorteCajaDetRep.FieldByName('Total_PagoRD_Tres').Value));

      qrCorteCajaDetRepTotal_ContRD_Dos.Value := (Redondeo(qrCorteCajaDetRep.FieldByName('Total_ContRD_Dos').Value +
                                                            qrCorteCajaDetRep.FieldByName('Total_ContRD_Tres').Value));

      qrCorteCajaDetRepPendientexPagarDos.Value := (Redondeo(qrCorteCajaDetRep.FieldByName('Total_Contado_Dos').Value -
                                                            qrCorteCajaDetRep.FieldByName('Cobros_Today_Dos').Value))+
                                                   (Redondeo(qrCorteCajaDetRep.FieldByName('Total_Contado_Tres').Value -
                                                            qrCorteCajaDetRep.FieldByName('Cobros_Today_Tres').Value));

      qrCorteCajaDetRepLbDiferenciaPesosDos.Value := '';
      qrCorteCajaDetRepLbDiferenciaDollarDos.Value := '';
      qrCorteCajaDetRepLbDiferenciaPesosTres.Value := '';
      qrCorteCajaDetRepLbDiferenciaDollarTres.Value := '';

      qrCorteCajaDetRepDiferenciaPesosDos.Value := (Redondeo(qrCorteCajaDetRep.FieldByName('Efectivo_Reportado').Value -
                                                            qrCorteCajaDetRep.FieldByName('Total_ContRD_Dos').Value))+
                                                   (Redondeo(qrCorteCajaDetRep.FieldByName('Efectivo_Reportado').Value -
                                                            qrCorteCajaDetRep.FieldByName('Total_ContRD_Tres').Value));

      qrCorteCajaDetRepDiferenciaDollarDos.Value := Redondeo(qrCorteCajaDetRep.FieldByName('Dollares_Reportado').Value -
                                                             qrCorteCajaDetRep.FieldByName('Total_ContUS_Dos').Value);

      if (qrCorteCajaDetRepDiferenciaPesosDos.Value >= 0.01) then
        qrCorteCajaDetRepLbDiferenciaPesosDos.Value := 'S O B R A N T E (RD$) ';

      if (qrCorteCajaDetRepDiferenciaPesosDos.Value <= -0.01) then
        qrCorteCajaDetRepLbDiferenciaPesosDos.Value := 'F A L T A N T E (RD$) ';

      if (qrCorteCajaDetRepDiferenciaDollarDos.Value >= 0.01) then
        qrCorteCajaDetRepLbDiferenciaDollarDos.Value := 'S O B R A N T E (US$) ';

      if (qrCorteCajaDetRepDiferenciaDollarDos.Value <= -0.01) then
        qrCorteCajaDetRepLbDiferenciaDollarDos.Value := 'F A L T A N T E (US$) ';
  end
  else
  If DM.Filtro_UnoDos = 0 then
  begin
      qrCorteCajaDetRepPendientexPagarDos.Value := Redondeo(qrCorteCajaDetRep.FieldByName('Total_Contado_Dos').Value -
                                                            qrCorteCajaDetRep.FieldByName('Cobros_Today_Dos').Value);

      qrCorteCajaDetRepLbDiferenciaPesosDos.Value := '';
      qrCorteCajaDetRepLbDiferenciaDollarDos.Value := '';

      qrCorteCajaDetRepDiferenciaPesosDos.Value := Redondeo(qrCorteCajaDetRep.FieldByName('Efectivo_Reportado').Value -
                                                            qrCorteCajaDetRep.FieldByName('Total_ContRD_Dos').Value);

      qrCorteCajaDetRepDiferenciaDollarDos.Value := Redondeo(qrCorteCajaDetRep.FieldByName('Dollares_Reportado').Value -
                                                             qrCorteCajaDetRep.FieldByName('Total_ContUS_Dos').Value);

      if (qrCorteCajaDetRepDiferenciaPesosDos.Value >= 0.01) then
        qrCorteCajaDetRepLbDiferenciaPesosDos.Value := 'S O B R A N T E (RD$) ';

      if (qrCorteCajaDetRepDiferenciaPesosDos.Value <= -0.01) then
        qrCorteCajaDetRepLbDiferenciaPesosDos.Value := 'F A L T A N T E (RD$) ';

      if (qrCorteCajaDetRepDiferenciaDollarDos.Value >= 0.01) then
        qrCorteCajaDetRepLbDiferenciaDollarDos.Value := 'S O B R A N T E (US$) ';

      if (qrCorteCajaDetRepDiferenciaDollarDos.Value <= -0.01) then
        qrCorteCajaDetRepLbDiferenciaDollarDos.Value := 'F A L T A N T E (US$) ';

      qrCorteCajaDetRepPendientexPagarTres.Value := Redondeo(qrCorteCajaDetRep.FieldByName('Total_Contado_Tres').Value -
                                                            qrCorteCajaDetRep.FieldByName('Cobros_Today_Tres').Value);

      qrCorteCajaDetRepLbDiferenciaPesosTres.Value := '';
      qrCorteCajaDetRepLbDiferenciaDollarTres.Value := '';

      qrCorteCajaDetRepDiferenciaPesosTres.Value :=  Redondeo(qrCorteCajaDetRep.FieldByName('Efectivo_Reportado').Value -
                                                            qrCorteCajaDetRep.FieldByName('Total_ContRD_Tres').Value);

      qrCorteCajaDetRepDiferenciaDollarTres.Value := 0;//Redondeo(qrCorteCajaDetRep.FieldByName('Dollares_Reportado_Tres').Value -
                                                     //        qrCorteCajaDetRep.FieldByName('Total_ContUS_Tres').Value);
      if (qrCorteCajaDetRepDiferenciaPesosTres.Value >= 0.01) then
        qrCorteCajaDetRepLbDiferenciaPesosTres.Value := 'S O B R A N T E (RD$) ';

      if (qrCorteCajaDetRepDiferenciaPesosTres.Value <= -0.01) then
        qrCorteCajaDetRepLbDiferenciaPesosTres.Value := 'F A L T A N T E (RD$) ';

      if (qrCorteCajaDetRepDiferenciaDollarTres.Value >= 0.01) then
        qrCorteCajaDetRepLbDiferenciaDollarTres.Value := 'S O B R A N T E (US$) ';

      if (qrCorteCajaDetRepDiferenciaDollarTres.Value <= -0.01) then
        qrCorteCajaDetRepLbDiferenciaDollarTres.Value := 'F A L T A N T E (US$) ';
  end;

end;


procedure TDM.qrCorteSucursalCalcFields(DataSet: TDataSet);
Var
  _texto, texto  : String;
  qrEfectivo : TADOQuery;
  qformacobros : TADOQuery;
begin
 qrCorteSucursalTotalEfectivo.Value := 0;
 qrCorteSucursalCardCredito.Value := 0;
 qrCorteSucursalCardDebito.Value := 0;
 qrCorteSucursalTotalCheque.Value := 0;
 qrCorteSucursalTotalDollares.Value := 0;
 qrCorteSucursalTotalOtros.Value := 0;
 qrCorteSucursalTotalTarjetas.Value := 0;
 qrCorteSucursalTotalNormal.Value := 0;
 qrCorteSucursalTotalFiltro.Value := 0;

 If (Cuadre_Imp <> 'FISCAL') And (Cuadre_Imp <> 'FILTRO') And (Cuadre_Imp <> 'FILTRO_DOS') Then
   Begin
     _texto := ' SELECT CorteID, Usuario, MonedaId, FormaDePagoId, '+
               ' SUM(Valor) AS Valor, SUM(ValorMST) AS ValorMST '+
               ' FROM PTCorteSucursal (nolock) '+
               ' WHERE CorteID = :num '+
               ' AND Usuario = :usr '+
               ' GROUP BY CorteID, Usuario, MonedaId, FormaDePagoId '+
               ' ORDER BY CorteID, Usuario, MonedaId, FormaDePagoId ';
   End;

 If (Cuadre_Imp = 'FISCAL') Then
   Begin
     _texto := ' SELECT CorteID, Usuario, MonedaId, FormaDePagoId, '+
               ' SUM(Valor) AS Valor, SUM(ValorMST) AS ValorMST '+
               ' FROM PTCorteSucursal (nolock)'+
               ' WHERE CorteID = :num '+
               ' AND Usuario = :usr '+
               ' AND SinPrFilter = 0 '+
               ' GROUP BY CorteID, Usuario, MonedaId, FormaDePagoId '+
               ' ORDER BY CorteID, Usuario, MonedaId, FormaDePagoId ';
   End;
  If DM.Filtro_UnoDos =1 then
  begin
     If (Cuadre_Imp = 'FILTRO') Then
       Begin
         _texto := ' SELECT CorteID, Usuario, MonedaId, FormaDePagoId, '+
                   ' SUM(Valor) AS Valor, SUM(ValorMST) AS ValorMST '+
                   ' FROM PTCorteSucursal (nolock)'+
                   ' WHERE CorteID = :num '+
                   ' AND Usuario = :usr '+
                   ' AND SinPrFilter in (1,2) '+
                   ' GROUP BY CorteID, Usuario, MonedaId, FormaDePagoId '+
                   ' ORDER BY CorteID, Usuario, MonedaId, FormaDePagoId ';
       End;
  end
  else If DM.Filtro_UnoDos =0 then
  begin
     If (Cuadre_Imp = 'FILTRO') Then
       Begin
         _texto := ' SELECT CorteID, Usuario, MonedaId, FormaDePagoId, '+
                   ' SUM(Valor) AS Valor, SUM(ValorMST) AS ValorMST '+
                   ' FROM PTCorteSucursal (nolock)'+
                   ' WHERE CorteID = :num '+
                   ' AND Usuario = :usr '+
                   ' AND SinPrFilter = 1 '+
                   ' GROUP BY CorteID, Usuario, MonedaId, FormaDePagoId '+
                   ' ORDER BY CorteID, Usuario, MonedaId, FormaDePagoId ';
       End;
     If (Cuadre_Imp = 'FILTRO_DOS') Then
       Begin
         _texto := ' SELECT CorteID, Usuario, MonedaId, FormaDePagoId, '+
                   ' SUM(Valor) AS Valor, SUM(ValorMST) AS ValorMST '+
                   ' FROM PTCorteSucursal (nolock)'+
                   ' WHERE CorteID = :num '+
                   ' AND Usuario = :usr '+
                   ' AND SinPrFilter = 2 '+
                   ' GROUP BY CorteID, Usuario, MonedaId, FormaDePagoId '+
                   ' ORDER BY CorteID, Usuario, MonedaId, FormaDePagoId ';
       End;
  end;

 if (Cobro_Var <> 'Cualquier Cosa') then
   Begin
    qrEfectivo := DM.NewQuery;
    qformacobros := DM.NewQuery;
    qformacobros.close;
    qformacobros.sql.Text := _texto;
    qformacobros.Parameters.ParamByName('num').Value := DM.qrCorteSucursal.FieldByName('CorteId').AsString;
    qformacobros.Parameters.ParamByName('usr').Value := DM.qrCorteSucursal.FieldByName('Usuario').AsString;
    qformacobros.Active := True;

    if (qformacobros.RecordCount > 0) then
      Begin
       qformacobros.First;
       While Not qformacobros.Eof do
        Begin
          if (qformacobros.FieldByName('FormaDePagoId').AsString = 'EFE')
          or (qformacobros.FieldByName('FormaDePagoId').AsString = 'CK') then
            Begin
              If (qformacobros.FieldByName('FormaDePagoId').AsString = 'EFE') then
              begin
                  qrCorteSucursalTotalEfectivo.Value := Redondeo(qrCorteSucursalTotalEfectivo.Value +
                                                             qformacobros.FieldByName('Valor').AsFloat);
              end;
              qrEfectivo.Close;
              qrEfectivo.SQL.Text := ' SELECT CorteID, Usuario, MonedaId, FormaDePagoId, SinPrFilter, '+
                                     ' SUM(Valor) AS Valor, SUM(ValorMST) AS ValorMST '+
                                     ' FROM PTCorteSucursal (nolock) '+
                                     ' WHERE CorteID = :num '+
                                     ' AND Usuario = :usr '+
                                     ' AND FormaDePagoId = :frm '+
                                     ' GROUP BY CorteID, Usuario, MonedaId, FormaDePagoId, SinPrFilter '+
                                     ' ORDER BY CorteID, Usuario, MonedaId, FormaDePagoId, SinPrFilter ';
              qrEfectivo.Parameters.ParamByName('num').Value := DM.qrCorteSucursal.FieldByName('CorteId').AsString;
              qrEfectivo.Parameters.ParamByName('usr').Value := DM.qrCorteSucursal.FieldByName('Usuario').AsString;
              qrEfectivo.Parameters.ParamByName('frm').Value := qformacobros.FieldByName('FormaDePagoId').AsString;
              qrEfectivo.Active := True;
              While Not qrEfectivo.Eof do
              Begin
                if (qrEfectivo.FieldByName('SinPrFilter').AsInteger = 0) then
                  Begin
                    qrCorteSucursalTotalNormal.Value := Redondeo(qrCorteSucursalTotalNormal.Value +
                                                                 qrEfectivo.FieldByName('Valor').AsFloat)
                  end;

                If DM.Filtro_UnoDos =1 then
                begin
                  ppdbText724.Visible := False;
                  ppdbCalc123.Visible := False;
                  if (qrEfectivo.FieldByName('SinPrFilter').AsInteger = 1) then
                    Begin
                      qrCorteSucursalTotalFiltro.Value := Redondeo(qrCorteSucursalTotalFiltro.Value +
                                                                   qrEfectivo.FieldByName('Valor').AsFloat);
                    end;

                  if (qrEfectivo.FieldByName('SinPrFilter').AsInteger = 2) then
                    Begin
                      qrCorteSucursalTotalFiltro.Value :=  Redondeo(qrCorteSucursalTotalFiltro.Value +
                                                                   qrEfectivo.FieldByName('Valor').AsFloat);
                    end;
                end
                else If DM.Filtro_UnoDos =0 then
                begin
                  if (qrEfectivo.FieldByName('SinPrFilter').AsInteger = 1) then
                    Begin
                      qrCorteSucursalTotalFiltro.Value := Redondeo(qrCorteSucursalTotalFiltro.Value +
                                                                   qrEfectivo.FieldByName('Valor').AsFloat);
                    end;

                  if (qrEfectivo.FieldByName('SinPrFilter').AsInteger = 2) then
                    Begin
                      qrCorteSucursalTotalFiltro_Dos.Value := Redondeo(qrCorteSucursalTotalFiltro_Dos.Value +
                                                                   qrEfectivo.FieldByName('Valor').AsFloat);
                    end;

                end;
                qrEfectivo.Next;
              end;
            If (qformacobros.FieldByName('FormaDePagoId').AsString = 'CK') then
            begin
                    qrCorteSucursalTotalNormal.Value := Redondeo(qrCorteSucursalTotalNormal.Value +
                                                                 qrCorteSucursalTotalCheque.Value)
            end
         end;

          if (qformacobros.FieldByName('FormaDePagoId').AsString = 'TC') then
            begin
              qrCorteSucursalCardCredito.Value := Redondeo(qrCorteSucursalCardCredito.Value +
                                                           qformacobros.FieldByName('Valor').AsFloat);

              qrCorteSucursalTotalTarjetas.Value := Redondeo(qrCorteSucursalTotalTarjetas.Value +
                                                             qformacobros.FieldByName('Valor').AsFloat);
            end;

          if (qformacobros.FieldByName('FormaDePagoId').AsString = 'TD') then
            begin
              qrCorteSucursalCardDebito.Value := Redondeo(qrCorteSucursalCardDebito.Value +
                                                          qformacobros.FieldByName('Valor').AsFloat);

              qrCorteSucursalTotalTarjetas.Value := Redondeo(qrCorteSucursalTotalTarjetas.Value +
                                                             qformacobros.FieldByName('Valor').AsFloat);
            end;

          if (qformacobros.FieldByName('FormaDePagoId').AsString = 'CK') then
            begin
              qrCorteSucursalTotalCheque.Value := Redondeo(qrCorteSucursalTotalCheque.Value +
                                                           qformacobros.FieldByName('Valor').AsFloat);

              qrCorteSucursalTotalOtros.Value := Redondeo(qrCorteSucursalTotalOtros.Value +
                                                          qformacobros.FieldByName('Valor').AsFloat);
            end;
          if (qformacobros.FieldByName('FormaDePagoId').AsString = 'TP') then
            begin
              qrCorteSucursalTotalTPago.Value := Redondeo(qrCorteSucursalTotalTPago.Value +
                                                           qformacobros.FieldByName('Valor').AsFloat);

              qrCorteSucursalTotalOtros.Value := Redondeo(qrCorteSucursalTotalOtros.Value +
                                                          qformacobros.FieldByName('Valor').AsFloat);
            end;

          if (qformacobros.FieldByName('FormaDePagoId').AsString = 'NC') then
            begin
              qrCorteSucursalTotalOtros.Value := Redondeo(qrCorteSucursalTotalOtros.Value +
                                                          qformacobros.FieldByName('Valor').AsFloat);
            end;

          if (qformacobros.FieldByName('FormaDePagoId').AsString = 'TB') then
            begin
              qrCorteSucursalTotalOtros.Value := Redondeo(qrCorteSucursalTotalOtros.Value +
                                                          qformacobros.FieldByName('Valor').AsFloat);
            end;

          if (qformacobros.FieldByName('FormaDePagoId').AsString = 'CASH') then
            qrCorteSucursalTotalDollares.Value := Redondeo(qrCorteSucursalTotalDollares.Value +
                                                           qformacobros.FieldByName('Valor').AsFloat);

          qformacobros.Next;
        end;
      end;

    FreeAndNil(qrEfectivo);
    FreeAndNil(qformacobros);
   end;
end;


procedure TDM.qrCorteDepositoCalcFields(DataSet: TDataSet);
Var
  _texto, texto  : String;
  qrEfectivo : TADOQuery;
  qformacobros : TADOQuery;
begin
 qrCorteDepositoTotalEfectivo.Value := 0;
 qrCorteDepositoCardCredito.Value := 0;
 qrCorteDepositoCardDebito.Value := 0;
 qrCorteDepositoTotalCheque.Value := 0;
 qrCorteDepositoTotalDollares.Value := 0;
 qrCorteDepositoTotalOtros.Value := 0;
 qrCorteDepositoTotalTarjetas.Value := 0;
 qrCorteDepositoTotalNormal.Value := 0;
 qrCorteDepositoTotalFiltro.Value := 0;
 qrCorteDepositoTotalFiltro_Dos.Value := 0;

 _texto := ' SELECT SucursalId, CorteID, Usuario, FormaDePagoId, '+
           ' SUM(Valor) AS Valor, SUM(ValorMST) AS ValorMST '+
           ' FROM PTCorteSucursalDeposito (nolock) '+
           ' WHERE SucursalId = :suc '+
           ' AND CorteID = :num '+
           ' AND Usuario = :usr '+
           ' GROUP BY SucursalId, CorteID, Usuario, FormaDePagoId '+
           ' ORDER BY SucursalId, CorteID, Usuario, FormaDePagoId ';

 if (Cobro_Var <> 'Cualquier Cosa') then
   Begin
    qrEfectivo := DM.NewQuery;

    qformacobros := DM.NewQuery;
    qformacobros.close;
    qformacobros.sql.Text := _texto;
    qformacobros.Parameters.ParamByName('suc').Value := DM.qrCorteDeposito.FieldByName('SucursalId').AsString;
    qformacobros.Parameters.ParamByName('num').Value := DM.qrCorteDeposito.FieldByName('CorteId').AsString;
    qformacobros.Parameters.ParamByName('usr').Value := DM.qrCorteDeposito.FieldByName('Usuario').AsString;
    qformacobros.Active := True;

    if (qformacobros.RecordCount > 0) then
      Begin
       qformacobros.First;
       While Not qformacobros.Eof do
        Begin
          if (qformacobros.FieldByName('FormaDePagoId').AsString = 'EFE') then
            Begin
              qrCorteDepositoTotalEfectivo.Value := Redondeo(qrCorteDepositoTotalEfectivo.Value +
                                                             qformacobros.FieldByName('Valor').AsFloat);

              qrEfectivo.Close;
              qrEfectivo.SQL.Text := ' SELECT SucursalId, CorteID, Usuario, FormaDePagoId, SinPrFilter, '+
                                     ' SUM(Valor) AS Valor, SUM(ValorMST) AS ValorMST '+
                                     ' FROM PTCorteSucursalDeposito (nolock) '+
                                     ' WHERE CorteID = :num '+
                                     ' AND Usuario = :usr '+
                                     ' AND FormaDePagoId = :frm '+
                                     ' GROUP BY SucursalId, CorteID, Usuario, FormaDePagoId, SinPrFilter '+
                                     ' ORDER BY SucursalId, CorteID, Usuario, FormaDePagoId, SinPrFilter ';
              qrEfectivo.Parameters.ParamByName('num').Value := DM.qrCorteDeposito.FieldByName('CorteId').AsString;
              qrEfectivo.Parameters.ParamByName('usr').Value := DM.qrCorteDeposito.FieldByName('Usuario').AsString;
              qrEfectivo.Parameters.ParamByName('frm').Value := 'EFE';
              qrEfectivo.Active := True;

              qrEfectivo.First;
              While Not qrEfectivo.Eof do
               Begin
                if (qrEfectivo.FieldByName('SinPrFilter').AsInteger = 0) then
                  Begin
                    qrCorteDepositoTotalNormal.Value := Redondeo(qrCorteDepositoTotalNormal.Value +
                                                                 qrEfectivo.FieldByName('Valor').AsFloat+
                                                                 qrCorteSucursalTotalCheque.Value);
                  end;
                  If DM.Filtro_UnoDos =1 then
                  begin
                    if (qrEfectivo.FieldByName('SinPrFilter').AsInteger = 1) then
                      Begin
                        qrCorteDepositoTotalFiltro.Value := Redondeo(qrCorteDepositoTotalFiltro.Value +
                                                                     qrEfectivo.FieldByName('Valor').AsFloat);
                      end;

                    if (qrEfectivo.FieldByName('SinPrFilter').AsInteger = 2) then
                      Begin
                        qrCorteDepositoTotalFiltro.Value := qrCorteDepositoTotalFiltro.Value + Redondeo(qrCorteDepositoTotalFiltro_Dos.Value +
                                                                     qrEfectivo.FieldByName('Valor').AsFloat);
                      end;
                  end
                  Else  If DM.Filtro_UnoDos =0 then
                  begin
                    if (qrEfectivo.FieldByName('SinPrFilter').AsInteger = 1) then
                      Begin
                        qrCorteDepositoTotalFiltro.Value := Redondeo(qrCorteDepositoTotalFiltro.Value +
                                                                     qrEfectivo.FieldByName('Valor').AsFloat);
                      end;

                    if (qrEfectivo.FieldByName('SinPrFilter').AsInteger = 2) then
                      Begin
                        qrCorteDepositoTotalFiltro_Dos.Value := Redondeo(qrCorteDepositoTotalFiltro_Dos.Value +
                                                                     qrEfectivo.FieldByName('Valor').AsFloat);
                      end;
                  end;
                 qrEfectivo.Next;
               end;
            end;

          if (qformacobros.FieldByName('FormaDePagoId').AsString = 'TC') then
            begin
              qrCorteDepositoCardCredito.Value := Redondeo(qrCorteDepositoCardCredito.Value +
                                                           qformacobros.FieldByName('Valor').AsFloat);

              qrCorteDepositoTotalTarjetas.Value := Redondeo(qrCorteDepositoTotalTarjetas.Value +
                                                             qformacobros.FieldByName('Valor').AsFloat);
            end;

          if (qformacobros.FieldByName('FormaDePagoId').AsString = 'TD') then
            begin
              qrCorteDepositoCardDebito.Value := Redondeo(qrCorteDepositoCardDebito.Value +
                                                          qformacobros.FieldByName('Valor').AsFloat);

              qrCorteDepositoTotalTarjetas.Value := Redondeo(qrCorteDepositoTotalTarjetas.Value +
                                                             qformacobros.FieldByName('Valor').AsFloat);
            end;

          if (qformacobros.FieldByName('FormaDePagoId').AsString = 'CK') then
            begin
              qrCorteDepositoTotalCheque.Value := Redondeo(qrCorteDepositoTotalCheque.Value +
                                                           qformacobros.FieldByName('Valor').AsFloat);

              qrCorteDepositoTotalOtros.Value := Redondeo(qrCorteDepositoTotalOtros.Value +
                                                          qformacobros.FieldByName('Valor').AsFloat);
            end;

          if (qformacobros.FieldByName('FormaDePagoId').AsString = 'TP') then
            begin
              qrCorteDepositoTotalTPago.Value := Redondeo(qrCorteDepositoTotalTPago.Value +
                                                           qformacobros.FieldByName('Valor').AsFloat);

              qrCorteDepositoTotalOtros.Value := Redondeo(qrCorteDepositoTotalOtros.Value +
                                                          qformacobros.FieldByName('Valor').AsFloat);
            end;

          if (qformacobros.FieldByName('FormaDePagoId').AsString = 'NC') then
            begin
              qrCorteDepositoTotalOtros.Value := Redondeo(qrCorteDepositoTotalOtros.Value +
                                                          qformacobros.FieldByName('Valor').AsFloat);
            end;

          if (qformacobros.FieldByName('FormaDePagoId').AsString = 'TB') then
            begin
              qrCorteDepositoTotalOtros.Value := Redondeo(qrCorteDepositoTotalOtros.Value +
                                                          qformacobros.FieldByName('Valor').AsFloat);
            end;

          if (qformacobros.FieldByName('FormaDePagoId').AsString = 'CASH') then
            qrCorteDepositoTotalDollares.Value := Redondeo(qrCorteDepositoTotalDollares.Value +
                                                           qformacobros.FieldByName('Valor').AsFloat);

          qformacobros.Next;
        end;
      end;

    FreeAndNil(qrEfectivo);
    FreeAndNil(qformacobros);
   end;
end;


procedure TDM.qrCorteGlobalCalcFields(DataSet: TDataSet);
Var
  _texto, texto  : String;
  qrCredito  : TADOQuery;
  qrEfectivo : TADOQuery;
  qformacobros : TADOQuery;
  qfindSucursal : TADOQuery;
begin
 qrCorteGlobalTotalEfectivo.Value := 0;
 qrCorteGlobalCardCredito.Value   := 0;
 qrCorteGlobalCardDebito.Value    := 0;
 qrCorteGlobalTotalCheque.Value   := 0;
 qrCorteGlobalTotalDollares.Value := 0;
 qrCorteGlobalTotalOtros.Value    := 0;
 qrCorteGlobalTotalTarjetas.Value := 0;
 qrCorteGlobalTotalNormal.Value   := 0;
 qrCorteGlobalTotalFiltro.Value   := 0;
 qrCorteGlobalTotalCredito.Value  := 0;
 qrCorteGlobalTotalIngreso.Value  := 0;
 qrParametro.close;
 qrParametro.Open;
 qfindSucursal := DM.Find_Ldr('SELECT Nombre FROM PTSucursal (nolock) WHERE SucursalId = :suc', qrCorteGlobalSucursalId.Value);
 qrCorteGlobalSucursal.Value := qfindSucursal.FieldByName('Nombre').AsString;
 FreeAndNil(qfindSucursal);
// Incluir Total Credito = Monto a Cubrir por el Seguro + Entradas a Cr�dito
 _texto := 'Select SUM(Total_Cobertura)+Sum(Total_Credito) As Total_Credito from PTCorteCajaCab (nolock) '+
           ' Where Sucursalid = :suc '+
           ' And Fecha        = '+#39+FormatDateTime('yyyymmdd',  DM.qrCorteGlobal.FieldByName('Fecha').AsDateTime)+#39+
           ' And Usuario      = '+#39+'SUCURSAL'+#39;
 qrCredito := DM.NewQuery;
 qrCredito.close;
 qrCredito.sql.Text := _texto;
 qrCredito.Parameters.ParamByName('suc').Value := DM.qrCorteGlobal.FieldByName('SucursalId').AsString;
// qrCredito.Parameters.ParamByName('fec').Value := DM.qrCorteGlobal.FieldByName('Fecha').AsDateTime;
 qrCredito.Active := True;
 qrCorteGlobalTotalCredito.Value  := qrCredito.FieldByName('Total_Credito').Value;
 qrCorteGlobalTotalIngreso.Value  := Redondeo(qrCorteGlobalTotalIngreso.Value +
                                                       qrCredito.FieldByName('Total_Credito').Value);

 FreeAndNil(qrCredito);
 if intCorteCuadre = 0 then
 begin
     _texto := ' SELECT SucursalId, Fecha, FormaDePagoId, '+
               ' SUM(Valor) AS Valor, SUM(ValorMST) AS ValorMST '+
               ' FROM PTCorteSucursalGlobal (nolock) '+
               ' WHERE SucursalId = :suc '+
               ' AND Fecha = '+#39+FormatDateTime('yyyymmdd',  DM.qrCorteGlobal.FieldByName('Fecha').AsDateTime)+#39+
               ' GROUP BY SucursalId, Fecha, FormaDePagoId '+
               ' ORDER BY SucursalId, Fecha, FormaDePagoId ';
 end
 else
 begin
     _texto := ' SELECT SucursalId, Fecha, FormaDePagoId, '+
               ' SUM(Valor) AS Valor, SUM(ValorMST) AS ValorMST '+
               ' FROM PTCorteSucursalGlobal (nolock) '+
               ' WHERE SucursalId = :suc '+
               ' AND Fecha = '+#39+FormatDateTime('yyyymmdd',  DM.qrCorteGlobal.FieldByName('Fecha').AsDateTime)+#39+
               ' AND CorteID ='+inttostr(intCorteCuadre)+
               ' GROUP BY SucursalId, Fecha, FormaDePagoId '+
               ' ORDER BY SucursalId, Fecha, FormaDePagoId ';
 end;

 qrEfectivo := DM.NewQuery;

 qformacobros := DM.NewQuery;
 qformacobros.close;
 qformacobros.sql.Text := _texto;
 qformacobros.Parameters.ParamByName('suc').Value := DM.qrCorteGlobal.FieldByName('SucursalId').AsString;
// qformacobros.Parameters.ParamByName('fec').Value := DM.qrCorteGlobal.FieldByName('Fecha').AsDateTime;
 qformacobros.Active := True;

 if (qformacobros.RecordCount > 0) then
   Begin
    qformacobros.First;
    While Not qformacobros.Eof do
     Begin
      if (qformacobros.FieldByName('FormaDePagoId').AsString = 'EFE') then
        Begin
          qrCorteGlobalTotalEfectivo.Value := Redondeo(qrCorteGlobalTotalEfectivo.Value +
                                                       qformacobros.FieldByName('Valor').AsFloat);

          qrCorteGlobalTotalIngreso.Value  := Redondeo(qrCorteGlobalTotalIngreso.Value +
                                                       qformacobros.FieldByName('Valor').AsFloat);

          qrEfectivo.Close;
          if intCorteCuadre = 0 then
          begin
              qrEfectivo.SQL.Text := ' SELECT SucursalId, Fecha, FormaDePagoId, SinPrFilter, '+
                                     ' SUM(Valor) AS Valor, SUM(ValorMST) AS ValorMST '+
                                     ' FROM PTCorteSucursalGlobal (nolock) '+
                                     ' WHERE SucursalId = :suc '+
                                     ' AND Fecha = '+#39+FormatDateTime('yyyymmdd',  DM.qrCorteGlobal.FieldByName('Fecha').AsDateTime)+#39+
                                     ' AND FormaDePagoId = :frm '+
                                     ' GROUP BY SucursalId, Fecha, FormaDePagoId, SinPrFilter '+
                                     ' ORDER BY SucursalId, Fecha, FormaDePagoId, SinPrFilter ';
          end
          else
          begin
              qrEfectivo.SQL.Text := ' SELECT SucursalId, Fecha, FormaDePagoId, SinPrFilter, '+
                                     ' SUM(Valor) AS Valor, SUM(ValorMST) AS ValorMST '+
                                     ' FROM PTCorteSucursalGlobal (nolock)'+
                                     ' WHERE SucursalId = :suc '+
                                     ' AND Fecha = '+#39+FormatDateTime('yyyymmdd',  DM.qrCorteGlobal.FieldByName('Fecha').AsDateTime)+#39+
                                     ' AND FormaDePagoId = :frm '+
                                     ' AND CorteID ='+inttostr(intCorteCuadre)+
                                     ' GROUP BY SucursalId, Fecha, FormaDePagoId, SinPrFilter '+
                                     ' ORDER BY SucursalId, Fecha, FormaDePagoId, SinPrFilter ';
          end;
          qrEfectivo.Parameters.ParamByName('suc').Value := DM.qrCorteGlobal.FieldByName('SucursalId').AsString;
//          qrEfectivo.Parameters.ParamByName('fec').Value := DM.qrCorteGlobal.FieldByName('Fecha').AsDateTime;
          qrEfectivo.Parameters.ParamByName('frm').Value := 'EFE';
          qrEfectivo.Active := True;

          qrEfectivo.First;
          While Not qrEfectivo.Eof do
           Begin
            if (qrEfectivo.FieldByName('SinPrFilter').AsInteger = 0) then
              Begin
                qrCorteGlobalTotalNormal.Value := Redondeo(qrCorteGlobalTotalNormal.Value +
                                                           qrEfectivo.FieldByName('Valor').AsFloat);
//                                                           qrCorteGlobalTotalCheque.Value);
              end;
              If DM.Filtro_UnoDos =1 then
              begin
                  if (qrEfectivo.FieldByName('SinPrFilter').AsInteger = 1) then
                    Begin
                      qrCorteGlobalTotalFiltro.Value := Redondeo(qrCorteGlobalTotalFiltro.Value +
                                                                 qrEfectivo.FieldByName('Valor').AsFloat);
                    end;

                  if (qrEfectivo.FieldByName('SinPrFilter').AsInteger = 2) then
                    Begin
                      qrCorteGlobalTotalFiltro.Value := qrCorteGlobalTotalFiltro.Value + Redondeo(qrCorteGlobalTotalFiltro_Dos.Value +
                                                                 qrEfectivo.FieldByName('Valor').AsFloat);
                    end;
              end
              else If DM.Filtro_UnoDos =0 then
              begin
                  if (qrEfectivo.FieldByName('SinPrFilter').AsInteger = 1) then
                    Begin
                      qrCorteGlobalTotalFiltro.Value := Redondeo(qrCorteGlobalTotalFiltro.Value +
                                                                 qrEfectivo.FieldByName('Valor').AsFloat);
                    end;

                  if (qrEfectivo.FieldByName('SinPrFilter').AsInteger = 2) then
                    Begin
                      qrCorteGlobalTotalFiltro_Dos.Value := Redondeo(qrCorteGlobalTotalFiltro_Dos.Value +
                                                                 qrEfectivo.FieldByName('Valor').AsFloat);
                    end;
              end;

            qrEfectivo.Next;
           end;
        end;

      if (qformacobros.FieldByName('FormaDePagoId').AsString = 'TC') then
        begin
          qrCorteGlobalCardCredito.Value := Redondeo(qrCorteGlobalCardCredito.Value +
                                                     qformacobros.FieldByName('Valor').AsFloat);

          qrCorteGlobalTotalTarjetas.Value := Redondeo(qrCorteGlobalTotalTarjetas.Value +
                                                       qformacobros.FieldByName('Valor').AsFloat);

          qrCorteGlobalTotalIngreso.Value  := Redondeo(qrCorteGlobalTotalIngreso.Value +
                                                       qformacobros.FieldByName('Valor').AsFloat);
        end;

      if (qformacobros.FieldByName('FormaDePagoId').AsString = 'TD') then
        begin
          qrCorteGlobalCardDebito.Value := Redondeo(qrCorteGlobalCardDebito.Value +
                                                    qformacobros.FieldByName('Valor').AsFloat);

          qrCorteGlobalTotalTarjetas.Value := Redondeo(qrCorteGlobalTotalTarjetas.Value +
                                                       qformacobros.FieldByName('Valor').AsFloat);

          qrCorteGlobalTotalIngreso.Value  := Redondeo(qrCorteGlobalTotalIngreso.Value +
                                                       qformacobros.FieldByName('Valor').AsFloat);
        end;

      if (qformacobros.FieldByName('FormaDePagoId').AsString = 'CK') then
        begin
          qrCorteGlobalTotalCheque.Value := Redondeo(qrCorteGlobalTotalCheque.Value +
                                                     qformacobros.FieldByName('Valor').AsFloat);

          qrCorteGlobalTotalOtros.Value := Redondeo(qrCorteGlobalTotalOtros.Value +
                                                    qformacobros.FieldByName('Valor').AsFloat);
        end;
      if (qformacobros.FieldByName('FormaDePagoId').AsString = 'TP') then
        begin
          qrCorteGlobalTotalTPago.Value := Redondeo(qrCorteGlobalTotalTPago.Value +
                                                     qformacobros.FieldByName('Valor').AsFloat);

          qrCorteGlobalTotalOtros.Value := Redondeo(qrCorteGlobalTotalOtros.Value +
                                                    qformacobros.FieldByName('Valor').AsFloat);
        end;

      if (qformacobros.FieldByName('FormaDePagoId').AsString = 'NC') then
        begin
          qrCorteGlobalTotalOtros.Value := Redondeo(qrCorteGlobalTotalOtros.Value +
                                                    qformacobros.FieldByName('Valor').AsFloat);
        end;

      if (qformacobros.FieldByName('FormaDePagoId').AsString = 'TB') then
        begin
          qrCorteGlobalTotalOtros.Value := Redondeo(qrCorteGlobalTotalOtros.Value +
                                                    qformacobros.FieldByName('Valor').AsFloat);
        end;

      if (qformacobros.FieldByName('FormaDePagoId').AsString = 'CASH') then
      begin
        qrCorteGlobalTotalDollares.Value := Redondeo(qrCorteGlobalTotalDollares.Value +
                                                     qformacobros.FieldByName('Valor').AsFloat);

        qrCorteGlobalTotalCDollares.Value := Redondeo(qrCorteGlobalTotalCDollares.Value +
                                                     (qformacobros.FieldByName('Valor').AsFloat*(Tasa(DM.qrCorteGlobal.FieldByName('Fecha').AsDateTime,qrParametroMonedaDolares.value)/100)));

        qrCorteGlobalTotalIngreso.Value  := Redondeo(qrCorteGlobalTotalIngreso.Value +
                                                       qrCorteGlobalTotalCDollares.Value);
      end;
      qformacobros.Next;
     end;
   end;

 FreeAndNil(qrEfectivo);
 FreeAndNil(qformacobros);
end;

procedure TDM.qrEntradaCabRepCalcFields(DataSet: TDataSet);
begin
 qrEntradaCabRepTotalPendiente.Value := Redondeo(qrEntradaCabRepNeto.Value -
                                                 qrEntradaCabRepTotalPagado.Value);
end;

procedure TDM.qrEntradaClinicaCalcFields(DataSet: TDataSet);
begin
 DM.qrEntradaClinicaTotalPendiente.Value := Redondeo(DM.qrEntradaClinicaNeto.Value -
                                                     DM.qrEntradaClinicaTotalPagado.Value);
end;

procedure TDM.qrEntradaPacienteConsCalcFields(DataSet: TDataSet);
begin
 DM.qrEntradaPacienteConsTotalPendiente.Value := Redondeo(DM.qrEntradaPacienteConsNeto.Value -
                                                          DM.qrEntradaPacienteConsTotalPagado.Value);
end;


procedure TDM.qrParamNewRecord(DataSet: TDataSet);
begin
  qrParamInterface.Value := 0;
  qrParamMenuFont.Text := 'Tahoma';
  qrParamFormsFont.Text := 'Tahoma';
end;


procedure TDM.CheckOrSetCompanyName(Name : String);
begin
  qrParam.Close;
  qrParam.Open;
  if qrParamTituloEmpresa.Text <> Name then
   begin
    qrParam.Edit;
    qrParamTituloEmpresa.Text := Name;
    qrParam.Post;
   end;
end;


function TDM.NewQuery: TAdoQuery;
begin
  Result := TADOQuery.Create(Self);
  Result.Connection := DataBase;
end;

function TDM.NewDataSet: TADODataSet;
begin
  Result := TADODataSet.Create(Self);
  Result.Connection := DataBase;
end;

procedure TDM.NewQuery(var qrAdo: TADOQuery);
begin
  qrAdo := TADOQuery.Create(Self);
  qrAdo.Connection := DataBase;
end;

function TDM.il_No: Boolean;
begin
  Result := ( Copy(il_License, 8, 1 ) = '1' );
end;

procedure TDM.AppError(Texto           : string;
                       frozen          : boolean;
                       exceptObject    : TObject;
                       exceptAddr      : pointer;
                       crashedThreadId : dword;
                       var bugReport   : string;
                       var screenShot  : string;
                       var canContinue : boolean;
                       var handled     : boolean);
var
  bmp: TBitmap;
  EAlert: TJvDesktopAlert;
begin
  _frozen          := frozen;
  _exceptObject    := exceptObject;
  _exceptAddr      := exceptAddr;
  _crashedThreadId := crashedThreadId;
  _bugReport       := bugReport;
  _screenShot      := screenShot;
  _canContinue     := canContinue;
  _handled         := handled;
  EAlert := TJvDesktopAlert.Create(Self);
  EAlert.AutoFocus := True;
  EAlert.AutoFree := True;
  EAlert.Colors.CaptionFrom := $008080FF;
  EAlert.Colors.CaptionTo := clRed;
  EAlert.Colors.Frame := clMaroon;
  EAlert.Colors.WindowFrom := ColorErrorFrom;
  EAlert.Colors.WindowTo := ColorErrorTo;
  bmp := TBitmap.Create;
  ilMessages.GetBitmap(2,bmp);
  EAlert.Image.Assign(bmp);
  EAlert.HeaderText := 'Error de Excepci�n';
  EAlert.MessageText := Texto;
  EAlert.StyleOptions.DisplayDuration := 2800;
  EAlert.Location.Position := dapOwnerFormCenter;
  EAlert.Location.Height := Max(76,EAlert.Form.lblText.Height + 40);
  EAlert.OnMessageClick := ExceptionAlertMessageClick;
  EAlert.Execute;
  Beep;
end;


procedure TDM.ApplDb1AfterChangeDatabaseSettings(Sender: TObject);
begin
  FreeAndNil( frmApplDBChangeSettings );
end;


procedure TDM.ApplDbBeforeChangeDatabaseSettings(Sender: TObject);
begin
  frmApplDBChangeSettings := TfrmApplDBChangeSettings.Create(Self);
  frmApplDbChangeSettings.Show;
end;


procedure TDM.ApplDbChangeDatabaseSettingsProgress(Sender: TObject;
  PercentDone: Integer; var Continue: Boolean);
begin
  frmApplDBChangeSettings.pbProgress.Position := PercentDone;
  frmApplDBChangeSettings.Update;
end;


procedure TDM.ApplEmpresasNewRecord(DataSet: TDataSet);
begin
  ApplEmpresas.FieldByName('AccesoNT').Value := False;
end;


procedure TDM.ApplyLicenseFile;
var
  Log : String;
begin
  // Abrir archivo de licencia
  IceLicense.LicenseFile := SysApplFolder + '\Laboratorio.key';
  IceLicense.LicenseCode.LoadFromFile(iceLicense.LicenseFile);
  IceLicense.Run;
  // Se comento para permitir mas usuarios
{  if StrToInt(IceLicense.UserName) <> ApplDb.MaxConnections then begin
    ApplDb.Close;
    ApplDb.ChangeDatabaseSettings( Log, True, ApplDb.Password, ApplDb.CryptoAlgorithm, ApplDb.PageSize,
                                    ApplDb.PageCountInExtent, StrToInt( IceLicense.UserName ) );
    ApplDb.Open;
  end;
}
end;


procedure TDM.ExceptionAlertMessageClick(Sender: TObject);
begin
  // ShowException( _frozen, _exceptObject, _exceptAddr, _bugReport, _screenShot);
  ShowException( _exceptObject, _exceptAddr );
end;


procedure TDM.DataBaseWillExecute(Connection: TADOConnection;
  var CommandText: WideString; var CursorType: TCursorType;
  var LockType: TADOLockType; var CommandType: TCommandType;
  var ExecuteOptions: TExecuteOptions; var EventStatus: TEventStatus;
  const Command: _Command; const Recordset: _Recordset);
begin
  Screen.Cursor := crSQLWait;
end;


procedure TDM.DataBaseExecuteComplete(Connection: TADOConnection;
  RecordsAffected: Integer; const Error: Error;
  var EventStatus: TEventStatus; const Command: _Command;
  const Recordset: _Recordset);
begin
  Screen.Cursor := crDefault;
end;


procedure TDM.JvPluginManagerNewCommand(Sender: TObject; ACaption, AHint,
  AData: String; AShortCut: TShortCut; ABitmap: TBitmap;
  AEvent: TNotifyEvent);
begin
  if UpperCase(ACaption) = UpperCase('SendSupportURL') then
    SupportURL := AData;
  if UpperCase(ACaption) = UpperCase('SendSupporteMail') then
    SupporteMail := AData;
end;


procedure TDM.DataModuleDestroy(Sender: TObject);
var
  I: Integer;
begin
  Application.Icon := nil;
  for I := 0 to JvPluginManager.PluginCount - 1 do begin    // Iterate
    JvPluginManager.UnloadPlugin(i);
  end;    // for
end;


//Funci�n Para Eliminar Una Caracter Especifico de Un Texto Dado.
Function TDM.Cortar_Char(cortarchar: char; Texto: String): String;
Var Variable: String;
begin
 Variable := Texto;
 while pos(cortarchar, Variable) > 0 do
  Delete(Variable, pos(cortarchar, Variable), 1);
 Cortar_Char := Variable;
end;


function TDM.il_Sv: Boolean;
begin
  Result := ( Copy(il_License, 9, 1 ) = '1' );
end;


function TDM.FindConceptoImpuesto(Concepto: String): String;
begin
  Result := DM.DataBase.Execute('Select CodImpuesto from SvConceptos (nolock) WHERE ConceptoId = ' + #39 + Concepto + #39).Fields[0].Value;
end;


function TDM.FindConceptoCuenta(Concepto: String): String;
begin
  Result := DM.DataBase.Execute('Select CuentaContable from SvConceptos (nolock) WHERE ConceptoId = ' + #39 + Concepto + #39).Fields[0].Value;
end;


procedure TDM.OpenCompany(FileName: String);
Var
  _DataSet : TADODataSet;
begin
//   FSystemDate := Date;

  ApplEmpresas.Close;
  ApplEmpresas.Open;
  ApplEmpresas.Locate('Descripcion',FileName,[]);

  DataBase.Close;
  DataBase.DefaultDatabase := '';
  DataBase.ConnectionString := 'Data Source=' + ApplEmpresas.FieldByName('Servidor').Text;
  DataBase.ConnectionString := DataBase.ConnectionString + ';Initial Catalog=' + ApplEmpresas.FieldByName('Nombre').Text;
  DataBase.ConnectionString := DataBase.ConnectionString + ';User ID=' + ApplEmpresas.FieldByName('sqlUser').Text;
  DataBase.ConnectionString := DataBase.ConnectionString + ';Password=' +  ApplEmpresas.FieldByName('sqlPassword').Text;
  DataBase.Open;

  qrRol.Close;
  qrRol.Open;
  CurCompany := FileName;

  _DataSet := NewDataSet;
  _DataSet.Recordset := DataBase.Execute('SELECT GetDate()');

  _DateTimeSystem := _DataSet.Fields.Fields[0].AsDateTime;
  FSystemDate    := Int(DM.Fecha_Server);

  FreeAndNil(_DataSet);
{
  if not Assigned(SysMoneda) then
   SysMoneda := TSysCurrency.Create;
  if not Assigned(SysProduct) then
   SysProduct := TProduct.Create;
}
end;


function TDM.Buscar_Fecha_Y_Hora  : TDateTime;
Var
  _DataSet : TADODataSet;
begin
  _DataSet := NewDataSet;
  _DataSet.Recordset := DataBase.Execute('SELECT GetDate()');

  _DateTimeSystem := _DataSet.Fields.Fields[0].AsDateTime;
  _DateSystem     := Int(DM.Fecha_Server);
  _TimeSystem     := Int(DM.Fecha_Server) - DM.Fecha_Server;

  Result := DM.Fecha_Server;

  FreeAndNil(_DataSet);
end;

function TDM.Buscar_Fecha_Actual : TDate;
Var
  _DataSet : TADODataSet;
begin
  _DataSet := NewDataSet;
  _DataSet.Recordset := DataBase.Execute('SELECT GetDate()');

  _DateTimeSystem := _DataSet.Fields.Fields[0].AsDateTime;
  _DateSystem     := Int(DM.Fecha_Server);
  _TimeSystem     := Int(DM.Fecha_Server) - DM.Fecha_Server;

  Result := DM.Fecha_Sistema;

  FreeAndNil(_DataSet);
end;

function TDM.Buscar_Hora_Actual : String;
Var
  _DataSet : TADODataSet;
begin
  _DataSet := NewDataSet;
  _DataSet.Recordset := DataBase.Execute('SELECT GetDate()');

  _DateTimeSystem := _DataSet.Fields.Fields[0].AsDateTime;
  _DateSystem     := Int(DM.Fecha_Server);
  _TimeSystem     := Int(DM.Fecha_Server) - DM.Fecha_Server;

  Result := FormatDateTime('hh:mm:ss', DM.Hora_Sistema);
//  Result := FormatDateTime('tt', DM.Hora_Sistema);
//  Result := DM.Hora_Sistema;

  FreeAndNil(_DataSet);
end;


procedure TDM.ppCuadreSucursalGlobalBeforePrint(Sender: TObject);
begin
   if intCorteCuadre = 1 then
      ppLabel707.Caption := 'Primero'
   else if intCorteCuadre = 2 then
      ppLabel707.Caption := 'Segundo'
   else if intCorteCuadre = 3 then
      ppLabel707.Caption := 'Tercero'
   else if intCorteCuadre = 4 then
      ppLabel707.Caption := 'Cuarto'
   else
      ppLabel707.Caption := 'General (Todos)'
end;

procedure TDM.ppDetailBand10BeforePrint(Sender: TObject);
begin
 ppDBComentario.Visible := True;
 ppDBDescripcion.Visible := False;
{
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
}
end;
procedure TDM.ppImpReciboTicketBeforePrint(Sender: TObject);
begin
     pplabel717.Caption := 'Centro '+qryCobroTicketNOMBRE.AsString;
     ppLabel595.Caption   := 'Tel. '+qryCobroTicketTELEFONO.AsString;
end;
procedure TDM.ppDetailBand17BeforePrint(Sender: TObject);
begin
  If (qrEntradaPacienteDetalleComentario.Value <> '') then
    Begin
      ppDBComentario1.Visible := True;
      ppDBDescripcion1.Visible := False;
    End
  Else
    Begin
      ppDBComentario1.Visible := False;
      ppDBDescripcion1.Visible := True;
    End;
end;


procedure TDM.ppDetailBand5AfterPrint(Sender: TObject);
begin
 if (qrCorteCajaDetRep.FieldByName('Tipo').Value = '0') then
     ValorFormaPagoE := ValorFormaPagoE + qrCorteCajaDetRep.FieldByName('Valor').Value
 else
     ValorFormaPagoI:= ValorFormaPagoI + qrCorteCajaDetRep.FieldByName('Valor').Value;
end;


procedure TDM.ppGroupFooterBand6BeforePrint(Sender: TObject);
begin
  if (qrCobroFechaDia.Value = 1) then
    ppLbDesglosado.Caption := 'Total Entradas del Dia : '
  else
    ppLbCobrosFiltro.Caption := 'Total Entradas Anteriores : ';
end;

procedure TDM.ppGroupFooterBand7BeforePrint(Sender: TObject);
begin
  if (qrCobroFechaDia.Value = 1) then
    ppLbCobrosFiscal.Caption := 'Entradas del Dia : '
  else
    ppLbCobrosFiscal.Caption := 'Entradas Anteriores : ';
end;

procedure TDM.ppGroupFooterBand8BeforePrint(Sender: TObject);
begin
  if (qrCobroFechaDia.Value = 1) then
    ppLbCobrosFiltro.Caption := 'Entradas del Dia : '
  else
    ppLbCobrosFiltro.Caption := 'Entradas Anteriores : ';
end;

procedure TDM.ppGroupHeaderBand3BeforePrint(Sender: TObject);
Var
 qfind : TADOQuery;
begin
 qfind := Find_Ldr('SELECT Name FROM LDRDEPARTMENTS (nolock) WHERE LDRDEPARTAMENTOID = :depto', qrEntradaCabDetRepORIGEN.AsString);
 ppLbDepartamento.Caption := 'Departamento: ('+ qrEntradaCabDetRepORIGEN.AsString + ') - ' + qfind.FieldByName('Name').AsString;
 FreeAndNil(qfind);
end;

procedure TDM.ppGroupHeaderBand4BeforePrint(Sender: TObject);
Var
 qfind : TADOQuery;
begin
 qfind := Find_Ldr('SELECT Descripcion FROM PTGrupoCliente (nolock) WHERE GrupoCliente = :desc', qrEntradaCabRepORIGEN.AsString);
 ppLbGrupo.Caption := 'Grupo: ('+ qrEntradaCabRepORIGEN.AsString + ')' + qfind.FieldByName('DESCRIPCION').AsString;
 FreeAndNil(qfind);
end;

procedure TDM.ppGroupHeaderBand5BeforePrint(Sender: TObject);
Var
 qfind : TADOQuery;
begin
 qfind := Find('SELECT Nombre FROM SysUsuarios (nolock) WHERE UserID = :user', qrCobroUsuarioId.AsString);
 ppLabelUsuario.Caption := 'Sucursal (' + qrCobroSucursalId.AsString + ')  -  ' +
                           'Usuario: ('+ qrCobroUsuarioId.AsString + ') - ' +
                           qfind.FieldByName('NOMBRE').AsString + '.';
 FreeAndNil(qfind);
end;

procedure TDM.ppHeaderBand21BeforePrint(Sender: TObject);
begin
  if not DM.qrSucursal.Active then
    DM.qrSucursal.Open;

  DM.qrSucursal.locate('SucursalID', qrCorteCajaDetRepSucursalId.Value, []);
end;

procedure TDM.ppHeaderBand22BeforePrint(Sender: TObject);
begin
  if not DM.qrSucursal.Active then
    DM.qrSucursal.Open;

  DM.qrSucursal.locate('SucursalID', qrCorteCajaDetRepSucursalId.Value, []);
end;

procedure TDM.ppHeaderBand25BeforePrint(Sender: TObject);
begin
  if not DM.qrSucursal.Active then
    DM.qrSucursal.Open;

  DM.qrSucursal.locate('SucursalID', qrCorteCajaDetRepSucursalId.Value, []);
end;

procedure TDM.ppHeaderBand26BeforePrint(Sender: TObject);
begin
  if not DM.qrSucursal.Active then
    DM.qrSucursal.Open;

  DM.qrSucursal.locate('SucursalID', qrCorteCajaDetRepSucursalId.Value, []);
end;

procedure TDM.ppHeaderBand27BeforePrint(Sender: TObject);
begin
  if not DM.qrSucursal.Active then
    DM.qrSucursal.Open;

  DM.qrSucursal.locate('SucursalID', qrCorteCajaDetRepSucursalId.Value, []);
end;

procedure TDM.ppHeaderBand28BeforePrint(Sender: TObject);
begin
  if not DM.qrSucursal.Active then
    DM.qrSucursal.Open;

  DM.qrSucursal.locate('SucursalID', qrCorteCajaDetRepSucursalId.Value, []);
end;

procedure TDM.ppTitleBand12BeforePrint(Sender: TObject);
begin
  if not DM.qrSucursal.Active then
    DM.qrSucursal.Open;

  DM.qrSucursal.locate('SucursalID', qrCorteCajaDetRepSucursalId.Value, []);
end;

procedure TDM.ppTitleBand28BeforePrint(Sender: TObject);
begin
  if not DM.qrSucursal.Active then
    DM.qrSucursal.Open;

  DM.qrSucursal.locate('SucursalID', qrCorteCajaDetRepSucursalId.Value, []);
end;

procedure TDM.ppTitleBand31BeforePrint(Sender: TObject);
begin
  if not DM.qrSucursal.Active then
    DM.qrSucursal.Open;

  DM.qrSucursal.locate('SucursalID', qrCorteCajaDetRepSucursalId.Value, []);
end;

procedure TDM.ppImpCuadreCajaBeforePrint(Sender: TObject);
begin
 ValorFormaPagoE := 0;
 ValorFormaPagoI := 0;
end;


procedure TDM.ppImpInternetBeforePrint(Sender: TObject);
Var I : Integer;
    qSerial : TADOQuery;
begin
  qSerial := DM.NewQuery;
  qSerial.Close;
  qSerial.SQL.Text := ' Select Aprobado, Serial, Fecha_Emision, Fecha_Revision  from ptSeriales (nolock) '+
                      ' Where Grupo_ID ='+#39+'99'+#39+' And Tipo='+#39+'IN'+#39+' And Sub_Tipo='+#39+'P'+#39+
                      ' And Estatus='+#39+'A'+#39;
  qSerial.Open;

  if qSerial.RecordCount > 0 then
  begin
      ppRichText1.RichText:='Aprobado por: '+qSerial.FieldByName('Aprobado').AsString+'                 Serial: '+qSerial.FieldByName('Serial').AsString+chr(10)+
                            'Fecha de Emisi�n: '+FormatDateTime('dd/mm/yy',qSerial.FieldByName('Fecha_Emision').Value)+'    Fecha de Revisi�n: '+FormatDateTime('dd/mm/yy',qSerial.FieldByName('Fecha_Revision').Value);
  end;

end;

procedure TDM.ppSummaryBand5BeforePrint(Sender: TObject);
begin
 lbdiferencia.Caption := formatfloat('##,###,##0.00', ValorFormaPagoE - ValorFormaPagoI);
end;


procedure TDM.LicenseError( Texto : String; Terminate : Boolean );
begin
  if Terminate then begin
    raise Exception.Create(Texto);
    Application.Terminate;
  end else
    MessageDlg(Texto, mtWarning, [mbOK], 0);
end;

procedure TDM.IceLicenseAppKeyIncorrect(Sender: TObject);
begin
  LicenseError('Clave incorrecta!', true);
end;


procedure TDM.IceLicenseCheckError(Sender: TObject);
begin
  LicenseError('Error de inicializaci�n',True);
end;


procedure TDM.IceLicenseClockMovedBack(Sender: TObject);
begin
  LicenseError('ADVERTENCIA: La fecha del PC ha sido atrasada!',True);
end;


procedure TDM.IceLicenseExeModified(Sender: TObject);
begin
  LicenseError('El ejecutable ha sido alterado, verifique por virus � reinstale',True);
end;


procedure TDM.IceLicenseLicenseExpired(Sender: TObject);
begin
  LicenseError('Su licencia de uso ha expirado, favor de renovar.',True);
end;


procedure TDM.IceLicenseLicenseFileError(Sender: TObject);
begin
  LicenseError('Error abriendo archivo de licencia.',True);
end;

procedure TDM.IceLicenseLicenseInfo(UserName, UserCompanyName,
  Software, Vendor, DateCreation, Expiration, HardwareLocked,
  NetworkControl, NetworkUser: String);
begin
  il_UserName := UserName;
  il_UserCompanyName := UserCompanyName;
  il_Software := SoftWare;
  il_Vendor := Vendor;
  il_DateCreation := DateCreation;
  il_Expiration := Expiration;
  il_HardwareLocked := HardwareLocked;
  il_NetworkControl := NetworkControl;
  il_NetworkUser := IntToStr( StrToInt( il_UserName ) );
end;


procedure TDM.IceLicenseLicenseInvalid(Sender: TObject);
begin
  LicenseError('C�digo de  licencia invalido, favor de verificar.',True);
end;


procedure TDM.IceLicenseNetworkError(Sender: TObject);
begin
  LicenseError('Error leyendo archivo de licencia en la red.',True);
end;


procedure TDM.IceLicenseNetworkMaxUser(Sender: TObject);
begin
  LicenseError('Cantidad m�xima de usuarios excedida.',True);
end;


procedure TDM.IceLicenseNetworkReject(Sender: TObject);
begin
  LicenseError('Esta PC no esta autorizada en la red para usar la aplicaci�n.',True);
end;


procedure TDM.IceLicenseRegistered(LicenseActivKey: String);
begin
  il_ProgramState := 'Registrado';
  il_License := LicenseActivKey;
  il_IsTrial := False;
end;


procedure TDM.IceLicenseTrial(Sender: TObject);
begin
  il_ProgramState := 'Trial';
  il_IsTrial := True;
end;


procedure TDM.IceLicenseTrialExpired(Sender: TObject);
begin
  LicenseError('El perido de prueba ha expirado.',True);
end;


procedure TDM.IceLicenseTrialProgress(Status: String);
begin
  il_TrialDays := StrToInt(Status);
  il_ProgramState := 'Quedan ' + Status + ' dias';
  //TrialStatus := ' - TRIAL: ' + Status  + ' dias';
end;


//Funcion para retornar el registro de una tabla
function TDM.Find(Sql : String; Params : String) : TADOQuery;
Var
 Query : TADOQuery;
begin
 Query := NewQuery;

 Query.Active := False;
 Query.sql.Text := Sql;
 if (Params <> '') then
    Query.Parameters[0].Value := Params;
 Query.Active := True;

 result := Query;
end;


//Funcion para retornar el registro de una tabla (Empresa LDR):
function TDM.Find_Ldr(Sql : String; Params : String) : TADOQuery;
Var
 Query : TADOQuery;
begin
 Query := NewQuery;

 Query.Active := False;
 Query.SQL.Text := Sql + ' AND DataAreaId = ' + #39 + CurEmpresa + #39;

 if (Params <> '') then
    Query.Parameters[0].Value := Params;

 Query.Active := True;

 result := Query;
end;


function TDM.CalcMora(_prestamoNo,_cuotaNo : integer) : Double;
Var
 Qprestamo,QprestamoLineas : TADOQuery;
 Dias : Integer;
 Pendiente,diaspagar,montopagar : Double;
begin
 Qprestamo := find('SELECT * FROM CoopPrestamo (nolock) WHERE PrestamoNo = :pre',inttostr(_prestamoNo));

 QprestamoLineas := NewQuery;
 QprestamoLineas.close;
 QprestamoLineas.SQL.Text := 'SELECT * FROM CoopPrestamoLineas (nolock) WHERE PrestamoNo = :pre AND CuotaNo = :cuo';
 QprestamoLineas.Parameters[0].Value := _prestamoNo;
 QprestamoLineas.Parameters[1].Value := _cuotaNo;
 QprestamoLineas.Open;

 Dias := SystemDate - QprestamoLineas.FieldByName('FechaVencimiento').Value;

 if (Dias > Qprestamo.FieldByName('DiasGracia').Value) and
    (QprestamoLineas.FieldByName('MoraBloqueada').Value = 0) and
    (QprestamoLineas.FieldByName('Estatus').Value = 0) then begin

    Pendiente := DM.Redondeo(QprestamoLineas.FieldByName('Capital').Value + QprestamoLineas.FieldByName('Interes').Value -
                             QprestamoLineas.FieldByName('CapitalPagado').Value - QprestamoLineas.FieldByName('InteresPagado').Value);

    diaspagar := DM.Redondeo((Pendiente * (Qprestamo.FieldByName('TasaMora').Value / 100)) / 30);
    montopagar := DM.Redondeo(diaspagar * Dias);

    result := DM.Redondeo(montopagar);

 end
 else
  result := 0;

 FreeAndNil(Qprestamo);
 FreeAndNil(QprestamoLineas);  
end;


function TDM.Redondeo(valor: double):double;
var valtext: string;
begin
//altext := formatfloat('########0.0000',valor);
 valtext := formatfloat('########0.00', valor);
 result := strtofloat(valtext);
end;

function TDM.RedondeoCobertura(valor: double):double;
var valtext: string;
begin
//altext := formatfloat('########0.0000',valor);
 valtext := formatfloat('###0.0000', valor);
 result := strtofloat(valtext);
end;

function TDM.Mensaje(mensg : pchar; botones : word) : integer;
begin
 Result := Application.MessageBox(mensg, 'Sistema de Laboratorio', botones);
end;


//Rellena El Texto Con el Caracter Proporcionado en el Lado Que Se Quiera Rellenar.
Function TDM.Rellenar(valor: string; cantidad: integer; clave: string; posicion: string): string;
var tot,tot1,idx: integer; k: string;
begin
 if length(valor) < cantidad then
  begin
   tot := (length(valor) + 1);
   tot1 := cantidad - tot;
   k := clave;
   for idx := 1 to tot1 do
    begin
     k := k + clave;
   end;
   if posicion = 'I' then
    result := k + valor
   else
    result := valor + k;
  end
 else
  result := valor;
end;

function TDM.Tasa(fecha: TDateTime; moneda: string) : Double;
Var
 qfindTasa : TADOQuery;
begin
 qfindTasa := NewQuery;

 qfindTasa.Close;
 qfindTasa.SQL.Text := ' SELECT Tasa FROM SysTasas (nolock) WHERE Fecha <= :fech AND MonedaID = :mon '+
                       ' AND DataAreaId = ' + #39 + CurEmpresa + #39 +
                       ' ORDER BY Fecha DESC, RecId ';
 qfindTasa.Parameters.ParamByName('fech').Value := fecha;
 qfindTasa.Parameters.ParamByName('mon').Value := moneda;
 qfindTasa.Open;

 result := qfindTasa.FieldByName('Tasa').Value;

 FreeAndNil(qfindTasa);
end;


function TDM.ValorMoneda(valor: Double; frommoneda : string; tomoneda : string; fecha : TDateTime) : Double;
Var
 qfindfecha : TADOQuery;
begin
 qrParametro.close;
 qrParametro.Open;

 qfindfecha := NewQuery;
 qfindfecha.Close;
 qfindfecha.SQL.Text := ' SELECT MAX(fecha) FROM SysTasas (nolock) WHERE MonedaId = :mon '+
                        ' AND DataAreaId = ' + #39 + CurEmpresa + #39 +
                        ' AND Fecha <= :fech';

 if (qrParametroMonedaID.Value = frommoneda) then
     qfindfecha.Parameters.ParamByName('mon').Value := tomoneda
 else
     qfindfecha.Parameters.ParamByName('mon').Value := frommoneda;
 qfindfecha.Parameters.ParamByName('fech').Value := fecha;
 qfindfecha.Open;

 if frommoneda = tomoneda then
    result := DM.Redondeo(valor)
 else
  if (qrParametroMonedaID.Value = frommoneda) then
  begin
      if tasa(qfindfecha.Fields[0].AsDateTime,tomoneda) <> 0 then
      begin
        result := DM.Redondeo(valor / tasa(qfindfecha.Fields[0].AsDateTime,tomoneda) * 100);
      end
  end
  else
  begin
      if tasa(qfindfecha.Fields[0].AsDateTime,frommoneda) <> 0 then
      begin
        result := DM.Redondeo(valor * tasa(qfindfecha.Fields[0].AsDateTime,frommoneda) / 100);
      end
  end;
 FreeAndNil(qfindfecha);
end;


function TDM.DescuentoUsuario(_user : string) : Double;
Var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;
 qfind.Close;
 qfind.SQL.Text := ' SELECT Descuento FROM PTUsuarioDescuento (nolock) WHERE UserId = '+#39+_user+#39+' AND SucursalID = '+
                   #39+DM.CurSucursal+#39;
 qfind.Open;

 if (qfind.RecordCount > 0) then
   result := DM.Redondeo(qfind.FieldByName('Descuento').AsFloat)
 Else
   result := 0;

 FreeAndNil(qfind);
end;

function TDM.DescuentoTarjeta(Cod_Tarjeta : string) : Double;
Var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;
 qfind.Close;
 qfind.SQL.Text := ' SELECT Descuento FROM PtTarjetaDescuento (nolock) WHERE TarjetaID = '+#39+Cod_Tarjeta+#39;
 qfind.Open;

 if (qfind.RecordCount > 0) then
   result := DM.Redondeo(qfind.FieldByName('Descuento').AsFloat)
 Else
   result := 0;

 FreeAndNil(qfind);
end;


function TDM.DescCliente(cliente,fecha: string) : Double;
Var
 qfind        : TADOQuery;
 qfindDato    : TADOQuery;
 precio       : Double;
 grupocliente : string;
begin
 qfind := DM.NewQuery;

 //Buscar Cliente - Desc
 qfind.Close;
 qfind.SQL.Clear;
 qfind.SQL.Text := ' SELECT PctDescuento FROM PTAcuerdoComercial (nolock) '+
                   ' WHERE ClienteCode = '+#39+'0'+#39+' AND ClienteRelation = '+#39+cliente+#39+
                   ' AND PruebaCode = '+#39+'2'+#39+
                   ' AND Relacion = '+#39+'D'+#39+
                   ' AND DataAreaId = ' + #39 + CurEmpresa + #39 +
                   ' AND Activo = 1 AND Desde <= '+#39+Fecha+#39+' AND Hasta >= '+#39+Fecha+#39;
 qfind.Open;

 if qfind.RecordCount > 0 then
   result := DM.Redondeo(qfind.FieldByName('PctDescuento').AsFloat)
 else
 begin
   qfindDato    := Find_Ldr('SELECT GrupoDescuentoTotal FROM PTCliente (nolock) WHERE ClienteID = :pru', cliente);
//   grupocliente := qfindDato.FieldByName('GrupoCliente').AsString;
//   grupocliente := qfindDato.FieldByName('GrupoPrecio').AsString;
   grupocliente := qfindDato.FieldByName('GrupoDescuentoTotal').AsString;

   //Buscar Grupo Cliente - Prueba
   qfind.Close;
   qfind.SQL.Clear;
   qfind.SQL.Text := ' SELECT PctDescuento FROM PTAcuerdoComercial (nolock) '+
                     ' WHERE PruebaCode = '+#39+'2'+#39+
                     ' AND ClienteCode = '+#39+'1'+#39+' AND ClienteRelation = '+#39+grupocliente+#39+
                     ' AND Relacion = '+#39+'D'+#39+
                     ' AND DataAreaId = ' + #39 + CurEmpresa + #39 +
                     ' AND Activo = 1 AND Desde <= '+#39+Fecha+#39+' AND Hasta >= '+#39+Fecha+#39;
   qfind.Open;

   FreeAndNil(qfindDato);

   if qfind.RecordCount > 0 then
     result := DM.Redondeo(qfind.FieldByName('PctDescuento').AsFloat)
   else
    begin
     //Buscar Todos - prueba
     qfind.Close;
     qfind.SQL.Clear;
     qfind.SQL.Text := ' SELECT PctDescuento FROM PTAcuerdoComercial (nolock) '+
                       ' WHERE PruebaCode = '+#39+'2'+#39+
                       ' AND ClienteCode = '+#39+'2'+#39+
                       ' AND Relacion = '+#39+'D'+#39+
                       ' AND DataAreaId = ' + #39 + CurEmpresa + #39 +
                       ' AND Activo = 1 AND Desde <= '+#39+Fecha+#39+' AND Hasta >= '+#39+Fecha+#39;
     qfind.Open;

     if qfind.RecordCount > 0 then
        result := DM.Redondeo(qfind.FieldByName('PctDescuento').AsFloat)
     else
        result := 0;
    end;
  end;
end;


function TDM.DescTarjetaBono(tarjeta, numero : String) : Double;
Var
 Texto  : String;
 qfind  : TADOQuery;
 qdesc  : TADOQuery;
 qcard  : TADOQuery;
begin
 qfind := DM.NewQuery;
 qdesc := DM.NewQuery;
 qcard := DM.NewQuery;

 //Buscando el Numero de la Tarjeta de Descuento.
 qdesc := DM.NewQuery;
 qdesc.Close;

 qcard := DM.Find('SELECT NumeroObligatorio,Bono FROM PTTarjetaDescuento (nolock) WHERE TarjetaId = :tar', UpperCase(tarjeta));

 Texto := ' SELECT * FROM PTTarjetaBono (nolock) WHERE TarjetaID = :tar ';

 //Validando el Numero Obligatorio de la Tarjeta de Descuento.
 If (qcard.FieldByName('NumeroObligatorio').AsBoolean = True) Or
    (qcard.FieldByName('Bono').AsBoolean = True) then
   Texto := Texto + ' AND TarjetaNumero = :num ';

 qdesc.SQL.Text := Texto;
 qdesc.Parameters.ParamByName('tar').Value := UpperCase(tarjeta);

 //Validando el Numero Obligatorio de la Tarjeta de Descuento.
 If (qcard.FieldByName('NumeroObligatorio').AsBoolean = True) Or
    (qcard.FieldByName('Bono').AsBoolean = True) then
   qdesc.Parameters.ParamByName('num').Value := UpperCase(numero);

 qdesc.Open;

 If (qcard.FieldByName('NumeroObligatorio').AsBoolean = True) Or
    (qcard.FieldByName('Bono').AsBoolean = True) then
   Begin
     //Validando
     If (qdesc.RecordCount > 0) then
       Begin
         //Buscar Tarjeta - Descuento con el Numero Obligatorio de la Tarjeta de Descuento..
         qfind.Close;
         qfind.SQL.Clear;
         qfind.SQL.Text := ' SELECT PctDescuento FROM PTAcuerdoComercial (nolock) '+
                           ' WHERE ClienteCode = '+#39+'3'+#39+' AND ClienteRelation = '+#39+tarjeta+#39+
                           ' AND PruebaCode = '+#39+'2'+#39+
                           ' AND Relacion = '+#39+'D'+#39+
                           ' AND DataAreaId = ' + #39 + CurEmpresa + #39 +
                           ' AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
         qfind.Parameters[0].Value := DM.SystemDate;
         qfind.Parameters[1].Value := DM.SystemDate;
         qfind.Open;

         if qfind.RecordCount > 0 then
           Result := DM.Redondeo(qfind.FieldByName('PctDescuento').AsFloat)
         else
           Result := 0;
       End
     Else
       Result := 0;
   End
 Else
   Begin
     //Buscar Tarjeta - Descuento.
     qfind.Close;
     qfind.SQL.Clear;
     qfind.SQL.Text := ' SELECT PctDescuento FROM PTAcuerdoComercial (nolock) '+
                       ' WHERE ClienteCode = '+#39+'3'+#39+' AND ClienteRelation = '+#39+tarjeta+#39+
                       ' AND PruebaCode = '+#39+'2'+#39+
                       ' AND Relacion = '+#39+'D'+#39+
                       ' AND DataAreaId = ' + #39 + CurEmpresa + #39 +
                       ' AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
     qfind.Parameters[0].Value := DM.SystemDate;
     qfind.Parameters[1].Value := DM.SystemDate;
     qfind.Open;

     if qfind.RecordCount > 0 then
       Result := DM.Redondeo(qfind.FieldByName('PctDescuento').AsFloat)
     else
       Result := 0;
    End;

 FreeAndNil(qfind);
 FreeAndNil(qdesc);
 FreeAndNil(qcard);
end;


function TDM.TotalGastosVarios(_refrecid : Int64) : Double;
var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;
 qfind.Close;
 qfind.SQL.Text := 'SELECT SUM(valor) FROM PTGastosVarioTrans (nolock) WHERE Refrecid = :rec';
 qfind.Parameters[0].Value := _refrecid;
 qfind.Open;

 result := DM.Redondeo(qfind.fields[0].asfloat);

 FreeAndNil(qfind);
end;


function TDM.TotalGastosVariosUsa(_refrecid : Int64) : Double;
var
 qfind : TADOQuery;
 valor : double;
begin
 qfind := DM.NewQuery;
 qfind.Close;
 if Factura_St <> 'N' then
    qfind.SQL.Text := 'SELECT SUM(Valor) FROM PTGastosVarioTrans (nolock) WHERE Refrecid = :rec'
 Else
    qfind.SQL.Text := 'SELECT SUM(Valor) FROM PTGastosVarioTransNC (nolock) WHERE Refrecid = :rec';
 qfind.Parameters[0].Value := _refrecid;
 qfind.Open;

 valor := DM.Redondeo(qfind.fields[0].AsFloat);

 If (valor > 0.01) Then
   Begin
     qrParametro.close;
     qrParametro.open;

     if Factura_St = 'I' then
     begin
         Result := DM.Redondeo(ValorMoneda(valor,
                               qrparametroMonedaID.Value,
                               qrParametroMonedaDolares.Value,
                               frmMain.frmTmp.qrEntradaPacienteFecha.Value));
     end
     else if Factura_St = 'M' then
     begin
         Result := DM.Redondeo(ValorMoneda(valor,
                               qrparametroMonedaID.Value,
                               qrParametroMonedaDolares.Value,
                               frmMain.frmTmpMod.qrEntradaPacienteFecha.Value));
     end
     else if Factura_St = 'F' then
     begin
         Result := DM.Redondeo(ValorMoneda(valor,
                               qrparametroMonedaID.Value,
                               qrParametroMonedaDolares.Value,
                               frmMain.frmTmpND.qrEntradaPacienteFecha.Value));
     end
     else if Factura_St = 'N' then
     begin
         Result := DM.Redondeo(ValorMoneda(valor,
                               qrparametroMonedaID.Value,
                               qrParametroMonedaDolares.Value,
                               frmMain.frmTmpNCR.qrEntradaPacienteFecha.Value));
     end;
   End
 Else
   Result := 0;
 FreeAndNil(qfind);
end;


procedure TDM.VerificarGastosVarios(cliente: string;_refrecid : Int64);
var
 qfind        : TADOQuery;
 qinsert      : TADOquery;
 qdelete      : TADOQuery;
 qfindDato    : TADOQuery;
 grupocliente : string;
begin
 qdelete := DM.NewQuery;
 qdelete.Close;
 qdelete.sql.Text := 'DELETE FROM PTGastosVarioTrans WHERE refrecid = :ref AND Generada = 1';
 qdelete.Parameters[0].Value := _refrecid;
 qdelete.ExecSQL;

 FreeAndNil(qdelete);

 qfind := DM.NewQuery;

 //Buscar Cliente - Desc
 qfind.Close;
 qfind.SQL.Clear;
 qfind.SQL.Text := ' SELECT GastoVarioId, GastosVarios FROM PTAcuerdoComercial (nolock) '+
                   ' WHERE ClienteCode = '+#39+'0'+#39+' AND ClienteRelation = '+#39+cliente+#39+
                   ' AND PruebaCode = '+#39+'2'+#39+
                   ' AND Relacion = '+#39+'G'+#39+
                   ' AND DataAreaId = ' + #39 + CurEmpresa + #39 +
                   ' AND Activo = 1 ';
 qfind.Open;

 if qfind.RecordCount > 0 then
 begin
  qinsert := DM.NewQuery;
  qinsert.Close;
  qinsert.SQL.Text := 'Insert into PTGastosVarioTrans(GastoVarioId,Valor,Refrecid,Generada) '+
                      ' Values(:0,:1,:2,:3)';
  while not qfind.Eof do
  begin
    qinsert.Parameters[0].Value := qfind.FieldByName('GastoVarioId').AsString;
    qinsert.Parameters[1].Value := qfind.FieldByName('GastosVarios').AsFloat;
    qinsert.Parameters[2].Value := _refrecid;
    qinsert.Parameters[3].Value := true;
    qinsert.ExecSQL;
    qfind.Next;
  end;
  FreeAndNil(qinsert);
 end
 else
 begin
   qfindDato := Find_Ldr('SELECT GrupoPrecio FROM PTCliente (nolock) WHERE ClienteID = :pru',cliente);
//   grupocliente := qfindDato.FieldByName('GrupoCliente').AsString;
   grupocliente := qfindDato.FieldByName('GrupoPrecio').AsString;

   //Buscar Grupo Cliente - Prueba
   qfind.Close;
   qfind.SQL.Clear;
   qfind.SQL.Text := ' SELECT GastoVarioId, GastosVarios  FROM PTAcuerdoComercial (nolock) '+
                     ' WHERE PruebaCode = '+#39+'2'+#39+
                     ' AND ClienteCode = '+#39+'1'+#39+' AND ClienteRelation = '+#39+grupocliente+#39+
                     ' AND Relacion = '+#39+'G'+#39+
                     ' AND DataAreaId = ' + #39 + CurEmpresa + #39 +
                     ' AND Activo = 1';
   qfind.Open;

   FreeAndNil(qfindDato);

   if qfind.RecordCount > 0 then
   begin
    qinsert := DM.NewQuery;
    qinsert.Close;
    qinsert.SQL.Text := 'Insert into PTGastosVarioTrans(GastoVarioId,Valor,Refrecid,Generada) '+
                        ' Values(:0,:1,:2,:3)';
    while not qfind.Eof do
    begin
     qinsert.Parameters[0].Value := qfind.FieldByName('GastoVarioId').AsString;
     qinsert.Parameters[1].Value := qfind.FieldByName('GastosVarios').AsFloat;
     qinsert.Parameters[2].Value := _refrecid;
     qinsert.Parameters[3].Value := true;
     qinsert.ExecSQL;
     qfind.Next;
    end;
    FreeAndNil(qinsert);
   end
   else
   begin
     //Buscar Todos - prueba
     qfind.Close;
     qfind.SQL.Clear;
     qfind.SQL.Text := ' SELECT GastoVarioId, GastosVarios FROM PTAcuerdoComercial (nolock) '+
                       ' WHERE PruebaCode = '+#39+'2'+#39+
                       ' AND ClienteCode = '+#39+'2'+#39+
                       ' AND Relacion = '+#39+'G'+#39+
                       ' AND DataAreaId = ' + #39 + CurEmpresa + #39 +
                       ' AND Activo = 1 ';
     qfind.Open;

     if qfind.RecordCount > 0 then
     begin
      qinsert := DM.NewQuery;
      qinsert.Close;
      qinsert.SQL.Text := 'Insert into PTGastosVarioTrans(GastoVarioId,Valor,Refrecid,Generada) '+
                          ' Values(:0,:1,:2,:3)';
      while not qfind.Eof do
      begin
       qinsert.Parameters[0].Value := qfind.FieldByName('GastoVarioId').AsString;
       qinsert.Parameters[1].Value := qfind.FieldByName('GastosVarios').AsFloat;
       qinsert.Parameters[2].Value := _refrecid;
       qinsert.Parameters[3].Value := true;
       qinsert.ExecSQL;
       qfind.Next;
      end;
      FreeAndNil(qinsert);
     end;

   end;
 end;
end;

function TDM.Precio_Prueba_Configurado(prueba, cliente, moneda, Origen, GrupoPrivado, GrupoPrecio, ClaseCredito, Fecha : string) : Double;
Var
 qfind        : TADOQuery;
 qfindDato    : TADOQuery;
 precio       : Double;
 grupocliente : string;
begin
  qfind := DM.NewQuery;

  If ((Origen = dm.qrParametroGrupoCia.Value)) Or
      (Origen = dm.qrParametroGrupoProy.Value) Or
      (Origen = dm.qrParametroGrupoOtro.Value) then
  begin
      //Buscar Cliente - Prueba
      qfind.Close;
      qfind.SQL.Clear;
      qfind.SQL.Text := ' SELECT MonedaId,Precio FROM PTAcuerdoComercial (nolock) '+
                        ' WHERE PruebaRelation = '+#39+prueba+#39+
                        ' AND ClienteRelation = '+#39+cliente+#39+
                        ' AND Relacion = '+#39+'P'+#39+
                        ' AND Costo = 0 '+
                        ' AND DataAreaId = ' + #39 + CurEmpresa + #39 +
                        ' AND Activo = 1 '+
                        ' AND Desde <= '+#39+Fecha+#39+' AND Hasta >= '+#39+Fecha+#39;
      qfind.Open;

      if qfind.RecordCount > 0 then
      begin
         if moneda = qfind.FieldByName('MonedaId').AsString then
           result := DM.Redondeo(qfind.FieldByName('Precio').AsFloat)
         else
           result := DM.Redondeo(ValorMoneda(qfind.FieldByName('Precio').AsFloat,
                                             qfind.FieldByName('MonedaId').AsString,
                                             moneda,StrToDate(Copy(Fecha,7,2)+'/'+Copy(Fecha,5,2)+'/'+Copy(Fecha,1,4))));
         end
      else
      begin
        qfind.Close;
        qfind.SQL.Clear;
        qfind.SQL.Text := ' SELECT MonedaId,Precio FROM PTAcuerdoComercial (nolock) '+
                          ' WHERE PruebaCode = '+#39+'0'+#39+' AND PruebaRelation = '+#39+prueba+#39+
                          ' AND ClienteCode = '+#39+'1'+#39+' AND ClienteRelation = '+#39+dm.GrupoPrecioPriv+#39+
                          ' AND Relacion = '+#39+'P'+#39+
                          ' AND Costo = 0 '+
                          ' AND DataAreaId = ' + #39 + CurEmpresa + #39 +
                          ' AND Activo = 1 '+
                          ' AND Desde <= '+#39+Fecha+#39+' AND Hasta >= '+#39+Fecha+#39;
        qfind.Open;

        if qfind.RecordCount > 0 then
        begin
           if moneda = qfind.FieldByName('MonedaId').AsString then
             result := DM.Redondeo(qfind.FieldByName('Precio').AsFloat)
           else
             result := DM.Redondeo(ValorMoneda(qfind.FieldByName('Precio').AsFloat,
                                               qfind.FieldByName('MonedaId').AsString,
                                               moneda,StrToDate(Copy(Fecha,7,2)+'/'+Copy(Fecha,5,2)+'/'+Copy(Fecha,1,4))));
        end
      end
  end
  else If (Origen = dm.qrParametroGrupoPriv.Value) Or
          (Origen = dm.qrParametroGrupoVIP.Value) Or
          (Origen = dm.qrParametroGrupoEmp.Value) Then
  begin
      qfind.Close;
      qfind.SQL.Clear;
      qfind.SQL.Text := ' SELECT MonedaId,Precio FROM PTAcuerdoComercial (nolock) '+
                        ' WHERE PruebaCode = '+#39+'0'+#39+' AND PruebaRelation = '+#39+prueba+#39+
                        ' AND ClienteCode = '+#39+'1'+#39+' AND ClienteRelation = '+#39+dm.GrupoPrecioPriv+#39+
                        ' AND Relacion = '+#39+'P'+#39+
                        ' AND Costo = 0 '+
                        ' AND DataAreaId = ' + #39 + CurEmpresa + #39 +
                        ' AND Activo = 1 '+
                        ' AND Desde <= '+#39+Fecha+#39+' AND Hasta >= '+#39+Fecha+#39;
      qfind.Open;

      if qfind.RecordCount > 0 then
      begin
         if moneda = qfind.FieldByName('MonedaId').AsString then
           result := DM.Redondeo(qfind.FieldByName('Precio').AsFloat)
         else
           result := DM.Redondeo(ValorMoneda(qfind.FieldByName('Precio').AsFloat,
                                             qfind.FieldByName('MonedaId').AsString,
                                             moneda,StrToDate(Copy(Fecha,7,2)+'/'+Copy(Fecha,5,2)+'/'+Copy(Fecha,1,4))));
      end
      else
      begin
      FreeAndNil(qfind);
      qfind := Find_Ldr('SELECT Precio,PrecioDolares FROM vwPrueba_Privado (nolock) WHERE PruebaID = :pur', prueba);

      if qrParametroPreciosBaseDolares.Value then
        begin
          precio := ValorMoneda(qfind.FieldByName('PrecioDolares').AsFloat,qrParametroMonedaDolares.Value ,
                                qrParametroMonedaID.Value,StrToDate(Copy(Fecha,7,2)+'/'+Copy(Fecha,5,2)+'/'+Copy(Fecha,1,4)));
          if moneda = qrParametroMonedaID.Value then
            result := DM.Redondeo(precio)
          else
            result := qfindDato.FieldByName('PrecioDolares').AsFloat;
        end
      else
        begin
          if moneda = qrParametroMonedaID.Value then
            result := DM.Redondeo(qfind.FieldByName('Precio').AsFloat)
          else
            result := DM.Redondeo(ValorMoneda(qfind.FieldByName('Precio').AsFloat,
                                              qrParametroMonedaID.Value, moneda, StrToDate(Copy(Fecha,7,2)+'/'+Copy(Fecha,5,2)+'/'+Copy(Fecha,1,4))));
        end;
    end;
  end
  else if (grupoprecio<>dm.GrupoPrecioPriv) Or
          (origen = dm.qrParametroGrupoLab.Value) Then
  begin
      //Buscar Grupo Cliente - Prueba
      qfind.Close;
      qfind.SQL.Clear;
      qfind.SQL.Text := ' SELECT Precio,MonedaId FROM PTAcuerdoComercial (nolock) '+
                        ' WHERE PruebaRelation = '+#39+prueba+#39+
                        ' AND ClienteRelation = '+#39+GrupoPrecio+#39+
                        ' AND Relacion = '+#39+'P'+#39+
                        ' AND Costo = 0 '+
                        ' AND DataAreaId = ' + #39 + CurEmpresa + #39 +
                        ' AND Activo = 1 '+
                        ' AND Desde <= '+#39+Fecha+#39+' AND Hasta >= '+#39+Fecha+#39;
      qfind.Open;

      if qfind.RecordCount > 0 then
      begin
          if moneda = qfind.FieldByName('MonedaId').AsString then
            result := DM.Redondeo(qfind.FieldByName('Precio').AsFloat)
          else
            result := DM.Redondeo(ValorMoneda(qfind.FieldByName('Precio').AsFloat,
                                              qfind.FieldByName('MonedaId').AsString,
                                              moneda,StrToDate(Copy(Fecha,7,2)+'/'+Copy(Fecha,5,2)+'/'+Copy(Fecha,1,4))));
      end
      else
      begin
        qfind.Close;
        qfind.SQL.Clear;
        qfind.SQL.Text := ' SELECT MonedaId,Precio FROM PTAcuerdoComercial (nolock) '+
                          ' WHERE PruebaCode = '+#39+'0'+#39+' AND PruebaRelation = '+#39+prueba+#39+
                          ' AND ClienteCode = '+#39+'1'+#39+' AND ClienteRelation = '+#39+dm.GrupoPrecioPriv+#39+
                          ' AND Relacion = '+#39+'P'+#39+
                          ' AND Costo = 0 '+
                          ' AND DataAreaId = ' + #39 + CurEmpresa + #39 +
                          ' AND Activo = 1 '+
                          ' AND Desde <= '+#39+Fecha+#39+' AND Hasta >= '+#39+Fecha+#39;
        qfind.Open;

        if qfind.RecordCount > 0 then
        begin
           if moneda = qfind.FieldByName('MonedaId').AsString then
             result := DM.Redondeo(qfind.FieldByName('Precio').AsFloat)
           else
             result := DM.Redondeo(ValorMoneda(qfind.FieldByName('Precio').AsFloat,
                                               qfind.FieldByName('MonedaId').AsString,
                                               moneda,StrToDate(Copy(Fecha,7,2)+'/'+Copy(Fecha,5,2)+'/'+Copy(Fecha,1,4))));
        end
      end;
  end;
  FreeAndNil(qfind);
end;


Function TDM.Buscar_Precio_Lista(prueba, moneda, sucursalid, Fecha : string) : Double;
Var
 precio     : Double;
 qfindDato  : TADOQuery;
 gprivado,grupoprecio   : String;
begin
  qrParametro.close;
  qrParametro.Open;
  precio     := 0;

  qfindDato := DM.NewQuery;
  qfindDato.Close;
//  qfindDato.SQL.Text := ' SELECT * FROM PTPrecioAlternativo (nolock) WHERE PruebaId = '+#39+prueba+#39+
//                        ' AND SucursalId = '+#39+sucursalid+#39+' AND Activo = 1';
  if (sucursalid <> dm.Cursucursal ) then
     dm.GrupoPrecioPriv := Dm.GrupoPrecioPrivado(sucursalid);
  qfindDato.SQL.Text := ' SELECT Precio FROM PTACUERDOCOMERCIAL (nolock) WHERE PruebaRelation = '+#39+prueba+#39+
                        ' AND ClienteRelation = '+#39+dm.GrupoPrecioPriv+#39+                            ' AND DataAreaId = ' + #39 + CurEmpresa + #39 +
                        ' AND Activo = 1 '+
                        ' AND Desde <= '+#39+Fecha+#39+' AND Hasta >= '+#39+Fecha+#39;
  qfindDato.Open;

    If qfindDato.RecordCount > 0 then
    begin
{      If qrParametroPreciosBaseDolares.Value then
        begin
          precio := ValorMoneda(qfindDato.FieldByName('PrecioDolares').AsFloat,qrParametroMonedaDolares.Value ,
                                qrParametroMonedaID.Value,DM.SystemDate);
          if moneda = qrParametroMonedaID.Value then
            result := DM.Redondeo(precio)
          else
            result := qfindDato.FieldByName('PrecioDolares').AsFloat;
        end
      else
        begin
}
          If moneda = qrParametroMonedaID.Value then
            result := DM.Redondeo(qfindDato.FieldByName('Precio').AsFloat)
          else
            result := DM.Redondeo(ValorMoneda(qfindDato.FieldByName('Precio').AsFloat,
                                  qrParametroMonedaID.Value, moneda, StrToDate(Copy(Fecha,7,2)+'/'+Copy(Fecha,5,2)+'/'+Copy(Fecha,1,4))));
//        end;
    end
    else
    begin
      FreeAndNil(qfindDato);
      qfindDato := Find_Ldr('SELECT * FROM vwPrueba_Privado (nolock) WHERE PruebaID = :pur', prueba);

      if qrParametroPreciosBaseDolares.Value then
        begin
          precio := ValorMoneda(qfindDato.FieldByName('PrecioDolares').AsFloat,qrParametroMonedaDolares.Value ,
                                qrParametroMonedaID.Value,StrToDate(Copy(Fecha,7,2)+'/'+Copy(Fecha,5,2)+'/'+Copy(Fecha,1,4)));
          if moneda = qrParametroMonedaID.Value then
            result := DM.Redondeo(precio)
          else
            result := qfindDato.FieldByName('PrecioDolares').AsFloat;
        end
      else
        begin
          if moneda = qrParametroMonedaID.Value then
            result := DM.Redondeo(qfindDato.FieldByName('Precio').AsFloat)
          else
            result := DM.Redondeo(ValorMoneda(qfindDato.FieldByName('Precio').AsFloat,
                                              qrParametroMonedaID.Value, moneda, StrToDate(Copy(Fecha,7,2)+'/'+Copy(Fecha,5,2)+'/'+Copy(Fecha,1,4))));
        end;
    end;

  FreeAndNil(qfindDato);
end;
function TDM.PrecioPrueba(prueba: string; cliente: string; moneda: string; sucursalid: string; Fecha: string) : Double;
Var
 qfind : TADOQuery;
 qfindDato : TADOQuery;
 precio    : Double;
 grupocliente,gprivado,grupoprecio : string;
begin
 //Buscando El Costo Como Acuerdo Comercial.
 precio := PrecioPruebaCosto(prueba,cliente,moneda,Fecha);
////////////////////////////////////////////////////////////////////////////////

 If (Precio > 0) then
   Begin
    qrParametro.close;
    qrParametro.Open;

    If qrParametroPreciosBaseDolares.Value then
     begin
      precio := ValorMoneda(Precio, qrParametroMonedaDolares.Value,
                            qrParametroMonedaID.Value, StrToDate(Copy(Fecha,7,2)+'/'+Copy(Fecha,5,2)+'/'+Copy(Fecha,1,4)));

      if moneda = qrParametroMonedaID.Value then
       result := DM.Redondeo(precio)
      else
       result := DM.Redondeo(ValorMoneda(Precio, qrParametroMonedaID.Value,
                             moneda, StrToDate(Copy(Fecha,7,2)+'/'+Copy(Fecha,5,2)+'/'+Copy(Fecha,1,4))));
     end
    Else
     Begin
      if moneda = qrParametroMonedaID.Value then
       result := DM.Redondeo(Precio)
      else
       result := DM.Redondeo(ValorMoneda(Precio, qrParametroMonedaID.Value,
                             moneda, StrToDate(Copy(Fecha,7,2)+'/'+Copy(Fecha,5,2)+'/'+Copy(Fecha,1,4))));
     end;
    FreeAndNil(qfindDato);
   End
////////////////////////////////////////////////////////////////////////////////
 Else
  precio := DM.Redondeo(PrecioPruebaMoneda(prueba,cliente,moneda,fecha));

 if (precio = 0) AND (not findAcuerdoCom) then
 begin

 qfind := DM.NewQuery;

 //Buscar Cliente - Prueba
 qfind.Close;
 qfind.SQL.Clear;
 qfind.SQL.Text := ' SELECT MonedaId,Precio FROM PTAcuerdoComercial (nolock) '+
                   ' WHERE PruebaCode = '+#39+'0'+#39+' AND PruebaRelation = '+#39+prueba+#39+
                   ' AND ClienteCode = '+#39+'0'+#39+' AND ClienteRelation = '+#39+cliente+#39+
                   ' AND Relacion = '+#39+'P'+#39+
                   ' AND Costo = 0 '+
                   ' AND DataAreaId = ' + #39 + CurEmpresa + #39 +
                   ' AND Desde <= '+#39+Fecha+#39+' AND Hasta >= '+#39+Fecha+#39;
 qfind.Open;

 if qfind.RecordCount > 0 then
 begin
    if moneda = qfind.FieldByName('MonedaId').AsString then
      result := DM.Redondeo(qfind.FieldByName('Precio').AsFloat)
   else
      result := DM.Redondeo(ValorMoneda(qfind.FieldByName('Precio').AsFloat,
                                        qfind.FieldByName('MonedaId').AsString,
                                        moneda,StrToDate(Copy(Fecha,7,2)+'/'+Copy(Fecha,5,2)+'/'+Copy(Fecha,1,4))));
 end
 else
 begin
  qfindDato := Find_Ldr('SELECT GrupoPruebaId FROM PTPrueba (nolock) WHERE PruebaID = :pru',prueba);

  //Buscar Cliente - Grupo de Prueba
  qfind.Close;
  qfind.SQL.Clear;
  qfind.SQL.Text := ' SELECT MonedaId,Precio FROM PTAcuerdoComercial (nolock) '+
                    ' WHERE PruebaCode = '+#39+'1'+#39+' AND PruebaRelation = '+#39+qfindDato.FieldByName('GrupoPruebaId').AsString+#39+
                    ' AND ClienteCode = '+#39+'0'+#39+' AND ClienteRelation = '+#39+cliente+#39+
                    ' AND Relacion = '+#39+'P'+#39+
                    ' AND Costo = 0 '+
                    ' AND DataAreaId = ' + #39 + CurEmpresa + #39 +
                    ' AND Desde <= '+#39+Fecha+#39+' AND Hasta >= '+#39+Fecha+#39;
  qfind.Open;

  FreeAndNil(qfindDato);

  if qfind.RecordCount > 0 then
  begin
    if moneda = qfind.FieldByName('MonedaId').AsString then
      result := DM.Redondeo(qfind.FieldByName('Precio').AsFloat)
   else
      result := DM.Redondeo(ValorMoneda(qfind.FieldByName('Precio').AsFloat,
                                        qfind.FieldByName('MonedaId').AsString,
                                        moneda,StrToDate(Copy(Fecha,7,2)+'/'+Copy(Fecha,5,2)+'/'+Copy(Fecha,1,4))));
  end
  else
  begin
   //Buscar Cliente - Todos
   qfind.Close;
   qfind.SQL.Clear;
   qfind.SQL.Text := ' SELECT MonedaId, Precio FROM PTAcuerdoComercial (nolock) '+
                     ' WHERE PruebaCode = '+#39+'2'+#39+
                     ' AND ClienteCode = '+#39+'0'+#39+ ' AND ClienteRelation = '+#39+cliente+#39+
                     ' AND Relacion = '+#39+'P'+#39+
                     ' AND Costo = 0 '+
                     ' AND DataAreaId = ' + #39 + CurEmpresa + #39 +
                     ' AND Activo = 1 AND Desde <= '+#39+Fecha+#39+' AND Hasta >= '+#39+Fecha+#39;
   qfind.Open;

   if qfind.RecordCount > 0 then
   begin
    if moneda = qfind.FieldByName('MonedaId').AsString then
      result := DM.Redondeo(qfind.FieldByName('Precio').AsFloat)
   else
      result := DM.Redondeo(ValorMoneda(qfind.FieldByName('Precio').AsFloat,
                                        qfind.FieldByName('MonedaId').AsString,
                                        moneda,StrToDate(Copy(Fecha,7,2)+'/'+Copy(Fecha,5,2)+'/'+Copy(Fecha,1,4))));
   end
   else
   begin
    qfindDato := Find_Ldr('SELECT GrupoPrecio FROM PTCliente (nolock) WHERE ClienteID = :pru',cliente);
//    grupocliente := qfindDato.FieldByName('GrupoCliente').AsString;
    grupocliente := qfindDato.FieldByName('GrupoPrecio').AsString;

    //Buscar Grupo Cliente - Prueba
    qfind.Close;
    qfind.SQL.Clear;
    qfind.SQL.Text := ' SELECT MonedaId, Precio FROM PTAcuerdoComercial (nolock) '+
                      ' WHERE PruebaCode = '+#39+'0'+#39+' AND PruebaRelation = '+#39+prueba+#39+
                      ' AND ClienteCode = '+#39+'1'+#39+' AND ClienteRelation = '+#39+grupocliente+#39+
                      ' AND Relacion = '+#39+'P'+#39+
                      ' AND Costo = 0 '+
                      ' AND DataAreaId = ' + #39 + CurEmpresa + #39 +
                      ' AND Activo = 1 AND Desde <= '+#39+Fecha+#39+' AND Hasta >= '+#39+Fecha+#39;
    qfind.Open;

    FreeAndNil(qfindDato);

    if qfind.RecordCount > 0 then
    begin
     if moneda = qfind.FieldByName('MonedaId').AsString then
       result := DM.Redondeo(qfind.FieldByName('Precio').AsFloat)
     else
       result := DM.Redondeo(ValorMoneda(qfind.FieldByName('Precio').AsFloat,
                                         qfind.FieldByName('MonedaId').AsString,
                                         moneda,StrToDate(Copy(Fecha,7,2)+'/'+Copy(Fecha,5,2)+'/'+Copy(Fecha,1,4))));
    end
    else
    begin
     qfindDato := Find_Ldr('SELECT GrupoPruebaid FROM PTPrueba (nolock) WHERE PruebaID = :pru',prueba);

     //Buscar Grupo Cliente - Grupo Prueba
     qfind.Close;
     qfind.SQL.Clear;
     qfind.SQL.Text := ' SELECT MonedaId,Precio FROM PTAcuerdoComercial (nolock) '+
                       ' WHERE PruebaCode = '+#39+'1'+#39+' AND PruebaRelation = '+#39+qfindDato.FieldByName('GrupoPruebaid').AsString+#39+
                       ' AND ClienteCode = '+#39+'1'+#39+' AND ClienteRelation = '+#39+grupocliente+#39+
                       ' AND Relacion = '+#39+'P'+#39+
                       ' AND Costo = 0 '+
                       ' AND DataAreaId = ' + #39 + CurEmpresa + #39 +
                       ' AND Activo = 1 AND Desde <= '+#39+Fecha+#39+' AND Hasta >= '+#39+Fecha+#39;
     qfind.Open;

     FreeAndNil(qfindDato);

     if qfind.RecordCount > 0 then
     begin
      if moneda = qfind.FieldByName('MonedaId').AsString then
         result := DM.Redondeo(qfind.FieldByName('Precio').AsFloat)
      else
         result := DM.Redondeo(ValorMoneda(qfind.FieldByName('Precio').AsFloat,
                                           qfind.FieldByName('MonedaId').AsString,
                                           moneda,StrToDate(Copy(Fecha,7,2)+'/'+Copy(Fecha,5,2)+'/'+Copy(Fecha,1,4))));
     end
     else
     begin
      //Buscar Grupo Cliente - Todas
      qfind.Close;
      qfind.SQL.Clear;
      qfind.SQL.Text := ' SELECT MonedaId,Precio FROM PTAcuerdoComercial (nolock) '+
                        ' WHERE PruebaCode = '+#39+'2'+#39+
                        ' AND ClienteCode = '+#39+'1'+#39+' AND ClienteRelation = '+#39+grupocliente+#39+
                        ' AND Relacion = '+#39+'P'+#39+
                        ' AND Costo = 0 '+
                        ' AND DataAreaId = ' + #39 + CurEmpresa + #39 +
                        ' AND Activo = 1 AND Desde <= '+#39+Fecha+#39+' AND Hasta >= '+#39+Fecha+#39;
      qfind.Open;

      if qfind.RecordCount > 0 then
      begin
      if moneda = qfind.FieldByName('MonedaId').AsString then
         result := DM.Redondeo(qfind.FieldByName('Precio').AsFloat)
      else
         result := DM.Redondeo(ValorMoneda(qfind.FieldByName('Precio').AsFloat,
                                           qfind.FieldByName('MonedaId').AsString,
                                           moneda,StrToDate(Copy(Fecha,7,2)+'/'+Copy(Fecha,5,2)+'/'+Copy(Fecha,1,4))));
      end
      else
      begin
       //Buscar Todos - prueba
       qfind.Close;
       qfind.SQL.Clear;
       qfind.SQL.Text := ' SELECT MonedaId, Precio FROM PTAcuerdoComercial (nolock) '+
                         ' WHERE PruebaCode = '+#39+'0'+#39+ ' AND PruebaRelation = '+#39+prueba+#39+
                         ' AND ClienteCode = '+#39+'2'+#39+
                         ' AND Relacion = '+#39+'P'+#39+
                         ' AND Costo = 0 '+
                         ' AND DataAreaId = ' + #39 + CurEmpresa + #39 +
                         ' AND Activo = 1 AND Desde <= '+#39+Fecha+#39+' AND Hasta >= '+#39+Fecha+#39;
       qfind.Open;

       if qfind.RecordCount > 0 then
       begin
       if moneda = qfind.FieldByName('MonedaId').AsString then
          result := DM.Redondeo(qfind.FieldByName('Precio').AsFloat)
       else
          result := DM.Redondeo(ValorMoneda(qfind.FieldByName('Precio').AsFloat,
                                qfind.FieldByName('MonedaId').AsString,
                                moneda,StrToDate(Copy(Fecha,7,2)+'/'+Copy(Fecha,5,2)+'/'+Copy(Fecha,1,4))));
       end
       else
       begin

        qfindDato := Find_Ldr('SELECT GrupoPruebaId FROM PTPrueba (nolock) WHERE PruebaID = :pru',prueba);

        //Buscar Todos - grupo de prueba
        qfind.Close;
        qfind.SQL.Clear;
        qfind.SQL.Text := ' SELECT MonedaId,Precio FROM PTAcuerdoComercial (nolock) '+
                          ' WHERE PruebaCode = '+#39+'1'+#39+ ' AND PruebaRelation = '+#39+qfindDato.fieldbyname('GrupoPruebaId').asstring+#39+
                          ' AND ClienteCode = '+#39+'2'+#39+
                          ' AND Relacion = '+#39+'P'+#39+
                          ' AND Costo = 0 '+
                          ' AND DataAreaId = ' + #39 + CurEmpresa + #39 +
                          ' AND Activo = 1 AND Desde <= '+#39+Fecha+#39+' AND Hasta >= '+#39+Fecha+#39;
        qfind.Open;

        FreeAndNil(qfindDato);

        if qfind.RecordCount > 0 then
        begin
         if moneda = qfind.FieldByName('MonedaId').AsString then
            result := DM.Redondeo(qfind.FieldByName('Precio').AsFloat)
         else
            result := DM.Redondeo(ValorMoneda(qfind.FieldByName('Precio').AsFloat,
                                  qfind.FieldByName('MonedaId').AsString,
                                  moneda,StrToDate(Copy(Fecha,7,2)+'/'+Copy(Fecha,5,2)+'/'+Copy(Fecha,1,4))));
        end
        else
        begin
         //Buscar Todos - Todos
         qfind.Close;
         qfind.SQL.Clear;
         qfind.SQL.Text := ' SELECT MonedaId,Precio FROM PTAcuerdoComercial (nolock) '+
                           ' WHERE PruebaCode = '+#39+'2'+#39+
                           ' AND ClienteCode = '+#39+'2'+#39+
                           ' AND Relacion = '+#39+'P'+#39+
                           ' AND Costo = 0 '+
                           ' AND DataAreaId = ' + #39 + CurEmpresa + #39 +
                           ' AND Activo = 1 AND Desde <= '+#39+Fecha+#39+' AND Hasta >= '+#39+Fecha+#39;
         qfind.Open;

         if qfind.RecordCount > 0 then
         begin
          if moneda = qfind.FieldByName('MonedaId').AsString then
             result := DM.Redondeo(qfind.FieldByName('Precio').AsFloat)
          else
             result := DM.Redondeo(ValorMoneda(qfind.FieldByName('Precio').AsFloat,
                                   qfind.FieldByName('MonedaId').AsString,
                                   moneda,StrToDate(Copy(Fecha,7,2)+'/'+Copy(Fecha,5,2)+'/'+Copy(Fecha,1,4))));
         end
         else
         begin
         qfindDato := DM.NewQuery;

          qfindDato.Close;
//          qfindDato.SQL.Text := ' SELECT * FROM PTPrecioAlternativo (nolock) WHERE PruebaId = '+#39+prueba+#39+
//                                ' AND SucursalId = '+#39+sucursalid+#39+' AND Activo = 1';
          if (sucursalid <> dm.Cursucursal ) then
             dm.GrupoPrecioPriv := Dm.GrupoPrecioPrivado(sucursalid);
          qfindDato.SQL.Text := ' SELECT MonedaID, Precio FROM PTACUERDOCOMERCIAL (nolock) WHERE PruebaRelation = '+#39+prueba+#39+
                                ' AND ClienteRelation = '+#39+dm.GrupoPrecioPriv+#39+                            ' AND DataAreaId = ' + #39 + CurEmpresa + #39 +
                                ' AND Activo = 1 '+
                                ' AND Desde <= '+#39+Fecha+#39+' AND Hasta >= '+#39+Fecha+#39;
          qfindDato.Open;
          if qfindDato.RecordCount > 0 then
          begin
           qrParametro.close;
           qrParametro.Open;

{           if qrParametroPreciosBaseDolares.Value then
           begin
            precio := ValorMoneda(qfindDato.FieldByName('PrecioDolares').AsFloat,qrParametroMonedaDolares.Value ,
                                  qrParametroMonedaID.Value,DM.SystemDate);
            if moneda = qrParametroMonedaID.Value then
              result := DM.Redondeo(precio)
            else
              result := qfindDato.FieldByName('PrecioDolares').AsFloat;
           end
           else
           begin
}
            if moneda = qrParametroMonedaID.Value then
               result := DM.Redondeo(qfindDato.FieldByName('Precio').AsFloat)
            else
               result := DM.Redondeo(ValorMoneda(qfindDato.FieldByName('Precio').AsFloat,
                                     qrParametroMonedaID.Value ,
                                     moneda,StrToDate(Copy(Fecha,7,2)+'/'+Copy(Fecha,5,2)+'/'+Copy(Fecha,1,4))));
 //          end;
           FreeAndNil(qfindDato);
          end
          else
          begin
           qrParametro.close;
           qrParametro.Open;

           FreeAndNil(qfindDato);
           qfindDato := Find_Ldr('SELECT Precio, PrecioDolares FROM PTPrueba (nolock) WHERE PruebaID = :pur',prueba);

           if qrParametroPreciosBaseDolares.Value then
           begin
            precio := ValorMoneda(qfindDato.FieldByName('PrecioDolares').AsFloat,qrParametroMonedaDolares.Value ,
                                  qrParametroMonedaID.Value,StrToDate(Copy(Fecha,7,2)+'/'+Copy(Fecha,5,2)+'/'+Copy(Fecha,1,4)));
            if moneda = qrParametroMonedaID.Value then
              result := DM.Redondeo(precio)
            else
              result := qfindDato.FieldByName('PrecioDolares').AsFloat;
           end
           else
           begin
            if moneda = qrParametroMonedaID.Value then
               result := DM.Redondeo(qfindDato.FieldByName('Precio').AsFloat)
            else
               result := DM.Redondeo(ValorMoneda(qfindDato.FieldByName('Precio').AsFloat,
                                                 qrParametroMonedaID.Value ,
                                                 moneda,StrToDate(Copy(Fecha,7,2)+'/'+Copy(Fecha,5,2)+'/'+Copy(Fecha,1,4))));
           end;
           FreeAndNil(qfindDato);
          end;
         end;
        end;
       end;
      end;
     end;
    end;
   end;
  end;
 end;
 end
 else
  result := DM.Redondeo(precio);
end;

function TDM.PrecioPruebaCosto(prueba: string; cliente: string; moneda: string; Fecha : string) : Double;
var
 qfind : TADOQuery;
 qfindDato : TADOQuery;
 qfindPrueba : TADOQuery;
 grupocliente : String;
begin
 qfind := Newquery;
 findAcuerdoCom := false;

 //Buscar Cliente - Prueba
 qfind.Close;
 qfind.SQL.Clear;
 qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial (nolock) '+
                   ' WHERE PruebaCode = '+#39+'0'+#39+' AND PruebaRelation = '+#39+prueba+#39+
                   ' AND ClienteCode = '+#39+'0'+#39+' AND ClienteRelation = '+#39+cliente+#39+
                   ' AND Relacion = '+#39+'P'+#39+
                   ' AND Costo = 1 '+
                   ' AND Activo = 1 '+
                   ' AND DataAreaId = ' + #39 + CurEmpresa + #39 +
                   ' AND Desde <= '+#39+Fecha+#39+' AND Hasta >= '+#39+Fecha+#39;
 qfind.Open;

 if qfind.RecordCount > 0 then
 begin
   findAcuerdoCom := true;
   qfindPrueba := Find_Ldr('SELECT Costo FROM PTPrueba (nolock) WHERE PruebaID = :pru', prueba);
   result := DM.Redondeo(qfindPrueba.FieldByName('Costo').AsFloat);
 end
 else
 begin
  qfindDato := Find_Ldr('SELECT GrupoPruebaID FROM PTPrueba (nolock) WHERE PruebaID = :pru',prueba);

  //Buscar Cliente - Grupo de Prueba
  qfind.Close;
  qfind.SQL.Clear;
  qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial (nolock) '+
                    ' WHERE PruebaCode = '+#39+'1'+#39+' AND PruebaRelation = '+#39+qfindDato.FieldByName('GrupoPruebaId').AsString+#39+
                    ' AND ClienteCode = '+#39+'0'+#39+' AND ClienteRelation = '+#39+cliente+#39+
                    ' AND Relacion = '+#39+'P'+#39+
                    ' AND Costo = 1 '+
                    ' AND Activo = 1 '+
                    ' AND DataAreaId = ' + #39 + CurEmpresa + #39 +
                    ' AND Desde <= '+#39+Fecha+#39+' AND Hasta >= '+#39+Fecha+#39;
  qfind.Open;

  FreeAndNil(qfindDato);

  if qfind.RecordCount > 0 then
  begin
    findAcuerdoCom := true;
    qfindPrueba := Find_Ldr('SELECT Costo FROM PTPrueba (nolock) WHERE PruebaID = :pru', prueba);
    result := DM.Redondeo(qfindPrueba.FieldByName('Costo').AsFloat);
  end
  else
  begin
   //Buscar Cliente - Todos
   qfind.Close;
   qfind.SQL.Clear;
   qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial (nolock) '+
                     ' WHERE PruebaCode = '+#39+'2'+#39+
                     ' AND ClienteCode = '+#39+'0'+#39+ ' AND ClienteRelation = '+#39+cliente+#39+
                     ' AND Relacion = '+#39+'P'+#39+
                     ' AND Costo = 1 '+
                     ' AND Activo = 1 '+
                     ' AND DataAreaId = ' + #39 + CurEmpresa + #39 +
                     ' AND Desde <= '+#39+Fecha+#39+' AND Hasta >= '+#39+Fecha+#39;
   qfind.Open;

   if qfind.RecordCount > 0 then
   begin
     findAcuerdoCom := true;
     qfindPrueba := Find_Ldr('SELECT Costo FROM PTPrueba (nolock) WHERE PruebaID = :pru', prueba);
     result := DM.Redondeo(qfindPrueba.FieldByName('Costo').AsFloat);
   end
   else
   begin
    qfindDato := Find_Ldr('SELECT GrupPrecio FROM PTCliente (nolock) WHERE ClienteID = :pru',cliente);
//    grupocliente := qfindDato.FieldByName('GrupoCliente').AsString;
    grupocliente := qfindDato.FieldByName('GrupoPrecio').AsString;

    //Buscar Grupo Cliente - Prueba
    qfind.Close;
    qfind.SQL.Clear;
    qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial (nolock) '+
                      ' WHERE PruebaCode = '+#39+'0'+#39+' AND PruebaRelation = '+#39+prueba+#39+
                      ' AND ClienteCode = '+#39+'1'+#39+' AND ClienteRelation = '+#39+grupocliente+#39+
                      ' AND Relacion = '+#39+'P'+#39+
                      ' AND Costo = 1 '+
                      ' AND Activo = 1 '+
                      ' AND DataAreaId = ' + #39 + CurEmpresa + #39 +
                      ' AND Desde <= '+#39+Fecha+#39+' AND Hasta >= '+#39+Fecha+#39;
    qfind.Open;

    FreeAndNil(qfindDato);

    if qfind.RecordCount > 0 then
    begin
      findAcuerdoCom := true;
      qfindPrueba := Find_Ldr('SELECT Costo FROM PTPrueba (nolock) WHERE PruebaID = :pru', prueba);
      result := DM.Redondeo(qfindPrueba.FieldByName('Costo').AsFloat);
    end
    else
    begin
     qfindDato := Find_Ldr('SELECT GrupoPruebaID FROM PTPrueba (nolock) WHERE PruebaID = :pru',prueba);

     //Buscar Grupo Cliente - Grupo Prueba
     qfind.Close;
     qfind.SQL.Clear;
     qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial (nolock) '+
                       ' WHERE PruebaCode = '+#39+'1'+#39+' AND PruebaRelation = '+#39+qfindDato.FieldByName('GrupoPruebaid').AsString+#39+
                       ' AND ClienteCode = '+#39+'1'+#39+' AND ClienteRelation = '+#39+grupocliente+#39+
                       ' AND Relacion = '+#39+'P'+#39+
                       ' AND Costo = 1 '+
                       ' AND Activo = 1 '+
                       ' AND DataAreaId = ' + #39 + CurEmpresa + #39 +
                       ' AND Desde <= '+#39+Fecha+#39+' AND Hasta >= '+#39+Fecha+#39;
     qfind.Open;

     FreeAndNil(qfindDato);

     if qfind.RecordCount > 0 then
     begin
       findAcuerdoCom := true;
       qfindPrueba := Find_Ldr('SELECT Costo FROM PTPrueba (nolock) WHERE PruebaID = :pru', prueba);
       result := DM.Redondeo(qfindPrueba.FieldByName('Costo').AsFloat);
     end
     else
     begin
      //Buscar Grupo Cliente - Todas
      qfind.Close;
      qfind.SQL.Clear;
      qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial (nolock) '+
                        ' WHERE PruebaCode = '+#39+'2'+#39+
                        ' AND ClienteCode = '+#39+'1'+#39+' AND ClienteRelation = '+#39+grupocliente+#39+
                        ' AND Relacion = '+#39+'P'+#39+
                        ' AND Costo = 1 '+
                        ' AND Activo = 1 '+
                        ' AND DataAreaId = ' + #39 + CurEmpresa + #39 +
                        ' AND Desde <= '+#39+Fecha+#39+' AND Hasta >= '+#39+Fecha+#39;
      qfind.Open;

      if qfind.RecordCount > 0 then
      begin
        findAcuerdoCom := true;
        qfindPrueba := Find_Ldr('SELECT Costo FROM PTPrueba (nolock) WHERE PruebaID = :pru', prueba);
        result := DM.Redondeo(qfindPrueba.FieldByName('Costo').AsFloat);
      end
      else
      begin
       //Buscar Todos - prueba
       qfind.Close;
       qfind.SQL.Clear;
       qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial (nolock) '+
                         ' WHERE PruebaCode = '+#39+'0'+#39+ ' AND PruebaRelation = '+#39+prueba+#39+
                         ' AND ClienteCode = '+#39+'2'+#39+
                         ' AND Relacion = '+#39+'P'+#39+
                         ' AND Costo = 1 '+
                         ' AND Activo = 1 '+
                         ' AND DataAreaId = ' + #39 + CurEmpresa + #39 +
                         ' AND Desde <= '+#39+Fecha+#39+' AND Hasta >= '+#39+Fecha+#39;
       qfind.Open;

       if qfind.RecordCount > 0 then
       begin
         findAcuerdoCom := true;
         qfindPrueba := Find_Ldr('SELECT Costo FROM PTPrueba (nolock) WHERE PruebaID = :pru', prueba);
         result := DM.Redondeo(qfindPrueba.FieldByName('Costo').AsFloat);
       end
       else
       begin
        qfindDato := Find_Ldr('SELECT GrupoPruebaID FROM PTPrueba (nolock) WHERE PruebaID = :pru',prueba);

        //Buscar Todos - grupo de prueba
        qfind.Close;
        qfind.SQL.Clear;
        qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial (nolock) '+
                          ' WHERE PruebaCode = '+#39+'1'+#39+ ' AND PruebaRelation = '+#39+qfindDato.fieldbyname('GrupoPruebaId').asstring+#39+
                          ' AND ClienteCode = '+#39+'2'+#39+
                          ' AND Relacion = '+#39+'P'+#39+
                          ' AND Costo = 1 '+
                          ' AND Activo = 1 '+
                          ' AND DataAreaId = ' + #39 + CurEmpresa + #39 +
                          ' AND Desde <= '+#39+Fecha+#39+' AND Hasta >= '+#39+Fecha+#39;
        qfind.Open;

        FreeAndNil(qfindDato);

        if qfind.RecordCount > 0 then
        begin
          findAcuerdoCom := true;
          qfindPrueba := Find_Ldr('SELECT Costo FROM PTPrueba (nolock) WHERE PruebaID = :pru', prueba);
          result := DM.Redondeo(qfindPrueba.FieldByName('Costo').AsFloat);
        end
        else
        begin
         //Buscar Todos - Todos
         qfind.Close;
         qfind.SQL.Clear;
         qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial (nolock) '+
                           ' WHERE PruebaCode = '+#39+'2'+#39+
                           ' AND ClienteCode = '+#39+'2'+#39+
                           ' AND Relacion = '+#39+'P'+#39+
                           ' AND Costo = 1 '+
                           ' AND Activo = 1 '+
                           ' AND DataAreaId = ' + #39 + CurEmpresa + #39 +
                           ' AND Desde <= '+#39+Fecha+#39+' AND Hasta >= '+#39+Fecha+#39;
         qfind.Open;

         if qfind.RecordCount > 0 then
         begin
           findAcuerdoCom := true;
           qfindPrueba := Find_Ldr('SELECT Costo FROM PTPrueba (nolock) WHERE PruebaID = :pru', prueba);
           result := DM.Redondeo(qfindPrueba.FieldByName('Costo').AsFloat);
         end
         else
          result := 0;
        end;
       end;
      end;
     end;
    end;
   end;
  end;
 end;
end;

function TDM.PrecioPruebaMoneda(prueba: string; cliente: string; moneda: string; fecha: string) : Double;
var
 qfind : TADOQuery;
 qfindDato : TADOQuery;
 grupocliente : String;
begin
 qfind := Newquery;
 findAcuerdoCom := false;
 //Buscar Cliente - Prueba
 qfind.Close;
 qfind.SQL.Clear;
 qfind.SQL.Text := ' SELECT Precio FROM PTAcuerdoComercial (nolock) '+
                   ' WHERE PruebaCode = '+#39+'0'+#39+' AND PruebaRelation = '+#39+prueba+#39+
                   ' AND ClienteCode = '+#39+'0'+#39+' AND ClienteRelation = '+#39+cliente+#39+
                   ' AND MonedaID = '+#39+moneda+#39+
                   ' AND Relacion = '+#39+'P'+#39+
                   ' AND Costo = 0 '+
                   ' AND DataAreaId = ' + #39 + CurEmpresa + #39 +
                   ' AND Activo = 1 AND Desde <= '+#39+Fecha+#39+' AND Hasta >= '+#39+Fecha+#39;
 qfind.Open;

 if qfind.RecordCount > 0 then
 begin
  findAcuerdoCom := true;
  result := DM.Redondeo(qfind.FieldByName('Precio').AsFloat);
 end
 else
 begin
  qfindDato := Find_Ldr('SELECT GrupoPruebaID FROM PTPrueba (nolock) WHERE PruebaID = :pru',prueba);

  //Buscar Cliente - Grupo de Prueba
  qfind.Close;
  qfind.SQL.Clear;
  qfind.SQL.Text := ' SELECT Precio FROM PTAcuerdoComercial (nolock) '+
                    ' WHERE PruebaCode = '+#39+'1'+#39+' AND PruebaRelation = '+#39+qfindDato.FieldByName('GrupoPruebaId').AsString+#39+
                    ' AND ClienteCode = '+#39+'0'+#39+' AND ClienteRelation = '+#39+cliente+#39+
                    ' AND MonedaID = '+#39+moneda+#39+
                    ' AND Relacion = '+#39+'P'+#39+
                    ' AND Costo = 0 '+
                    ' AND DataAreaId = ' + #39 + CurEmpresa + #39 +
                    ' AND Activo = 1 AND Desde <= '+#39+Fecha+#39+' AND Hasta >= '+#39+Fecha+#39;
  qfind.Open;

  FreeAndNil(qfindDato);

  if qfind.RecordCount > 0 then
  begin
   findAcuerdoCom := true;
   result := DM.Redondeo(qfind.FieldByName('Precio').AsFloat);
  end
  else
  begin
   //Buscar Cliente - Todos
   qfind.Close;
   qfind.SQL.Clear;
   qfind.SQL.Text := ' SELECT Precio FROM PTAcuerdoComercial (nolock) '+
                     ' WHERE PruebaCode = '+#39+'2'+#39+
                     ' AND ClienteCode = '+#39+'0'+#39+ ' AND ClienteRelation = '+#39+cliente+#39+
                     ' AND MonedaID = '+#39+moneda+#39+
                     ' AND Relacion = '+#39+'P'+#39+
                     ' AND Costo = 0 '+
                     ' AND DataAreaId = ' + #39 + CurEmpresa + #39 +
                     ' AND Activo = 1 AND Desde <= '+#39+Fecha+#39+' AND Hasta >= '+#39+Fecha+#39;
   qfind.Open;

   if qfind.RecordCount > 0 then
   begin
    findAcuerdoCom := true;
    result := DM.Redondeo(qfind.FieldByName('Precio').AsFloat);
   end
   else
   begin
    qfindDato := Find_Ldr('SELECT GrupoPrecio FROM PTCliente (nolock) WHERE ClienteID = :pru',cliente);
//    grupocliente := qfindDato.FieldByName('GrupoCliente').AsString;
    grupocliente := qfindDato.FieldByName('GrupoPrecio').AsString;

    //Buscar Grupo Cliente - Prueba
    qfind.Close;
    qfind.SQL.Clear;
    qfind.SQL.Text := ' SELECT Precio FROM PTAcuerdoComercial (nolock) '+
                      ' WHERE PruebaCode = '+#39+'0'+#39+' AND PruebaRelation = '+#39+prueba+#39+
                      ' AND ClienteCode = '+#39+'1'+#39+' AND ClienteRelation = '+#39+grupocliente+#39+
                      ' AND MonedaID = '+#39+moneda+#39+
                      ' AND Relacion = '+#39+'P'+#39+
                      ' AND Costo = 0 '+
                      ' AND DataAreaId = ' + #39 + CurEmpresa + #39 +
                      ' AND Activo = 1 AND Desde <= '+#39+Fecha+#39+' AND Hasta >= '+#39+Fecha+#39;
    qfind.Open;

    FreeAndNil(qfindDato);

    if qfind.RecordCount > 0 then
    begin
     findAcuerdoCom := true;
     result := DM.Redondeo(qfind.FieldByName('Precio').AsFloat);
    end
    else
    begin
     qfindDato := Find_Ldr('SELECT GrupoPruebaid FROM PTPrueba (nolock) WHERE PruebaID = :pru',prueba);

     //Buscar Grupo Cliente - Grupo Prueba
     qfind.Close;
     qfind.SQL.Clear;
     qfind.SQL.Text := ' SELECT Precio FROM PTAcuerdoComercial (nolock) '+
                       ' WHERE PruebaCode = '+#39+'1'+#39+' AND PruebaRelation = '+#39+qfindDato.FieldByName('GrupoPruebaid').AsString+#39+
                       ' AND ClienteCode = '+#39+'1'+#39+' AND ClienteRelation = '+#39+grupocliente+#39+
                       ' AND MonedaID = '+#39+moneda+#39+
                       ' AND Relacion = '+#39+'P'+#39+
                       ' AND Costo = 0 '+
                       ' AND DataAreaId = ' + #39 + CurEmpresa + #39 +
                       ' AND Activo = 1 AND Desde <= '+#39+Fecha+#39+' AND Hasta >= '+#39+Fecha+#39;
     qfind.Open;
     FreeAndNil(qfindDato);

     if qfind.RecordCount > 0 then
     begin
      findAcuerdoCom := true;
      result := DM.Redondeo(qfind.FieldByName('Precio').AsFloat);
     end
     else
     begin
      //Buscar Grupo Cliente - Todas
      qfind.Close;
      qfind.SQL.Clear;
      qfind.SQL.Text := ' SELECT Precio FROM PTAcuerdoComercial (nolock) '+
                        ' WHERE PruebaCode = '+#39+'2'+#39+
                        ' AND ClienteCode = '+#39+'1'+#39+' AND ClienteRelation = '+#39+grupocliente+#39+
                        ' AND MonedaID = '+#39+moneda+#39+
                        ' AND Relacion = '+#39+'P'+#39+
                        ' AND Costo = 0 '+
                        ' AND DataAreaId = ' + #39 + CurEmpresa + #39 +
                        ' AND Activo = 1 AND Desde <= '+#39+Fecha+#39+' AND Hasta >= '+#39+Fecha+#39;
      qfind.Open;

      if qfind.RecordCount > 0 then
      begin
       findAcuerdoCom := true;
       result := DM.Redondeo(qfind.FieldByName('Precio').AsFloat);
      end
      else
      begin
       //Buscar Todos - prueba
       qfind.Close;
       qfind.SQL.Clear;
       qfind.SQL.Text := ' SELECT Precio FROM PTAcuerdoComercial (nolock) '+
                         ' WHERE PruebaCode = '+#39+'0'+#39+ ' AND PruebaRelation = '+#39+prueba+#39+
                         ' AND ClienteCode = '+#39+'2'+#39+
                         ' AND MonedaID = '+#39+moneda+#39+
                         ' AND Relacion = '+#39+'P'+#39+
                         ' AND Costo = 0 '+
                         ' AND DataAreaId = ' + #39 + CurEmpresa + #39 +
                         ' AND Activo = 1 AND Desde <= '+#39+Fecha+#39+' AND Hasta >= '+#39+Fecha+#39;
       qfind.Open;

       if qfind.RecordCount > 0 then
       begin
        findAcuerdoCom := true;
        result := DM.Redondeo(qfind.FieldByName('Precio').AsFloat);
       end
       else
       begin

        qfindDato := Find_Ldr('SELECT GrupoPruebaId FROM PTPrueba (nolock) WHERE PruebaID = :pru',prueba);

        //Buscar Todos - grupo de prueba
        qfind.Close;
        qfind.SQL.Clear;
        qfind.SQL.Text := ' SELECT Precio FROM PTAcuerdoComercial (nolock) '+
                          ' WHERE PruebaCode = '+#39+'1'+#39+ ' AND PruebaRelation = '+#39+qfindDato.fieldbyname('GrupoPruebaId').asstring+#39+
                          ' AND ClienteCode = '+#39+'2'+#39+
                          ' AND MonedaID = '+#39+moneda+#39+
                          ' AND Relacion = '+#39+'P'+#39+
                          ' AND Costo = 0 '+
                          ' AND DataAreaId = ' + #39 + CurEmpresa + #39 +
                          ' AND Activo = 1 AND Desde <= '+#39+Fecha+#39+' AND Hasta >= '+#39+Fecha+#39;
        qfind.Open;

        FreeAndNil(qfindDato);

        if qfind.RecordCount > 0 then
        begin
         findAcuerdoCom := true;
         result := DM.Redondeo(qfind.FieldByName('Precio').AsFloat);
        end
        else
        begin
         //Buscar Todos - Todos
         qfind.Close;
         qfind.SQL.Clear;
         qfind.SQL.Text := ' SELECT Precio FROM PTAcuerdoComercial (nolock) '+
                           ' WHERE PruebaCode = '+#39+'2'+#39+
                           ' AND ClienteCode = '+#39+'2'+#39+
                           ' AND MonedaID = '+#39+moneda+#39+
                           ' AND Relacion = '+#39+'P'+#39+
                           ' AND Costo = 0 '+
                           ' AND DataAreaId = ' + #39 + CurEmpresa + #39 +
                           ' AND Activo = 1 AND Desde <= '+#39+Fecha+#39+' AND Hasta >= '+#39+Fecha+#39;
         qfind.Open;

         if qfind.RecordCount > 0 then
         begin
          findAcuerdoCom := true;
          result := DM.Redondeo(qfind.FieldByName('Precio').AsFloat);
         end
         else
          result := 0;
        end;
       end;
      end;
     end;
    end;
   end;
  end;
 end;
end;
function TDM.CoberturaPrueba(prueba,cliente,moneda,fecha: string) : Double;
var
 qfind : TADOQuery;
 qfindDato : TADOQuery;
 cobertura : Double;
begin
 cobertura := CoberturaPruebaMoneda(prueba, cliente, moneda, fecha);

 if cobertura = 0 then
 begin
  qfind := Newquery;

  //Buscar Prueba - Cliente
  qfind.Close;
  qfind.SQL.Clear;
  qfind.SQL.Text := ' SELECT MonedaId,CoberturaValor FROM PTAcuerdoComercial (nolock) '+
                    ' WHERE PruebaCode = '+#39+'0'+#39+' AND PruebaRelation = '+#39+prueba+#39+
                    ' AND ClienteCode = '+#39+'0'+#39+' AND ClienteRelation = '+#39+cliente+#39+
                    ' AND DataAreaId = ' + #39 + CurEmpresa + #39 +
                    ' AND Activo = 1 AND Desde <= '+#39+Fecha+#39+' AND Hasta >= '+#39+Fecha+#39;
  qfind.Open;

  if qfind.RecordCount > 0 then
  begin
   if moneda = qfind.FieldByName('MonedaId').AsString then
      result := DM.Redondeo(qfind.FieldByName('CoberturaValor').AsFloat)
   else
      result := DM.Redondeo(ValorMoneda(qfind.FieldByName('CoberturaValor').AsFloat,
                                        qfind.FieldByName('MonedaId').AsString,
                                        moneda, StrToDate(Copy(Fecha,7,2)+'/'+Copy(Fecha,5,2)+'/'+Copy(Fecha,1,4))));
  end
  else
  begin
   qfindDato := Find_Ldr('SELECT GrupoPrecio FROM PTCliente (nolock) WHERE ClienteID = :cli',cliente);

   //Buscar Prueba - GrupoCliente
   qfind.Close;
   qfind.SQL.Clear;
   qfind.SQL.Text := ' SELECT MonedaID,CoberturaValor FROM PTAcuerdoComercial (nolock) '+
                     ' WHERE PruebaCode = '+#39+'0'+#39+' AND PruebaRelation = '+#39+prueba+#39+
//                     ' AND ClienteCode = '+#39+'1'+#39+' AND ClienteRelation = '+#39+qfindDato.FieldByName('GrupoCliente').AsString+#39+
                     ' AND ClienteCode = '+#39+'1'+#39+' AND ClienteRelation = '+#39+qfindDato.FieldByName('GrupoPrecio').AsString+#39+
                     ' AND DataAreaId = ' + #39 + CurEmpresa + #39 +
                     ' AND Activo = 1 AND Desde <= '+#39+Fecha+#39+' AND Hasta >= '+#39+Fecha+#39;
   qfind.Open;

   if qfind.RecordCount > 0 then
   begin
    if moneda = qfind.FieldByName('MonedaId').AsString then
       result := DM.Redondeo(qfind.FieldByName('CoberturaValor').AsFloat)
    else
       result := DM.Redondeo(ValorMoneda(qfind.FieldByName('CoberturaValor').AsFloat,
                                         qfind.FieldByName('MonedaId').AsString,
                                         moneda,StrToDate(Copy(Fecha,7,2)+'/'+Copy(Fecha,5,2)+'/'+Copy(Fecha,1,4))));
    FreeAndNil(qfindDato);
   end
   else
   begin
    //Buscar Prueba - Todos
    qfind.Close;
    qfind.SQL.Clear;
    qfind.SQL.Text := ' SELECT MonedaID, CoberturaValor FROM PTAcuerdoComercial (nolock) '+
                      ' WHERE PruebaCode = '+#39+'0'+#39+' AND PruebaRelation = '+#39+prueba+#39+
                      ' AND ClienteCode = '+#39+'2'+#39+
                      ' AND DataAreaId = ' + #39 + CurEmpresa + #39 +
                      ' AND Activo = 1 AND Desde <= '+#39+Fecha+#39+' AND Hasta >= '+#39+Fecha+#39;
    qfind.Open;

    if qfind.RecordCount > 0 then
    begin
     if moneda = qfind.FieldByName('MonedaId').AsString then
        result := DM.Redondeo(qfind.FieldByName('CoberturaValor').AsFloat)
     else
        result := DM.Redondeo(ValorMoneda(qfind.FieldByName('CoberturaValor').AsFloat,
                                          qfind.FieldByName('MonedaId').AsString,
                                          moneda,StrToDate(Copy(Fecha,7,2)+'/'+Copy(Fecha,5,2)+'/'+Copy(Fecha,1,4))));
    end;
   end;
  end;

  FreeAndNil(qfind);
 end
 else
  result := DM.Redondeo(cobertura);
end;


function TDM.CoberturaPruebaMoneda(prueba,cliente,moneda,fecha: string) : Double;
var
 qfind : TADOQuery;
 qfindDato : TADOQuery;
begin
 qfind := Newquery;

 //Buscar Prueba - Cliente
 qfind.Close;
 qfind.SQL.Clear;
 qfind.SQL.Text := ' SELECT CoberturaValor FROM PTAcuerdoComercial (nolock) '+
                   ' WHERE PruebaCode = '+#39+'0'+#39+' AND PruebaRelation = '+#39+prueba+#39+
                   ' AND ClienteCode = '+#39+'0'+#39+' AND ClienteRelation = '+#39+cliente+#39+
                   ' AND MonedaID = '+#39+moneda+#39+
                   ' AND DataAreaId = ' + #39 + CurEmpresa + #39 +
                   ' AND Activo = 1 AND Desde <= '+#39+Fecha+#39+' AND Hasta >= '+#39+Fecha+#39;
 qfind.Open;

 if qfind.RecordCount > 0 then
    result := DM.Redondeo(qfind.FieldByName('CoberturaValor').AsFloat)
 else
 begin
  qfindDato := Find_Ldr('SELECT GrupoPrecio FROM PTCliente (nolock) WHERE ClienteID = :cli',cliente);

  //Buscar Prueba - GrupoCliente
  qfind.Close;
  qfind.SQL.Clear;
  qfind.SQL.Text := ' SELECT CoberturaValor FROM PTAcuerdoComercial (nolock) '+
                    ' WHERE PruebaCode = '+#39+'0'+#39+' AND PruebaRelation = '+#39+prueba+#39+
//                    ' AND ClienteCode = '+#39+'1'+#39+' AND ClienteRelation = '+#39+qfindDato.FieldByName('GrupoCliente').AsString+#39+
                    ' AND ClienteCode = '+#39+'1'+#39+' AND ClienteRelation = '+#39+qfindDato.FieldByName('GrupoPrecio').AsString+#39+
                    ' AND MonedaID = '+#39+moneda+#39+
                    ' AND DataAreaId = ' + #39 + CurEmpresa + #39 +
                    ' AND Activo = 1 AND Desde <= '+#39+Fecha+#39+' AND Hasta >= '+#39+Fecha+#39;
  qfind.Open;

  if qfind.RecordCount > 0 then
   begin
    result := DM.Redondeo(qfind.FieldByName('CoberturaValor').AsFloat);
    FreeAndNil(qfindDato);
   end
  else
   begin
   //Buscar Prueba - Todos
   qfind.Close;
   qfind.SQL.Clear;
   qfind.SQL.Text := ' SELECT CoberturaValor FROM PTAcuerdoComercial (nolock) '+
                     ' WHERE PruebaCode = '+#39+'0'+#39+' AND PruebaRelation = '+#39+prueba+#39+
                     ' AND ClienteCode = '+#39+'2'+#39+
                     ' AND MonedaID = '+#39+moneda+#39+
                     ' AND DataAreaId = ' + #39 + CurEmpresa + #39 +
                     ' AND Activo = 1 AND Desde <= '+#39+Fecha+#39+' AND Hasta >= '+#39+Fecha+#39;
   qfind.Open;

   if qfind.RecordCount > 0 then
      result := DM.Redondeo(qfind.FieldByName('CoberturaValor').AsFloat);
  end;
 end;

 FreeAndNil(qfind);
end;


function TDM.CoberturaPruebaMonedaPorc(prueba,cliente,moneda,fecha: string) : Integer;
var
 qfind : TADOQuery;
 qfindDato : TADOQuery;
begin
 qfind := Newquery;

 //Buscar Prueba - Cliente
 qfind.Close;
 qfind.SQL.Clear;
 qfind.SQL.Text := ' SELECT CoberturaExpPorc FROM PTAcuerdoComercial (nolock) '+
                   ' WHERE PruebaCode = '+#39+'0'+#39+' AND PruebaRelation = '+#39+prueba+#39+
                   ' AND ClienteCode = '+#39+'0'+#39+' AND ClienteRelation = '+#39+cliente+#39+
                   ' AND MonedaID = '+#39+moneda+#39+
                   ' AND DataAreaId = ' + #39 + CurEmpresa + #39 +
                   ' AND Activo = 1 AND Desde <= '+#39+Fecha+#39+' AND Hasta >= '+#39+Fecha+#39;
 qfind.Open;

 if qfind.RecordCount > 0 then
    result := qfind.FieldByName('CoberturaExpPorc').AsInteger
 else
 begin
  qfindDato := Find_Ldr('SELECT GrupoPrecio FROM PTCliente (nolock) WHERE ClienteID = :cli',cliente);

  //Buscar Prueba - GrupoCliente
  qfind.Close;
  qfind.SQL.Clear;
  qfind.SQL.Text := ' SELECT CoberturaExpPorc FROM PTAcuerdoComercial (nolock) '+
                    ' WHERE PruebaCode = '+#39+'0'+#39+' AND PruebaRelation = '+#39+prueba+#39+
//                    ' AND ClienteCode = '+#39+'1'+#39+' AND ClienteRelation = '+#39+qfindDato.FieldByName('GrupoCliente').AsString+#39+
                    ' AND ClienteCode = '+#39+'1'+#39+' AND ClienteRelation = '+#39+qfindDato.FieldByName('GrupoPrecio').AsString+#39+
                    ' AND MonedaID = '+#39+moneda+#39+
                    ' AND DataAreaId = ' + #39 + CurEmpresa + #39 +
                    ' AND Activo = 1 AND Desde <= '+#39+Fecha+#39+' AND Hasta >= '+#39+Fecha+#39;
  qfind.Open;

  if qfind.RecordCount > 0 then
  begin
   result := qfind.FieldByName('CoberturaExpPorc').AsInteger;
   FreeAndNil(qfindDato);
  end
  else
  begin
   //Buscar Prueba - Todos
   qfind.Close;
   qfind.SQL.Clear;
   qfind.SQL.Text := ' SELECT CoberturaExpPorc FROM PTAcuerdoComercial (nolock) '+
                     ' WHERE PruebaCode = '+#39+'0'+#39+' AND PruebaRelation = '+#39+prueba+#39+
                     ' AND ClienteCode = '+#39+'2'+#39+
                     ' AND MonedaID = '+#39+moneda+#39+
                     ' AND DataAreaId = ' + #39 + CurEmpresa + #39 +
                     ' AND Activo = 1 AND Desde <= '+#39+Fecha+#39+' AND Hasta >= '+#39+Fecha+#39;
   qfind.Open;

   if qfind.RecordCount > 0 then
      result := qfind.FieldByName('CoberturaExpPorc').AsInteger
   else
      result := 0;
  end;
 end;

 FreeAndNil(qfind);
end;


function TDM.CoberturaPruebaPorc(prueba,cliente,moneda,fecha: string) : Integer;
var
 qfind : TADOQuery;
 qfindDato : TADOQuery;
 cobertura : Integer;
begin
 cobertura := CoberturaPruebaMonedaPorc(prueba,cliente,moneda,fecha);

// if not cobertura then
 if (cobertura = 0) then
 begin
  qfind := Newquery;

  //Buscar Prueba - Cliente
  qfind.Close;
  qfind.SQL.Clear;
  qfind.SQL.Text := ' SELECT CoberturaExpPorc FROM PTAcuerdoComercial (nolock) '+
                    ' WHERE PruebaCode = '+#39+'0'+#39+' AND PruebaRelation = '+#39+prueba+#39+
                    ' AND ClienteCode = '+#39+'0'+#39+' AND ClienteRelation = '+#39+cliente+#39+
                    ' AND DataAreaId = ' + #39 + CurEmpresa + #39 +
                    ' AND Activo = 1 AND Desde <= '+#39+Fecha+#39+' AND Hasta >= '+#39+Fecha+#39;
  qfind.Open;

  if qfind.RecordCount > 0 then
  begin
   result := qfind.FieldByName('CoberturaExpPorc').AsInteger;
  end
  else
  begin
   qfindDato := Find_Ldr('SELECT GrupoPrecio FROM PTCliente (nolock) WHERE ClienteID = :cli',cliente);

   //Buscar Prueba - GrupoCliente
   qfind.Close;
   qfind.SQL.Clear;
   qfind.SQL.Text := ' SELECT CoberturaExpPorc FROM PTAcuerdoComercial (nolock) '+
                     ' WHERE PruebaCode = '+#39+'0'+#39+' AND PruebaRelation = '+#39+prueba+#39+
//                     ' AND ClienteCode = '+#39+'1'+#39+' AND ClienteRelation = '+#39+qfindDato.FieldByName('GrupoCliente').AsString+#39+
                     ' AND ClienteCode = '+#39+'1'+#39+' AND ClienteRelation = '+#39+qfindDato.FieldByName('GrupoPrecio').AsString+#39+
                     ' AND DataAreaId = ' + #39 + CurEmpresa + #39 +
                     ' AND Activo = 1 AND Desde <= '+#39+Fecha+#39+' AND Hasta >= '+#39+Fecha+#39;
   qfind.Open;

   if qfind.RecordCount > 0 then
   begin
    result := qfind.FieldByName('CoberturaExpPorc').AsInteger;
    FreeAndNil(qfindDato);
   end
   else
   begin
    //Buscar Prueba - Todos
    qfind.Close;
    qfind.SQL.Clear;
    qfind.SQL.Text := ' SELECT CoberturaExpPorc FROM PTAcuerdoComercial (nolock) '+
                      ' WHERE PruebaCode = '+#39+'0'+#39+' AND PruebaRelation = '+#39+prueba+#39+
                      ' AND ClienteCode = '+#39+'2'+#39+
                      ' AND DataAreaId = ' + #39 + CurEmpresa + #39 +
                      ' AND Activo = 1 AND Desde <= '+#39+Fecha+#39+' AND Hasta >= '+#39+Fecha+#39;
    qfind.Open;

    if qfind.RecordCount > 0 then
    begin
     result := qfind.FieldByName('CoberturaExpPorc').AsInteger;
    end
    else
     result := 0;
   end;
  end;

  FreeAndNil(qfind);
 end
 else
  result := cobertura;
end;


function TDM.CoberturaPermitida(cliente: string) : integer;
Var
 qfindpermitido : TADOQuery;
begin
 qfindpermitido := DM.Find_Ldr('SELECT PruebasPorDia FROM PTCliente (nolock) WHERE ClienteID = :cli',cliente);
 result := qfindpermitido.FieldByName('PruebasPorDia').AsInteger;
 FreeAndNil(qfindpermitido);
end;


function TDM.CurCoberturaAplicada(refrecid : Int64) : Int64;
var
 qfind     : TADOQuery;
 permitido : integer;
begin
 qfind := DM.NewQuery;
{
 qfind.Close;
 qfind.SQL.Text := ' SELECT C.RecId AS registro FROM ptEntradaPaciente C, ptEntradaPacienteDetalle D '+
                   ' WHERE C.recid = D.refrecid '+
                   ' AND c.DataAreaId = d.DataAreaId '+
                   ' AND c.DataAreaId = ' + #39 + CurEmpresa + #39 +
                   ' AND C.fecha = :fech '+
                   ' AND D.coberturaaplica = 1 '+
                   ' AND C.recid = :rec';
 qfind.Parameters[0].Value := DM.SystemDate;
 qfind.Parameters[1].Value := refrecid;
 qfind.Parameters[0].Value := refrecid;
 qfind.Open;
}
 qfind.Close;
 qfind.SQL.Text := ' SELECT RecId AS registro FROM ptEntradaPacienteDetalle (nolock) '+
                   ' WHERE coberturaaplica = 1 '+
                   ' AND DataAreaId = ' + #39 + CurEmpresa + #39 +
                   ' AND RefRecId = :rec ';
 qfind.Parameters[0].Value := refrecid;
 qfind.Open;

 Result := qfind.RecordCount;

 FreeAndNil(qfind);
end;


function TDM.CoberturaAplica(cliente, paciente : String; curaplicada : Integer; refrecid : Int64; fecha :  String) : Int64;
var
 qfind : TADOQuery;
 permitido : integer;
begin
 qfind := DM.NewQuery;
 permitido := CoberturaPermitida(cliente);

 if permitido > 0 then
 begin
  qfind.Close;
  qfind.SQL.Text := ' SELECT c.RecId AS registro FROM ptEntradaPaciente c (nolock), ptEntradaPacienteDetalle d (nolock) '+
                    ' WHERE c.recid = d.refrecid '+
                    ' AND c.DataAreaId = d.DataAreaId '+
                    ' AND c.DataAreaId = ' + #39 + CurEmpresa + #39 +
                    ' AND c.pacienteid = '+#39+paciente+#39+
                    ' AND c.clienteid = '+#39+cliente+#39+
                    ' AND c.fecha ='+#39+fecha+#39+
                    ' AND d.coberturaaplica = 1'+
                    ' AND c.recid <> :rec ';
  qfind.Parameters[0].Value := refrecid;
  qfind.Open;

  if ( (qfind.RecordCount + curaplicada) < permitido) then
    result := 1
  else
    result := 0;
 end
 else
  result := 1;

  FreeAndNil(qfind);
end;

Function TDM.ValidarSeguroPruebaCobertura(_origen, _gruprecio, _prueba, _moneda, _cliente, _paciente, fecha : String;
                                          curaplicada : Integer; refrecid : int64) : Integer;
Var
 qfind1, qfind2 : TADOQuery;
 permitido, valor : integer;
 cobertura : Double;
begin
  valor := 0;
  DM.qrParametro.close;
  DM.qrParametro.open;

  If (_origen = DM.qrParametroGrupoSeg.Value) then
   begin
     valor := 1;
     cobertura := 0;
     permitido := 0;
     permitido := CoberturaPermitida(_cliente);

     if permitido > 0 then
       begin
         qfind1 := DM.NewQuery;
         qfind1.Close;
         qfind1.SQL.Clear;
         qfind1.SQL.Text := ' SELECT c.RecId AS registro FROM ptEntradaPaciente c (nolock) , ptEntradaPacienteDetalle d (nolock) '+
                            ' WHERE c.recid = d.refrecid '+
                            ' AND c.DataAreaId = d.DataAreaId '+
                            ' AND c.DataAreaId = ' + #39 + CurEmpresa + #39 +
                            ' AND c.pacienteid = '+#39+_paciente+#39+
                            ' AND c.clienteid = '+#39+_cliente+#39+
                            ' AND c.fecha = '+#39+fecha+#39+
                            ' AND d.coberturaaplica = 1'+
                            ' AND c.recid <> :rec ';
         qfind1.Parameters[0].Value := refrecid;
         qfind1.Open;

         If ( (qfind1.RecordCount + curaplicada) < permitido) then
            valor := 1;
//         else
//           valor := 1;
      end;

     if (valor = 1) then
       Begin
         qfind2 := DM.NewQuery;
         //Buscar Prueba - Cliente Seguro - Grupo de Precio.
         qfind2.Close;
         qfind2.SQL.Clear;
         qfind2.SQL.Text := ' SELECT monedaID,Precio FROM PTAcuerdoComercial (nolock) '+
                            ' WHERE PruebaCode = ' + #39 + '0' + #39 + ' AND PruebaRelation = ' + #39 + _prueba + #39 +
                            ' AND ClienteCode = ' + #39 + '1' + #39 + ' AND ClienteRelation = '+ #39 + _gruprecio + #39 +
                            ' AND Relacion = ' + #39 + 'P' + #39 + ' AND Costo = 0 ' +
                            ' AND DataAreaId = ' + #39 + CurEmpresa + #39 +
                            ' AND Activo = 1 '+
                            ' AND Desde <= '+#39+Fecha+#39+' AND Hasta >= '+#39+Fecha+#39;
         qfind2.Open;

         if qfind2.RecordCount > 0 then
           begin
             if _moneda = qfind2.FieldByName('MonedaId').AsString then
               cobertura := DM.Redondeo(qfind2.FieldByName('PRECIO').AsFloat)
             else
               cobertura := DM.Redondeo(ValorMoneda(qfind2.FieldByName('PRECIO').AsFloat,
                                        qfind2.FieldByName('MonedaId').AsString,
                                        _moneda, StrToDate(Copy(Fecha,7,2)+'/'+Copy(Fecha,5,2)+'/'+Copy(Fecha,1,4))));
           end;

         if (cobertura > 1) then
           valor := 1
         Else
           valor := 0;
       end;
   end;

  Result := valor;
  FreeAndNil(qfind1);
  FreeAndNil(qfind2);
end;


Function TDM.ValidarSeguroPruebaCobertura_Precio(_cliente, _prueba, _moneda, sucursalid, fecha  : String): Double;
Var
 qfindDato            : TADOQuery;
 precio, permitido    : Double;
 gprivado,grupoprecio : String;
begin
 precio     := 0;
 permitido  := 0;
 permitido := CoberturaPermitida(_cliente);

// If (permitido > 0) Then
 If (permitido > 1) Then
 Begin
     If Factura_St = 'I' then
     begin
       If (permitido < frmMain.frmTmp.curCoberturaAplicada) Then
       Begin
          qfindDato := DM.NewQuery;
          qfindDato.Close;
//          qfindDato.SQL.Text := ' SELECT * FROM PTPrecioAlternativo (nolock) WHERE PruebaId = '+#39+_prueba+#39+
//                                ' AND SucursalId = '+#39+sucursalid+#39+' AND Activo = 1';
          if (sucursalid <> dm.Cursucursal ) then
             dm.GrupoPrecioPriv := Dm.GrupoPrecioPrivado(sucursalid);
          qfindDato.SQL.Text := ' SELECT Precio FROM PTACUERDOCOMERCIAL (nolock) WHERE PruebaRelation = '+#39+_prueba+#39+
                                ' AND ClienteRelation = '+#39+dm.GrupoPrecioPriv+#39+                            ' AND DataAreaId = ' + #39 + CurEmpresa + #39 +
                                ' AND Activo = 1 '+
                                ' AND Desde <= '+#39+Fecha+#39+' AND Hasta >= '+#39+Fecha+#39;
          qfindDato.Open;
          If qfindDato.RecordCount > 0 then
            begin
             qrParametro.close;
             qrParametro.Open;
{
             if qrParametroPreciosBaseDolares.Value then
              begin
                precio := ValorMoneda(qfindDato.FieldByName('PrecioDolares').AsFloat,qrParametroMonedaDolares.Value ,
                                      qrParametroMonedaID.Value,DM.SystemDate);
                if _moneda = qrParametroMonedaID.Value then
                  result := DM.Redondeo(precio)
                else
                  result := qfindDato.FieldByName('PrecioDolares').AsFloat;
              end
             else
              begin
 }
               if _moneda = qrParametroMonedaID.Value then
                 result := DM.Redondeo(qfindDato.FieldByName('Precio').AsFloat)
               else
                 result := DM.Redondeo(ValorMoneda(qfindDato.FieldByName('Precio').AsFloat,
                                       qrParametroMonedaID.Value ,
                                       _moneda, StrToDate(Copy(Fecha,7,2)+'/'+Copy(Fecha,5,2)+'/'+Copy(Fecha,1,4))));

//              end;

            end
          else
            begin
             qrParametro.close;
             qrParametro.Open;

             FreeAndNil(qfindDato);
             qfindDato := Find_Ldr('SELECT Precio,PrecioDolares FROM PTPrueba (nolock) WHERE PruebaID = :pur', _prueba);

             if qrParametroPreciosBaseDolares.Value then
               begin
                precio := ValorMoneda(qfindDato.FieldByName('PrecioDolares').AsFloat,qrParametroMonedaDolares.Value ,
                                      qrParametroMonedaID.Value,StrToDate(Copy(Fecha,7,2)+'/'+Copy(Fecha,5,2)+'/'+Copy(Fecha,1,4)));
                if _moneda = qrParametroMonedaID.Value then
                  result := DM.Redondeo(precio)
                else
                  result := qfindDato.FieldByName('PrecioDolares').AsFloat;
               end
             else
               begin
                if _moneda = qrParametroMonedaID.Value then
                  result := DM.Redondeo(qfindDato.FieldByName('Precio').AsFloat)
                else
                   result := DM.Redondeo(ValorMoneda(qfindDato.FieldByName('Precio').AsFloat,
                                                     qrParametroMonedaID.Value ,
                                                     _moneda,StrToDate(Copy(Fecha,7,2)+'/'+Copy(Fecha,5,2)+'/'+Copy(Fecha,1,4))));
               end;

            end;

           FreeAndNil(qfindDato);
         End
       Else
         Result := 0;
     End
 else if Factura_st = 'M' then
 begin
       If (permitido < frmMain.frmTmpMod.curCoberturaAplicada) Then
       Begin
          qfindDato := DM.NewQuery;
          qfindDato.Close;
//          qfindDato.SQL.Text := ' SELECT * FROM PTPrecioAlternativo (nolock) WHERE PruebaId = '+#39+_prueba+#39+
//                                ' AND SucursalId = '+#39+sucursalid+#39+' AND Activo = 1';
          if (sucursalid <> dm.Cursucursal ) then
             dm.GrupoPrecioPriv := Dm.GrupoPrecioPrivado(sucursalid);
          qfindDato.SQL.Text := ' SELECT Precio FROM PTACUERDOCOMERCIAL (nolock) WHERE PruebaRelation = '+#39+_prueba+#39+
                                ' AND ClienteRelation = '+#39+dm.GrupoPrecioPriv+#39+                            ' AND DataAreaId = ' + #39 + CurEmpresa + #39 +
                                ' AND Activo = 1 '+
                                ' AND Desde <= '+#39+Fecha+#39+' AND Hasta >= '+#39+Fecha+#39;
          qfindDato.Open;
          If qfindDato.RecordCount > 0 then
            begin
             qrParametro.close;
             qrParametro.Open;

{             if qrParametroPreciosBaseDolares.Value then
              begin
                precio := ValorMoneda(qfindDato.FieldByName('PrecioDolares').AsFloat,qrParametroMonedaDolares.Value ,
                                      qrParametroMonedaID.Value,DM.SystemDate);
                if _moneda = qrParametroMonedaID.Value then
                  result := DM.Redondeo(precio)
                else
                  result := qfindDato.FieldByName('PrecioDolares').AsFloat;
              end
             else
              begin
}
               if _moneda = qrParametroMonedaID.Value then
                 result := DM.Redondeo(qfindDato.FieldByName('Precio').AsFloat)
               else
                 result := DM.Redondeo(ValorMoneda(qfindDato.FieldByName('Precio').AsFloat,
                                       qrParametroMonedaID.Value ,
                                       _moneda, StrToDate(Copy(Fecha,7,2)+'/'+Copy(Fecha,5,2)+'/'+Copy(Fecha,1,4))));
//              end;
            end
          else
            begin
             qrParametro.close;
             qrParametro.Open;

             FreeAndNil(qfindDato);
             qfindDato := Find_Ldr('SELECT Precio,PrecioDolares FROM PTPrueba (nolock) WHERE PruebaID = :pur', _prueba);

             if qrParametroPreciosBaseDolares.Value then
               begin
                precio := ValorMoneda(qfindDato.FieldByName('PrecioDolares').AsFloat,qrParametroMonedaDolares.Value ,
                                      qrParametroMonedaID.Value,StrToDate(Copy(Fecha,7,2)+'/'+Copy(Fecha,5,2)+'/'+Copy(Fecha,1,4)));
                if _moneda = qrParametroMonedaID.Value then
                  result := DM.Redondeo(precio)
                else
                  result := qfindDato.FieldByName('PrecioDolares').AsFloat;
               end
             else
               begin
                if _moneda = qrParametroMonedaID.Value then
                  result := DM.Redondeo(qfindDato.FieldByName('Precio').AsFloat)
                else
                   result := DM.Redondeo(ValorMoneda(qfindDato.FieldByName('Precio').AsFloat,
                                                     qrParametroMonedaID.Value ,
                                                     _moneda, StrToDate(Copy(Fecha,7,2)+'/'+Copy(Fecha,5,2)+'/'+Copy(Fecha,1,4))));
               end;

            end;

           FreeAndNil(qfindDato);
         End
       Else
         Result := 0;
     End
 else if Factura_st = 'F' then
 begin
       If (permitido < frmMain.frmTmpND.curCoberturaAplicada) Then
       Begin
          qfindDato := DM.NewQuery;
          qfindDato.Close;
//          qfindDato.SQL.Text := ' SELECT * FROM PTPrecioAlternativo (nolock) WHERE PruebaId = '+#39+_prueba+#39+
//                                ' AND SucursalId = '+#39+sucursalid+#39+' AND Activo = 1';
          if (sucursalid <> dm.Cursucursal ) then
             dm.GrupoPrecioPriv := Dm.GrupoPrecioPrivado(sucursalid);
          qfindDato.SQL.Text := ' SELECT Precio FROM PTACUERDOCOMERCIAL (nolock) WHERE PruebaRelation = '+#39+_prueba+#39+
                                ' AND ClienteRelation = '+#39+dm.GrupoPrecioPriv+#39+                            ' AND DataAreaId = ' + #39 + CurEmpresa + #39 +
                                ' AND Activo = 1 '+
                                ' Desde <= '+#39+Fecha+#39+' AND Hasta >= '+#39+Fecha+#39;
          qfindDato.Open;

          If qfindDato.RecordCount > 0 then
            begin
             qrParametro.close;
             qrParametro.Open;

{             if qrParametroPreciosBaseDolares.Value then
              begin
                precio := ValorMoneda(qfindDato.FieldByName('PrecioDolares').AsFloat,qrParametroMonedaDolares.Value ,
                                      qrParametroMonedaID.Value,DM.SystemDate);
                if _moneda = qrParametroMonedaID.Value then
                  result := DM.Redondeo(precio)
                else
                  result := qfindDato.FieldByName('PrecioDolares').AsFloat;
              end
             else
              begin
}
               if _moneda = qrParametroMonedaID.Value then
                 result := DM.Redondeo(qfindDato.FieldByName('Precio').AsFloat)
               else
                 result := DM.Redondeo(ValorMoneda(qfindDato.FieldByName('Precio').AsFloat,
                                       qrParametroMonedaID.Value ,
                                       _moneda, StrToDate(Copy(Fecha,7,2)+'/'+Copy(Fecha,5,2)+'/'+Copy(Fecha,1,4))));
 //             end;
            end
          else
            begin
             qrParametro.close;
             qrParametro.Open;

             FreeAndNil(qfindDato);
             qfindDato := Find_Ldr('SELECT Precio, PrecioDolares FROM PTPrueba (nolock) WHERE PruebaID = :pur', _prueba);

             if qrParametroPreciosBaseDolares.Value then
               begin
                precio := ValorMoneda(qfindDato.FieldByName('PrecioDolares').AsFloat,qrParametroMonedaDolares.Value ,
                                      qrParametroMonedaID.Value,StrToDate(Copy(Fecha,7,2)+'/'+Copy(Fecha,5,2)+'/'+Copy(Fecha,1,4)));
                if _moneda = qrParametroMonedaID.Value then
                  result := DM.Redondeo(precio)
                else
                  result := qfindDato.FieldByName('PrecioDolares').AsFloat;
               end
             else
               begin
                if _moneda = qrParametroMonedaID.Value then
                  result := DM.Redondeo(qfindDato.FieldByName('Precio').AsFloat)
                else
                   result := DM.Redondeo(ValorMoneda(qfindDato.FieldByName('Precio').AsFloat,
                                                     qrParametroMonedaID.Value ,
                                                     _moneda, StrToDate(Copy(Fecha,7,2)+'/'+Copy(Fecha,5,2)+'/'+Copy(Fecha,1,4))));
               end;

            end;

           FreeAndNil(qfindDato);
         End
       Else
         Result := 0;
     End
 end
  Else
   Result := 0;
end;


function TDM.Cobertura_Prueba_Configurada(prueba,cliente,moneda,fecha : string) : Double;
var
 qfind : TADOQuery;
 qfindDato : TADOQuery;
 cobertura : Double;
begin
  qfind := Newquery;

  //Buscar Prueba - Cliente
  qfind.Close;
  qfind.SQL.Clear;
  qfind.SQL.Text := ' SELECT MonedaID, CoberturaValor FROM PTAcuerdoComercial (nolock) '+
                    ' WHERE PruebaCode = '+#39+'0'+#39+' AND PruebaRelation = '+#39+prueba+#39+
                    ' AND ClienteCode = '+#39+'0'+#39+' AND ClienteRelation = '+#39+cliente+#39+
                    ' AND DataAreaId = ' + #39 + CurEmpresa + #39 +
                    ' AND Activo = 1 '+
                    ' Desde <= '+#39+Fecha+#39+' AND Hasta >= '+#39+Fecha+#39;
  qfind.Open;

  if qfind.RecordCount > 0 then
    begin
      if moneda = qfind.FieldByName('MonedaId').AsString then
        result := DM.Redondeo(qfind.FieldByName('CoberturaValor').AsFloat)
      else
        result := DM.Redondeo(ValorMoneda(qfind.FieldByName('CoberturaValor').AsFloat,
                                          qfind.FieldByName('MonedaId').AsString,
                                          moneda, StrToDate(Copy(Fecha,7,2)+'/'+Copy(Fecha,5,2)+'/'+Copy(Fecha,1,4))));
    end
  else
    begin
      qfindDato := Find_Ldr('SELECT GrupoPrecio FROM PTCliente (nolock) WHERE ClienteID = :cli',cliente);

      //Buscar Prueba - GrupoCliente
      qfind.Close;
      qfind.SQL.Clear;
      qfind.SQL.Text := ' SELECT MonedaID, CoberturaValor FROM PTAcuerdoComercial (nolock) '+
                        ' WHERE PruebaCode = '+#39+'0'+#39+' AND PruebaRelation = '+#39+prueba+#39+
                        ' AND ClienteCode = '+#39+'1'+#39+' AND ClienteRelation = '+#39+qfindDato.FieldByName('GrupoPrecio').AsString+#39+
                        ' AND DataAreaId = ' + #39 + CurEmpresa + #39 +
                        ' AND Activo = 1 '+
                        ' Desde <= '+#39+Fecha+#39+' AND Hasta >= '+#39+Fecha+#39;
      qfind.Open;

      if qfind.RecordCount > 0 then
        begin
          if moneda = qfind.FieldByName('MonedaId').AsString then
            result := DM.Redondeo(qfind.FieldByName('CoberturaValor').AsFloat)
          else
            result := DM.Redondeo(ValorMoneda(qfind.FieldByName('CoberturaValor').AsFloat,
                                              qfind.FieldByName('MonedaId').AsString,
                                              moneda,StrToDate(Copy(Fecha,7,2)+'/'+Copy(Fecha,5,2)+'/'+Copy(Fecha,1,4))));
          FreeAndNil(qfindDato);
        end
      else
        begin
          //Buscar Prueba - Todos
          qfind.Close;
          qfind.SQL.Clear;
          qfind.SQL.Text := ' SELECT MonedaID, CoberturaValor FROM PTAcuerdoComercial (nolock) '+
                            ' WHERE PruebaCode = '+#39+'0'+#39+' AND PruebaRelation = '+#39+prueba+#39+
                            ' AND ClienteCode = '+#39+'2'+#39+
                            ' AND DataAreaId = ' + #39 + CurEmpresa + #39 +
                            ' AND Activo = 1 '+
                            ' Desde <= '+#39+Fecha+#39+' AND Hasta >= '+#39+Fecha+#39;
          qfind.Open;

          if qfind.RecordCount > 0 then
            begin
             if moneda = qfind.FieldByName('MonedaId').AsString then
               result := DM.Redondeo(qfind.FieldByName('CoberturaValor').AsFloat)
             else
               result := DM.Redondeo(ValorMoneda(qfind.FieldByName('CoberturaValor').AsFloat,
                                                 qfind.FieldByName('MonedaId').AsString,
                                                 moneda, StrToDate(Copy(Fecha,7,2)+'/'+Copy(Fecha,5,2)+'/'+Copy(Fecha,1,4))));
            end;
        end;
    end;

  FreeAndNil(qfind);
  result := DM.Redondeo(cobertura);
end;

Function TDM.VerificarCoberturaPruebaAdicional(origen,prueba,cliente,moneda,fecha: String) : Double;
var
 qfind : TADOQuery;
 cobertura : Double;
begin
 cobertura := 0;

 if (origen = DM.qrParametroGrupoSeg.Value) then
  begin
    qfind := Newquery;

    //Buscar Prueba - Cliente
    qfind.Close;
    qfind.SQL.Clear;
    qfind.SQL.Text := ' SELECT MonedaID, ADICIONAL FROM PTAcuerdoComercial (nolock) '+
                      ' WHERE PruebaCode = '+#39+'0'+#39+' AND PruebaRelation = '+#39+prueba+#39+
                      ' AND ClienteCode = '+#39+'0'+#39+' AND ClienteRelation = '+#39+cliente+#39+
                      ' AND DataAreaId = ' + #39 + CurEmpresa + #39 +
                      ' AND Activo = 1 AND Desde <= '+#39+Fecha+#39+' AND Hasta >= '+#39+Fecha+#39;
    qfind.Open;

    if qfind.RecordCount > 0 then
     begin
      if moneda = qfind.FieldByName('MonedaId').AsString then
       cobertura := DM.Redondeo(qfind.FieldByName('ADICIONAL').AsFloat)
      else
       cobertura := DM.Redondeo(ValorMoneda(qfind.FieldByName('ADICIONAL').AsFloat,
                                            qfind.FieldByName('MonedaId').AsString,
                                            moneda, StrToDate(Copy(Fecha,7,2)+'/'+Copy(Fecha,5,2)+'/'+Copy(Fecha,1,4))));
     end;

    FreeANDNil(qfind);
    Result := cobertura;
  end;
end;
function TDM.RevisaVersion:string;
Var Version : String;
begin
  if not ApplEmpresas.Active then
    ApplEmpresas.Open;
    DataBase.Close;
    DataBase.DefaultDatabase := '';
    DataBase.ConnectionString := 'Data Source=' + ApplEmpresas.FieldByName('Servidor').Text;
    DataBase.ConnectionString := DataBase.ConnectionString + ';Initial Catalog=' + ApplEmpresas.FieldByName('Nombre').Text;
    DataBase.ConnectionString := DataBase.ConnectionString + ';User ID=' + ApplEmpresas.FieldByName('sqlUser').Text;
    DataBase.ConnectionString := DataBase.ConnectionString + ';Password=' +  ApplEmpresas.FieldByName('sqlPassword').Text;
end;
Function TDM.PingHost(Host : String; Timeout: integer) : Boolean;
var
  PingReply: TsmICMP_Echo_Reply;
  Cont : Integer;
begin
  Result := False;
  Cont := 0;
  Repeat
    try
      Inc(Cont);
      Ping (PChar (ip2string(lookup_hostname(Host))), PChar ('ECHO'), PingReply, TimeOut*1000);
      If PingReply.Status = 0 then Result := True;
    except
    end;
  until (Result = True) or (Cont = 3);
end;
function TDM.IsDate(str: string): Boolean;
var dt: TDateTime;
begin
  Result := True;
  try
    dt := StrToDate(str);
  except
    Result := False;
  end;
end;
function TDM.SelectPrinter(NombrePrinter : String) : SmallInt;
var
  pri : SmallInt;
begin
    Result := -1;
    NombrePrinter := trim(UpperCase(NombrePrinter));
    for pri:=0 to Printers.printer.Printers.Count-1 do
    begin
      if (pos(NombrePrinter , UpperCase(Printer.Printers.Strings[pri]))>0) then
       begin
         if (Not(dm.CurSucursal='SP')) and (NombrePrinter = 'EPSON LX-300+') then
         begin
           Ruta_Factura := UpperCase(Printer.Printers.Strings[pri]);
         end;
         if (Not(dm.CurSucursal='SP')) and (NombrePrinter = 'GENERIC / TEXT ONLY') then
         begin
           Ruta_Recibo := UpperCase(Printer.Printers.Strings[pri]);
         end;
         if (Not(dm.CurSucursal='SP')) and (NombrePrinter = 'ETIQUETA') then
         begin
           Ruta_BarCode := UpperCase(Printer.Printers.Strings[pri]);
         end;
         Result := pri;
         break;
      end;
    end;
end;
Function TDM.Empleado_Existe(PacienteID : String) : Boolean;
Var
 qPaciente  : TAdoQuery;
begin
  qPaciente := DM.NewQuery;
  qPaciente.Close;
  qPaciente.SQL.Text := ' Select ClienteID from ptCliente (nolock) '+
                        ' Where ClienteID ='+#39+PacienteID+#39+
                        ' And GrupoCliente ='+#39+DM.qrParametroGrupoEmp.Value+#39+
                        ' And Dataareaid ='+#39+CurEmpresa+#39+
                        ' And Estatus='+#39+'0'+#39;
  qPaciente.Open;
  if (qPaciente.RecordCount > 0) then
    result := True
  else
    result := False;
  FreeAndNil(qPaciente);
End;
Function TDM.Buscar_Random: String;
Var
 qRandom  : TAdoQuery;
begin
  qRandom := DM.NewQuery;
  qRandom.Close;
  qRandom.SQL.Text := ' SELECT dbo.fnCustomPass(10,'+#39+'CN'+#39+') as Numero';
  qRandom.Open;
  if (qRandom.RecordCount > 0) then
    result := qRandom.FieldByName('Numero').Value
  else
    result := EmptyStr;
  FreeAndNil(qRandom);
End;
Function TDM.Verifica_Balance_Credito(Autorizacion : String):Double;
Var qVerifica  : TAdoQuery;
begin
  qVerifica := DM.NewQuery;
  Result:= 0;
  With qVerifica, sql do
  begin
      Close;
      SQL.Text := ' Select TotalCobrado from ptCobro (nolock) '+
                  ' Where  TurnoID='+#39+Autorizacion+#39;
      Open;
      if Not IsEmpty then
      begin
        Result := abs(fieldbyname('TotalCobrado').AsFloat);
      end;
  end;
  FreeAndNil(qVerifica);
End;
Function TDM.Verifica_Pago(Refrecid : String):Double;
Var qVerifica  : TAdoQuery;
begin
  qVerifica := DM.NewQuery;
  With qVerifica, sql do
  begin
      Close;
      SQL.Text := ' Select isnull(Sum(TotalCobrado),0) as TotalCobrado from ptcobro (nolock) '+
                  ' Where refrecid='+Refrecid+
                  ' and TipoDoc='+#39+'RI'+#39;
      Open;
      Result := Fieldbyname('TotalCobrado').AsFloat;
  end;
  FreeAndNil(qVerifica);
End;
Function TDM.BuscaCodigoIDAs400(PruebaID : String) : Integer;
Var
 qPrueba  : TAdoQuery;
begin
  qPrueba := DM.NewQuery;
  qPrueba.Close;
  qPrueba.SQL.Text := ' Select CodigoIdAs400 from ptPrueba (nolock) '+
                      ' Where PruebaId ='+#39+PruebaID+#39;
  qPrueba.Open;
  if (qPrueba.RecordCount > 0) then
    result := qPrueba.FieldByName('CodigoIdAs400').Value
  else
    result := 0;
  FreeAndNil(qPrueba);
End;
Function TDM.Disponibilidad_Devuelta_Efectivo(Cajero:String;SucursalID:String;FormaPago:String):Double;
Var qVerifica  : TAdoQuery;
begin
  qVerifica := DM.NewQuery;
  With qVerifica, sql do
  begin
      Close;
      Add('select sum(case when (d.FormadePagoID = '+#39+FormaPago+#39+') and (isnull(c.CuadreUsuario,'+#39+#39+')='+#39+#39+') and TipoDoc='+#39+'RI'+#39+' then c.TotalCobrado else 0 end) as Total_Efectivo '+
          ' from ptcobro c (nolock) inner join ptcobrodetalle d (nolock) '+
          ' on c.cobroid=d.cobroid '+
          ' where c.SucursalID='+#39+SucursalId+#39+
          ' and c.UsuarioID='+#39+Cajero+#39+
          ' and c.Fecha='+#39+formatdatetime('yyyymmdd',DM.Buscar_Fecha_Actual)+#39);
          If dm.qrParametroServidor_AS400.value <> EmptyStr then
            qVerifica.Sql.Text :=qVerifica.Sql.Text +' AND Isnull(c.Fuera_Linea,'+#39+'0'+#39+') = 0'
          else
            qVerifica.Sql.Text :=qVerifica.Sql.Text +' AND Isnull(c.Fuera_Linea,'+#39+'0'+#39+') = 1';
      Open;
      Result := Fieldbyname('Total_Efectivo').AsFloat;
  end;
  FreeAndNil(qVerifica);
End;
Function TDM.Es_Feriado:Boolean;
Var qFeriado : TAdoQuery;
begin
  qFeriado := DM.NewQuery;
  With qFeriado, sql do
  begin
      Close;
      Add(' Select * From ptDiaFeriado (nolock) '+
          ' Where Fecha='+#39+formatdatetime('yyyymmdd',DM.Buscar_Fecha_Actual)+#39);
      Open;
  end;
  if (qFeriado.RecordCount > 0) then
    result := True
  else
    result := False;
  FreeAndNil(qFeriado);
End;
function TDM.GetDigitoVerificador(Cedula : string; TipoDoc : String) : Boolean;
var
 qsecdoc : TADOQuery;
begin
 qsecdoc := DM.NewQuery;
 If  TipoDoc = '3' Then
     Result := True
 else
 begin
     If Cedula <> EmptyStr then
     begin
       With qsecdoc,sql do
       begin
         Close;
         Clear;
         Add(' DECLARE @return_value int, @r_result bit ');
         Add(' EXEC	@return_value = [verif_digito]  ');
         Add(' @p_clave =N'+#39+Cedula+#39+',');
         Add(' @r_result='+'0');
         Add(' Select	@return_value as Resultado ');
         Open;
         if FieldByName('Resultado').AsInteger = 1 then
            Result := True
         else
            Result := False;
       end;
     end
     else
     begin
            Result := False;
     end;
 End;
 FreeAndNil(qsecdoc);
end;
Function TDM.Busca_PruebaFiliacionAD(I : Integer) : String;
Var
 qinter  : TAdoQuery;
begin
  qinter := DM.NewQuery;
  qinter.Close;
  I:=I+10;
  qinter.SQL.Text := ' Select PruebaID from ptPrueba (nolock) '+
                     ' Where Cod_Sec_Prueba ='+intToStr(I)+
                     ' And DataAreaID ='+#39+CurEmpresa+#39;
  qinter.Open;
  if (qinter.RecordCount > 0) then
    result := qinter.FieldByName('PruebaID').Value
  else
    result := EmptyStr;
  FreeAndNil(qinter);
End;
Function TDM.Verifica_Cliente_Filiacion(ClienteID : String) : Boolean;
Var
 qAuto  : TAdoQuery;
begin
  qAuto := DM.NewQuery;

  qAuto.Close;
  qAuto.SQL.Text := ' SELECT Clienteid FROM PTCliente (nolock) '+
                     ' Where Grupocliente = '+#39+GrupoOtrasCxc+#39+
                     ' And ClienteID='+#39+ClienteID+#39+
                     ' And Nombre like '+#39+'%'+'FILIACION PERFIL'+'%'+#39+
                     ' AND DataAreaId = ' + #39 + CurEmpresa + #39;
  qAuto.Open;

  if (qAuto.RecordCount > 0) Then
    result := True
  else
    result := False;

  FreeAndNil(qAuto);
end;
procedure TDM.BuscaFoto(Forma: TForm ;MUN_CED:String;SEQ_CED :String; VER_CED :String);
Var
  ReadFoto : TADOBlobStream;
  Foto     : TJPEGImage;
//  Foto     : TBitmap;
begin
  TcxImage(FORMA.FindComponent('ImgFoto')).Picture := Nil;
  with Dm.qry_foto,sql do
  begin
    close;
    Clear;
    add('select top 1 * from FotosCedulados..Fotos (nolock) '+
                           ' WHERE MUN_CED ='+#39+MUN_CED+#39+
                           ' AND   SEQ_CED ='+#39+SEQ_CED+#39+
                           ' AND   VER_CED ='+#39+VER_CED+#39);
    open;
    If FieldByName('Imagen').IsNull then
    Begin
      close;
      Clear;
      add('select top 1 * from Fotos2016..Fotos (nolock) '+
                           ' WHERE MUN_CED ='+#39+MUN_CED+#39+
                           ' AND   SEQ_CED ='+#39+SEQ_CED+#39+
                           ' AND   VER_CED ='+#39+VER_CED+#39);
      Open;
    end;
    If FieldByName('Imagen').IsNull then
    Begin
      TcxImage(FORMA.FindComponent('ImgFoto')).Picture := Nil;
      Exit;
    end;
    ReadFoto := TADOBlobStream.Create(Dm.Qry_FotoImagen, bmRead);
    Foto     := TJPEGImage.Create;
//    Foto     := TBitmap.Create;
    Foto.LoadFromStream(ReadFoto);
    TcxImage(FORMA.FindComponent('ImgFoto')).Picture.Assign(Foto);
//    ImgFoto.Picture.Assign(Foto);
  end;
  Foto.Free;
end;
function TDM.Total_Pruebas(_registro : int64) : Int64;
var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;
 qfind.Close;
 qfind.SQL.Text := ' SELECT Count(*) FROM PTEntradaPacienteDetalle (nolock) '+
                   ' WHERE RefRecid = :rec '+
                   ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
                   ' AND TipoPrueba = '+#39+'P'+#39+
                   ' AND CoberturaAplica = 1 ';
 qfind.Parameters[0].Value := _registro;
 qfind.Open;

 if qfind.Fields[0].AsString <> '' then
   result := qfind.Fields[0].AsInteger
 else
   result := 0;

 FreeAndNil(qfind);
end;
function TDM.Valor_Afiliado_Seg(_registro : int64) : Currency;
var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;
 qfind.Close;
 qfind.SQL.Text := ' SELECT SUM(Precio)-SUM(CoberturaAplicada) FROM PTEntradaPacienteDetalle (nolock) '+
                   ' WHERE RefRecid = :rec '+
                   ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
                   ' AND CoberturaAplica = 1 ';
 qfind.Parameters[0].Value := _registro;
 qfind.Open;

 if qfind.Fields[0].AsString <> '' then
   result := DM.Redondeo(qfind.Fields[0].AsFloat)
 else
   result := 0;

 FreeAndNil(qfind);
end;
function TDM.GetTokenCount(Cadena,Separador:string):integer;
 var
    Posicion:integer;
 begin
   Posicion:=Pos(Separador,Cadena);
   Result:=1;

   if Posicion <> 0 then
     while Posicion <> 0 do
     begin
       Delete(Cadena,1,Posicion);
       Posicion:=Pos(Separador,Cadena);
       Inc (Result);
     end
   else
     Result:=0;
 end;
 function TDM.NthWord(Texto,Delimitador : string; Posicion: Integer): string;
var
  I: Integer;
  T: string;
begin
  if Texto[Length(Texto)] <> Delimitador then
    Texto := Texto + Delimitador;
  for I := 1 to Posicion do
  begin
    T := Copy(Texto, 0, Pos(Delimitador, Texto) - 1);
    Texto := Copy(Texto, Pos(Delimitador, Texto) + 1, Length(Texto));
  end;
  Result := T;
end;
function TDM.ExistePago(Recid : String;EntradaID : String) : Boolean;
Var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;
 qfind.Close;
 qfind.SQL.Text := ' SELECT CobroID FROM PTCobro (nolock) WHERE refRecId = '+ #39 + Recid + #39 +
                   ' AND EntradaId = '+ #39 + EntradaID+ #39;
 qfind.Open;

 if qfind.RecordCount > 0 then
   result := True
 else
   result := false;

 FreeAndNil(qfind);
end;
function TDM.ContDiasTrabajo(Fecha : TDate) : Integer;
Var
 qfind : TADOQuery;
 i     : integer;
begin
 qfind := DM.NewQuery;
 for i := 1 to 10 do
 begin
     qfind.Close;
     Fecha := Fecha + 1;
     qfind.SQL.Text := ' SELECT Fecha FROM PtDiaFeriado (nolock) WHERE Fecha= '+#39+formatdatetime('yyyymmdd',Fecha)+#39;
     qfind.Open;
     if qfind.RecordCount = 0 then
     begin
       Result:=i;
       FreeAndNil(qfind);
       exit;
     end;
 end;
 FreeAndNil(qfind);
end;
function TDM.Verifica_MonedaCliente(ClienteID : String;MonedaID : String) : Boolean;
Var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;
 qfind.Close;
 qfind.SQL.Text := ' SELECT ClienteID FROM PTCliente (nolock) WHERE ClienteID = '+ #39 + ClienteID + #39 +
                   ' AND MonedaID = '+#39+MonedaID+#39+
                   ' AND DataAreaId = '+#39+DM.CurEmpresa+#39;
 qfind.Open;

 if qfind.RecordCount > 0 then
   result := True
 else
   result := false;

 FreeAndNil(qfind);
end;
function TDM.Verifica_MonedaCte(ClienteID : String) : String;
Var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;
 qfind.Close;
 qfind.SQL.Text := ' SELECT MonedaID FROM PTCliente (nolock) WHERE ClienteID = '+ #39 + ClienteID + #39 +
                   ' AND DataAreaId = '+#39+DM.CurEmpresa+#39;
 qfind.Open;

 if qfind.RecordCount > 0 then
   result := qfind.FieldByName('MonedaID').AsString
 else
   result := EmptyStr;

 FreeAndNil(qfind);
end;

 function TDM.Verifica_NombrePaciente(ClienteID : String;Nombre : String) : Boolean;
Var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;
 qfind.Close;
 qfind.SQL.Text := ' SELECT Nombre FROM PTCliente (nolock) WHERE ClienteID = '+ #39 + ClienteID + #39 +
                   ' AND DataAreaId = '+#39+DM.CurEmpresa+#39;
 qfind.Open;

 if (qfind.RecordCount > 0) And (Trim(qfind.FieldByName('Nombre').AsString)=Nombre) then
   result := True
 else
   result := false;

 FreeAndNil(qfind);
end;
 function TDM.Verifica_FechaNacimiento(ClienteID : String;Fecha : String) : Boolean;
Var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;
 qfind.Close;
 qfind.SQL.Text := ' SELECT FechaNacimiento FROM PTCliente (nolock) WHERE ClienteID = '+ #39 + ClienteID + #39 +
                   ' AND DataAreaId = '+#39+DM.CurEmpresa+#39;
 qfind.Open;

 if (qfind.RecordCount > 0) And (Trim(formatdatetime('yyyymmdd',qfind.FieldByName('FechaNacimiento').AsDatetime))=Fecha) then
   result := True
 else
   result := false;

 FreeAndNil(qfind);
end;


function TDM.ValidaRNC(sRNC : String):Boolean;
var
   multiplica,longitud:smallInt;
   resto, digito, valor, suma,  i :integer;
   t:string;
const
   peso    :array[0..7] of integer = (7,9,8,6,5,4,3,2);
begin

   t:=sRNC;

   sRNC:=trim(StringReplace(sRNC,'-','',[rfReplaceAll]));

   if sRNC=EmptyStr then
   begin
     result  :=  false;
     exit;
   end;
   longitud:=length(sRNC);

   //Inicializar la variable suma
   suma:=0;
   if length(sRNC) = 9 then  //Asumimos como valor de RNC con 9 caracteres
   begin
           {Calculo del R N C  modulo 11}
           for i:=0 to longitud-2 do
           begin
               multiplica:=peso[i];

               valor:=strtoIntDef(sRNC[i+1],-1)*multiplica;

               //Si el digito que se encontro no es numerico.
               if valor < 0 then break;

               suma:=suma+valor;
           end;

           //ahora  la variable Valor toma el digito verificador
           valor:= strToIntDef(copy(sRNC,longitud,1),0);

           resto   :=  trunc(suma - (integer(trunc(suma / 11)) * 11));

           case resto of
           0:digito:=2;
           1:digito:=1;
           else digito:=11-resto;
           end;

           result  :=  valor= digito;
       end
   else
     result:=sRNC<>EmptyStr;
end;
function TDM.ActNCF(Tipo:String;Cia:String;RecID:Int64;Muestrano:String;EntradaID:String;RNC:String;Monto:Currency):Boolean;
begin
Result := False;
Try
  with  dm.sp_ActNCF, Parameters do
  begin
    ParamByName('@RecID').Value     := RecID;
    ParamByName('@Tipo').Value      := Tipo;
    ParamByName('@Cia').Value       := Cia;
    ParamByName('@DataareaID').Value:= CurEmpresa;
    ParamByName('@Muestrano').Value := Muestrano;
    ParamByName('@EntradaID').Value := EntradaID;
    ParamByName('@RNC').Value       := RNC;
    ParamByName('@Monto').Value     := Monto;
    ParamByName('@UserID').Value    := DM.CurUser;
    ExecProc;
    Result:= True;
  end;
  Except
    if not dm.Database.Connected then
    begin
      dm.Database.Connected := True;
      dm.sp_ActNCF.ExecProc;
      Result:=True;
    end;
  End
end;
function TDM.ActPerfil(Tipo_Documento:Integer;Documento:String;Nombre:String;Sexo:Integer;Fecha_Nac:String;Telefono:String;RecID:Int64):Boolean;
begin
Result := False;
Try
  with  dm.sp_ActPerfilGenetico, Parameters do
  begin
    ParamByName('@Tipo_Documento').Value:= Tipo_Documento;
    ParamByName('@Documento').Value     := Documento;
    ParamByName('@Nombre').Value        := Nombre;
    ParamByName('@Sexo').Value          := Sexo;
    ParamByName('@Fecha_Nac').Value     := Fecha_Nac;
    ParamByName('@Telefono').Value      := Telefono;
    ParamByName('@RecID').Value         := RecID;
    ExecProc;
    Result:= True;
  end;
  Except
    if not dm.Database.Connected then
    begin
      dm.Database.Connected := True;
      dm.sp_ActPerfilGenetico.ExecProc;
      Result:=True;
    end;
  End
end;

function TDM.FechaCorteLab(Fecha : TDate) :Boolean;
Var
 qfind : TADOQuery;
 i     : integer;
begin
 qfind := DM.NewQuery;
 for i := 1 to 20 do
 begin
     qfind.Close;
     qfind.SQL.Text := ' SELECT Fecha FROM PtFechaCorteLab (nolock) WHERE Fecha= '+#39+formatdatetime('yyyymmdd',Fecha)+#39+' And Getdate() >= '+#39+formatdatetime('yyyymmdd',Fecha)+#39;
     qfind.Open;
     if qfind.RecordCount > 0 Then
     begin
       result := True;
       FreeAndNil(qfind);
       exit;
     end;
     if formatdatetime('yyyymmdd',DM.SystemDate) = formatdatetime('yyyymmdd',Fecha) Then
     begin
       result := False;
       FreeAndNil(qfind);
       exit;
     end;
     Fecha := Fecha + 1;
 end;
 result := True;
 FreeAndNil(qfind);
end;
function TDM.Buscar_CantCobertura(SCobertura : String; Cant : Integer) : String;
Var
 qfind : TADOQuery;
 i     : integer;
 ccant : array[0..50] of integer;
 ccob  : array[0..50] of string;
  z: Integer;
begin
{ qfind := DM.NewQuery;
 for i := 1 to Cant do
 begin
     qfind.Close;
     qfind.SQL.Text := ' Select dbo.NthWordSql('+#39+SCobertura+#39+','#39+','+#39+inttostr(i)+#39+' as Cobertura ';
     qfind.Open;
     if qfind.RecordCount > 0 Then
     begin
       if i > 1 then
       begin
          for z := 1 to i-1 do
          begin
              if ccob[z] = ccob[i] then
                ccant[z]:=ccant[z]+1
              else if (z=i) and (ccob[z] <> ccob[i]) then
              begin
                ccob[i]:=qfind.FieldByName('Cobertura').AsString;
                ccant[i]:=ccant[i]+1;
              end;
          end;
       end
       else
       begin
          ccob[i]:=qfind.FieldByName('Cobertura').AsString;
          ccant[i]:=ccant[i]+1;
       end;
     end;
 end;
 result := SCobertura;
 FreeAndNil(qfind);
}
End;
function TDM.Verifica_Version(App : String) : String;
begin
  With sqlCommand, sql do
  begin
      Close;
      SQL.Text :='SELECT VERSION+'+#39+','+#39+'+Nombre_Corto As Version FROM Aplicaciones (nolock) ' +
                  'WHERE Nombre_Corto='+#39+App+#39+
                  ' or Nombre_Corto='+#39+'NEWVER'+#39;
      Open;
  end;
  if sqlCommand.RecordCount > 0 then
      result := sqlCommand.FieldByName('Version').AsString
  else
      result := EmptyStr;
end;
Function TDM.GrupoPrivado(SucursalID : String) : String;
Var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;
 qfind.Close;
 qfind.SQL.Text := ' Select GrupoTarifaSuc from ptsucursal '+
                   ' Where  sucursalid='+#39+SucursalID+#39+
                   ' AND DataAreaId = '+#39+DM.CurEmpresa+#39;
 qfind.Open;

 if qfind.RecordCount > 0 then
   result := qfind.FieldByName('GrupoTarifaSuc').AsString
 else
   result := '';

 FreeAndNil(qfind);
end;
Function TDM.GrupoPrecioPrivado(SucursalID : String) : String;
Var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;
 qfind.Close;
 qfind.SQL.Text := ' Select GrupoPrecioPriv from ptsucursal '+
                   ' Where  sucursalid='+#39+SucursalID+#39+
                   ' AND DataAreaId = '+#39+DM.CurEmpresa+#39;
 qfind.Open;

 if qfind.RecordCount > 0 then
   result := qfind.FieldByName('GrupoPrecioPriv').AsString
 else
   result := '';

 FreeAndNil(qfind);
end;

Function TDM.TotalPruebas_USA : Integer;
Var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;
 qfind.Close;
 qfind.SQL.Text := ' SELECT Count(*) As Total FROM ptentradapacientedetalle '+
                   ' WHERE exterior=1 and pruebaid in (SELECT pruebaid FROM PTPRUEBA '+
                   ' WHERE exterior=1 and permitecambioprecio='+#39+'1'+#39+')'+
                   ' and comentario not in (select descripcion from ptpruebasusaex)';
  if Factura_St = 'I' Then
  begin
        qfind.SQL.Text:= qfind.SQL.Text+' And Muestrano='+#39+frmMain.frmTmp.qrEntradaPacienteDetalleMuestrano.value+#39;
  end else if Factura_St = 'M' Then
  begin
        qfind.SQL.Text:=qfind.SQL.Text+' And Muestrano='+#39+frmMain.frmTmpMod.qrEntradaPacienteDetalleMuestrano.value+#39;
  end else if Factura_St = 'L' Then
  begin
        qfind.SQL.Text:=qfind.SQL.Text+' And Muestrano='+#39+frmMain.frmTmpLab.qrEntradaPacienteDetalleMuestrano.value+#39;
  end else if Factura_St = 'C' Then
  begin
        qfind.SQL.Text:=qfind.SQL.Text+' And Muestrano='+#39+frmMain.frmClinica.qrEntradaPacienteDetalleMuestrano.value+#39;
   end else if Factura_St = 'F' Then
  begin
        qfind.SQL.Text:=qfind.SQL.Text+' And Muestrano='+#39+frmMain.frmTmpND.qrEntradaPacienteDetalleMuestrano.value+#39;
  end;
 qfind.Open;

 if qfind.RecordCount > 0 then
   result := qfind.FieldByName('Total').Asinteger
 else
   result :=0;

 FreeAndNil(qfind);
end;
Function TDM.Buscar_GrupoPrecio(ClienteID : String) : String;
Var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;
 qfind.Close;
 qfind.SQL.Text := ' Select GrupoPrecio from ptCliente '+
                   ' Where  Clienteid='+#39+ClienteID+#39+
                   ' AND DataAreaId = '+#39+DM.CurEmpresa+#39;
 qfind.Open;

 if qfind.RecordCount > 0 then
   result := qfind.FieldByName('GrupoPrecio').AsString
 else
   result := '';

 FreeAndNil(qfind);
end;
Function TDM.Buscar_GrupoCliente(PruebaID,ClienteID,Moneda,fecha : String) : String;
Var
  qfind : TADOQuery;
begin
  qfind := DM.NewQuery;
  qfind.Close;
  qfind.SQL.Clear;
  qfind.SQL.Text := ' SELECT Precio,MonedaId FROM PTAcuerdoComercial (nolock) '+
                    ' WHERE PruebaRelation = '+#39+PruebaID+#39+
                    ' AND ClienteRelation = '+#39+ClienteID+#39+
                    ' AND Relacion = '+#39+'P'+#39+
                    ' AND Costo = 0 '+
                    ' AND DataAreaId = ' + #39 + CurEmpresa + #39 +
                    ' AND Activo = 1 '+
                    ' AND Desde <= '+#39+Fecha+#39+' AND Hasta >= '+#39+Fecha+#39;
  qfind.Open;

  if qfind.RecordCount > 0 then
  begin
      Result:='S';
  end
  else
      result:=EmptyStr;
 FreeAndNil(qfind);
end;

Function TDM.Verifica_Clave_Internet(Clave : String) : Boolean;
Var
 qinter  : TAdoQuery;
begin
  qinter := DM.NewQuery;
  qinter.Close;
  qinter.SQL.Text := ' SELECT UsuarioInternet FROM PTUsuariosInternet (nolock) '+
                     ' WHERE ClaveInternet = ' + #39 + Clave + #39 +
                     ' AND Tipo = ' + #39 + 'P' + #39 +
                     ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39;
  qinter.Open;
  if (qinter.RecordCount > 0) then
    result := True
  else
    result := False;
  FreeAndNil(qinter);
End;
Function TDM.Total_Acum_Mensual_Filtro2(Fecha : String) : Currency;
Var
 qinter  : TAdoQuery;
begin
  qinter := DM.NewQuery;
  qinter.Close;
  qinter.SQL.Text := 'Select Sum(d.Monto) As Total_Mensual From PTCobroDetalle (NoLock) d inner join PTCobro (NoLock) c on c.CobroID=d.CobroID '+
                     ' Where Month('+#39+Fecha+#39+')=Month(Fecha) And '+
                     ' Year('+#39+Fecha+#39+')=Year(Fecha) And '+
                     ' d.FormaDePagoID='#39+'EFE'+#39+' And '+
                     ' d.SinprFilter=2 ';
  qinter.Open;
  if (qinter.RecordCount > 0) then
    result := qinter.Fieldbyname('Total_Mensual').AsFloat
  else
    result := 0;
  FreeAndNil(qinter);
End;

Function TDM.Busca_Internet_Identificacion(Identificacion : String) : String;
Var
 qinter  : TAdoQuery;
begin
  qinter := DM.NewQuery;
  qinter.Close;
  qinter.SQL.Text := ' Select top 1 Identificacion from ptusuariosinternet (nolock) '+
                     ' Where Identificacion='+#39+Copy(DM.Cortar_Char('-', Identificacion),1,11)+#39+
                     ' AND Tipo = ' + #39 + 'P' + #39 +
                     ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39;
  qinter.Open;
  if (qinter.RecordCount > 0) then
    result := qinter.FieldByName('Identificacion').Value
  else
    result := EmptyStr;
  FreeAndNil(qinter);
End;
Function TDM.Retorna_Cliente_Internet(Identificacion : String) : String;
Var
 qinter  : TAdoQuery;
begin
  qinter := DM.NewQuery;
  qinter.Close;
  qinter.SQL.Text := ' Select top 1 Clienteid from ptcliente (nolock) '+
                     ' Where Identificacion='+#39+Identificacion+#39+
                     ' AND DataAreaId = '+#39+DM.CurEmpresa + #39;
  qinter.Open;
  if (qinter.RecordCount > 0) then
    result := qinter.FieldByName('Clienteid').Value
  else
    result := EmptyStr;
  FreeAndNil(qinter);
End;
Function TDM.GetSucursalS(Seguro : String) : String;
Var
 qinter  : TAdoQuery;
begin
  qinter := DM.NewQuery;
  qinter.Close;
  qinter.SQL.Text := ' Select top 1 '+#39+CurSucursal+#39+'+'+#39+','+#39+'+Nombre as Solo_SucursalID From PtCliente (NoLock) '+
                     ' Where ClienteID='+#39+Seguro+#39+
                     ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39;
  qinter.Open;
  if (qinter.RecordCount > 0) then
    result := qinter.FieldByName('Solo_SucursalID').Value
  else
    result := EmptyStr;
  FreeAndNil(qinter);
End;
Function TDM.Verifica_Plan_Ex(ClienteID:String;SucursalID:String) : Boolean;
Var
  qPlan  : TAdoQuery;
begin
  qPlan := DM.NewQuery;
     With qPlan,sql do
     begin
        Close;
        Clear;
        Add(' Select Clienteid,SucursalID from PtPlanes_Ex (nolock) Where ClienteID='+#39+ClienteID+#39);
        if SucursalID <> EmptyStr then
        begin
          Add(' And SucursalID='+#39+SucursalID+#39);
        end;
        Add(' AND Estatus = '+#39+'A'+#39);
        Open;
     end;
  if (qPlan.RecordCount > 0) then
    result := True
  else
    result := False;
  FreeAndNil(qPlan);
End;
Function TDM.Verifica_Plan_ClienteEx(ClienteID:String) : Boolean;
Var
  qPlan  : TAdoQuery;
begin
  qPlan := DM.NewQuery;
     With qPlan,sql do
     begin
        Close;
        Clear;
        Add(' Select Distinct ClienteID from PtPlanes_Ex (nolock) Where ClienteID='+#39+ClienteID+#39);
        Add(' AND Estatus = '+#39+'A'+#39);
        Open;
     end;
  if (qPlan.RecordCount > 0) then
    result := True
  else
    result := False;
  FreeAndNil(qPlan);
End;

Function TDM.Chequea_Combo(RecID : Int64) : Boolean;
Var
 qinter  : TAdoQuery;
begin
  qinter := DM.NewQuery;
  qinter.Close;
  qinter.SQL.Text := ' SELECT Muestrano FROM PTEntradaPacienteDetalle (nolock) '+
                     ' WHERE RefrecID = ' + IntToStr(RecID) +
                     ' AND TipoPrueba = ' + #39 + 'C' + #39 +
                     ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39;
  qinter.Open;
  if (qinter.RecordCount > 0) then
    result := True
  else
    result := False;
  FreeAndNil(qinter);
End;
Function TDM.Buscar_Cadenas(Cadena : String) : String;
Var
 qCadena  : TAdoQuery;
 strCadena_One    : String;
 strCadena_Two    : String;
 strCadena_Three  : String;
begin
  strCadena_One:=EmptyStr;strCadena_Two:=EmptyStr;strCadena_Three:=EmptyStr;
  qCadena := DM.NewQuery;
  qCadena.Close;
  qCadena.SQL.Text := ' Select dbo.NthWordSql('+#39+Cadena+#39+','+#39+' '+#39+','+#39+'1'+#39+') As Cadena';
  qCadena.Open;
  if Length(qCadena.FieldByName('Cadena').Value) > 0 then
    strCadena_One := qCadena.FieldByName('Cadena').Value
  else
    strCadena_One := EmptyStr;
  if strCadena_One <> EmptyStr then
  begin
    qCadena := DM.NewQuery;
    qCadena.Close;
    qCadena.SQL.Text := ' Select dbo.NthWordSql('+#39+Cadena+#39+','+#39+' '+#39+','+#39+'2'+#39+') As Cadena';
    qCadena.Open;
    if (Length(qCadena.FieldByName('Cadena').Value) > 0) then
    begin
      strCadena_Two:=  qCadena.FieldByName('Cadena').Value;
      if (qCadena.FieldByName('Cadena').Value ='S.A.') or (qCadena.FieldByName('Cadena').Value ='CXA') or
         (qCadena.FieldByName('Cadena').Value ='(CHEQUEO)') or (qCadena.FieldByName('Cadena').Value ='(PRE-EMPLEO)') then
        result := AnsiReplaceStr(strCadena_One, ',','')
      else
      begin
        qCadena := DM.NewQuery;
        qCadena.Close;
        qCadena.SQL.Text := ' Select dbo.NthWordSql('+#39+Cadena+#39+','+#39+' '+#39+','+#39+'3'+#39+') As Cadena';
        qCadena.Open;
        if Length(qCadena.FieldByName('Cadena').Value) > 0 then
        Begin
          if (qCadena.FieldByName('Cadena').Value ='S.A.') or (qCadena.FieldByName('Cadena').Value ='CXA') Then
            result := strCadena_One+' '+AnsiReplaceStr(strCadena_Two, ',','')
          else
            result := strCadena_One+' '+strCadena_Two+' '+qCadena.FieldByName('Cadena').Value;
        end
        else
          result := strCadena_One+' '+strCadena_Two;
      end;
    end
    else
      result := strCadena_One;
  end;
  FreeAndNil(qCadena);
End;
Function TDM.PruebaCombo(RecID : Int64) : String;
Var
 qinter  : TAdoQuery;
begin
  qinter := DM.NewQuery;
  qinter.Close;
  qinter.SQL.Text := ' SELECT PruebaID FROM PTEntradaPacienteDetalle (nolock) '+
                     ' WHERE RefrecID = ' + IntToStr(RecID) +
                     ' AND TipoPrueba = ' + #39 + 'C' + #39 +
                     ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39;
  qinter.Open;
  if (qinter.RecordCount > 0) then
    result := qinter.Fieldbyname('PruebaID').AsString
  else
    result := EmptyStr;
  FreeAndNil(qinter);
End;
function TDM.GetSecuenciaDomId : Int64;
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
   Add(' @Tipo_Doc = N'+#39+'DOM'+#39+',');
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
               FormatFloat('0000', numero);
   end;
   Result := StrToInt64(_valor);
 end;

 FreeAndNil(qsecdoc);
end;
function TDM.GetSecuenciaDetId : Int64;
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
   Add(' @Tipo_Doc = N'+#39+'DET'+#39+',');
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
               FormatFloat('0000', numero);
   end;
   Result := StrToInt64(_valor);
 end;
 FreeAndNil(qsecdoc);
end;
Function TDM.Verifica_Existencia_PruebaDomicilio(Muestrano : String) : Boolean;
Var
 qDom  : TAdoQuery;
begin
  qDom := DM.NewQuery;
  qDom.Close;
  qDom.SQL.Text :=   ' Select top 1 pruebaid from ptentradapacientedetalle '+
                     ' Where muestrano='+#39+muestrano+#39+' and descripcion like '+#39+'%DOMICILIO%'+#39;
  qDom.Open;
  if (qDom.RecordCount > 0) then
    result := True
  else
    result := False;
  FreeAndNil(qDom);
End;
Function TDM.Verifica_Prueba_Domicilio(Muestrano : String) : Boolean;
Var
 qDom  : TAdoQuery;
begin
  qDom := DM.NewQuery;
  qDom.Close;
  qDom.SQL.Text :=   ' Select top 1 pruebaid from ptentradapacientedetalle '+
                     ' Where muestrano='+#39+muestrano+#39+' and descripcion like '+#39+'%DOMICILIO%'+#39+
                     ' And muestrano not in (Select muestrano from PTCLIENTEDOMDETALLE '+
                     ' Where muestrano='+#39+muestrano+#39+')';
  qDom.Open;
  if (qDom.RecordCount > 0) then
    result := True
  else
    result := False;
  FreeAndNil(qDom);
End;

Function TDM.Verifica_Id_Visita(Id_Visita : String;Muestrano : String) : Boolean;
Var
 qDom,qinsert  : TAdoQuery;
begin
  qDom := DM.NewQuery;
  qDom.Close;
  qDom.SQL.Text :=   ' Select CteDomID from PTCLIENTEDOMDETALLE '+
                     ' Where CteDomDet='+Id_Visita+
                     ' And isnull(muestrano,'+#39+#39+')='+#39+#39;
  qDom.Open;
  if (qDom.RecordCount > 0) then
  begin
      qinsert := DM.NewQuery;
      qinsert.Close;
      qinsert.SQL.Text :=   ' Update PTCLIENTEDOMDETALLE '+
                         ' Set Muestrano='#39+Muestrano+#39+' Where CteDomDet='+Id_Visita;
      qinsert.ExecSql;
      result := True
  end
  else
    result := False;
  FreeAndNil(qDom);
End;
Function TDM.GetMaxCodFlebAX : String;
Var
 qflebointer  : TAdoQuery;
begin
  qflebointer := DM.NewQuery;
  qflebointer.Close;
  qflebointer.SQL.Text := ' select max(codigoaxapta)+1 as Maximo from ptflebotomista ';
  qflebointer.Open;
  if (qflebointer.RecordCount > 0) then
    result := qflebointer.FieldByName('Maximo').Value
  else
    result := EmptyStr;
  FreeAndNil(qflebointer);
End;
Function TDM.VerificarPruebasEmbarazo(RecId : Int64): Boolean;
Var
 qrPrueba       : TAdoQuery;
 Lista_Pruebas  : String;
begin
  qrPrueba := DM.NewQuery;
  qrPrueba.Close;
  qrPrueba.SQL.Text := ' declare @pb varchar(200) '+
                       ' Select @pb=[dbo].[Inclusion_Pruebas_Embarazo]() '+
                       ' select @pb as Lista_Pruebas' ;
  qrPrueba.Open;
  if (qrPrueba.RecordCount > 0) then
  begin
        Lista_Pruebas:=qrPrueba.Fieldbyname('Lista_Pruebas').AsString;
  end;
  qrPrueba.Close;
  qrPrueba.SQL.Text := ' Select Top 1 Muestrano From PtEntradaPacienteDetalle '+
                       ' Where  refrecid='+#39+IntToStr(RecId)+#39+' And '+
                       ' PruebaID In ('+Lista_Pruebas+')';
  qrPrueba.Open;
  if (qrPrueba.RecordCount > 0) then
    result := True
  else
    result := False;
  FreeAndNil(qrPrueba);
End;

Function TDM.GetMaxDescFlebAX : String;
Var
 qflebointer  : TAdoQuery;
begin
  qflebointer := DM.NewQuery;
  qflebointer.Close;
  qflebointer.SQL.Text := '  select max(codigoaxapta+'+#39+','+#39+'+descripcion) as descripcion  from ptflebotomista  ';
  qflebointer.Open;
  if (qflebointer.RecordCount > 0) then
    result := Copy(qflebointer.FieldByName('Descripcion').Value,4,50)
  else
    result := EmptyStr;
  FreeAndNil(qflebointer);
End;
procedure TDM.Act_Empleado_NotaCredito(Cod_Empleado,CobroID : String);
Var qinsert : TADOQuery;
begin
     qinsert := DM.NewQuery;
     With qinsert, sql do
     begin
        Close;
        Text := ' Update Ptcobro Set TurnoID='+#39+Cod_Empleado+#39+ ' Where Cobroid='+#39+CobroID+#39;
        ExecSQL;
     end;
     FreeAndNil(qinsert);
end;
procedure TDM.Act_NotaEntrada_NC(RecID,TipoNC,DescSalida : String; Monto : Currency);
Var qinsert : TADOQuery;
begin
     qinsert := DM.NewQuery;
     With qinsert, sql do
     begin
        Close;
        Text := ' Update PtEntradaPaciente set Nota = '+#39+'Nota de Cr�dito ('+TipoNC+')'+#13+
                ' Monto = '+CurrToStr(Monto)+#13+'Empleado = '+DescSalida+#13+'Usuario Creaci�n = '+dm.CurUser+#39+
                ' Where Recid='+RecID;
        ExecSQL;
     end;
     FreeAndNil(qinsert);
end;
Function TDM.Verifica_Entradas_PG(RecID : Int64): Boolean;
Var qconsulta : TADOQuery;
begin
   qconsulta := DM.NewQuery;
   With qconsulta, sql do
   begin
      Close;
      Text := ' Select RecID from PtEntradaPacienteDetalle '+#13+
              ' Where Refrecid = '+IntToStr(RecID);
      Open;
   end;
  if (qconsulta.RecordCount > 0) then
    result := True
  else
    result := False;
  FreeAndNil(qconsulta);
end;

Function TDM.Pruebas_Exclusion(Origen : String; ClienteID : String) : String;
Var
 qExclusion  : TAdoQuery;
begin
  qExclusion := DM.NewQuery;
  qExclusion.Close;
  qExclusion.SQL.Text := ' declare @ex varchar(200) '+
                         ' Select @ex=[dbo].[Exclusion_PruebasNV]('+Origen+','+#39+ClienteID+#39+') '+
                         ' select @ex as Lista_Pruebas' ;
  qExclusion.Open;
  if (qExclusion.RecordCount > 0) then
        result:=qExclusion.Fieldbyname('Lista_Pruebas').AsString
  else
        result:=EmptyStr;
  FreeAndNil(qExclusion);
End;

Function TDM.Crear_Clave_Alfa(Pasaporte : String) : Integer;
Var
  Numero  : Currency;
  Valor   : Int64;
  Texto   : String;
begin
  //Cargando el Pasaporte.

  valor := Convertir_Cadena(Pasaporte);
//  Valor := StrToInt64(Pasaporte);

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
Function TDM.Convertir_Cadena(Pasaporte : String) : Integer;
var
  cadena : string;
  options       : TReplaceFlags;
begin
  // Try to replace all occurrences of a or A to THE
  // Set the options to change all occurences regardless of case
  options := [rfReplaceAll, rfIgnoreCase];

  // Now change 'a' or 'A' to 'THE' throughout
  cadena  := StringReplace(Pasaporte, 'A', '1', options);
  cadena  := StringReplace(cadena, 'B', '2', options);
  cadena  := StringReplace(cadena, 'C', '3', options);
  cadena  := StringReplace(cadena, 'D', '4', options);
  cadena  := StringReplace(cadena, 'E', '5', options);
  cadena  := StringReplace(cadena, 'F', '6', options);
  cadena  := StringReplace(cadena, 'G', '7', options);
  cadena  := StringReplace(cadena, 'H', '8', options);
  cadena  := StringReplace(cadena, 'I', '9', options);
  cadena  := StringReplace(cadena, 'J', '10', options);
  cadena  := StringReplace(cadena, 'K', '11', options);
  cadena  := StringReplace(cadena, 'L', '12', options);
  cadena  := StringReplace(cadena, 'M', '13', options);
  cadena  := StringReplace(cadena, 'N', '14', options);
  cadena  := StringReplace(cadena, 'O', '15', options);
  cadena  := StringReplace(cadena, 'P', '16', options);
  cadena  := StringReplace(cadena, 'Q', '17', options);
  cadena  := StringReplace(cadena, 'R', '18', options);
  cadena  := StringReplace(cadena, 'S', '19', options);
  cadena  := StringReplace(cadena, 'T', '20', options);
  cadena  := StringReplace(cadena, 'U', '21', options);
  cadena  := StringReplace(cadena, 'V', '22', options);
  cadena  := StringReplace(cadena, 'W', '23', options);
  cadena  := StringReplace(cadena, 'X', '24', options);
  cadena  := StringReplace(cadena, 'Y', '25', options);
  cadena  := StringReplace(cadena, 'Z', '26', options);
  cadena  := StringReplace(cadena, '.', '', options);
  cadena  := StringReplace(cadena, '-', '', options);
  Result  := StrToInt64(cadena);
end;
procedure TDM.ImpresionRwPrint_Recibo_Pesos;
Var qrDetalleRec,qSerial : TADOQuery;
 PP, LabelPOs : Integer;
 Entrega, LabelFecha: String;
begin
  If Ruta_Recibo <> EmptyStr then
  begin
      PP := 40;
      with RP_Recibos_Pesos, qryCobroTicket  do
      begin
    //      PrinterName := 'Recibos';
          if Ruta_Recibo <> EmptyStr then
             PrinterName := Ruta_Recibo
          else
          begin
             PrinterName := EmptyStr;
    //        SetToDefaultPrinter;
          end;

          BeginDoc;
      //             1234567890123456789012345678901234567890
            WriteLn(#27+'G'+#27+Char(14)) ;
            WriteLn(Justifica(FieldByName('TituloEmpresa').AsString,PP,' ',tjCenter));
            WriteLn(Justifica('Centro '+FieldByName('Nombre').AsString,PP,' ',tjCenter));
            WriteLn(Justifica('Tel. '+FieldByName('Telefono').AsString,PP,' ',tjCenter));
            WriteLn(Justifica(FieldByName('RNC').AsString,PP,' ',tjCenter));
            WriteLn('') ;
            WriteLn(Justifica('RECIBO DE PAGO',PP,' ',tjCenter));
            WriteLn('') ;
    //        WriteLn(char(27)+char(72)) ;
    //        WriteLn(#27+'G'+#27+Char(14)) ;
            WriteLn(Justifica('Paciente     :'+Copy(Trim(fieldbyname('NombrePaciente').AsString),1,25),PP,' ',tjLeft));
            WriteLn(Justifica('Cliente      :'+Copy(Trim(fieldbyname('ClienteNombre').AsString),1,25),PP,' ',tjLeft));
            WriteLn(Justifica('Recibo   No. :'+Copy(Trim(fieldbyname('ReciboNo').AsString),1,25),PP,' ',tjLeft));
            WriteLn(Justifica('Registro No. :'+Copy(Trim(fieldbyname('EntradaID').AsString),1,25),PP,' ',tjLeft));
            WriteLn(Justifica('Muestra  No. :'+Copy(Trim(fieldbyname('Muestrano').AsString),1,25),PP,' ',tjLeft));
            WriteLn(Justifica('Fecha/Hora   :'+Copy(Trim(fieldbyname('Fecha').AsString)+' '+Trim(fieldbyname('Hora').AsString),1,25),PP,' ',tjLeft));
            WriteLn (Estremos('UsuarioID    :'+Trim(fieldbyname('UsuarioID').AsString),'Moneda : '+Fieldbyname('MonedaID').AsString,PP));
            WriteLn(RellenaLinea(PP,'-'));
            WriteLn(' Nombre de la Prueba ');
            WriteLn(RellenaLinea(PP,'-'));
            qryCobroTicket.First;
            while not qryCobroTicket.eof do
            begin
               WriteLn(Justifica(Trim(qryCobroTicketDescripcion.AsString),22,' ',tjLeft));
               qryCobroTicket.Next;
            end;
            qrDetalleRec := DM.NewQuery;
            With qrDetalleRec, sql do
            begin
                Close;
                Text := 'Select f.Descripcion,d.monto,d.formadepagoid,d.Devuelta from ptcobrodetalle d inner join ptformadepago f on '+
                        'd.formadepagoid=f.formadepagoid '+
                        ' Where CobroID = '+#39+qryCobroTicketCobroID.AsString+#39;
                Open;
            end;
            WriteLn(RellenaLinea(PP,'-'));
            WriteLn(RellenaLinea(13,' ')+Justifica('Total          $ ',17,' ',tjLeft)+Justifica(FormatFloat('##,##0.00', fieldbyname('PendienteFactura').Asfloat),10,' ',tjRight));
            WriteLn(RellenaLinea(13,' ')+Justifica('Cobrado        $ ',17,' ',tjLeft)+Justifica(FormatFloat('##,##0.00', fieldbyname('TotalCobrado').AsFloat),10,' ',tjRight));
            WriteLn(RellenaLinea(13,' ')+Justifica('Pend. de Pago  $ ',17,' ',tjLeft)+Justifica(FormatFloat('##,##0.00', fieldbyname('PendienteCobro').AsFloat),10,' ',tjRight));
            WriteLn('') ;
            WriteLn('') ;

            while not qrDetalleRec.eof do
            begin
                if qrDetalleRec.FieldByName('Formadepagoid').AsString = 'EFE' then
                Begin
                    WriteLn(Justifica(Trim(qrDetalleRec.FieldByName('Descripcion').AsString),30,' ',tjLeft)+
                    Justifica(FormatFloat('##,##0.00', qrDetalleRec.FieldByName('Monto').AsFloat+fieldbyname('Devuelta').AsFloat),10,' ',tjRight));
                    WriteLn(Justifica('Devuelta        ',30,' ',tjLeft)+
                    Justifica(FormatFloat('##,##0.00', fieldbyname('Devuelta').AsFloat),10,' ',tjRight));
                end
                else
                begin
                    WriteLn(Justifica(Trim(qrDetalleRec.FieldByName('Descripcion').AsString),30,' ',tjLeft)+
                    Justifica(FormatFloat('##,##0.00', qrDetalleRec.FieldByName('Monto').AsFloat),10,' ',tjRight));
                end;
                qrDetalleRec.Next;
            end;
            WriteLn(#10);
            qSerial := DM.NewQuery;
            qSerial.Close;
            qSerial.SQL.Text := ' Select Aprobado, Serial, Fecha_Emision, Fecha_Revision from ptSeriales (nolock) '+
                                ' Where Grupo_ID ='+#39+qryCobroTicketOrigen.AsString+#39+' And Tipo='+#39+'RI'+#39+' And Sub_Tipo='+#39+'P'+#39+
                                ' And Estatus='+#39+'A'+#39;
            qSerial.Open;

            if (qSerial.RecordCount > 0) then
            begin
              WriteLn(Justifica('Aprobado por: '+qSerial.FieldByName('Aprobado').AsString,20,' ',tjLeft));
              WriteLn(Justifica('Serial: '+qSerial.FieldByName('Serial').AsString,20,' ',tjLeft));
              WriteLn(Justifica('Fecha de Emisi�n: '+FormatDateTime('dd/mm/yy',qSerial.FieldByName('Fecha_Emision').Value),30,' ',tjLeft));
              WriteLn(Justifica('Fecha de Revisi�n: '+FormatDateTime('dd/mm/yy',qSerial.FieldByName('Fecha_Revision').Value),30,' ',tjLeft));
              WriteLn(#10);
              WriteLn(#10);
              WriteLn(#10);
            end;
          EndDoc;
      end;
      FreeAndNil(qrDetalleRec);
      FreeAndNil(qSerial);
  end;
end;
procedure TDM.ImpresionRwPrint_Recibo_Dolar;
Var qrDetalleRec,qSerial : TADOQuery;
 PP, LabelPOs : Integer;
 Entrega, LabelFecha: String;
begin
  If Ruta_Recibo <> EmptyStr then
  begin
      PP := 40;
      with RP_Recibos_Pesos, qryCobroTicket  do
      begin
    //      PrinterName := 'Recibos';
          if Ruta_Recibo <> EmptyStr then
             PrinterName := Ruta_Recibo
          else
          begin
             PrinterName := EmptyStr;
    //        SetToDefaultPrinter;
          end;

          BeginDoc;
      //             1234567890123456789012345678901234567890
            WriteLn(#27+'G'+#27+Char(14)) ;
            WriteLn(Justifica(FieldByName('SubTituloEmpresa').AsString,PP,' ',tjCenter));
            WriteLn('') ;
            WriteLn(Justifica('PAYMENT RECEIPT',PP,' ',tjCenter));
            WriteLn('') ;
            WriteLn(Justifica('Name         :'+Copy(Trim(fieldbyname('ClienteNombre').AsString),1,25),PP,' ',tjLeft));
            WriteLn(Justifica('Customer     :'+Copy(Trim(fieldbyname('NombrePaciente').AsString),1,25),PP,' ',tjLeft));
            WriteLn(Justifica('Lab Number   :'+Copy(Trim(fieldbyname('Muestrano').AsString),1,25),PP,' ',tjLeft));
            WriteLn(Justifica('Receipt  No. :'+Copy(Trim(fieldbyname('ReciboNo').AsString),1,25),PP,' ',tjLeft));
            WriteLn(Justifica('Date/Time    :'+Copy(Trim(fieldbyname('Fecha').AsString)+' '+Trim(fieldbyname('Hora').AsString),1,25),PP,' ',tjLeft));
            WriteLn(Justifica('UserID       :'+Copy(Trim(fieldbyname('UsuarioID').AsString),1,25),PP,' ',tjLeft));
            WriteLn(Justifica('Currency     :'+Copy(Trim(fieldbyname('MonedaID').AsString),1,25),PP,' ',tjLeft));
            WriteLn(RellenaLinea(PP,'-'));
            WriteLn('Test Name');
            WriteLn(RellenaLinea(PP,'-'));
            qryCobroTicket.First;
            while not qryCobroTicket.eof do
            begin
               WriteLn(Justifica(Trim(qryCobroTicketComentario.AsString),22,' ',tjLeft));
               qryCobroTicket.Next;
            end;
            qrDetalleRec := DM.NewQuery;
            With qrDetalleRec, sql do
            begin
                Close;
                Text := 'Select f.Descripcion_us, d.monto, d.Formadepagoid from ptcobrodetalle d inner join ptformadepago f on '+
                        'd.formadepagoid=f.formadepagoid '+
                        ' Where Refrecid = '+qryCobroTicketRefrecid.AsString;
                Open;
            end;
            WriteLn(RellenaLinea(PP,'-'));
            WriteLn(RellenaLinea(13,' ')+Justifica('Test(s) USA    $ ',17,' ',tjLeft)+Justifica(FormatFloat('##,##0.00', fieldbyname('TotalPruebaUSA').Asfloat),10,' ',tjRight));
            WriteLn(RellenaLinea(13,' ')+Justifica('Shipping       $ ',17,' ',tjLeft)+Justifica(FormatFloat('##,##0.00', fieldbyname('TotalEnvioUSA').AsFloat),10,' ',tjRight));
            WriteLn(RellenaLinea(13,' ')+Justifica('Paid Amount    $ ',17,' ',tjLeft)+Justifica(FormatFloat('##,##0.00', fieldbyname('TotalCobrado').Asfloat),10,' ',tjRight));
            if qrDetalleRec.FieldByName('Formadepagoid').AsString = 'CASH' then
            Begin
                WriteLn(RellenaLinea(13,' ')+Justifica('Returned Amount$ ',17,' ',tjLeft)+Justifica(FormatFloat('##,##0.00', fieldbyname('Devuelta').AsFloat),10,' ',tjRight));
            end;
            WriteLn(RellenaLinea(13,' ')+Justifica('Due Amount     $ ',17,' ',tjLeft)+Justifica(FormatFloat('##,##0.00', fieldbyname('PendienteCobro').AsFloat),10,' ',tjRight));
            WriteLn('') ;
            WriteLn('') ;
            while not qrDetalleRec.eof do
            begin
            WriteLn(Justifica(Trim(qrDetalleRec.FieldByName('Descripcion_US').AsString),30,' ',tjLeft)+
                    Justifica(FormatFloat('##,##0.00', qrDetalleRec.FieldByName('Monto').AsFloat),10,' ',tjRight));

               qrDetalleRec.Next;
            end;
            WriteLn(#10);
            qSerial := DM.NewQuery;
            qSerial.Close;
            qSerial.SQL.Text := ' Select Aprobado, Serial, Fecha_Emision, Fecha_Revision from ptSeriales (nolock) '+
                                ' Where Grupo_ID ='+#39+qryCobroTicketOrigen.AsString+#39+' And Tipo='+#39+'RI'+#39+' And Sub_Tipo='+#39+'P'+#39+
                                ' And Estatus='+#39+'A'+#39;
            qSerial.Open;

            if (qSerial.RecordCount > 0) then
            begin
              WriteLn(Justifica('Aprobado por: '+qSerial.FieldByName('Aprobado').AsString,20,' ',tjLeft));
              WriteLn(Justifica('Serial: '+qSerial.FieldByName('Serial').AsString,20,' ',tjLeft));
              WriteLn(Justifica('Fecha de Emisi�n: '+FormatDateTime('dd/mm/yy',qSerial.FieldByName('Fecha_Emision').Value),30,' ',tjLeft));
              WriteLn(Justifica('Fecha de Revisi�n: '+FormatDateTime('dd/mm/yy',qSerial.FieldByName('Fecha_Revision').Value),30,' ',tjLeft));
              WriteLn(#10);
              WriteLn(#10);
              WriteLn(#10);
            end;
          EndDoc;
      end;
      FreeAndNil(qrDetalleRec);
      FreeAndNil(qSerial);
  end;
end;
procedure TDM.ImpresionRwPrint_Nota_Debito;
Var qrDetalleRec,qSerial : TADOQuery;
 PP, LabelPOs : Integer;
 Entrega, LabelFecha, strTexto_Memo: String;
begin
  If Ruta_Recibo <> EmptyStr then
  begin
      PP := 40;
      with RP_Recibos_Pesos, qryCobroTicket  do
      begin
    //      PrinterName := 'Recibos';
          if Ruta_Recibo <> EmptyStr then
             PrinterName := Ruta_Recibo
          else
          begin
             PrinterName := EmptyStr;
    //        SetToDefaultPrinter;
          end;
          BeginDoc;
      //             1234567890123456789012345678901234567890
            WriteLn(#27+'G'+#27+Char(14)) ;
            WriteLn(Justifica(FieldByName('TituloEmpresa').AsString,PP,' ',tjCenter));
            WriteLn(Justifica('Centro '+FieldByName('Nombre').AsString,PP,' ',tjCenter));
            WriteLn(Justifica('Tel. '+FieldByName('Telefono').AsString,PP,' ',tjCenter));
            WriteLn(Justifica(FieldByName('RNC').AsString,PP,' ',tjCenter));
            WriteLn('') ;
            WriteLn(Justifica('NOTA DE CREDITO',PP,' ',tjCenter));
            WriteLn('') ;
    //        WriteLn(char(27)+char(72)) ;
    //        WriteLn(#27+'G'+#27+Char(14)) ;
            WriteLn(Justifica('Autorizacion :'+Copy(Trim(fieldbyname('Autorizacion').AsString),1,25),PP,' ',tjLeft));
            WriteLn(Justifica('Paciente     :'+Copy(Trim(fieldbyname('NombrePaciente').AsString),1,25),PP,' ',tjLeft));
            WriteLn(Justifica('Cliente      :'+Copy(Trim(fieldbyname('ClienteNombre').AsString),1,25),PP,' ',tjLeft));
            WriteLn(Justifica('Debito   No. :'+Copy(Trim(fieldbyname('ReciboNo').AsString),1,25),PP,' ',tjLeft));
            WriteLn(Justifica('Registro No. :'+Copy(Trim(fieldbyname('EntradaID').AsString),1,25),PP,' ',tjLeft));
            WriteLn(Justifica('Muestra  No. :'+Copy(Trim(fieldbyname('Muestrano').AsString),1,25),PP,' ',tjLeft));
            WriteLn(Justifica('Fecha/Hora   :'+Copy(Trim(fieldbyname('Fecha').AsString)+' '+Trim(fieldbyname('Hora').AsString),1,25),PP,' ',tjLeft));
            WriteLn(Justifica('Concepto     :'+Copy(Trim(fieldbyname('Concepto').AsString),1,25),PP,' ',tjLeft));
            WriteLn( Estremos('UsuarioID    :'+Trim(fieldbyname('UsuarioID').AsString),'Moneda : '+Fieldbyname('MonedaID').AsString,PP));
            WriteLn(RellenaLinea(PP,'-'));
            WriteLn(' Nombre de la Prueba ');
            WriteLn(RellenaLinea(PP,'-'));
            qryCobroTicket.First;
            while not qryCobroTicket.eof do
            begin
               WriteLn(Justifica(Trim(qryCobroTicketDescripcion.AsString),22,' ',tjLeft));
               qryCobroTicket.Next;
            end;
            WriteLn(RellenaLinea(PP,'-'));
            WriteLn(RellenaLinea(13,' ')+Justifica('Nota Credito   $ ',17,' ',tjLeft)+Justifica(FormatFloat('##,##0.00', fieldbyname('TotalCobrado').AsFloat),10,' ',tjRight));
            WriteLn('') ;
            WriteLn('') ;
            WriteLn(Justifica('Autorizacion valida hasta : '+Copy(Trim(fieldbyname('Fecha_Autoriza').AsString),1,25),PP,' ',tjLeft));
            strTexto_Memo:=AnsiReplaceStr(Trim(fieldbyname('NotaNCredito').AsString),''#$D#$A'',' ');
            WriteLn(Justifica(strTexto_Memo,40,' ',tjLeft));
            WriteLn('') ;
            WriteLn('') ;
            WriteLn(RellenaLinea(PP,'-'));
            WriteLn(Justifica('Firma del Paciente',PP,' ',tjCenter));
            WriteLn(#10);
            qSerial := DM.NewQuery;
            qSerial.Close;
            qSerial.SQL.Text := ' Select Aprobado, Serial, Fecha_Emision, Fecha_Revision from ptSeriales (nolock) '+
                                ' Where Grupo_ID ='+#39+qryCobroTicketOrigen.AsString+#39+' And Tipo='+#39+'NC'+#39+' And Sub_Tipo='+#39+'P'+#39+
                                ' And Estatus='+#39+'A'+#39;
            qSerial.Open;

            if (qSerial.RecordCount > 0) then
            begin
              WriteLn(Justifica('Aprobado por: '+qSerial.FieldByName('Aprobado').AsString,20,' ',tjLeft));
              WriteLn(Justifica('Serial: '+qSerial.FieldByName('Serial').AsString,20,' ',tjLeft));
              WriteLn(Justifica('Fecha de Emisi�n: '+FormatDateTime('dd/mm/yy',qSerial.FieldByName('Fecha_Emision').Value),30,' ',tjLeft));
              WriteLn(Justifica('Fecha de Revisi�n: '+FormatDateTime('dd/mm/yy',qSerial.FieldByName('Fecha_Revision').Value),30,' ',tjLeft));
              WriteLn(#10);
              WriteLn(#10);
              WriteLn(#10);
            end;
          EndDoc;
      end;
      FreeAndNil(qrDetalleRec);
      FreeAndNil(qSerial);
  end;
end;
procedure TDM.ImpresionRwPrint_Nota_Credito;
Var qSerial : TADOQuery;
 PP, LabelPOs : Integer;
 Entrega, LabelFecha: String;
begin
  If Ruta_Recibo <> EmptyStr then
  begin
      PP := 40;
      with RP_Recibos_Pesos, qryCobroTicket  do
      begin
    //      PrinterName := 'Recibos';
          if Ruta_Recibo <> EmptyStr then
             PrinterName := Ruta_Recibo
          else
          begin
             PrinterName := EmptyStr;
    //        SetToDefaultPrinter;
          end;
          BeginDoc;
      //             1234567890123456789012345678901234567890
            WriteLn(#27+'G'+#27+Char(14)) ;
            WriteLn(Justifica(FieldByName('TituloEmpresa').AsString,PP,' ',tjCenter));
            WriteLn(Justifica('Centro '+FieldByName('Nombre').AsString,PP,' ',tjCenter));
            WriteLn(Justifica('Tel. '+FieldByName('Telefono').AsString,PP,' ',tjCenter));
            WriteLn(Justifica(FieldByName('RNC').AsString,PP,' ',tjCenter));
            WriteLn('') ;
            WriteLn(Justifica('NOTA DE CREDITO',PP,' ',tjCenter));
            WriteLn('') ;
    //        WriteLn(char(27)+char(72)) ;
    //        WriteLn(#27+'G'+#27+Char(14)) ;
            WriteLn(Justifica('Autorizacion :'+Copy(Trim(fieldbyname('Autorizacion').AsString),1,25),PP,' ',tjLeft));
            WriteLn(Justifica('Paciente     :'+Copy(Trim(fieldbyname('NombrePaciente').AsString),1,25),PP,' ',tjLeft));
            WriteLn(Justifica('Cliente      :'+Copy(Trim(fieldbyname('ClienteNombre').AsString),1,25),PP,' ',tjLeft));
            WriteLn(Justifica('Credito  No. :'+Copy(Trim(fieldbyname('ReciboNo').AsString),1,25),PP,' ',tjLeft));
            WriteLn(Justifica('Registro No. :'+Copy(Trim(fieldbyname('EntradaID').AsString),1,25),PP,' ',tjLeft));
            WriteLn(Justifica('Muestra  No. :'+Copy(Trim(fieldbyname('Muestrano').AsString),1,25),PP,' ',tjLeft));
            WriteLn(Justifica('Fecha/Hora   :'+Copy(Trim(fieldbyname('Fecha').AsString)+' '+Trim(fieldbyname('Hora').AsString),1,25),PP,' ',tjLeft));
            WriteLn(Justifica('Concepto     :'+Copy(Trim(fieldbyname('Concepto').AsString),1,25),PP,' ',tjLeft));
            WriteLn( Estremos('UsuarioID    :'+Trim(fieldbyname('UsuarioID').AsString),'Moneda : '+Fieldbyname('MonedaID').AsString,PP));
            WriteLn(RellenaLinea(PP,'-'));
            WriteLn(' Nombre de la Prueba ');
            WriteLn(RellenaLinea(PP,'-'));
            qryCobroTicket.First;
            while not qryCobroTicket.eof do
            begin
               WriteLn(Justifica(Trim(qryCobroTicketDescripcion.AsString),22,' ',tjLeft));
               qryCobroTicket.Next;
            end;
            WriteLn(RellenaLinea(PP,'-'));
            WriteLn(RellenaLinea(13,' ')+Justifica('Nota Credito $ ',17,' ',tjLeft)+Justifica(FormatFloat('##,##0.00', fieldbyname('TotalCobrado').AsFloat),10,' ',tjRight));
            WriteLn(#10);
            WriteLn(#10);
            WriteLn(RellenaLinea(PP,'-'));
            WriteLn(Justifica('Firma del Paciente',PP,' ',tjCenter));
            WriteLn(#10);
            qSerial := DM.NewQuery;
            qSerial.Close;
            qSerial.SQL.Text := ' Select Aprobado, Serial, Fecha_Emision, Fecha_Revision from ptSeriales (nolock) '+
                                ' Where Grupo_ID ='+#39+qryCobroTicketOrigen.AsString+#39+' And Tipo='+#39+'NC'+#39+' And Sub_Tipo='+#39+'P'+#39+
                                ' And Estatus='+#39+'A'+#39;
            qSerial.Open;

            if (qSerial.RecordCount > 0) then
            begin
              WriteLn(Justifica('Aprobado por: '+qSerial.FieldByName('Aprobado').AsString,20,' ',tjLeft));
              WriteLn(Justifica('Serial: '+qSerial.FieldByName('Serial').AsString,20,' ',tjLeft));
              WriteLn(Justifica('Fecha de Emisi�n: '+FormatDateTime('dd/mm/yy',qSerial.FieldByName('Fecha_Emision').Value),30,' ',tjLeft));
              WriteLn(Justifica('Fecha de Revisi�n: '+FormatDateTime('dd/mm/yy',qSerial.FieldByName('Fecha_Revision').Value),30,' ',tjLeft));
              WriteLn(#10);
              WriteLn(#10);
              WriteLn(#10);
            end;
          EndDoc;
      end;
      FreeAndNil(qSerial);
  end;
end;
procedure TDM.ImpresionRwPrint_Devolucion;
Var qSerial : TADOQuery;
 PP, LabelPOs : Integer;
 Entrega, LabelFecha: String;
begin
  If Ruta_Recibo <> EmptyStr then
  begin
      PP := 40;
      with RP_Recibos_Pesos, qryCobroTicket  do
      begin
    //      PrinterName := 'Recibos';
          if Ruta_Recibo <> EmptyStr then
             PrinterName := Ruta_Recibo
          else
          begin
             PrinterName := EmptyStr;
    //        SetToDefaultPrinter;
          end;
          BeginDoc;
      //             1234567890123456789012345678901234567890
            WriteLn(#27+'G'+#27+Char(14)) ;
            WriteLn(Justifica(FieldByName('TituloEmpresa').AsString,PP,' ',tjCenter));
            WriteLn(Justifica('Centro '+FieldByName('Nombre').AsString,PP,' ',tjCenter));
            WriteLn(Justifica('Tel. '+FieldByName('Telefono').AsString,PP,' ',tjCenter));
            WriteLn(Justifica(FieldByName('RNC').AsString,PP,' ',tjCenter));
            WriteLn('') ;
            WriteLn(Justifica('DEVOLUCION',PP,' ',tjCenter));
            WriteLn('') ;
    //        WriteLn(char(27)+char(72)) ;
    //        WriteLn(#27+'G'+#27+Char(14)) ;
    //        WriteLn(Justifica('Autorizacion :'+Copy(Trim(fieldbyname('Autorizacion').AsString),1,25),PP,' ',tjLeft));
            WriteLn(Justifica('Paciente     :'+Copy(Trim(fieldbyname('NombrePaciente').AsString),1,25),PP,' ',tjLeft));
            WriteLn(Justifica('Cliente      :'+Copy(Trim(fieldbyname('ClienteNombre').AsString),1,25),PP,' ',tjLeft));
            WriteLn(Justifica('Credito  No. :'+Copy(Trim(fieldbyname('ReciboNo').AsString),1,25),PP,' ',tjLeft));
            WriteLn(Justifica('Registro No. :'+Copy(Trim(fieldbyname('EntradaID').AsString),1,25),PP,' ',tjLeft));
            WriteLn(Justifica('Muestra  No. :'+Copy(Trim(fieldbyname('Muestrano').AsString),1,25),PP,' ',tjLeft));
            WriteLn(Justifica('Fecha/Hora   :'+Copy(Trim(fieldbyname('Fecha').AsString)+' '+Trim(fieldbyname('Hora').AsString),1,25),PP,' ',tjLeft));
            WriteLn(Justifica('Concepto     :'+Copy(Trim(fieldbyname('Concepto').AsString),1,25),PP,' ',tjLeft));
            WriteLn( Estremos('UsuarioID    :'+Trim(fieldbyname('UsuarioID').AsString),'Moneda : '+Fieldbyname('MonedaID').AsString,PP));
            WriteLn(RellenaLinea(PP,'-'));
            WriteLn(' Nombre de la Prueba ');
            WriteLn(RellenaLinea(PP,'-'));
            qryCobroTicket.First;
            while not qryCobroTicket.eof do
            begin
               WriteLn(Justifica(Trim(qryCobroTicketDescripcion.AsString),22,' ',tjLeft));
               qryCobroTicket.Next;
            end;
            WriteLn(RellenaLinea(PP,'-'));
            WriteLn(RellenaLinea(13,' ')+Justifica('Total Factura  $ ',17,' ',tjLeft)+Justifica(FormatFloat('##,##0.00', fieldbyname('TotalFactura').Asfloat),10,' ',tjRight));
            WriteLn(RellenaLinea(13,' ')+Justifica('Devoluci�n     $ ',17,' ',tjLeft)+Justifica(FormatFloat('##,##0.00', fieldbyname('TotalCobrado').AsFloat),10,' ',tjRight));
            WriteLn(#10);
            WriteLn(#10);
            WriteLn(RellenaLinea(PP,'-'));
            WriteLn(Justifica('Firma del Paciente',PP,' ',tjCenter));
            WriteLn(#10);
            qSerial := DM.NewQuery;
            qSerial.Close;
            qSerial.SQL.Text := ' Select Aprobado, Serial, Fecha_Emision, Fecha_Revision from ptSeriales (nolock) '+
                                ' Where Grupo_ID ='+#39+qryCobroTicketOrigen.AsString+#39+' And Tipo='+#39+'NC'+#39+' And Sub_Tipo='+#39+'P'+#39+
                                ' And Estatus='+#39+'A'+#39;
            qSerial.Open;
            WriteLn(#10);
            if (qSerial.RecordCount > 0) then
            begin
              WriteLn(Justifica('Aprobado por:      '+qSerial.FieldByName('Aprobado').AsString,20,' ',tjLeft));
              WriteLn(Justifica('Serial:            '+qSerial.FieldByName('Serial').AsString,20,' ',tjLeft));
              WriteLn(Justifica('Fecha de Emisi�n:  '+FormatDateTime('dd/mm/yy',qSerial.FieldByName('Fecha_Emision').Value),30,' ',tjLeft));
              WriteLn(Justifica('Fecha de Revisi�n: '+FormatDateTime('dd/mm/yy',qSerial.FieldByName('Fecha_Revision').Value),30,' ',tjLeft));
              WriteLn(#10);
              WriteLn(#10);
              WriteLn(#10);
            end;
          EndDoc;
      end;
      FreeAndNil(qSerial);
  end;
end;

Function TDM.Estremos(TextE1,TextE2 : String ; LengE :SmallInt):String ;
var
I,LenNum : Integer;
begin
  I:= 0;
  LenNum  :=  TRUNC(LengE - Length(TextE1+TextE2))-1;
  While Length(Result) < LengE  do
  Begin
    INC(I);
    Result :=  TextE1 + RellenaLinea(LenNum + I,' ') + TextE2;
  end;
end;
function TDM.ComprobarTarjeta(C: string) : Integer;
var
  Card  : string[21];
  VCard : array [0..21] of Byte absolute Card;
  XCard : Integer;
  Cstr  : string[21];
  y,
  x     : Integer;
begin
  Cstr := '';
  FillChar(VCard, 22, #0);
  Card := C;
  for x := 1 to 20 do
    if (VCard[x] in [48..57]) then
      Cstr := Cstr+Chr(VCard[x]);
  Card := '';
  Card := Cstr;
  XCard := 0;
  if not odd(Length(Card)) then
    for x := (Length(Card)-1) downto 1 do
    begin
      if odd(x) then
        y := ((VCard[x]-48)*2)
      else
        y := (VCard[x]-48);
      if (y>=10) then
        y := ((y-10)+1);
      XCard := (XCard+y)
    end
  else
    for x := (Length(Card)-1) downto 1 do
    begin
      if odd(x) then
        y := (VCard[x]-48)
      else
        y := ((VCard[x]-48)*2);
      if (y>=10) then
        y := ((y-10)+1);
      XCard := (XCard+y)
    end;
    x := (10-(XCard mod 10));
  if (x=10) then
    x := 0;
  if (x=(VCard[Length(Card)]-48)) then
    comprobarTarjeta := Ord(Cstr[1])-Ord('2')
  else
    comprobarTarjeta := 0
end;
Function TDM.DateToInt(xDate : TDate): Integer;
var
sBuffer : String;
begin
  sBuffer := DateToStr(xDate);
  result := StrToInt(FormatDateTime('yyyymmdd', xDate));
end;
 function TDM.Buscar_PruebaGrupo(PruebaID : String;GrupoID : String) : Boolean;
Var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;
 qfind.Close;
 qfind.SQL.Text := ' SELECT PruebaId FROM PtPruebaGrupo_Ex (nolock) WHERE PruebaID = '+#39+PruebaID+#39+
                   ' And GrupoID In ('+#39+GrupoID+#39+')';
 qfind.Open;

 if (qfind.RecordCount > 0) And (Trim(qfind.FieldByName('PruebaId').AsString)=PruebaID) then
   result := True
 else
   result := false;

 FreeAndNil(qfind);
end;
Function TDM.Verifica_Referimiento(RecID : String):Boolean;
Var qVerifica  : TAdoQuery;
begin
  qVerifica := DM.NewQuery;
  With qVerifica, sql do
  begin
      Close;
      SQL.Text := ' select d.* from PtEntradaPacienteDetalle d inner join ptEntradaPaciente e on e.RecID=d.RefrecID '+
                  ' inner join PtReferimientoPrueba r on r.ClienteID = e.ClienteID And d.PruebaID=r.PruebaID  '+
                  ' Where d.RefRecID='+RecID;
      Open;
  End;
  if (qVerifica.RecordCount > 0) then
   result := True
  else
   result := false;
  FreeAndNil(qVerifica);
End;
Function TDM.Verifica_Universal_UroCopro(RecID : String):Boolean;
Var qVerifica  : TAdoQuery;
begin
  qVerifica := DM.NewQuery;
  With qVerifica, sql do
  begin
      Close;
      SQL.Text := ' Select Top 1 * from PtEntradaPacienteDetalle '+
                  ' Where Refrecid='+RecID+' And (Descripcion like ('+#39+'%COPROL%'+#39+') Or '+
                  ' Descripcion like ('+#39+'%UROAN%'+#39+')) And Refrecid in (Select recid from PtentradaPaciente '+
                  ' Where Clienteid IN ('+#39+'C00118'+#39+','+#39+'C00389'+#39+','+#39+'C01229'+#39+','+#39+'C01606'+#39+'))';
      Open;
  End;
  if (qVerifica.RecordCount > 0) then
   result := True
  else
   result := false;
  FreeAndNil(qVerifica);
End;
Function TDM.Verifica_Envase_Unifix_CoprolArs(RecID : String):Boolean;
Var qVerifica  : TAdoQuery;
begin
  qVerifica := DM.NewQuery;
  With qVerifica, sql do
  begin
      Close;
      SQL.Text := ' Select  * from PtEntradaPacienteDetalle '+
                  ' Where RefRecID='+RecID+' And (Descripcion like ('+#39+'%UNIFIX%'+#39+') Or '+
                  ' Descripcion like ('+#39+'%COPROL%'+#39+')) And Refrecid in (Select recid from PtentradaPaciente Where Origen='+#39+'01'+#39+')';
      Open;
  End;
  if (qVerifica.RecordCount > 1) then
    result := True
  else
    result := false;
  FreeAndNil(qVerifica);
End;
Function TDM.TotalDetallePrueba(Refrecid : String):System.Extended;
Var qDetalle  : TAdoQuery;
begin
  qDetalle := DM.NewQuery;
  With qDetalle, sql do
  begin
      Close;
      SQL.Text := ' Select isnull(Sum(TotalLinea),0) as TotalDetalle from PtEntradaPacienteDetalle (nolock) '+
                  ' Where refrecid='+Refrecid;
      Open;
      if (RecordCount > 0) then
          Result := Fieldbyname('TotalDetalle').AsFloat
      else
          Result := 0;
  end;
  FreeAndNil(qDetalle);
End;

Function TDM.Verifica_Cliente_Inv_Ameba(ClienteID : String;RecId : String;Tipo : String): String;
Var qClienteC,qClienteC2  : TAdoQuery;
    Codigo     : String;
    Codigo_Sel : String;
    Descripcion_Sel : String;
begin
  qClienteC := DM.NewQuery;
  With qClienteC, sql do
  begin
      Close;
      if Tipo='IA' then
      begin
          SQL.Text := ' Select PruebaID_Seleccion,e.PruebaID,p.Descripcion from PtEnvasePrueba e (nolock) inner join ptPrueba p (nolock) on e.PruebaID_Seleccion=p.PruebaID '+
                      ' Where e.ClienteID='+#39+ClienteID+#39+' And e.Estatus='+#39+'A'+#39+
                      ' And e.Tipo='+#39+Tipo+#39+' And e.PruebaID In (Select pruebaid from PtEntradaPacienteDetalle Where REFRECID='+#39+RecID+#39+')';
      end;
      Open;
      if (RecordCount > 0) then
      begin
        qClienteC.First;
        While Not qClienteC.Eof do
        Begin
          Codigo     := qClienteC.Fieldbyname('PruebaID').AsString;
          Codigo_Sel := qClienteC.Fieldbyname('PruebaID_Seleccion').AsString;
          Descripcion_Sel := qClienteC.Fieldbyname('Descripcion').AsString;
          qClienteC2 := DM.NewQuery;
          With qClienteC2, sql do
          begin
            Close;
            SQL.Text := ' Select  * from PtEntradaPacienteDetalle (Nolock) '+
                        ' Where PruebaID in ('+#39+Codigo+#39+','+#39+Codigo_Sel+#39+')'+
                        ' and refrecId='+#39+RecId+#39;

            Open;
            if (RecordCount > 1) then
                Result := EmptyStr
            else
            begin
                Result := Codigo_Sel+' - '+Descripcion_Sel;
                FreeAndNil(qClienteC);
                FreeAndNil(qClienteC2);
                exit;
            end;
            qClienteC.Next;
          end;
        End
      end
      else
          Result := EmptyStr;
  end;
  FreeAndNil(qClienteC);
  FreeAndNil(qClienteC2);
end;
Function TDM.Verifica_Cliente_Coprologico(ClienteID : String;PruebaID : String;RecId : String;Tipo : String;SucID : String; Cliente2 : String): String;
Var qClienteC,qExcluye  : TAdoQuery;
    Codigo     : String;
begin
  qClienteC := DM.NewQuery;
  With qClienteC, sql do
  begin
      Close;
      if Tipo='IA' then
      begin
          qExcluye := DM.NewQuery;
          qExcluye.SQL.Text := ' Select Top 1 PruebaID_Seleccion from PtEnvasePrueba (nolock) '+
                      ' Where GrupoID='+#39+'999'+#39;
          qExcluye.Open;

          qClienteC.SQL.Text := ' Select Top 1 PruebaID_Seleccion from PtEnvasePrueba (nolock) '+
                      ' Where ClienteID='+#39+ClienteID+#39+' And Estatus='+#39+'A'+#39+
                      ' And PruebaID='+#39+PruebaID+#39+' And Tipo='+#39+Tipo+#39;
      end
      Else If Tipo='CO' then
      begin
          qExcluye := DM.NewQuery;
          With qExcluye, sql do
          begin
            SQL.Text := '  Select  c.ClienteID from PtEnvasePrueba e (Nolock) inner join PtExclusion_EnvaseCop c (Nolock) on '+
                        '  e.Suc_Excluye=c.SucursalID '+
                        '  Where GrupoID='+#39+ClienteID+#39+' And e.Estatus='+#39+'A'+#39+
                        '  And PruebaID='+#39+PruebaID+#39+' And Tipo='+#39+Tipo+#39+' AND Suc_Excluye='+#39+SucID+#39+
                        '  And c.ClienteID='+#39+Cliente2+#39;
            Open;
          end;
          if (qExcluye.RecordCount = 0) then
          begin
            qClienteC.SQL.Text := ' Select Top 1 PruebaID_Seleccion from PtEnvasePrueba (nolock) '+
                      ' Where GrupoID='+#39+ClienteID+#39+' And Estatus='+#39+'A'+#39+
                      ' And PruebaID='+#39+PruebaID+#39+' And Tipo='+#39+Tipo+#39;
          end;
      end;
      if (qExcluye.RecordCount = 0) then
      begin
        qClienteC.Open;
        if (qClienteC.RecordCount > 0) then
        begin
            Codigo := Fieldbyname('PruebaID_Seleccion').AsString;
            Close;
            SQL.Text := ' Select Top 1 * from PtEntradaPacienteDetalle (Nolock) '+
                        ' Where PruebaID in ('+#39+PruebaID+#39+')'+
                        ' and refrecId='+#39+RecId+#39;

            Open;
            if (RecordCount > 0) then
                Result := EmptyStr
            else
                Result := Codigo;
            end
        else
            Result := EmptyStr;
      end
      else
         Result := EmptyStr;
  end;
  FreeAndNil(qClienteC);
  FreeAndNil(qExcluye);
end;

Function TDM.Verifica_Pagos_Usuario_FueraLinea(_fecha: TDate): Boolean;
var
 qfind : TADOQuery;

begin
   qfind := DM.NewQuery;
   result := False;
   qfind.Close;
   qfind.SQL.Text := ' SELECT COUNT(D.FORMADEPAGOID) AS TOTAL FROM PTCOBRO C (nolock) INNER JOIN PTCOBRODETALLE D (nolock) '+
                     ' ON C.COBROID=D.COBROID WHERE C.FECHA < '+#39+FormatDateTime('yyyymmdd',_fecha)+#39+
                     ' AND C.USUARIOID= :usr '+
                     ' AND C.TIPODOC='+#39+'RI'+#39+
                     ' AND ISNULL(C.CUADREGLOBAL,'+#39+#39+')='+#39+#39;
   qfind.Parameters.ParamByName('usr').Value := dm.CurUser;
   qfind.Open;
   If (qfind.Fieldbyname('Total').AsInteger > 0) Then
   begin
     qfind.First;
     result := True;
   end
   else
     result := False;
   FreeAndNil(qfind);
end;
Function TDM.Verifica_Pagos_Sucursal_FueraLinea(_fecha: TDate): Boolean;
var
 qfind : TADOQuery;

begin
   qfind := DM.NewQuery;
   result := False;
   qfind.Close;
   qfind.SQL.Text := ' SELECT COUNT(D.FORMADEPAGOID) AS TOTAL FROM PTCOBRO C (nolock) INNER JOIN PTCOBRODETALLE D (nolock) '+
                     ' ON C.COBROID=D.COBROID WHERE C.FECHA < '+#39+FormatDateTime('yyyymmdd',_fecha)+#39+
                     ' AND C.SUCURSALID='+#39+DM.CurSucursal+#39+
                     ' AND C.TIPODOC='+#39+'RI'+#39+
                     ' AND ISNULL(C.CUADREGLOBAL,'+#39+#39+')='+#39+#39+
                     ' AND C.FUERA_LINEA = 1';
   qfind.Open;
   If (qfind.Fieldbyname('Total').AsInteger > 0) Then
   begin
     qfind.First;
     result := True;
   end
   else
     result := False;
   FreeAndNil(qfind);
end;
Function TDM.Busca_Servidor_Fuera_Linea: String;
var
 qfind : TADOQuery;

begin
   qfind := DM.NewQuery;
   result := EmptyStr;
   qfind.Close;
   qfind.SQL.Text := ' Select Servidor from ULTIMA_SINCRONIA '+
                     ' Where Sucursalid='+#39+dm.CurSucursal+#39;
   qfind.Open;
   If (qfind.Fieldbyname('Servidor').AsString <> EmptyStr) Then
   begin
     result := qfind.Fieldbyname('Servidor').AsString;
   end;
   FreeAndNil(qfind);
end;

Function TDM.Verifica_Filtro_UnoDos(_Sucursal: String): Boolean;
var
 qfind : TADOQuery;

begin
   qfind := DM.NewQuery;
   result := False;
   qfind.Close;
   qfind.SQL.Text := ' select Sucursal from ptsucursal where MONTO_PORC > 0 '+
                     'and Monto_Porc_1 > 0  And SUCURSALID='+#39+_Sucursal+#39;
   qfind.Open;
   If (qfind.Fieldbyname('Sucursal').AsInteger > 0) Then
   begin
     qfind.First;
     result := True;
   end
   else
     result := False;
   FreeAndNil(qfind);
end;
Function TDM.Verifica_Pago_Filtro(_Recid: String): Boolean;
var
 qfind : TADOQuery;

begin
   qfind := DM.NewQuery;
   result := False;
   qfind.Close;
   qfind.SQL.Text := ' Select Sinprfilter from Ptcobro where '+
                     ' refrecid='+#39+_Recid+#39+
                     ' and TipoDoc='+#39+'RI'+#39;
   qfind.Open;
   If (qfind.Fieldbyname('SinprFilter').AsInteger > 0) Then
   begin
     qfind.First;
     result := True;
   end
   else
     result := False;
   FreeAndNil(qfind);
end;
Function TDM.VerificaPruebaAntiHiv(Recid: String): Boolean;
var
 qfind : TADOQuery;

begin
   qfind := DM.NewQuery;
   result := False;
   qfind.Close;
   qfind.SQL.Text := ' Select PruebaId from PtentradaPacienteDetalle where '+
                     ' refrecid='+#39+Recid+#39+' and PruebaId='+#39+'SER00049'+#39;
   qfind.Open;
   If (Length(qfind.Fieldbyname('PruebaId').AsString) > 0) Then
   begin
     qfind.First;
     result := True;
   end
   else
     result := False;
   FreeAndNil(qfind);
end;

END.
