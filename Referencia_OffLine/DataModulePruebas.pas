unit DataModulePruebas;

interface

uses
  ImgList, Controls, Graphics,
  JvComponent, JvBaseDlg, JvDesktopAlert, JvMemoryDataset,
  DB, ADODB, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxDBExtLookupComboBox, cxEditRepositoryItems, cxDBEditRepository, cxEdit,
  dxmdaset, Atexto, Classes, SysUtils, dxLayoutLookAndFeels,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData,
  StdActns, ActnList, Menus, cxDBLookupComboBox, madExceptVcl,
  Types, Forms, JvPluginManager, JvStringHolder, SplashForm,
  cxExtEditRepositoryItems, JvAppStorage, JvAppXMLStorage, JvComponentBase,
  cxCurrencyEdit, PymeConst, ABSMain, IceLicense, TXComp, ppComm, ppRelatv,
  ppDB, ppDBPipe, cxCheckBox, ppBands, ppCtrls, ppPrnabl, ppClass, ppCache,
  ppProd, ppReport, ppStrtch, ppSubRpt, ppVar, ppMemo, daDataView,
  daQueryDataView, daADO, ppParameter, daDataModule, ppModule, raCodMod;

type
  TDMPruebas = class(TDataModule)
    MdPruebas: TdxMemData;
    MdPruebasTipo: TSmallintField;
    MdPruebasNombre: TStringField;
    qrCoGrupoDesc: TADOQuery;
    dsCoGrupoDesc: TDataSource;
    qrCoGrupoPrecio: TADOQuery;
    dsCoGrupoPrecio: TDataSource;
    qrCoGrupoBono: TADOQuery;
    dsCoGrupoBono: TDataSource;
    dsVeSecciones: TDataSource;
    qrZona: TADOQuery;
    dsZona: TDataSource;
    dsSubZona: TDataSource;
    qrSubZona: TADOQuery;
    qrGrupoEquipo: TADOQuery;
    dsGrupoEquipo: TDataSource;
    qrTecnicos: TADOQuery;
    dsTecnicos: TDataSource;
    qrEquipo: TADOQuery;
    dsEquipo: TDataSource;
    qrConceptoMO: TADOQuery;
    qrConceptoCO: TADOQuery;
    qrConceptoGA: TADOQuery;
    qrConceptoIG: TADOQuery;
    dsConceptoMO: TDataSource;
    dsConceptoCO: TDataSource;
    dsConceptoGA: TDataSource;
    dsConceptoIG: TDataSource;
    qrOrdenesEntrada: TADOQuery;
    dsOrdenesEntrada: TDataSource;
    DsPruebas: TDataSource;
    qrAcuerdoCliente: TADOQuery;
    DsAcuerdoCliente: TDataSource;
    qrAcuerdoGrupoCust: TADOQuery;
    DsAcuerdoGrupoCust: TDataSource;
    qrClientes: TADOQuery;
    dsClientes: TDataSource;
    qrFlebotomistas: TADOQuery;
    dsFlebotomistas: TDataSource;
    qrAcuerdoSucursal: TADOQuery;
    dsAcuerdoSucursal: TDataSource;
    qrAcuerdoGrupoPrice: TADOQuery;
    DsAcuerdoGrupoPrice: TDataSource;
    qrDatos: TADOQuery;
    dsDatos: TDataSource;
    qrFlebotomistasFLEBOTOMISTAID: TStringField;
    qrFlebotomistasDESCRIPCION: TStringField;
    qrFlebotomistasESTATUS: TIntegerField;
    qrFlebotomistasCODIGOAXAPTA: TStringField;
    qrFlebotomistasDATAAREAID: TStringField;
    qrFlebotomistasRECID: TIntegerField;
    qrAcuerdoSucursalGRUPOCLIENTE: TStringField;
    qrAcuerdoSucursalDESCRIPCION: TStringField;
    qrAcuerdoSucursalCODIGOAXAPTA: TStringField;
    qrAcuerdoSucursalCOMENTARIO: TMemoField;
    qrAcuerdoSucursalDATAAREAID: TStringField;
    qrAcuerdoSucursalRECID: TIntegerField;
    qrAcuerdoGrupoPriceGRUPOPRUEBA: TStringField;
    qrAcuerdoGrupoPriceDESCRIPCION: TStringField;
    qrAcuerdoGrupoPriceCODIGOAXAPTA: TStringField;
    qrAcuerdoGrupoPriceCOMENTARIO: TMemoField;
    qrAcuerdoGrupoPriceDATAAREAID: TStringField;
    qrAcuerdoGrupoPriceRECID: TIntegerField;
    qrAcuerdoClienteNOMBRE: TStringField;
    qrAcuerdoClienteSUCURSALID: TStringField;
    qrAcuerdoClienteDIRECCION: TMemoField;
    qrAcuerdoClienteTELEFONO: TStringField;
    qrAcuerdoClienteFAX: TStringField;
    qrAcuerdoClienteCLIENTEID: TStringField;
    qrAcuerdoClienteGRUPOID: TStringField;
    qrAcuerdoClienteCLIENTE_UNO: TStringField;
    qrAcuerdoClienteCLIENTE_DOS: TStringField;
    qrAcuerdoClienteIMPRESIONES: TIntegerField;
    qrAcuerdoClienteDATAAREAID: TStringField;
    qrAcuerdoClienteRECID: TIntegerField;
    qrAcuerdoGrupoCustDOCTORID: TStringField;
    qrAcuerdoGrupoCustNOMBRE: TStringField;
    qrAcuerdoGrupoCustCONTACTO: TStringField;
    qrAcuerdoGrupoCustTELEFONO: TStringField;
    qrAcuerdoGrupoCustFAX: TStringField;
    qrAcuerdoGrupoCustCODIGOAXAPTA: TStringField;
    qrAcuerdoGrupoCustEMAIL: TStringField;
    qrAcuerdoGrupoCustCELULAR: TStringField;
    qrAcuerdoGrupoCustDIRECCION: TStringField;
    qrAcuerdoGrupoCustCIUDADID: TStringField;
    qrAcuerdoGrupoCustRESULTADODOCTOR: TIntegerField;
    qrAcuerdoGrupoCustESPECIALIDADID: TStringField;
    qrAcuerdoGrupoCustPUBLICARINTERNET: TIntegerField;
    qrAcuerdoGrupoCustCODIGORESULTADO: TStringField;
    qrAcuerdoGrupoCustUSUARIOINTERNET: TStringField;
    qrAcuerdoGrupoCustCLAVEINTERNET: TStringField;
    qrAcuerdoGrupoCustCOMISION: TBCDField;
    qrAcuerdoGrupoCustDIRECCIONCONSULTA2: TStringField;
    qrAcuerdoGrupoCustDIRECCIONCONSULTA1: TStringField;
    qrAcuerdoGrupoCustESPECIALIDAD: TStringField;
    qrAcuerdoGrupoCustCODIGOWEB: TStringField;
    qrAcuerdoGrupoCustDATAAREAID: TStringField;
    qrAcuerdoGrupoCustRECID: TIntegerField;
    qrDatosPRUEBAID: TStringField;
    qrDatosALIAS: TStringField;
    qrDatosDESCRIPCION: TStringField;
    qrDatosESTATUS: TIntegerField;
    qrDatosGRUPOPRUEBAID: TStringField;
    qrDatosDEPARTAMENTO: TStringField;
    qrDatosPRECIO: TBCDField;
    qrDatosPERMITECAMBIOPRECIO: TIntegerField;
    qrDatosCODIGOAXAPTA: TStringField;
    qrDatosPRECIODOLARES: TBCDField;
    qrDatosCOSTO: TBCDField;
    qrDatosEXTERIOR: TIntegerField;
    qrDatosFACTURARCABECERA: TIntegerField;
    qrDatosPRUEBAS: TIntegerField;
    qrDatosTIPO: TStringField;
    qrDatosORINA: TIntegerField;
    qrDatosSANGRE: TIntegerField;
    qrDatosCONDPACIENTE: TStringField;
    qrDatosCONDMUESTRA: TStringField;
    qrDatosCODDIAPROC: TStringField;
    qrDatosDIASRESULTADO: TIntegerField;
    qrDatosUNIDAD: TStringField;
    qrDatosABREVIACION: TStringField;
    qrDatosMEDIO: TIntegerField;
    qrDatosCOLOR: TIntegerField;
    qrDatosDEPID: TStringField;
    qrDatosTIPOAS400: TStringField;
    qrDatosCODIGOIDAS400: TStringField;
    qrDatosMEDIOAS400: TStringField;
    qrDatosNOPROCESAR: TIntegerField;
    qrDatosCOMENTARIONOPROCESAR: TStringField;
    qrDatosDATAAREAID: TStringField;
    qrDatosRECID: TIntegerField;
    qrDatosTIPOMUESTRA: TStringField;
    qrClientesCLIENTEID: TStringField;
    qrClientesNOMBRE: TStringField;
    qrClientesCONTACTO: TStringField;
    qrClientesTELEFONO: TStringField;
    qrClientesFAX: TStringField;
    qrClientesGRUPOCLIENTE: TStringField;
    qrClientesINCLUIRPRECIOTICKET: TIntegerField;
    qrClientesAUTOCONFIRMAR: TIntegerField;
    qrClientesEMPLEADOID: TStringField;
    qrClientesCODIGOAXAPTA: TStringField;
    qrClientesEMAIL: TStringField;
    qrClientesDIRECCIONWEB: TStringField;
    qrClientesTELEFONO2: TStringField;
    qrClientesMONEDAID: TStringField;
    qrClientesIDENTIFICACION: TStringField;
    qrClientesORIGEN: TIntegerField;
    qrClientesDIRECCION: TStringField;
    qrClientesCIUDADID: TStringField;
    qrClientesPRUEBASPORDIA: TIntegerField;
    qrClientesCOBERTURAPORC: TBCDField;
    qrClientesPRINCIPAL: TStringField;
    qrClientesENVIORESULTADO: TIntegerField;
    qrClientesPUBLICARINTERNET: TIntegerField;
    qrClientesFECHANACIMIENTO: TDateTimeField;
    qrClientesSEGURO: TStringField;
    qrClientesCARNETNUMERO: TStringField;
    qrClientesPOLIZA: TStringField;
    qrClientesCOBRARDIFERENCIA: TIntegerField;
    qrClientesENVIARFAX: TIntegerField;
    qrClientesACTIVARDESCUENTOS: TIntegerField;
    qrClientesUSARALIASNOMBRE: TIntegerField;
    qrClientesUSARALIASPRUEBAS: TIntegerField;
    qrClientesSIEMPREINTERNET: TIntegerField;
    qrClientesIMPRIMIRALIASNOMBRE: TIntegerField;
    qrClientesIMPRIMIRALIASPRUEBA: TIntegerField;
    qrClientesIMPRIMIRSOLOTOTALES: TIntegerField;
    qrClientesIMPRIMIRALIASRESULTADOS: TIntegerField;
    qrClientesUSARACUERDOPROPIO: TIntegerField;
    qrClientesALIAS: TStringField;
    qrClientesQUIENPAGA: TStringField;
    qrClientesTIPOCLIENTE: TStringField;
    qrClientesENTREGARRESULTADOS: TStringField;
    qrClientesTEXTOREFERENCIA: TStringField;
    qrClientesSIEMPREIMPRIMIR: TIntegerField;
    qrClientesTIPOSANGRE: TStringField;
    qrClientesPACIENTECIAID: TStringField;
    qrClientesSECTOR: TStringField;
    qrClientesUSUARIOINTERNET: TStringField;
    qrClientesCLAVEINTERNET: TStringField;
    qrClientesTIPOINTERNET: TStringField;
    qrClientesCLASECREDITO: TStringField;
    qrClientesDOCTORID: TStringField;
    qrClientesSEXO: TIntegerField;
    qrClientesESTATUS: TIntegerField;
    qrClientesTIPOCLIENTEAS400: TIntegerField;
    qrClientesCODIGOIDAS400: TStringField;
    qrClientesGRUPOPRECIO: TStringField;
    qrClientesFORMAPAGO: TStringField;
    qrClientesDATAAREAID: TStringField;
    qrClientesRECID: TIntegerField;
    qrClientesGRUPODESCUENTOLINEA: TStringField;
    qrClientesGRUPODESCUENTOTOTAL: TStringField;
    qrAcuerdoClienteSUCURSAL: TIntegerField;
    qrAcuerdoClienteSINPRFILTER: TIntegerField;
    qrAcuerdoClienteMONTO_PORC: TBCDField;
    qrAcuerdoClienteMONTO_CANT: TBCDField;
    qrClientesSINPRFILTER: TIntegerField;
    qrAcuerdoSucursalSINPRFILTERGROUP: TIntegerField;
    qrAcuerdoClienteBanco_Cuenta_1: TStringField;
    qrAcuerdoClienteBanco_Nombre_1: TStringField;
    qrAcuerdoClienteBanco_Cuenta_2: TStringField;
    qrAcuerdoClienteBanco_Nombre_2: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }

    function PrecioPrueba(prueba, cliente, moneda: string) : Double;
    function PrecioPruebaCosto(prueba, cliente, moneda: string) : Double;
    function PrecioPruebaMoneda(prueba, cliente, moneda: string) : Double;

    function CoberturaPrueba(prueba,cliente,moneda : string) : Double;
    function CoberturaPruebaMoneda(prueba: string; cliente: string; moneda: string) : Double;
    function CoberturaPruebaPorc(prueba,cliente,moneda : string) : Integer;
    function CoberturaPruebaMonedaPorc(prueba: string; cliente: string; moneda: string) : Integer;

    function CoberturaPermitida(cliente : string) : Integer;
    function CurCoberturaAplicada(refrecid : Integer) : Integer;
    function ValidarSeguroPruebaCobertura_Precio(_cliente, _prueba, _moneda  : String): Double;
    function ValidarSeguroPruebaCobertura(_origen, _gruprecio, _prueba, _moneda : String): Integer;
    function CoberturaAplica(cliente : String ;paciente : String;curaplicada : Integer; refrecid : integer) : Integer;
    function VerificarCoberturaPruebaAdicional(origen: String; prueba: String; cliente: String; moneda: String) : Double;

    function DescTarjetaBono(tarjeta, numero : String) : double;
    function DescCliente(cliente: string) : Double;
    function TotalGastosVarios(_refrecid : integer) : Double;
    function TotalGastosVariosUsa(_refrecid : integer) : Double;
    procedure VerificarGastosVarios(cliente: string;_refrecid : Integer);
