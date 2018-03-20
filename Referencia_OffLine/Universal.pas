// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://172.16.30.65/WsUniversalTest/Universal.asmx?WSDL
// Encoding : utf-8
// Version  : 1.0
// (11/10/2016 10:35:25 a.m. - 1.33.2.5)
// ************************************************************************ //

unit Universal;

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
  // !:double          - "http://www.w3.org/2001/XMLSchema"
  // !:int             - "http://www.w3.org/2001/XMLSchema"
  // !:decimal         - "http://www.w3.org/2001/XMLSchema"
  // !:dateTime        - "http://www.w3.org/2001/XMLSchema"

  Beneficiario         = class;                 { "http://tempuri.org/" }
  Recdatben2ObjBase    = class;                 { "http://com/universal/WEBSVCAUTCAP.wsdl/types/" }
  Recdatben2ObjUser    = class;                 { "http://com/universal/WEBSVCAUTCAP.wsdl/types/" }
  Recdatben4ObjBase    = class;                 { "http://com/universal/WEBSVCAUTCAP.wsdl/types/" }
  Recdatben4ObjUser    = class;                 { "http://com/universal/WEBSVCAUTCAP.wsdl/types/" }
  RecpreObjBase        = class;                 { "http://com/universal/WEBSVCAUTCAP.wsdl/types/" }
  RecpreObjUser        = class;                 { "http://com/universal/WEBSVCAUTCAP.wsdl/types/" }
  RecingautObj2Base    = class;                 { "http://com/universal/WEBSVCAUTCAP.wsdl/types/" }
  RecingautObj2User    = class;                 { "http://com/universal/WEBSVCAUTCAP.wsdl/types/" }
  UtilsPrestadorObjBase = class;                { "http://com/universal/WebSvcUtils.wsdl/types/" }
  UtilsPrestadorObjUser = class;                { "http://com/universal/WebSvcUtils.wsdl/types/" }
  WebSvcUtilsUser_prcConsultarprestador_Out = class;   { "http://com/universal/WebSvcUtils.wsdl/types/" }

  ArrayOfRecdatben2ObjUser = array of Recdatben2ObjUser;   { "http://tempuri.org/" }


  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  Beneficiario = class(TRemotable)
  private
    FoutMplnom: WideString;
    FoutDomnumcon: WideString;
    FError: WideString;
  published
    property outMplnom: WideString read FoutMplnom write FoutMplnom;
    property outDomnumcon: WideString read FoutDomnumcon write FoutDomnumcon;
    property Error: WideString read FError write FError;
  end;

  ArrayOfRecpreObjUser = array of RecpreObjUser;   { "http://tempuri.org/" }
  ArrayOfString = array of WideString;          { "http://tempuri.org/" }
  ArrayOfDouble = array of Double;              { "http://tempuri.org/" }
  ArrayOfRecingautObj2User = array of RecingautObj2User;   { "http://tempuri.org/" }
  ArrayOfUtilsPrestadorObjUser = array of UtilsPrestadorObjUser;   { "http://tempuri.org/" }


  // ************************************************************************ //
  // Namespace : http://com/universal/WEBSVCAUTCAP.wsdl/types/
  // ************************************************************************ //
  Recdatben2ObjBase = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // Namespace : http://com/universal/WEBSVCAUTCAP.wsdl/types/
  // ************************************************************************ //
  Recdatben2ObjUser = class(Recdatben2ObjBase)
  private
    FoutNatfecnac: TXSDateTime;
    FoutNatsegape: WideString;
    FtotalPaginas: TXSDecimal;
    FoutIpscodsup: WideString;
    FoutDirtel1: WideString;
    FoutHijeda: TXSDecimal;
    FoutProcod: WideString;
    FoutValconv: WideString;
    FoutAuefecexp: TXSDateTime;
    FoutAueman: WideString;
    FsrvMessage: WideString;
    FoutErr: WideString;
    FoutDcmnumcon: WideString;
    FoutMplcod: WideString;
    FoutPlaparcod: WideString;
    FoutPlaparnom: WideString;
    FoutValfam: WideString;
    FoutCrtcon: TXSDecimal;
    FoutDirmai: WideString;
    FoutDirdir: WideString;
    FoutTipatecod: TXSDecimal;
    FoutBenval: WideString;
    FoutNatpriape: WideString;
    FoutNatprinom: WideString;
    FoutNatsegnom: WideString;
    FoutBencon: TXSDecimal;
    FoutNatnumide: WideString;
    FoutNatsex: WideString;
    FoutTidcod: WideString;
    FoutNatide: TXSDecimal;
    FpaginaActual: TXSDecimal;
    FoutWebid: TXSDecimal;
    FoutSbccon: TXSDecimal;
    FoutCiucod: WideString;
    FtotalRegistros: TXSDecimal;
    FoutValcon: WideString;
    FoutNumben: TXSDecimal;
  public
    destructor Destroy; override;
  published
    property outNatfecnac: TXSDateTime read FoutNatfecnac write FoutNatfecnac;
    property outNatsegape: WideString read FoutNatsegape write FoutNatsegape;
    property totalPaginas: TXSDecimal read FtotalPaginas write FtotalPaginas;
    property outIpscodsup: WideString read FoutIpscodsup write FoutIpscodsup;
    property outDirtel1: WideString read FoutDirtel1 write FoutDirtel1;
    property outHijeda: TXSDecimal read FoutHijeda write FoutHijeda;
    property outProcod: WideString read FoutProcod write FoutProcod;
    property outValconv: WideString read FoutValconv write FoutValconv;
    property outAuefecexp: TXSDateTime read FoutAuefecexp write FoutAuefecexp;
    property outAueman: WideString read FoutAueman write FoutAueman;
    property srvMessage: WideString read FsrvMessage write FsrvMessage;
    property outErr: WideString read FoutErr write FoutErr;
    property outDcmnumcon: WideString read FoutDcmnumcon write FoutDcmnumcon;
    property outMplcod: WideString read FoutMplcod write FoutMplcod;
    property outPlaparcod: WideString read FoutPlaparcod write FoutPlaparcod;
    property outPlaparnom: WideString read FoutPlaparnom write FoutPlaparnom;
    property outValfam: WideString read FoutValfam write FoutValfam;
    property outCrtcon: TXSDecimal read FoutCrtcon write FoutCrtcon;
    property outDirmai: WideString read FoutDirmai write FoutDirmai;
    property outDirdir: WideString read FoutDirdir write FoutDirdir;
    property outTipatecod: TXSDecimal read FoutTipatecod write FoutTipatecod;
    property outBenval: WideString read FoutBenval write FoutBenval;
    property outNatpriape: WideString read FoutNatpriape write FoutNatpriape;
    property outNatprinom: WideString read FoutNatprinom write FoutNatprinom;
    property outNatsegnom: WideString read FoutNatsegnom write FoutNatsegnom;
    property outBencon: TXSDecimal read FoutBencon write FoutBencon;
    property outNatnumide: WideString read FoutNatnumide write FoutNatnumide;
    property outNatsex: WideString read FoutNatsex write FoutNatsex;
    property outTidcod: WideString read FoutTidcod write FoutTidcod;
    property outNatide: TXSDecimal read FoutNatide write FoutNatide;
    property paginaActual: TXSDecimal read FpaginaActual write FpaginaActual;
    property outWebid: TXSDecimal read FoutWebid write FoutWebid;
    property outSbccon: TXSDecimal read FoutSbccon write FoutSbccon;
    property outCiucod: WideString read FoutCiucod write FoutCiucod;
    property totalRegistros: TXSDecimal read FtotalRegistros write FtotalRegistros;
    property outValcon: WideString read FoutValcon write FoutValcon;
    property outNumben: TXSDecimal read FoutNumben write FoutNumben;
  end;



  // ************************************************************************ //
  // Namespace : http://com/universal/WEBSVCAUTCAP.wsdl/types/
  // ************************************************************************ //
  Recdatben4ObjBase = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // Namespace : http://com/universal/WEBSVCAUTCAP.wsdl/types/
  // ************************************************************************ //
  Recdatben4ObjUser = class(Recdatben4ObjBase)
  private
    FoutMplnom: WideString;
    FoutEscap: WideString;
    FoutNatfecnac: TXSDateTime;
    FoutNatsegape: WideString;
    FoutIpscodsup: WideString;
    FoutDirtel1: WideString;
    FoutHijeda: TXSDecimal;
    FoutEscapitado: WideString;
    FoutProcod: WideString;
    FoutAuefecexp: TXSDateTime;
    FoutAueman: WideString;
    FsrvMessage: WideString;
    FoutErr: WideString;
    FoutDcmnumcon: WideString;
    FoutMplcod: WideString;
    FoutPlaparcod: WideString;
    FoutDirmai: WideString;
    FoutDirdir: WideString;
    FoutTipatecod: TXSDecimal;
    FoutNatpriape: WideString;
    FoutNatprinom: WideString;
    FoutNatsegnom: WideString;
    FoutBencon: TXSDecimal;
    FoutNomben: WideString;
    FoutNatnumide: WideString;
    FoutValben: WideString;
    FoutNatsex: WideString;
    FoutTidcod: WideString;
    FoutNatide: TXSDecimal;
    FoutWebid: TXSDecimal;
    FoutCiucod: WideString;
  public
    destructor Destroy; override;
  published
    property outMplnom: WideString read FoutMplnom write FoutMplnom;
    property outEscap: WideString read FoutEscap write FoutEscap;
    property outNatfecnac: TXSDateTime read FoutNatfecnac write FoutNatfecnac;
    property outNatsegape: WideString read FoutNatsegape write FoutNatsegape;
    property outIpscodsup: WideString read FoutIpscodsup write FoutIpscodsup;
    property outDirtel1: WideString read FoutDirtel1 write FoutDirtel1;
    property outHijeda: TXSDecimal read FoutHijeda write FoutHijeda;
    property outEscapitado: WideString read FoutEscapitado write FoutEscapitado;
    property outProcod: WideString read FoutProcod write FoutProcod;
    property outAuefecexp: TXSDateTime read FoutAuefecexp write FoutAuefecexp;
    property outAueman: WideString read FoutAueman write FoutAueman;
    property srvMessage: WideString read FsrvMessage write FsrvMessage;
    property outErr: WideString read FoutErr write FoutErr;
    property outDcmnumcon: WideString read FoutDcmnumcon write FoutDcmnumcon;
    property outMplcod: WideString read FoutMplcod write FoutMplcod;
    property outPlaparcod: WideString read FoutPlaparcod write FoutPlaparcod;
    property outDirmai: WideString read FoutDirmai write FoutDirmai;
    property outDirdir: WideString read FoutDirdir write FoutDirdir;
    property outTipatecod: TXSDecimal read FoutTipatecod write FoutTipatecod;
    property outNatpriape: WideString read FoutNatpriape write FoutNatpriape;
    property outNatprinom: WideString read FoutNatprinom write FoutNatprinom;
    property outNatsegnom: WideString read FoutNatsegnom write FoutNatsegnom;
    property outBencon: TXSDecimal read FoutBencon write FoutBencon;
    property outNomben: WideString read FoutNomben write FoutNomben;
    property outNatnumide: WideString read FoutNatnumide write FoutNatnumide;
    property outValben: WideString read FoutValben write FoutValben;
    property outNatsex: WideString read FoutNatsex write FoutNatsex;
    property outTidcod: WideString read FoutTidcod write FoutTidcod;
    property outNatide: TXSDecimal read FoutNatide write FoutNatide;
    property outWebid: TXSDecimal read FoutWebid write FoutWebid;
    property outCiucod: WideString read FoutCiucod write FoutCiucod;
  end;



  // ************************************************************************ //
  // Namespace : http://com/universal/WEBSVCAUTCAP.wsdl/types/
  // ************************************************************************ //
  RecpreObjBase = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // Namespace : http://com/universal/WEBSVCAUTCAP.wsdl/types/
  // ************************************************************************ //
  RecpreObjUser = class(RecpreObjBase)
  private
    FinPrePreCodigo: WideString;
    FinDbcvaluni: TXSDecimal;
    FinDbccan: TXSDecimal;
  public
    destructor Destroy; override;
  published
    property inPrePreCodigo: WideString read FinPrePreCodigo write FinPrePreCodigo;
    property inDbcvaluni: TXSDecimal read FinDbcvaluni write FinDbcvaluni;
    property inDbccan: TXSDecimal read FinDbccan write FinDbccan;
  end;



  // ************************************************************************ //
  // Namespace : http://com/universal/WEBSVCAUTCAP.wsdl/types/
  // ************************************************************************ //
  RecingautObj2Base = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // Namespace : http://com/universal/WEBSVCAUTCAP.wsdl/types/
  // ************************************************************************ //
  RecingautObj2User = class(RecingautObj2Base)
  private
    FoutDbcvalesp: TXSDecimal;
    FoutAuenum: TXSDecimal;
    FoutAueestcod: TXSDecimal;
    FoutPrePreCodigo: WideString;
    FsrvMessage: WideString;
    FoutAutApro: TXSDecimal;
    FoutFlagsuptop: WideString;
    FoutDbcvalafi: TXSDecimal;
    FoutPrePreDescripcio: WideString;
    FoutDbccan: TXSDecimal;
    FoutDbcvaltot: TXSDecimal;
  public
    destructor Destroy; override;
  published
    property outDbcvalesp: TXSDecimal read FoutDbcvalesp write FoutDbcvalesp;
    property outAuenum: TXSDecimal read FoutAuenum write FoutAuenum;
    property outAueestcod: TXSDecimal read FoutAueestcod write FoutAueestcod;
    property outPrePreCodigo: WideString read FoutPrePreCodigo write FoutPrePreCodigo;
    property srvMessage: WideString read FsrvMessage write FsrvMessage;
    property outAutApro: TXSDecimal read FoutAutApro write FoutAutApro;
    property outFlagsuptop: WideString read FoutFlagsuptop write FoutFlagsuptop;
    property outDbcvalafi: TXSDecimal read FoutDbcvalafi write FoutDbcvalafi;
    property outPrePreDescripcio: WideString read FoutPrePreDescripcio write FoutPrePreDescripcio;
    property outDbccan: TXSDecimal read FoutDbccan write FoutDbccan;
    property outDbcvaltot: TXSDecimal read FoutDbcvaltot write FoutDbcvaltot;
  end;



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
  // Namespace : http://tempuri.org/
  // soapAction: http://tempuri.org/%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // binding   : UniversalSoap
  // service   : Universal
  // port      : UniversalSoap
  // URL       : http://172.16.30.65/WsUniversalTest/Universal.asmx
  // ************************************************************************ //
  UniversalSoap = interface(IInvokable)
  ['{76E7465D-8EF5-759D-66AB-75CD930CF82C}']
    function  Validacion_de_Contrato(const ProductoId: WideString; const NumContrato: WideString; const NumFamilia: Double; const FechaNacimiento: WideString; const Codigo_Prestadora: WideString; const UserAutoriza: WideString): ArrayOfRecdatben2ObjUser; stdcall;
    function  ValidarBeneficiario2(const WebId: Double; const WebBenVal: Double; const Cod_Dignostico: WideString; const Cod_Doctor: WideString; const NumContrato: WideString; const NumFamilia: Double; const Codigo_Prestadora: WideString; const UserAutoriza: WideString): Beneficiario; stdcall;
    function  ValidarBeneficiario(const WebId: Double; const WebBenVal: Double; const Cod_Dignostico: WideString; const Cod_Doctor: WideString; const NumContrato: WideString; const NumFamilia: Double; const Codigo_Prestadora: WideString; const UserAutoriza: WideString): Recdatben4ObjUser; stdcall;
    function  ProcesoAutorizacion(const WebId: Double; const TipoAutorizacion: WideString; const PrestacionesAutorizar: ArrayOfRecpreObjUser; const Cod_Cup: ArrayOfString; const Precio_Prueba: ArrayOfDouble; const Total_Pruebas: Integer; const UserAutoriza: WideString; const Nota: WideString): ArrayOfRecingautObj2User; stdcall;
    function  AnularAutorizacion(const WebId: TXSDecimal; const Observacion: WideString): TXSDecimal; stdcall;
    function  Buscar_Doctor(const Nombre: WideString): WebSvcUtilsUser_prcConsultarprestador_Out; stdcall;
    function  Verifica_Doctor(const Nombre: WideString): WideString; stdcall;
    function  Buscar_Doctor2(const Nombre: WideString): ArrayOfUtilsPrestadorObjUser; stdcall;
    function  Total_Registros(const Nombre: WideString): Integer; stdcall;
  end;

