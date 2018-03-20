// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://j2ee.universal.com.do:7777/WebSvcUtils/WebSvcUtilsSoapHttpPort?WSDL
// Encoding : UTF-8
// Version  : 1.0
// (26/08/2016 01:52:26 p.m. - 1.33.2.5)
// ************************************************************************ //

unit WebSvcUtilsSoapHttpPort;

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
  // !:string          - "http://com/universal/WebSvcUtils.wsdl/types/"

  UtilsPrestadorObjBase = class;                { "http://com/universal/WebSvcUtils.wsdl/types/" }
  UtilsPrestadorObjUser = class;                { "http://com/universal/WebSvcUtils.wsdl/types/" }
  WebSvcUtilsUser_prcConsultarprestador_Out = class;   { "http://com/universal/WebSvcUtils.wsdl/types/" }



  // ************************************************************************ //
  // Namespace : http://com/universal/WebSvcUtils.wsdl/types/
  // ************************************************************************ //
  UtilsPrestadorObjBase = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // Namespace : http://com/universal/WebSvcUtils.wsdl/types/
  // ************************************************************************ //
  UtilsPrestadorObjUser = class(UtilsPrestadorObjBase)
  private
    Fcodsimon: WideString;
    Fnombre: WideString;
    Fcodigo: WideString;
  published
    property codsimon: WideString read Fcodsimon write Fcodsimon;
    property nombre: WideString read Fnombre write Fnombre;
    property codigo: WideString read Fcodigo write Fcodigo;
  end;



  // ************************************************************************ //
  // Namespace : http://com/universal/WebSvcUtils.wsdl/types/
  // ************************************************************************ //
  WebSvcUtilsUser_prcConsultarprestador_Out = class(TRemotable)
  private
    FoutdescmensajeOut: WideString;
    FoutprestadoresOut: UtilsPrestadorObjUser;
    FoutcodmensajeOut: WideString;
  public
    destructor Destroy; override;
  published
    property outdescmensajeOut: WideString read FoutdescmensajeOut write FoutdescmensajeOut;
    property outprestadoresOut: UtilsPrestadorObjUser read FoutprestadoresOut write FoutprestadoresOut;
    property outcodmensajeOut: WideString read FoutcodmensajeOut write FoutcodmensajeOut;
  end;


  // ************************************************************************ //
  // Namespace : http://com/universal/WebSvcUtils.wsdl
  // soapAction: http://com/universal/WebSvcUtils.wsdl/prcConsultarprestador
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // binding   : WebSvcUtilsSoapHttp
  // service   : WebSvcUtils
  // port      : WebSvcUtilsSoapHttpPort
  // URL       : http://j2ee.universal.com.do:7777/WebSvcUtils/WebSvcUtilsSoapHttpPort
  // ************************************************************************ //
  WebSvcUtils = interface(IInvokable)
  ['{EB6FF57B-54D0-7770-2AEF-A69B5C8BA5E7}']
    function  prcConsultarprestador(const inDescripcion: WideString): WebSvcUtilsUser_prcConsultarprestador_Out; stdcall;
  end;

function GetWebSvcUtils(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): WebSvcUtils;


implementation

function GetWebSvcUtils(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): WebSvcUtils;
const
  defWSDL = 'http://j2ee.universal.com.do:7777/WebSvcUtils/WebSvcUtilsSoapHttpPort?WSDL';
  defURL  = 'http://j2ee.universal.com.do:7777/WebSvcUtils/WebSvcUtilsSoapHttpPort';
  defSvc  = 'WebSvcUtils';
  defPrt  = 'WebSvcUtilsSoapHttpPort';
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
    Result := (RIO as WebSvcUtils);
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


destructor WebSvcUtilsUser_prcConsultarprestador_Out.Destroy;
begin
  if Assigned(FoutprestadoresOut) then
    FoutprestadoresOut.Free;
  inherited Destroy;
end;

initialization
  InvRegistry.RegisterInterface(TypeInfo(WebSvcUtils), 'http://com/universal/WebSvcUtils.wsdl', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(WebSvcUtils), 'http://com/universal/WebSvcUtils.wsdl/prcConsultarprestador');
  InvRegistry.RegisterInvokeOptions(TypeInfo(WebSvcUtils), ioDocument);
  RemClassRegistry.RegisterXSClass(UtilsPrestadorObjBase, 'http://com/universal/WebSvcUtils.wsdl/types/', 'UtilsPrestadorObjBase');
  RemClassRegistry.RegisterXSClass(UtilsPrestadorObjUser, 'http://com/universal/WebSvcUtils.wsdl/types/', 'UtilsPrestadorObjUser');
  RemClassRegistry.RegisterXSClass(WebSvcUtilsUser_prcConsultarprestador_Out, 'http://com/universal/WebSvcUtils.wsdl/types/', 'WebSvcUtilsUser_prcConsultarprestador_Out');

end.