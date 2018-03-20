unit DatosDonaciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DatosModule, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, Menus, cxLookAndFeelPainters, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, ABSMain, JvStringHolder, StdActns,
  ActnList, ADODB, cxGridCustomPopupMenu, cxGridPopupMenu, dxPSContainerLnk,
  dxPSdxLCLnk, dxPSCore, dxPScxCommon, dxPScxGridLnk, JvComponentBase,
  JvFormPlacement, ExtCtrls, dxLayoutControl, StdCtrls, cxButtons, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, JvExControls, JvComponent,
  JvEnterTab, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBExtLookupComboBox, cxContainer, cxTextEdit, cxDBEdit, cxDBLookupComboBox,
  cxImageComboBox, cxMemo, cxSpinEdit, cxCheckBox, cxCurrencyEdit, cxCalendar,
  ppDB, ppComm, ppRelatv, ppDBPipe, DBClient;

type
  TfrmDonaciones = class(TfrmDatosModule)
    qrDonaciones: TADOQuery;
    BtTransacciones: TcxButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    pmAcuerdoComercial: TPopupMenu;
    Precios1: TMenuItem;
    Descuentos1: TMenuItem;
    ActionList1: TActionList;
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
    dsEntradaPaciente: TDataSource;
    dsEntradaPacienteDetalle: TDataSource;
    ppEntradaPaciente: TppDBPipeline;
    ppEntradaPacienteDetalle: TppDBPipeline;
    dxLayoutControl2: TdxLayoutControl;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutGroup5: TdxLayoutGroup;
    qrDonacionesDonacionID: TStringField;
    qrDonacionesFecha: TDateTimeField;
    qrDonacionesPacienteID: TStringField;
    qrDonacionesNotaEntrevista: TMemoField;
    qrDonacionesDonacionStatus: TWideStringField;
    Paciente: TADOTable;
    PacientePacienteID: TStringField;
    PacientePacientePrincipalID: TStringField;
    PacienteTipoIdentificacion: TIntegerField;
    PacienteIdentificacion: TStringField;
    PacienteNombre: TStringField;
    PacienteDireccion: TMemoField;
    PacienteTelefono: TStringField;
    PacienteTelefono2: TStringField;
    PacienteFax: TStringField;
    PacienteeMail: TStringField;
    PacientePreferenciaResultado: TIntegerField;
    PacienteSeguroID: TStringField;
    PacientePolizaSeguro: TStringField;
    PacienteFechaNacimiento: TDateTimeField;
    PacienteSexo: TIntegerField;
    PacienteCodigoAxapta: TStringField;
    PacienteCiudadId: TStringField;
    PacientePublicarInternet: TBooleanField;
    dxLayoutControl2Group1: TdxLayoutGroup;
    tvDatosDonacionID: TcxGridDBColumn;
    tvDatosFecha: TcxGridDBColumn;
    tvDatosPacienteID: TcxGridDBColumn;
    tvDatosNotaEntrevista: TcxGridDBColumn;
    tvDatosDonacionStatus: TcxGridDBColumn;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxButton1: TcxButton;
    ClientDataSet1: TClientDataSet;
    dxLayoutControl2Group2: TdxLayoutGroup;
    procedure BtTarjetaClick(Sender: TObject);
    procedure BtParametroClick(Sender: TObject);
    procedure BtBalanceClick(Sender: TObject);
    procedure BtTransaccionesClick(Sender: TObject);
    procedure qrDonacionesNewRecord(DataSet: TDataSet);
    procedure qrDonacionesBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure DoPost; override;
    //function CanAdd: Boolean;
  public
    { Public declarations }
  end;

var
  frmDonaciones: TfrmDonaciones;

implementation

uses DataModule, Main;

{$R *.dfm}
{
function TfrmDonaciones.CanAdd: Boolean;
begin
  Result := False;
end;
 }
procedure TfrmDonaciones.BtTarjetaClick(Sender: TObject);
begin
  inherited;
//   frmMain.LanzaConsulta(-8005, qrClientesClienteId.Value);
end;

procedure TfrmDonaciones.BtTransaccionesClick(Sender: TObject);
begin
  inherited;
//  frmMain.LanzaVentana(-7999);
  qrDonacionesDonacionStatus.Value:= BtTransacciones.Caption;
end;

procedure TfrmDonaciones.BtBalanceClick(Sender: TObject);
begin
  inherited;
//  frmMain.LanzaConsulta(-7988,qrClientesClienteId.Value);
end;

