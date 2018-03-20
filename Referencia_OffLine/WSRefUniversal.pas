// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://10.0.0.249/WSUniversal/WSRefUniversal.asmx?WSDL
// Encoding : utf-8
// Version  : 1.0
// (27/09/2016 06:15:38 a.m. - 1.33.2.5)
// ************************************************************************ //

unit WSRefUniversal;

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
  // !:dateTime        - "http://www.w3.org/2001/XMLSchema"
  // !:int             - "http://www.w3.org/2001/XMLSchema"

  TRecDatosBeneficiario2 = class;               { "http://tempuri.org/" }
  TRecDatosBeneficiario3 = class;               { "http://tempuri.org/" }
  TRecAutorizacion     = class;                 { "http://tempuri.org/" }
  TRecAutorizacionOut  = class;                 { "http://tempuri.org/" }
  RecserObjBase        = class;                 { "http://com/universal/utils/WsUtils.wsdl/types/" }
  RecserObjUser        = class;                 { "http://com/universal/utils/WsUtils.wsdl/types/" }
  RecpbsObjBase        = class;                 { "http://com/universal/utils/WsUtils.wsdl/types/" }
  RecpbsObjUser        = class;                 { "http://com/universal/utils/WsUtils.wsdl/types/" }
  RecoriObjBase        = class;                 { "http://com/universal/utils/WsUtils.wsdl/types/" }
  RecoriObjUser        = class;                 { "http://com/universal/utils/WsUtils.wsdl/types/" }

  ArrayOfTRecDatosBeneficiario2 = array of TRecDatosBeneficiario2;   { "http://tempuri.org/" }


  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  TRecDatosBeneficiario2 = class(TRemotable)
  private
    FoutNatfecnac: TXSDateTime;
    FoutNatsegape: WideString;
    FtotalPaginas: Integer;
    FoutIpscodsup: WideString;
    FoutDirtel1: WideString;
    FoutHijeda: Integer;
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
    FoutCrtcon: Integer;
    FoutDirmai: WideString;
    FoutDirdir: WideString;
    FoutTipatecod: Integer;
    FoutBenval: WideString;
    FoutNatpriape: WideString;
    FoutNatprinom: WideString;
    FoutNatsegnom: WideString;
    FoutBencon: Integer;
    FoutNatnumide: WideString;
    FoutNatsex: WideString;
    FoutTidcod: WideString;
    FoutNatide: Integer;
    FpaginaActual: Integer;
    FoutWebid: Integer;
    FoutSbccon: Integer;
    FoutCiucod: WideString;
    FtotalRegistros: Integer;
    FoutValcon: WideString;
    FoutNumben: Integer;
  public
    destructor Destroy; override;
  published
    property outNatfecnac: TXSDateTime read FoutNatfecnac write FoutNatfecnac;
    property outNatsegape: WideString read FoutNatsegape write FoutNatsegape;
    property totalPaginas: Integer read FtotalPaginas write FtotalPaginas;
    property outIpscodsup: WideString read FoutIpscodsup write FoutIpscodsup;
    property outDirtel1: WideString read FoutDirtel1 write FoutDirtel1;
    property outHijeda: Integer read FoutHijeda write FoutHijeda;
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
    property outCrtcon: Integer read FoutCrtcon write FoutCrtcon;
    property outDirmai: WideString read FoutDirmai write FoutDirmai;
    property outDirdir: WideString read FoutDirdir write FoutDirdir;
    property outTipatecod: Integer read FoutTipatecod write FoutTipatecod;
    property outBenval: WideString read FoutBenval write FoutBenval;
    property outNatpriape: WideString read FoutNatpriape write FoutNatpriape;
    property outNatprinom: WideString read FoutNatprinom write FoutNatprinom;
    property outNatsegnom: WideString read FoutNatsegnom write FoutNatsegnom;
    property outBencon: Integer read FoutBencon write FoutBencon;
    property outNatnumide: WideString read FoutNatnumide write FoutNatnumide;
    property outNatsex: WideString read FoutNatsex write FoutNatsex;
    property outTidcod: WideString read FoutTidcod write FoutTidcod;
    property outNatide: Integer read FoutNatide write FoutNatide;
    property paginaActual: Integer read FpaginaActual write FpaginaActual;
    property outWebid: Integer read FoutWebid write FoutWebid;
    property outSbccon: Integer read FoutSbccon write FoutSbccon;
    property outCiucod: WideString read FoutCiucod write FoutCiucod;
    property totalRegistros: Integer read FtotalRegistros write FtotalRegistros;
    property outValcon: WideString read FoutValcon write FoutValcon;
    property outNumben: Integer read FoutNumben write FoutNumben;
  end;



  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  TRecDatosBeneficiario3 = class(TRemotable)
  private
    FoutMplnom: WideString;
    FoutNatfecnac: TXSDateTime;
    FoutNatsegape: WideString;
    FoutIpscodsup: WideString;
    FoutDirtel1: WideString;
    FoutHijeda: Integer;
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
    FoutTipatecod: Integer;
    FoutNatpriape: WideString;
    FoutNatprinom: WideString;
    FoutNatsegnom: WideString;
    FoutBencon: Integer;
    FoutNomben: WideString;
    FoutNatnumide: WideString;
    FoutValben: WideString;
    FoutNatsex: WideString;
    FoutTidcod: WideString;
    FoutNatide: Integer;
    FoutWebid: Integer;
    FoutCiucod: WideString;
  public
    destructor Destroy; override;
  published
    property outMplnom: WideString read FoutMplnom write FoutMplnom;
    property outNatfecnac: TXSDateTime read FoutNatfecnac write FoutNatfecnac;
    property outNatsegape: WideString read FoutNatsegape write FoutNatsegape;
    property outIpscodsup: WideString read FoutIpscodsup write FoutIpscodsup;
    property outDirtel1: WideString read FoutDirtel1 write FoutDirtel1;
    property outHijeda: Integer read FoutHijeda write FoutHijeda;
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
    property outTipatecod: Integer read FoutTipatecod write FoutTipatecod;
    property outNatpriape: WideString read FoutNatpriape write FoutNatpriape;
    property outNatprinom: WideString read FoutNatprinom write FoutNatprinom;
    property outNatsegnom: WideString read FoutNatsegnom write FoutNatsegnom;
    property outBencon: Integer read FoutBencon write FoutBencon;
    property outNomben: WideString read FoutNomben write FoutNomben;
    property outNatnumide: WideString read FoutNatnumide write FoutNatnumide;
    property outValben: WideString read FoutValben write FoutValben;
    property outNatsex: WideString read FoutNatsex write FoutNatsex;
    property outTidcod: WideString read FoutTidcod write FoutTidcod;
    property outNatide: Integer read FoutNatide write FoutNatide;
    property outWebid: Integer read FoutWebid write FoutWebid;
    property outCiucod: WideString read FoutCiucod write FoutCiucod;
  end;

  ArrayOfTRecAutorizacion = array of TRecAutorizacion;   { "http://tempuri.org/" }


  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  TRecAutorizacion = class(TRemotable)
  private
    FinPrePreCodigo: WideString;
    FinDbcvaluni: Double;
    FinDbccan: Integer;
  published
    property inPrePreCodigo: WideString read FinPrePreCodigo write FinPrePreCodigo;
    property inDbcvaluni: Double read FinDbcvaluni write FinDbcvaluni;
    property inDbccan: Integer read FinDbccan write FinDbccan;
  end;

  ArrayOfTRecAutorizacionOut = array of TRecAutorizacionOut;   { "http://tempuri.org/" }


  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // ************************************************************************ //
  TRecAutorizacionOut = class(TRemotable)
  private
    FoutDbcvalesp: Double;
    FoutAuenum: Integer;
    FoutAueestcod: Integer;
    FoutPrePreCodigo: WideString;
    FsrvMessage: WideString;
    FoutFlagsuptop: WideString;
    FoutDbcvalafi: Double;
    FoutPrePreDescripcio: WideString;
    FoutDbccan: Integer;
    FoutDbcvaltot: Double;
  published
    property outDbcvalesp: Double read FoutDbcvalesp write FoutDbcvalesp;
    property outAuenum: Integer read FoutAuenum write FoutAuenum;
    property outAueestcod: Integer read FoutAueestcod write FoutAueestcod;
    property outPrePreCodigo: WideString read FoutPrePreCodigo write FoutPrePreCodigo;
    property srvMessage: WideString read FsrvMessage write FsrvMessage;
    property outFlagsuptop: WideString read FoutFlagsuptop write FoutFlagsuptop;
    property outDbcvalafi: Double read FoutDbcvalafi write FoutDbcvalafi;
    property outPrePreDescripcio: WideString read FoutPrePreDescripcio write FoutPrePreDescripcio;
    property outDbccan: Integer read FoutDbccan write FoutDbccan;
    property outDbcvaltot: Double read FoutDbcvaltot write FoutDbcvaltot;
  end;

  ArrayOfRecserObjUser = array of RecserObjUser;   { "http://tempuri.org/" }
  ArrayOfRecpbsObjUser = array of RecpbsObjUser;   { "http://tempuri.org/" }
  ArrayOfRecoriObjUser = array of RecoriObjUser;   { "http://tempuri.org/" }


  // ************************************************************************ //
  // Namespace : http://com/universal/utils/WsUtils.wsdl/types/
  // ************************************************************************ //
  RecserObjBase = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // Namespace : http://com/universal/utils/WsUtils.wsdl/types/
  // ************************************************************************ //
  RecserObjUser = class(RecserObjBase)
  private
    Fseripsnom: WideString;
    Fseripscod: WideString;
  published
    property seripsnom: WideString read Fseripsnom write Fseripsnom;
    property seripscod: WideString read Fseripscod write Fseripscod;
  end;



  // ************************************************************************ //
  // Namespace : http://com/universal/utils/WsUtils.wsdl/types/
  // ************************************************************************ //
  RecpbsObjBase = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // Namespace : http://com/universal/utils/WsUtils.wsdl/types/
  // ************************************************************************ //
  RecpbsObjUser = class(RecpbsObjBase)
  private
    Fipscodsup: WideString;
    Fipscodnom: WideString;
  published
    property ipscodsup: WideString read Fipscodsup write Fipscodsup;
    property ipscodnom: WideString read Fipscodnom write Fipscodnom;
  end;



  // ************************************************************************ //
  // Namespace : http://com/universal/utils/WsUtils.wsdl/types/
  // ************************************************************************ //
  RecoriObjBase = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // Namespace : http://com/universal/utils/WsUtils.wsdl/types/
  // ************************************************************************ //
  RecoriObjUser = class(RecoriObjBase)
  private
    Ftiporinom: WideString;
    Ftiporicod: WideString;
  published
    property tiporinom: WideString read Ftiporinom write Ftiporinom;
    property tiporicod: WideString read Ftiporicod write Ftiporicod;
  end;


  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // soapAction: http://tempuri.org/%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // binding   : TWebService1Soap
  // service   : TWebService1
  // port      : TWebService1Soap
  // URL       : http://10.0.0.249/WSUniversal/WSRefUniversal.asmx
  // ************************************************************************ //
  TWebService1Soap = interface(IInvokable)
  ['{BF303294-87C1-2F3F-20B1-122C27CAE0EA}']
    function  Validacion_de_Contrato(const UserAutoriza: WideString; const ProductoId: WideString; const NumContrato: WideString; const NumFamilia: Double; const FechaNacimiento: WideString; const CodigoPrestadora: WideString; const Desde: Double; const Hasta: Double): ArrayOfTRecDatosBeneficiario2; stdcall;
    function  ValidarBeneficiario(const WebIdAutorizacion: Double; const WebBeneficiarioVal: Double; const CodigoDiagnostico: WideString; const Beneficiario: TRecDatosBeneficiario2; const UserValida: WideString): TRecDatosBeneficiario3; stdcall;
    function  ProcesoAutorizacion(const WebIdAutorizacion: Double; const TipoOrigenAutorizacion: WideString; const PrestacionesAutorizar: ArrayOfTRecAutorizacion; const UserValida: WideString): ArrayOfTRecAutorizacionOut; stdcall;
    function  AnularAutorizacion(const WebIdAutorizacion: Double): Integer; stdcall;
    function  Servicios(const CodigoServicio: WideString): ArrayOfRecserObjUser; stdcall;
    function  Prestadoras(const CodigoPrestadora: WideString): ArrayOfRecpbsObjUser; stdcall;
    function  TiposOrigen: ArrayOfRecoriObjUser; stdcall;
  end;