end;


Var
  DMPruebas: TDMPruebas;

  ValorFormaPagoE : Double;
  ValorFormaPagoI : Double;
  findAcuerdoCom : Boolean;

implementation


uses StrUtils, DataModule, Dialogs, JclStrings, Main, Math, madExcept, DateUtils,
     ReportsDM, Splash, ActionsDM, DialogDbSetup, ApplDbChangeSettings;

{$R *.dfm}

{ TDM }


function TDMPruebas.CoberturaPermitida(cliente: string) : integer;
Var
 qfindpermitido : TADOQuery;
begin
 qfindpermitido := DM.Find_Ldr('SELECT * FROM PTCliente WHERE ClienteID = :cli',cliente);
 result := qfindpermitido.FieldByName('PruebasPorDia').AsInteger;
 FreeAndNil(qfindpermitido);
end;


function TDMPruebas.CoberturaAplica(cliente : String ;paciente : String; curaplicada : Integer; refrecid : integer) : Integer;
var
 qfind : TADOQuery;
 permitido : integer;
begin
 qfind := DM.NewQuery;
 permitido := CoberturaPermitida(cliente);

 if permitido > 0 then
 begin
  qfind.Close;
  qfind.SQL.Text := ' SELECT c.RecId AS registro FROM ptEntradaPaciente c, ptEntradaPacienteDetalle d '+
                    ' WHERE c.recid = d.refrecid '+
                    ' AND c.DataAreaId = d.DataAreaId '+
                    ' AND c.DataAreaId = ' + #39 + 'ldr' + #39 +
                    ' AND c.pacienteid = '+#39+paciente+#39+
                    ' AND c.clienteid = '+#39+cliente+#39+
                    ' AND c.fecha = :fech '+
                    ' AND d.coberturaaplica = 1'+
                    ' AND c.recid <> :rec ';
  qfind.Parameters[0].Value := DM.SystemDate;
  qfind.Parameters[1].Value := refrecid;
  qfind.Open;

  if ( (qfind.RecordCount + curaplicada) < permitido) then
    result := 1
  else
    result := 0;
 end
 else
  result := 1;

  FreeAndNil(qfind);
end;


function TDMPruebas.CurCoberturaAplicada(refrecid : Integer) : Integer;
var
 qfind     : TADOQuery;
 permitido : integer;
begin
 qfind := DM.NewQuery;

 qfind.Close;
 qfind.SQL.Text := ' SELECT RecId AS registro FROM ptEntradaPacienteDetalle '+
                   ' WHERE coberturaaplica = 1 '+
                   ' AND DataAreaId = ' + #39 + 'ldr' + #39 +
                   ' AND RefRecId = :rec ';
 qfind.Parameters[0].Value := refrecid;
 qfind.Open;

 Result := qfind.RecordCount;

 FreeAndNil(qfind);
end;


function TDMPruebas.CoberturaPruebaMoneda(prueba: string; cliente: string; moneda: string) : Double;
var
 qfind : TADOQuery;
 qfindDato : TADOQuery;
begin
 qfind := DM.Newquery;

 //Buscar Prueba - Cliente
 qfind.Close;
 qfind.SQL.Clear;
 qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                   ' WHERE PruebaCode = '+#39+'0'+#39+' AND PruebaRelation = '+#39+prueba+#39+
                   ' AND ClienteCode = '+#39+'0'+#39+' AND ClienteRelation = '+#39+cliente+#39+
                   ' AND MonedaID = '+#39+moneda+#39+
                   ' AND DataAreaId = ' + #39 + 'ldr' + #39 +
                   ' AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
 qfind.Parameters[0].Value := DM.SystemDate;
 qfind.Parameters[1].Value := DM.SystemDate;
 qfind.Open;

 if qfind.RecordCount > 0 then
    result := DM.Redondeo(qfind.FieldByName('CoberturaValor').AsFloat)
 else
 begin
  qfindDato := DM.Find_Ldr('SELECT * FROM PTCliente WHERE ClienteID = :cli',cliente);

  //Buscar Prueba - GrupoCliente
  qfind.Close;
  qfind.SQL.Clear;
  qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                    ' WHERE PruebaCode = '+#39+'0'+#39+' AND PruebaRelation = '+#39+prueba+#39+
                    ' AND ClienteCode = '+#39+'1'+#39+' AND ClienteRelation = '+#39+qfindDato.FieldByName('GrupoPrecio').AsString+#39+
                    ' AND MonedaID = '+#39+moneda+#39+
                    ' AND DataAreaId = ' + #39 + 'ldr' + #39 +
                    ' AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
  qfind.Parameters[0].Value := DM.SystemDate;
  qfind.Parameters[1].Value := DM.SystemDate;
  qfind.Open;

  if qfind.RecordCount > 0 then
   begin
    result := DM.Redondeo(qfind.FieldByName('CoberturaValor').AsFloat);
    FreeAndNil(qfindDato);
   end
  else
   begin
   //Buscar Prueba - Todos
   qfind.Close;
   qfind.SQL.Clear;
   qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                     ' WHERE PruebaCode = '+#39+'0'+#39+' AND PruebaRelation = '+#39+prueba+#39+
                     ' AND ClienteCode = '+#39+'2'+#39+
                     ' AND MonedaID = '+#39+moneda+#39+
                     ' AND DataAreaId = ' + #39 + 'ldr' + #39 +
                     ' AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
   qfind.Parameters[0].Value := DM.SystemDate;
   qfind.Parameters[1].Value := DM.SystemDate;
   qfind.Open;

   if qfind.RecordCount > 0 then
      result := DM.Redondeo(qfind.FieldByName('CoberturaValor').AsFloat);
  end;
 end;

 FreeAndNil(qfind);
end;


function TDMPruebas.CoberturaPruebaMonedaPorc(prueba: string; cliente: string; moneda: string) : Integer;
var
 qfind : TADOQuery;
 qfindDato : TADOQuery;
