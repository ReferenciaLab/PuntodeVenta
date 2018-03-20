// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://172.16.30.65/WsRefYunen/WsReferenciaAutorizacion.asmx?WSDL
// Encoding : utf-8
// Version  : 1.0
// (16/07/2015 11:36:23 a.m. - 1.33.2.5)
// ************************************************************************ //

unit WsReferenciaAutorizacion;

interface

uses InvokeRegistry, SOAPHTTPClient, Types, XSBuiltIns,DataModule;

type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Borland types; however, they could also
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:string          - "http://www.w3.org/2001/XMLSchema"
  // !:int             - "http://www.w3.org/2001/XMLSchema"
  // !:double          - "http://www.w3.org/2001/XMLSchema"
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"

  Prestacion           = class;                 { "http://tempuri.org/" }
  Diagnostico          = class;                 { "http://tempuri.org/" }
  Afiliado             = class;                 { "http://tempuri.org/" }
  PrestacionDetalle    = class;                 { "http://tempuri.org/" }
  PrestacionesRemovidas = class;                { "http://tempuri.org/" }
  DesglosePagoPorMes   = class;                 { "http://tempuri.org/" }

  ArrayOfPrestacion = array of Prestacion;      { "http://tempuri.org/" }


  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  Prestacion = class(TRemotable)
  private
    FCodigo: WideString;
    FDescripcion: WideString;
  published
    property Codigo: WideString read FCodigo write FCodigo;
    property Descripcion: WideString read FDescripcion write FDescripcion;
  end;

  ArrayOfDiagnostico = array of Diagnostico;    { "http://tempuri.org/" }


  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  Diagnostico = class(TRemotable)
  private
    FCodigo: WideString;
    FDescripcion: WideString;
  published
    property Codigo: WideString read FCodigo write FCodigo;
    property Descripcion: WideString read FDescripcion write FDescripcion;
  end;



  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  Afiliado = class(TRemotable)
  private
    FNombres: WideString;
    FApellidos: WideString;
    FSexo: WideString;
    FFechaNacimiento: WideString;
    FCedula: WideString;
    FNss: WideString;
    FCarnet: WideString;
    FTieneCobertura: WideString;
    FTipoPlan: WideString;
  published
    property Nombres: WideString read FNombres write FNombres;
    property Apellidos: WideString read FApellidos write FApellidos;
    property Sexo: WideString read FSexo write FSexo;
    property FechaNacimiento: WideString read FFechaNacimiento write FFechaNacimiento;
    property Cedula: WideString read FCedula write FCedula;
    property Nss: WideString read FNss write FNss;
    property Carnet: WideString read FCarnet write FCarnet;
    property TieneCobertura: WideString read FTieneCobertura write FTieneCobertura;
    property TipoPlan: WideString read FTipoPlan write FTipoPlan;
  end;



  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  PrestacionDetalle = class(TRemotable)
  private
    FCodigo: WideString;
    FDescripcion: WideString;
    FCantidad: Integer;
    FPrecioUnidad: WideString;
    FMonto: WideString;
    FMontoARS: WideString;
    FMontoAfiliado: WideString;
  published
    property Codigo: WideString read FCodigo write FCodigo;
    property Descripcion: WideString read FDescripcion write FDescripcion;
    property Cantidad: Integer read FCantidad write FCantidad;
    property PrecioUnidad: WideString read FPrecioUnidad write FPrecioUnidad;
    property Monto: WideString read FMonto write FMonto;
    property MontoARS: WideString read FMontoARS write FMontoARS;
    property MontoAfiliado: WideString read FMontoAfiliado write FMontoAfiliado;
  end;

  ArrayOfString = array of WideString;          { "http://tempuri.org/" }
  ArrayOfPrestacionesRemovidas = array of PrestacionesRemovidas;   { "http://tempuri.org/" }


  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  PrestacionesRemovidas = class(TRemotable)
  private
    FCodigo: WideString;
    FRemovido: Boolean;
  published
    property Codigo: WideString read FCodigo write FCodigo;
    property Removido: Boolean read FRemovido write FRemovido;
  end;

  ArrayOfDesglosePagoPorMes = array of DesglosePagoPorMes;   { "http://tempuri.org/" }


  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  DesglosePagoPorMes = class(TRemotable)
  private
    FAutorizacion: WideString;
    FReclamacion: WideString;
    FAfiliado: WideString;
    FNombreafiliado: WideString;
    FFecha: WideString;
    FDescripcionDiagnostico: WideString;
    FMonto: WideString;
  published
    property Autorizacion: WideString read FAutorizacion write FAutorizacion;
    property Reclamacion: WideString read FReclamacion write FReclamacion;
    property Afiliado: WideString read FAfiliado write FAfiliado;
    property Nombreafiliado: WideString read FNombreafiliado write FNombreafiliado;
    property Fecha: WideString read FFecha write FFecha;
    property DescripcionDiagnostico: WideString read FDescripcionDiagnostico write FDescripcionDiagnostico;
    property Monto: WideString read FMonto write FMonto;
  end;


  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // soapAction: http://tempuri.org/%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // binding   : WsServicioAutorizacionSoap
  // service   : WsServicioAutorizacion
  // port      : WsServicioAutorizacionSoap
  // URL       : http://172.16.30.65/WsRefYunen/WsReferenciaAutorizacion.asmx
  // ************************************************************************ //
  WsServicioAutorizacionSoap = interface(IInvokable)
  ['{061E269E-91A1-9212-1380-27E098730740}']
    function  GetPrestaciones(const CodigoWS: WideString): ArrayOfPrestacion; stdcall;
    procedure GetListadoDiagnosticos(const CodigoWS: WideString; out GetListadoDiagnosticosResult: ArrayOfDiagnostico; out MensajeErr: WideString); stdcall;
    procedure CrearNuevaTransacion(const CodigoWS: WideString; const TipoTransacion: WideString; out CrearNuevaTransacionResult: WideString; out MensajeErr: WideString); stdcall;
    procedure AsignarAfiliadoTransaccion(const CodigoWS: WideString; const DatoAfiliado: WideString; const TipoDato: WideString; const TransacionId: Integer; out AsignarAfiliadoTransaccionResult: Afiliado; out MensajeErr: WideString); stdcall;
    procedure ConsultarAfiliado(const CodigoWS: WideString; const DatoAfiliado: WideString; const TipoDato: WideString; out ConsultarAfiliadoResult: Afiliado; out MensajeErr: WideString); stdcall;
    procedure AgregarPrestacion(const CodigoWS: WideString; const CodigoPrestacion: WideString; const Cantidad: Integer; const Precio: Double; const TransacionId: WideString; out AgregarPrestacionResult: PrestacionDetalle; out MensajeErr: WideString); stdcall;
    procedure RemoverPrestacion(const CodigoWS: WideString; const CodigoPrestacion: ArrayOfString; const TransacionId: WideString; out RemoverPrestacionResult: ArrayOfPrestacionesRemovidas; out MensajeErr: WideString); stdcall;
    procedure CrearAutorizacion(const CodigoWS: WideString; const TransacionId: WideString; out CrearAutorizacionResult: WideString; out MensajeErr: WideString); stdcall;
    procedure DesglosePagosporMes(const CodigoWS: WideString; const FechaYYYYMMDD: WideString; out DesglosePagosporMesResult: ArrayOfDesglosePagoPorMes; out MensajeErr: WideString); stdcall;
    procedure AnularAutorizacion(const CodigoWS: WideString; const NumeroAutorizacion: WideString; const TipoServicio: WideString; out AnularAutorizacionResult: Boolean; out MensajeErr: WideString); stdcall;
  end;

