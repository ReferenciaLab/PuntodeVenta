unit CuadreCajaUsuario2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, dxLayoutControl, StdCtrls, cxButtons,
  cxCurrencyEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, ADODB, DB,
  cxContainer, cxEdit, cxGroupBox, cxRadioGroup, cxControls, pptypes, ppReport,
  ppCtrls, ppBands, ppClass, ppVar, ppPrnabl, ppCache, ppComm, ppRelatv, ppProd,
  dlgmensajes;

type
  TfrmCuadreCajaUsuario2 = class(TForm)
    dxLayoutControl3: TdxLayoutControl;
    lbvalor2000: TLabel;
    lbvalor1000: TLabel;
    lbvalor500: TLabel;
    lbvalor100: TLabel;
    lbvalor50: TLabel;
    lbvalor20: TLabel;
    lbvalor10: TLabel;
    lbvalor5: TLabel;
    lbvalor1: TLabel;
    lbvalor50c: TLabel;
    lbvalor25c: TLabel;
    lbvalor10c: TLabel;
    lbvalor5c: TLabel;
    rgTipoCorte: TcxRadioGroup;
    edfechacorte: TcxDateEdit;
    ed2000: TcxTextEdit;
    ed1000: TcxTextEdit;
    ed500: TcxTextEdit;
    ed100: TcxTextEdit;
    ed50: TcxTextEdit;
    ed20: TcxTextEdit;
    ed10: TcxTextEdit;
    ed25c: TcxTextEdit;
    ed10c: TcxTextEdit;
    ed5c: TcxTextEdit;
    ed5: TcxTextEdit;
    ed1: TcxTextEdit;
    ed50c: TcxTextEdit;
    edTotalEfectivo: TcxCurrencyEdit;
    btaceptarcuadre: TcxButton;
    btcancelarcuadre: TcxButton;
    dxLayoutGroup2: TdxLayoutGroup;
    GroupParametros: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl3Item2: TdxLayoutItem;
    GroupSaldo: TdxLayoutGroup;
    dxLayoutGroup1: TdxLayoutGroup;
    GroupBilletes: TdxLayoutGroup;
    layout55: TdxLayoutGroup;
    dxLayoutControl3Item3: TdxLayoutItem;
    dxLayoutControl3Item11: TdxLayoutItem;
    dxLayoutControl3Group2: TdxLayoutGroup;
    dxLayoutControl3Item4: TdxLayoutItem;
    dxLayoutControl3Item12: TdxLayoutItem;
    dxLayoutControl3Group3: TdxLayoutGroup;
    dxLayoutControl3Item5: TdxLayoutItem;
    dxLayoutControl3Item13: TdxLayoutItem;
    dxLayoutControl3Group4: TdxLayoutGroup;
    dxLayoutControl3Item6: TdxLayoutItem;
    dxLayoutControl3Item14: TdxLayoutItem;
    dxLayoutControl3Group5: TdxLayoutGroup;
    dxLayoutControl3Item7: TdxLayoutItem;
    dxLayoutControl3Item22: TdxLayoutItem;
    dxLayoutControl3Group6: TdxLayoutGroup;
    dxLayoutControl3Item8: TdxLayoutItem;
    dxLayoutControl3Item23: TdxLayoutItem;
    dxLayoutControl3Group7: TdxLayoutGroup;
    dxLayoutControl3Item9: TdxLayoutItem;
    dxLayoutControl3Item15: TdxLayoutItem;
    GroupMonedas: TdxLayoutGroup;
    dxLayoutControl3Group8: TdxLayoutGroup;
    dxLayoutControl3Item19: TdxLayoutItem;
    dxLayoutControl3Item24: TdxLayoutItem;
    dxLayoutControl3Group9: TdxLayoutGroup;
    dxLayoutControl3Item20: TdxLayoutItem;
    dxLayoutControl3Item25: TdxLayoutItem;
    dxLayoutControl3Group10: TdxLayoutGroup;
    dxLayoutControl3Item21: TdxLayoutItem;
    dxLayoutControl3Item26: TdxLayoutItem;
    dxLayoutControl3Group11: TdxLayoutGroup;
    dxLayoutControl3Item16: TdxLayoutItem;
    dxLayoutControl3Item27: TdxLayoutItem;
    dxLayoutControl3Group12: TdxLayoutGroup;
    dxLayoutControl3Item17: TdxLayoutItem;
    dxLayoutControl3Item28: TdxLayoutItem;
    dxLayoutControl3Group13: TdxLayoutGroup;
    dxLayoutControl3Item18: TdxLayoutItem;
    dxLayoutControl3Item29: TdxLayoutItem;
    dxLayoutControl3Item30: TdxLayoutItem;
    botonescuadre: TdxLayoutGroup;
    dxLayoutControl3Item31: TdxLayoutItem;
    dxLayoutControl3Item10: TdxLayoutItem;
    ed25: TcxTextEdit;
    lbvalor25: TLabel;
    dxLayoutControl3Item1: TdxLayoutItem;
    Label2: TLabel;
    dxLayoutControl3Item32: TdxLayoutItem;
    dxLayoutControl3Group1: TdxLayoutGroup;
    dxLayoutControl3Group15: TdxLayoutGroup;
    dxLayoutControl3Group16: TdxLayoutGroup;
    qrEntradaPaciente: TADOQuery;
    qrEntradaPacienteENTRADAID: TStringField;
    qrEntradaPacienteHORAENTRADA: TStringField;
    qrEntradaPacienteORIGEN: TStringField;
    qrEntradaPacienteCLIENTEID: TStringField;
    qrEntradaPacientePACIENTEID: TStringField;
    qrEntradaPacienteDOCTORID: TStringField;
    qrEntradaPacientePOLIZAID: TStringField;
    qrEntradaPacienteENCLINICA: TIntegerField;
    qrEntradaPacienteRECORDCLINICA: TStringField;
    qrEntradaPacienteNUMEROHABITACION: TStringField;
    qrEntradaPacienteRESULTADOPACIENTE: TIntegerField;
    qrEntradaPacienteRESULTADODOCTOR: TIntegerField;
    qrEntradaPacienteHORAPROMETIDA: TStringField;
    qrEntradaPacienteFLEBOTOMISTAID: TStringField;
    qrEntradaPacientePROYECTOID: TStringField;
    qrEntradaPacienteRECORDID: TIntegerField;
    qrEntradaPacienteBRUTO: TBCDField;
    qrEntradaPacienteDESCUENTO: TBCDField;
    qrEntradaPacienteSUBTOTAL: TBCDField;
    qrEntradaPacienteNETO: TBCDField;
    qrEntradaPacienteTOTALPAGADO: TBCDField;
    qrEntradaPacienteCOBERTURAPORC: TBCDField;
    qrEntradaPacienteCOBERTURASEGURO: TBCDField;
    qrEntradaPacienteCOBERTURAVALOR: TBCDField;
    qrEntradaPacienteCOBERTURAMONTOPRECONFIRMADO: TBCDField;
    qrEntradaPacienteDESCUENTOPORC: TBCDField;
    qrEntradaPacienteDESCUENTOVALOR: TBCDField;
    qrEntradaPacienteDESCUENTOBONO: TBCDField;
    qrEntradaPacienteGASTOSVARIOS: TBCDField;
    qrEntradaPacienteTASA: TBCDField;
    qrEntradaPacienteNOMBREPACIENTE: TStringField;
    qrEntradaPacienteTELEFONOS: TStringField;
    qrEntradaPacienteTELEFONO2: TStringField;
    qrEntradaPacienteEMAIL: TStringField;
    qrEntradaPacienteCLIENTENOMBRE: TStringField;
    qrEntradaPacienteSUCURSALID: TStringField;
    qrEntradaPacienteUSERID: TStringField;
    qrEntradaPacienteCOBROID: TStringField;
    qrEntradaPacientePRIORIDAD: TIntegerField;
    qrEntradaPacienteFAX: TStringField;
    qrEntradaPacienteTIPODOCUMENTO: TIntegerField;
    qrEntradaPacienteAPROBACIONNO: TStringField;
    qrEntradaPacienteAPROBACIONPOR: TStringField;
    qrEntradaPacienteCOBERTURARECHAZADA: TIntegerField;
    qrEntradaPacienteCOBERTURACONFIRMADA: TIntegerField;
    qrEntradaPacienteCOBERTURAPRECONFIRMADA: TIntegerField;
    qrEntradaPacienteMUESTRANO: TStringField;
    qrEntradaPacienteMONEDAID: TStringField;
    qrEntradaPacienteCOBERTURAEXPPORC: TIntegerField;
    qrEntradaPacienteEDADPACIENTE: TIntegerField;
    qrEntradaPacienteSEXO: TIntegerField;
    qrEntradaPacienteNOMBREDOCTOR: TStringField;
    qrEntradaPacientePUBLICARINTERNET: TIntegerField;
    qrEntradaPacienteCARNET: TStringField;
    qrEntradaPacientePUBLICARINTERNETDOCTOR: TIntegerField;
    qrEntradaPacienteCUADREGLOBAL: TStringField;
    qrEntradaPacienteCUADREUSUARIO: TStringField;
    qrEntradaPacienteDESCAUTORIZADOPOR: TStringField;
    qrEntradaPacienteNOAS400: TIntegerField;
    qrEntradaPacienteNOAXAPTA: TIntegerField;
    qrEntradaPacienteNOFACTURA: TIntegerField;
    qrEntradaPacienteFACTEXTERIOR: TIntegerField;
    qrEntradaPacienteHOLD: TIntegerField;
    qrEntradaPacienteREPMUESTRA: TIntegerField;
    qrEntradaPacienteENTRADAIDANT: TStringField;
    qrEntradaPacienteTIPOENTRADA: TStringField;
    qrEntradaPacienteFORMADEPAGO: TStringField;
    qrEntradaPacienteDESCUENTOCARD: TStringField;
    qrEntradaPacienteDESCUENTOTEXTO: TStringField;
    qrEntradaPacienteACUERDOPROPIO: TIntegerField;
    qrEntradaPacienteCLIENTEPADRE: TStringField;
    qrEntradaPacienteDESCUENTOPLANID: TStringField;
    qrEntradaPacienteHORAREGISTRO: TStringField;
    qrEntradaPacienteESTATUS: TIntegerField;
    qrEntradaPacienteTIPOCLIENTEAS400: TIntegerField;
    qrEntradaPacienteCLASECREDITO: TStringField;
    qrEntradaPacienteCARNETNUMERO: TStringField;
    qrEntradaPacienteCLIENTEPADREAXAPTA: TStringField;
    qrEntradaPacientePACIENTEIDAXAPTA: TStringField;
    qrEntradaPacienteCLIENTEIDAXAPTA: TStringField;
    qrEntradaPacienteDOCTORIDAXAPTA: TStringField;
    qrEntradaPacienteDATAAREAID: TStringField;
    qrEntradaPacienteNOTA: TStringField;
    qrEntradaPacienteDIRECCION: TStringField;
    qrEntradaPacienteNCFTYPEID: TStringField;
    qrEntradaPacienteNCFID: TStringField;
    qrEntradaPacienteNCFNAME: TStringField;
    qrEntradaPacienteTotalPendiente: TBCDField;
    qrEntradaPacienteFECHA: TDateTimeField;
    qrEntradaPacienteFECHADEALTA: TDateTimeField;
    qrEntradaPacienteFECHAENTRADA: TDateTimeField;
    qrEntradaPacienteFECHAREGISTRO: TDateTimeField;
    qrEntradaPacienteFECHAPROMETIDA: TDateTimeField;
    qrEntradaPacienteFECHAASEGURADORA: TDateTimeField;
    qrEntradaPacienteCUADRADO: TIntegerField;
    qrEntradaPacienteTRANSFERIDO: TIntegerField;
    qrEntradaPacienteSUCURSAL: TIntegerField;
    qrEntradaPacienteNUMEROINTERNET: TIntegerField;
    qrEntradaPacienteRESULTADOCLIENTE: TIntegerField;
    qrEntradaPacientePUBLICARINTERNETCLIENTE: TIntegerField;
    dsEntradaPaciente: TDataSource;
    qrEntradaPacienteTRANSFERENCIA: TStringField;
    qrEntradaPacienteGRUPOPRECIO: TStringField;
    qrEntradaPacienteGRUPODESCUENTOLINEA: TStringField;
    qrEntradaPacienteGRUPODESCUENTOTOTAL: TStringField;
    EDDOLLARES: TcxCurrencyEdit;
    dxLayoutControl3Item35: TdxLayoutItem;
    lbDollares: TLabel;
    dxLayoutControl3Item33: TdxLayoutItem;
    dxLayoutControl3Group14: TdxLayoutGroup;
    qrEntradaPacienteDetalle: TADOQuery;
    dsEntradaPacienteDetalle: TDataSource;
    qrEntradaPacienteDetallePRUEBAID: TStringField;
    qrEntradaPacienteDetalleCOMBOPRUEBAID: TStringField;
    qrEntradaPacienteDetalleCODIGOAUTORIZACION: TStringField;
    qrEntradaPacienteDetalleDESCRIPCION: TStringField;
    qrEntradaPacienteDetalleCODIGOCUPID: TStringField;
    qrEntradaPacienteDetalleMUESTRAANT: TStringField;
    qrEntradaPacienteDetalleCOBERTURAAPLICA: TIntegerField;
    qrEntradaPacienteDetalleDESCRIPCIONCUP: TStringField;
    qrEntradaPacienteDetalleSECUENCIA: TIntegerField;
    qrEntradaPacienteDetalleFLEBOTOMISTAID: TStringField;
    qrEntradaPacienteDetalleCOMENTARIOMUESTRA: TStringField;
    qrEntradaPacienteDetalleUNIDADMUESTRA: TStringField;
    qrEntradaPacienteDetalleSECUENCIAACT: TIntegerField;
    qrEntradaPacienteDetallePRECIO: TBCDField;
    qrEntradaPacienteDetalleDESCUENTO: TBCDField;
    qrEntradaPacienteDetalleDESCUENTOEXTRA: TBCDField;
    qrEntradaPacienteDetalleTOTALLINEA: TBCDField;
    qrEntradaPacienteDetalleCOMENTARIO: TStringField;
    qrEntradaPacienteDetalleTIPOPRUEBA: TStringField;
    qrEntradaPacienteDetalleTIPOAS400: TStringField;
    qrEntradaPacienteDetalleCODIGOAS400: TStringField;
    qrEntradaPacienteDetalleMEDIOAS400: TStringField;
    qrEntradaPacienteDetalleDESCPCT: TBCDField;
    qrEntradaPacienteDetalleCOBERTURAESPECIAL: TBCDField;
    qrEntradaPacienteDetalleCOBERTURAESPECIALPORC: TBCDField;
    qrEntradaPacienteDetalleCOBERTURAAPLICADA: TBCDField;
    qrEntradaPacienteDetalleDESCUENTOAPLICADO: TBCDField;
    qrEntradaPacienteDetalleFACTURAR: TIntegerField;
    qrEntradaPacienteDetalleSELECCIONAR: TIntegerField;
    qrEntradaPacienteDetalleMUESTRANO: TStringField;
    qrEntradaPacienteDetalleCOBERTURAEXPPORC: TIntegerField;
    qrEntradaPacienteDetalleURGENTE: TIntegerField;
    qrEntradaPacienteDetalleREPMUESTRA: TIntegerField;
    qrEntradaPacienteDetalleFECHAENTREGA: TDateTimeField;
    qrEntradaPacienteDetalleHORAENTREGA: TStringField;
    qrEntradaPacienteDetalleESTATUS: TStringField;
    qrEntradaPacienteDetalleDESCUENTOLINEAAPLICADO: TBCDField;
    qrEntradaPacienteDetalleCUADRADO: TIntegerField;
    qrEntradaPacienteDetalleTRANSFERIDO: TIntegerField;
    qrEntradaPacienteDetallePASARAXAPTA: TIntegerField;
    qrEntradaPacienteDetalleCOMBO: TIntegerField;
    qrEntradaPacienteDetalleADICIONAL: TBCDField;
    qrEntradaPacienteDetalleREPREALIZADA: TIntegerField;
    qrEntradaPacienteDetalleREPMUESTRANO: TStringField;
    qrEntradaPacienteDetalleTIENEACUERDOPRECIO: TIntegerField;
    qrEntradaPacienteDetalleTIENEACUERDODESCUENTO: TIntegerField;
    qrEntradaPacienteDetalleCUADREGLOBAL: TStringField;
    qrEntradaPacienteDetalleCUADREUSUARIO: TStringField;
    qrEntradaPacienteDetalleEXTERIOR: TIntegerField;
    qrEntradaPacienteDetalleLDRDEPARTAMENTOID: TStringField;
    qrEntradaPacienteDetalleDATAAREAID: TStringField;
    qrEntradaPacienteFROM_CLINICA: TIntegerField;
    qrEntradaPacienteDetallePRECIOCOMBO: TBCDField;
    qrEntradaPacienteDetalleFROM_CLINICA: TIntegerField;
    qrEntradaPacienteDetalleENTRADAID_POS: TStringField;
    qrEntradaPacienteDetalleMUESTRANO_POS: TStringField;
    qrEntradaPacienteSINPRFILTER: TIntegerField;
    qrEntradaPacienteDetalleSINPRFILTER: TIntegerField;
    qrEntradaPacienteRECID: TLargeintField;
    qrEntradaPacienteDetalleREFRECID: TLargeintField;
    qrEntradaPacienteDetalleREFRECID_POS: TLargeintField;
    qrEntradaPacienteDetalleRECID: TLargeintField;
    qrEntradaPacienteDetalleNCR_ESTATUS: TBooleanField;
    procedure FormShow(Sender: TObject);
    procedure qrEntradaPacienteCalcFields(DataSet: TDataSet);
    procedure EDDOLLARESPropertiesChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ed25PropertiesChange(Sender: TObject);
    procedure ed5cPropertiesChange(Sender: TObject);
    procedure ed10cPropertiesChange(Sender: TObject);
    procedure ed25cPropertiesChange(Sender: TObject);
    procedure ed50cPropertiesChange(Sender: TObject);
    procedure ed1PropertiesChange(Sender: TObject);
    procedure ed5PropertiesChange(Sender: TObject);
    procedure ed10PropertiesChange(Sender: TObject);
    procedure ed20PropertiesChange(Sender: TObject);
    procedure ed50PropertiesChange(Sender: TObject);
    procedure ed100PropertiesChange(Sender: TObject);
    procedure ed500PropertiesChange(Sender: TObject);
    procedure ed1000PropertiesChange(Sender: TObject);
    procedure ed2000PropertiesChange(Sender: TObject);

    function totalEfectivo : double;
    function GetCuadreNo : String;
    function GetSecuenciaId : Int64;
    procedure SetDefaultCuadre;

    procedure Act_Otras_Ventas(cuadrenumber: String);
    procedure Act_Otros_Cobros(cuadrenumber: String);
    procedure Borrando_Hold(_usuario:String; _fecha: TDate);
    Function  Verifica_Hold(_usuario:String; _fecha: TDate): Boolean;
    Function  Verifica_Efectivo(_usuario:String; _fecha: TDate): Boolean;
    Function  ActCuadreUsuario : Boolean;
    procedure Actu_Cabecera(_entrada: String; _cuadre: String);
    procedure Actu_Detalle(_registro: Int64; _cuadre: String);
  private
    { Private declarations }
  public
    { Public declarations }
    qfindGrupoClt        : TADOQuery;
    qfindClientes        : TADOQuery;
    qfindGrupoPac        : TADOQuery;
    qfindPacientes       : TADOQuery;

    Total_PagoRD, Total_PagoUS, Total_VtaRD, Total_VtaUS, Total_ContRD,
    Total_ContUS, Total_Normal, Total_Filtro, Total_Filtro_1, Depo_Normal, Depo_Filtro, Depo_Filtro_1,
    Total_Bruto, Total_Cobertura, Total_Descuento, Total_Gastos, Total_Venta,
    Total_Pagado, Total_Pendiente, Total_Credito, Total_Contado,
    Cobros_Today, Cobros_Anter,

    Total_PagoRD_Uno, Total_PagoUS_Uno, Total_VtaRD_Uno, Total_VtaUS_Uno,
    Total_ContRD_Uno, Total_ContUS_Uno, Total_Normal_Uno, Total_Filtro_Uno,
    Depo_Normal_Uno, Depo_Filtro_Uno, Total_Bruto_Uno, Total_Cobertura_Uno,
    Total_Descuento_Uno, Total_Gastos_Uno, Total_Venta_Uno, Total_Pagado_Uno,
    Total_Pendiente_Uno, Total_Credito_Uno, Total_Contado_Uno,
    Cobros_Today_Uno, Cobros_Anter_Uno,

    Total_PagoRD_Dos, Total_PagoUS_Dos, Total_VtaRD_Dos, Total_VtaUS_Dos,
    Total_ContRD_Dos, Total_ContUS_Dos, Total_Normal_Dos, Total_Filtro_Dos,
    Depo_Normal_Dos, Depo_Filtro_Dos, Depo_Filtro_Tres, Total_Bruto_Dos, Total_Cobertura_Dos,
    Total_Descuento_Dos, Total_Gastos_Dos, Total_Venta_Dos, Total_Pagado_Dos,
    Total_Pendiente_Dos, Total_Credito_Dos, Total_Contado_Dos,
    Cobros_Today_Dos, Cobros_Anter_Dos,

    Valor1000, Valor500, Valor100, Valor50, Valor20, Valor10, Valor5, Valor1,
    Valor50c, Valor25c, Valor10c, Valor5c, Valor25, ValorDOLLARES, Valor2000,
    ValorFormaPagoI, ValorFormaPagoE, ValorEntregar: double;

    corteid  : String;
    registro : Int64;

    procedure Run;

    function  Validar_Cobros : Boolean;
    function  Buscar_Fecha_Entrada(_entrada: String) : Boolean;

    procedure Buscar_Documentos;
    procedure Buscar_Documentos2;
    function  Monto_Sucursal : Double;
    function  Monto_Sucursal_Uno : Double;
    function  Buscar_Total_Filtro : Double;
    function  Buscar_Total_Filtro_Uno : Double;
    procedure Buscar_Cliente(_codigo: string);
    procedure Buscar_Paciente(_codigo: string);
    Procedure Buscar_Grupo_Clt(Grupo: string);
    Procedure Buscar_Grupo_Pac(Grupo: string);
    procedure Actu_Cabecera_Documento(_entrada: String;_filter: integer);
    procedure Actu_Detalle_Documento(_registro: Int64;_filter: integer);
    procedure Designar_Documentos(_documento: string; _entrada: string; _filter: integer);
  end;