begin
 qfind := DM.Newquery;

 //Buscar Prueba - Cliente
 qfind.Close;
 qfind.SQL.Clear;
 qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                   ' WHERE PruebaCode = '+#39+'0'+#39+' AND PruebaRelation = '+#39+prueba+#39+
                   ' AND ClienteCode = '+#39+'0'+#39+' AND ClienteRelation = '+#39+cliente+#39+
                   ' AND MonedaID = '+#39+moneda+#39+
                   ' AND DataAreaId = ' + #39 + 'ldr' + #39 +
                   ' AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
 qfind.Parameters[0].Value := DM.SystemDate;
 qfind.Parameters[1].Value := DM.SystemDate;
 qfind.Open;

 if qfind.RecordCount > 0 then
    result := qfind.FieldByName('CoberturaExpPorc').AsInteger
 else
 begin
  qfindDato := DM.Find_Ldr('SELECT * FROM PTCliente WHERE ClienteID = :cli',cliente);

  //Buscar Prueba - GrupoCliente
  qfind.Close;
  qfind.SQL.Clear;
  qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                    ' WHERE PruebaCode = '+#39+'0'+#39+' AND PruebaRelation = '+#39+prueba+#39+
                    ' AND ClienteCode = '+#39+'1'+#39+' AND ClienteRelation = '+#39+qfindDato.FieldByName('GrupoPrecio').AsString+#39+
                    ' AND MonedaID = '+#39+moneda+#39+
                    ' AND DataAreaId = ' + #39 + 'ldr' + #39 +
                    ' AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
  qfind.Parameters[0].Value := DM.SystemDate;
  qfind.Parameters[1].Value := DM.SystemDate;
  qfind.Open;

  if qfind.RecordCount > 0 then
  begin
   result := qfind.FieldByName('CoberturaExpPorc').AsInteger;
   FreeAndNil(qfindDato);
  end
  else
  begin
   //Buscar Prueba - Todos
   qfind.Close;
   qfind.SQL.Clear;
   qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                     ' WHERE PruebaCode = '+#39+'0'+#39+' AND PruebaRelation = '+#39+prueba+#39+
                     ' AND ClienteCode = '+#39+'2'+#39+
                     ' AND MonedaID = '+#39+moneda+#39+
                     ' AND DataAreaId = ' + #39 + 'ldr' + #39 +
                     ' AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
   qfind.Parameters[0].Value := DM.SystemDate;
   qfind.Parameters[1].Value := DM.SystemDate;
   qfind.Open;

   if qfind.RecordCount > 0 then
      result := qfind.FieldByName('CoberturaExpPorc').AsInteger
   else
      result := 0;
  end;
 end;

 FreeAndNil(qfind);
end;


function TDMPruebas.CoberturaPruebaPorc(prueba: string; cliente: string; moneda: string) : Integer;
var
 qfind : TADOQuery;
 qfindDato : TADOQuery;
 cobertura : Integer;
begin
 cobertura := CoberturaPruebaMonedaPorc(prueba,cliente,moneda);

// if not cobertura then
 if (cobertura = 0) then
 begin
  qfind := DM.Newquery;

  //Buscar Prueba - Cliente
  qfind.Close;
  qfind.SQL.Clear;
  qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                    ' WHERE PruebaCode = '+#39+'0'+#39+' AND PruebaRelation = '+#39+prueba+#39+
                    ' AND ClienteCode = '+#39+'0'+#39+' AND ClienteRelation = '+#39+cliente+#39+
                    ' AND DataAreaId = ' + #39 + 'ldr' + #39 +
                    ' AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
  qfind.Parameters[0].Value := DM.SystemDate;
  qfind.Parameters[1].Value := DM.SystemDate;
  qfind.Open;

  if qfind.RecordCount > 0 then
  begin
   result := qfind.FieldByName('CoberturaExpPorc').AsInteger;
  end
  else
  begin
   qfindDato := DM.Find_Ldr('SELECT * FROM PTCliente WHERE ClienteID = :cli',cliente);

   //Buscar Prueba - GrupoCliente
   qfind.Close;
   qfind.SQL.Clear;
   qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                     ' WHERE PruebaCode = '+#39+'0'+#39+' AND PruebaRelation = '+#39+prueba+#39+
                     ' AND ClienteCode = '+#39+'1'+#39+' AND ClienteRelation = '+#39+qfindDato.FieldByName('GrupoPrecio').AsString+#39+
                     ' AND DataAreaId = ' + #39 + 'ldr' + #39 +
                     ' AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
   qfind.Parameters[0].Value := DM.SystemDate;
   qfind.Parameters[1].Value := DM.SystemDate;
   qfind.Open;

   if qfind.RecordCount > 0 then
   begin
    result := qfind.FieldByName('CoberturaExpPorc').AsInteger;
    FreeAndNil(qfindDato);
   end
   else
   begin
    //Buscar Prueba - Todos
    qfind.Close;
    qfind.SQL.Clear;
    qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                      ' WHERE PruebaCode = '+#39+'0'+#39+' AND PruebaRelation = '+#39+prueba+#39+
                      ' AND ClienteCode = '+#39+'2'+#39+
                      ' AND DataAreaId = ' + #39 + 'ldr' + #39 +
                      ' AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
    qfind.Parameters[0].Value := DM.SystemDate;
    qfind.Parameters[1].Value := DM.SystemDate;
    qfind.Open;

    if qfind.RecordCount > 0 then
    begin
     result := qfind.FieldByName('CoberturaExpPorc').AsInteger;
    end
    else
     result := 0;
   end;
  end;

  FreeAndNil(qfind);
 end
 else
  result := cobertura;
end;


function TDMPruebas.CoberturaPrueba(prueba: string; cliente: string; moneda: string) : Double;
var
 qfind : TADOQuery;
 qfindDato : TADOQuery;
 cobertura : Double;
begin
 cobertura := CoberturaPruebaMoneda(prueba, cliente, moneda);

 if cobertura = 0 then
 begin
  qfind := DM.Newquery;

  //Buscar Prueba - Cliente
  qfind.Close;
  qfind.SQL.Clear;
  qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                    ' WHERE PruebaCode = '+#39+'0'+#39+' AND PruebaRelation = '+#39+prueba+#39+
                    ' AND ClienteCode = '+#39+'0'+#39+' AND ClienteRelation = '+#39+cliente+#39+
                    ' AND DataAreaId = ' + #39 + 'ldr' + #39 +
                    ' AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
  qfind.Parameters[0].Value := DM.SystemDate;
  qfind.Parameters[1].Value := DM.SystemDate;
  qfind.Open;

  if qfind.RecordCount > 0 then
  begin
   if moneda = qfind.FieldByName('MonedaId').AsString then
      result := DM.Redondeo(qfind.FieldByName('CoberturaValor').AsFloat)
   else
      result := DM.Redondeo(DM.ValorMoneda(qfind.FieldByName('CoberturaValor').AsFloat,
                                           qfind.FieldByName('MonedaId').AsString,
                                           moneda, DM.SystemDate));
  end
  else
  begin
   qfindDato := DM.Find_Ldr('SELECT * FROM PTCliente WHERE ClienteID = :cli',cliente);

   //Buscar Prueba - GrupoCliente
   qfind.Close;
   qfind.SQL.Clear;
   qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                     ' WHERE PruebaCode = '+#39+'0'+#39+' AND PruebaRelation = '+#39+prueba+#39+
                     ' AND ClienteCode = '+#39+'1'+#39+' AND ClienteRelation = '+#39+qfindDato.FieldByName('GrupoPrecio').AsString+#39+
                     ' AND DataAreaId = ' + #39 + 'ldr' + #39 +
                     ' AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
   qfind.Parameters[0].Value := DM.SystemDate;
   qfind.Parameters[1].Value := DM.SystemDate;
   qfind.Open;

   if qfind.RecordCount > 0 then
   begin
    if moneda = qfind.FieldByName('MonedaId').AsString then
       result := DM.Redondeo(qfind.FieldByName('CoberturaValor').AsFloat)
    else
       result := DM.Redondeo(DM.ValorMoneda(qfind.FieldByName('CoberturaValor').AsFloat,
                                            qfind.FieldByName('MonedaId').AsString,
                                            moneda,DM.SystemDate));
    FreeAndNil(qfindDato);
   end
   else
   begin
    //Buscar Prueba - Todos
    qfind.Close;
    qfind.SQL.Clear;
    qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                      ' WHERE PruebaCode = '+#39+'0'+#39+' AND PruebaRelation = '+#39+prueba+#39+
                      ' AND ClienteCode = '+#39+'2'+#39+
                      ' AND DataAreaId = ' + #39 + 'ldr' + #39 +
                      ' AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
    qfind.Parameters[0].Value := DM.SystemDate;
    qfind.Parameters[1].Value := DM.SystemDate;
    qfind.Open;

    if qfind.RecordCount > 0 then
    begin
     if moneda = qfind.FieldByName('MonedaId').AsString then
        result := DM.Redondeo(qfind.FieldByName('CoberturaValor').AsFloat)
     else
        result := DM.Redondeo(DM.ValorMoneda(qfind.FieldByName('CoberturaValor').AsFloat,
                                             qfind.FieldByName('MonedaId').AsString,
                                             moneda,DM.SystemDate));
    end;
   end;
  end;

  FreeAndNil(qfind);
 end
 else
  result := DM.Redondeo(cobertura);
end;


function TDMPruebas.PrecioPrueba(prueba: string; cliente: string; moneda: string) : Double;
Var
 qfind : TADOQuery;
 qfindDato : TADOQuery;
 precio    : Double;
 grupocliente : string;
begin
 //Buscando El Costo Como Acuerdo Comercial.
 precio := PrecioPruebaCosto(prueba,cliente,moneda);
////////////////////////////////////////////////////////////////////////////////

 If (Precio > 0) then
   Begin
    DM.qrParametro.close;
    DM.qrParametro.Open;

    If DM.qrParametroPreciosBaseDolares.Value then
     begin
      precio := DM.ValorMoneda(Precio, DM.qrParametroMonedaDolares.Value,
                               DM.qrParametroMonedaID.Value, DM.SystemDate);

      if moneda = DM.qrParametroMonedaID.Value then
       result := DM.Redondeo(precio)
      else
       result := DM.Redondeo(DM.ValorMoneda(Precio, DM.qrParametroMonedaID.Value,
                             moneda, DM.SystemDate));
     end
    Else
     Begin
      if moneda = DM.qrParametroMonedaID.Value then
       result := DM.Redondeo(Precio)
      else
       result := DM.Redondeo(DM.ValorMoneda(Precio, DM.qrParametroMonedaID.Value,
                             moneda, DM.SystemDate));
     end;
    FreeAndNil(qfindDato);
   End