function GetWsServicioAutorizacionSoap(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): WsServicioAutorizacionSoap;


implementation

function GetWsServicioAutorizacionSoap(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): WsServicioAutorizacionSoap;
const
//  defWSDL = Dm.vWSDL;                                                                  //'http://172.16.30.65/WsRefYunen/WsReferenciaAutorizacion.asmx?WSDL';
//  defURL  = Dm.vURLWSDL;                                                                   //'http://172.16.30.65/WsRefYunen/WsReferenciaAutorizacion.asmx';
  defSvc  = 'WsServicioAutorizacion';
  defPrt  = 'WsServicioAutorizacionSoap';
var
  RIO: THTTPRIO;
  defWSDL : String;
  defURL  : String;
begin
  defWSDL := Dm.vWSDL;                                                                  //'http://172.16.30.65/WsRefYunen/WsReferenciaAutorizacion.asmx?WSDL';
  defURL  := Dm.vURLWSDL;                                                                   //'http://172.16.30.65/WsRefYunen/WsReferenciaAutorizacion.asmx';
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as WsServicioAutorizacionSoap);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


initialization
  InvRegistry.RegisterInterface(TypeInfo(WsServicioAutorizacionSoap), 'http://tempuri.org/', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(WsServicioAutorizacionSoap), 'http://tempuri.org/%operationName%');
  InvRegistry.RegisterInvokeOptions(TypeInfo(WsServicioAutorizacionSoap), ioDocument);
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfPrestacion), 'http://tempuri.org/', 'ArrayOfPrestacion');
  RemClassRegistry.RegisterXSClass(Prestacion, 'http://tempuri.org/', 'Prestacion');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfDiagnostico), 'http://tempuri.org/', 'ArrayOfDiagnostico');
  RemClassRegistry.RegisterXSClass(Diagnostico, 'http://tempuri.org/', 'Diagnostico');
  RemClassRegistry.RegisterXSClass(Afiliado, 'http://tempuri.org/', 'Afiliado');
  RemClassRegistry.RegisterXSClass(PrestacionDetalle, 'http://tempuri.org/', 'PrestacionDetalle');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfString), 'http://tempuri.org/', 'ArrayOfString');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfPrestacionesRemovidas), 'http://tempuri.org/', 'ArrayOfPrestacionesRemovidas');
  RemClassRegistry.RegisterXSClass(PrestacionesRemovidas, 'http://tempuri.org/', 'PrestacionesRemovidas');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfDesglosePagoPorMes), 'http://tempuri.org/', 'ArrayOfDesglosePagoPorMes');
  RemClassRegistry.RegisterXSClass(DesglosePagoPorMes, 'http://tempuri.org/', 'DesglosePagoPorMes');

end.