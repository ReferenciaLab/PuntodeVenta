// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://172.16.30.65/WsPalicTest/Palic.asmx?WSDL
// Encoding : utf-8
// Version  : 1.0
// (06/10/2016 12:40:38 p.m. - 1.33.2.5)
// ************************************************************************ //

unit Palic;

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
  // !:long            - "http://www.w3.org/2001/XMLSchema"
  // !:int             - "http://www.w3.org/2001/XMLSchema"
  // !:double          - "http://www.w3.org/2001/XMLSchema"
  // !:short           - "http://www.w3.org/2001/XMLSchema"
  // !:dateTime        - "http://www.w3.org/2001/XMLSchema"

  UsuarioP             = class;                 { "http://tempuri.org/" }
  AfiliadoP            = class;                 { "http://tempuri.org/" }
  DiagnosticoP         = class;                 { "http://tempuri.org/" }
  ConsultaP            = class;                 { "http://tempuri.org/" }
  CoberturaP           = class;                 { "http://tempuri.org/" }
  ReclamacionP         = class;                 { "http://tempuri.org/" }
  CancelacionP         = class;                 { "http://tempuri.org/" }
  Consulta_ReclamacionP = class;                { "http://tempuri.org/" }
  Remitentes           = class;                 { "http://tempuri.org/" }



  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  UsuarioP = class(TRemotable)
  private
    FTipo_Plan: WideString;
    FTipo_Prestador: WideString;
    FTipo_Proveedor: WideString;
    FCod_Prestador: Int64;
    FVal_Prestador: WideString;
  published
    property Tipo_Plan: WideString read FTipo_Plan write FTipo_Plan;
    property Tipo_Prestador: WideString read FTipo_Prestador write FTipo_Prestador;
    property Tipo_Proveedor: WideString read FTipo_Proveedor write FTipo_Proveedor;
    property Cod_Prestador: Int64 read FCod_Prestador write FCod_Prestador;
    property Val_Prestador: WideString read FVal_Prestador write FVal_Prestador;
  end;



  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  AfiliadoP = class(TRemotable)
  private
    FSexo: WideString;
    FEdad: Integer;
    FTitular_Dep: WideString;
    FCedula: WideString;
    FNombre: WideString;
    FNumero_Session: WideString;
    FTipo_Plan: WideString;
    FVal_Afiliado: WideString;
  published
    property Sexo: WideString read FSexo write FSexo;
    property Edad: Integer read FEdad write FEdad;
    property Titular_Dep: WideString read FTitular_Dep write FTitular_Dep;
    property Cedula: WideString read FCedula write FCedula;
    property Nombre: WideString read FNombre write FNombre;
    property Numero_Session: WideString read FNumero_Session write FNumero_Session;
    property Tipo_Plan: WideString read FTipo_Plan write FTipo_Plan;
    property Val_Afiliado: WideString read FVal_Afiliado write FVal_Afiliado;
  end;



  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  DiagnosticoP = class(TRemotable)
  private
    FCodigo: WideString;
    FNombre: WideString;
  published
    property Codigo: WideString read FCodigo write FCodigo;
    property Nombre: WideString read FNombre write FNombre;
  end;

  ArrayOfCoberturaP = array of CoberturaP;      { "http://tempuri.org/" }


  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  ConsultaP = class(TRemotable)
  private
    FCod_Respuesta: WideString;
    FTotal_Monto_Reclamado: Double;
    FTotal_Monto_Pagado: Double;
    FListaCoberturas: ArrayOfCoberturaP;
  public
    destructor Destroy; override;
  published
    property Cod_Respuesta: WideString read FCod_Respuesta write FCod_Respuesta;
    property Total_Monto_Reclamado: Double read FTotal_Monto_Reclamado write FTotal_Monto_Reclamado;
    property Total_Monto_Pagado: Double read FTotal_Monto_Pagado write FTotal_Monto_Pagado;
    property ListaCoberturas: ArrayOfCoberturaP read FListaCoberturas write FListaCoberturas;
  end;



  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  CoberturaP = class(TRemotable)
  private
    FCod_Cobertura: WideString;
    FDesc_Cobertura: WideString;
    FCantidad_Cobertura: Smallint;
    FMonto_Reclamado: Double;
    FMonto_Pagado: Double;
    FDeducible: Double;
    FPorc_Coaseguro: Double;
    FCod_Resp: WideString;
    FDesc_Resp: WideString;
  published
    property Cod_Cobertura: WideString read FCod_Cobertura write FCod_Cobertura;
    property Desc_Cobertura: WideString read FDesc_Cobertura write FDesc_Cobertura;
    property Cantidad_Cobertura: Smallint read FCantidad_Cobertura write FCantidad_Cobertura;
    property Monto_Reclamado: Double read FMonto_Reclamado write FMonto_Reclamado;
    property Monto_Pagado: Double read FMonto_Pagado write FMonto_Pagado;
    property Deducible: Double read FDeducible write FDeducible;
    property Porc_Coaseguro: Double read FPorc_Coaseguro write FPorc_Coaseguro;
    property Cod_Resp: WideString read FCod_Resp write FCod_Resp;
    property Desc_Resp: WideString read FDesc_Resp write FDesc_Resp;
  end;



  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  ReclamacionP = class(TRemotable)
  private
    FCod_Respuesta: WideString;
    FNum_Reclamacion: WideString;
    FTotal_Monto_Paciente: Double;
    FTotal_Monto_Reclamado: Double;
    FTotal_Monto_Pagado: Double;
    FListaCoberturas: ArrayOfCoberturaP;
  public
    destructor Destroy; override;
  published
    property Cod_Respuesta: WideString read FCod_Respuesta write FCod_Respuesta;
    property Num_Reclamacion: WideString read FNum_Reclamacion write FNum_Reclamacion;
    property Total_Monto_Paciente: Double read FTotal_Monto_Paciente write FTotal_Monto_Paciente;
    property Total_Monto_Reclamado: Double read FTotal_Monto_Reclamado write FTotal_Monto_Reclamado;
    property Total_Monto_Pagado: Double read FTotal_Monto_Pagado write FTotal_Monto_Pagado;
    property ListaCoberturas: ArrayOfCoberturaP read FListaCoberturas write FListaCoberturas;
  end;



  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  CancelacionP = class(TRemotable)
  private
    FCod_Respuesta: WideString;
  published
    property Cod_Respuesta: WideString read FCod_Respuesta write FCod_Respuesta;
  end;



  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  Consulta_ReclamacionP = class(TRemotable)
  private
    FNum_Afiliado: Double;
    FNombre_Paciente: WideString;
    FEdad: WideString;
    FSexo: WideString;
    FTipo_Seguro: WideString;
    FFecha_Inscripcion: TXSDateTime;
    FNum_Documento: WideString;
    FTipo_Beneficiario: WideString;
    FTipo_Doctor: WideString;
    FCod_Doctor: Double;
    FNombre_Doctor: WideString;
    FCod_Diagnostico: WideString;
    FDesc_Diagnostico: WideString;
    FTotal_Monto_Reclamado: Double;
    FTotal_Monto_Pagado: Double;
    FTotal_Monto_Afiliado: Double;
    FNum_Session: Double;
    FDesc_Estatus: WideString;
    FCod_Estatus: WideString;
    FDesc_Cancelacion: WideString;
    F_x005F_x003A_B6: WideString;
    F_x005F_x003A_B5: WideString;
    F_x005F_x003A_B4: WideString;
    FFecha_Reclamacion: TXSDateTime;
    FUsuario: WideString;
    F_x005F_x003A_B1: WideString;
    FListaCoberturas: ArrayOfCoberturaP;
  public
    destructor Destroy; override;
  published
    property Num_Afiliado: Double read FNum_Afiliado write FNum_Afiliado;
    property Nombre_Paciente: WideString read FNombre_Paciente write FNombre_Paciente;
    property Edad: WideString read FEdad write FEdad;
    property Sexo: WideString read FSexo write FSexo;
    property Tipo_Seguro: WideString read FTipo_Seguro write FTipo_Seguro;
    property Fecha_Inscripcion: TXSDateTime read FFecha_Inscripcion write FFecha_Inscripcion;
    property Num_Documento: WideString read FNum_Documento write FNum_Documento;
    property Tipo_Beneficiario: WideString read FTipo_Beneficiario write FTipo_Beneficiario;
    property Tipo_Doctor: WideString read FTipo_Doctor write FTipo_Doctor;
    property Cod_Doctor: Double read FCod_Doctor write FCod_Doctor;
    property Nombre_Doctor: WideString read FNombre_Doctor write FNombre_Doctor;
    property Cod_Diagnostico: WideString read FCod_Diagnostico write FCod_Diagnostico;
    property Desc_Diagnostico: WideString read FDesc_Diagnostico write FDesc_Diagnostico;
    property Total_Monto_Reclamado: Double read FTotal_Monto_Reclamado write FTotal_Monto_Reclamado;
    property Total_Monto_Pagado: Double read FTotal_Monto_Pagado write FTotal_Monto_Pagado;
    property Total_Monto_Afiliado: Double read FTotal_Monto_Afiliado write FTotal_Monto_Afiliado;
    property Num_Session: Double read FNum_Session write FNum_Session;
    property Desc_Estatus: WideString read FDesc_Estatus write FDesc_Estatus;
    property Cod_Estatus: WideString read FCod_Estatus write FCod_Estatus;
    property Desc_Cancelacion: WideString read FDesc_Cancelacion write FDesc_Cancelacion;
    property _x005F_x003A_B6: WideString read F_x005F_x003A_B6 write F_x005F_x003A_B6;
    property _x005F_x003A_B5: WideString read F_x005F_x003A_B5 write F_x005F_x003A_B5;
    property _x005F_x003A_B4: WideString read F_x005F_x003A_B4 write F_x005F_x003A_B4;
    property Fecha_Reclamacion: TXSDateTime read FFecha_Reclamacion write FFecha_Reclamacion;
    property Usuario: WideString read FUsuario write FUsuario;
    property _x005F_x003A_B1: WideString read F_x005F_x003A_B1 write F_x005F_x003A_B1;
    property ListaCoberturas: ArrayOfCoberturaP read FListaCoberturas write FListaCoberturas;
  end;

  ArrayOfRemitentes = array of Remitentes;      { "http://tempuri.org/" }


  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  Remitentes = class(TRemotable)
  private
    Fcodigo: WideString;
    Fnombre: WideString;
    FTipoRemitente: WideString;
  published
    property codigo: WideString read Fcodigo write Fcodigo;
    property nombre: WideString read Fnombre write Fnombre;
    property TipoRemitente: WideString read FTipoRemitente write FTipoRemitente;
  end;


  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // soapAction: http://tempuri.org/%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // binding   : PalicSoap
  // service   : Palic
  // port      : PalicSoap
  // URL       : http://172.16.30.65/WsPalicTest/Palic.asmx
  // ************************************************************************ //
  PalicSoap = interface(IInvokable)
  ['{9A05F4C2-3611-48D1-C871-E4FC0D6888F2}']
    function  fValidaPassword(const CodUsuario: WideString; const CodClave: WideString): UsuarioP; stdcall;
    function  fValidaAfiliado(const Cod_Afiliado: WideString; const Cod_Prestador: WideString; const Tipo: WideString; const Cod_Usuario: WideString; const Detalle: WideString): AfiliadoP; stdcall;
    function  fValidadiagnostico(const Num_Session: WideString; const Cod_Diagnostico: WideString): DiagnosticoP; stdcall;
    function  fConsulta_cobertura(const Num_Session: WideString; const TipoPlan: WideString; const Cobertura: WideString; const Tipo_Cobertura: WideString): ConsultaP; stdcall;
    function  fProcesa_reclamacion(const Num_Session: WideString; const TipoPlan: WideString; const Cobertura: WideString; const Cant_Cobertura: WideString; const Tipo_Remitente: WideString; const Cod_Remitente: WideString; const Desc_Remitente: WideString; const Origen: WideString; const Tipo_Cobertura: WideString; const Tel_Afiliado: Int64
                                   ): ReclamacionP; stdcall;
    function  fcancela_reclamacion(const Cod_Prestador: WideString; const Cod_Afiliado: WideString; const Num_Reclamacion: WideString; const Num_Session: WideString; const Comentario: WideString): CancelacionP; stdcall;
    function  fconsulta_reclamacion(const Cod_Prestador: WideString; const Ano: WideString; const Ramo: WideString; const Num_Reclamacion: WideString; const Tipo: WideString; const Usuario: WideString): Consulta_ReclamacionP; stdcall;
    function  fbusca_doctor(const Nombre: WideString; const Plan: WideString): ArrayOfRemitentes; stdcall;
  end;