////////////////////////////////////////////////////////////////////////////////
 Else
  precio := DM.Redondeo(PrecioPruebaMoneda(prueba,cliente,moneda));

 if (precio = 0) AND (not findAcuerdoCom) then
 begin

 qfind := DM.NewQuery;

 //Buscar Cliente - Prueba
 qfind.Close;
 qfind.SQL.Clear;
 qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                   ' WHERE PruebaCode = '+#39+'0'+#39+' AND PruebaRelation = '+#39+prueba+#39+
                   ' AND ClienteCode = '+#39+'0'+#39+' AND ClienteRelation = '+#39+cliente+#39+
                   ' AND Relacion = '+#39+'P'+#39+
                   ' AND Costo = 0 '+
                   ' AND DataAreaId = ' + #39 + 'ldr' + #39 +
                   ' AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
 qfind.Parameters[0].Value := DM.SystemDate;
 qfind.Parameters[1].Value := DM.SystemDate;
 qfind.Open;

 if qfind.RecordCount > 0 then
 begin
    if moneda = qfind.FieldByName('MonedaId').AsString then
      result := DM.Redondeo(qfind.FieldByName('Precio').AsFloat)
   else
      result := DM.Redondeo(DM.ValorMoneda(qfind.FieldByName('Precio').AsFloat,
                                        qfind.FieldByName('MonedaId').AsString,
                                        moneda,DM.SystemDate));
 end
 else
 begin
  qfindDato := DM.Find_Ldr('SELECT * FROM PTPrueba WHERE PruebaID = :pru',prueba);

  //Buscar Cliente - Grupo de Prueba
  qfind.Close;
  qfind.SQL.Clear;
  qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                    ' WHERE PruebaCode = '+#39+'1'+#39+' AND PruebaRelation = '+#39+qfindDato.FieldByName('GrupoPruebaId').AsString+#39+
                    ' AND ClienteCode = '+#39+'0'+#39+' AND ClienteRelation = '+#39+cliente+#39+
                    ' AND Relacion = '+#39+'P'+#39+
                    ' AND Costo = 0 '+
                    ' AND DataAreaId = ' + #39 + 'ldr' + #39 +
                    ' AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
  qfind.Parameters[0].Value := DM.SystemDate;
  qfind.Parameters[1].Value := DM.SystemDate;
  qfind.Open;

  FreeAndNil(qfindDato);

  if qfind.RecordCount > 0 then
  begin
    if moneda = qfind.FieldByName('MonedaId').AsString then
      result := DM.Redondeo(qfind.FieldByName('Precio').AsFloat)
   else
      result := DM.Redondeo(DM.ValorMoneda(qfind.FieldByName('Precio').AsFloat,
                                        qfind.FieldByName('MonedaId').AsString,
                                        moneda,DM.SystemDate));
  end
  else
  begin
   //Buscar Cliente - Todos
   qfind.Close;
   qfind.SQL.Clear;
   qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                     ' WHERE PruebaCode = '+#39+'2'+#39+
                     ' AND ClienteCode = '+#39+'0'+#39+ ' AND ClienteRelation = '+#39+cliente+#39+
                     ' AND Relacion = '+#39+'P'+#39+
                     ' AND Costo = 0 '+
                     ' AND DataAreaId = ' + #39 + 'ldr' + #39 +
                     ' AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
   qfind.Parameters[0].Value := DM.SystemDate;
   qfind.Parameters[1].Value := DM.SystemDate;
   qfind.Open;

   if qfind.RecordCount > 0 then
   begin
    if moneda = qfind.FieldByName('MonedaId').AsString then
      result := DM.Redondeo(qfind.FieldByName('Precio').AsFloat)
   else
      result := DM.Redondeo(DM.ValorMoneda(qfind.FieldByName('Precio').AsFloat,
                                        qfind.FieldByName('MonedaId').AsString,
                                        moneda,DM.SystemDate));
   end
   else
   begin
    qfindDato := DM.Find_Ldr('SELECT * FROM PTCliente WHERE ClienteID = :pru',cliente);
    grupocliente := qfindDato.FieldByName('GrupoPrecio').AsString;

    //Buscar Grupo Cliente - Prueba
    qfind.Close;
    qfind.SQL.Clear;
    qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                      ' WHERE PruebaCode = '+#39+'0'+#39+' AND PruebaRelation = '+#39+prueba+#39+
                      ' AND ClienteCode = '+#39+'1'+#39+' AND ClienteRelation = '+#39+grupocliente+#39+
                      ' AND Relacion = '+#39+'P'+#39+
                      ' AND Costo = 0 '+
                      ' AND DataAreaId = ' + #39 + 'ldr' + #39 +
                      ' AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
    qfind.Parameters[0].Value := DM.SystemDate;
    qfind.Parameters[1].Value := DM.SystemDate;
    qfind.Open;

    FreeAndNil(qfindDato);

    if qfind.RecordCount > 0 then
    begin
     if moneda = qfind.FieldByName('MonedaId').AsString then
       result := DM.Redondeo(qfind.FieldByName('Precio').AsFloat)
     else
       result := DM.Redondeo(DM.ValorMoneda(qfind.FieldByName('Precio').AsFloat,
                                         qfind.FieldByName('MonedaId').AsString,
                                         moneda,DM.SystemDate));
    end
    else
    begin
     qfindDato := DM.Find_Ldr('SELECT * FROM PTPrueba WHERE PruebaID = :pru',prueba);

     //Buscar Grupo Cliente - Grupo Prueba
     qfind.Close;
     qfind.SQL.Clear;
     qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                       ' WHERE PruebaCode = '+#39+'1'+#39+' AND PruebaRelation = '+#39+qfindDato.FieldByName('GrupoPruebaid').AsString+#39+
                       ' AND ClienteCode = '+#39+'1'+#39+' AND ClienteRelation = '+#39+grupocliente+#39+
                       ' AND Relacion = '+#39+'P'+#39+
                       ' AND Costo = 0 '+
                       ' AND DataAreaId = ' + #39 + 'ldr' + #39 +
                       ' AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
     qfind.Parameters[0].Value := DM.SystemDate;
     qfind.Parameters[1].Value := DM.SystemDate;
     qfind.Open;

     FreeAndNil(qfindDato);

     if qfind.RecordCount > 0 then
     begin
      if moneda = qfind.FieldByName('MonedaId').AsString then
         result := DM.Redondeo(qfind.FieldByName('Precio').AsFloat)
      else
         result := DM.Redondeo(DM.ValorMoneda(qfind.FieldByName('Precio').AsFloat,
                                           qfind.FieldByName('MonedaId').AsString,
                                           moneda,DM.SystemDate));
     end
     else
     begin
      //Buscar Grupo Cliente - Todas
      qfind.Close;
      qfind.SQL.Clear;
      qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                        ' WHERE PruebaCode = '+#39+'2'+#39+
                        ' AND ClienteCode = '+#39+'1'+#39+' AND ClienteRelation = '+#39+grupocliente+#39+
                        ' AND Relacion = '+#39+'P'+#39+
                        ' AND Costo = 0 '+
                        ' AND DataAreaId = ' + #39 + 'ldr' + #39 +
                        ' AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
      qfind.Parameters[0].Value := DM.SystemDate;
      qfind.Parameters[1].Value := DM.SystemDate;
      qfind.Open;

      if qfind.RecordCount > 0 then
      begin
      if moneda = qfind.FieldByName('MonedaId').AsString then
         result := DM.Redondeo(qfind.FieldByName('Precio').AsFloat)
      else
         result := DM.Redondeo(DM.ValorMoneda(qfind.FieldByName('Precio').AsFloat,
                                           qfind.FieldByName('MonedaId').AsString,
                                           moneda,DM.SystemDate));
      end
      else
      begin
       //Buscar Todos - prueba
       qfind.Close;
       qfind.SQL.Clear;
       qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                         ' WHERE PruebaCode = '+#39+'0'+#39+ ' AND PruebaRelation = '+#39+prueba+#39+
                         ' AND ClienteCode = '+#39+'2'+#39+
                         ' AND Relacion = '+#39+'P'+#39+
                         ' AND Costo = 0 '+
                         ' AND DataAreaId = ' + #39 + 'ldr' + #39 +
                         ' AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
       qfind.Parameters[0].Value := DM.SystemDate;
       qfind.Parameters[1].Value := DM.SystemDate;
       qfind.Open;

       if qfind.RecordCount > 0 then
       begin
       if moneda = qfind.FieldByName('MonedaId').AsString then
          result := DM.Redondeo(qfind.FieldByName('Precio').AsFloat)
       else
          result := DM.Redondeo(DM.ValorMoneda(qfind.FieldByName('Precio').AsFloat,
                                qfind.FieldByName('MonedaId').AsString,
                                moneda,DM.SystemDate));
       end
       else
       begin

        qfindDato := DM.Find_Ldr('SELECT * FROM PTPrueba WHERE PruebaID = :pru',prueba);

        //Buscar Todos - grupo de prueba
        qfind.Close;
        qfind.SQL.Clear;
        qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                          ' WHERE PruebaCode = '+#39+'1'+#39+ ' AND PruebaRelation = '+#39+qfindDato.fieldbyname('GrupoPruebaId').asstring+#39+
                          ' AND ClienteCode = '+#39+'2'+#39+
                          ' AND Relacion = '+#39+'P'+#39+
                          ' AND Costo = 0 '+
                          ' AND DataAreaId = ' + #39 + 'ldr' + #39 +
                          ' AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
        qfind.Parameters[0].Value := DM.SystemDate;
        qfind.Parameters[1].Value := DM.SystemDate;
        qfind.Open;

        FreeAndNil(qfindDato);

        if qfind.RecordCount > 0 then
        begin
         if moneda = qfind.FieldByName('MonedaId').AsString then
            result := DM.Redondeo(qfind.FieldByName('Precio').AsFloat)
         else
            result := DM.Redondeo(DM.ValorMoneda(qfind.FieldByName('Precio').AsFloat,
                                  qfind.FieldByName('MonedaId').AsString,
                                  moneda,DM.SystemDate));
        end
        else
        begin
         //Buscar Todos - Todos
         qfind.Close;
         qfind.SQL.Clear;
         qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                           ' WHERE PruebaCode = '+#39+'2'+#39+
                           ' AND ClienteCode = '+#39+'2'+#39+
                           ' AND Relacion = '+#39+'P'+#39+
                           ' AND Costo = 0 '+
                           ' AND DataAreaId = ' + #39 + 'ldr' + #39 +
                           ' AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
         qfind.Parameters[0].Value := DM.SystemDate;
         qfind.Parameters[1].Value := DM.SystemDate;
         qfind.Open;

         if qfind.RecordCount > 0 then
         begin
          if moneda = qfind.FieldByName('MonedaId').AsString then
             result := DM.Redondeo(qfind.FieldByName('Precio').AsFloat)
          else
             result := DM.Redondeo(DM.ValorMoneda(qfind.FieldByName('Precio').AsFloat,
                                   qfind.FieldByName('MonedaId').AsString,
                                   moneda,DM.SystemDate));
         end
         else
         begin
          qfindDato := DM.NewQuery;

          qfindDato.Close;
          qfindDato.SQL.Text := ' SELECT * FROM PTPrecioAlternativo WHERE PruebaId = '+#39+prueba+#39+
                                ' AND SucursalId = '+#39+DM.CurSucursal+#39+' AND Activo = 1';
          qfindDato.Open;

          if qfindDato.RecordCount > 0 then
          begin
           DM.qrParametro.close;
           DM.qrParametro.Open;

           if DM.qrParametroPreciosBaseDolares.Value then
           begin
            precio := DM.ValorMoneda(qfindDato.FieldByName('PrecioDolares').AsFloat,DM.qrParametroMonedaDolares.Value ,
                                  DM.qrParametroMonedaID.Value,DM.SystemDate);
            if moneda = DM.qrParametroMonedaID.Value then
              result := DM.Redondeo(precio)
            else
              result := qfindDato.FieldByName('PrecioDolares').AsFloat;
           end
           else
           begin
            if moneda = DM.qrParametroMonedaID.Value then
               result := DM.Redondeo(qfindDato.FieldByName('Precio').AsFloat)
            else
               result := DM.Redondeo(DM.ValorMoneda(qfindDato.FieldByName('Precio').AsFloat,
                                     DM.qrParametroMonedaID.Value ,
                                     moneda,DM.SystemDate));
           end;
           FreeAndNil(qfindDato);
          end
          else
          begin
           DM.qrParametro.close;
           DM.qrParametro.Open;

           FreeAndNil(qfindDato);
           qfindDato := DM.Find_Ldr('SELECT * FROM PTPrueba WHERE PruebaID = :pur',prueba);

           if DM.qrParametroPreciosBaseDolares.Value then
           begin
            precio := DM.ValorMoneda(qfindDato.FieldByName('PrecioDolares').AsFloat,DM.qrParametroMonedaDolares.Value ,
                                  DM.qrParametroMonedaID.Value,DM.SystemDate);
            if moneda = DM.qrParametroMonedaID.Value then
              result := DM.Redondeo(precio)
            else
              result := qfindDato.FieldByName('PrecioDolares').AsFloat;
           end
           else
           begin
            if moneda = DM.qrParametroMonedaID.Value then
               result := DM.Redondeo(qfindDato.FieldByName('Precio').AsFloat)
            else
               result := DM.Redondeo(DM.ValorMoneda(qfindDato.FieldByName('Precio').AsFloat,
                                                 DM.qrParametroMonedaID.Value ,
                                                 moneda,DM.SystemDate));
           end;
           FreeAndNil(qfindDato);
          end;
         end;


        end;
       end;
      end;
     end;
    end;
   end;
  end;
 end;

 end
 else
  result := DM.Redondeo(precio);