function GetUniversalSoap(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): UniversalSoap;


implementation

function GetUniversalSoap(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): UniversalSoap;
const
  defWSDL = 'http://172.16.30.65/WsUniversalTest/Universal.asmx?WSDL';
  defURL  = 'http://172.16.30.65/WsUniversalTest/Universal.asmx';
  defSvc  = 'Universal';
  defPrt  = 'UniversalSoap';
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
    Result := (RIO as UniversalSoap);
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


destructor Recdatben2ObjUser.Destroy;
begin
  if Assigned(FoutNatfecnac) then
    FoutNatfecnac.Free;
  if Assigned(FtotalPaginas) then
    FtotalPaginas.Free;
  if Assigned(FoutHijeda) then
    FoutHijeda.Free;
  if Assigned(FoutAuefecexp) then
    FoutAuefecexp.Free;
  if Assigned(FoutCrtcon) then
    FoutCrtcon.Free;
  if Assigned(FoutTipatecod) then
    FoutTipatecod.Free;
  if Assigned(FoutBencon) then
    FoutBencon.Free;
  if Assigned(FoutNatide) then
    FoutNatide.Free;
  if Assigned(FpaginaActual) then
    FpaginaActual.Free;
  if Assigned(FoutWebid) then
    FoutWebid.Free;
  if Assigned(FoutSbccon) then
    FoutSbccon.Free;
  if Assigned(FtotalRegistros) then
    FtotalRegistros.Free;
  if Assigned(FoutNumben) then
    FoutNumben.Free;
  inherited Destroy;
