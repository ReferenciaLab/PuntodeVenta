unit UInterfaseAs400;

interface

uses
  SysUtils, Dialogs, Variants, Classes, DB, ADODB, ppDB, ppComm, ppRelatv, ppDBPipe;

type
  TInterfaseAS400 = class(TDataModule)
    ASConnection: TADOConnection;
    qrASDetalle: TADOQuery;
    qrASEncabezado: TADOQuery;
    qrSQLEncabezado: TADOQuery;
    qrSQLDetalle: TADOQuery;
    qrASInternet: TADOQuery;
    qrASResult: TADOQuery;
    qrNoReactivo: TADOQuery;
    qrASBuscaCedula: TADOQuery;
    qrASBuscaUsuario: TADOQuery;

    qrResult: TADOConnection;
    qrASResultL49MUE: TBCDField;
    qrASResultL49PRU: TIntegerField;
    qrASResultTANOCU: TStringField;
    qrASResultL49RES: TStringField;

    qrSQLEncabezadoMuestra: TStringField;
    qrSQLEncabezadoMuestraNo: TStringField;
    qrSQLEncabezadoHora: TStringField;
    qrSQLEncabezadoDireccion: TStringField;
    qrSQLEncabezadoDireccionFija: TStringField;
    qrSQLEncabezadoEdadPaciente: TIntegerField;
    qrSQLEncabezadoEdadCalculada: TIntegerField;
    qrSQLEncabezadoFechaNacimiento: TDateTimeField;
    qrSQLEncabezadoFechaNacimientoTexto: TStringField;
    qrSQLEncabezadoTelefono: TStringField;
    qrSQLEncabezadoCategoriaClienteNombre: TStringField;
    qrSQLEncabezadoFechaEntrada: TDateTimeField;
    qrSQLEncabezadoFechaEntradaTexto: TStringField;
    qrSQLEncabezadoUserId: TStringField;
    qrSQLEncabezadoSexo: TIntegerField;
    qrSQLEncabezadoCedula: TStringField;
    qrSQLEncabezadoSucursal: TIntegerField;
    qrSQLEncabezadoSucursalId: TStringField;
    qrSQLEncabezadoDoctorId: TStringField;
    qrSQLEncabezadoDoctorNombre: TStringField;
    qrSQLEncabezadoClienteId: TStringField;
    qrSQLEncabezadoFacturado: TBCDField;
    qrSQLEncabezadoPagado: TBCDField;
    qrSQLEncabezadoResto: TBCDField;
    qrSQLEncabezadoTipResPaciente: TIntegerField;
    qrSQLEncabezadoInternet: TIntegerField;
    qrSQLEncabezadoTipResDoctor: TIntegerField;
    qrSQLEncabezadoInternetDoctor: TIntegerField;
    qrSQLEncabezadoTipResCliente: TIntegerField;
    qrSQLEncabezadoInternetCliente: TIntegerField;
    qrSQLEncabezadoComentario: TStringField;
    qrSQLEncabezadoEnClinica: TIntegerField;
    qrSQLEncabezadoNumeroInternet: TIntegerField;
    qrSQLEncabezadoReferenciaExterna: TStringField;
    qrSQLEncabezadoNeto: TBCDField;
    qrSQLEncabezadoDescuentoPorc: TBCDField;
    qrSQLEncabezadoCoberturaPorc: TBCDField;
    qrSQLEncabezadoCoberturaSeguro: TBCDField;
    qrSQLEncabezadoRestoOld: TBCDField;
    qrSQLEncabezadoRecId: TIntegerField;
    qrSQLEncabezadoNombrePacienteFijo: TStringField;
    qrSQLEncabezadoCodigoAS400: TStringField;
    qrSQLEncabezadoNombrePaciente: TStringField;
    qrSQLEncabezadoGastoEnvio: TBCDField;
    qrSQLEncabezadoMoneda: TStringField;
    qrSQLEncabezadoTasa: TBCDField;

    qrSQLDetalleMuestra: TStringField;
    qrSQLDetalleMuestraNo: TStringField;
    qrSQLDetallePruebaId: TStringField;
    qrSQLDetalleCodigoAS400: TStringField;
    qrSQLDetalleNombrePrueba: TStringField;
    qrSQLDetalleStatusPrueba: TStringField;
    qrSQLDetalleDepartamento: TStringField;
    qrSQLDetalleDeptoId: TStringField;
    qrSQLDetalleFechaEntrada: TDateTimeField;
    qrSQLDetalleFechaEntradaTexto: TStringField;
    qrSQLDetalleHora: TStringField;
    qrSQLDetalleUserId: TStringField;
    qrSQLDetalleComentarioMuestra: TStringField;
    qrSQLDetallePeticion2RepMuestra: TIntegerField;
    qrSQLDetalleNumeroMuestraAnterior: TStringField;
    qrSQLDetalleTipoPrueba: TStringField;
    qrSQLDetalleTipoAS400: TStringField;
    qrSQLDetalleTipoMuestra: TStringField;
    qrSQLDetalleValor: TBCDField;
    qrSQLDetallePrecioBruto: TBCDField;
    qrSQLDetalleValSinCob: TBCDField;
    qrSQLDetalleComentario: TStringField;
    qrSQLDetallePruebaAsegurada: TIntegerField;

    qrASEncabezadoIN3MUE: TBCDField;
    qrASEncabezadoIN3NOM: TStringField;
    qrASEncabezadoIN3HOR: TIntegerField;
    qrASEncabezadoIN3DIR: TStringField;
    qrASEncabezadoIN3EDA: TIntegerField;
    qrASEncabezadoIN3NAC: TIntegerField;
    qrASEncabezadoIN3TEL: TStringField;
    qrASEncabezadoIN3CAT: TStringField;
    qrASEncabezadoIN3FEC: TIntegerField;
    qrASEncabezadoIN3USU: TStringField;
    qrASEncabezadoIN3SEX: TStringField;
    qrASEncabezadoIN3CED: TBCDField;
    qrASEncabezadoIN3SUC: TIntegerField;
    qrASEncabezadoIN3CDO: TIntegerField;
    qrASEncabezadoIN3DOC: TStringField;
    qrASEncabezadoIN3CLI: TBCDField;
    qrASEncabezadoIN3FAC: TBCDField;
    qrASEncabezadoIN3PAG: TBCDField;
    qrASEncabezadoIN3RES: TBCDField;
    qrASEncabezadoIN3EPA: TIntegerField;
    qrASEncabezadoIN3IPA: TIntegerField;
    qrASEncabezadoIN3EDO: TIntegerField;
    qrASEncabezadoIN3IDO: TIntegerField;
    qrASEncabezadoIN3RCL: TIntegerField;
    qrASEncabezadoIN3ICL: TIntegerField;
    qrASEncabezadoIN3COM: TStringField;
    qrASEncabezadoIN3ABR: TIntegerField;
    qrASEncabezadoIN3REL: TBCDField;
    qrASEncabezadoIN3REF: TStringField;
    qrASEncabezadoIN3ACT: TStringField;
    qrASEncabezadoIN3TAS: TBCDField;
    qrASEncabezadoIN3FPA: TBCDField;
    qrASEncabezadoIN3POL: TStringField;
    qrASEncabezadoIN3TAR: TBCDField;
    qrASEncabezadoIN3MON: TIntegerField;
    qrASEncabezadoIN3CAM: TBCDField;
    qrASEncabezadoIN3ENV: TBCDField;

    qrASDetalleIN4MUE: TBCDField;
    qrASDetalleIN4COD: TIntegerField;
    qrASDetalleIN4NOM: TStringField;
    qrASDetalleIN4STS: TStringField;
    qrASDetalleIN4DEP: TIntegerField;
    qrASDetalleIN4FEC: TIntegerField;
    qrASDetalleIN4HOR: TIntegerField;
    qrASDetalleIN4USU: TStringField;
    qrASDetalleIN4COM: TStringField;
    qrASDetalleIN4PET: TIntegerField;
    qrASDetalleIN4ANT: TBCDField;
    qrASDetalleIN4VAL: TBCDField;
    qrASDetalleIN4TIP: TStringField;
    qrASDetalleIN4ACT: TStringField;

    qrASInternetIN8USU: TStringField;
    qrASInternetIN8PAS: TStringField;
    qrASInternetIN8NOM: TStringField;
    qrASInternetIN8TIP: TStringField;
    qrASInternetIN8COD: TStringField;
    qrASInternetIN8ACT: TStringField;

    qrNoReactivoIN5COD: TIntegerField;
    qrNoReactivoIN5MG1: TStringField;
    qrNoReactivoIN5MG2: TStringField;
    qrNoReactivoIN5NOM: TStringField;

    qrASBuscaCedulaL16USU: TStringField;
    qrASBuscaCedulaL16KEY: TStringField;
    qrASBuscaCedulaL16NOM: TStringField;
    qrASBuscaCedulaL16TIP: TStringField;
    qrASBuscaCedulaL16COD: TStringField;
    qrASBuscaCedulaL16ACT: TStringField;

    qrASBuscaUsuarioL16USU: TStringField;
    qrASBuscaUsuarioL16KEY: TStringField;
    qrASBuscaUsuarioL16NOM: TStringField;
    qrASBuscaUsuarioL16TIP: TStringField;
    qrASBuscaUsuarioL16COD: TStringField;
    qrASBuscaUsuarioL16ACT: TStringField;

    qrCobros: TADOQuery;
    qrCobrosCobroID: TStringField;
    qrCobrosTurnoID: TStringField;
    qrCobrosEntradaID: TStringField;
    qrCobrosSucursalID: TStringField;
    mon: TDateTimeField;
    qrCobrosHora: TStringField;
    qrCobrosPacienteID: TStringField;
    qrCobrosPacientePrincipalID: TStringField;
    qrCobrosUsuarioID: TStringField;
    qrCobrosTotalCobrado: TBCDField;
    qrCobrosTotalFactura: TBCDField;
    qrCobrosTotalPagado: TBCDField;
    qrCobrosPendienteFactura: TBCDField;
    qrCobrosPendienteCobro: TBCDField;
    qrCobrosReciboNo: TStringField;
    qrCobrosClienteID: TStringField;
    qrCobrosAplicado: TBooleanField;
    qrCobrosMonedaID: TStringField;
    qrCobrosTipoDoc: TStringField;
    qrCobrosConcepto: TStringField;
    qrCobrosCUADREGLOBAL: TStringField;
    qrCobrosCUADREUSUARIO: TStringField;
    dsDatos: TDataSource;
    qrFormaCobros: TADOQuery;
    dsFormaCobros: TDataSource;

    qrSQLEncabezadoClinica: TADOQuery;
    qrSQLEncabezadoClinicaMuestra: TStringField;
    qrSQLEncabezadoClinicaMuestraNo: TStringField;
    qrSQLEncabezadoClinicaHora: TStringField;
    qrSQLEncabezadoClinicaDireccion: TStringField;
    qrSQLEncabezadoClinicaDireccionFija: TStringField;    
    qrSQLEncabezadoClinicaEdadPaciente: TIntegerField;
    qrSQLEncabezadoClinicaEdadCalculada: TIntegerField;
    qrSQLEncabezadoClinicaFechaNacimiento: TDateTimeField;
    qrSQLEncabezadoClinicaFechaNacimientoTexto: TStringField;
    qrSQLEncabezadoClinicaTelefono: TStringField;
    qrSQLEncabezadoClinicaCategoriaClienteNombre: TStringField;
    qrSQLEncabezadoClinicaFechaEntrada: TDateTimeField;
    qrSQLEncabezadoClinicaFechaEntradaTexto: TStringField;
    qrSQLEncabezadoClinicaUserId: TStringField;
    qrSQLEncabezadoClinicaSexo: TIntegerField;
    qrSQLEncabezadoClinicaCedula: TStringField;
    qrSQLEncabezadoClinicaSucursal: TIntegerField;
    qrSQLEncabezadoClinicaSucursalId: TStringField;
    qrSQLEncabezadoClinicaRecId: TIntegerField;
    qrSQLEncabezadoClinicaDoctorId: TStringField;
    qrSQLEncabezadoClinicaDoctorNombre: TStringField;
    qrSQLEncabezadoClinicaClienteId: TStringField;
    qrSQLEncabezadoClinicaNeto: TBCDField;
    qrSQLEncabezadoClinicaFacturado: TBCDField;
    qrSQLEncabezadoClinicaPagado: TBCDField;
    qrSQLEncabezadoClinicaDescuentoPorc: TBCDField;
    qrSQLEncabezadoClinicaCoberturaPorc: TBCDField;
    qrSQLEncabezadoClinicaCoberturaSeguro: TBCDField;
    qrSQLEncabezadoClinicaResto: TBCDField;
    qrSQLEncabezadoClinicaRestoOld: TBCDField;
    qrSQLEncabezadoClinicaTipResPaciente: TIntegerField;
    qrSQLEncabezadoClinicaInternet: TIntegerField;
    qrSQLEncabezadoClinicaTipResDoctor: TIntegerField;
    qrSQLEncabezadoClinicaInternetDoctor: TIntegerField;
    qrSQLEncabezadoClinicaTipResCliente: TIntegerField;
    qrSQLEncabezadoClinicaInternetCliente: TIntegerField;
    qrSQLEncabezadoClinicaComentario: TStringField;
    qrSQLEncabezadoClinicaEnClinica: TIntegerField;
    qrSQLEncabezadoClinicaNumeroInternet: TIntegerField;
    qrSQLEncabezadoClinicaReferenciaExterna: TStringField;
    qrSQLEncabezadoClinicaNombrePacienteFijo: TStringField;
    qrSQLEncabezadoClinicaCodigoAS400: TStringField;
    qrSQLEncabezadoClinicaNombrePaciente: TStringField;
    qrSQLEncabezadoClinicaGastoEnvio: TBCDField;
    qrSQLEncabezadoClinicaMoneda: TStringField;
    qrSQLEncabezadoClinicaTasa: TBCDField;

    qrSQLDetalleClinica: TADOQuery;    
    qrSQLDetalleClinicaMuestra: TStringField;
    qrSQLDetalleClinicaMuestraNo: TStringField;
    qrSQLDetalleClinicaPruebaId: TStringField;
    qrSQLDetalleClinicaCodigoAS400: TStringField;
    qrSQLDetalleClinicaNombrePrueba: TStringField;
    qrSQLDetalleClinicaStatusPrueba: TStringField;
    qrSQLDetalleClinicaDepartamento: TStringField;
    qrSQLDetalleClinicaDeptoId: TStringField;
    qrSQLDetalleClinicaFechaEntrada: TDateTimeField;
    qrSQLDetalleClinicaFechaEntradaTexto: TStringField;
    qrSQLDetalleClinicaHora: TStringField;
    qrSQLDetalleClinicaValor: TBCDField;
    qrSQLDetalleClinicaValSinCob: TBCDField;
    qrSQLDetalleClinicaUserId: TStringField;
    qrSQLDetalleClinicaComentario: TStringField;
    qrSQLDetalleClinicaComentarioMuestra: TStringField;
    qrSQLDetalleClinicaPeticion2RepMuestra: TIntegerField;
    qrSQLDetalleClinicaNumeroMuestraAnterior: TStringField;
    qrSQLDetalleClinicaTipoPrueba: TStringField;
    qrSQLDetalleClinicaTipoAS400: TStringField;
    qrSQLDetalleClinicaTipoMuestra: TStringField;
    qrSQLDetalleClinicaPrecioBruto: TBCDField;
    qrSQLDetalleClinicaPruebaAsegurada: TIntegerField;

    qrPagosAs400: TADOQuery;
    qrPagosAs400IN14MU: TBCDField;
    qrPagosAs400IN14NU: TBCDField;
    qrPagosAs400IN14FE: TIntegerField;
    qrPagosAs400IN14HO: TIntegerField;
    qrPagosAs400IN14ID: TStringField;
    qrPagosAs400IN14EF: TBCDField;
    qrPagosAs400IN14TA: TBCDField;
    qrPagosAs400IN14SU: TIntegerField;
    qrPagosAs400IN14AC: TStringField;
    qrCobrosrefRecid: TIntegerField;
    qrCobrosSecuencia: TAutoIncField;
    qrCobrosSINPRFILTER: TIntegerField;
    qrCobrosRecId: TIntegerField;
    qrSQLEncabezadoEstatus: TIntegerField;
    qrSQLEncabezadoClinicaEstatus: TIntegerField;
    qrASEncabezadoIN3SEG: TBCDField;
    qrASDetalleIN4GRU: TStringField;
    qrSQLDetalleGrupoPruebaID: TStringField;
    qrSQLDetalleClinicaGrupoPruebaID: TStringField;
    qrSQLEncabezadoCod_Caso: TIntegerField;
    qrSQLEncabezadoPrioridad: TIntegerField;
    qrSQLEncabezadoClinicaCod_Caso: TIntegerField;
    qrSQLEncabezadoClinicaPrioridad: TIntegerField;
    qrASEncabezadoIN3NRE: TIntegerField;
    qrASEncabezadoIN3URG: TIntegerField;

  private
    { Private declarations }
  public
    { Public declarations }
    User_Internet_AS400, Clave_Internet_AS400 : String;

    Function Buscar_Tarjeta(_registro: string): Double;

    Function GetResult(Muestra: String; CodigoPrueba: string): String;

    Procedure MandarPruebaAS400(MuestraNo: string; Paciente: String);

    Procedure MandarPruebaAS400_Clinica(MuestraNo: string; Paciente: String);

    Procedure SetEncabezado(
                            Muestra: String;
                            Nombre: String;
                            Hora: Integer;
                            Direccion: String;
                            Edad: String; //Integer;
                            FechaNacimieto: Integer; //TDateTime;
                            Categoria: String;
                            Fecha: Integer; //TDateTime;
                            Usuario: String;
                            Sexo: String;
                            Sucursal: Integer;
                            Doctor: String;
                            Cliente: Integer;
                            CodigoIdAS400: String;
                            Facturado: Currency;
                            Pagado: Currency;
                            Resto: Currency;
                            TipoResultadoPaciente: Integer;
                            InternetPaciente: Integer;
                            TipoResultadoDoctor: Integer;
                            InternetDoctor: Integer;
                            TipoResultadoCliente: Integer;
                            PacienteClinica: Integer;
                            InternetCliente: Integer;
                            CoberturaPorc: Currency;
                            DescuentoPorc: Currency;
                            CoberturaSeguro: Currency;
                            DiferenciaNeto: Currency;
                            RecId: String;
                            Moneda: String;
                            Tasa: Currency;
                            GastoEnvio: Currency;
                            Telefono: String = '0';
                            Cedula: String = '0'; //Integer = 0;
                            CodigoDoctor: String = '0'; //Integer = 0;
                            Comentario: String = '';
                            NumeroRelacionInternet: Integer = 0;
                            ReferenciaExterna: String = '';
                            Estatus: Integer = 0;
                            Cod_Caso: Integer = 0;
                            Prioridad: Integer = 0);

    Procedure SetDetalle(
                         Muestra: String;
                         CodigoPrueba: Integer;
                         Prueba: String;
                         Status: String;
                         FechaEntrada: Integer; //TDateTime;
                         Hora: Integer;
                         Usuario: String;
                         Comentario: String;
                         Peticion2Muestra: Integer;
                         Valor: Currency;
                         Depto: Integer = 0;
                         NumeroMuestraAnterior: Integer = 0;
                         TipoMuestra: String = '';
                         GrupoPruebaID: String = '';
                         No_Cubre_Seguro: Boolean = False
                        );