end;


function TDMPruebas.PrecioPruebaMoneda(prueba: string; cliente: string; moneda:
  string) : Double;
var
 qfind : TADOQuery;
 qfindDato : TADOQuery;
 grupocliente : String;
begin
 qfind := DM.Newquery;
 findAcuerdoCom := false;
 //Buscar Cliente - Prueba
 qfind.Close;
 qfind.SQL.Clear;
 qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                   ' WHERE PruebaCode = '+#39+'0'+#39+' AND PruebaRelation = '+#39+prueba+#39+
                   ' AND ClienteCode = '+#39+'0'+#39+' AND ClienteRelation = '+#39+cliente+#39+
                   ' AND MonedaID = '+#39+moneda+#39+
                   ' AND Relacion = '+#39+'P'+#39+
                   ' AND Costo = 0 '+
                   ' AND DataAreaId = ' + #39 + 'ldr' + #39 +
                   ' AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
 qfind.Parameters[0].Value := DM.SystemDate;
 qfind.Parameters[1].Value := DM.SystemDate;
 qfind.Open;

 if qfind.RecordCount > 0 then
 begin
  findAcuerdoCom := true;
  result := DM.Redondeo(qfind.FieldByName('Precio').AsFloat);
 end
 else
 begin
  qfindDato := DM.Find_Ldr('SELECT * FROM PTPrueba WHERE PruebaID = :pru',prueba);

  //Buscar Cliente - Grupo de Prueba
  qfind.Close;
  qfind.SQL.Clear;
  qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                    ' WHERE PruebaCode = '+#39+'1'+#39+' AND PruebaRelation = '+#39+qfindDato.FieldByName('GrupoPruebaId').AsString+#39+
                    ' AND ClienteCode = '+#39+'0'+#39+' AND ClienteRelation = '+#39+cliente+#39+
                    ' AND MonedaID = '+#39+moneda+#39+
                    ' AND Relacion = '+#39+'P'+#39+
                    ' AND Costo = 0 '+
                    ' AND DataAreaId = ' + #39 + 'ldr' + #39 +
                    ' AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
  qfind.Parameters[0].Value := DM.SystemDate;
  qfind.Parameters[1].Value := DM.SystemDate;
  qfind.Open;

  FreeAndNil(qfindDato);

  if qfind.RecordCount > 0 then
  begin
   findAcuerdoCom := true;
   result := DM.Redondeo(qfind.FieldByName('Precio').AsFloat);
  end
  else
  begin
   //Buscar Cliente - Todos
   qfind.Close;
   qfind.SQL.Clear;
   qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                     ' WHERE PruebaCode = '+#39+'2'+#39+
                     ' AND ClienteCode = '+#39+'0'+#39+ ' AND ClienteRelation = '+#39+cliente+#39+
                     ' AND MonedaID = '+#39+moneda+#39+
                     ' AND Relacion = '+#39+'P'+#39+
                     ' AND Costo = 0 '+
                     ' AND DataAreaId = ' + #39 + 'ldr' + #39 +
                     ' AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
   qfind.Parameters[0].Value := DM.SystemDate;
   qfind.Parameters[1].Value := DM.SystemDate;
   qfind.Open;

   if qfind.RecordCount > 0 then
   begin
    findAcuerdoCom := true;
    result := DM.Redondeo(qfind.FieldByName('Precio').AsFloat);
   end
   else
   begin
    qfindDato := DM.Find_Ldr('SELECT * FROM PTCliente WHERE ClienteID = :pru',cliente);
    grupocliente := qfindDato.FieldByName('GrupoPrecio').AsString;

    //Buscar Grupo Cliente - Prueba
    qfind.Close;
    qfind.SQL.Clear;
    qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                      ' WHERE PruebaCode = '+#39+'0'+#39+' AND PruebaRelation = '+#39+prueba+#39+
                      ' AND ClienteCode = '+#39+'1'+#39+' AND ClienteRelation = '+#39+grupocliente+#39+
                      ' AND MonedaID = '+#39+moneda+#39+
                      ' AND Relacion = '+#39+'P'+#39+
                      ' AND Costo = 0 '+
                      ' AND DataAreaId = ' + #39 + 'ldr' + #39 +
                      ' AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
    qfind.Parameters[0].Value := DM.SystemDate;
    qfind.Parameters[1].Value := DM.SystemDate;
    qfind.Open;

    FreeAndNil(qfindDato);

    if qfind.RecordCount > 0 then
    begin
     findAcuerdoCom := true;
     result := DM.Redondeo(qfind.FieldByName('Precio').AsFloat);
    end
    else
    begin
     qfindDato := DM.Find_Ldr('SELECT * FROM PTPrueba WHERE PruebaID = :pru',prueba);

     //Buscar Grupo Cliente - Grupo Prueba
     qfind.Close;
     qfind.SQL.Clear;
     qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                       ' WHERE PruebaCode = '+#39+'1'+#39+' AND PruebaRelation = '+#39+qfindDato.FieldByName('GrupoPruebaid').AsString+#39+
                       ' AND ClienteCode = '+#39+'1'+#39+' AND ClienteRelation = '+#39+grupocliente+#39+
                       ' AND MonedaID = '+#39+moneda+#39+
                       ' AND Relacion = '+#39+'P'+#39+
                       ' AND Costo = 0 '+
                       ' AND DataAreaId = ' + #39 + 'ldr' + #39 +
                       ' AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
     qfind.Parameters[0].Value := DM.SystemDate;
     qfind.Parameters[1].Value := DM.SystemDate;
     qfind.Open;

     FreeAndNil(qfindDato);

     if qfind.RecordCount > 0 then
     begin
      findAcuerdoCom := true;
      result := DM.Redondeo(qfind.FieldByName('Precio').AsFloat);
     end
     else
     begin
      //Buscar Grupo Cliente - Todas
      qfind.Close;
      qfind.SQL.Clear;
      qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                        ' WHERE PruebaCode = '+#39+'2'+#39+
                        ' AND ClienteCode = '+#39+'1'+#39+' AND ClienteRelation = '+#39+grupocliente+#39+
                        ' AND MonedaID = '+#39+moneda+#39+
                        ' AND Relacion = '+#39+'P'+#39+
                        ' AND Costo = 0 '+
                        ' AND DataAreaId = ' + #39 + 'ldr' + #39 +
                        ' AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
      qfind.Parameters[0].Value := DM.SystemDate;
      qfind.Parameters[1].Value := DM.SystemDate;
      qfind.Open;

      if qfind.RecordCount > 0 then
      begin
       findAcuerdoCom := true;
       result := DM.Redondeo(qfind.FieldByName('Precio').AsFloat);
      end
      else
      begin
       //Buscar Todos - prueba
       qfind.Close;
       qfind.SQL.Clear;
       qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                         ' WHERE PruebaCode = '+#39+'0'+#39+ ' AND PruebaRelation = '+#39+prueba+#39+
                         ' AND ClienteCode = '+#39+'2'+#39+
                         ' AND MonedaID = '+#39+moneda+#39+
                         ' AND Relacion = '+#39+'P'+#39+
                         ' AND Costo = 0 '+
                         ' AND DataAreaId = ' + #39 + 'ldr' + #39 +
                         ' AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
       qfind.Parameters[0].Value := DM.SystemDate;
       qfind.Parameters[1].Value := DM.SystemDate;
       qfind.Open;

       if qfind.RecordCount > 0 then
       begin
        findAcuerdoCom := true;
        result := DM.Redondeo(qfind.FieldByName('Precio').AsFloat);
       end
       else
       begin

        qfindDato := DM.Find_Ldr('SELECT * FROM PTPrueba WHERE PruebaID = :pru',prueba);

        //Buscar Todos - grupo de prueba
        qfind.Close;
        qfind.SQL.Clear;
        qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                          ' WHERE PruebaCode = '+#39+'1'+#39+ ' AND PruebaRelation = '+#39+qfindDato.fieldbyname('GrupoPruebaId').asstring+#39+
                          ' AND ClienteCode = '+#39+'2'+#39+
                          ' AND MonedaID = '+#39+moneda+#39+
                          ' AND Relacion = '+#39+'P'+#39+
                          ' AND Costo = 0 '+
                          ' AND DataAreaId = ' + #39 + 'ldr' + #39 +
                          ' AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
        qfind.Parameters[0].Value := DM.SystemDate;
        qfind.Parameters[1].Value := DM.SystemDate;
        qfind.Open;

        FreeAndNil(qfindDato);

        if qfind.RecordCount > 0 then
        begin
         findAcuerdoCom := true;
         result := DM.Redondeo(qfind.FieldByName('Precio').AsFloat);
        end
        else
        begin
         //Buscar Todos - Todos
         qfind.Close;
         qfind.SQL.Clear;
         qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                           ' WHERE PruebaCode = '+#39+'2'+#39+
                           ' AND ClienteCode = '+#39+'2'+#39+
                           ' AND MonedaID = '+#39+moneda+#39+
                           ' AND Relacion = '+#39+'P'+#39+
                           ' AND Costo = 0 '+
                           ' AND DataAreaId = ' + #39 + 'ldr' + #39 +
                           ' AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
         qfind.Parameters[0].Value := DM.SystemDate;
         qfind.Parameters[1].Value := DM.SystemDate;
         qfind.Open;

         if qfind.RecordCount > 0 then
         begin
          findAcuerdoCom := true;
          result := DM.Redondeo(qfind.FieldByName('Precio').AsFloat);
         end
         else
          result := 0;
        end;
       end;
      end;
     end;
    end;
   end;
  end;
 end;