var
  frmCuadreCajaUsuario2: TfrmCuadreCajaUsuario2;

Implementation

Uses ActionsDM, DataModule, Main;

{$R *.dfm}


procedure TfrmCuadreCajaUsuario2.ed1000PropertiesChange(Sender: TObject);
begin
 if (ed1000.text <> '') then
    Valor1000 := strtoint(ed1000.text) * 1000
 else Valor1000 := 0;

 lbValor1000.Caption := formatfloat('##,###,##0',Valor1000);
 edTotalEfectivo.Value := totalEfectivo;
end;

procedure TfrmCuadreCajaUsuario2.ed100PropertiesChange(Sender: TObject);
begin
 if (ed100.text <> '') then
    Valor100 := strtoint(ed100.text) * 100
 else Valor100 := 0;

 lbValor100.Caption := formatfloat('##,###,##0',Valor100);
 edTotalEfectivo.Value := totalEfectivo;
end;

procedure TfrmCuadreCajaUsuario2.ed10cPropertiesChange(Sender: TObject);
begin
 if (ed10c.text <> '') then
    Valor10c := strtoint(ed10c.text) * 0.1
 else Valor10c := 0;

 lbValor10c.Caption := formatfloat('##,###,##0.00',Valor10c);
 edTotalEfectivo.Value := totalEfectivo;
end;

procedure TfrmCuadreCajaUsuario2.ed10PropertiesChange(Sender: TObject);
begin
 if (ed10.text <> '') then
    Valor10 := strtoint(ed10.text) * 10
 else Valor10 := 0;

 lbValor10.Caption := formatfloat('##,###,##0',Valor10);
 edTotalEfectivo.Value := totalEfectivo;
