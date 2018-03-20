unit DataModule_Raul;

interface

uses
  ImgList, Controls, Graphics,
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
  ppProd, ppReport, ppStrtch, ppSubRpt, ppVar;



type
  TDM_Raul = class(TDataModule)
    DataBase: TADOConnection;
    Letras: TLetras;
    cxEditRepository: TcxEditRepository;
    cxTextEdit: TcxEditRepositoryTextItem;
    cxIntEdit: TcxEditRepositorySpinItem;
    cxCalcEdit: TcxEditRepositoryCalcItem;
    cxDateEdit: TcxEditRepositoryDateItem;
    cxComboBoxEdit: TcxEditRepositoryComboBoxItem;
    cxCheckBoxEdit: TcxEditRepositoryImageComboBoxItem;
    cxViewRepository: TcxGridViewRepository;
    cxPostadoSiNoAmbos: TcxEditRepositoryImageComboBoxItem;
    cxIcTodoGrupoTabla: TcxEditRepositoryImageComboBoxItem;
    cxIcIvDimField: TcxEditRepositoryImageComboBoxItem;
    memVoucher: TJvMemoryData;
    icTodoTabla: TcxEditRepositoryImageComboBoxItem;
    cxDateMaskEdit: TcxEditRepositoryMaskItem;
    SupportInfo: TJvStrHolder;
    cxSvProgressBar: TcxEditRepositoryProgressBar;
    cxLcProcesos: TcxEditRepositoryLookupComboBoxItem;
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
    vwGrupoCliente: TcxGridDBTableView;
    elcGrupoCliente: TcxEditRepositoryExtLookupComboBoxItem;
    vwGrupoClienteGrupoCliente: TcxGridDBColumn;
    vwGrupoClienteDescripcion: TcxGridDBColumn;
    vwClientes: TcxGridDBTableView;
    vwClientesClienteID: TcxGridDBColumn;
    vwClientesNombre: TcxGridDBColumn;
    vwClientesGrupoCliente: TcxGridDBColumn;
    elcClientes: TcxEditRepositoryExtLookupComboBoxItem;
    vwPacientes: TcxGridDBTableView;
    elcPacientes: TcxEditRepositoryExtLookupComboBoxItem;
    vwGrupoPrueba: TcxGridDBTableView;
    vwGrupoPruebaGrupoPruebaID: TcxGridDBColumn;
    vwGrupoPruebaDescripcion: TcxGridDBColumn;
    elcGrupoPrueba: TcxEditRepositoryExtLookupComboBoxItem;
    lcMonedas: TcxEditRepositoryLookupComboBoxItem;
    vwPruebas: TcxGridDBTableView;
    vwPruebasPruebaID: TcxGridDBColumn;
    vwPruebasDescripcion: TcxGridDBColumn;
    elcPruebas: TcxEditRepositoryExtLookupComboBoxItem;
    icTipoCliente: TcxEditRepositoryImageComboBoxItem;
    vwCiudad: TcxGridDBTableView;
    vwCiudadCiudadID: TcxGridDBColumn;
    vwCiudadDescripcion: TcxGridDBColumn;
    elcCiudad: TcxEditRepositoryExtLookupComboBoxItem;
    vwEspecialidad: TcxGridDBTableView;
    vwEspecialidadEspecialidadID: TcxGridDBColumn;
    vwEspecialidadDescripcion: TcxGridDBColumn;
    elcEspecialidad: TcxEditRepositoryExtLookupComboBoxItem;
    vwPacientesClienteID: TcxGridDBColumn;
    vwPacientesNombre: TcxGridDBColumn;
    vwPacientesTelefono: TcxGridDBColumn;
    vwSeguros: TcxGridDBTableView;
    vwSegurosClienteID: TcxGridDBColumn;
    vwSegurosNombre: TcxGridDBColumn;
    elcSeguro: TcxEditRepositoryExtLookupComboBoxItem;
    vwGastosVarios: TcxGridDBTableView;
    vwGastosVariosGastoVarioId: TcxGridDBColumn;
    vwGastosVariosDescripcion: TcxGridDBColumn;
    elcGastosVarios: TcxEditRepositoryExtLookupComboBoxItem;
    qrPruebas: TADOQuery;
    dsPruebas: TDataSource;    
    qrPruebasPruebaID: TStringField;
    qrPruebasAlias: TStringField;
    qrPruebasDescripcion: TStringField;
    qrPruebasEstatus: TIntegerField;
    qrPruebasGrupoPruebaID: TStringField;
    qrPruebasDepartamento: TStringField;
    qrPruebasPrecio: TBCDField;
    qrPruebasPermiteCambioPrecio: TBooleanField;
    qrPruebasCodigoAxapta: TStringField;
    qrPruebasPrecioDolares: TBCDField;
    qrPruebasCosto: TBCDField;
    qrPruebasExterior: TBooleanField;
    qrPruebasFacturarCabecera: TBooleanField;
    qrPruebasPruebas: TIntegerField;
    qrPruebasTipo: TStringField;
    qrDiasProcesamiento: TADOQuery;
    dsDiasProcesamiento: TDataSource;
    qrDiasProcesamientoCodDiasProc: TStringField;
    qrDiasProcesamientoDescripcion: TStringField;
    qrDiasProcesamientoLunes: TBooleanField;
    qrDiasProcesamientoMartes: TBooleanField;
    qrDiasProcesamientoMiercoles: TBooleanField;
    qrDiasProcesamientoJueves: TBooleanField;
    qrDiasProcesamientoViernes: TBooleanField;
    qrDiasProcesamientoSabado: TBooleanField;
    qrDiasProcesamientoDomingo: TBooleanField;
    qrUnidades: TADOQuery;
    dsUnidades: TDataSource;
    qrUnidadesUnidad: TStringField;
    qrUnidadesDescripcion: TStringField;
    vwDiasProcesamiento: TcxGridDBTableView;
    vwDiasProcesamientoCodDiasProc: TcxGridDBColumn;
    vwDiasProcesamientoDescripcion: TcxGridDBColumn;
    vwUnidades: TcxGridDBTableView;
    vwUnidadesUnidad: TcxGridDBColumn;
    vwUnidadesDescripcion: TcxGridDBColumn;
    elcUnidades: TcxEditRepositoryExtLookupComboBoxItem;
    elcDiasProcesamiento: TcxEditRepositoryExtLookupComboBoxItem;
    qrMateriales: TADOQuery;
    dsMateriales: TDataSource;
    qrMaterialesMaterialId: TStringField;
    qrMaterialesDescripcion: TStringField;
    vwMateriales: TcxGridDBTableView;
    vwMaterialesMaterialId: TcxGridDBColumn;
    vwMaterialesDescripcion: TcxGridDBColumn;
    elcMateriales: TcxEditRepositoryExtLookupComboBoxItem;
    qrDepartamentos: TADOQuery;
    dsDepartamentos: TDataSource;
    vwDepartamento: TcxGridDBTableView;
    qrDepartamentosDepid: TStringField;
    qrDepartamentosDescripcion: TStringField;
    vwDepartamentoDepid: TcxGridDBColumn;
    vwDepartamentoDescripcion: TcxGridDBColumn;
    elcDepartamento: TcxEditRepositoryExtLookupComboBoxItem;

  private
    { Private declarations }
  published

  public
end;

var
  DM_Raul: TDM_Raul;

implementation

uses StrUtils, Dialogs, JclStrings, Main, Math, madExcept, DateUtils,
  ReportsDM, Splash, ActionsDM, DialogDbSetup, ApplDbChangeSettings;

{$R *.dfm}

{ TDM }


end.