Procedure Buscar_Cedula_Internet(_cedula: String);
Procedure Usuario_Internet_AS400(_paciente : String);
Procedure Confirmar_No_Reactivo(CodigoAS400, Prueba, Descripcion : String);

procedure Mirar_Valor_CAB;

Function Buscar_Usuario_Internet(_usuario: String): Boolean;
Function Cargar_Valor(campo: String; valor: Variant): String;


end;

var
  InterfaseAS400: TInterfaseAS400;

implementation

uses DataModule, Main, StrUtils, Windows;

{$R *.dfm}


Function TInterfaseAS400.GetResult(Muestra: String; CodigoPrueba: string): String;
begin
  qrASResult.Close;
  qrASResult.Parameters.ParamByName('Muestra').Value:= Muestra;
  qrASResult.Parameters.ParamByName('Codigo').Value:= CodigoPrueba;
  qrASResult.Open;

  if not qrASResult.Eof then
    GetResult:= qrASResultL49RES.AsString
  else
    GetResult:= '';

  qrASResult.Close;
end;



Procedure TInterfaseAS400.Confirmar_No_Reactivo(CodigoAS400, Prueba, Descripcion : String);
Var
  _mensaje : String;
begin
  Try
    InterfaseAS400.ASConnection.Close;
    InterfaseAS400.ASConnection.Open;

    qrNoReactivo.Close;
    qrNoReactivo.Parameters.ParamByName('Codigo').Value:= CodigoAS400;
    qrNoReactivo.Open;

    If (qrNoReactivo.RecordCount > 0) Then
      Begin
{
        Raise exception.CreateFmt(' La Prueba: (' + Prueba + ') ' + Descripcion + #13 +
                                  ' NO Puede Facturarse por la(s) Siguiente(s) Razon(es): '+ #13 +
                                  qrNoReactivoIN5MG1.AsString + #13 + qrNoReactivoIN5MG2.AsString + #13 +
                                  ' Por Favor, Comuniquese con el Departamento Tecnico Correspondiente.!!!', []);
}

        DM.Error(' La Prueba: (' + Prueba + ') ' + Descripcion + #13 +
                 ' NO Puede Facturarse por la(s) Siguiente(s) Razon(es): '+ #13 +
                 qrNoReactivoIN5MG1.AsString + #13 + qrNoReactivoIN5MG2.AsString + #13 +
                 ' Por Favor, Comuniquese con el Departamento Tecnico Correspondiente.!!!');