end;

procedure TfrmCuadreCajaUsuario2.ed1PropertiesChange(Sender: TObject);
begin
 if (ed1.text <> '') then
    Valor1 := strtoint(ed1.text) * 1
 else Valor1 := 0;

 lbValor1.Caption := formatfloat('##,###,##0',Valor1);
 edTotalEfectivo.Value := totalEfectivo;
end;

procedure TfrmCuadreCajaUsuario2.ed2000PropertiesChange(Sender: TObject);
begin
 if (ed2000.text <> '') then
    Valor2000 := strtoint(ed2000.text) * 2000
 else Valor2000 := 0;

 lbValor2000.Caption := formatfloat('##,###,##0',Valor2000);
 edTotalEfectivo.Value := totalEfectivo;
end;

procedure TfrmCuadreCajaUsuario2.ed20PropertiesChange(Sender: TObject);
begin
 if (ed20.text <> '') then
    Valor20 := strtoint(ed20.text) * 20
 else Valor20 := 0;

 lbValor20.Caption := formatfloat('##,###,##0',Valor20);
 edTotalEfectivo.Value := totalEfectivo;
end;

procedure TfrmCuadreCajaUsuario2.ed25cPropertiesChange(Sender: TObject);
begin
 if (ed25c.text <> '') then
    Valor25c := strtoint(ed25c.text) * 0.25
 else Valor25c := 0;

 lbValor25c.Caption := formatfloat('##,###,##0.00',Valor25c);
 edTotalEfectivo.Value := totalEfectivo;
end;

procedure TfrmCuadreCajaUsuario2.ed25PropertiesChange(Sender: TObject);
begin
 if (ed25.text <> '') then
    Valor25 := strtoint(ed25.text) * 25
 else Valor25 := 0;

 lbValor25.Caption := formatfloat('##,###,##0',Valor25);
 edTotalEfectivo.Value := totalEfectivo;
end;

procedure TfrmCuadreCajaUsuario2.ed500PropertiesChange(Sender: TObject);
begin
 if (ed500.text <> '') then
    Valor500 := strtoint(ed500.text) * 500
 else Valor500 := 0;

 lbValor500.Caption := formatfloat('##,###,##0',Valor500);
 edTotalEfectivo.Value := totalEfectivo;
end;

procedure TfrmCuadreCajaUsuario2.ed50cPropertiesChange(Sender: TObject);
begin
 if (ed50c.text <> '') then
    Valor50c := strtoint(ed50c.text) * 0.5
 else Valor50c := 0;

 lbValor50c.Caption := formatfloat('##,###,##0.00',Valor50c);
 edTotalEfectivo.Value := totalEfectivo;
end;

procedure TfrmCuadreCajaUsuario2.ed50PropertiesChange(Sender: TObject);
begin
 if (ed50.text <> '') then
    Valor50 := strtoint(ed50.text) * 50
 else Valor50 := 0;

 lbValor50.Caption := formatfloat('##,###,##0',Valor50);
 edTotalEfectivo.Value := totalEfectivo;
end;

procedure TfrmCuadreCajaUsuario2.ed5cPropertiesChange(Sender: TObject);
begin
 if (ed5c.text <> '') then
    Valor5c := strtoint(ed5c.text) * 0.05
 else Valor5c := 0;

 lbValor5c.Caption := formatfloat('##,###,##0.00',Valor5c);
 edTotalEfectivo.Value := totalEfectivo;
end;

procedure TfrmCuadreCajaUsuario2.ed5PropertiesChange(Sender: TObject);
begin
 if (ed5.text <> '') then
    Valor5 := strtoint(ed5.text) * 5
 else Valor5 := 0;

 lbValor5.Caption := formatfloat('##,###,##0',Valor5);
 edTotalEfectivo.Value := totalEfectivo;
end;

procedure TfrmCuadreCajaUsuario2.EDDOLLARESPropertiesChange(Sender: TObject);
begin
 if (EDDOLLARES.text <> '') then
    ValorDOLLARES := EDDOLLARES.Value
 else ValorDOLLARES := 0;

 lbDollares.Caption := formatfloat('###,###,##0', EDDOLLARES.Value);
 edTotalEfectivo.Value := totalEfectivo;
end;

procedure TfrmCuadreCajaUsuario2.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = Vk_Down) then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);
  if (key = 13) then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);
  if (key = Vk_Up)  then
     PostMessage(Handle, Wm_NextDlgCtl, 1, 0);
  if (key = 27) then
  begin
   Close;
  end;
end;


procedure TfrmCuadreCajaUsuario2.FormShow(Sender: TObject);
begin
    edFechaCorte.Date := DM.Buscar_Fecha_Actual;
end;

function TfrmCuadreCajaUsuario2.totalEfectivo : double;
begin
 result := DM.Redondeo(Valor2000 + Valor1000 + Valor500 + Valor100 + Valor50 + Valor20 +
                       Valor10 + Valor5 + Valor1 + Valor50c + Valor25c + Valor10c + Valor5c + valor25);
end;


procedure TfrmCuadreCajaUsuario2.Run;
Var
 qcorte   : TADOQuery;
 Servidor : String;