end;



function TDMPruebas.PrecioPruebaCosto(prueba: string; cliente: string; moneda:
  string) : Double;
var
 qfind : TADOQuery;
 qfindDato : TADOQuery;
 qfindPrueba : TADOQuery;
 grupocliente : String;
begin
 qfind := DM.Newquery;
 findAcuerdoCom := false;

 //Buscar Cliente - Prueba
 qfind.Close;
 qfind.SQL.Clear;
 qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                   ' WHERE PruebaCode = '+#39+'0'+#39+' AND PruebaRelation = '+#39+prueba+#39+
                   ' AND ClienteCode = '+#39+'0'+#39+' AND ClienteRelation = '+#39+cliente+#39+
                   ' AND Relacion = '+#39+'P'+#39+
                   ' AND Costo = 1 '+
                   ' AND Activo = 1 '+
                   ' AND DataAreaId = ' + #39 + 'ldr' + #39 +
                   ' AND Desde <= :fech1 '+
                   ' AND Hasta >= :fech2';

 qfind.Parameters[0].Value := DM.SystemDate;
 qfind.Parameters[1].Value := DM.SystemDate;
 qfind.Open;

 if qfind.RecordCount > 0 then
 begin
   findAcuerdoCom := true;
   qfindPrueba := DM.Find_Ldr('SELECT * FROM PTPrueba WHERE PruebaID = :pru', prueba);
   result := DM.Redondeo(qfindPrueba.FieldByName('Costo').AsFloat);
 end
 else
 begin
  qfindDato := DM.Find_Ldr('SELECT * FROM PTPrueba WHERE PruebaID = :pru',prueba);

  //Buscar Cliente - Grupo de Prueba
  qfind.Close;
  qfind.SQL.Clear;
  qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                    ' WHERE PruebaCode = '+#39+'1'+#39+' AND PruebaRelation = '+#39+qfindDato.FieldByName('GrupoPruebaId').AsString+#39+
                    ' AND ClienteCode = '+#39+'0'+#39+' AND ClienteRelation = '+#39+cliente+#39+
                    ' AND Relacion = '+#39+'P'+#39+
                    ' AND Costo = 1 '+
                    ' AND Activo = 1 '+
                    ' AND DataAreaId = ' + #39 + 'ldr' + #39 +
                    ' AND Desde <= :fech1 '+
                    ' AND Hasta >= :fech2';
  qfind.Parameters[0].Value := DM.SystemDate;
  qfind.Parameters[1].Value := DM.SystemDate;
  qfind.Open;

  FreeAndNil(qfindDato);

  if qfind.RecordCount > 0 then
  begin
    findAcuerdoCom := true;
    qfindPrueba := DM.Find_Ldr('SELECT * FROM PTPrueba WHERE PruebaID = :pru', prueba);
    result := DM.Redondeo(qfindPrueba.FieldByName('Costo').AsFloat);
  end
  else
  begin
   //Buscar Cliente - Todos
   qfind.Close;
   qfind.SQL.Clear;
   qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                     ' WHERE PruebaCode = '+#39+'2'+#39+
                     ' AND ClienteCode = '+#39+'0'+#39+ ' AND ClienteRelation = '+#39+cliente+#39+
                     ' AND Relacion = '+#39+'P'+#39+
                     ' AND Costo = 1 '+
                     ' AND Activo = 1 '+
                     ' AND DataAreaId = ' + #39 + 'ldr' + #39 +
                     ' AND Desde <= :fech1 '+
                     ' AND Hasta >= :fech2';

   qfind.Parameters[0].Value := DM.SystemDate;
   qfind.Parameters[1].Value := DM.SystemDate;
   qfind.Open;

   if qfind.RecordCount > 0 then
   begin
     findAcuerdoCom := true;
     qfindPrueba := DM.Find_Ldr('SELECT * FROM PTPrueba WHERE PruebaID = :pru', prueba);
     result := DM.Redondeo(qfindPrueba.FieldByName('Costo').AsFloat);
   end
   else
   begin
    qfindDato := DM.Find_Ldr('SELECT * FROM PTCliente WHERE ClienteID = :pru',cliente);
    grupocliente := qfindDato.FieldByName('GrupoPrecio').AsString;

    //Buscar Grupo Cliente - Prueba
    qfind.Close;
    qfind.SQL.Clear;
    qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                      ' WHERE PruebaCode = '+#39+'0'+#39+' AND PruebaRelation = '+#39+prueba+#39+
                      ' AND ClienteCode = '+#39+'1'+#39+' AND ClienteRelation = '+#39+grupocliente+#39+
                      ' AND Relacion = '+#39+'P'+#39+
                      ' AND Costo = 1 '+
                      ' AND Activo = 1 '+
                      ' AND DataAreaId = ' + #39 + 'ldr' + #39 +
                      ' AND Desde <= :fech1 '+
                      ' AND Hasta >= :fech2';

    qfind.Parameters[0].Value := DM.SystemDate;
    qfind.Parameters[1].Value := DM.SystemDate;
    qfind.Open;

    FreeAndNil(qfindDato);

    if qfind.RecordCount > 0 then
    begin
      findAcuerdoCom := true;
      qfindPrueba := DM.Find_Ldr('SELECT * FROM PTPrueba WHERE PruebaID = :pru', prueba);
      result := DM.Redondeo(qfindPrueba.FieldByName('Costo').AsFloat);
    end
    else
    begin
     qfindDato := DM.Find_Ldr('SELECT * FROM PTPrueba WHERE PruebaID = :pru',prueba);

     //Buscar Grupo Cliente - Grupo Prueba
     qfind.Close;
     qfind.SQL.Clear;
     qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                       ' WHERE PruebaCode = '+#39+'1'+#39+' AND PruebaRelation = '+#39+qfindDato.FieldByName('GrupoPruebaid').AsString+#39+
                       ' AND ClienteCode = '+#39+'1'+#39+' AND ClienteRelation = '+#39+grupocliente+#39+
                       ' AND Relacion = '+#39+'P'+#39+
                       ' AND Costo = 1 '+
                       ' AND Activo = 1 '+
                       ' AND DataAreaId = ' + #39 + 'ldr' + #39 +
                       ' AND Desde <= :fech1 '+
                       ' AND Hasta >= :fech2';

     qfind.Parameters[0].Value := DM.SystemDate;
     qfind.Parameters[1].Value := DM.SystemDate;
     qfind.Open;

     FreeAndNil(qfindDato);

     if qfind.RecordCount > 0 then
     begin
       findAcuerdoCom := true;
       qfindPrueba := DM.Find_Ldr('SELECT * FROM PTPrueba WHERE PruebaID = :pru', prueba);
       result := DM.Redondeo(qfindPrueba.FieldByName('Costo').AsFloat);
     end
     else
     begin
      //Buscar Grupo Cliente - Todas
      qfind.Close;
      qfind.SQL.Clear;
      qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                        ' WHERE PruebaCode = '+#39+'2'+#39+
                        ' AND ClienteCode = '+#39+'1'+#39+' AND ClienteRelation = '+#39+grupocliente+#39+
                        ' AND Relacion = '+#39+'P'+#39+
                        ' AND Costo = 1 '+
                        ' AND Activo = 1 '+
                        ' AND DataAreaId = ' + #39 + 'ldr' + #39 +
                        ' AND Desde <= :fech1 '+
                        ' AND Hasta >= :fech2';

      qfind.Parameters[0].Value := DM.SystemDate;
      qfind.Parameters[1].Value := DM.SystemDate;
      qfind.Open;

      if qfind.RecordCount > 0 then
      begin
        findAcuerdoCom := true;
        qfindPrueba := DM.Find_Ldr('SELECT * FROM PTPrueba WHERE PruebaID = :pru', prueba);
        result := DM.Redondeo(qfindPrueba.FieldByName('Costo').AsFloat);
      end
      else
      begin
       //Buscar Todos - prueba
       qfind.Close;
       qfind.SQL.Clear;
       qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                         ' WHERE PruebaCode = '+#39+'0'+#39+ ' AND PruebaRelation = '+#39+prueba+#39+
                         ' AND ClienteCode = '+#39+'2'+#39+
                         ' AND Relacion = '+#39+'P'+#39+
                         ' AND Costo = 1 '+
                         ' AND Activo = 1 '+
                         ' AND DataAreaId = ' + #39 + 'ldr' + #39 +
                         ' AND Desde <= :fech1 '+
                         ' AND Hasta >= :fech2';

       qfind.Parameters[0].Value := DM.SystemDate;
       qfind.Parameters[1].Value := DM.SystemDate;
       qfind.Open;

       if qfind.RecordCount > 0 then
       begin
         findAcuerdoCom := true;
         qfindPrueba := DM.Find_Ldr('SELECT * FROM PTPrueba WHERE PruebaID = :pru', prueba);
         result := DM.Redondeo(qfindPrueba.FieldByName('Costo').AsFloat);
       end
       else
       begin
        qfindDato := DM.Find_Ldr('SELECT * FROM PTPrueba WHERE PruebaID = :pru',prueba);

        //Buscar Todos - grupo de prueba
        qfind.Close;
        qfind.SQL.Clear;
        qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                          ' WHERE PruebaCode = '+#39+'1'+#39+ ' AND PruebaRelation = '+#39+qfindDato.fieldbyname('GrupoPruebaId').asstring+#39+
                          ' AND ClienteCode = '+#39+'2'+#39+
                          ' AND Relacion = '+#39+'P'+#39+
                          ' AND Costo = 1 '+
                          ' AND Activo = 1 '+
                          ' AND DataAreaId = ' + #39 + 'ldr' + #39 +
                          ' AND Desde <= :fech1 '+
                          ' AND Hasta >= :fech2';

        qfind.Parameters[0].Value := DM.SystemDate;
        qfind.Parameters[1].Value := DM.SystemDate;
        qfind.Open;

        FreeAndNil(qfindDato);

        if qfind.RecordCount > 0 then
        begin
          findAcuerdoCom := true;
          qfindPrueba := DM.Find_Ldr('SELECT * FROM PTPrueba WHERE PruebaID = :pru', prueba);
          result := DM.Redondeo(qfindPrueba.FieldByName('Costo').AsFloat);
        end
        else
        begin
         //Buscar Todos - Todos
         qfind.Close;
         qfind.SQL.Clear;
         qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                           ' WHERE PruebaCode = '+#39+'2'+#39+
                           ' AND ClienteCode = '+#39+'2'+#39+
                           ' AND Relacion = '+#39+'P'+#39+
                           ' AND Costo = 1 '+
                           ' AND Activo = 1 '+
                           ' AND DataAreaId = ' + #39 + 'ldr' + #39 +
                           ' AND Desde <= :fech1 '+
                           ' AND Hasta >= :fech2';

         qfind.Parameters[0].Value := DM.SystemDate;
         qfind.Parameters[1].Value := DM.SystemDate;
         qfind.Open;

         if qfind.RecordCount > 0 then
         begin
           findAcuerdoCom := true;
           qfindPrueba := DM.Find_Ldr('SELECT * FROM PTPrueba WHERE PruebaID = :pru', prueba);
           result := DM.Redondeo(qfindPrueba.FieldByName('Costo').AsFloat);
         end
         else
          result := 0;
        end;
       end;
      end;
     end;
    end;
   end;
  end;
 end;