//        Abort;
      End;
  Finally
    InterfaseAS400.ASConnection.Close;
{
  Except

    Raise exception.CreateFmt(' Existe un Problema de Comunicacion Con el Servidor AS-400. '+ #13 +
                              ' Por Favor, LLame al Departamento de Computos. '+ #13 +
                              ' ó Intentelo Nuevamente.!!!', []);
}
  End;
end;


Function TInterfaseAS400.Buscar_Tarjeta(_registro: string): Double;
Var
  _cobro_tarjeta : Double;
begin
  _cobro_tarjeta := 0;

  qrCobros.Close;
  qrCobros.SQL.Text := ' SELECT * FROM PTCobro '+
                       ' WHERE RefRecId = :reg '+
                       ' AND TipoDoc = '+ #39 + 'RI' + #39;
  qrCobros.Parameters.ParamByName('reg').Value := _registro;
  qrCobros.Open;

  if (qrCobros.RecordCount > 0) then
    Begin
      qrCobros.First;
      while Not qrCobros.Eof do
      Begin
        qrFormaCobros.Active := false;
        qrFormaCobros.sql.Text := ' SELECT D.CobroId, D.FormadePagoId, D.MonedaId, '+
                                  ' SUM(D.monto) FROM PTCobro C, PTCobroDetalle D '+
                                  ' WHERE C.cobroid = D.CobroId '+
                                  ' AND C.CobroId = :rec '+
                                  ' AND C.Fecha = :fec '+
                                  ' AND C.SucursalId = :suc '+
                                  ' AND C.UsuarioId = :usr '+
                                  ' GROUP BY D.CobroId, D.FormadePagoId, D.MonedaId '+
                                  ' ORDER BY D.CobroId, D.FormadePagoId, D.MonedaId ';
        qrFormaCobros.Parameters.ParamByName('rec').Value := qrCobros.FieldByName('CobroId').AsString;
        qrFormaCobros.Parameters.ParamByName('suc').Value := qrCobros.FieldByName('SucursalId').AsString;
        qrFormaCobros.Parameters.ParamByName('fec').Value := qrCobros.FieldByName('Fecha').AsString;
        qrFormaCobros.Parameters.ParamByName('usr').Value := qrCobros.FieldByName('UsuarioId').AsString;
        qrFormaCobros.Active := True;

        if (qrFormaCobros.RecordCount > 0) then
          Begin
            qrFormaCobros.First;
            while Not qrFormaCobros.Eof do
            Begin
              if (qrFormaCobros.Fields[1].AsString = 'TC') then
                _cobro_tarjeta := DM.Redondeo(_cobro_tarjeta + qrFormaCobros.Fields[3].AsFloat);

              if (qrFormaCobros.Fields[1].AsString = 'TD') then
                _cobro_tarjeta := DM.Redondeo(_cobro_tarjeta + qrFormaCobros.Fields[3].AsFloat);

              qrFormaCobros.Next;
            End;
          End;
        qrCobros.Next;
      end;
    end;

  Result := _cobro_tarjeta;
