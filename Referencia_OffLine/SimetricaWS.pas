// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://localhost:62814/SimetricaWS.asmx?WSDL
// Encoding : utf-8
// Version  : 1.0
// (30/09/2016 05:33:40 p.m. - 1.33.2.5)
// ************************************************************************ //

unit SimetricaWS;

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
  // !:string          - "http://www.w3.org/2001/XMLSchema"
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"
  // !:dateTime        - "http://www.w3.org/2001/XMLSchema"
  // !:double          - "http://www.w3.org/2001/XMLSchema"

  Error                = class;                 { "http://www.simetricaconsulting.com/webservices/dbaper/" }
  AfiliadoSM           = class;                 { "http://tempuri.org/" }
  CoberturaSM          = class;                 { "http://tempuri.org/" }
  CotizacionSM         = class;                 { "http://tempuri.org/" }
  Cobertura            = class;                 { "http://tempuri.org/" }
  ReclamacionSM        = class;                 { "http://tempuri.org/" }
  CancelacionSM        = class;                 { "http://tempuri.org/" }



  // ************************************************************************ //
  // Namespace : http://www.simetricaconsulting.com/webservices/dbaper/
  // ************************************************************************ //
  Error = class(TRemotable)
  private
    FDescipcion: WideString;
    FCodigoSalida: WideString;
    FValid: Boolean;
  published
    property Descipcion: WideString read FDescipcion write FDescipcion;
    property CodigoSalida: WideString read FCodigoSalida write FCodigoSalida;
    property Valid: Boolean read FValid write FValid;
  end;



  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  AfiliadoSM = class(TRemotable)
  private
    FErrorSM: Error;
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
    FFechaNacimiento: TXSDateTime;
    FSexo: WideString;
    FCodigoPlanBasico: Integer;
    FDescripcionPlanBasico: WideString;
    FCodigoPlanComplementario: Integer;
    FdescripcionPlanComplementario: WideString;
    FTipoComplementariedad: Integer;
  public
    destructor Destroy; override;
  published
    property ErrorSM: Error read FErrorSM write FErrorSM;
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
    property FechaNacimiento: TXSDateTime read FFechaNacimiento write FFechaNacimiento;
    property Sexo: WideString read FSexo write FSexo;
    property CodigoPlanBasico: Integer read FCodigoPlanBasico write FCodigoPlanBasico;
    property DescripcionPlanBasico: WideString read FDescripcionPlanBasico write FDescripcionPlanBasico;
    property CodigoPlanComplementario: Integer read FCodigoPlanComplementario write FCodigoPlanComplementario;
    property descripcionPlanComplementario: WideString read FdescripcionPlanComplementario write FdescripcionPlanComplementario;
    property TipoComplementariedad: Integer read FTipoComplementariedad write FTipoComplementariedad;
  end;

  ArrayOfCoberturaSM = array of CoberturaSM;    { "http://tempuri.org/" }


  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  CoberturaSM = class(TRemotable)
  private
    FFrecuencia: Integer;
    FServicio: Integer;
    FTipoCobertura: Integer;
    FCodigo: WideString;
    FDeducible: Double;
    FDescripcion: WideString;
    FMontoIndemizado: Double;
    FMontoNoCubierto: Double;
    FMontoGlosa: Double;
    FMotivoGlosa: Double;
    FMontoTotal: Double;
    FCodigoSalida: WideString;
    FError: WideString;
    FEstado: Boolean;
    FCodCobertura: WideString;
    FSimon: WideString;
    FCoberturaId: Integer;
    FLastUpdate: TXSDateTime;
  public
    destructor Destroy; override;
  published
    property Frecuencia: Integer read FFrecuencia write FFrecuencia;
    property Servicio: Integer read FServicio write FServicio;
    property TipoCobertura: Integer read FTipoCobertura write FTipoCobertura;
    property Codigo: WideString read FCodigo write FCodigo;
    property Deducible: Double read FDeducible write FDeducible;
    property Descripcion: WideString read FDescripcion write FDescripcion;
    property MontoIndemizado: Double read FMontoIndemizado write FMontoIndemizado;
    property MontoNoCubierto: Double read FMontoNoCubierto write FMontoNoCubierto;
    property MontoGlosa: Double read FMontoGlosa write FMontoGlosa;
    property MotivoGlosa: Double read FMotivoGlosa write FMotivoGlosa;
    property MontoTotal: Double read FMontoTotal write FMontoTotal;
    property CodigoSalida: WideString read FCodigoSalida write FCodigoSalida;
    property Error: WideString read FError write FError;
    property Estado: Boolean read FEstado write FEstado;
    property CodCobertura: WideString read FCodCobertura write FCodCobertura;
    property Simon: WideString read FSimon write FSimon;
    property CoberturaId: Integer read FCoberturaId write FCoberturaId;
    property LastUpdate: TXSDateTime read FLastUpdate write FLastUpdate;
  end;

  ArrayOfCobertura = array of Cobertura;        { "http://tempuri.org/" }


  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  CotizacionSM = class(TRemotable)
  private
    FNoReclamacion: Integer;
    FDiferenciaAfiliado: Double;
    FMontoArs: Double;
    FListaCoberturas: ArrayOfCobertura;
    FId: Integer;
    FNumeroSession: Integer;
    FYear: Integer;
    FMontoTotal: Double;
    FError: WideString;
  public
    destructor Destroy; override;
  published
    property NoReclamacion: Integer read FNoReclamacion write FNoReclamacion;
    property DiferenciaAfiliado: Double read FDiferenciaAfiliado write FDiferenciaAfiliado;
    property MontoArs: Double read FMontoArs write FMontoArs;
    property ListaCoberturas: ArrayOfCobertura read FListaCoberturas write FListaCoberturas;
    property Id: Integer read FId write FId;
    property NumeroSession: Integer read FNumeroSession write FNumeroSession;
    property Year: Integer read FYear write FYear;
    property MontoTotal: Double read FMontoTotal write FMontoTotal;
    property Error: WideString read FError write FError;
  end;



  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  Cobertura = class(TRemotable)
  private
    FFrecuencia: Integer;
    FServicio: Integer;
    FTipoCobertura: Integer;
    FCodigo: WideString;
    FDeducible: Double;
    FDescripcion: WideString;
    FMontoIndemizado: Double;
    FMontoNoCubierto: Double;
    FMontoGlosa: Double;
    FMotivoGlosa: Double;
    FMontoTotal: Double;
    FCodigoSalida: WideString;
    FError: WideString;
    FEstado: Boolean;
    FCodCobertura: WideString;
    FSimon: WideString;
    FCoberturaId: Integer;
    FLastUpdate: TXSDateTime;
  public
    destructor Destroy; override;
  published
    property Frecuencia: Integer read FFrecuencia write FFrecuencia;
    property Servicio: Integer read FServicio write FServicio;
    property TipoCobertura: Integer read FTipoCobertura write FTipoCobertura;
    property Codigo: WideString read FCodigo write FCodigo;
    property Deducible: Double read FDeducible write FDeducible;
    property Descripcion: WideString read FDescripcion write FDescripcion;
    property MontoIndemizado: Double read FMontoIndemizado write FMontoIndemizado;
    property MontoNoCubierto: Double read FMontoNoCubierto write FMontoNoCubierto;
    property MontoGlosa: Double read FMontoGlosa write FMontoGlosa;
    property MotivoGlosa: Double read FMotivoGlosa write FMotivoGlosa;
    property MontoTotal: Double read FMontoTotal write FMontoTotal;
    property CodigoSalida: WideString read FCodigoSalida write FCodigoSalida;
    property Error: WideString read FError write FError;
    property Estado: Boolean read FEstado write FEstado;
    property CodCobertura: WideString read FCodCobertura write FCodCobertura;
    property Simon: WideString read FSimon write FSimon;
    property CoberturaId: Integer read FCoberturaId write FCoberturaId;
    property LastUpdate: TXSDateTime read FLastUpdate write FLastUpdate;
  end;



  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  ReclamacionSM = class(TRemotable)
  private
    FNoReclamacion: Integer;
    FDiferenciaAfiliado: Double;
    FMontoArs: Double;
    FListaCoberturas: ArrayOfCobertura;
    FId: Integer;
    FNumeroSession: Integer;
    FYear: Integer;
    FMontoTotal: Double;
    FError: WideString;
  public
    destructor Destroy; override;
  published
    property NoReclamacion: Integer read FNoReclamacion write FNoReclamacion;
    property DiferenciaAfiliado: Double read FDiferenciaAfiliado write FDiferenciaAfiliado;
    property MontoArs: Double read FMontoArs write FMontoArs;
    property ListaCoberturas: ArrayOfCobertura read FListaCoberturas write FListaCoberturas;
    property Id: Integer read FId write FId;
    property NumeroSession: Integer read FNumeroSession write FNumeroSession;
    property Year: Integer read FYear write FYear;
    property MontoTotal: Double read FMontoTotal write FMontoTotal;
    property Error: WideString read FError write FError;
  end;



  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  CancelacionSM = class(TRemotable)
  private
    FEstado: Boolean;
    FMensaje: WideString;
    FCodigoSalida: WideString;
    FArsId: Integer;
    FSession: Int64;
  published
    property Estado: Boolean read FEstado write FEstado;
    property Mensaje: WideString read FMensaje write FMensaje;
    property CodigoSalida: WideString read FCodigoSalida write FCodigoSalida;
    property ArsId: Integer read FArsId write FArsId;
    property Session: Int64 read FSession write FSession;
  end;


  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // soapAction: http://tempuri.org/%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // binding   : SimetricaSoap
  // service   : Simetrica
  // port      : SimetricaSoap
  // URL       : http://localhost:62814/SimetricaWS.asmx
  // ************************************************************************ //
  SimetricaSoap = interface(IInvokable)
  ['{52328E1E-9500-6F42-74DB-59D16830C37B}']
    function  ValidaAfiliado(const codArs: Integer; const codAfiliado: Int64; const codProveedor: Int64; const CodDoctor: Int64): AfiliadoSM; stdcall;
    function  CotizacionPorCoberturas(const codArs: Integer; const coberturas: ArrayOfCoberturaSM; const codAfiliado: Int64; const codProveedor: Int64; const Complementariedad: Integer; const CodDoctor: Int64): CotizacionSM; stdcall;
    function  ReclamacionPorCoberturas(const codArs: Integer; const coberturas: ArrayOfCoberturaSM; const codAfiliado: Int64; const codProveedor: Int64; const Complementariedad: Integer; const CodDoctor: Int64): ReclamacionSM; stdcall;
    function  CancelarAutorizacion(const codArs: Integer; const codSession: Int64; const Comentario: WideString): CancelacionSM; stdcall;
  end;

