// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://localhost:8081/WsRefSenasa/SenasaRefWS.asmx?WSDL
// Encoding : utf-8
// Version  : 1.0
// (29/10/2012 06:06:51 p.m. - 1.33.2.5)
// ************************************************************************ //

unit SenasaRefWS;

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
  // !:dateTime        - "http://www.w3.org/2001/XMLSchema"
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"

  crefsAfiliado        = class;                 { "http://tempuri.org/" }
  crefsProcedimientos  = class;                 { "http://tempuri.org/" }
  crefsAutorizacionLaboratorio = class;         { "http://tempuri.org/" }

  { "http://tempuri.org/" }
  crefsEstatusProcedimiento = (EnCobertura, NoCobertura, CodigoInvalido, ProcedimientoYaRealizado);


  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  crefsAfiliado = class(TRemotable)
  private
    FNSS: WideString;
    FCDG: Integer;
    FCEDULA: WideString;
    FPSS: Integer;
    FNombre: WideString;
    FRegimen: WideString;
    FRegimenDesc: WideString;
    FEstatus: WideString;
    FEstatusDesc: WideString;
    FCodMsg: Integer;
    FCodMsgDesc: WideString;
  published
    property NSS: WideString read FNSS write FNSS;
    property CDG: Integer read FCDG write FCDG;
    property CEDULA: WideString read FCEDULA write FCEDULA;
    property PSS: Integer read FPSS write FPSS;
    property Nombre: WideString read FNombre write FNombre;
    property Regimen: WideString read FRegimen write FRegimen;
    property RegimenDesc: WideString read FRegimenDesc write FRegimenDesc;
    property Estatus: WideString read FEstatus write FEstatus;
    property EstatusDesc: WideString read FEstatusDesc write FEstatusDesc;
    property CodMsg: Integer read FCodMsg write FCodMsg;
    property CodMsgDesc: WideString read FCodMsgDesc write FCodMsgDesc;
  end;

  ArrayOfCrefsProcedimientos = array of crefsProcedimientos;   { "http://tempuri.org/" }


  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  crefsProcedimientos = class(TRemotable)
  private
    FSIMON: WideString;
    FCUBS: WideString;
    FSubGrupo: WideString;
    FDescripcion: WideString;
    FTarifa: Double;
    FCoPago: Double;
    FEstatus: crefsEstatusProcedimiento;
    FEstatusDescripcion: WideString;
  published
    property SIMON: WideString read FSIMON write FSIMON;
    property CUBS: WideString read FCUBS write FCUBS;
    property SubGrupo: WideString read FSubGrupo write FSubGrupo;
    property Descripcion: WideString read FDescripcion write FDescripcion;
    property Tarifa: Double read FTarifa write FTarifa;
    property CoPago: Double read FCoPago write FCoPago;
    property Estatus: crefsEstatusProcedimiento read FEstatus write FEstatus;
    property EstatusDescripcion: WideString read FEstatusDescripcion write FEstatusDescripcion;
  end;



  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  crefsAutorizacionLaboratorio = class(TRemotable)
  private
    FNAP: WideString;
    FContrato: Integer;
    FRegimen: Integer;
    FPrestadorCDG: Integer;
    FPrestadorTipo: Integer;
    FFechaAutorizacion: TXSDateTime;
    FNSS: WideString;
    FAccidenteTransito: Boolean;
    FDiagnostico: WideString;
    FMontoAutorizado: Double;
    FValorCopago: Double;
    FListaProcedimientos: ArrayOfCrefsProcedimientos;
  public
    destructor Destroy; override;
  published
    property NAP: WideString read FNAP write FNAP;
    property Contrato: Integer read FContrato write FContrato;
    property Regimen: Integer read FRegimen write FRegimen;
    property PrestadorCDG: Integer read FPrestadorCDG write FPrestadorCDG;
    property PrestadorTipo: Integer read FPrestadorTipo write FPrestadorTipo;
    property FechaAutorizacion: TXSDateTime read FFechaAutorizacion write FFechaAutorizacion;
    property NSS: WideString read FNSS write FNSS;
    property AccidenteTransito: Boolean read FAccidenteTransito write FAccidenteTransito;
    property Diagnostico: WideString read FDiagnostico write FDiagnostico;
    property MontoAutorizado: Double read FMontoAutorizado write FMontoAutorizado;
    property ValorCopago: Double read FValorCopago write FValorCopago;
    property ListaProcedimientos: ArrayOfCrefsProcedimientos read FListaProcedimientos write FListaProcedimientos;
  end;


  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // soapAction: http://tempuri.org/%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // binding   : TSenasaRefWSSoap
  // service   : TSenasaRefWS
  // port      : TSenasaRefWSSoap
  // URL       : http://127.0.0.1:8081/WsRefSenasa/SenasaRefWS.asmx
  // ************************************************************************ //
  TSenasaRefWSSoap = interface(IInvokable)
  ['{ACD20562-A88C-A62F-CDE4-C6789C6AA633}']
    function  Validar(const vCedula: WideString; const vUsuarioID: WideString; const vPassword: WideString): WideString; stdcall;
    function  ConsultarAfiliado(const vTipoID: Integer; const vID: WideString): crefsAfiliado; stdcall;
    function  AgregarProcedimientos(const vNSS: WideString; const vRegimen: Integer; const vContrato: Integer; const vArrProcedimientos: ArrayOfCrefsProcedimientos): crefsAutorizacionLaboratorio; stdcall;
    function  RemoverProcedimiento(const vProcedimiento: crefsProcedimientos): crefsAutorizacionLaboratorio; stdcall;
    function  RemoverProcedimientoAll(const vAuthLab: crefsAutorizacionLaboratorio): crefsAutorizacionLaboratorio; stdcall;
    function  Aceptar(const vAuthLab: crefsAutorizacionLaboratorio): crefsAutorizacionLaboratorio; stdcall;
    function  Anular(const vNota: WideString; const vNap: WideString): crefsAutorizacionLaboratorio; stdcall;
  end;

