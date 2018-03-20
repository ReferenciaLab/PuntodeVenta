// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://localhost/WSReferencia/ReferenciaWebService.asmx?WSDL
// Encoding : utf-8
// Version  : 1.0
// (25/02/2010 07:48:18 p.m. - 1.33.2.5)
// ************************************************************************ //

unit ReferenciaWebService;

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
  // !:int             - "http://www.w3.org/2001/XMLSchema"
  // !:long            - "http://www.w3.org/2001/XMLSchema"
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"
  // !:string          - "http://www.w3.org/2001/XMLSchema"
  // !:double          - "http://www.w3.org/2001/XMLSchema"

  crefCancelacion      = class;                 { "http://tempuri.org/" }
  crefCobertura        = class;                 { "http://tempuri.org/" }
  crefAutorizacion     = class;                 { "http://tempuri.org/" }
  crefAseguradora      = class;                 { "http://tempuri.org/" }
  crefAfiliado         = class;                 { "http://tempuri.org/" }
  crefProvedore        = class;                 { "http://tempuri.org/" }



  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  crefCancelacion = class(TRemotable)
  private
    FEstado: Boolean;
    FCodigoSalida: WideString;
    FArsId: Integer;
    FSession: Int64;
    FMensaje: WideString;
  published
    property Estado: Boolean read FEstado write FEstado;
    property CodigoSalida: WideString read FCodigoSalida write FCodigoSalida;
    property ArsId: Integer read FArsId write FArsId;
    property Session: Int64 read FSession write FSession;
    property Mensaje: WideString read FMensaje write FMensaje;
  end;

  ArrayOfCrefCobertura = array of crefCobertura;   { "http://tempuri.org/" }


  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  crefCobertura = class(TRemotable)
  private
    FCodigo: WideString;
    FDeducible: Double;
    FDescripcion: WideString;
    FMontoIndemizado: Double;
    FMontoNoCubierto: Double;
    FMontoTotal: Double;
    FCodigoSalida: WideString;
    FError: WideString;
    FMensaje: WideString;
  published
    property Codigo: WideString read FCodigo write FCodigo;
    property Deducible: Double read FDeducible write FDeducible;
    property Descripcion: WideString read FDescripcion write FDescripcion;
    property MontoIndemizado: Double read FMontoIndemizado write FMontoIndemizado;
    property MontoNoCubierto: Double read FMontoNoCubierto write FMontoNoCubierto;
    property MontoTotal: Double read FMontoTotal write FMontoTotal;
    property CodigoSalida: WideString read FCodigoSalida write FCodigoSalida;
    property Error: WideString read FError write FError;
    property Mensaje: WideString read FMensaje write FMensaje;
  end;



  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  crefAutorizacion = class(TRemotable)
  private
    FNoReclamacion: Integer;
    FDiferenciaAfiliado: Double;
    FMontoArs: Double;
    FListaCoberturas: ArrayOfCrefCobertura;
    FId: Integer;
    FNumeroSession: Integer;
    FYear: Integer;
    FMontoTotal: Double;
    FMensaje: WideString;
  public
    destructor Destroy; override;
  published
    property NoReclamacion: Integer read FNoReclamacion write FNoReclamacion;
    property DiferenciaAfiliado: Double read FDiferenciaAfiliado write FDiferenciaAfiliado;
    property MontoArs: Double read FMontoArs write FMontoArs;
    property ListaCoberturas: ArrayOfCrefCobertura read FListaCoberturas write FListaCoberturas;
    property Id: Integer read FId write FId;
    property NumeroSession: Integer read FNumeroSession write FNumeroSession;
    property Year: Integer read FYear write FYear;
    property MontoTotal: Double read FMontoTotal write FMontoTotal;
    property Mensaje: WideString read FMensaje write FMensaje;
  end;

  ArrayOfCrefAseguradora = array of crefAseguradora;   { "http://tempuri.org/" }


  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  crefAseguradora = class(TRemotable)
  private
    FCodigo: WideString;
    FNombre: WideString;
    FUrl: WideString;
    FMensaje: WideString;
  published
    property Codigo: WideString read FCodigo write FCodigo;
    property Nombre: WideString read FNombre write FNombre;
    property Url: WideString read FUrl write FUrl;
    property Mensaje: WideString read FMensaje write FMensaje;
  end;



  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  crefAfiliado = class(TRemotable)
  private
    FNombre: WideString;
    FCedula: WideString;
    FCodigo: WideString;
    FCodigoSalida: WideString;
    FEstado: Boolean;
    FTipoPlan: WideString;
    FPasaporte: WideString;
    FPrimerNombre: WideString;
    FSegundoNombre: WideString;
    FPrimerApellido: WideString;
    FSegundoApellido: WideString;
    FCodigoAsegurado: Int64;
    FMensaje: WideString;
  published
    property Nombre: WideString read FNombre write FNombre;
    property Cedula: WideString read FCedula write FCedula;
    property Codigo: WideString read FCodigo write FCodigo;
    property CodigoSalida: WideString read FCodigoSalida write FCodigoSalida;
    property Estado: Boolean read FEstado write FEstado;
    property TipoPlan: WideString read FTipoPlan write FTipoPlan;
    property Pasaporte: WideString read FPasaporte write FPasaporte;
    property PrimerNombre: WideString read FPrimerNombre write FPrimerNombre;
    property SegundoNombre: WideString read FSegundoNombre write FSegundoNombre;
    property PrimerApellido: WideString read FPrimerApellido write FPrimerApellido;
    property SegundoApellido: WideString read FSegundoApellido write FSegundoApellido;
    property CodigoAsegurado: Int64 read FCodigoAsegurado write FCodigoAsegurado;
    property Mensaje: WideString read FMensaje write FMensaje;
  end;



  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  crefProvedore = class(TRemotable)
  private
    FIdProveedor: Integer;
    FCodigo: WideString;
    FNombre: WideString;
    FEstado: Boolean;
    FTipo: WideString;
    FCodigoSalida: WideString;
    FMensaje: WideString;
  published
    property IdProveedor: Integer read FIdProveedor write FIdProveedor;
    property Codigo: WideString read FCodigo write FCodigo;
    property Nombre: WideString read FNombre write FNombre;
    property Estado: Boolean read FEstado write FEstado;
    property Tipo: WideString read FTipo write FTipo;
    property CodigoSalida: WideString read FCodigoSalida write FCodigoSalida;
    property Mensaje: WideString read FMensaje write FMensaje;
  end;


  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // soapAction: http://tempuri.org/%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // binding   : TReferenciaWebServiceSoap
  // service   : TReferenciaWebService
  // port      : TReferenciaWebServiceSoap
  // URL       : http://localhost/WSReferencia/ReferenciaWebService.asmx
  // ************************************************************************ //
  TReferenciaWebServiceSoap = interface(IInvokable)
  ['{3B2B3597-F797-ECC2-C8C5-9714F5911B79}']
    function  CancelarAutorizacion(const vCodArs: Integer; const vNumeroSession: Int64): crefCancelacion; stdcall;
    function  CotizacionPorCoberturas(const vCodArs: Integer; const vCoberturas: ArrayOfCrefCobertura; const vCodAfiliado: Int64; const vCodProveedor: Int64): crefAutorizacion; stdcall;
    function  CotizacionPorMonto(const vCodArs: Integer; const vMontoTotal: Double; const vCodAfiliado: Int64; const vCodProveedor: Int64): crefAutorizacion; stdcall;
    function  GetAseguradoras: ArrayOfCrefAseguradora; stdcall;
    function  GetCoberturas(const vCodArs: Integer; const vCodProveedor: Int64): ArrayOfCrefCobertura; stdcall;
    function  ReclamacionPorCoberturas(const vCodArs: Integer; const vCoberturas: ArrayOfCrefCobertura; const vCodAfiliado: Int64; const vCodProveedor: Int64): crefAutorizacion; stdcall;
    function  ReclamacionPorMonto(const vCodArs: Integer; const vMontoTotal: Double; const vCodAfiliado: Int64; const vCodProveedor: Int64): crefAutorizacion; stdcall;
    function  ValidaAfiliado(const vCodArs: Integer; const vCodAfiliado: Int64; const vCodProveedor: Int64): crefAfiliado; stdcall;
    function  ValidaProveedor(const vCodArs: Integer; const vCodProveedor: Int64): crefProvedore; stdcall;
  end;