function GetSimetricaSoap(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): SimetricaSoap;


implementation

function GetSimetricaSoap(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): SimetricaSoap;
const
  defWSDL = 'http://localhost:62814/SimetricaWS.asmx?WSDL';
  defURL  = 'http://localhost:62814/SimetricaWS.asmx';
  defSvc  = 'Simetrica';
  defPrt  = 'SimetricaSoap';
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
    Result := (RIO as SimetricaSoap);
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


destructor AfiliadoSM.Destroy;
begin
  if Assigned(FErrorSM) then
    FErrorSM.Free;
  if Assigned(FFechaNacimiento) then
    FFechaNacimiento.Free;
  inherited Destroy;
end;

destructor CoberturaSM.Destroy;
begin
  if Assigned(FLastUpdate) then
    FLastUpdate.Free;
  inherited Destroy;
end;

destructor CotizacionSM.Destroy;
var
  I: Integer;
begin
  for I := 0 to Length(FListaCoberturas)-1 do
    if Assigned(FListaCoberturas[I]) then
      FListaCoberturas[I].Free;
  SetLength(FListaCoberturas, 0);
  inherited Destroy;
end;

destructor Cobertura.Destroy;
begin
  if Assigned(FLastUpdate) then
    FLastUpdate.Free;
  inherited Destroy;