end;


procedure TInterfaseAS400.Usuario_Internet_AS400(_paciente : String);
Var
 qfind  : TAdoQuery;
begin
  qfind := DM.Find('SELECT * FROM PTUsuariosInternet WHERE ClienteId = :clt', _paciente);
  If (qfind.RecordCount > 0) then
    Begin
      qrASInternet.Close;
      qrASInternet.Parameters.ParamByName('Usuario').Value  := qfind.FieldByName('UsuarioInternet').AsString;
      qrASInternet.Parameters.ParamByName('Codigo').Value  := qfind.FieldByName('Identificacion').AsString;
      qrASInternet.Open;
      If qrASInternet.Eof then
        qrASInternet.Insert
      Else
      qrASInternet.Edit;

      qrASInternetIN8USU.AsString := qfind.FieldByName('UsuarioInternet').AsString;
      qrASInternetIN8PAS.AsString := qfind.FieldByName('ClaveInternet').AsString;
      qrASInternetIN8NOM.AsString := Copy(qfind.FieldByName('Nombre').AsString, 1, 50);
      qrASInternetIN8TIP.AsString := qfind.FieldByName('Tipo').AsString;
      qrASInternetIN8COD.AsString := qfind.FieldByName('Identificacion').AsString;
      qrASInternetIN8ACT.AsString := '';
      qrASInternet.Post;
      qrASInternet.Close;
    end;

  FreeAndNil(qfind);
end;



procedure TInterfaseAS400.MandarPruebaAS400_Clinica(MuestraNo: String; Paciente: String);
Var
  _tipo       : String;
  _blanks     : String;
  _record     : Integer;
  no_insurance: Boolean;
  No_Seguro   : String;
  _depto, _nma: Integer;
  qfind       : TADOQuery;
begin
  DM.qrParametro.Close;
  DM.qrParametro.Open;

  //Insertando la Orden de Trabajo.
  qrSqlEncabezadoClinica.Close;
  qrSqlEncabezadoClinica.Parameters.ParamByName('MuestraNo').Value := MuestraNo;
  qrSqlEncabezadoClinica.Open;

  no_insurance := False;
  No_Seguro :='N';
  qfind := DM.Find_Ldr('SELECT * FROM PTCliente WHERE ClienteId = :cli', FormatFloat('00000000', qrSqlEncabezadoClinicaClienteId.AsInteger));
  If (qfind.FieldByName('GrupoCliente').Value = DM.qrParametroGrupoSeg.Value) Then
  begin
    no_insurance := True;
    No_Seguro :='S';
  end;
  qrSqlEncabezadoClinica.First;
  _record := qrSqlEncabezadoClinica.RecordCount;

  If (qrSqlEncabezadoClinicaInternet.AsInteger > 0) then
    Usuario_Internet_AS400(Paciente);

