// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://j2ee.universal.com.do:7777/wsautorizacionars/WsAutorizacionARSSoapHttpPort?WSDL
// Encoding : UTF-8
// Version  : 1.0
// (22/04/2010 11:33:32 a.m. - 1.33.2.5)
// ************************************************************************ //

unit WsAutorizacionARSSoapHttpPort;

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
  // !:decimal         - "http://com/universal/WsAutorizacionARS.wsdl/types/"
  // !:string          - "http://com/universal/WsAutorizacionARS.wsdl/types/"
  // !:dateTime        - "http://com/universal/WsAutorizacionARS.wsdl/types/"

  anuAutResponseElement = class;                { "http://com/universal/WsAutorizacionARS.wsdl/types/" }
  anuAutElement        = class;                 { "http://com/universal/WsAutorizacionARS.wsdl/types/" }
  RecpreObjBase        = class;                 { "http://com/universal/WsAutorizacionARS.wsdl/types/" }
  RecpreObjUser        = class;                 { "http://com/universal/WsAutorizacionARS.wsdl/types/" }
  prcAutElement        = class;                 { "http://com/universal/WsAutorizacionARS.wsdl/types/" }
  RecingautObjBase     = class;                 { "http://com/universal/WsAutorizacionARS.wsdl/types/" }
  RecingautObjUser     = class;                 { "http://com/universal/WsAutorizacionARS.wsdl/types/" }
  valConElement        = class;                 { "http://com/universal/WsAutorizacionARS.wsdl/types/" }
  Recdatben2ObjBase    = class;                 { "http://com/universal/WsAutorizacionARS.wsdl/types/" }
  Recdatben2ObjUser    = class;                 { "http://com/universal/WsAutorizacionARS.wsdl/types/" }
  valBenElement        = class;                 { "http://com/universal/WsAutorizacionARS.wsdl/types/" }
  Recdatben3ObjBase    = class;                 { "http://com/universal/WsAutorizacionARS.wsdl/types/" }
  Recdatben3ObjUser    = class;                 { "http://com/universal/WsAutorizacionARS.wsdl/types/" }
  valBenResponseElement = class;                { "http://com/universal/WsAutorizacionARS.wsdl/types/" }

  prcAutResponseElement = array of RecingautObjUser;   { "http://com/universal/WsAutorizacionARS.wsdl/types/" }
  valConResponseElement = array of Recdatben2ObjUser;   { "http://com/universal/WsAutorizacionARS.wsdl/types/" }


  // ************************************************************************ //
  // Namespace : http://com/universal/WsAutorizacionARS.wsdl/types/
  // Serializtn: [xoLiteralParam]
  // ************************************************************************ //
  anuAutResponseElement = class(TRemotable)
  private
    Fresult: TXSDecimal;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property result: TXSDecimal read Fresult write Fresult;
  end;



  // ************************************************************************ //
  // Namespace : http://com/universal/WsAutorizacionARS.wsdl/types/
  // Serializtn: [xoLiteralParam]
  // ************************************************************************ //
  anuAutElement = class(TRemotable)
  private
    FinAutwebsvc: TXSDecimal;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property inAutwebsvc: TXSDecimal read FinAutwebsvc write FinAutwebsvc;
  end;



  // ************************************************************************ //
  // Namespace : http://com/universal/WsAutorizacionARS.wsdl/types/
  // ************************************************************************ //
  RecpreObjBase = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // Namespace : http://com/universal/WsAutorizacionARS.wsdl/types/
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
  // Namespace : http://com/universal/WsAutorizacionARS.wsdl/types/
  // Serializtn: [xoLiteralParam]
  // ************************************************************************ //
  prcAutElement = class(TRemotable)
  private
    FinAutwebsvc: TXSDecimal;
    FinRecpreList: RecpreObjUser;
    FinTiporicod: WideString;
    FiUserServ: WideString;
    FiPswServ: WideString;
    Fccodusr: WideString;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property inAutwebsvc: TXSDecimal read FinAutwebsvc write FinAutwebsvc;
    property inRecpreList: RecpreObjUser read FinRecpreList write FinRecpreList;
    property inTiporicod: WideString read FinTiporicod write FinTiporicod;
    property iUserServ: WideString read FiUserServ write FiUserServ;
    property iPswServ: WideString read FiPswServ write FiPswServ;
    property ccodusr: WideString read Fccodusr write Fccodusr;
  end;



  // ************************************************************************ //
  // Namespace : http://com/universal/WsAutorizacionARS.wsdl/types/
  // ************************************************************************ //
  RecingautObjBase = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // Namespace : http://com/universal/WsAutorizacionARS.wsdl/types/
  // ************************************************************************ //
  RecingautObjUser = class(RecingautObjBase)
  private
    FoutDbcvalesp: TXSDecimal;
    FoutAuenum: TXSDecimal;
    FoutAueestcod: TXSDecimal;
    FoutPrePreCodigo: WideString;
    FsrvMessage: WideString;
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
    property outFlagsuptop: WideString read FoutFlagsuptop write FoutFlagsuptop;
    property outDbcvalafi: TXSDecimal read FoutDbcvalafi write FoutDbcvalafi;
    property outPrePreDescripcio: WideString read FoutPrePreDescripcio write FoutPrePreDescripcio;
    property outDbccan: TXSDecimal read FoutDbccan write FoutDbccan;
    property outDbcvaltot: TXSDecimal read FoutDbcvaltot write FoutDbcvaltot;
  end;



  // ************************************************************************ //
  // Namespace : http://com/universal/WsAutorizacionARS.wsdl/types/
  // Serializtn: [xoLiteralParam]
  // ************************************************************************ //
  valConElement = class(TRemotable)
  private
    FinProcod: WideString;
    FinCrtnumcon: WideString;
    FinSbcnumcon: TXSDecimal;
    FinNatfecnac: TXSDateTime;
    FinSeripscod: WideString;
    FinIpscodsup: WideString;
    FiDesde: TXSDecimal;
    FiHasta: TXSDecimal;
    FiUserServ: WideString;
    FiPswServ: WideString;
    Fccodusr: WideString;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property inProcod: WideString read FinProcod write FinProcod;
    property inCrtnumcon: WideString read FinCrtnumcon write FinCrtnumcon;
    property inSbcnumcon: TXSDecimal read FinSbcnumcon write FinSbcnumcon;
    property inNatfecnac: TXSDateTime read FinNatfecnac write FinNatfecnac;
    property inSeripscod: WideString read FinSeripscod write FinSeripscod;
    property inIpscodsup: WideString read FinIpscodsup write FinIpscodsup;
    property iDesde: TXSDecimal read FiDesde write FiDesde;
    property iHasta: TXSDecimal read FiHasta write FiHasta;
    property iUserServ: WideString read FiUserServ write FiUserServ;
    property iPswServ: WideString read FiPswServ write FiPswServ;
    property ccodusr: WideString read Fccodusr write Fccodusr;
  end;



  // ************************************************************************ //
  // Namespace : http://com/universal/WsAutorizacionARS.wsdl/types/
  // ************************************************************************ //
  Recdatben2ObjBase = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // Namespace : http://com/universal/WsAutorizacionARS.wsdl/types/
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
  // Namespace : http://com/universal/WsAutorizacionARS.wsdl/types/
  // Serializtn: [xoLiteralParam]
  // ************************************************************************ //
  valBenElement = class(TRemotable)
  private
    FinAutwebsvc: TXSDecimal;
    FinBencon: TXSDecimal;
    FinDiacon: WideString;
    Freclisben: Recdatben2ObjUser;
    FiUserServ: WideString;
    FiPswServ: WideString;
    Fccodusr: WideString;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property inAutwebsvc: TXSDecimal read FinAutwebsvc write FinAutwebsvc;
    property inBencon: TXSDecimal read FinBencon write FinBencon;
    property inDiacon: WideString read FinDiacon write FinDiacon;
    property reclisben: Recdatben2ObjUser read Freclisben write Freclisben;
    property iUserServ: WideString read FiUserServ write FiUserServ;
    property iPswServ: WideString read FiPswServ write FiPswServ;
    property ccodusr: WideString read Fccodusr write Fccodusr;
  end;



  // ************************************************************************ //
  // Namespace : http://com/universal/WsAutorizacionARS.wsdl/types/
  // ************************************************************************ //
  Recdatben3ObjBase = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // Namespace : http://com/universal/WsAutorizacionARS.wsdl/types/
  // ************************************************************************ //
  Recdatben3ObjUser = class(Recdatben3ObjBase)
  private
    FoutMplnom: WideString;
    FoutNatfecnac: TXSDateTime;
    FoutNatsegape: WideString;
    FoutIpscodsup: WideString;
    FoutDirtel1: WideString;
    FoutHijeda: TXSDecimal;
    FoutProcod: WideString;
    FoutAuefecexp: TXSDateTime;
    FoutAueman: WideString;
    FsrvMessage: WideString;
    FoutMplcod: WideString;
    FoutErr: WideString;
    FoutDcmnumcon: WideString;
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
    property outNatfecnac: TXSDateTime read FoutNatfecnac write FoutNatfecnac;
    property outNatsegape: WideString read FoutNatsegape write FoutNatsegape;
    property outIpscodsup: WideString read FoutIpscodsup write FoutIpscodsup;
    property outDirtel1: WideString read FoutDirtel1 write FoutDirtel1;
    property outHijeda: TXSDecimal read FoutHijeda write FoutHijeda;
    property outProcod: WideString read FoutProcod write FoutProcod;
    property outAuefecexp: TXSDateTime read FoutAuefecexp write FoutAuefecexp;
    property outAueman: WideString read FoutAueman write FoutAueman;
    property srvMessage: WideString read FsrvMessage write FsrvMessage;
    property outMplcod: WideString read FoutMplcod write FoutMplcod;
    property outErr: WideString read FoutErr write FoutErr;
    property outDcmnumcon: WideString read FoutDcmnumcon write FoutDcmnumcon;
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
  // Namespace : http://com/universal/WsAutorizacionARS.wsdl/types/
  // Serializtn: [xoLiteralParam]
  // ************************************************************************ //
  valBenResponseElement = class(TRemotable)
  private
    Fresult: Recdatben3ObjUser;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property result: Recdatben3ObjUser read Fresult write Fresult;
  end;


  // ************************************************************************ //
  // Namespace : http://com/universal/WsAutorizacionARS.wsdl
  // soapAction: http://com/universal/WsAutorizacionARS.wsdl/%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // binding   : WsAutorizacionARSSoapHttp
  // service   : WsAutorizacionARS
  // port      : WsAutorizacionARSSoapHttpPort
  // URL       : http://j2ee.universal.com.do:7777/wsautorizacionars/WsAutorizacionARSSoapHttpPort
  // ************************************************************************ //
  WsAutorizacionARS = interface(IInvokable)
  ['{45DE1D0D-2203-B588-C044-861758B1EA30}']
    function  anuAut(const parameters: anuAutElement): anuAutResponseElement; stdcall;
    function  prcAut(const parameters: prcAutElement): prcAutResponseElement; stdcall;
    function  valBen(const parameters: valBenElement): valBenResponseElement; stdcall;
    function  valCon(const parameters: valConElement): valConResponseElement; stdcall;
  end;

