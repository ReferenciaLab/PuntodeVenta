// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://172.16.30.65/WsConsultaRnc/WSdgii.svc?singleWsdl
// Encoding : utf-8
// Codegen  : [wfDebug,wfUseSerializerClassForAttrs]
// Version  : 1.0
// (25/04/2018 01:01:29 a.m. - 1.33.2.5)
// ************************************************************************ //

unit WSdgii;

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
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"

  ResultRnc            = class;                 { "http://schemas.datacontract.org/2004/07/consulta_dgii_csharp" }
  CompositeType        = class;                 { "http://schemas.datacontract.org/2004/07/WSDGII" }



  // ************************************************************************ //
  // Namespace : http://schemas.datacontract.org/2004/07/consulta_dgii_csharp
  // ************************************************************************ //
  ResultRnc = class(TRemotable)
  private
    FCategoria: WideString;
    FCedulaRnc: WideString;
    FEstado: WideString;
    FNombre: WideString;
    FNombreComercial: WideString;
    FRegimenDePago: WideString;
  published
    property Categoria: WideString read FCategoria write FCategoria;
    property CedulaRnc: WideString read FCedulaRnc write FCedulaRnc;
    property Estado: WideString read FEstado write FEstado;
    property Nombre: WideString read FNombre write FNombre;
    property NombreComercial: WideString read FNombreComercial write FNombreComercial;
    property RegimenDePago: WideString read FRegimenDePago write FRegimenDePago;
  end;



  // ************************************************************************ //
  // Namespace : http://schemas.datacontract.org/2004/07/WSDGII
  // ************************************************************************ //
  CompositeType = class(TRemotable)
  private
    FBoolValue: Boolean;
    FStringValue: WideString;
  published
    property BoolValue: Boolean read FBoolValue write FBoolValue;
    property StringValue: WideString read FStringValue write FStringValue;
  end;


  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // soapAction: http://tempuri.org/RNCDGII/%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // binding   : BasicHttpBinding_RNCDGII
  // service   : WSRnc
  // port      : BasicHttpBinding_RNCDGII
  // URL       : http://172.16.30.65/WsConsultaRnc/WSdgii.svc
  // ************************************************************************ //
  RNCDGII = interface(IInvokable)
  ['{4253A895-81FC-06DF-04F4-A1B97C4640AB}']
    function  ValidarRNC(const Rnc: WideString): ResultRnc; stdcall;
    function  GetData(const value: Integer): WideString; stdcall;
    function  GetDataUsingDataContract(const composite: CompositeType): CompositeType; stdcall;
  end;

function GetRNCDGII(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): RNCDGII;


implementation

function GetRNCDGII(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): RNCDGII;
const
  defWSDL = 'http://172.16.30.65/WsConsultaRnc/WSdgii.svc?singleWsdl';
  defURL  = 'http://172.16.30.65/WsConsultaRnc/WSdgii.svc';
  defSvc  = 'WSRnc';
  defPrt  = 'BasicHttpBinding_RNCDGII';
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
    Result := (RIO as RNCDGII);
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
  InvRegistry.RegisterInterface(TypeInfo(RNCDGII), 'http://tempuri.org/', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(RNCDGII), 'http://tempuri.org/RNCDGII/%operationName%');
  InvRegistry.RegisterInvokeOptions(TypeInfo(RNCDGII), ioDocument);
  RemClassRegistry.RegisterXSClass(ResultRnc, 'http://schemas.datacontract.org/2004/07/consulta_dgii_csharp', 'ResultRnc');
  RemClassRegistry.RegisterXSClass(CompositeType, 'http://schemas.datacontract.org/2004/07/WSDGII', 'CompositeType');

end.