//  SetEncabezado(qrSqlEncabezadoClinicaMuestraNo.AsInteger,               //  qrSqlEncabezadoClinicaMuestra
  SetEncabezado(qrSqlEncabezadoClinicaMuestraNo.AsString,                //  qrSqlEncabezadoClinicaMuestra
                qrSqlEncabezadoClinicaNombrePaciente.AsString,
                qrSqlEncabezadoClinicaHora.AsInteger,
                qrSqlEncabezadoClinicaDireccion.AsString,
                qrSqlEncabezadoClinicaEdadPaciente.AsString,             //  qrSqlEncabezadoClinicaEdadCalculada
                qrSqlEncabezadoClinicaFechaNacimientoTexto.AsInteger,    //  qrSqlEncabezadoClinicaFechaNacimiento
                qrSqlEncabezadoClinicaCategoriaClienteNombre.AsString,
                qrSqlEncabezadoClinicaFechaEntradaTexto.AsInteger,       //  qrSqlEncabezadoClinicaFechaEntrada
                qrSqlEncabezadoClinicaUserId.AsString,
                qrSqlEncabezadoClinicaSexo.AsString,
                qrSqlEncabezadoClinicaSucursal.AsInteger,                //  qrSqlEncabezadoClinicaSucursalId
                qrSqlEncabezadoClinicaDoctorNombre.AsString,
                qrSqlEncabezadoClinicaClienteId.AsInteger,
                qrSqlEncabezadoClinicaCodigoAS400.AsString,
                qrSqlEncabezadoClinicaFacturado.AsCurrency,
                qrSqlEncabezadoClinicaPagado.AsCurrency,
                qrSqlEncabezadoClinicaResto.AsCurrency,
                qrSqlEncabezadoClinicaTipResPaciente.AsInteger,
                qrSqlEncabezadoClinicaInternet.AsInteger,
                qrSqlEncabezadoClinicaTipResDoctor.AsInteger,
                qrSqlEncabezadoClinicaInternetDoctor.AsInteger,
                qrSqlEncabezadoClinicaTipResCliente.AsInteger,
                qrSqlEncabezadoClinicaEnClinica.AsInteger,
                qrSqlEncabezadoClinicaInternetCliente.AsInteger,
                qrSqlEncabezadoClinicaCoberturaPorc.AsCurrency,
                qrSqlEncabezadoClinicaDescuentoPorc.AsCurrency,
                qrSqlEncabezadoClinicaCoberturaSeguro.AsCurrency,
                qrSqlEncabezadoClinicaNeto.AsCurrency,
                qrSqlEncabezadoClinicaRecId.AsString,
                qrSqlEncabezadoClinicaMoneda.AsString,
                qrSqlEncabezadoClinicaTasa.AsCurrency,
                qrSqlEncabezadoClinicaGastoEnvio.AsCurrency,
                qrSqlEncabezadoClinicaTelefono.AsString,
                qrSqlEncabezadoClinicaCedula.AsString,
                qrSqlEncabezadoClinicaDoctorId.AsString,
                qrSqlEncabezadoClinicaComentario.AsString,
                qrSqlEncabezadoClinicaNumeroInternet.AsInteger,
                qrSqlEncabezadoClinicaReferenciaExterna.AsString,
                qrSqlEncabezadoClinicaEstatus.AsInteger,
                qrSqlEncabezadoClinicaCod_Caso.AsInteger,
                qrSqlEncabezadoClinicaPrioridad.AsInteger);

  qrSqlEncabezadoClinica.Close;

////////////////////////////////////////////////////////////////////////////////

  //Insertando las Pruebas.
  qrSqlDetalleClinica.Close;
  qrSqlDetalleClinica.Parameters.ParamByName('MuestraNo').Value:= MuestraNo;
  qrSqlDetalleClinica.Open;

  _record := qrSqlDetalleClinica.RecordCount;

  qrSqlDetalleClinica.First;
  While Not qrSqlDetalleClinica.Eof Do
   Begin
    If (no_insurance = True) or (No_Seguro ='S') Then
      If (qrSqlDetalleClinicaPruebaAsegurada.AsInteger = 1) Then
        no_insurance := False
      Else
        no_insurance := True;

//   SHOWMESSAGE(qrSqlDetalleClinicaNombrePrueba.AsString);
     InterfaseAS400.SetDetalle(qrSqlDetalleClinicaMuestraNo.AsString,           //  qrSqlDetalleClinicaMuestra
                               qrSqlDetalleClinicaCodigoAS400.AsInteger,         //  qrSqlDetalleClinicaPruebaId
                               qrSqlDetalleClinicaNombrePrueba.AsString,
                               qrSqlDetalleClinicaStatusPrueba.AsString,
                               qrSqlDetalleClinicaFechaEntradaTexto.AsInteger,   //  qrSqlDetalleClinicaFechaEntrada
                               qrSqlDetalleClinicaHora.AsInteger,
                               qrSqlDetalleClinicaUserId.AsString,
                               qrSqlDetalleClinicaComentario.AsString,           //  qrSqlDetalleClinicaComentarioMuestra.AsString,
                               qrSqlDetalleClinicaPeticion2RepMuestra.AsInteger,
                               qrSQLDetalleClinicaPrecioBruto.AsCurrency,        //  qrSqlDetalleClinicaValor.AsCurrency,
                               qrSqlDetalleClinicaDeptoId.AsInteger,             //  qrSqlDetalleClinicaDepartamento
                               qrSqlDetalleClinicaNumeroMuestraAnterior.AsInteger,
                               qrSqlDetalleClinicaTipoAS400.AsString,
                               qrSqlDetalleClinicaGrupoPruebaID.AsString,
                               no_insurance);           //  qrSqlDetalleClinicaTipoPrueba - qrSqlDetalleClinicaTipoMuestra

     qrSqlDetalleClinica.Next;
   End;

  qrSqlDetalleClinica.Close;
end;


procedure TInterfaseAS400.Mirar_Valor_CAB;
Var idx : Integer;
begin
  For idx := 0 To qrSQLDetalle.FieldCount - 1 Do
   begin
     Showmessage('CAB - ' + Cargar_Valor(qrSQLDetalle.Fields[idx].DisplayLabel,
                                         qrSQLDetalle.Fields[idx].Value));
   end;
end;


Function TInterfaseAS400.Cargar_Valor(campo: String; valor: Variant): String;
begin
 Result := campo + ' - ( ' + VarToStr(valor) + ' ).';
end;


procedure TInterfaseAS400.Buscar_Cedula_Internet(_cedula: String);
Var
 _valor  : String;
 qfind  : TAdoQuery;
begin
  _valor := '';
  User_Internet_AS400 := '';
  Clave_Internet_AS400 := '';

  //Eliminando los Guiones de la Cedula - RNC del Cliente.
  _valor  := DM.Cortar_Char('-', _cedula);

  _cedula := Copy(_valor, 1, 11);

  Try
    InterfaseAS400.ASConnection.Close;
    InterfaseAS400.ASConnection.Open;

    qrASBuscaCedula.Close;
    qrASBuscaCedula.Parameters.ParamByName('Cedula').Value:= _cedula;
    qrASBuscaCedula.Open;

    If (qrASBuscaCedula.RecordCount > 0) Then
      Begin
        User_Internet_AS400 := qrASBuscaCedulaL16USU.Value;
        Clave_Internet_AS400 := qrASBuscaCedulaL16KEY.Value;
      End;

    InterfaseAS400.ASConnection.Close;
  Except
    Raise exception.CreateFmt(' Existe un Problema de Comunicacion Con el Servidor AS-400. '+ #13 +
                              ' Por Favor, LLame al Departamento de Computos. '+ #13 +
                              ' ó Intentelo Nuevamente.!!!', []);
  End;
end;


Function TInterfaseAS400.Buscar_Usuario_Internet(_usuario: String): Boolean;
Var
  _valor : Boolean;
  _Find, Blanco: String;
  _Size, Largo : Integer;
begin
  _Size  := 0;
  Largo  := 0;
  _Find  := '';
  Blanco := '';

  Largo := Length(_usuario);

  If (Largo < 10) Then
    _Size := 10 - Largo;

  If (_Size > 0) Then
    Blanco := StringOfChar(' ', _Size);

  _Find := _usuario + Blanco;