function GetPalicSoap(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): PalicSoap;


implementation

function GetPalicSoap(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): PalicSoap;
const
  defWSDL = 'http://172.16.30.65/WsPalicTest/Palic.asmx?WSDL';
  defURL  = 'http://172.16.30.65/WsPalicTest/Palic.asmx';
  defSvc  = 'Palic';
  defPrt  = 'PalicSoap';
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
    Result := (RIO as PalicSoap);
    RIO.HTTPWebNode.ConnectTimeout := 300000; // 5 mins;
    RIO.HTTPWebNode.SendTimeout := 300000;
    RIO.HTTPWebNode.ReceiveTimeout := 1200000; // 20 mins.
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


destructor ConsultaP.Destroy;
var
  I: Integer;
begin
  for I := 0 to Length(FListaCoberturas)-1 do
    if Assigned(FListaCoberturas[I]) then
      FListaCoberturas[I].Free;
  SetLength(FListaCoberturas, 0);
  inherited Destroy;
end;

destructor ReclamacionP.Destroy;
var
  I: Integer;
begin
  for I := 0 to Length(FListaCoberturas)-1 do
    if Assigned(FListaCoberturas[I]) then
      FListaCoberturas[I].Free;
  SetLength(FListaCoberturas, 0);
  inherited Destroy;