function GetTSenasaRefWSSoap(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): TSenasaRefWSSoap;


implementation

function GetTSenasaRefWSSoap(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): TSenasaRefWSSoap;
const
  defWSDL = 'http://localhost:8081/WsRefSenasa/SenasaRefWS.asmx?WSDL';
  defURL  = 'http://127.0.0.1:8081/WsRefSenasa/SenasaRefWS.asmx';
  defSvc  = 'TSenasaRefWS';
  defPrt  = 'TSenasaRefWSSoap';
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
    Result := (RIO as TSenasaRefWSSoap);
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


destructor crefsAutorizacionLaboratorio.Destroy;
var
  I: Integer;
begin
  for I := 0 to Length(FListaProcedimientos)-1 do
    if Assigned(FListaProcedimientos[I]) then
      FListaProcedimientos[I].Free;
  SetLength(FListaProcedimientos, 0);
  if Assigned(FFechaAutorizacion) then
    FFechaAutorizacion.Free;
  inherited Destroy;
end;

initialization
  InvRegistry.RegisterInterface(TypeInfo(TSenasaRefWSSoap), 'http://tempuri.org/', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(TSenasaRefWSSoap), 'http://tempuri.org/%operationName%');
  InvRegistry.RegisterInvokeOptions(TypeInfo(TSenasaRefWSSoap), ioDocument);
  RemClassRegistry.RegisterXSInfo(TypeInfo(crefsEstatusProcedimiento), 'http://tempuri.org/', 'crefsEstatusProcedimiento');
  RemClassRegistry.RegisterXSClass(crefsAfiliado, 'http://tempuri.org/', 'crefsAfiliado');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfCrefsProcedimientos), 'http://tempuri.org/', 'ArrayOfCrefsProcedimientos');
  RemClassRegistry.RegisterXSClass(crefsProcedimientos, 'http://tempuri.org/', 'crefsProcedimientos');
  RemClassRegistry.RegisterXSClass(crefsAutorizacionLaboratorio, 'http://tempuri.org/', 'crefsAutorizacionLaboratorio');

end.