procedure TfrmDonaciones.BtParametroClick(Sender: TObject);
begin
  inherited;
//  If (qrClientes.State = dsInsert) or (qrClientes.State = dsEdit) then
//    frmMain.LanzaVentana(-8006)
end;

procedure TfrmDonaciones.DoPost;
begin
{ DM.qrParametro.close;
 DM.qrParametro.open;

 if (DM.qrParametroGrupoClinica.Value <> qrClientesGrupoCLiente.Value) and
    (DM.qrParametroGrupoSeg.Value <> qrClientesGrupoCLiente.Value) and
    (DM.qrParametroGrupoLab.Value <> qrClientesGrupoCLiente.Value) then
    qrClientesFechaNacimiento.Required := True
 else
    qrClientesFechaNacimiento.Required := false;
}
 inherited;

end;

procedure TfrmDonaciones.FormCreate(Sender: TObject);
begin
  inherited;
  qrDonaciones.Close;
  qrDonaciones.Open;

  Paciente.Close;
  Paciente.Open;

  DM.qrGrupoCliente.Close;
  DM.qrGrupoCliente.Open;

  DM.qrParametro.close;
  DM.qrParametro.open;

  DM.qrMonedas.Close;
  DM.qrMonedas.Open;

  DM.qrCiudad.close;
  DM.qrCiudad.open;

  DM.qrPacientes.close;
  DM.qrPacientes.sql.Text := 'Select * from PTCliente Where GrupoCliente not in ('+#39+DM.qrParametroGrupoSeg.Value+
                              #39+','+#39+DM.qrParametroGrupoClinica.Value+#39+','+#39+DM.qrParametroGrupoLab.Value+#39+') ';
  DM.qrPacientes.Open;

  DM.qrSeguros.close;
  DM.qrSeguros.open;

  //EdPoliza.Properties.ReadOnly := True;
  //EdAseguradora.Properties.ReadOnly := True;
  //edcliente.Properties.ReadOnly := DM.qrParametroAutoNumerarClientes.Value;
end;

procedure TfrmDonaciones.qrDonacionesBeforePost(DataSet: TDataSet);
begin
  inherited;
   AutoKeyField := 'DonancionID';
{  If (qrClientes.State = dsInsert) Or
     (qrClientes.State = dsEdit) Then
    If (qrClientesClienteID.IsNull) Or
       (qrClientesClienteID.Value = '')Then
      AutoKeyField := 'ClienteID';

  DM.qrParametro.close;
  DM.qrParametro.open;

  if (qrClientes.State = dsInsert) and (DM.qrParametroAutoNumerarClientes.Value) then
  begin
   qrClientesClienteID.Value := formatfloat('00',strtofloat(DM.CurSucursal)) + '-' +
                                formatfloat('000000',DM.qrParametroSecuenciaCliente.asfloat);
   DM.qrParametro.edit;
   DM.qrParametroSecuenciaCliente.Value := DM.qrParametroSecuenciaCliente.Value + 1;
   DM.qrParametro.Post;
  end;}
end;

procedure TfrmDonaciones.qrDonacionesNewRecord(DataSet: TDataSet);
begin
  inherited;
{  qrClientesPruebasPorDia.Value := 0;
  qrClientesCoberturaPorc.value := 0;
  qrClientesEnvioResultado.value := 0;
  qrClientesSexo.Value := 0;

  qrClientesGrupoCliente.Value := '02';
  qrClientesTipoCliente.Value := 'PRI';
  qrClientesMonedaID.Value :=  DM.qrParametroMonedaID.Value;
  qrClientesQuienPaga.Value := 'EMP';
  qrClientesEntregarResultados.Value := 'EMP';
  qrClientesPublicarInternet.Value := false;
  qrClientesCobrarDiferencia.Value := True;
  qrClientesAutoconfirmar.value := False;
  qrClientesActivarDescuentos.Value := True;
  qrClientesSiempreInternet.Value := True;
  qrClientesSiempreImprimir.Value := True;
  qrClientesEnviarFax.Value := False;
  qrClientesIncluirPrecioTicket.Value := True;
  qrClientesImprimirAliasNombre.Value := False;
  qrClientesImprimirAliasPrueba.Value := False;
  qrClientesImprimirAliasResultados.Value := False;

  DM.qrParametro.close;
  DM.qrParametro.open;

  qrClientesClienteID.Value := formatfloat('00',strtofloat(DM.CurSucursal)) + '-' +
                               formatfloat('000000', DM.qrParametroSecuenciaCliente.asfloat);
}
end;

end.