end;


function TDMPruebas.DescCliente(cliente: string) : Double;
Var
 qfind        : TADOQuery;
 qfindDato    : TADOQuery;
 precio       : Double;
 grupocliente : string;
begin
 qfind := DM.NewQuery;

 //Buscar Cliente - Desc
 qfind.Close;
 qfind.SQL.Clear;
 qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                   ' WHERE ClienteCode = '+#39+'0'+#39+' AND ClienteRelation = '+#39+cliente+#39+
                   ' AND PruebaCode = '+#39+'2'+#39+
                   ' AND Relacion = '+#39+'D'+#39+
                   ' AND DataAreaId = ' + #39 + 'ldr' + #39 +
                   ' AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
 qfind.Parameters[0].Value := DM.SystemDate;
 qfind.Parameters[1].Value := DM.SystemDate;
 qfind.Open;

 if qfind.RecordCount > 0 then
   result := DM.Redondeo(qfind.FieldByName('PctDescuento').AsFloat)
 else
  begin
   qfindDato := DM.Find_Ldr('SELECT * FROM PTCliente WHERE ClienteID = :pru', cliente);
   grupocliente := qfindDato.FieldByName('GrupoDescuentoTotal').AsString;

   //Buscar Grupo Cliente - Prueba
   qfind.Close;
   qfind.SQL.Clear;
   qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                     ' WHERE PruebaCode = '+#39+'2'+#39+
                     ' AND ClienteCode = '+#39+'1'+#39+' AND ClienteRelation = '+#39+grupocliente+#39+
                     ' AND Relacion = '+#39+'D'+#39+
                     ' AND DataAreaId = ' + #39 + 'ldr' + #39 +
                     ' AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
   qfind.Parameters[0].Value := DM.SystemDate;
   qfind.Parameters[1].Value := DM.SystemDate;
   qfind.Open;

   FreeAndNil(qfindDato);

   if qfind.RecordCount > 0 then
     result := DM.Redondeo(qfind.FieldByName('PctDescuento').AsFloat)
   else
    begin
     //Buscar Todos - prueba
     qfind.Close;
     qfind.SQL.Clear;
     qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                       ' WHERE PruebaCode = '+#39+'2'+#39+
                       ' AND ClienteCode = '+#39+'2'+#39+
                       ' AND Relacion = '+#39+'D'+#39+
                       ' AND DataAreaId = ' + #39 + 'ldr' + #39 +
                       ' AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
     qfind.Parameters[0].Value := DM.SystemDate;
     qfind.Parameters[1].Value := DM.SystemDate;
     qfind.Open;

     if qfind.RecordCount > 0 then
        result := DM.Redondeo(qfind.FieldByName('PctDescuento').AsFloat)
     else
        result := 0;
    end;
  end;
end;


function TDMPruebas.DescTarjetaBono(tarjeta, numero: String) : Double;
Var
 Texto  : String;
 qfind  : TADOQuery;
 qdesc  : TADOQuery;
 qcard  : TADOQuery;
begin
 qfind := DM.NewQuery;
 qdesc := DM.NewQuery;
 qcard := DM.NewQuery;

 //Buscando el Numero de la Tarjeta de Descuento.
 qdesc := DM.NewQuery;
 qdesc.Close;

 qcard := DM.Find('SELECT * FROM PTTarjetaDescuento WHERE TarjetaId = :tar', UpperCase(tarjeta));

 Texto := ' SELECT * FROM PTTarjetaBono WHERE TarjetaID = :tar ';

 //Validando el Numero Obligatorio de la Tarjeta de Descuento.
 If (qcard.FieldByName('NumeroObligatorio').AsBoolean = True) Or
    (qcard.FieldByName('Bono').AsBoolean = True) then
   Texto := Texto + ' AND TarjetaNumero = :num ';

 qdesc.SQL.Text := Texto;
 qdesc.Parameters.ParamByName('tar').Value := UpperCase(tarjeta);

 //Validando el Numero Obligatorio de la Tarjeta de Descuento.
 If (qcard.FieldByName('NumeroObligatorio').AsBoolean = True) Or
    (qcard.FieldByName('Bono').AsBoolean = True) then
   qdesc.Parameters.ParamByName('num').Value := UpperCase(numero);

 qdesc.Open;

 If (qcard.FieldByName('NumeroObligatorio').AsBoolean = True) Or
    (qcard.FieldByName('Bono').AsBoolean = True) then
   Begin
     //Validando
     If (qdesc.RecordCount > 0) then
       Begin
         //Buscar Tarjeta - Descuento con el Numero Obligatorio de la Tarjeta de Descuento..
         qfind.Close;
         qfind.SQL.Clear;
         qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                           ' WHERE ClienteCode = '+#39+'3'+#39+' AND ClienteRelation = '+#39+tarjeta+#39+
                           ' AND PruebaCode = '+#39+'2'+#39+
                           ' AND Relacion = '+#39+'D'+#39+
                           ' AND DataAreaId = ' + #39 + 'ldr' + #39 +
                           ' AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
         qfind.Parameters[0].Value := DM.SystemDate;
         qfind.Parameters[1].Value := DM.SystemDate;
         qfind.Open;

         if qfind.RecordCount > 0 then
           Result := DM.Redondeo(qfind.FieldByName('PctDescuento').AsFloat)
         else
           Result := 0;
       End
     Else
       Result := 0;
   End
 Else
   Begin
     //Buscar Tarjeta - Descuento.
     qfind.Close;
     qfind.SQL.Clear;
     qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                       ' WHERE ClienteCode = '+#39+'3'+#39+' AND ClienteRelation = '+#39+tarjeta+#39+
                       ' AND PruebaCode = '+#39+'2'+#39+
                       ' AND Relacion = '+#39+'D'+#39+
                       ' AND DataAreaId = ' + #39 + 'ldr' + #39 +
                       ' AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
     qfind.Parameters[0].Value := DM.SystemDate;
     qfind.Parameters[1].Value := DM.SystemDate;
     qfind.Open;

     if qfind.RecordCount > 0 then
       Result := DM.Redondeo(qfind.FieldByName('PctDescuento').AsFloat)
     else
       Result := 0;
    End;

 FreeAndNil(qfind);
 FreeAndNil(qdesc);
 FreeAndNil(qcard);
end;


function TDMPruebas.TotalGastosVarios(_refrecid : integer) : Double;
var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;
 qfind.Close;
 qfind.SQL.Text := 'SELECT SUM(valor) FROM PTGastosVarioTrans WHERE Refrecid = :rec';
 qfind.Parameters[0].Value := _refrecid;
 qfind.Open;

 result := DM.Redondeo(qfind.fields[0].asfloat);

 FreeAndNil(qfind);
end;


function TDMPruebas.TotalGastosVariosUsa(_refrecid : integer) : Double;
var
 qfind : TADOQuery;
 valor : double;
begin
 qfind := DM.NewQuery;
 qfind.Close;
 qfind.SQL.Text := 'SELECT SUM(Valor) FROM PTGastosVarioTrans WHERE Refrecid = :rec';
 qfind.Parameters[0].Value := _refrecid;
 qfind.Open;

 valor := DM.Redondeo(qfind.fields[0].AsFloat);

 If (valor > 0.01) Then
   Begin
     DM.qrParametro.close;
     DM.qrParametro.open;

     Result := DM.Redondeo(DM.ValorMoneda(valor,
                           DM.qrParametroMonedaID.Value,
                           DM.qrParametroMonedaDolares.Value,
                           frmMain.frmTmp.qrEntradaPacienteFecha.Value));
   End
 Else
   Result := 0;

 FreeAndNil(qfind);
end;


procedure TDMPruebas.VerificarGastosVarios(cliente: string;_refrecid : Integer);
var
 qfind        : TADOQuery;
 qinsert      : TADOquery;
 qdelete      : TADOQuery;
 qfindDato    : TADOQuery;
 grupocliente : string;