function GetTReferenciaWebServiceSoap(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): TReferenciaWebServiceSoap;


implementation

function GetTReferenciaWebServiceSoap(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): TReferenciaWebServiceSoap;
const
  defWSDL = 'http://localhost/WSReferencia/ReferenciaWebService.asmx?WSDL';
  defURL  = 'http://localhost/WSReferencia/ReferenciaWebService.asmx';
  defSvc  = 'TReferenciaWebService';
  defPrt  = 'TReferenciaWebServiceSoap';
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
    Result := (RIO as TReferenciaWebServiceSoap);
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


destructor crefAutorizacion.Destroy;
var
  I: Integer;
begin
  for I := 0 to Length(FListaCoberturas)-1 do
    if Assigned(FListaCoberturas[I]) then
      FListaCoberturas[I].Free;
  SetLength(FListaCoberturas, 0);
  inherited Destroy;
end;

initialization
  InvRegistry.RegisterInterface(TypeInfo(TReferenciaWebServiceSoap), 'http://tempuri.org/', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(TReferenciaWebServiceSoap), 'http://tempuri.org/%operationName%');
  RemClassRegistry.RegisterXSClass(crefCancelacion, 'http://tempuri.org/', 'crefCancelacion');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfCrefCobertura), 'http://tempuri.org/', 'ArrayOfCrefCobertura');
  RemClassRegistry.RegisterXSClass(crefCobertura, 'http://tempuri.org/', 'crefCobertura');
  RemClassRegistry.RegisterXSClass(crefAutorizacion, 'http://tempuri.org/', 'crefAutorizacion');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfCrefAseguradora), 'http://tempuri.org/', 'ArrayOfCrefAseguradora');
  RemClassRegistry.RegisterXSClass(crefAseguradora, 'http://tempuri.org/', 'crefAseguradora');
  RemClassRegistry.RegisterXSClass(crefAfiliado, 'http://tempuri.org/', 'crefAfiliado');
  RemClassRegistry.RegisterXSClass(crefProvedore, 'http://tempuri.org/', 'crefProvedore');
  InvRegistry.RegisterInvokeOptions(TypeInfo(TReferenciaWebServiceSoap), ioDocument);
end.