end;

destructor ReclamacionSM.Destroy;
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
  InvRegistry.RegisterInterface(TypeInfo(SimetricaSoap), 'http://tempuri.org/', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(SimetricaSoap), 'http://tempuri.org/%operationName%');
  InvRegistry.RegisterInvokeOptions(TypeInfo(SimetricaSoap), ioDocument);
  RemClassRegistry.RegisterXSClass(Error, 'http://www.simetricaconsulting.com/webservices/dbaper/', 'Error');
  RemClassRegistry.RegisterXSClass(AfiliadoSM, 'http://tempuri.org/', 'AfiliadoSM');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfCoberturaSM), 'http://tempuri.org/', 'ArrayOfCoberturaSM');
  RemClassRegistry.RegisterXSClass(CoberturaSM, 'http://tempuri.org/', 'CoberturaSM');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfCobertura), 'http://tempuri.org/', 'ArrayOfCobertura');
  RemClassRegistry.RegisterXSClass(CotizacionSM, 'http://tempuri.org/', 'CotizacionSM');
  RemClassRegistry.RegisterXSClass(Cobertura, 'http://tempuri.org/', 'Cobertura');
  RemClassRegistry.RegisterXSClass(ReclamacionSM, 'http://tempuri.org/', 'ReclamacionSM');
  RemClassRegistry.RegisterXSClass(CancelacionSM, 'http://tempuri.org/', 'CancelacionSM');

end.