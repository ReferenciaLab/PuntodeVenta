unit DatosBanco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomModule, Menus, StdActns, ActnList, JvComponentBase,
  JvFormPlacement, ExtCtrls, JvExControls, JvComponent, JvEnterTab, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, dxLayoutControl, cxGrid,
  ADODB, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxLookAndFeelPainters, StdCtrls, cxButtons, cxPC, cxDBEdit, cxCheckBox,
  cxLabel, cxMemo, cxSpinEdit, cxTimeEdit, cxGroupBox, cxBlobEdit, ppComm,
  ppRelatv, ppDB, ppDBPipe, DBCtrls;

type
  TfrmBanco = class(TfrmCustomModule)
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup3: TdxLayoutGroup;
    qrDonaciones: TADOQuery;
    dsDatos: TDataSource;
    dxLayoutControl1Item1: TdxLayoutItem;
    dgDatos: TcxGrid;
    tvDatos: TcxGridDBTableView;
    lvDatos: TcxGridLevel;
    tvDatosDonacionID: TcxGridDBColumn;
    tvDatosFecha: TcxGridDBColumn;
    tvDatosNombre: TcxGridDBColumn;
    tvDatosTelefono: TcxGridDBColumn;
    tvDatosDonacionStatus: TcxGridDBColumn;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dsPaciente: TDataSource;
    dsDonacion: TDataSource;
    dxLayoutControl1Group1: TdxLayoutGroup;
    cxPageControl1: TcxPageControl;
    dxLayoutControl1Item3: TdxLayoutItem;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    dxLayoutControl1Item10: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    cxTabSheet4: TcxTabSheet;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBComboBox2: TcxDBComboBox;
    cxTabSheet5: TcxTabSheet;
    cxTabSheet6: TcxTabSheet;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel1: TcxLabel;
    cxDBTextEdit9: TcxDBTextEdit;
    dsDonante: TDataSource;
    cxDBMemo1: TcxDBMemo;
    qrPaciente: TADOQuery;
    qrDonacion: TADOQuery;
    qrDonante: TADOQuery;
    qrDonacionDonacionID: TStringField;
    qrDonacionFecha: TDateTimeField;
    qrDonacionPacienteID: TStringField;
    qrDonacionNotaEntrevista: TMemoField;
    qrDonacionDonacionStatus: TWideStringField;
    qrDonacionDonacionEstado: TStringField;
    qrDonacionDonacionTipo: TStringField;
    qrDonacionComentario: TMemoField;
    qrDonacionCantidadRecogida: TBCDField;
    qrDonacionTemperatura: TBCDField;
    qrDonacionPeso: TBCDField;
    qrDonacionPulsoMinimo: TBCDField;
    qrDonacionPulsoEstado: TStringField;
    qrDonacionTensionArteriar: TStringField;
    dxLayoutControl1Item12: TdxLayoutItem;
    cxDBComboBox4: TcxDBComboBox;
    cxLabel9: TcxLabel;
    cxDBMemo2: TcxDBMemo;
    qrDonantePacienteID: TStringField;
    qrDonanteTipoDonante: TWideStringField;
    qrDonanteEstado: TWideStringField;
    qrDonanteRechaso: TWideStringField;
    qrDonanteRechasoNota: TWideStringField;
    qrDonanteDonanteActivo: TBooleanField;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBComboBox1: TcxDBComboBox;
    cxLabel10: TcxLabel;
    cxDBTimeEdit1: TcxDBTimeEdit;
    cxDBTimeEdit2: TcxDBTimeEdit;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    qrDonacionHoraInicio: TDateTimeField;
    qrDonacionHoraFin: TDateTimeField;
    cxButton8: TcxButton;
    cxButton9: TcxButton;
    cxLabel13: TcxLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    qrDonacionDirigidoNombre: TStringField;
    qrDonacionHospital: TStringField;
    qrDonacionFechaTranfusion: TDateTimeField;
    qrDonacionMedico: TStringField;
    qrDonacionTelefono: TStringField;
    qrDonacionTelefono2: TStringField;
    qrDonacionDireccionMedico: TMemoField;
    Panel1: TPanel;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBTextEdit11: TcxDBTextEdit;
    cxDBTextEdit12: TcxDBTextEdit;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    cxButton3: TcxButton;
    cxDBDateEdit1: TcxDBDateEdit;
    cxLabel17: TcxLabel;
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
    qrEntradaPacienteDescuentoPorc: TBCDField;
    qrEntradaPacienteDescuentoValor: TBCDField;
    qrEntradaPacienteAprobadoPor: TStringField;
    qrEntradaPacienteMuestraNo: TStringField;
    qrEntradaPacienteAprobacionNo: TStringField;
    qrEntradaPacienteMonedaID: TStringField;
    qrEntradaPacienteFechaEntrada: TDateTimeField;
    qrEntradaPacienteCoberturaExpPorc: TBooleanField;
    qrEntradaPacienteEdadPaciente: TBCDField;
    qrEntradaPacienteNombreDoctor: TStringField;
    qrEntradaPacientePublicarInternet: TBooleanField;
    qrEntradaPacienteOrigen: TStringField;
    qrEntradaPacienteCarnet: TStringField;
    qrEntradaPacientePublicarInternetDoctor: TBooleanField;
    qrEntradaPacienteCuadreGlobal: TStringField;
    qrEntradaPacienteCuadreUsuario: TStringField;
    qrEntradaPacienteDescAutorizadoPor: TStringField;
    qrEntradaPacienteGastosVarios: TBCDField;
    qrEntradaPacienteNoAS400: TBooleanField;
    qrEntradaPacienteNoAxapta: TBooleanField;
    qrEntradaPacienteNoFactura: TBooleanField;
    qrEntradaPacienteFactExterior: TBooleanField;
    qrEntradaPacienteHold: TBooleanField;
    qrEntradaPacienteRepMuestra: TBooleanField;
    qrEntradaPacienteEntradaIdAnt: TStringField;
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
    qrEntradaPacienteDetalleCoberturaAplica: TBooleanField;
    qrEntradaPacienteDetalleCoberturaEspecial: TBCDField;
    qrEntradaPacienteDetalleCoberturaEspecialPorc: TBCDField;
    qrEntradaPacienteDetalleCoberturaAplicada: TBCDField;
    qrEntradaPacienteDetalleDescuentoLineaAplicado: TBCDField;
    qrEntradaPacienteDetalleMuestraNo: TStringField;
    qrEntradaPacienteDetalleComentario: TMemoField;
    qrEntradaPacienteDetalleCoberturaExpPorc: TBooleanField;
    qrEntradaPacienteDetalleRepMuestra: TBooleanField;
    qrEntradaPacienteDetalleMuestraAnt: TStringField;
    dsEntradaPacienteDetalle: TDataSource;
    dsEntradaPaciente: TDataSource;
    ppEntradaPaciente: TppDBPipeline;
    ppEntradaPacienteDetalle: TppDBPipeline;
    GridPruebas: TcxGrid;
    GridPruebasEntradasPacienteDet: TcxGridDBTableView;
    GridPruebasEntradasPacienteDetPruebaID: TcxGridDBColumn;
    GridPruebasEntradasPacienteDetDescripcion: TcxGridDBColumn;
    GridPruebasEntradasPacienteDetMuestraNo: TcxGridDBColumn;
    GridPruebasEntradasPacienteDetComentario: TcxGridDBColumn;
    GridPruebasLevel1: TcxGridLevel;
    cxButton4: TcxButton;
    Action1: TAction;
    dsPruebas: TDataSource;
    qrPruebas: TADOQuery;
    qrDonacionesDonacionID: TStringField;
    qrDonacionesFecha: TDateTimeField;
    qrDonacionesPacienteID: TStringField;
    qrDonacionesIdentificacion: TStringField;
    qrDonacionesNombre: TStringField;
    qrDonacionesDireccion: TMemoField;
    qrDonacionesTelefono: TStringField;
    qrDonacionesemail: TStringField;
    qrDonacionesFechaNacimiento: TDateTimeField;
    qrDonacionesSexo: TIntegerField;
    qrDonacionesCiudadID: TStringField;
    qrDonacionesNotaEntrevista: TMemoField;
    qrDonacionesDonacionStatus: TWideStringField;
    qrPacienteClienteID: TStringField;
    qrPacienteNombre: TStringField;
    qrPacienteContacto: TStringField;
    qrPacienteTelefono: TStringField;
    qrPacienteFax: TStringField;
    qrPacienteGrupoCliente: TStringField;
    qrPacienteIncluirPrecioTicket: TBooleanField;
    qrPacienteAutoConfirmar: TBooleanField;
    qrPacienteEmpleadoID: TStringField;
    qrPacienteCodigoAxapta: TStringField;
    qrPacienteemail: TStringField;
    qrPacientedireccionweb: TStringField;
    qrPacienteTelefono2: TStringField;
    qrPacienteMonedaID: TStringField;
    qrPacienteIdentificacion: TStringField;
    qrPacienteOrigen: TIntegerField;
    qrPacienteDireccion: TMemoField;
    qrPacienteCiudadID: TStringField;
    qrPacientePruebasPorDia: TSmallintField;
    qrPacienteCoberturaPorc: TBCDField;
    qrPacientePrincipal: TStringField;
    qrPacienteEnvioResultado: TIntegerField;
    qrPacientePublicarInternet: TBooleanField;
    qrPacienteSexo: TIntegerField;
    qrPacienteFechaNacimiento: TDateTimeField;
    qrPacienteSeguro: TStringField;
    qrPacientePoliza: TStringField;
    qrPacienteCobrarDiferencia: TBooleanField;
    qrPacienteEnviarFax: TBooleanField;
    qrPacienteActivarDescuentos: TBooleanField;
    qrPacienteUsarAliasNombre: TBooleanField;
    qrPacienteUsarAliasPrueba: TBooleanField;
    qrPacienteSiempreInternet: TBooleanField;
    qrPacienteImprimirAliasNombre: TBooleanField;
    qrPacienteImprimirAliasPrueba: TBooleanField;
    qrPacienteImprimirSoloTotales: TBooleanField;
    qrPacienteImprimirAliasResultados: TBooleanField;
    qrPacienteAlias: TStringField;
    qrPacienteQuienPaga: TStringField;
    qrPacienteTipoCliente: TStringField;
    qrPacienteEntregarResultados: TStringField;
    qrPacienteTextoReferencia: TStringField;
    qrPacienteSiempreImprimir: TBooleanField;
    qrPacienteTipoSangre: TStringField;
    qrPacientePacienteCiaId: TStringField;
    cxDBTextEdit13: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    qrPruebasPruebaID: TStringField;
    qrPruebasalias: TStringField;
    qrPruebasDescripcion: TStringField;
    qrDonacionPagina: TSmallintField;
    qrTipoDonacion: TADOQuery;
    dsTipoDonacion: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    qrTipoDonacionTipoFundaID: TWideStringField;
    qrTipoDonacionTipoFundaDes: TWideStringField;
    qrTipoDonacionDias: TIntegerField;
    qrDonacionTipoFundaID: TWideStringField;
    cxTabSheet2: TcxTabSheet;
    cxLabel18: TcxLabel;
    cxLabel19: TcxLabel;
    cxLabel20: TcxLabel;
    cxDBTextEdit14: TcxDBTextEdit;
    cxDBTextEdit15: TcxDBTextEdit;
    cxDBTextEdit16: TcxDBTextEdit;
    cxLabel21: TcxLabel;
    cxDBTextEdit17: TcxDBTextEdit;
    qrHemogramas: TADOQuery;
    dsHemogramas: TDataSource;
    qrHemogramasMuestraNo: TStringField;
    qrHemogramasHemoglobina: TStringField;
    qrHemogramasHematocito: TStringField;
    qrHemogramasGlobulosBlancos: TStringField;
    qrHemogramasPlaquetas: TStringField;
    procedure Action1Execute(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxDBComboBox2Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure dsDatosDataChange(Sender: TObject; Field: TField);
    procedure cxComboBox1PropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBanco: TfrmBanco;

implementation
uses DataModule, DialogoTipoDonacion, DialogoEntrevista;
{$R *.dfm}

procedure TfrmBanco.Action1Execute(Sender: TObject);
var Secuencia: Int64;
begin
  inherited;

  Secuencia:= 0;
  qrPruebas.Open;
  while not dsPruebas.DataSet.Eof do
    begin
      dsEntradaPacienteDetalle.DataSet.Insert;
        qrEntradaPacienteDetalleRefRecid.Value:= qrEntradaPacienteRecid.Value;
        Secuencia:= Secuencia + 1;
        qrEntradaPacienteDetalleSecuencia.Value:= Secuencia;
        qrEntradaPacienteDetalleMuestraNo.Value:= qrEntradaPacienteMuestraNo.Value;
        qrEntradaPacienteDetallePruebaID.Value:= qrPruebasPruebaID.Value;
        qrEntradaPacienteDetalleDescripcion.Value:= qrPruebasDescripcion.Value;
      dsEntradaPacienteDetalle.DataSet.Post;
      dsPruebas.DataSet.Next;
    end;
    qrPruebas.Close;

    qrEntradaPacienteDetalle.Close;
    qrEntradaPacienteDetalle.Open;

end;

procedure TfrmBanco.cxButton1Click(Sender: TObject);
begin
  inherited;

  if not (dsDonacion.State in [dsinsert,dsedit]) then
    dsDonacion.DataSet.Edit;
    qrDonacionDonacionStatus.Value:= 'Pendiente';
        qrDonacionPagina.Value:= cxPageControl1.ActivePageIndex;
  dsDonacion.DataSet.Post;

  DM.qrDonaciones.Close;
  DM.qrDonaciones.Open;

end;

procedure TfrmBanco.cxButton2Click(Sender: TObject);
begin
  inherited;

  if not (dsDonacion.State in [dsinsert,dsedit]) then
    dsDonacion.DataSet.Edit;
    qrDonacionDonacionStatus.Value:= 'Rechasado';
        qrDonacionPagina.Value:= cxPageControl1.ActivePageIndex;
  dsDonacion.DataSet.Post;

  DM.qrDonaciones.Close;
  DM.qrDonaciones.Open;

end;

procedure TfrmBanco.cxButton3Click(Sender: TObject);
begin
  inherited;

  if dsDonante.State in [dsinsert,dsedit] then
    dsDonante.DataSet.Post;

  if not (dsDonacion.State in [dsinsert,dsedit]) then
    dsDonacion.DataSet.Edit;
    qrDonacionDonacionStatus.Value:= 'Muestra';
    qrDonacionPagina.Value:= cxPageControl1.ActivePageIndex + 1;
  dsDonacion.DataSet.Post;

//  DM.qrDonaciones.Close;
//  DM.qrDonaciones.Open;

  cxPageControl1.ActivePageIndex:= cxPageControl1.ActivePageIndex + 1;

end;

procedure TfrmBanco.cxButton8Click(Sender: TObject);
begin
  inherited;
  cxPageControl1.ActivePageIndex:= 2;
end;

procedure TfrmBanco.cxButton9Click(Sender: TObject);
begin
  inherited;

  if not (dsDonacion.State in [dsinsert,dsedit]) then
    dsDonacion.DataSet.Edit;
    qrDonacionDonacionStatus.Value:= 'Ok';
    qrDonacionPagina.Value:= cxPageControl1.ActivePageIndex + 1;
  dsDonacion.DataSet.Post;

//  if dsDonante.State in [dsinsert,dsedit] then
//    dsDonante.DataSet.Post;

  cxPageControl1.ActivePageIndex:= cxPageControl1.ActivePageIndex + 1;

end;

procedure TfrmBanco.cxComboBox1PropertiesChange(Sender: TObject);
begin
  inherited;

  DM.qrDonaciones.Close;
//  DM.qrDonaciones.Parameters.ParamByName('Estado').Value:= cxComboBox1.Text;
  DM.qrDonaciones.Open;

end;

procedure TfrmBanco.cxDBComboBox2Click(Sender: TObject);
begin
  inherited;

  Panel1.Visible:= cxDBComboBox2.Text = 'Directo';

end;

procedure TfrmBanco.dsDatosDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  qrDonacion.Close;
  qrDonacion.Parameters.ParamByName('DonacionID').Value:= DM.qrDonacionesDonacionID.AsString;
  qrDonacion.Open;

  qrDonante.Close;
  qrDonante.Parameters.ParamByName('PacienteID').Value:= DM.qrDonacionesPacienteID.AsString;
  qrDonante.Open;

  qrPaciente.Close;
  qrPaciente.Parameters.ParamByName('PacienteID').Value:= DM.qrDonacionesPacienteID.AsString;
  qrPaciente.Open;

  qrEntradaPaciente.Close;
  qrEntradaPaciente.parameters[0].Value := DM.qrDonacionesDonacionID.AsString;;
  qrEntradaPaciente.Open;

  qrHemogramas.Close;
  qrHemogramas.Parameters.ParamByName('MuestraNo').Value:= qrEntradaPacienteMuestraNo.AsString;
  qrHemogramas.Open;

  qrEntradaPacienteDetalle.Close;
  qrEntradaPacienteDetalle.parameters[0].Value := qrEntradaPacienteMuestraNo.Value;
  qrEntradaPacienteDetalle.Open;


  Panel1.Visible:= cxDBComboBox2.Text = 'Directo';
  cxPageControl1.ActivePageIndex:= qrDonacionPagina.Value;
end;

procedure TfrmBanco.FormCreate(Sender: TObject);
begin
  inherited;

  DM.qrDonaciones.Close;
  DM.qrDonaciones.Open;

  qrTipoDonacion.Close;
  qrTipoDonacion.Open;

  dsDonacion.Edit;

end;

end.