function GetWsAutorizacionARS(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): WsAutorizacionARS;


implementation

function GetWsAutorizacionARS(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): WsAutorizacionARS;
const
  defWSDL = 'http://j2ee.universal.com.do:7777/wsautorizacionars/WsAutorizacionARSSoapHttpPort?WSDL';
  defURL  = 'http://j2ee.universal.com.do:7777/wsautorizacionars/WsAutorizacionARSSoapHttpPort';
  defSvc  = 'WsAutorizacionARS';
  defPrt  = 'WsAutorizacionARSSoapHttpPort';
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
    Result := (RIO as WsAutorizacionARS);
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


constructor anuAutResponseElement.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor anuAutResponseElement.Destroy;
begin
  if Assigned(Fresult) then
    Fresult.Free;
  inherited Destroy;
end;

constructor anuAutElement.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor anuAutElement.Destroy;
begin
  if Assigned(FinAutwebsvc) then
    FinAutwebsvc.Free;
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

constructor prcAutElement.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor prcAutElement.Destroy;
begin
  if Assigned(FinAutwebsvc) then
    FinAutwebsvc.Free;
  if Assigned(FinRecpreList) then
    FinRecpreList.Free;
  inherited Destroy;
end;

destructor RecingautObjUser.Destroy;
begin
  if Assigned(FoutDbcvalesp) then
    FoutDbcvalesp.Free;
  if Assigned(FoutAuenum) then
    FoutAuenum.Free;
  if Assigned(FoutAueestcod) then
    FoutAueestcod.Free;
  if Assigned(FoutDbcvalafi) then
    FoutDbcvalafi.Free;
  if Assigned(FoutDbccan) then
    FoutDbccan.Free;
  if Assigned(FoutDbcvaltot) then
    FoutDbcvaltot.Free;
  inherited Destroy;
