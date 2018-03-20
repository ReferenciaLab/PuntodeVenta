// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : https://www.universal.com.do/webservice_prueba/Ws_prueba?WSDL
// Encoding : UTF-8
// Codegen  : [wfDebug,wfUseSerializerClassForAttrs,wfGenTrueGUIDs]
// Version  : 1.0
// (26/06/2009 11:53:25 a.m. - 1.33.2.5)
// ************************************************************************ //

unit Ws_prueba;

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
  // !:dateTime        - "http://www.w3.org/2001/XMLSchema"
  // !:decimal         - "http://www.w3.org/2001/XMLSchema"
  // !:string          - "http://www.w3.org/2001/XMLSchema"
  // !:ws_prueba_Ws_pruebaImpl_retornoOut_Out - "http://ws-prueba/Ws_prueba.xsd"
  // !:ws_prueba_ArregloList - "http://ws-prueba/Ws_prueba.xsd"


  // ************************************************************************ //
  // Namespace : ws_prueba
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : rpc
  // binding   : Ws_pruebaBinding
  // service   : ws_prueba
  // port      : Ws_pruebaPort
  // URL       : https://www.universal.com.do/webservice_prueba/Ws_prueba
  // ************************************************************************ //
  Ws_pruebaPortType = interface(IInvokable)
  ['{BCABD618-1C89-45B7-A675-61DDB644448A}']
//    function  retornoOut(const dfecha: TXSDateTime; const nnumero: TXSDecimal; const cdescripcion: WideString) :  stdcall;
//    function  retornoArreglo(const dfecha: TXSDateTime; const nnumero: TXSDecimal; const cdescripcion: WideString): stdcall;
  end;

function GetWs_pruebaPortType(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): Ws_pruebaPortType;


implementation

function GetWs_pruebaPortType(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): Ws_pruebaPortType;
const
  defWSDL = 'https://www.universal.com.do/webservice_prueba/Ws_prueba?WSDL';
  defURL  = 'https://www.universal.com.do/webservice_prueba/Ws_prueba';
  defSvc  = 'ws_prueba';
  defPrt  = 'Ws_pruebaPort';
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
    Result := (RIO as Ws_pruebaPortType);
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
  InvRegistry.RegisterInterface(TypeInfo(Ws_pruebaPortType), 'ws_prueba', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(Ws_pruebaPortType), '');

end.