////////////////////////////////////////////////////////////////////////////////

  Try
    InterfaseAS400.ASConnection.Close;
    InterfaseAS400.ASConnection.Open;

    qrASBuscaUsuario.Close;
    qrASBuscaUsuario.Parameters.ParamByName('Usuario').Value:= _Find;
    qrASBuscaUsuario.Open;

    If (qrASBuscaUsuario.RecordCount > 0) Then
      _valor := False
    Else
      _valor := True;

    Result := _valor;
    InterfaseAS400.ASConnection.Close;
  Except
    Raise exception.CreateFmt(' Existe un Problema de Comunicacion Con el Servidor AS-400. '+ #13 +
                              ' Por Favor, LLame al Departamento de Computos. '+ #13 +
                              ' ó Intentelo Nuevamente.!!!', []);
  End;
end;


procedure TInterfaseAS400.MandarPruebaAS400(MuestraNo: String; Paciente: String);
Var
  _tipo       : String;
  _blanks     : String;
  _record     : Integer;
  no_insurance: Boolean;
  No_Seguro   : String;
  _depto, _nma: Integer;
  qfind       : TADOQuery;
begin
  DM.qrParametro.Close;
  DM.qrParametro.Open;

  //Insertando la Orden de Trabajo.
  qrSqlEncabezado.Close;
  qrSQLEncabezado.Parameters.ParamByName('MuestraNo').Value := MuestraNo;
  qrSQLEncabezado.Open;

  no_insurance := False;
  No_Seguro    :='N';
  qfind := DM.Find_Ldr('SELECT * FROM PTCliente WHERE ClienteId = :cli', FormatFloat('00000000', qrSQLEncabezadoClienteId.AsInteger));
  If (qfind.FieldByName('GrupoCliente').Value) = (DM.qrParametroGrupoSeg.Value) Then
  begin
    no_insurance := True;
    No_Seguro    :='S';
  end;
  qrSQLEncabezado.First;
  _record := qrSQLEncabezado.RecordCount;

  If (qrSQLEncabezadoInternet.AsInteger > 0) then
    Usuario_Internet_AS400(Paciente);

//  SetEncabezado(qrSQLEncabezadoMuestraNo.AsInteger,               //  qrSQLEncabezadoMuestra

  SetEncabezado(qrSQLEncabezadoMuestraNo.AsString,                //  qrSQLEncabezadoMuestra
                qrSQLEncabezadoNombrePaciente.AsString,
                qrSQLEncabezadoHora.AsInteger,
                qrSQLEncabezadoDireccion.AsString,
                qrSQLEncabezadoEdadPaciente.AsString,             //  qrSQLEncabezadoEdadCalculada
                qrSQLEncabezadoFechaNacimientoTexto.AsInteger,    //  qrSQLEncabezadoFechaNacimiento
                qrSQLEncabezadoCategoriaClienteNombre.AsString,
                qrSQLEncabezadoFechaEntradaTexto.AsInteger,       //  qrSQLEncabezadoFechaEntrada
                qrSQLEncabezadoUserId.AsString,
                qrSQLEncabezadoSexo.AsString,
                qrSQLEncabezadoSucursal.AsInteger,                //  qrSQLEncabezadoSucursalId
                qrSQLEncabezadoDoctorNombre.AsString,
                qrSQLEncabezadoClienteId.AsInteger,
                qrSQLEncabezadoCodigoAS400.AsString,
                qrSQLEncabezadoFacturado.AsCurrency,
                qrSQLEncabezadoPagado.AsCurrency,
                qrSQLEncabezadoResto.AsCurrency,
                qrSQLEncabezadoTipResPaciente.AsInteger,
                qrSQLEncabezadoInternet.AsInteger,
                qrSQLEncabezadoTipResDoctor.AsInteger,
                qrSQLEncabezadoInternetDoctor.AsInteger,
                qrSQLEncabezadoTipResCliente.AsInteger,
                qrSQLEncabezadoEnClinica.AsInteger,
                qrSQLEncabezadoInternetCliente.AsInteger,
                qrSQLEncabezadoCoberturaPorc.AsCurrency,
                qrSQLEncabezadoDescuentoPorc.AsCurrency,
                qrSQLEncabezadoCoberturaSeguro.AsCurrency,
                qrSQLEncabezadoNeto.AsCurrency,
                qrSQLEncabezadoRecId.AsString,
                qrSQLEncabezadoMoneda.AsString,
                qrSQLEncabezadoTasa.AsCurrency,
                qrSQLEncabezadoGastoEnvio.AsCurrency,
                qrSQLEncabezadoTelefono.AsString,
                qrSQLEncabezadoCedula.AsString,
                qrSQLEncabezadoDoctorId.AsString,
                qrSQLEncabezadoComentario.AsString,
                qrSQLEncabezadoNumeroInternet.AsInteger,
                qrSQLEncabezadoReferenciaExterna.AsString,
                qrSQLEncabezadoEstatus.AsInteger,
                qrSQLEncabezadoCod_Caso.AsInteger,
                qrSQLEncabezadoPrioridad.AsInteger);

  qrSQLEncabezado.Close;

////////////////////////////////////////////////////////////////////////////////

  //Insertando las Pruebas.
  qrSqlDetalle.Close;
  qrSQLDetalle.Parameters.ParamByName('MuestraNo').Value:= MuestraNo;
  qrSQLDetalle.Open;

  _record := qrSQLDetalle.RecordCount;

  qrSQLDetalle.First;
  While Not qrSQLDetalle.Eof Do
   Begin
    If (no_insurance = True) or (No_Seguro ='S') Then
      If (qrSqlDetallePruebaAsegurada.AsInteger = 1) Then
        no_insurance := False
      Else
        no_insurance := True;

//   SHOWMESSAGE(qrSQLDetalleNombrePrueba.AsString);
     InterfaseAS400.SetDetalle(qrSQLDetalleMuestraNo.AsString,           //  qrSQLDetalleMuestra
                               qrSQLDetalleCodigoAS400.AsInteger,         //  qrSQLDetallePruebaId
                               qrSQLDetalleNombrePrueba.AsString,
                               qrSQLDetalleStatusPrueba.AsString,
                               qrSQLDetalleFechaEntradaTexto.AsInteger,   //  qrSQLDetalleFechaEntrada
                               qrSQLDetalleHora.AsInteger,
                               qrSQLDetalleUserId.AsString,
                               qrSQLDetalleComentario.AsString,           //  qrSQLDetalleComentarioMuestra.AsString,
                               qrSQLDetallePeticion2RepMuestra.AsInteger,
                               qrSQLDetallePrecioBruto.AsCurrency,        //  qrSQLDetalleValor.AsCurrency,
                               qrSQLDetalleDeptoId.AsInteger,             //  qrSQLDetalleDepartamento
                               qrSQLDetalleNumeroMuestraAnterior.AsInteger,
                               qrSQLDetalleTipoAS400.AsString,
                               qrSQLDetalleGrupoPruebaID.Asstring,
                               no_insurance);           //  qrSQLDetalleTipoPrueba - qrSQLDetalleTipoMuestra

     qrSQLDetalle.Next;
   End;

  qrSQLDetalle.Close;
end;