end;

constructor valConElement.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor valConElement.Destroy;
begin
  if Assigned(FinSbcnumcon) then
    FinSbcnumcon.Free;
  if Assigned(FinNatfecnac) then
    FinNatfecnac.Free;
  if Assigned(FiDesde) then
    FiDesde.Free;
  if Assigned(FiHasta) then
    FiHasta.Free;
  inherited Destroy;
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

constructor valBenElement.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor valBenElement.Destroy;
begin
  if Assigned(FinAutwebsvc) then
    FinAutwebsvc.Free;
  if Assigned(FinBencon) then
    FinBencon.Free;
  if Assigned(Freclisben) then
    Freclisben.Free;
  inherited Destroy;
end;

destructor Recdatben3ObjUser.Destroy;
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

constructor valBenResponseElement.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor valBenResponseElement.Destroy;
begin
  if Assigned(Fresult) then
    Fresult.Free;
  inherited Destroy;
end;

initialization
  InvRegistry.RegisterInterface(TypeInfo(WsAutorizacionARS), 'http://com/universal/WsAutorizacionARS.wsdl', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(WsAutorizacionARS), 'http://com/universal/WsAutorizacionARS.wsdl/%operationName%');
  InvRegistry.RegisterInvokeOptions(TypeInfo(WsAutorizacionARS), ioDocument);
  InvRegistry.RegisterInvokeOptions(TypeInfo(WsAutorizacionARS), ioLiteral);
  RemClassRegistry.RegisterXSInfo(TypeInfo(prcAutResponseElement), 'http://com/universal/WsAutorizacionARS.wsdl/types/', 'prcAutResponseElement');
  RemClassRegistry.RegisterXSInfo(TypeInfo(valConResponseElement), 'http://com/universal/WsAutorizacionARS.wsdl/types/', 'valConResponseElement');
  RemClassRegistry.RegisterXSClass(anuAutResponseElement, 'http://com/universal/WsAutorizacionARS.wsdl/types/', 'anuAutResponseElement');
  RemClassRegistry.RegisterSerializeOptions(anuAutResponseElement, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(anuAutElement, 'http://com/universal/WsAutorizacionARS.wsdl/types/', 'anuAutElement');
  RemClassRegistry.RegisterSerializeOptions(anuAutElement, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(RecpreObjBase, 'http://com/universal/WsAutorizacionARS.wsdl/types/', 'RecpreObjBase');
  RemClassRegistry.RegisterXSClass(RecpreObjUser, 'http://com/universal/WsAutorizacionARS.wsdl/types/', 'RecpreObjUser');
  RemClassRegistry.RegisterXSClass(prcAutElement, 'http://com/universal/WsAutorizacionARS.wsdl/types/', 'prcAutElement');
  RemClassRegistry.RegisterSerializeOptions(prcAutElement, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(RecingautObjBase, 'http://com/universal/WsAutorizacionARS.wsdl/types/', 'RecingautObjBase');
  RemClassRegistry.RegisterXSClass(RecingautObjUser, 'http://com/universal/WsAutorizacionARS.wsdl/types/', 'RecingautObjUser');
  RemClassRegistry.RegisterXSClass(valConElement, 'http://com/universal/WsAutorizacionARS.wsdl/types/', 'valConElement');
  RemClassRegistry.RegisterSerializeOptions(valConElement, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(Recdatben2ObjBase, 'http://com/universal/WsAutorizacionARS.wsdl/types/', 'Recdatben2ObjBase');
  RemClassRegistry.RegisterXSClass(Recdatben2ObjUser, 'http://com/universal/WsAutorizacionARS.wsdl/types/', 'Recdatben2ObjUser');
  RemClassRegistry.RegisterXSClass(valBenElement, 'http://com/universal/WsAutorizacionARS.wsdl/types/', 'valBenElement');
  RemClassRegistry.RegisterSerializeOptions(valBenElement, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(Recdatben3ObjBase, 'http://com/universal/WsAutorizacionARS.wsdl/types/', 'Recdatben3ObjBase');
  RemClassRegistry.RegisterXSClass(Recdatben3ObjUser, 'http://com/universal/WsAutorizacionARS.wsdl/types/', 'Recdatben3ObjUser');
  RemClassRegistry.RegisterXSClass(valBenResponseElement, 'http://com/universal/WsAutorizacionARS.wsdl/types/', 'valBenResponseElement');
  RemClassRegistry.RegisterSerializeOptions(valBenResponseElement, [xoLiteralParam]);
//  InvRegistry.RegisterInvokeOptions(TypeInfo(WsAutorizacionARS), ioDocument);
end.