begin
 qdelete := DM.NewQuery;
 qdelete.Close;
 qdelete.sql.Text := 'DELETE FROM PTGastosVarioTrans WHERE refrecid = :ref AND Generada = 1';
 qdelete.Parameters[0].Value := _refrecid;
 qdelete.ExecSQL;

 FreeAndNil(qdelete);

 qfind := DM.NewQuery;

 //Buscar Cliente - Desc
 qfind.Close;
 qfind.SQL.Clear;
 qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                   ' WHERE ClienteCode = '+#39+'0'+#39+' AND ClienteRelation = '+#39+cliente+#39+
                   ' AND PruebaCode = '+#39+'2'+#39+
                   ' AND Relacion = '+#39+'G'+#39+
                   ' AND DataAreaId = ' + #39 + 'ldr' + #39 +
                   ' AND Activo = 1 ';
 qfind.Open;

 if qfind.RecordCount > 0 then
 begin
  qinsert := DM.NewQuery;
  qinsert.Close;
  qinsert.SQL.Text := 'Insert into PTGastosVarioTrans(GastoVarioId,Valor,Refrecid,Generada) '+
                      ' Values(:0,:1,:2,:3)';
  while not qfind.Eof do
  begin
    qinsert.Parameters[0].Value := qfind.FieldByName('GastoVarioId').AsString;
    qinsert.Parameters[1].Value := qfind.FieldByName('GastosVarios').AsFloat;
    qinsert.Parameters[2].Value := _refrecid;
    qinsert.Parameters[3].Value := true;
    qinsert.ExecSQL;
    qfind.Next;
  end;
  FreeAndNil(qinsert);
 end
 else
 begin
   qfindDato := DM.Find_Ldr('SELECT * FROM PTCliente WHERE ClienteID = :pru',cliente);
   grupocliente := qfindDato.FieldByName('GrupoPrecio').AsString;

   //Buscar Grupo Cliente - Prueba
   qfind.Close;
   qfind.SQL.Clear;
   qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                     ' WHERE PruebaCode = '+#39+'2'+#39+
                     ' AND ClienteCode = '+#39+'1'+#39+' AND ClienteRelation = '+#39+grupocliente+#39+
                     ' AND Relacion = '+#39+'G'+#39+
                     ' AND DataAreaId = ' + #39 + 'ldr' + #39 +
                     ' AND Activo = 1';
   qfind.Open;

   FreeAndNil(qfindDato);

   if qfind.RecordCount > 0 then
   begin
    qinsert := DM.NewQuery;
    qinsert.Close;
    qinsert.SQL.Text := 'Insert into PTGastosVarioTrans(GastoVarioId,Valor,Refrecid,Generada) '+
                        ' Values(:0,:1,:2,:3)';
    while not qfind.Eof do
    begin
     qinsert.Parameters[0].Value := qfind.FieldByName('GastoVarioId').AsString;
     qinsert.Parameters[1].Value := qfind.FieldByName('GastosVarios').AsFloat;
     qinsert.Parameters[2].Value := _refrecid;
     qinsert.Parameters[3].Value := true;
     qinsert.ExecSQL;
     qfind.Next;
    end;
    FreeAndNil(qinsert);
   end
   else
   begin
     //Buscar Todos - prueba
     qfind.Close;
     qfind.SQL.Clear;
     qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                       ' WHERE PruebaCode = '+#39+'2'+#39+
                       ' AND ClienteCode = '+#39+'2'+#39+
                       ' AND Relacion = '+#39+'G'+#39+
                       ' AND DataAreaId = ' + #39 + 'ldr' + #39 +
                       ' AND Activo = 1 ';
     qfind.Open;

     if qfind.RecordCount > 0 then
     begin
      qinsert := DM.NewQuery;
      qinsert.Close;
      qinsert.SQL.Text := 'Insert into PTGastosVarioTrans(GastoVarioId,Valor,Refrecid,Generada) '+
                          ' Values(:0,:1,:2,:3)';
      while not qfind.Eof do
      begin
       qinsert.Parameters[0].Value := qfind.FieldByName('GastoVarioId').AsString;
       qinsert.Parameters[1].Value := qfind.FieldByName('GastosVarios').AsFloat;
       qinsert.Parameters[2].Value := _refrecid;
       qinsert.Parameters[3].Value := true;
       qinsert.ExecSQL;
       qfind.Next;
      end;
      FreeAndNil(qinsert);
     end;

   end;
 end;
end;


Function TDMPruebas.ValidarSeguroPruebaCobertura(_origen, _gruprecio, _prueba, _moneda : String): Integer;
Var
 qfind : TADOQuery;
 cobertura : Double;
begin
 cobertura := 0;
 DM.qrParametro.close;
 DM.qrParametro.open;

 If (_origen = DM.qrParametroGrupoSeg.Value) then
   begin
    qfind := DM.Newquery;

    //Buscar Prueba - Cliente Seguro - Grupo de Precio.
    qfind.Close;
    qfind.SQL.Clear;
    qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                      ' WHERE PruebaCode = ' + #39 + '0' + #39 + ' AND PruebaRelation = ' + #39 + _prueba + #39 +
                      ' AND ClienteCode = ' + #39 + '1' + #39 + ' AND ClienteRelation = '+ #39 + _gruprecio + #39 +
                      ' AND Relacion = ' + #39 + 'P' + #39 + ' AND Costo = 0 ' +
                      ' AND DataAreaId = ' + #39 + 'ldr' + #39 +
                      ' AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2 ';
    qfind.Parameters[0].Value := DM.SystemDate;
    qfind.Parameters[1].Value := DM.SystemDate;
    qfind.Open;

    if qfind.RecordCount > 0 then
     begin
      if _moneda = qfind.FieldByName('MonedaId').AsString then
       cobertura := DM.Redondeo(qfind.FieldByName('PRECIO').AsFloat)
      else
       cobertura := DM.Redondeo(DM.ValorMoneda(qfind.FieldByName('PRECIO').AsFloat,
                                            qfind.FieldByName('MonedaId').AsString,
                                            _moneda, DM.SystemDate));
     end;

    FreeAndNil(qfind);
   end;

 if (cobertura > 1) then
   Result := 1
 Else
   Result := 0;
end;


Function TDMPruebas.ValidarSeguroPruebaCobertura_Precio(_cliente, _prueba, _moneda  : String): Double;
Var
 qfindDato          : TADOQuery;
 precio, permitido  : Double;
begin
 precio     := 0;
 permitido  := 0;

 permitido := CoberturaPermitida(_cliente);

 If (permitido > 1) Then
   Begin
     If (permitido < frmMain.frmTmp.curCoberturaAplicada) Then
       Begin
        qfindDato := DM.NewQuery;

        qfindDato.Close;
        qfindDato.SQL.Text := ' SELECT * FROM PTPrecioAlternativo WHERE PruebaId = '+#39+_prueba+#39+
                              ' AND SucursalId = '+#39+DM.CurSucursal+#39+' AND Activo = 1';
        qfindDato.Open;

        If qfindDato.RecordCount > 0 then
          begin
           DM.qrParametro.close;
           DM.qrParametro.Open;

           if DM.qrParametroPreciosBaseDolares.Value then
            begin
              precio := DM.ValorMoneda(qfindDato.FieldByName('PrecioDolares').AsFloat,DM.qrParametroMonedaDolares.Value ,
                                    DM.qrParametroMonedaID.Value,DM.SystemDate);
              if _moneda = DM.qrParametroMonedaID.Value then
                result := DM.Redondeo(precio)
              else
                result := qfindDato.FieldByName('PrecioDolares').AsFloat;
            end
           else
            begin
             if _moneda = DM.qrParametroMonedaID.Value then
               result := DM.Redondeo(qfindDato.FieldByName('Precio').AsFloat)
             else
               result := DM.Redondeo(DM.ValorMoneda(qfindDato.FieldByName('Precio').AsFloat,
                                     DM.qrParametroMonedaID.Value ,
                                     _moneda, DM.SystemDate));
            end;
          end
        else
          begin
           DM.qrParametro.close;
           DM.qrParametro.Open;

           FreeAndNil(qfindDato);
           qfindDato := DM.Find_Ldr('SELECT * FROM PTPrueba WHERE PruebaID = :pur', _prueba);

           if DM.qrParametroPreciosBaseDolares.Value then
             begin
              precio := DM.ValorMoneda(qfindDato.FieldByName('PrecioDolares').AsFloat,DM.qrParametroMonedaDolares.Value ,
                                    DM.qrParametroMonedaID.Value,DM.SystemDate);
              if _moneda = DM.qrParametroMonedaID.Value then
                result := DM.Redondeo(precio)
              else
                result := qfindDato.FieldByName('PrecioDolares').AsFloat;
             end
           else
             begin
              if _moneda = DM.qrParametroMonedaID.Value then
                result := DM.Redondeo(qfindDato.FieldByName('Precio').AsFloat)
              else
                 result := DM.Redondeo(DM.ValorMoneda(qfindDato.FieldByName('Precio').AsFloat,
                                                   DM.qrParametroMonedaID.Value ,
                                                   _moneda, DM.SystemDate));
             end;

          end;

         FreeAndNil(qfindDato);
       End
     Else
       Result := 0;

   End
 Else
   Result := 0;
end;


Function TDMPruebas.VerificarCoberturaPruebaAdicional(origen: String; prueba: String; cliente: String; moneda: String) : Double;
var
 qfind : TADOQuery;
 cobertura : Double;
begin
 cobertura := 0;

 if (origen = DM.qrParametroGrupoSeg.Value) then
  begin
    qfind := DM.Newquery;

    //Buscar Prueba - Cliente
    qfind.Close;
    qfind.SQL.Clear;
    qfind.SQL.Text := ' SELECT * FROM PTAcuerdoComercial '+
                      ' WHERE PruebaCode = '+#39+'0'+#39+' AND PruebaRelation = '+#39+prueba+#39+
                      ' AND ClienteCode = '+#39+'0'+#39+' AND ClienteRelation = '+#39+cliente+#39+
                      ' AND DataAreaId = ' + #39 + 'ldr' + #39 +
                      ' AND Activo = 1 AND Desde <= :fech1 AND Hasta >= :fech2';
    qfind.Parameters[0].Value := DM.SystemDate;
    qfind.Parameters[1].Value := DM.SystemDate;
    qfind.Open;

    if qfind.RecordCount > 0 then
     begin
      if moneda = qfind.FieldByName('MonedaId').AsString then
       cobertura := DM.Redondeo(qfind.FieldByName('ADICIONAL').AsFloat)
      else
       cobertura := DM.Redondeo(DM.ValorMoneda(qfind.FieldByName('ADICIONAL').AsFloat,
                                            qfind.FieldByName('MonedaId').AsString,
                                            moneda, DM.SystemDate));
     end;

    FreeANDNil(qfind);
    Result := cobertura;
  end;
end;


END.
































    function DescuentoUsuario(_user : string) : Double;
    function Tasa(fecha : TDateTime; moneda : string) : Double;
    function ValorMoneda(valor: Double; frommoneda : string; tomoneda : string; fecha : TDateTime) : Double;

    function PrecioPrueba(prueba, cliente, moneda: string) : Double;
    function PrecioPruebaCosto(prueba, cliente, moneda: string) : Double;
    function PrecioPruebaMoneda(prueba, cliente, moneda: string) : Double;

    function CoberturaPrueba(prueba,cliente,moneda : string) : Double;
    function CoberturaPruebaMoneda(prueba: string; cliente: string; moneda: string) : Double;
    function CoberturaPruebaPorc(prueba,cliente,moneda : string) : Integer;
    function CoberturaPruebaMonedaPorc(prueba: string; cliente: string; moneda: string) : Integer;

    function CoberturaPermitida(cliente : string) : Integer;
    function CurCoberturaAplicada(refrecid : Integer) : Integer;
    function ValidarSeguroPruebaCobertura_Precio(_cliente, _prueba, _moneda  : String): Double;
    function ValidarSeguroPruebaCobertura(_origen, _gruprecio, _prueba, _moneda : String): Integer;
    function CoberturaAplica(cliente : String ;paciente : String;curaplicada : Integer; refrecid : integer) : Integer;
    function VerificarCoberturaPruebaAdicional(origen: String; prueba: String; cliente: String; moneda: String) : Double;