end;

destructor Recdatben4ObjUser.Destroy;
begin
  if Assigned(FoutNatfecnac) then
    FoutNatfecnac.Free;
  if Assigned(FoutHijeda) then
    FoutHijeda.Free;
  if Assigned(FoutAuefecexp) then
    FoutAuefecexp.Free;
  if Assigned(FoutTipatecod) then
    FoutTipatecod.Free;
  if Assigned(FoutBencon) then
    FoutBencon.Free;
  if Assigned(FoutNatide) then
    FoutNatide.Free;
  if Assigned(FoutWebid) then
    FoutWebid.Free;
  inherited Destroy;
end;

destructor RecpreObjUser.Destroy;
begin
  if Assigned(FinDbcvaluni) then
    FinDbcvaluni.Free;
  if Assigned(FinDbccan) then
    FinDbccan.Free;
  inherited Destroy;
end;

destructor RecingautObj2User.Destroy;
begin
  if Assigned(FoutDbcvalesp) then
    FoutDbcvalesp.Free;
  if Assigned(FoutAuenum) then
    FoutAuenum.Free;
  if Assigned(FoutAueestcod) then
    FoutAueestcod.Free;
  if Assigned(FoutAutApro) then
    FoutAutApro.Free;
  if Assigned(FoutDbcvalafi) then
    FoutDbcvalafi.Free;
  if Assigned(FoutDbccan) then
    FoutDbccan.Free;
  if Assigned(FoutDbcvaltot) then
    FoutDbcvaltot.Free;
  inherited Destroy;