begin
 SetDefaultCuadre;
 showmodal;
 if ModalResult = mrOk then
  begin
   if Verifica_Hold(DM.curUser, edfechacorte.Date) then Exit;
   if Verifica_Efectivo(DM.curUser, edfechacorte.Date) then
   begin
     if edTotalEfectivo.Value < 1 then
     begin
        EtMensajeDlg('Favor digitar distribución efectivo.  Verifique.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
        Exit;
     end;
   end;
   if MessageDlg('Seguro Que Desea Realizar El Corte?', mtWarning, [mbYes,mbNo], 0) = mrYes then
    begin
      if Validar_Cobros then
        Begin
          DM.Info('Esta Operacion NO Podra Ser Realizada Nuevamente.!!!');
//        Proximo Cambio colocar proc. Buscar_Documentos en Store Procedure
          Buscar_Documentos;
          If dm.Total_Acum_Mensual_Filtro2(FormatDateTime('yyyymmdd', edfechacorte.Date)) < dm.qrparametroMonto_Filtro2.Value Then Buscar_Documentos2;
          CorteId  := GetCuadreNo;
//          registro := GetSecuenciaId;    //Registrar registro dentro SP
//        Cambiar a Store Procedure Cuadre Usuario
          If (Trim(CorteId) <> EmptyStr) then
          begin
               If Not ActCuadreUsuario Then
               begin
                 Raise exception.CreateFmt( ' NO Se Pudo Generar el Cuadre de Usuario. '+ #13 +
                                            ' Se Ha Generado Un Error en el SP. '+ #13 +
                                            ' Por Favor, Intentelo Nuevamente.!!!', []);
               end;
          end
          else
          begin
                 Raise exception.CreateFmt( ' El Número de Cuadre de Usuario No pudo generarse. '+ #13 +
                                            ' Se Ha Generado Un Error en el SP. '+ #13 +
                                            ' Por Favor, Intentelo Nuevamente.!!!', []);
          end;

          If dm.Verifica_Filtro_UnoDos(dm.Cursucursal) then
             DM.Filtro_UnoDos :=1
          else
             DM.Filtro_UnoDos :=0;


          DM.qrCorteCajaDetRep.Close;
          DM.qrCorteCajaDetRep.Parameters.ParamByName('cor').Value := CorteId;
          DM.qrCorteCajaDetRep.Open;

          DM.qrCorteDetalle.Close;
          DM.qrCorteDetalle.SQL.Text := ' SELECT CorteID, Tipo, FormadePagoId, MonedaId, '+
                                        ' SUM(Valor) AS Valor, SUM(ValorMST) AS ValorMST '+
                                        ' FROM PTCorteCajaDet (nolock) '+
                                        ' WHERE corteid = :cor '+
                                        ' GROUP BY CorteID, Tipo, FormadePagoId, MonedaId '+
                                        ' ORDER BY CorteID, Tipo, FormadePagoId, MonedaId ';
          DM.qrCorteDetalle.Parameters.ParamByName('cor').Value := CorteId;
          DM.qrCorteDetalle.Open;
          DM.qrCorteDetalle.First;

          //Imprimiendo el Cuadre de Caja del Usuario (GLOBAL).
          qcorte := DM.NewQuery;
          qcorte.Close;
          qcorte.SQL.Text := ' SELECT * FROM PTCorteCajaCab (nolock) WHERE CorteId = :cor ';
          qcorte.Parameters.ParamByName('cor').Value := CorteId;
          qcorte.Open;

          if (qcorte.RecordCount > 0) then
            Begin
              DM.Cobro_Var := 'Usuario';

              //Imprimiendo el Cuadre de Caja (GLOBAL).
              DM.ppImpCuadreCajaUsuario.DeviceType := dtScreen;
              DM.ppImpCuadreCajaUsuario.Print;

              //Imprimiendo el Deposito del Cuadre de Caja (FISCAL).
              DM.qrCobro.Close;
              DM.qrCobro.SQL.Text := ' SELECT * FROM PTCobro C (nolock) Inner Join PTEntradaPaciente E (nolock) '+
                                     ' ON C.refrecid = E.RecId '+
                                     ' WHERE E.DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
                                     ' AND C.SinPrFilter = 0 '+
                                     ' AND C.Fecha = '+#39+FormatDateTime('yyyymmdd', qcorte.FieldByName('Fecha').AsDateTime)+#39+
                                     ' AND C.SucursalId = :suc '+
                                     ' AND C.UsuarioId = :usr '+
                                     ' AND C.CuadreUsuario = :cdr ';
                 If dm.qrParametroServidor_AS400.value <> EmptyStr then
                    DM.qrCobro.SQL.Text := DM.qrCobro.SQL.Text +' AND Isnull(c.Fuera_Linea,'+#39+'0'+#39+')= 0'
                 else
                    DM.qrCobro.SQL.Text := DM.qrCobro.SQL.Text +' AND Isnull(c.Fuera_Linea,'+#39+'0'+#39+') = 1';
//                                     ' ORDER BY C.SucursalId, C.Fecha, C.UsuarioId, C.CobroId ';
                 DM.qrCobro.SQL.Text := DM.qrCobro.SQL.Text +' ORDER BY C.SucursalId, C.Fecha, C.UsuarioId, C.EntradaId, C.CobroId ';
              DM.qrCobro.Parameters.ParamByName('suc').Value := qcorte.FieldByName('SucursalId').AsString;
//              DM.qrCobro.Parameters.ParamByName('fec').Value := qcorte.FieldByName('Fecha').AsString;
              DM.qrCobro.Parameters.ParamByName('usr').Value := qcorte.FieldByName('Usuario').AsString;
              DM.qrCobro.Parameters.ParamByName('cdr').Value := qcorte.FieldByName('CorteId').AsString;
              DM.qrCobro.Open;

              DM.qrCorteDetalle.Close;
              DM.qrCorteDetalle.SQL.Text := ' SELECT CorteID, Tipo, FormadePagoId, MonedaId, '+
                                            ' SUM(Valor) AS Valor, SUM(ValorMST) AS ValorMST '+
                                            ' FROM PTCorteCajaDet (nolock) '+
                                            ' WHERE corteid = :cor '+
                                            ' AND SinPrFilter = 0 '+
                                            ' GROUP BY CorteID, Tipo, FormadePagoId, MonedaId '+
                                            ' ORDER BY CorteID, Tipo, FormadePagoId, MonedaId ';
              DM.qrCorteDetalle.Parameters.ParamByName('cor').Value := CorteId;
              DM.qrCorteDetalle.Open;

              If (DM.qrCobro.RecordCount > 0) then
                begin
                  //Imprimiendo el Cuadre de Caja (FISCAL).
                  DM.ppImpCuadreUsuarioUno.DeviceType := dtScreen;
                  DM.ppImpCuadreUsuarioUno.Print;

                  //Imprimiendo el Deposito del Cuadre de Caja (FISCAL).
                  DM.ppImpCuadreDepositoFiscal.DeviceType := dtScreen;
                  DM.ppImpCuadreDepositoFiscal.Print;
                end;

              //Imprimiendo el Deposito del Cuadre de Caja (FILTRO).
              DM.qrCobro.Close;
              DM.qrCobro.SQL.Text := ' SELECT * FROM PTCobro C (nolock) Inner Join PtEntradaPaciente E (nolock)'+
                                     ' ON C.refrecid = E.RecId '+
                                     ' WHERE E.DataAreaId = ' + #39 + DM.CurEmpresa + #39;
              if DM.Filtro_UnoDos = 1 then
                  DM.qrCobro.SQL.Text := DM.qrCobro.SQL.Text + ' AND C.SinPrFilter in (1,2) '
              else
                  DM.qrCobro.SQL.Text := DM.qrCobro.SQL.Text + ' AND C.SinPrFilter = 1 ';

               DM.qrCobro.SQL.Text := DM.qrCobro.SQL.Text + ' AND C.Fecha = '+#39+FormatDateTime('yyyymmdd', qcorte.FieldByName('Fecha').AsDateTime)+#39+
                                     ' AND C.SucursalId = :suc '+
                                     ' AND C.UsuarioId = :usr '+
                                     ' AND C.CuadreUsuario = :cdr ';
                 If dm.qrParametroServidor_AS400.value <> EmptyStr then
                    DM.qrCobro.SQL.Text := DM.qrCobro.SQL.Text +' AND Isnull(c.Fuera_Linea,'+#39+'0'+#39+') = 0'
                 else
                    DM.qrCobro.SQL.Text := DM.qrCobro.SQL.Text +' AND Isnull(c.Fuera_Linea,'+#39+'0'+#39+') = 1';

//                                     ' ORDER BY C.SucursalId, C.Fecha, C.UsuarioId, C.CobroId ';
                 DM.qrCobro.SQL.Text := DM.qrCobro.SQL.Text +' ORDER BY C.SucursalId, C.Fecha, C.UsuarioId, C.EntradaId, C.CobroId ';
              DM.qrCobro.Parameters.ParamByName('suc').Value := qcorte.FieldByName('SucursalId').AsString;
//              DM.qrCobro.Parameters.ParamByName('fec').Value := qcorte.FieldByName('Fecha').AsString;
              DM.qrCobro.Parameters.ParamByName('usr').Value := qcorte.FieldByName('Usuario').AsString;
              DM.qrCobro.Parameters.ParamByName('cdr').Value := qcorte.FieldByName('CorteId').AsString;
              DM.qrCobro.Open;

              DM.qrCorteDetalle.Close;
              DM.qrCorteDetalle.SQL.Text := ' SELECT CorteID, Tipo, FormadePagoId, MonedaId, '+
                                            ' SUM(Valor) AS Valor, SUM(ValorMST) AS ValorMST '+
                                            ' FROM PTCorteCajaDet (nolock) '+
                                            ' WHERE corteid = :cor ';
              if DM.Filtro_UnoDos = 1 then
                  DM.qrCorteDetalle.SQL.Text := DM.qrCorteDetalle.SQL.Text + ' AND SinPrFilter in (1,2) '
              else
                  DM.qrCorteDetalle.SQL.Text := DM.qrCorteDetalle.SQL.Text + ' AND SinPrFilter = 1 ';

               DM.qrCorteDetalle.SQL.Text := DM.qrCorteDetalle.SQL.Text +' GROUP BY CorteID, Tipo, FormadePagoId, MonedaId '+
                                                           ' ORDER BY CorteID, Tipo, FormadePagoId, MonedaId ';
              DM.qrCorteDetalle.Parameters.ParamByName('cor').Value := CorteId;
              DM.qrCorteDetalle.Open;

              If (DM.qrCobro.RecordCount > 0) then
                begin
                  //Imprimiendo el Cuadre de Caja (FILTRO).
                  DM.ppImpCuadreUsuarioDos.DeviceType := dtScreen;
                  DM.ppImpCuadreUsuarioDos.Print;

                  //Imprimiendo el Deposito del Cuadre de Caja (FILTRO).
                  DM.ppImpCuadreDepositoFiltro.DeviceType := dtScreen;
                  DM.ppImpCuadreDepositoFiltro.Print;
                end;

              If DM.Filtro_UnoDos = 0 then
              begin
//              Imprimiendo el Deposito del Cuadre de Caja (FILTRO DOS).
                  DM.qrCobro.Close;
                  DM.qrCobro.SQL.Text := ' SELECT * FROM PTCobro C (nolock), PTEntradaPaciente E (nolock)'+
                                         ' WHERE C.refrecid = E.RecId '+
                                         ' AND E.DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
                                         ' AND C.SinPrFilter = 2 '+
                                         ' AND C.Fecha = '+#39+FormatDateTime('yyyymmdd', qcorte.FieldByName('Fecha').AsDateTime)+#39+
                                         ' AND C.SucursalId = :suc '+
                                         ' AND C.UsuarioId = :usr '+
                                         ' AND C.CuadreUsuario = :cdr ';
                     If dm.qrParametroServidor_AS400.value <> EmptyStr then
                        DM.qrCobro.SQL.Text := DM.qrCobro.SQL.Text +' AND Isnull(c.Fuera_Linea,'+#39+'0'+#39+') = 0'
                     else
                        DM.qrCobro.SQL.Text := DM.qrCobro.SQL.Text +' AND Isnull(c.Fuera_Linea,'+#39+'0'+#39+') = 1';

    //                                     ' ORDER BY C.SucursalId, C.Fecha, C.UsuarioId, C.CobroId ';
                      DM.qrCobro.SQL.Text := DM.qrCobro.SQL.Text +' ORDER BY C.SucursalId, C.Fecha, C.UsuarioId, C.EntradaId, C.CobroId ';
                  DM.qrCobro.Parameters.ParamByName('suc').Value := qcorte.FieldByName('SucursalId').AsString;
    //              DM.qrCobro.Parameters.ParamByName('fec').Value := qcorte.FieldByName('Fecha').AsString;
                  DM.qrCobro.Parameters.ParamByName('usr').Value := qcorte.FieldByName('Usuario').AsString;
                  DM.qrCobro.Parameters.ParamByName('cdr').Value := qcorte.FieldByName('CorteId').AsString;
                  DM.qrCobro.Open;

                  DM.qrCorteDetalle.Close;
                  DM.qrCorteDetalle.SQL.Text := ' SELECT CorteID, Tipo, FormadePagoId, MonedaId, '+
                                                ' SUM(Valor) AS Valor, SUM(ValorMST) AS ValorMST '+
                                                ' FROM PTCorteCajaDet (nolock) '+
                                                ' WHERE corteid = :cor '+
                                                ' AND SinPrFilter = 2 '+
                                                ' GROUP BY CorteID, Tipo, FormadePagoId, MonedaId '+
                                                ' ORDER BY CorteID, Tipo, FormadePagoId, MonedaId ';
                  DM.qrCorteDetalle.Parameters.ParamByName('cor').Value := CorteId;
                  DM.qrCorteDetalle.Open;

                  If (DM.qrCobro.RecordCount > 0) then
                  begin
                      //Imprimiendo el Cuadre de Caja (FILTRO).
                      DM.ppImpCuadreUsuarioTres.DeviceType := dtScreen;
                      DM.ppImpCuadreUsuarioTres.Print;

                      //Imprimiendo el Deposito del Cuadre de Caja (FILTRO).
                      DM.ppImpCuadreDepositoFiltroDos.DeviceType := dtScreen;
                      DM.ppImpCuadreDepositoFiltroDos.Print;
                  end;
              End;

    // fin Filtro-Dos
              //Imprimiendo el Reporte de Pagos Desglosados por Paciente - Forma de Pago.
              DM.qrCobro.Close;
              DM.qrCobro.SQL.Text := ' SELECT * FROM PTCobro C (nolock), PTEntradaPaciente E (nolock)'+
                                     ' WHERE C.refrecid = E.RecId '+
                                     ' AND E.DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
                                     ' AND C.Fecha = '+#39+FormatDateTime('yyyymmdd', qcorte.FieldByName('Fecha').AsDateTime)+#39+
                                     ' AND C.SucursalId = :suc '+
                                     ' AND C.UsuarioId = :usr '+
                                     ' AND C.CuadreUsuario = :cdr ';
                 If dm.qrParametroServidor_AS400.value <> EmptyStr then
                    DM.qrCobro.SQL.Text := DM.qrCobro.SQL.Text +' AND Isnull(c.Fuera_Linea,'+#39+'0'+#39+') = 0'
                 else
                    DM.qrCobro.SQL.Text := DM.qrCobro.SQL.Text +' AND Isnull(c.Fuera_Linea,'+#39+'0'+#39+') = 1';

              DM.qrCobro.SQL.Text := DM.qrCobro.SQL.Text +' ORDER BY C.SucursalId, C.Fecha, C.UsuarioId, C.EntradaId, C.CobroId ';
              DM.qrCobro.Parameters.ParamByName('suc').Value := qcorte.FieldByName('SucursalId').AsString;
              DM.qrCobro.Parameters.ParamByName('usr').Value := qcorte.FieldByName('Usuario').AsString;
              DM.qrCobro.Parameters.ParamByName('cdr').Value := qcorte.FieldByName('CorteId').AsString;
              DM.qrCobro.Open;

              If (DM.qrCobro.RecordCount > 0) then
                begin
                  DM.ppListadoPagosDesglosados.DeviceType := dtScreen;
                  DM.ppListadoPagosDesglosados.Print;
                end;

              //Imprimiendo el Reporte de Entradas por Grupo de Cliente del Usuario.
              DM.qrEntradaCabRep.Close;
              DM.qrEntradaCabRep.SQL.Text := ' SELECT * FROM PTEntradaPaciente (nolock) WHERE Fecha = '+#39+FormatDateTime('yyyymmdd', qcorte.FieldByName('Fecha').AsDateTime)+#39+
                                             ' AND SucursalId = :suc AND UserId = :usr '+
                                             ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
                                             ' AND Substring(EntradaID,1,3)<>'+#39+'HOL'+#39+
                                             ' ORDER BY Sucursal, Origen, Fecha, ClienteId, EntradaId ';
              DM.qrEntradaCabRep.Parameters.ParamByName('suc').Value := qcorte.FieldByName('SucursalId').AsString;
//              DM.qrEntradaCabRep.Parameters.ParamByName('fec').Value := qcorte.FieldByName('Fecha').AsString;
              DM.qrEntradaCabRep.Parameters.ParamByName('usr').Value := qcorte.FieldByName('Usuario').AsString;
              DM.qrEntradaCabRep.Open;

              If (DM.qrEntradaCabRep.RecordCount > 0) then
                begin
                  DM.ppImpEntradasxGrupos.DeviceType := dtScreen;
                  DM.ppImpEntradasxGrupos.Print;
                end;

              //Imprimiendo el Reporte de Entradas con Descuentos del Usuario.
              DM.qrEntradaCabRep.Close;
              DM.qrEntradaCabRep.SQL.Text := ' SELECT * FROM PTEntradaPaciente (nolock) WHERE Fecha = '+#39+FormatDateTime('yyyymmdd', qcorte.FieldByName('Fecha').AsDateTime)+#39+
                                             ' AND SucursalId = :suc AND DescAutorizadoPor = :usr '+
                                             ' AND Descuento > 0.99 '+
                                             ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
                                             ' AND Substring(EntradaID,1,3)<>'+#39+'HOL'+#39+
                                             ' ORDER BY Sucursal, Fecha, EntradaId ';
              DM.qrEntradaCabRep.Parameters.ParamByName('suc').Value := qcorte.FieldByName('SucursalId').AsVariant;
//              DM.qrEntradaCabRep.Parameters.ParamByName('fec').Value := qcorte.FieldByName('Fecha').AsVariant;
              DM.qrEntradaCabRep.Parameters.ParamByName('usr').Value := qcorte.FieldByName('Usuario').AsVariant;
              DM.qrEntradaCabRep.Open;

              If (DM.qrEntradaCabRep.RecordCount > 0) then
                begin
                  DM.ppImpPacienteDescuento.DeviceType := dtScreen;
                  DM.ppImpPacienteDescuento.Print;
                end;

              //Imprimiendo el Reporte de Pagos Pendientes del Usuario.
              DM.qrEntradaCabRep.Close;
              DM.qrEntradaCabRep.SQL.Text := ' SELECT * FROM PTEntradaPaciente WHERE UserId = :usr '+
                                             ' AND (Neto - TotalPagado) > 0.99 '+
                                             ' AND FormadePago <> :pag '+
                                             ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
                                             ' AND Origen <>'+#39+DM.qrParametroGrupoLab.Value+#39+
                                             ' AND Estatus ='+#39+'0'+#39+
                                             ' AND Substring(EntradaID,1,3)<>'+#39+'HOL'+#39+                                             
//                                             ' AND SucursalId = ' + #39 + DM.CurSucursal + #39 +
                                             ' ORDER BY Fecha, Sucursal, EntradaId ';
              DM.qrEntradaCabRep.Parameters.ParamByName('usr').Value := qcorte.FieldByName('Usuario').AsString;
              DM.qrEntradaCabRep.Parameters.ParamByName('pag').Value := 'CRE';
              DM.qrEntradaCabRep.Open;

              If (DM.qrEntradaCabRep.RecordCount > 0) then
                begin
                  DM.ppImpPagosPend.DeviceType := dtScreen;
                  DM.ppImpPagosPend.Print;
                end;

              FreeAndNil(qcorte);
            end;
        end;
    end
  Else
    DM.Info('La Operacion Fue Abortada por el Usuario.!!!');
  end;
end;


procedure TfrmCuadreCajaUsuario2.SetDefaultCuadre;
begin
  lbValor2000.Caption := '0';
  lbValor1000.Caption := '0';
  lbValor500.Caption  := '0';
  lbValor100.Caption  := '0';
  lbValor50.Caption   := '0';
  lbValor20.Caption   := '0';
  lbValor25.Caption   := '0';
  lbValor10.Caption   := '0';
  lbValor5.Caption    := '0';
  lbValor1.Caption    := '0';
  lbValor50c.Caption  := '0';
  lbValor25c.Caption  := '0';
  lbValor10c.Caption  := '0';
  lbValor5c.Caption   := '0';
  lbdollares.Caption  := '0';

  EDDOLLARES.Text := '0';
  ed2000.Text := '0';
  ed1000.Text := '0';
  ed500.Text  := '0';
  ed100.Text  := '0';
  ed50.Text   := '0';
  ed25.Text   := '0';
  ed20.Text   := '0';
  ed10.Text   := '0';
  ed5.Text    := '0';
  ed1.Text    := '0';
  ed50c.Text  := '0';
  ed25c.Text  := '0';
  ed10c.Text  := '0';
  ed5c.Text   := '0';

  edTotalEfectivo.Value := 0;
  edfechacorte.Date := DM.Buscar_Fecha_Actual;
  rgTipoCorte.ItemIndex := 0;
end;


function TfrmCuadreCajaUsuario2.GetCuadreNo : String;
Var
 _valor   : String;
 numero   : Int64;
 qsecdoc  : TADOQuery;
begin
 _valor  := '';
 numero  := 0;
 qsecdoc := DM.NewQuery;
 qsecdoc := DM.NewQuery;
 With qsecdoc,sql do
 begin
   Close;
   Clear;
   Add(' DECLARE	@return_value int,@r_result bigint,@r_result2 bigint,@r_result3 bit');
   Add(' EXEC	@return_value = [dbo].[Sec_Documentos] ');
   Add(' @Tipo_Doc = N'+#39+'CC'+#39+',');
   Add(' @SucursalID = N'+#39+DM.CurSucursal+#39+',');
   Add(' @r_result = @r_result OUTPUT, ');
   Add(' @r_result2 = @r_result2 OUTPUT, ');
   Add(' @r_result3 = @r_result3 OUTPUT ');
   Add(' SELECT	@r_result as Secuencia,@r_result2 as SucursalAS400,@r_result3 as UsarIdentificador');
   Open;
   if not IsEmpty then
   begin
     if FieldByName('Secuencia').AsString <> '' then
       numero :=strtoint64(FieldByName('Secuencia').AsString)
     else
       numero := 1;

     _valor := FormatFloat('000', FieldByName('SucursalAS400').AsInteger) +
               FormatFloat('00000000', numero);
     If (FieldByName('UsarIdentificador').AsBoolean) then
       Result := 'CC'+ '-' + DM.CurSucursal + '-' + _valor
     Else
       Result := DM.CurSucursal + '-' + _valor;
   end;
 end;
 FreeAndNil(qsecdoc);
end;

function TfrmCuadreCajaUsuario2.GetSecuenciaId : Int64;
Var
 _valor   : String;
 numero   : Int64;
 qsecdoc  : TADOQuery;
begin
 _valor  := '';
 numero  := 0;
 qsecdoc := DM.NewQuery;

  qsecdoc := DM.NewQuery;
 With qsecdoc,sql do
 begin
   Close;
   Clear;
   Add(' DECLARE	@return_value int,@r_result bigint,@r_result2 bigint,@r_result3 bit');
   Add(' EXEC	@return_value = [dbo].[Sec_Documentos] ');
   Add(' @Tipo_Doc = N'+#39+'SEDOC'+#39+',');
   Add(' @SucursalID = N'+#39+DM.CurSucursal+#39+',');
   Add(' @r_result = @r_result OUTPUT, ');
   Add(' @r_result2 = @r_result2 OUTPUT, ');
   Add(' @r_result3 = @r_result3 OUTPUT ');
   Add(' SELECT	@r_result as Secuencia,@r_result2 as SucursalAS400');
   Open;
   if not IsEmpty then
   begin
     if FieldByName('Secuencia').AsString <> '' then
       numero := StrtoInt64(FieldByName('Secuencia').AsString)
     else
       numero := 1;

     _valor := FormatFloat('000', FieldByName('SucursalAS400').AsInteger) +
               FormatFloat('000000000000', numero);
   end;
 end;
 Result := StrToInt(_valor);
 FreeAndNil(qsecdoc);
end;


procedure TfrmCuadreCajaUsuario2.qrEntradaPacienteCalcFields(DataSet: TDataSet);
begin
  qrEntradaPacienteTotalPendiente.Value := DM.Redondeo(qrEntradaPacienteNeto.Value -
                                                       qrEntradaPacienteTotalPagado.Value);
end;

function TfrmCuadreCajaUsuario2.Validar_Cobros : Boolean;
Var
 Sql : String;
 qbuscar: TADOQuery;
begin
 Sql := ' SELECT * FROM PTCobro B (nolock) Inner Join PTCobroDetalle C (nolock) '+
        ' ON B.cobroid = C.cobroid '+
        ' WHERE B.fecha = '+#39+FormatDateTime('yyyymmdd', edfechacorte.Date)+#39+
        ' AND (B.CuadreUsuario IS NULL OR B.CuadreUsuario = '+ #39#39 + ')' +
        ' AND B.usuarioId = ' + #39 + DM.curUser + #39 +
        ' AND B.SucursalId = ' + #39 + DM.CurSucursal + #39;
         If dm.qrParametroServidor_AS400.value <> EmptyStr then
            Sql := Sql +' AND Isnull(b.Fuera_Linea,'+#39+'0'+#39+') = 0'
         else
            Sql := Sql +' AND Isnull(b.Fuera_Linea,'+#39+'0'+#39+') = 1';

        Sql := Sql +' ORDER BY B.CobroId ';

 qbuscar := DM.NewQuery;
 qbuscar.Close;
 qbuscar.SQL.Text := Sql;
 qbuscar.Open;

 If (qbuscar.RecordCount > 0) Then
   Result := True
 Else
 begin
   DM.Info('Usuario NO tiene cobros realizados en la fecha de corte indicada.  Verifique.');
   Result := False;
 end;
 FreeAndNil(qbuscar);
End;

procedure TfrmCuadreCajaUsuario2.Actu_Cabecera(_entrada: String; _cuadre: String);
begin
  qrEntradaPaciente.Close;
  qrEntradaPaciente.parameters[0].Value := _entrada;
  qrEntradaPaciente.Open;

  qrEntradaPaciente.First;

  While Not qrEntradaPaciente.Eof Do
  Begin
    qrEntradaPaciente.Edit;
    qrEntradaPacienteCUADRADO.Value := 1;
    qrEntradaPacienteCUADREUSUARIO.Value := _cuadre;
    Actu_Detalle(qrEntradaPacienteRECID.Value, _cuadre);
    qrEntradaPaciente.Post;
    qrEntradaPaciente.Next;
   End;
end;


procedure TfrmCuadreCajaUsuario2.Actu_Detalle(_registro: Int64; _cuadre: String);
begin
  qrEntradaPacienteDetalle.Close;
  qrEntradaPacienteDetalle.parameters[0].Value := _registro;
  qrEntradaPacienteDetalle.Open;

  qrEntradaPacienteDetalle.First;

  While Not qrEntradaPacienteDetalle.Eof Do
  Begin
     qrEntradaPacienteDetalle.Edit;
     qrEntradaPacienteDetalleCUADRADO.Value := 1;
     qrEntradaPacienteDetalleCUADREUSUARIO.Value := _cuadre;
     qrEntradaPacienteDetalle.Post;
     qrEntradaPacienteDetalle.Next;
  End;
end;


//Eliminando Los Documentos en Hold.
procedure TfrmCuadreCajaUsuario2.Borrando_Hold(_usuario:String; _fecha: TDate);
begin
        DM.DataBase.Execute(' DELETE FROM PTGastosVarioTrans Where refrecid IN (Select recid From PtEntradaPaciente Where Fecha ='+DateToStr(_fecha)+' And UserID='+dm.CurUser+
                            ' And Substring(Entradaid,1,2)='+#39+'HOL'+#39+' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39+')');
        DM.DataBase.Execute(' DELETE FROM PTMaterialesFactura Where refrecid IN (Select recid From PtEntradaPaciente Where Fecha ='+DateToStr(_fecha)+' And UserID='+dm.CurUser+
                            ' And Substring(Entradaid,1,2)='+#39+'HOL'+#39+' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39+')');
        DM.DataBase.Execute(' DELETE FROM PTEntradaPacienteDetalle '+
                            ' WHERE refrecid IN (Select recid From PtEntradaPaciente Where Fecha ='+DateToStr(_fecha)+' And UserID='+dm.CurUser+
                            ' And Substring(Entradaid,1,2)='+#39+'HOL'+#39+' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39+')');
        DM.DataBase.Execute(' DELETE FROM PTEntradaPaciente '+
                            ' WHERE Where Fecha ='+DateToStr(_fecha)+' And UserID='+dm.CurUser+
                            ' And Substring(Entradaid,1,2)='+#39+'HOL'+#39+' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39);
end;


procedure TfrmCuadreCajaUsuario2.Act_Otras_Ventas(cuadrenumber: String);
Var
 Sql      : String;
 qbuscar  : TADOQuery;
begin
 Sql := ' SELECT * FROM PTEntradaPaciente (nolock) WHERE fecha ='+#39+FormatDateTime('yyyymmdd', edfechacorte.Date)+#39+
        ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
//        ' AND (CuadreUsuario IS NULL OR CuadreUsuario = '+ #39#39 + ')' +
        ' AND UserId = ' + #39 + DM.curUser + #39 +
        ' AND SucursalId = ' + #39 + DM.CurSucursal + #39 +
        ' AND Substring(EntradaID,1,3)<>'+#39+'HOL'+#39+
        ' AND Hold = 0 '+
        ' AND Bruto > 1 '+
        ' AND Cuadrado = 0 '+
        ' ORDER BY EntradaId ';

 qbuscar := DM.NewQuery;
 qbuscar.Close;
 qbuscar.SQL.Text := Sql;
// qbuscar.Parameters.ParamByName('fec').Value := edfechacorte.Date;
 qbuscar.Open;

 If (qbuscar.RecordCount > 0) Then
   Begin
     qbuscar.First;
     While Not qbuscar.Eof Do
      Begin
        qrEntradaPaciente.Close;
        qrEntradaPaciente.parameters[0].Value := qbuscar.FieldByName('EntradaId').AsString;
        qrEntradaPaciente.Open;

        qrEntradaPaciente.First;
        While not qrEntradaPaciente.Eof Do
          Begin
            If (qrEntradaPacienteFormadePago.Value = 'CE') Or
               (qrEntradaPacienteFormadePago.Value = 'CRE') Or
               (qrEntradaPacienteENCLINICA.Value = 1) Or
               (qrEntradaPacienteFROM_CLINICA.Value = 1) Or
               (qrEntradaPacienteCoberturaConfirmada.Value = 1) Or
               (qrEntradaPacienteTotalPendiente.Value < 1) Or
               (qrEntradaPacienteTotalPagado.Value > 1) Then
              Begin
//                Actu_Cabecera(qrEntradaPacienteEntradaId.AsString, cuadrenumber);
                Actu_Cabecera(qrEntradaPacienteEntradaId.AsString, '');
              End;

            qrEntradaPaciente.Next;
          End;

        qbuscar.Next;
      End;
   End;

 FreeAndNil(qbuscar);
End;


procedure TfrmCuadreCajaUsuario2.Act_Otros_Cobros(cuadrenumber: String);
Var
 Sql, Fieldact : String;
 qbuscar, qupdate : TADOQuery;
begin
 Sql := ' SELECT * FROM PTCobro (nolock) '+
        ' WHERE fecha ='+#39+FormatDateTime('yyyymmdd', edfechacorte.Date)+#39;
 If dm.qrParametroServidor_AS400.value <> EmptyStr then
    Sql := Sql +' AND Isnull(Fuera_Linea,'+#39+'0'+#39+') = 0'
 else
    Sql := Sql +' AND Isnull(Fuera_Linea,'+#39+'0'+#39+') = 1';
 If (rgtipoCorte.ItemIndex = 0) then
 begin
     Fieldact := 'CuadreUsuario';
     Sql := Sql + ' AND (CuadreUsuario IS NULL OR CuadreUsuario = '+ #39#39 + ')' +
                  ' AND SucursalId = ' + #39 + DM.CurSucursal + #39 +
                  ' AND UsuarioId = ' + #39 + DM.curUser + #39;
 end;

 Sql := Sql + ' ORDER BY CobroId ';

 qbuscar := DM.NewQuery;
 qbuscar.Close;
 qbuscar.SQL.Text := Sql;
// qbuscar.Parameters.ParamByName('fec').Value := edfechacorte.Date;
 qbuscar.Open;

 If (qbuscar.RecordCount > 0) Then
   Begin
     qbuscar.First;
     While Not qbuscar.Eof Do
      Begin
        Borrando_Hold(DM.curUser, edfechacorte.Date);

        Actu_Cabecera(qbuscar.FieldByName('EntradaId').AsString, cuadrenumber);

        qupdate := DM.NewQuery;
        qupdate.Close;

        Sql := ' UPDATE PTCobro With (rowlock) SET '+ Fieldact + ' = :cur '+
               ' WHERE CobroId = :cob '+
               ' AND SucursalId = ' + #39 + DM.CurSucursal + #39;
               If dm.qrParametroServidor_AS400.value <> EmptyStr then
                  Sql := Sql +' AND Isnull(Fuera_Linea,'+#39+'0'+#39+') = 0'
               else
                  Sql := Sql +' AND Isnull(Fuera_Linea,'+#39+'0'+#39+') = 1';
               Sql := Sql +' AND fecha = :fec ';
        qupdate.sql.Text := Sql;
        qupdate.Parameters.ParamByName('cur').Value := cuadrenumber;
        qupdate.Parameters.ParamByName('cob').Value := qbuscar.FieldByName('CobroId').AsString;
        qupdate.Parameters.ParamByName('fec').Value := edfechacorte.Date;
        qupdate.ExecSQL;

        Sql := ' UPDATE PTCobroDetalle With (rowlock) SET '+ Fieldact + ' = :cur '+
               ' WHERE CobroId = :cob ';
               If dm.qrParametroServidor_AS400.value <> EmptyStr then
                  Sql := Sql +' AND Isnull(Fuera_Linea,'+#39+'0'+#39+') = 0'
               else
                  Sql := Sql +' AND Isnull(Fuera_Linea,'+#39+'0'+#39+') = 1';
        qupdate.sql.Text := Sql;
        qupdate.Parameters.ParamByName('cur').Value := cuadrenumber;
        qupdate.Parameters.ParamByName('cob').Value := qbuscar.FieldByName('CobroId').AsString;
        qupdate.ExecSQL;

        qbuscar.Next;
      End;
   End;

  FreeAndNil(qbuscar);
  FreeAndNil(qupdate);
end;

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


procedure TfrmCuadreCajaUsuario2.Buscar_Documentos;
Var
 Sql : String;
 qbuscar, qupdate : TADOQuery;
 _porc,_porc_uno,_total,_total_uno,_valor,_valor_uno,_sucursal,_sucursal_uno : Double;
begin
 _valor         :=0;
 _sucursal      :=0;
 _porc := Monto_Sucursal();   // Verifica % Porcentaje Filtro
 _total := Buscar_Total_Filtro;

 If (_porc > 0) And (_total > 0) Then
 Begin
     _sucursal := (_total * ( _porc / 100 ) );
 End;

 qbuscar := DM.NewQuery;
 qupdate := DM.NewQuery;

 Sql := ' SELECT * FROM PTCobro (nolock) '+
        ' WHERE fecha = '+#39+FormatDateTime('yyyymmdd', edfechacorte.Date)+#39+
        ' AND IsNull(CuadreUsuario,'+#39#39+')='+#39#39+
        ' AND UsuarioId = ' + #39 + DM.curUser + #39 +
        ' AND SucursalId = ' + #39 + DM.CurSucursal + #39+
        ' AND Refrecid Not In (Select recid from Ptentradapaciente Where Len(NcfID)>0) '+
        ' AND Refrecid Not In (Select recid from Ptentradapaciente Where Origen in ('+#39+'07'+#39+','+#39+'09'+#39+','+#39+'10'+#39+','+#39+'11'+#39+','+#39+'12'+#39+','+#39+'14'+#39+','+#39+'15'+#39+') AND FORMADEPAGO='+#39+'CRE'+#39+')';
 If dm.qrParametroServidor_AS400.value <> EmptyStr then
    Sql :=Sql +' AND Isnull(Fuera_Linea,'+#39+'0'+#39+') = 0'
 else
    Sql :=Sql +' AND Isnull(Fuera_Linea,'+#39+'0'+#39+') = 1';
 Sql :=Sql +' ORDER BY TotalCobrado ASC, CobroId ';
 qbuscar.Close;
 qbuscar.SQL.Text := Sql;
// qbuscar.Parameters.ParamByName('fec').Value := edfechacorte.Date;
 qbuscar.Open;
// Filt - 1
 If (_porc > 0) And (_total > 0) And (qbuscar.RecordCount > 0) Then
 Begin
     qbuscar.First;
     While Not qbuscar.Eof Do
     Begin
        Buscar_Cliente(qbuscar.FieldByName('ClienteId').AsString);
        Buscar_Paciente(qbuscar.FieldByName('PacienteId').AsString);

        If (qbuscar.FieldByName('SinPrFilter').AsInteger = 0) then
        Begin
            If (qfindGrupoClt.FieldByName('SinPrFilterGroup').AsInteger = 2) And
               (qfindGrupoPac.FieldByName('SinPrFilterGroup').AsInteger = 2) Then
            Begin
                qupdate.Close;
                qupdate.Sql.Text := ' SELECT * FROM PTCobroDetalle (nolock) WHERE CobroId = :cob AND Monto > 1 ';
                If dm.qrParametroServidor_AS400.value <> EmptyStr then
                  qupdate.Sql.Text := qupdate.Sql.Text+' AND Isnull(Fuera_Linea,'+#39+'0'+#39+') = 0'
                else
                  qupdate.Sql.Text := qupdate.Sql.Text+' AND Isnull(Fuera_Linea,'+#39+'0'+#39+') = 1';
                qupdate.Parameters.ParamByName('cob').Value := qbuscar.FieldByName('CobroId').AsString;
                qupdate.Open;

                If (qupdate.RecordCount = 1) And
                   (qupdate.FieldByName('FormaDePagoID').AsString = 'EFE') And
                   ( Dm.Redondeo(qbuscar.FieldByName('TotalFactura').AsFloat) =
                     Dm.Redondeo(qbuscar.FieldByName('TotalCobrado').AsFloat) ) Then
                Begin
                    If (_valor < _sucursal) Then
                    Begin
                        _valor := Dm.Redondeo(_valor + qupdate.FieldByName('Monto').AsFloat);
                        Designar_Documentos(qbuscar.FieldByName('CobroId').AsString,
                                            qbuscar.FieldByName('EntradaId').AsString, 1);
                    End;
                End;
            End;
        End;
        qbuscar.Next;
     End;
 End;
 FreeAndNil(qbuscar);
 FreeAndNil(qupdate);
end;
procedure TfrmCuadreCajaUsuario2.Buscar_Documentos2;
Var
 Sql,Sqlcantidad : String;
 Cantidad : Integer;
 qbuscar, qupdate,qCantidad : TADOQuery;
 _porc,_porc_uno,_total,_total_uno,_valor,_valor_uno,_sucursal,_sucursal_uno : Double;
begin
 _valor         :=0;
 _sucursal      :=0;
 _valor_uno     :=0;
 _sucursal_uno  :=0;
 Cantidad       :=0;
//Filtro-2
  _porc_Uno := Monto_Sucursal_Uno();   // Verifica % Porcentaje Filtro
 _total_Uno := Buscar_Total_Filtro_Uno;

 If (_porc_Uno > 0) And (_total_Uno > 0) Then
 Begin
     _sucursal_Uno := (_total_Uno * ( _porc_Uno / 100 ) );
 End;

 // Filt-2
 qbuscar := DM.NewQuery;
 qupdate := DM.NewQuery;
 qCantidad  := DM.NewQuery;
// qupdate := DM.NewQuery;
 SqlCantidad := ' SELECT Count(*) as Cantidad FROM PtCobroDetalle d (nolock) inner join PtCobro c on '+
                ' d.CobroID=c.CobroID WHERE fecha = '+#39+FormatDateTime('yyyymmdd', edfechacorte.Date)+#39+
                ' AND IsNull(c.CuadreUsuario,'+#39#39+')='+#39#39+
                ' AND UsuarioId = '+#39+DM.curUser+#39+
                ' AND SucursalId = '+#39+DM.CurSucursal+#39+
                ' AND c.SinprFilter='+#39+'0'+#39+
                ' AND c.MonedaID='+#39+'RD'+#39+
                ' AND d.FormaDePagoID='+#39+'EFE'+#39+
                ' AND d.Monto > 1'+
                ' AND d.Refrecid Not In (Select recid from Ptentradapaciente Where Len(NcfID)>0) '+
                ' AND d.Refrecid Not In (Select recid from Ptentradapaciente Where Origen in ('+#39+'07'+#39+','+#39+'09'+#39+','+#39+'10'+#39+','+#39+'11'+#39+','+#39+'12'+#39+','+#39+'14'+#39+','+#39+'15'+#39+') AND FORMADEPAGO='+#39+'CRE'+#39+')';
    If dm.qrParametroServidor_AS400.value <> EmptyStr then
      SqlCantidad := SqlCantidad+' AND Isnull(c.Fuera_Linea,'+#39+'0'+#39+') = 0'
    else
      SqlCantidad := SqlCantidad+' AND Isnull(c.Fuera_Linea,'+#39+'0'+#39+') = 1';

 qCantidad.Close;
 qCantidad.SQL.Text := SqlCantidad;
 qCantidad.Open;
 if qCantidad.RecordCount > 0 then
 begin
      Cantidad := qCantidad.FieldByName('Cantidad').AsInteger;
 end;

 Sql := ' SELECT * FROM PTCobro (nolock) '+
        ' WHERE fecha = '+#39+FormatDateTime('yyyymmdd', edfechacorte.Date)+#39+
        ' AND IsNull(CuadreUsuario,'+#39#39+')='+#39#39+
        ' AND UsuarioId = '+#39+DM.curUser+#39+
        ' AND SucursalId = '+#39+DM.CurSucursal+#39+
        ' AND SinprFilter='+#39+'0'+#39+
        ' AND MonedaID='+#39+'RD'+#39+
        ' AND Refrecid Not In (Select recid from Ptentradapaciente Where Len(NcfID)>0) '+
        ' AND Refrecid Not In (Select recid from Ptentradapaciente Where Origen in ('+#39+'07'+#39+','+#39+'09'+#39+','+#39+'10'+#39+','+#39+'11'+#39+','+#39+'12'+#39+','+#39+'14'+#39+','+#39+'15'+#39+') AND FORMADEPAGO='+#39+'CRE'+#39+')';
      If dm.qrParametroServidor_AS400.value <> EmptyStr then
        Sql :=Sql +' AND Isnull(Fuera_Linea,'+#39+'0'+#39+') = 0'
      else
        Sql :=Sql +' AND Isnull(Fuera_Linea,'+#39+'0'+#39+') = 1';
        Sql :=Sql +' ORDER BY TotalCobrado Desc, CobroId ';

 qbuscar.Close;
 qbuscar.SQL.Text := Sql;
 qbuscar.Open;
  If (_porc_Uno > 0) And (_total_Uno > 0) And (qbuscar.RecordCount > 0) Then
 Begin
     qbuscar.First;
     While Not qbuscar.Eof Do
     Begin
        If (qbuscar.FieldByName('SinPrFilter').AsInteger = 0) then
        Begin
            If (qfindGrupoClt.FieldByName('SinPrFilterGroup_Uno').AsInteger = 2) And
               (qfindGrupoPac.FieldByName('SinPrFilterGroup_Uno').AsInteger = 2) Then
            Begin
                qupdate.Close;
                qupdate.Sql.Text := ' Select * From PTCobroDetalle d (nolock) Inner Join PtEntradaPaciente e (nolock) On d.RefrecID=e.RecID '+
                                    ' Where d.CobroId = :cob And Monto > 1 And d.MonedaID='+#39+'RD'+#39+' And d.SinprFilter='+#39+'0'+#39+
                                    ' And (E.CLIENTENOMBRE Not Like '+#39+'%FILIACION%'+#39+')'+
                                    ' AND Len(e.NcfID)=0 '+
                                    ' AND e.Origen Not in ('+#39+'07'+#39+','+#39+'09'+#39+','+#39+'10'+#39+','+#39+'11'+#39+','+#39+'12'+#39+','+#39+'14'+#39+','+#39+'15'+#39+') AND FORMADEPAGO='+#39+'CRE'+#39;
                If dm.qrParametroServidor_AS400.value <> EmptyStr then
                  Sql :=Sql +' AND Isnull(d.Fuera_Linea,'+#39+'0'+#39+') = 0'
                else
                  Sql :=Sql +' AND Isnull(d.Fuera_Linea,'+#39+'0'+#39+') = 1';
                qupdate.Parameters.ParamByName('cob').Value := qbuscar.FieldByName('CobroId').AsString;
                qupdate.Open;
                If (qupdate.RecordCount > 0) then
                begin
                  qupdate.First;
                  While Not qupdate.Eof Do
                  Begin
                      If (qupdate.RecordCount = 1) And
                         (qupdate.FieldByName('FormaDePagoID').AsString = 'EFE') Then
                      Begin
                          If (_valor_uno < _sucursal_uno) And (Cantidad > 1 )Then
                          Begin
                              _valor_uno := Dm.Redondeo(_valor_uno + qupdate.FieldByName('Monto').AsFloat);
                              Designar_Documentos(qbuscar.FieldByName('CobroId').AsString,
                                                  qbuscar.FieldByName('EntradaId').AsString, 2);
                          End;
                      End;
                      qupdate.Next;
                  end;
                end;
            End;
        End;
        qbuscar.Next;
     End;
 End;
 FreeAndNil(qbuscar);
 FreeAndNil(qupdate);
 FreeAndNil(qCantidad);
end;


function TfrmCuadreCajaUsuario2.Monto_Sucursal : double;
Var  qfindSucursal : TADOQuery;
begin
 qfindSucursal := DM.Find('SELECT SINPRFILTER,MONTO_PORC FROM PTSucursal (nolock) WHERE SucursalId = :suc And DataAreaID='+#39+DM.CurEmpresa+#39, DM.CurSucursal);

 If (qfindSucursal.RecordCount > 0) And (qfindSucursal.FieldByName('SINPRFILTER').AsInteger = 1) Then
   Result := DM.Redondeo(qfindSucursal.FieldByName('MONTO_PORC').AsFloat)
 Else
   Result := 0;
 FreeAndNil(qfindSucursal);
end;
function TfrmCuadreCajaUsuario2.Monto_Sucursal_Uno : double;
Var  qfindSucursal : TADOQuery;
begin
 qfindSucursal := DM.Find('SELECT SINPRFILTER_1,MONTO_PORC_1 FROM PTSucursal (nolock) WHERE SucursalId = :suc And DataAreaID='+#39+DM.CurEmpresa+#39, DM.CurSucursal);

 If (qfindSucursal.RecordCount > 0) And (qfindSucursal.FieldByName('SINPRFILTER_1').AsInteger = 1) Then
   Result := DM.Redondeo(qfindSucursal.FieldByName('MONTO_PORC_1').AsFloat)
 Else
   Result := 0;
 FreeAndNil(qfindSucursal);
end;


function TfrmCuadreCajaUsuario2.Buscar_Total_Filtro : double;
Var
 Sql : String;
 valor,Total_Uno,Total_Dos : Double;
 qbuscar, qupdate : TADOQuery;
begin
 valor := 0;
 Total_Uno := 0;
 Total_Dos := 0;
 qbuscar := DM.NewQuery;
 qupdate := DM.NewQuery;

 Sql := ' SELECT * FROM PTCobro '+
        ' WHERE fecha = '+#39+FormatDateTime('yyyymmdd', edfechacorte.Date)+#39+
        ' AND IsNull(CuadreUsuario,'+#39#39+')='+#39#39+
        ' AND UsuarioId = '+#39+DM.curUser+#39+
        ' AND SucursalId = '+#39+DM.CurSucursal+#39;
        If dm.qrParametroServidor_AS400.value <> EmptyStr then
          Sql :=Sql +' AND Isnull(Fuera_Linea,'+#39+'0'+#39+') = 0'
        else
          Sql :=Sql +' AND Isnull(Fuera_Linea,'+#39+'0'+#39+') = 1';
        Sql :=Sql +' ORDER BY CobroId ';

 qbuscar.Close;
 qbuscar.SQL.Text := Sql;
// qbuscar.Parameters.ParamByName('fec').Value := edfechacorte.Date;
 qbuscar.Open;

 If (qbuscar.RecordCount > 0) Then
 Begin
     qbuscar.First;
     While Not qbuscar.Eof Do
      Begin
        Buscar_Cliente(qbuscar.FieldByName('ClienteId').AsString);
        Buscar_Paciente(qbuscar.FieldByName('PacienteId').AsString);

        If (qbuscar.FieldByName('SinPrFilter').AsInteger = 0) then
          Begin
            If (qfindGrupoClt.FieldByName('SinPrFilterGroup').AsInteger = 2) And
               (qfindGrupoPac.FieldByName('SinPrFilterGroup').AsInteger = 2) Then
              Begin
                qupdate.Close;
                qupdate.Sql.Text := ' SELECT * FROM PTCobroDetalle (nolock) WHERE CobroId = :cob And Monto > 1 ';
                If dm.qrParametroServidor_AS400.value <> EmptyStr then
                  Sql :=Sql +' AND Isnull(Fuera_Linea,'+#39+'0'+#39+') = 0'
                else
                  Sql :=Sql +' AND Isnull(Fuera_Linea,'+#39+'0'+#39+') = 1';
                qupdate.Parameters.ParamByName('cob').Value := qbuscar.FieldByName('CobroId').AsString;
                qupdate.Open;

                If (qupdate.RecordCount = 1) And
                   (qupdate.FieldByName('FormaDePagoID').AsString = 'EFE') And
                   ( Dm.Redondeo(qbuscar.FieldByName('TotalFactura').AsFloat) =
                     Dm.Redondeo(qbuscar.FieldByName('TotalCobrado').AsFloat) ) Then
                  Begin
                    valor := Dm.Redondeo(valor + qupdate.FieldByName('Monto').AsFloat);
                    Total_Dos:=Total_Dos+qupdate.FieldByName('Monto').AsFloat;
                  End;
              End;
          End;
          qbuscar.Next;
      End;
      qupdate.Close;
      qupdate.Sql.Text := ' select sum(monto) as Total from ptcobrodetalle '+
                          ' Where cobroid in (select cobroid from ptcobro '+
                          ' Where fecha='+#39+FormatDateTime('yyyymmdd', edfechacorte.Date)+#39+
                          ' And usuarioid='+#39+DM.curUser+#39+
                          ' And IsNull(CuadreUsuario,'+#39#39+')='+#39#39+
                          ' And SucursalId = '+#39+DM.CurSucursal+#39+')'+
                          ' And formadepagoid='+#39+'EFE'+#39;
        If dm.qrParametroServidor_AS400.value <> EmptyStr then
          qupdate.Sql.Text :=qupdate.Sql.Text +' AND Isnull(Fuera_Linea,'+#39+'0'+#39+') = 0'
        else
          qupdate.Sql.Text :=qupdate.Sql.Text +' AND Isnull(Fuera_Linea,'+#39+'0'+#39+') = 1';
      qupdate.Open;
      If qupdate.RecordCount > 0 then
      begin
          Total_Uno:=qupdate.FieldByName('Total').AsFloat;
      end;
      If (Total_Uno-Total_Dos) < 0 then  valor:=0;
   End;
  Result := valor;
  FreeAndNil(qbuscar);
  FreeAndNil(qupdate);
end;
function TfrmCuadreCajaUsuario2.Buscar_Total_Filtro_Uno : double;
Var
 Sql : String;
 valor,Total_Uno,Total_Dos : Double;
 qbuscar, qupdate : TADOQuery;
begin
 valor := 0;
 Total_Uno := 0;
 Total_Dos := 0;
 qbuscar := DM.NewQuery;
 qupdate := DM.NewQuery;

 Sql := ' SELECT * FROM PTCobro '+
        ' WHERE fecha = '+#39+FormatDateTime('yyyymmdd', edfechacorte.Date)+#39+
        ' AND IsNull(CuadreUsuario,'+#39#39+')='+#39#39+
        ' AND UsuarioId = '+#39+DM.curUser+#39+
        ' AND SucursalId = '+#39+DM.CurSucursal+#39+
        ' AND SinprFilter = '+#39+'0'+#39;
        If dm.qrParametroServidor_AS400.value <> EmptyStr then
          Sql :=Sql +' AND Isnull(Fuera_Linea,'+#39+'0'+#39+') = 0'
        else
          Sql :=Sql +' AND Isnull(Fuera_Linea,'+#39+'0'+#39+') = 1';
        Sql :=Sql +' ORDER BY CobroId ';

 qbuscar.Close;
 qbuscar.SQL.Text := Sql;
// qbuscar.Parameters.ParamByName('fec').Value := edfechacorte.Date;
 qbuscar.Open;

 If (qbuscar.RecordCount > 0) Then
 Begin
     qbuscar.First;
     While Not qbuscar.Eof Do
      Begin
//        Buscar_Cliente(qbuscar.FieldByName('ClienteId').AsString);
//        Buscar_Paciente(qbuscar.FieldByName('PacienteId').AsString);
        If (qbuscar.FieldByName('SinPrFilter').AsInteger = 0) then
          Begin
            If (qfindGrupoClt.FieldByName('SinPrFilterGroup_Uno').AsInteger = 2)
            And(qfindGrupoPac.FieldByName('SinPrFilterGroup_Uno').AsInteger = 2) Then
              Begin
                qupdate.Close;
                qupdate.Sql.Text := ' SELECT * FROM PTCobroDetalle (nolock) WHERE CobroId = :cob And Monto > 1 And MonedaID='+#39+'RD'+#39;
                If dm.qrParametroServidor_AS400.value <> EmptyStr then
                  qupdate.Sql.Text :=qupdate.Sql.Text +' AND Isnull(Fuera_Linea,'+#39+'0'+#39+') = 0'
                else
                  qupdate.Sql.Text :=qupdate.Sql.Text +' AND Isnull(Fuera_Linea,'+#39+'0'+#39+') = 1';
                qupdate.Parameters.ParamByName('cob').Value := qbuscar.FieldByName('CobroId').AsString;
                qupdate.Open;

                If (qupdate.RecordCount = 1) And
                   (qupdate.FieldByName('FormaDePagoID').AsString = 'EFE')
//                    And
//                   ( Dm.Redondeo(qbuscar.FieldByName('TotalFactura').AsFloat) =
//                     Dm.Redondeo(qbuscar.FieldByName('TotalCobrado').AsFloat) )
                     Then
                  Begin
                    valor := Dm.Redondeo(valor + qupdate.FieldByName('Monto').AsFloat);
                    Total_Dos:=Total_Dos+qupdate.FieldByName('Monto').AsFloat;
                  End;
              End;
          End;
          qbuscar.Next;
      End;
      qupdate.Close;
      qupdate.Sql.Text := ' select sum(monto) as Total from ptcobrodetalle d '+
                          ' Where cobroid in (select cobroid from ptcobro c '+
                          ' Where fecha='+#39+FormatDateTime('yyyymmdd', edfechacorte.Date)+#39+
                          ' And usuarioid='+#39+DM.curUser+#39+
                          ' And IsNull(CuadreUsuario,'+#39#39+')='+#39#39;
                          If dm.qrParametroServidor_AS400.value <> EmptyStr then
                            qupdate.Sql.Text :=qupdate.Sql.Text +' AND Isnull(c.Fuera_Linea,'+#39+'0'+#39+') = 0'
                          else
                            qupdate.Sql.Text :=qupdate.Sql.Text +' AND Isnull(c.Fuera_Linea,'+#39+'0'+#39+') = 1';
     qupdate.Sql.Text :=  qupdate.Sql.Text +' And SucursalId = '+#39+DM.CurSucursal+#39+')'+
                          ' And formadepagoid='+#39+'EFE'+#39+
                          ' And SinprFilter='+#39+'0'+#39+
                          ' And MonedaID='+#39+'RD'+#39;
                          If dm.qrParametroServidor_AS400.value <> EmptyStr then
                            qupdate.Sql.Text :=qupdate.Sql.Text +' AND Isnull(d.Fuera_Linea,'+#39+'0'+#39+') = 0'
                          else
                            qupdate.Sql.Text :=qupdate.Sql.Text +' AND Isnull(d.Fuera_Linea,'+#39+'0'+#39+') = 1';
      qupdate.Open;
      If qupdate.RecordCount > 0 then
      begin
          Total_Uno:=qupdate.FieldByName('Total').AsFloat;
      end;
      If (Total_Uno-Total_Dos) < 0 then  valor:=0;
   End;
  Result := valor;
  FreeAndNil(qbuscar);
  FreeAndNil(qupdate);
end;

//Buscando los Datos del CLIENTE Registrado y Sus Parametros.
procedure TfrmCuadreCajaUsuario2.Buscar_Cliente(_codigo: string);
begin
  qfindClientes := DM.Find_Ldr('Select GrupoCliente from PTCliente (nolock) Where ClienteID = :pac And DataAreaID='+#39+DM.CurEmpresa+#39, _codigo);
  Buscar_Grupo_Clt(qfindClientes.FieldByName('GrupoCliente').AsString);
end;

//Buscando los Datos del PACIENTE Registrado y Sus Parametros.
procedure TfrmCuadreCajaUsuario2.Buscar_Paciente(_codigo: string);
begin
  qfindPacientes := DM.Find_Ldr('Select GrupoCliente from PTCliente (nolock) Where ClienteID = :pac And DataAreaID='+#39+DM.CurEmpresa+#39, _codigo);
  Buscar_Grupo_Pac(qfindPacientes.FieldByName('GrupoCliente').AsString);
end;

//Buscando los Datos del Grupo del Cliente.
Procedure TfrmCuadreCajaUsuario2.Buscar_Grupo_Clt(Grupo: string);
begin
 qfindGrupoClt := DM.Find_Ldr('SELECT * FROM PTGrupoCliente (nolock) WHERE GrupoCliente = :grp And DataAreaID='+#39+DM.CurEmpresa+#39, Grupo);
end;

//Buscando los Datos del Grupo del Paciente.
Procedure TfrmCuadreCajaUsuario2.Buscar_Grupo_Pac(Grupo: string);
begin
 qfindGrupoPac := DM.Find_Ldr('SELECT * FROM PTGrupoCliente (nolock) WHERE GrupoCliente = :grp And DataAreaID='+#39+DM.CurEmpresa+#39, Grupo);
end;


procedure TfrmCuadreCajaUsuario2.Designar_Documentos(_documento: string; _entrada: string; _filter: integer);
Var
 qupdate : TADOQuery;
begin
  qupdate := DM.NewQuery;

  qupdate.Close;
  qupdate.Sql.Text := ' UPDATE PTCobro With (rowlock) SET SinPrFilter = :fil '+
                      ' WHERE CobroId = :cob '+
                      ' AND SucursalId = ' + #39 + DM.CurSucursal + #39;
                      If dm.qrParametroServidor_AS400.value <> EmptyStr then
                        qupdate.Sql.Text :=qupdate.Sql.Text +' AND Isnull(Fuera_Linea,'+#39+'0'+#39+') = 0'
                      else
                        qupdate.Sql.Text :=qupdate.Sql.Text +' AND Isnull(Fuera_Linea,'+#39+'0'+#39+') = 1';
  qupdate.Parameters.ParamByName('fil').Value := _filter;
  qupdate.Parameters.ParamByName('cob').Value := _documento;
  qupdate.ExecSQL;

  qupdate.Close;
  qupdate.Sql.Text := ' UPDATE PTCobroDetalle With (rowlock) SET SinPrFilter = :fil WHERE CobroId = :cob ';
                          If dm.qrParametroServidor_AS400.value <> EmptyStr then
                            qupdate.Sql.Text :=qupdate.Sql.Text +' AND Isnull(Fuera_Linea,'+#39+'0'+#39+') = 0'
                          else
                            qupdate.Sql.Text :=qupdate.Sql.Text +' AND Isnull(Fuera_Linea,'+#39+'0'+#39+') = 1';
  qupdate.Parameters.ParamByName('fil').Value := _filter;
  qupdate.Parameters.ParamByName('cob').Value := _documento;
  qupdate.ExecSQL;
  Actu_Cabecera_Documento(_entrada,_filter);
  FreeAndNil(qupdate);

end;


procedure TfrmCuadreCajaUsuario2.Actu_Cabecera_Documento(_entrada: String;_filter: integer);
begin
  qrEntradaPaciente.Close;
  qrEntradaPaciente.parameters[0].Value := _entrada;
  qrEntradaPaciente.Open;

  qrEntradaPaciente.First;
  While Not qrEntradaPaciente.Eof Do
  Begin
    qrEntradaPaciente.Edit;
    qrEntradaPacienteSINPRFILTER.Value := _filter;
    Actu_Detalle_Documento(qrEntradaPacienteRECID.Value,_filter);
    qrEntradaPaciente.Post;
    qrEntradaPaciente.Next;
   End;
end;


procedure TfrmCuadreCajaUsuario2.Actu_Detalle_Documento(_registro: Int64;_filter: integer);
begin
  qrEntradaPacienteDetalle.Close;
  qrEntradaPacienteDetalle.parameters[0].Value := _registro;
  qrEntradaPacienteDetalle.Open;

  qrEntradaPacienteDetalle.First;
  While Not qrEntradaPacienteDetalle.Eof Do
  Begin
      qrEntradaPacienteDetalle.Edit;
      qrEntradaPacienteDetalleSINPRFILTER.Value := _filter;
      qrEntradaPacienteDetalle.Post;
      qrEntradaPacienteDetalle.Next;
  End;
end;


function TfrmCuadreCajaUsuario2.Buscar_Fecha_Entrada(_entrada: String) : Boolean;
begin
  qrEntradaPaciente.Close;
  qrEntradaPaciente.parameters[0].Value := _entrada;
  qrEntradaPaciente.Open;

  If (qrEntradaPacienteFECHA.Value = edfechacorte.Date) Then
   Result := True
  Else
   Result := False;
End;

Function TfrmCuadreCajaUsuario2.Verifica_Hold(_usuario:String; _fecha: TDate): Boolean;
var
 qfind : TADOQuery;
 Muestra : String;
begin
   qfind := DM.NewQuery;
   result := False;
   qfind.Close;
   qfind.SQL.Text := ' SELECT Muestrano,NombrePaciente FROM PTEntradaPaciente (nolock) '+
                     ' WHERE fecha = '+#39+FormatDateTime('yyyymmdd',_fecha)+#39+
                     ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
                     ' AND UserId = :usr '+
                     ' AND Substring(EntradaID,1,3)<>'+#39+'HOL'+#39+
                     ' AND Hold = 1 ';
  // qfind.Parameters.ParamByName('fec').Value := _fecha;
   qfind.Parameters.ParamByName('usr').Value := _usuario;
   qfind.Open;
   If (qfind.RecordCount > 0) Then
   begin
     qfind.First;
     While Not qfind.Eof Do
     Begin
       Muestra := Muestra+' '+qfind.FieldByName('Muestrano').AsString+' '+qfind.FieldByName('NombrePaciente').AsString+#13;
       qfind.Next
     end;
     if Trim(Muestra) <> '' then
     begin
        if MessageDlg('Recuerde ENTRADA(S) EN HOLD y se van a ELIMINAR.  Verifique.'+#13+Muestra+#13+'Seguro Que Desea Eliminar estas Entradas ?', mtWarning, [mbYes,mbNo], 0) = mrYes then
          result := False
        else
          result := True;
     end;
   end;
   FreeAndNil(qfind);
end;
Function TfrmCuadreCajaUsuario2.Verifica_Efectivo(_usuario:String; _fecha: TDate): Boolean;
var
 qfind : TADOQuery;

begin
   qfind := DM.NewQuery;
   result := False;
   qfind.Close;
   qfind.SQL.Text := ' SELECT COUNT(D.FORMADEPAGOID) AS TOTAL FROM PTCOBRO C (nolock) INNER JOIN PTCOBRODETALLE D (nolock) '+
                     ' ON C.COBROID=D.COBROID WHERE C.FECHA = '+#39+FormatDateTime('yyyymmdd',_fecha)+#39+
                     ' AND C.USUARIOID= :usr '+
                     ' AND D.FORMADEPAGOID='+#39+'EFE'+#39+
                     ' AND C.CUADREUSUARIO IS NULL ';
                     If dm.qrParametroServidor_AS400.value <> EmptyStr then
                        qfind.SQL.Text :=qfind.SQL.Text +' AND Isnull(c.Fuera_Linea,'+#39+'0'+#39+') = 0'
                     else
                        qfind.SQL.Text :=qfind.SQL.Text +' AND Isnull(c.Fuera_Linea,'+#39+'0'+#39+') = 1';
//   qfind.Parameters.ParamByName('fec').Value := _fecha;
   qfind.Parameters.ParamByName('usr').Value := _usuario;
   qfind.Open;
   If (qfind.Fieldbyname('Total').AsInteger > 0) Then
   begin
     qfind.First;
     result := True;
   end;
   FreeAndNil(qfind);
end;
function TfrmCuadreCajaUsuario2.ActCuadreUsuario : Boolean;
begin
Result := False;
Try
  with  dm.sp_ActCuadreUsuario, Parameters do
  begin
    ParamByName('@CorteID').Value     := CorteId;
    ParamByName('@UserID').Value      := DM.CurUser;
    ParamByName('@SucursalID').Value  := DM.CurSucursal;
    ParamByName('@FechaCorte').Value  := FormatDateTime('yyyymmdd', edFechaCorte.Date);
    ParamByName('@TotalEfectivo').Value := DM.Redondeo(edtotalefectivo.Value);
    ParamByName('@TotalDolares').Value  := DM.Redondeo(EDDOLLARES.Value);
    ExecProc;
    Result:= True;
  end;
  Except
    if not dm.Database.Connected then
    begin
      dm.Database.Connected := True;
      dm.sp_ActCuadreUsuario.ExecProc;
      Result:=True;
    end;
  End
end;

END.

