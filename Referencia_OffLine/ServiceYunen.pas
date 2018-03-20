// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://servicios.miarsyunen.com/autorizacionesws/service.asmx?WSDL
// Encoding : utf-8
// Version  : 1.0
// (13/06/2015 02:00:01 p.m. - 1.33.2.5)
// ************************************************************************ //

unit ServiceYunen;

interface

uses InvokeRegistry, SOAPHTTPClient, Types, XSBuiltIns;

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
  // !:long            - "http://www.w3.org/2001/XMLSchema"



  // ************************************************************************ //
  // Namespace : http://servicios.miarsyunen.com:80/autorizacionesws/
  // soapAction: http://servicios.miarsyunen.com:80/autorizacionesws/%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // binding   : ServiceSoap
  // service   : Service
  // port      : ServiceSoap
  // URL       : http://servicios.miarsyunen.com:80/autorizacionesws/service.asmx
  // ************************************************************************ //
  ServiceSoap = interface(IInvokable)
  ['{52D23CE8-8EE2-52A1-5A12-58AFEB5D3403}']
    function  Test: WideString; stdcall;
    function  NuevaTransaccion(const TipoServicio: WideString; const CodigoPss: WideString; const TipoPss: WideString; const Clave: WideString): WideString; stdcall;
    function  AgregarPrestacion(const CodigoPrestacion: WideString; const Cantidad: Integer; const Precio: Double; const TransaccionID: WideString; const CodigoPss: WideString; const TipoPss: WideString; const Clave: WideString): WideString; stdcall;
    function  RemoverPrestacion(const CodigoPrestacion: WideString; const TransaccionID: Int64; const CodigoPss: WideString; const TipoPss: WideString; const Clave: WideString): WideString; stdcall;
    function  Descglose_Pagos_por_mes(const YYYY_MM_DD: WideString; const CodigoPss: WideString; const TipoPss: WideString; const Clave: WideString): WideString; stdcall;
    function  CrearAutorizacion(const TransaccionID: Integer; const CodigoPss: WideString; const TipoPss: WideString; const Clave: WideString): WideString; stdcall;
    function  PrestacionesAgregadas(const TransaccionID: Integer; const CodigoPss: WideString; const TipoPss: WideString; const Clave: WideString): WideString; stdcall;
    function  ConsultarAfiliado(const DatoAfiliado: WideString; const TipoDato: WideString; const CodigoPss: WideString; const TipoPss: WideString; const Clave: WideString): WideString; stdcall;
    function  AsignarAfiliadoTransaccion(const DatoAfiliado: WideString; const TipoDato: WideString; const TransaccionID: Integer; const CodigoPss: WideString; const TipoPss: WideString; const Clave: WideString): WideString; stdcall;
    function  ListadoDiagnosticos(const CodigoPss: WideString; const TipoPss: WideString; const Clave: WideString): WideString; stdcall;
    function  ListadoPrestacionesDisponibles(const CodigoPss: WideString; const TipoPss: WideString; const Clave: WideString): WideString; stdcall;
  end;

function GetServiceSoap(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): ServiceSoap;


implementation

function GetServiceSoap(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): ServiceSoap;
const
  defWSDL = 'http://servicios.miarsyunen.com/autorizacionesws/service.asmx?WSDL';
  defURL  = 'http://servicios.miarsyunen.com:80/autorizacionesws/service.asmx';
  defSvc  = 'Service';
  defPrt  = 'ServiceSoap';
var
  RIO: THTTPRIO;
begin
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
    Result := (RIO as ServiceSoap);
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
  InvRegistry.RegisterInterface(TypeInfo(ServiceSoap), 'http://servicios.miarsyunen.com:80/autorizacionesws/', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(ServiceSoap), 'http://servicios.miarsyunen.com:80/autorizacionesws/%operationName%');
  InvRegistry.RegisterInvokeOptions(TypeInfo(ServiceSoap), ioDocument);
end.