function GetTWebService1Soap(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): TWebService1Soap;


implementation

function GetTWebService1Soap(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): TWebService1Soap;
const
  defWSDL = 'http://10.0.0.249/WSUniversal/WSRefUniversal.asmx?WSDL';
  defURL  = 'http://10.0.0.249/WSUniversal/WSRefUniversal.asmx';
  defSvc  = 'TWebService1';
  defPrt  = 'TWebService1Soap';
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
    Result := (RIO as TWebService1Soap);
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


destructor TRecDatosBeneficiario2.Destroy;
begin
  if Assigned(FoutNatfecnac) then
    FoutNatfecnac.Free;
  if Assigned(FoutAuefecexp) then
    FoutAuefecexp.Free;
  inherited Destroy;
end;

destructor TRecDatosBeneficiario3.Destroy;
begin
  if Assigned(FoutNatfecnac) then
    FoutNatfecnac.Free;
  if Assigned(FoutAuefecexp) then
    FoutAuefecexp.Free;
  inherited Destroy;
end;

initialization
  InvRegistry.RegisterInterface(TypeInfo(TWebService1Soap), 'http://tempuri.org/', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(TWebService1Soap), 'http://tempuri.org/%operationName%');
  InvRegistry.RegisterInvokeOptions(TypeInfo(TWebService1Soap), ioDocument);
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfTRecDatosBeneficiario2), 'http://tempuri.org/', 'ArrayOfTRecDatosBeneficiario2');
  RemClassRegistry.RegisterXSClass(TRecDatosBeneficiario2, 'http://tempuri.org/', 'TRecDatosBeneficiario2');
  RemClassRegistry.RegisterXSClass(TRecDatosBeneficiario3, 'http://tempuri.org/', 'TRecDatosBeneficiario3');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfTRecAutorizacion), 'http://tempuri.org/', 'ArrayOfTRecAutorizacion');
  RemClassRegistry.RegisterXSClass(TRecAutorizacion, 'http://tempuri.org/', 'TRecAutorizacion');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfTRecAutorizacionOut), 'http://tempuri.org/', 'ArrayOfTRecAutorizacionOut');
  RemClassRegistry.RegisterXSClass(TRecAutorizacionOut, 'http://tempuri.org/', 'TRecAutorizacionOut');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfRecserObjUser), 'http://tempuri.org/', 'ArrayOfRecserObjUser');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfRecpbsObjUser), 'http://tempuri.org/', 'ArrayOfRecpbsObjUser');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfRecoriObjUser), 'http://tempuri.org/', 'ArrayOfRecoriObjUser');
  RemClassRegistry.RegisterXSClass(RecserObjBase, 'http://com/universal/utils/WsUtils.wsdl/types/', 'RecserObjBase');
  RemClassRegistry.RegisterXSClass(RecserObjUser, 'http://com/universal/utils/WsUtils.wsdl/types/', 'RecserObjUser');
  RemClassRegistry.RegisterXSClass(RecpbsObjBase, 'http://com/universal/utils/WsUtils.wsdl/types/', 'RecpbsObjBase');
  RemClassRegistry.RegisterXSClass(RecpbsObjUser, 'http://com/universal/utils/WsUtils.wsdl/types/', 'RecpbsObjUser');
  RemClassRegistry.RegisterXSClass(RecoriObjBase, 'http://com/universal/utils/WsUtils.wsdl/types/', 'RecoriObjBase');
  RemClassRegistry.RegisterXSClass(RecoriObjUser, 'http://com/universal/utils/WsUtils.wsdl/types/', 'RecoriObjUser');

end.