end;

destructor WebSvcUtilsUser_prcConsultarprestador_Out.Destroy;
begin
  if Assigned(FoutprestadoresOut) then
    FoutprestadoresOut.Free;
  inherited Destroy;
end;

initialization
  InvRegistry.RegisterInterface(TypeInfo(UniversalSoap), 'http://tempuri.org/', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(UniversalSoap), 'http://tempuri.org/%operationName%');
  InvRegistry.RegisterInvokeOptions(TypeInfo(UniversalSoap), ioDocument);
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfRecdatben2ObjUser), 'http://tempuri.org/', 'ArrayOfRecdatben2ObjUser');
  RemClassRegistry.RegisterXSClass(Beneficiario, 'http://tempuri.org/', 'Beneficiario');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfRecpreObjUser), 'http://tempuri.org/', 'ArrayOfRecpreObjUser');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfString), 'http://tempuri.org/', 'ArrayOfString');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfDouble), 'http://tempuri.org/', 'ArrayOfDouble');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfRecingautObj2User), 'http://tempuri.org/', 'ArrayOfRecingautObj2User');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfUtilsPrestadorObjUser), 'http://tempuri.org/', 'ArrayOfUtilsPrestadorObjUser');
  RemClassRegistry.RegisterXSClass(Recdatben2ObjBase, 'http://com/universal/WEBSVCAUTCAP.wsdl/types/', 'Recdatben2ObjBase');
  RemClassRegistry.RegisterXSClass(Recdatben2ObjUser, 'http://com/universal/WEBSVCAUTCAP.wsdl/types/', 'Recdatben2ObjUser');
  RemClassRegistry.RegisterXSClass(Recdatben4ObjBase, 'http://com/universal/WEBSVCAUTCAP.wsdl/types/', 'Recdatben4ObjBase');
  RemClassRegistry.RegisterXSClass(Recdatben4ObjUser, 'http://com/universal/WEBSVCAUTCAP.wsdl/types/', 'Recdatben4ObjUser');
  RemClassRegistry.RegisterXSClass(RecpreObjBase, 'http://com/universal/WEBSVCAUTCAP.wsdl/types/', 'RecpreObjBase');
  RemClassRegistry.RegisterXSClass(RecpreObjUser, 'http://com/universal/WEBSVCAUTCAP.wsdl/types/', 'RecpreObjUser');
  RemClassRegistry.RegisterXSClass(RecingautObj2Base, 'http://com/universal/WEBSVCAUTCAP.wsdl/types/', 'RecingautObj2Base');
  RemClassRegistry.RegisterXSClass(RecingautObj2User, 'http://com/universal/WEBSVCAUTCAP.wsdl/types/', 'RecingautObj2User');
  RemClassRegistry.RegisterXSClass(UtilsPrestadorObjBase, 'http://com/universal/WebSvcUtils.wsdl/types/', 'UtilsPrestadorObjBase');
  RemClassRegistry.RegisterXSClass(UtilsPrestadorObjUser, 'http://com/universal/WebSvcUtils.wsdl/types/', 'UtilsPrestadorObjUser');
  RemClassRegistry.RegisterXSClass(WebSvcUtilsUser_prcConsultarprestador_Out, 'http://com/universal/WebSvcUtils.wsdl/types/', 'WebSvcUtilsUser_prcConsultarprestador_Out');

end.