Procedure TInterfaseAS400.SetDetalle(Muestra: String; CodigoPrueba: Integer; Prueba: String;
                                     Status: String; FechaEntrada: Integer; Hora: Integer; Usuario: String;
                                     Comentario: String; Peticion2Muestra: Integer; Valor: Currency;
                                     Depto: Integer = 0; NumeroMuestraAnterior: Integer = 0;
                                     TipoMuestra: String = '';GrupoPruebaID: String = ''; No_Cubre_Seguro: Boolean = False);
Var
  _record: Integer;
begin
  if (CodigoPrueba > 0) then
    Begin
      qrASDetalle.Close;
      qrASDetalle.Parameters.ParamByName('Muestra').Value := Muestra;
      qrASDetalle.Parameters.ParamByName('Codigo').Value  := CodigoPrueba;
      qrASDetalle.Open;

      _record := qrASDetalle.RecordCount;

      If qrASDetalle.Eof Then
        qrASDetalle.Insert
      Else
        qrASDetalle.Edit;

////////////////////////////////////////////////////////////////////////////////

      //Cargando Valores Por Defecto para Evitar Errores.
      If (Hora = Null) Then Hora := 0;
      If (Depto = Null) Then Depto := 0;
      If (Valor = Null) Then Valor := 0;
      If (FechaEntrada = Null) Then FechaEntrada := 0;
      If (Peticion2Muestra = Null) Then Peticion2Muestra := 0;
      If (NumeroMuestraAnterior = Null) Then NumeroMuestraAnterior := 0;
      If (No_Cubre_Seguro = True) Then Peticion2Muestra := 2;

////////////////////////////////////////////////////////////////////////////////

      qrASDetalleIN4MUE.AsString   := FormatFloat('00000000000', StrToFloat(Muestra));
      qrASDetalleIN4COD.AsString   := FormatFloat('0000', CodigoPrueba);
      qrASDetalleIN4NOM.AsString   := Trim(LeftStr(Prueba, 50));
      qrASDetalleIN4STS.AsString   := LeftStr(Status, 1);
      qrASDetalleIN4DEP.AsString   := FormatFloat('000', Depto);
      qrASDetalleIN4FEC.AsInteger  := FechaEntrada;
      qrASDetalleIN4HOR.AsString   := FormatFloat('0000000', Hora);
      qrASDetalleIN4USU.AsString   := LeftStr(Usuario, 10);
      qrASDetalleIN4COM.AsString   := Trim(LeftStr(Comentario, 100));
      qrASDetalleIN4PET.AsInteger  := Peticion2Muestra;
      qrASDetalleIN4ANT.AsString   := FormatFloat('00000000000', NumeroMuestraAnterior);
      qrASDetalleIN4TIP.AsString   := LeftStr(TipoMuestra, 1);
      qrASDetalleIN4VAL.AsCurrency := DM.Redondeo(Valor);
      qrASDetalleIN4GRU.AsString   := LeftStr(GrupoPruebaID, 3);
{
      qrASDetalleIN4MUE.AsString:= LeftStr(Muestra, 11);
      qrASDetalleIN4COD.AsString:= CodigoPrueba;
      qrASDetalleIN4NOM.AsString:= LeftStr(Prueba, 50);
      qrASDetalleIN4STS.AsString:= LeftStr(Status, 1);
      qrASDetalleIN4DEP.AsInteger:= Depto;

//      DecodeDate(StrToDate(FechaEntrada), Year, Mes, Dia);
      DecodeDate(FechaEntrada, Year, Mes, Dia);
      qrASDetalleIN4FEC.AsString:=    RightStr('00' + IntToStr(Dia), 2) +
                                      RightStr('00' + IntToStr(Mes), 2) +
                                      RightStr('0000' + IntToStr(Year), 2);

      qrASDetalleIN4HOR.AsString:= LeftStr(StringReplace(Hora, ':', '', [rfReplaceAll] ), 4);
      qrASDetalleIN4USU.AsString:= LeftStr(Usuario, 10);
      qrASDetalleIN4COM.AsString:= LeftStr(Comentario, 100);
      qrASDetalleIN4PET.AsInteger:= Peticion2Muestra;
      qrASDetalleIN4ANT.AsInteger:= NumeroMuestraAnterior;
      qrASDetalleIN4TIP.AsString:= LeftStr(TipoMuestra, 1);

      qrASDetalle.Post;
      qrASDetalle.Close;
}
      qrASDetalle.Post;
      qrASDetalle.Close;
    end;
end;


Procedure TInterfaseAS400.SetEncabezado(Muestra: String; Nombre: String; Hora: Integer; Direccion: String;
                                        Edad: String; FechaNacimieto: Integer; Categoria: String;
                                        Fecha: Integer; Usuario: String; Sexo: String; Sucursal: Integer;
                                        Doctor: String; Cliente: Integer; CodigoIdAS400: String; Facturado: Currency;
                                        Pagado: Currency; Resto: Currency; TipoResultadoPaciente: Integer; InternetPaciente: Integer;
                                        TipoResultadoDoctor: Integer; InternetDoctor: Integer; TipoResultadoCliente: Integer;
                                        PacienteClinica: Integer; InternetCliente: Integer; CoberturaPorc: Currency;
                                        DescuentoPorc: Currency; CoberturaSeguro: Currency; DiferenciaNeto: Currency;
                                        RecId: String; Moneda: String; Tasa: Currency; GastoEnvio: Currency; Telefono: String = '0';
                                        Cedula: String = '0'; CodigoDoctor: String = '0'; Comentario: String = '';
                                        NumeroRelacionInternet: Integer = 0; ReferenciaExterna: String = '';Estatus: Integer = 0;
                                        Cod_Caso: Integer = 0;Prioridad: Integer = 0);
Var
  _record: Integer;
  TarjPago: Currency;
  qfind : TADOQuery;
begin
  TarjPago := Buscar_Tarjeta(RecId);

  qrASEncabezado.Close;
  qrASEncabezado.Parameters.ParamByName('Muestra').Value  := Muestra;
  qrASEncabezado.Open;

  _record := qrASEncabezado.RecordCount;

  If qrASEncabezado.Eof then
    qrASEncabezado.Insert
  else
    qrASEncabezado.Edit;

  DM.qrParametro.close;
  DM.qrParametro.open;

  qfind := DM.Find_Ldr('SELECT * FROM PTCliente WHERE ClienteId = :cli', FormatFloat('00000000', Cliente));

  If ( ( (qfind.FieldByName('CodigoIdAS400').Value = '') Or
         (qfind.FieldByName('CodigoIdAS400').Value = ' ') Or
         (qfind.FieldByName('CodigoIdAS400').Value = '  ') Or
         (qfind.FieldByName('CodigoIdAS400').Value = '00001000') ) And
       (qfind.FieldByName('GrupoCliente').Value = DM.qrParametroGrupoPriv.Value) ) Then
    CodigoIdAS400 := '1'
  Else
    CodigoIdAS400 := qfind.FieldByName('CodigoIdAS400').Value;

  If ( (qfind.FieldByName('CodigoIdAS400').Value = '00001000') And
       (qfind.FieldByName('GrupoCliente').Value <> DM.qrParametroGrupoPriv.Value) ) Then
    CodigoIdAS400 := qfind.FieldByName('CodigoIdAS400').Value;
{
  If ( (qfind.FieldByName('CodigoIdAS400').Value <> '00001000') ) Then
    CodigoIdAS400 := qfind.FieldByName('CodigoIdAS400').Value
  Else
    Begin
      If ( (qfind.FieldByName('CodigoIdAS400').Value = '00001000') And
           (qfind.FieldByName('GrupoCliente').Value <> DM.qrParametroGrupoPriv.Value) ) Then
        CodigoIdAS400 := qfind.FieldByName('CodigoIdAS400').Value
      Else
        CodigoIdAS400 := '0';
    End;
}