end;

destructor Consulta_ReclamacionP.Destroy;
var
  I: Integer;
begin
  for I := 0 to Length(FListaCoberturas)-1 do
    if Assigned(FListaCoberturas[I]) then
      FListaCoberturas[I].Free;
  SetLength(FListaCoberturas, 0);
  if Assigned(FFecha_Inscripcion) then
    FFecha_Inscripcion.Free;
  if Assigned(FFecha_Reclamacion) then
    FFecha_Reclamacion.Free;
  inherited Destroy;
end;

initialization
  InvRegistry.RegisterInterface(TypeInfo(PalicSoap), 'http://tempuri.org/', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(PalicSoap), 'http://tempuri.org/%operationName%');
  InvRegistry.RegisterInvokeOptions(TypeInfo(PalicSoap), ioDocument);
  RemClassRegistry.RegisterXSClass(UsuarioP, 'http://tempuri.org/', 'UsuarioP');
  RemClassRegistry.RegisterXSClass(AfiliadoP, 'http://tempuri.org/', 'AfiliadoP');
  RemClassRegistry.RegisterXSClass(DiagnosticoP, 'http://tempuri.org/', 'DiagnosticoP');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfCoberturaP), 'http://tempuri.org/', 'ArrayOfCoberturaP');
  RemClassRegistry.RegisterXSClass(ConsultaP, 'http://tempuri.org/', 'ConsultaP');
  RemClassRegistry.RegisterXSClass(CoberturaP, 'http://tempuri.org/', 'CoberturaP');
  RemClassRegistry.RegisterXSClass(ReclamacionP, 'http://tempuri.org/', 'ReclamacionP');
  RemClassRegistry.RegisterXSClass(CancelacionP, 'http://tempuri.org/', 'CancelacionP');
  RemClassRegistry.RegisterXSClass(Consulta_ReclamacionP, 'http://tempuri.org/', 'Consulta_ReclamacionP');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfRemitentes), 'http://tempuri.org/', 'ArrayOfRemitentes');
  RemClassRegistry.RegisterXSClass(Remitentes, 'http://tempuri.org/', 'Remitentes');

end.