////////////////////////////////////////////////////////////////////////////////

  //Cargando Valores Por Defecto para Evitar Errores.
  If (Hora = Null) Then Hora := 0;
  If (Fecha = Null) Then Fecha := 0;
  If (Cliente = Null) Then Cliente := 0;
  If (Sucursal = Null) Then Sucursal := 0;
  If (Fechanacimieto = Null) Then Fechanacimieto := 0;
  If (InternetDoctor = Null) Then InternetDoctor := 0;
  If (InternetCliente = Null) Then InternetCliente := 0;
  If (PacienteClinica = Null) Then PacienteClinica := 0;
  If (InternetPaciente = Null) Then InternetPaciente := 0;
  If (NumeroRelacionInternet = Null) Then NumeroRelacionInternet := 0;
  if (Cod_Caso = Null) then Cod_Caso := 0;
  if (Prioridad = Null) then Prioridad := 0;

  If (Edad = '') Or (Edad = Null) Then Edad := '0';
  If (Cedula = '') Or (Cedula = Null) Then Cedula := '0';
  If (Doctor = '') Or (Doctor = Null) Then Doctor := '0';

//  If (CodigoIdAS400 = '') Or (CodigoIdAS400 = Null) Then CodigoIdAS400 := '0';
  If (CodigoIdAS400 = '') Or
     (CodigoIdAS400 = ' ') Or
     (CodigoIdAS400 = '  ') Or
     (CodigoIdAS400 = Null) Then CodigoIdAS400 := '1';

  If (CodigoDoctor = '') Or (CodigoDoctor = Null) Then CodigoDoctor := '0';
  If (ReferenciaExterna = '') Or (ReferenciaExterna = Null) Then ReferenciaExterna := '0';
  If (Moneda = 'US') Or (Moneda = 'EU') Then Moneda := '1' Else Moneda := '0';

////////////////////////////////////////////////////////////////////////////////
  if Estatus = 0 then
     qrASEncabezadoIN3ACT.AsString     := ''
  else if Estatus = 1 then qrASEncabezadoIN3ACT.AsString     := 'C';

  qrASEncabezadoIN3MUE.AsString     := FormatFloat('00000000000', StrToFloat(Muestra));
  qrASEncabezadoIN3NOM.AsString     := Trim(LeftStr(Nombre, 40));
  qrASEncabezadoIN3HOR.AsString     := FormatFloat('000000', Hora);
  qrASEncabezadoIN3DIR.AsString     := Trim(LeftStr(Direccion, 40));
  qrASEncabezadoIN3EDA.AsString     := FormatFloat('000', StrToInt(Edad));
  qrASEncabezadoIN3NAC.AsInteger    := Fechanacimieto;
  qrASEncabezadoIN3TEL.AsString     := Telefono;
  qrASEncabezadoIN3CAT.AsString     := Categoria;
  qrASEncabezadoIN3FEC.AsInteger    := Fecha;
  qrASEncabezadoIN3USU.AsString     := LeftStr(Usuario, 10);
  qrASEncabezadoIN3SEX.AsString     := LeftStr(Sexo, 1);
  qrASEncabezadoIN3CED.AsString     := FormatFloat('00000000000', StrToFloat(Cedula));
  qrASEncabezadoIN3SUC.AsString     := FormatFloat('0000', Sucursal);
  qrASEncabezadoIN3CDO.AsString     := FormatFloat('000000', StrToInt(CodigoDoctor));
  qrASEncabezadoIN3DOC.AsString     := Doctor;

  If ( StrToFloat(CodigoIdAS400) > 0 ) then
    qrASEncabezadoIN3CLI.AsString     := FormatFloat('0000000000', StrToFloat(CodigoIdAS400))
  Else
    qrASEncabezadoIN3CLI.AsString     := FormatFloat('0000000000', Cliente);

  qrASEncabezadoIN3FAC.AsCurrency   := DM.Redondeo(Facturado);
  qrASEncabezadoIN3PAG.AsCurrency   := DM.Redondeo(Pagado);
  qrASEncabezadoIN3RES.AsCurrency   := DM.Redondeo(Resto);
  qrASEncabezadoIN3EPA.AsInteger    := TiporesultadoPaciente;
  qrASEncabezadoIN3IPA.AsInteger    := InternetPaciente;
  qrASEncabezadoIN3EDO.AsInteger    := TipoResultadoDoctor;
  qrASEncabezadoIN3IDO.AsInteger    := InternetDoctor;
  qrASEncabezadoIN3RCL.AsInteger    := TipoResultadoCliente;
  qrASEncabezadoIN3ICL.AsInteger    := InternetCliente;
  qrASEncabezadoIN3COM.AsString     := Trim(LeftStr(Comentario, 50));
  qrASEncabezadoIN3ABR.AsInteger    := PacienteClinica;
  qrASEncabezadoIN3REL.AsString     := FormatFloat('00000000000', NumeroRelacionInternet);
  qrASEncabezadoIN3REF.AsString     := Trim(LeftStr(ReferenciaExterna, 20));

  If ( DescuentoPorc > 1 ) Then
    qrASEncabezadoIN3TAS.AsCurrency := DM.Redondeo(DescuentoPorc);

  If ( CoberturaSeguro > 1 ) Then
  begin
    qrASEncabezadoIN3TAS.AsCurrency := DM.Redondeo(CoberturaPorc);
    qrASEncabezadoIN3SEG.AsCurrency := DM.Redondeo(CoberturaSeguro);
  end;

  qrASEncabezadoIN3FPA.AsCurrency   := DM.Redondeo(DiferenciaNeto);
  qrASEncabezadoIN3TAR.AsCurrency   := DM.Redondeo(TarjPago);

  If ( CoberturaSeguro > 1 ) Then
    qrASEncabezadoIN3POL.AsString     := LeftStr(ReferenciaExterna, 25)
  Else
    qrASEncabezadoIN3POL.AsString     := '0';

  qrASEncabezadoIN3MON.AsInteger  := StrToInt(Moneda);
  qrASEncabezadoIN3CAM.AsCurrency := DM.Redondeo(Tasa / 100);
  qrASEncabezadoIN3ENV.AsCurrency := DM.Redondeo(GastoEnvio);
  if Cod_Caso <> 0 then
    qrASEncabezadoIN3NRE.AsInteger  := Cod_Caso
  else
    qrASEncabezadoIN3NRE.AsInteger  :=0;

  if Prioridad <> 0 then
    qrASEncabezadoIN3URG.AsInteger  := Prioridad
  else
    qrASEncabezadoIN3URG.AsInteger  :=0;

  qrASEncabezado.Post;
  qrASEncabezado.Close;
end;


END.

