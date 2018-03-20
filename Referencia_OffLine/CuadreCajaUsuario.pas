unit CuadreCajaUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, dxLayoutControl, StdCtrls, cxButtons,
  cxCurrencyEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, ADODB, DB,
  cxContainer, cxEdit, cxGroupBox, cxRadioGroup, cxControls, pptypes, ppReport,
  ppCtrls, ppBands, ppClass, ppVar, ppPrnabl, ppCache, ppComm, ppRelatv, ppProd;

type
  TfrmCuadreCajaUsuario = class(TForm)
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
    qrEntradaPacienteRECID: TIntegerField;
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
    qrEntradaPacienteDetalleREFRECID: TIntegerField;
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
    qrEntradaPacienteDetalleRECID: TIntegerField;
    qrEntradaPacienteFROM_CLINICA: TIntegerField;
    qrEntradaPacienteDetallePRECIOCOMBO: TBCDField;
    qrEntradaPacienteDetalleFROM_CLINICA: TIntegerField;
    qrEntradaPacienteDetalleREFRECID_POS: TIntegerField;
    qrEntradaPacienteDetalleENTRADAID_POS: TStringField;
    qrEntradaPacienteDetalleMUESTRANO_POS: TStringField;
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
    procedure SetDefaultCuadre;

    procedure CrearCabeceraCorte;
    procedure CrearDetalleCorte;
    procedure ActVentas(cuadrenumber: String);
    procedure Act_Otras_Ventas(cuadrenumber: String);
    procedure Act_Otros_Cobros(cuadrenumber: String);    
    procedure Borrando_Hold(_usuario:String; _fecha: TDate);    
    procedure Actu_Cabecera(_entrada: String; _cuadre: String);
    procedure Actu_Detalle(_registro: Integer; _cuadre: String);
  private
    { Private declarations }
  public
    { Public declarations }

    Total_PagoRD, Total_PagoUS, Total_VtaRD, Total_VtaUS, Total_ContRD,
    Total_ContUS, Total_Normal, Total_Filtro, Depo_Normal, Depo_Filtro,
    Total_Bruto, Total_Cobertura, Total_Descuento, Total_Gastos, Total_Venta,
    Total_Pagado, Total_Pendiente, Total_Credito, Total_Contado, Valor2000,
    Valor1000, Valor500, Valor100, Valor50, Valor20, Valor10, Valor5, Valor1,
    Valor50c, Valor25c, Valor10c, Valor5c, Valor25, ValorDOLLARES,
    ValorFormaPagoI, ValorFormaPagoE, ValorEntregar : double;

    corteid : string;

    procedure Run;
    procedure Buscar_Cobros_Recibos;
    procedure Buscar_Cobros_Facturas;
    function Validar_Cobros : Boolean;    
  end;

var
  frmCuadreCajaUsuario: TfrmCuadreCajaUsuario;

Implementation

Uses ActionsDM, DataModule, Main;

{$R *.dfm}


procedure TfrmCuadreCajaUsuario.ed1000PropertiesChange(Sender: TObject);
begin
 if (ed1000.text <> '') then
    Valor1000 := strtoint(ed1000.text) * 1000
 else Valor1000 := 0;

 lbValor1000.Caption := formatfloat('##,###,##0',Valor1000);
 edTotalEfectivo.Value := totalEfectivo;
end;

procedure TfrmCuadreCajaUsuario.ed100PropertiesChange(Sender: TObject);
begin
 if (ed100.text <> '') then
    Valor100 := strtoint(ed100.text) * 100
 else Valor100 := 0;

 lbValor100.Caption := formatfloat('##,###,##0',Valor100);
 edTotalEfectivo.Value := totalEfectivo;
end;

procedure TfrmCuadreCajaUsuario.ed10cPropertiesChange(Sender: TObject);
begin
 if (ed10c.text <> '') then
    Valor10c := strtoint(ed10c.text) * 0.1
 else Valor10c := 0;

 lbValor10c.Caption := formatfloat('##,###,##0.00',Valor10c);
 edTotalEfectivo.Value := totalEfectivo;
end;

procedure TfrmCuadreCajaUsuario.ed10PropertiesChange(Sender: TObject);
begin
 if (ed10.text <> '') then
    Valor10 := strtoint(ed10.text) * 10
 else Valor10 := 0;

 lbValor10.Caption := formatfloat('##,###,##0',Valor10);
 edTotalEfectivo.Value := totalEfectivo;
end;

procedure TfrmCuadreCajaUsuario.ed1PropertiesChange(Sender: TObject);
begin
 if (ed1.text <> '') then
    Valor1 := strtoint(ed1.text) * 1
 else Valor1 := 0;

 lbValor1.Caption := formatfloat('##,###,##0',Valor1);
 edTotalEfectivo.Value := totalEfectivo;
end;

procedure TfrmCuadreCajaUsuario.ed2000PropertiesChange(Sender: TObject);
begin
 if (ed2000.text <> '') then
    Valor2000 := strtoint(ed2000.text) * 2000
 else Valor2000 := 0;

 lbValor2000.Caption := formatfloat('##,###,##0',Valor2000);
 edTotalEfectivo.Value := totalEfectivo;
end;

procedure TfrmCuadreCajaUsuario.ed20PropertiesChange(Sender: TObject);
begin
 if (ed20.text <> '') then
    Valor20 := strtoint(ed20.text) * 20
 else Valor20 := 0;

 lbValor20.Caption := formatfloat('##,###,##0',Valor20);
 edTotalEfectivo.Value := totalEfectivo;
end;

procedure TfrmCuadreCajaUsuario.ed25cPropertiesChange(Sender: TObject);
begin
 if (ed25c.text <> '') then
    Valor25c := strtoint(ed25c.text) * 0.25
 else Valor25c := 0;

 lbValor25c.Caption := formatfloat('##,###,##0.00',Valor25c);
 edTotalEfectivo.Value := totalEfectivo;
end;

procedure TfrmCuadreCajaUsuario.ed25PropertiesChange(Sender: TObject);
begin
 if (ed25.text <> '') then
    Valor25 := strtoint(ed25.text) * 25
 else Valor25 := 0;

 lbValor25.Caption := formatfloat('##,###,##0',Valor25);
 edTotalEfectivo.Value := totalEfectivo;
end;

procedure TfrmCuadreCajaUsuario.ed500PropertiesChange(Sender: TObject);
begin
 if (ed500.text <> '') then
    Valor500 := strtoint(ed500.text) * 500
 else Valor500 := 0;

 lbValor500.Caption := formatfloat('##,###,##0',Valor500);
 edTotalEfectivo.Value := totalEfectivo;
end;

procedure TfrmCuadreCajaUsuario.ed50cPropertiesChange(Sender: TObject);
begin
 if (ed50c.text <> '') then
    Valor50c := strtoint(ed50c.text) * 0.5
 else Valor50c := 0;

 lbValor50c.Caption := formatfloat('##,###,##0.00',Valor50c);
 edTotalEfectivo.Value := totalEfectivo;
end;

procedure TfrmCuadreCajaUsuario.ed50PropertiesChange(Sender: TObject);
begin
 if (ed50.text <> '') then
    Valor50 := strtoint(ed50.text) * 50
 else Valor50 := 0;

 lbValor50.Caption := formatfloat('##,###,##0',Valor50);
 edTotalEfectivo.Value := totalEfectivo;
end;

procedure TfrmCuadreCajaUsuario.ed5cPropertiesChange(Sender: TObject);
begin
 if (ed5c.text <> '') then
    Valor5c := strtoint(ed5c.text) * 0.05
 else Valor5c := 0;

 lbValor5c.Caption := formatfloat('##,###,##0.00',Valor5c);
 edTotalEfectivo.Value := totalEfectivo;
end;

procedure TfrmCuadreCajaUsuario.ed5PropertiesChange(Sender: TObject);
begin
 if (ed5.text <> '') then
    Valor5 := strtoint(ed5.text) * 5
 else Valor5 := 0;

 lbValor5.Caption := formatfloat('##,###,##0',Valor5);
 edTotalEfectivo.Value := totalEfectivo;
end;

procedure TfrmCuadreCajaUsuario.EDDOLLARESPropertiesChange(Sender: TObject);
begin
 if (EDDOLLARES.text <> '') then
    ValorDOLLARES := EDDOLLARES.Value
 else ValorDOLLARES := 0;

 lbDollares.Caption := formatfloat('###,###,##0', EDDOLLARES.Value);
 edTotalEfectivo.Value := totalEfectivo;
end;

procedure TfrmCuadreCajaUsuario.FormKeyDown(Sender: TObject; var Key: Word;
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


function TfrmCuadreCajaUsuario.totalEfectivo : double;
begin
 result := DM.Redondeo(Valor2000 + Valor1000 + Valor500 + Valor100 + Valor50 + Valor20 +
                       Valor10 + Valor5 + Valor1 + Valor50c + Valor25c + Valor10c + Valor5c + valor25);
end;


procedure TfrmCuadreCajaUsuario.Run;
Var
 qcorte : TADOQuery;
begin
 SetDefaultCuadre;
 showmodal;
 if ModalResult = mrOk then
  begin
   if MessageDlg('Seguro Que Desea Realizar El Corte?', mtWarning, [mbYes,mbNo], 0) = mrYes then
    begin
      if Validar_Cobros then
        Begin
          DM.Info('Esta Operacion NO Podra Ser Realizada Nuevamente.!!!');

          CorteId := GetCuadreNo;

          Buscar_Cobros_Recibos;

          Buscar_Cobros_Facturas;

          CrearCabeceraCorte;

          CrearDetalleCorte;

          ActVentas(CorteId);

          DM.qrCorteCajaDetRep.Close;
          DM.qrCorteCajaDetRep.Parameters.ParamByName('cor').Value := CorteId;
          DM.qrCorteCajaDetRep.Open;

          DM.qrCorteDetalle.Close;
          DM.qrCorteDetalle.Parameters.ParamByName('cor').Value := CorteId;
          DM.qrCorteDetalle.Open;

          //Imprimiendo el Cuadre de Caja del Usuario.
          qcorte := DM.NewQuery;                         
          qcorte.Close;
          qcorte.SQL.Text := ' SELECT * FROM PTCorteCajaCab WHERE CorteId = :cor ';
          qcorte.Parameters.ParamByName('cor').Value := CorteId;
          qcorte.Open;

          if (qcorte.RecordCount > 0) then
            Begin
              DM.ppImpCuadreCajaUsuario.DeviceType := dtScreen;
              DM.ppImpCuadreCajaUsuario.Print;

              //Imprimiendo el Reporte de Pagos Desglosados por Paciente - Forma de Pago.
              DM.Cobro_Var := 'Usuario';

              DM.qrCobro.Close;
              DM.qrCobro.SQL.Text := ' SELECT * FROM PTCobro C, PTEntradaPaciente E '+
                                     ' WHERE C.refrecid = E.RecId '+
                                     ' AND E.DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
                                     ' AND C.Fecha = :fec '+
                                     ' AND C.SucursalId = :suc '+
                                     ' AND C.UsuarioId = :usr '+
                                     ' AND C.CuadreUsuario = :cdr '+
//                                     ' ORDER BY C.SucursalId, C.Fecha, C.UsuarioId, C.EntradaId ';
                                     ' ORDER BY C.SucursalId, C.Fecha, C.UsuarioId, C.CobroId ';
              DM.qrCobro.Parameters.ParamByName('suc').Value := qcorte.FieldByName('SucursalId').AsString;
              DM.qrCobro.Parameters.ParamByName('fec').Value := qcorte.FieldByName('Fecha').AsString;
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
              DM.qrEntradaCabRep.SQL.Text := ' SELECT * FROM PTEntradaPaciente WHERE Fecha = :fec '+
                                             ' AND SucursalId = :suc AND UserId = :usr '+
                                             ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
//                                             ' ORDER BY Sucursal, Origen, Fecha, EntradaId ';
                                             ' ORDER BY Sucursal, Origen, Fecha, ClienteId, EntradaId ';
              DM.qrEntradaCabRep.Parameters.ParamByName('suc').Value := qcorte.FieldByName('SucursalId').AsString;
              DM.qrEntradaCabRep.Parameters.ParamByName('fec').Value := qcorte.FieldByName('Fecha').AsString;
              DM.qrEntradaCabRep.Parameters.ParamByName('usr').Value := qcorte.FieldByName('Usuario').AsString;
              DM.qrEntradaCabRep.Open;

              If (DM.qrEntradaCabRep.RecordCount > 0) then
                begin
                  DM.ppImpEntradasxGrupos.DeviceType := dtScreen;
                  DM.ppImpEntradasxGrupos.Print;
                end;

              //Imprimiendo el Reporte de Entradas con Descuentos del Usuario.
              DM.qrEntradaCabRep.Close;
              DM.qrEntradaCabRep.SQL.Text := ' SELECT * FROM PTEntradaPaciente WHERE Fecha = :fec '+
                                             ' AND SucursalId = :suc AND DescAutorizadoPor = :usr '+
                                             ' AND Descuento > 0.99 '+
                                             ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
                                             ' ORDER BY Sucursal, Fecha, EntradaId ';
              DM.qrEntradaCabRep.Parameters.ParamByName('suc').Value := qcorte.FieldByName('SucursalId').AsVariant;
              DM.qrEntradaCabRep.Parameters.ParamByName('fec').Value := qcorte.FieldByName('Fecha').AsVariant;
              DM.qrEntradaCabRep.Parameters.ParamByName('usr').Value := qcorte.FieldByName('Usuario').AsVariant;
              DM.qrEntradaCabRep.Open;

              If (DM.qrEntradaCabRep.RecordCount > 0) then
                begin
                  DM.ppImpPacienteDescuento.DeviceType := dtScreen;
                  DM.ppImpPacienteDescuento.Print;
                end;

              //Imprimiendo el Reporte de Pagos Pendientes del Usuario.
              DM.qrEntradaCabRep.Close;
              DM.qrEntradaCabRep.SQL.Text := ' SELECT * FROM PTEntradaPaciente (Index(IDX_ENTPAC_USR_FP_DAT)nolock) WHERE UserId = :usr '+
                                             ' AND (Neto - TotalPagado) > 0.99 '+
                                             ' AND FormadePago <> :pag '+
                                             ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
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
    end;
  end;
end;


procedure TfrmCuadreCajaUsuario.SetDefaultCuadre;
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
  edfechacorte.Date := date;
  rgTipoCorte.ItemIndex := 0;
end;


function TfrmCuadreCajaUsuario.GetCuadreNo : String;
begin
  DM.qrParametro.Close;
  DM.qrParametro.Open;

  If DM.qrParametroIdentificadorCuadre.Value <> '' then
    Result := DM.qrParametroIdentificadorCuadre.Value + '-' +
              DM.cursucursal + '-' + FormatFloat('00000000', DM.qrParametroSecuenciaCuadre.AsFloat)
  Else
    Result := DM.cursucursal + '-' + FormatFloat('00000000', DM.qrParametroSecuenciaCuadre.AsFloat);

  DM.qrParametro.Edit;
  DM.qrParametroSecuenciaCuadre.Value := DM.qrParametroSecuenciaCuadre.Value + 1;
  DM.qrParametro.Post;
end;


procedure TfrmCuadreCajaUsuario.qrEntradaPacienteCalcFields(DataSet: TDataSet);
begin
  qrEntradaPacienteTotalPendiente.Value := DM.Redondeo(qrEntradaPacienteNeto.Value -
                                                       qrEntradaPacienteTotalPagado.Value);
end;

procedure TfrmCuadreCajaUsuario.CrearCabeceraCorte;
Var
 qcabcorte : TADOQuery;
begin
 qcabcorte := DM.NewQuery;
 qcabcorte.Close;
 qcabcorte.SQL.Text := ' INSERT INTO PTCorteCajaCab (CorteId, Fecha, Hora, Usuario, SucursalId, '+
                       ' Total_Bruto, Total_Cobertura, Total_Descuento, Total_Gastos, Total_Pagado, '+
                       ' Total_Pendiente, Total_Credito, Total_Contado, Total_Venta, Total_PagoRD, '+
                       ' Total_PagoUS, Total_VtaRD, Total_VtaUS, Depo_Normal, Depo_Filtro, Total_ContRD, '+
                       ' Total_ContUS, Total_Normal, Total_Filtro, Efectivo_Reportado, Dollares_Reportado, '+
                       ' Cobros_Today, Cobros_Anter) VALUES (:00,:01,:02,:03,:04,:05,:06,:07,:08,:09,:10, '+
                       ' :11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24,:25,:26,:27) ';
 qcabcorte.Parameters.ParamByName('00').Value := corteid;
 qcabcorte.Parameters.ParamByName('01').Value := edFechaCorte.Date;
// qcabcorte.Parameters.ParamByName('02').Value := copy(timetostr(Time),1,5);
 qcabcorte.Parameters.ParamByName('02').Value := copy(DM.Buscar_Hora_Actual, 1, 5);
 qcabcorte.Parameters.ParamByName('03').Value := DM.CurUser;
 qcabcorte.Parameters.ParamByName('04').Value := DM.CurSucursal;
 qcabcorte.Parameters.ParamByName('05').Value := DM.Redondeo(Total_Bruto);
 qcabcorte.Parameters.ParamByName('06').Value := DM.Redondeo(Total_Cobertura);
 qcabcorte.Parameters.ParamByName('07').Value := DM.Redondeo(Total_Descuento);
 qcabcorte.Parameters.ParamByName('08').Value := DM.Redondeo(Total_Gastos);
 qcabcorte.Parameters.ParamByName('09').Value := DM.Redondeo(Total_Pagado);
 qcabcorte.Parameters.ParamByName('10').Value := DM.Redondeo(Total_Pendiente);
 qcabcorte.Parameters.ParamByName('11').Value := DM.Redondeo(Total_Credito);
 qcabcorte.Parameters.ParamByName('12').Value := DM.Redondeo(Total_Contado);
 qcabcorte.Parameters.ParamByName('13').Value := DM.Redondeo(Total_Venta);
 qcabcorte.Parameters.ParamByName('14').Value := DM.Redondeo(Total_PagoRD);
 qcabcorte.Parameters.ParamByName('15').Value := DM.Redondeo(Total_PagoUS);
 qcabcorte.Parameters.ParamByName('16').Value := DM.Redondeo(Total_VtaRD);
 qcabcorte.Parameters.ParamByName('17').Value := DM.Redondeo(Total_VtaUS);
 qcabcorte.Parameters.ParamByName('18').Value := DM.Redondeo(Depo_Normal);
 qcabcorte.Parameters.ParamByName('19').Value := DM.Redondeo(Depo_Filtro);
 qcabcorte.Parameters.ParamByName('20').Value := DM.Redondeo(Total_ContRD);
 qcabcorte.Parameters.ParamByName('21').Value := DM.Redondeo(Total_ContUS);
 qcabcorte.Parameters.ParamByName('22').Value := DM.Redondeo(Total_Normal);
 qcabcorte.Parameters.ParamByName('23').Value := DM.Redondeo(Total_Filtro);
 qcabcorte.Parameters.ParamByName('24').Value := DM.Redondeo(edtotalefectivo.Value);
 qcabcorte.Parameters.ParamByName('25').Value := DM.Redondeo(EDDOLLARES.Value);
// qcabcorte.Parameters.ParamByName('26').Value := DM.Redondeo(Cobros_Today);
// qcabcorte.Parameters.ParamByName('27').Value := DM.Redondeo(Cobros_Anter);
 qcabcorte.ExecSQL;

 FreeAndNil(qcabcorte);
end;


procedure TfrmCuadreCajaUsuario.CrearDetalleCorte;
Var
 Sql : String;
 qcobros, qdetalle : TADOQuery;
begin
 Sql := ' SELECT c.formadepagoid, c.monedaid, SUM(c.monto), SUM(c.montoMST) FROM PTCobro b, ptcobrodetalle c '+
        ' WHERE b.cobroid = c.cobroid '+
        ' AND b.fecha = :fec '+
        ' AND (b.CuadreUsuario IS NULL OR b.CuadreUsuario = '+#39#39+') '+
        ' AND b.usuarioId = ' +#39 + DM.curUser + #39;

 qcobros := DM.NewQuery;
 qcobros.close;
 qcobros.sql.Text := Sql + ' GROUP BY c.formaDepagoid, c.monedaid ';
 qcobros.Parameters.ParamByName('fec').Value := edfechacorte.Date;
 qcobros.Active := True;

 qdetalle := DM.NewQuery;
 qdetalle.close;
 qdetalle.SQL.Text := 'INSERT INTO PTCorteCajaDet(CorteID,Tipo,FormaDePagoId,MonedaId,Valor,ValorMST) Values(:0,:1,:2,:3,:4,:5)';

 while not qcobros.Eof do
  begin
    qdetalle.Parameters[0].Value := CorteId;
    qdetalle.Parameters[1].Value := '1';
    qdetalle.Parameters[2].Value := qcobros.Fields[0].AsString;
    qdetalle.Parameters[3].Value := qcobros.Fields[1].AsString;
    qdetalle.Parameters[4].Value := DM.Redondeo(qcobros.Fields[2].AsFloat);
    qdetalle.Parameters[5].Value := DM.Redondeo(qcobros.Fields[3].AsFloat);
    qdetalle.ExecSQL;

    qcobros.Next;
  end;

 FreeAndNil(qcobros);
 FreeAndNil(qdetalle);
end;


function TfrmCuadreCajaUsuario.Validar_Cobros : Boolean;
Var
 Sql : String;
 qbuscar: TADOQuery;
begin
 Sql := ' SELECT * FROM PTCobro b, PTCobroDetalle c '+
        ' WHERE b.cobroid = c.cobroid '+
        ' AND b.fecha = :fec '+
        ' AND (b.CuadreUsuario IS NULL OR b.CuadreUsuario = '+ #39#39 + ')' +
        ' AND b.usuarioId = ' +#39 + DM.curUser + #39 +
        ' ORDER BY b.CobroId ';

 qbuscar := DM.NewQuery;
 qbuscar.Close;
 qbuscar.SQL.Text := Sql;
 qbuscar.Parameters.ParamByName('fec').Value := edfechacorte.Date;
 qbuscar.Open;

 If (qbuscar.RecordCount > 0) Then
   Result := True
 Else
   Result := False;

 FreeAndNil(qbuscar);
End;


procedure TfrmCuadreCajaUsuario.Buscar_Cobros_Recibos;
Var
 Sql : String;
 qbuscar, qrecibo, qcabe : TADOQuery;
begin
 DM.qrParametro.Close;
 DM.qrParametro.Open;

 Total_PagoRD     := 0;
 Total_PagoUS     := 0;
 Total_ContRD     := 0;
 Total_ContUS     := 0;
 Total_Pagado     := 0;

 Sql := ' SELECT * FROM PTCobro b, PTCobroDetalle c '+
        ' WHERE b.cobroid = c.cobroid '+
        ' AND b.fecha = :fec '+
        ' AND (b.CuadreUsuario IS NULL OR b.CuadreUsuario = '+ #39#39 + ')' +
        ' AND b.usuarioId = ' +#39 + DM.curUser + #39 +
        ' ORDER BY b.CobroId ';

 qrecibo := DM.NewQuery;

 qbuscar := DM.NewQuery;
 qbuscar.Close;
 qbuscar.SQL.Text := Sql;
 qbuscar.Parameters.ParamByName('fec').Value := edfechacorte.Date; 
 qbuscar.Open;

 If (qbuscar.RecordCount > 0) Then
   Begin
     qbuscar.First;
     While Not qbuscar.Eof Do
      Begin
        qrecibo.Close;
        qrecibo.SQL.Text := 'SELECT * FROM PTCobro WHERE CobroId = '+ #39 + qbuscar.FieldByName('CobroId').AsString + #39;
        qrecibo.Open;

//        Total_Pagado     := DM.Redondeo(Total_Pagado + qrEntradaPacienteTotalPagado.Value);
        Total_Pagado     := DM.Redondeo(Total_Pagado + qbuscar.FieldByName('Monto').AsFloat);

        If (qrecibo.FieldByName('MonedaID').AsString = DM.qrParametroMonedaDolares.Value) Then
          begin
            If (qbuscar.FieldByName('FormadePagoId').AsString = 'CASH') Then
              Begin
                Total_ContRD := DM.Redondeo(Total_ContRD + 0);
                Total_ContUS := DM.Redondeo(Total_ContUS + qbuscar.FieldByName('Monto').AsFloat);
              end;

            Total_PagoRD  := DM.Redondeo(Total_PagoRD + 0);
            Total_PagoUS  := DM.Redondeo(Total_PagoUS + qbuscar.FieldByName('Monto').AsFloat);
          end
        Else
          begin
            If (qbuscar.FieldByName('FormadePagoId').AsString = 'EFE') Then
              Begin
                Total_ContUS := DM.Redondeo(Total_ContUS + 0);
                Total_ContRD := DM.Redondeo(Total_ContRD + qbuscar.FieldByName('Monto').AsFloat);
              end;

            Total_PagoUS  := DM.Redondeo(Total_PagoUS + 0);
            Total_PagoRD  := DM.Redondeo(Total_PagoRD + qbuscar.FieldByName('Monto').AsFloat);
          end;

        qbuscar.Next;
      End;
   End;

 FreeAndNil(qbuscar);
End;


procedure TfrmCuadreCajaUsuario.Buscar_Cobros_Facturas;
Var
 Sql : String;
 qbuscar, qrecibo, qcabe : TADOQuery;
begin
 DM.qrParametro.Close;
 DM.qrParametro.Open;

 Total_Bruto      := 0;
 Total_Cobertura  := 0;
 Total_Descuento  := 0;
 Total_Gastos     := 0;
 Total_Pendiente  := 0;
 Total_Credito    := 0;
 Total_Contado    := 0;
 Total_Venta      := 0;
 Total_VtaRD      := 0;
 Total_VtaUS      := 0;
 Depo_Normal      := 0;
 Depo_Filtro      := 0;
 Total_Normal     := 0;
 Total_Filtro     := 0;

 Sql := ' SELECT * FROM PTEntradaPaciente WHERE fecha = :fec '+
        ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
        ' AND (CuadreUsuario IS NULL OR CuadreUsuario = '+ #39#39 + ')' +
        ' AND UserId = ' +#39 + DM.curUser + #39 +
        ' AND Hold <> 1 '+
        ' ORDER BY EntradaId ';

 qrecibo := DM.NewQuery;

 qbuscar := DM.NewQuery;
 qbuscar.Close;
 qbuscar.SQL.Text := Sql;
 qbuscar.Parameters.ParamByName('fec').Value := edfechacorte.Date;
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
        while not qrEntradaPaciente.Eof do
          Begin
            qrecibo.Close;
            qrecibo.SQL.Text := 'SELECT * FROM PTCobro WHERE CobroId = '+ #39 + qbuscar.FieldByName('CobroId').AsString + #39;
            qrecibo.Open;

            Total_Bruto      := DM.Redondeo(Total_Bruto + qrEntradaPacienteBruto.Value);
            Total_Descuento  := DM.Redondeo(Total_Descuento + qrEntradaPacienteDescuento.Value);
            Total_Gastos     := DM.Redondeo(Total_Gastos + qrEntradaPacienteGastosVarios.Value);
            Total_Venta      := DM.Redondeo(Total_Venta + qrEntradaPacienteNeto.Value);
            Total_Pendiente  := DM.Redondeo(Total_Pendiente + (qrEntradaPacienteNeto.Value - qrEntradaPacienteTotalPagado.Value));

            // - If (qrecibo.FieldByName('MonedaID').AsString = DM.qrParametroMonedaDolares.Value) Then
            If (qbuscar.FieldByName('MonedaID').AsString = DM.qrParametroMonedaDolares.Value) Then
              begin
                Total_VtaRD   := DM.Redondeo(Total_VtaRD + 0);
                Total_VtaUS   := DM.Redondeo(Total_VtaUS + qrEntradaPacienteNeto.Value);
              end
            Else
              begin
                Total_VtaUS   := DM.Redondeo(Total_VtaUS + 0);
                Total_VtaRD   := DM.Redondeo(Total_VtaRD + qrEntradaPacienteNeto.Value);
              end;

            //Total de Ventas (CONTADO - CREDITO).
            If (qrEntradaPacienteFormadePago.Value = 'CE') Or
               (qrEntradaPacienteFormadePago.Value = 'EFE') Or
               (qrEntradaPacienteFormadePago.Value = 'CASH') Then
              begin
                Total_Contado    := DM.Redondeo(Total_Contado + qrEntradaPacienteNeto.Value);
                Total_Credito    := DM.Redondeo(Total_Credito + 0);
              end
            Else
              begin
                Total_Credito    := DM.Redondeo(Total_Credito + qrEntradaPacienteNeto.Value);
                Total_Contado    := DM.Redondeo(Total_Contado + 0);
              end;

            //Total de COBERTURA.
            if (qrEntradaPacienteCoberturaConfirmada.Value = 1) And (qrEntradaPacienteCoberturaSeguro.Value > 1) then
              Begin
                Total_Cobertura  := DM.Redondeo(Total_Cobertura + qrEntradaPacienteCoberturaSeguro.Value);
              end
            Else
              Begin
                Total_Cobertura  := DM.Redondeo(Total_Cobertura + 0);
              end;

            //Tipo de Entrada (NORMAL - FILTRO).
            if (qrEntradaPacienteTRANSFERENCIA.Value = '.') Then
              begin
                Total_Normal := DM.Redondeo(Total_Normal + 0);
                Total_Filtro := DM.Redondeo(Total_Filtro + Total_Venta);
                Depo_Normal  := DM.Redondeo(Depo_Normal + 0);

//                If (qbuscar.FieldByName('FormadePago').AsString = 'EFE') Then
                If (qrEntradaPacienteFormadePago.Value = 'EFE') Then
                  Depo_Filtro  := DM.Redondeo(Depo_Filtro + qrEntradaPacienteTotalPagado.AsFloat);
//                  Depo_Filtro  := DM.Redondeo(Depo_Filtro + qbuscar.FieldByName('Monto').AsFloat);
//              MIENTRAS TANTO PARA RESOLVER EL CUADRE. JUAN JOSE.
              end
            Else
              begin
//                If (qbuscar.FieldByName('FormadePago').AsString = 'EFE') Then
                If (qrEntradaPacienteFormadePago.Value = 'EFE') Then
                  Depo_Normal  := DM.Redondeo(Depo_Normal + qrEntradaPacienteTotalPagado.AsFloat);
//                  Depo_Normal  := DM.Redondeo(Depo_Normal + qbuscar.FieldByName('Monto').AsFloat);
//              MIENTRAS TANTO PARA RESOLVER EL CUADRE. JUAN JOSE.

                Depo_Filtro  := DM.Redondeo(Depo_Filtro + 0);
                Total_Filtro := DM.Redondeo(Total_Filtro + 0);
                Total_Normal := DM.Redondeo(Total_Normal + Total_Venta);
              end;

            qrEntradaPaciente.Next;
          End;

        qbuscar.Next;
      End;
   End;

 FreeAndNil(qbuscar);
End;


procedure TfrmCuadreCajaUsuario.ActVentas(cuadrenumber: String);
Var
 Sql, Fieldact : String;
 qbuscar, qupdate : TADOQuery;
begin
{
 Sql := ' SELECT * FROM PTCobro b, PTCobroDetalle c '+
        ' WHERE b.cobroid = c.cobroid '+
        ' AND b.fecha = :fec ';

 If (rgtipoCorte.ItemIndex = 0) then
   begin
     Fieldact := 'CuadreUsuario';
     Sql := Sql + ' AND (b.CuadreUsuario IS NULL OR b.CuadreUsuario = '+ #39#39 + ')' +
                  ' AND b.usuarioId = ' +#39 + DM.curUser + #39;
   end;

 Sql := Sql + ' ORDER BY b.CobroId, b.EntradaId ';
}
 Sql := ' SELECT * FROM PTCobro '+
        ' WHERE fecha = :fec ';

 If (rgtipoCorte.ItemIndex = 0) then
   begin
     Fieldact := 'CuadreUsuario';
     Sql := Sql + ' AND (CuadreUsuario IS NULL OR CuadreUsuario = '+ #39#39 + ')' +
                  ' AND UsuarioId = ' +#39 + DM.curUser + #39;
   end;

 Sql := Sql + ' ORDER BY CobroId ';

 qbuscar := DM.NewQuery;
 qbuscar.Close;
 qbuscar.SQL.Text := Sql;
 qbuscar.Parameters.ParamByName('fec').Value := edfechacorte.Date;
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

        Sql := ' UPDATE PTCobro SET '+ Fieldact + ' = :cur '+
               ' WHERE CobroId = :cob '+
               ' AND fecha = :fec ';
        qupdate.sql.Text := Sql;
        qupdate.Parameters.ParamByName('cur').Value := cuadrenumber;
        qupdate.Parameters.ParamByName('cob').Value := qbuscar.FieldByName('CobroId').AsString;
        qupdate.Parameters.ParamByName('fec').Value := edfechacorte.Date;
        qupdate.ExecSQL;

        Sql := ' UPDATE PTCobroDetalle SET '+ Fieldact + ' = :cur '+
               ' WHERE CobroId = :cob ';
        qupdate.sql.Text := Sql;
        qupdate.Parameters.ParamByName('cur').Value := cuadrenumber;
        qupdate.Parameters.ParamByName('cob').Value := qbuscar.FieldByName('CobroId').AsString;
        qupdate.ExecSQL;

        If (rgtipoCorte.ItemIndex = 0) then
          begin
            Sql := ' UPDATE PTCobroAxapta SET '+ Fieldact + ' = :cur, Cuadrado = 1 '+
                   ' WHERE CobroId = :cob '+
                   ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
                   ' AND fecha = :fec '+
                   ' AND Cuadrado = 0 '+
                   ' AND Transferido = 0 ';
            qupdate.sql.Text := Sql;
            qupdate.Parameters.ParamByName('cur').Value := cuadrenumber;
            qupdate.Parameters.ParamByName('cob').Value := qbuscar.FieldByName('CobroId').AsString;
            qupdate.Parameters.ParamByName('fec').Value := edfechacorte.Date;
            qupdate.ExecSQL;
          end;

        qbuscar.Next;
      End;
   End;

  Act_Otras_Ventas(CorteId);
  Act_Otros_Cobros(CorteId);

  FreeAndNil(qbuscar);
  FreeAndNil(qupdate);
end;


procedure TfrmCuadreCajaUsuario.Actu_Cabecera(_entrada: String; _cuadre: String);
begin
  qrEntradaPaciente.Close;
  qrEntradaPaciente.parameters[0].Value := _entrada;
  qrEntradaPaciente.Open;

  qrEntradaPaciente.First;

  While Not qrEntradaPaciente.Eof Do
   Begin
    qrEntradaPaciente.Edit;

     If (rgtipoCorte.ItemIndex = 0) then
       Begin
        qrEntradaPacienteCUADRADO.Value := 1;
        qrEntradaPacienteCUADREUSUARIO.Value := _cuadre;
       End
     Else
       Begin
        qrEntradaPacienteCUADRADO.Value := 1;
        qrEntradaPacienteCUADREUSUARIO.Value := _cuadre;
       End;

    Actu_Detalle(qrEntradaPacienteRECID.Value, _cuadre);

    qrEntradaPaciente.Post;
    qrEntradaPaciente.Next;
   End;
end;


procedure TfrmCuadreCajaUsuario.Actu_Detalle(_registro: Integer; _cuadre: String);
begin
  qrEntradaPacienteDetalle.Close;
  qrEntradaPacienteDetalle.parameters[0].Value := _registro;
  qrEntradaPacienteDetalle.Open;

  qrEntradaPacienteDetalle.First;

  While Not qrEntradaPacienteDetalle.Eof Do
   Begin
     qrEntradaPacienteDetalle.Edit;

     If (rgtipoCorte.ItemIndex = 0) then
       Begin
        qrEntradaPacienteDetalleCUADRADO.Value := 1;
        qrEntradaPacienteDetalleCUADREUSUARIO.Value := _cuadre;
       End
     Else
       Begin
        qrEntradaPacienteDetalleCUADRADO.Value := 1;
        qrEntradaPacienteDetalleCUADREUSUARIO.Value := _cuadre;
       End;

    qrEntradaPacienteDetalle.Post;
    qrEntradaPacienteDetalle.Next;
   End;
end;


//Eliminando Los Documentos en Hold.
procedure TfrmCuadreCajaUsuario.Borrando_Hold(_usuario:String; _fecha: TDate);
var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;

 qfind.Close;
 qfind.SQL.Text := ' SELECT * FROM PTEntradaPaciente '+
                   ' WHERE fecha = :fec '+
                   ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
                   ' AND UserId = :usr '+
                   ' AND Hold = 1 ';
 qfind.Parameters.ParamByName('fec').Value := _fecha;
 qfind.Parameters.ParamByName('usr').Value := _usuario;
 qfind.Open;

 If (qfind.RecordCount > 0) Then
   Begin
     qfind.First;
     While Not qfind.Eof do
      Begin
        DM.DataBase.Execute(' DELETE FROM PTEntradaPaciente '+
                            ' WHERE RecId = '+ qfind.FieldByName('RecId').AsString +
                            ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39);
        DM.DataBase.Execute(' DELETE FROM PTEntradaPacienteDetalle '+
                            ' WHERE Refrecid = '+ qfind.FieldByName('RecId').AsString +
                            ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39);
        qfind.Next;
      End;
   End;

 FreeAndNil(qfind);
end;


procedure TfrmCuadreCajaUsuario.Act_Otras_Ventas(cuadrenumber: String);
Var
 Sql      : String;
 qbuscar  : TADOQuery;
begin
 Sql := ' SELECT * FROM PTEntradaPaciente WHERE fecha <= :fec '+
        ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
//        ' AND (CuadreUsuario IS NULL OR CuadreUsuario = '+ #39#39 + ')' +
        ' AND UserId = ' +#39 + DM.curUser + #39 +
        ' AND Hold = 0 '+
        ' AND Bruto > 1 '+
        ' AND Cuadrado = 0 '+
        ' ORDER BY EntradaId ';

 qbuscar := DM.NewQuery;
 qbuscar.Close;
 qbuscar.SQL.Text := Sql;
 qbuscar.Parameters.ParamByName('fec').Value := edfechacorte.Date;
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


procedure TfrmCuadreCajaUsuario.Act_Otros_Cobros(cuadrenumber: String);
Var
 Sql, Fieldact : String;
 qbuscar, qupdate : TADOQuery;
begin
 Sql := ' SELECT * FROM PTCobro '+
        ' WHERE fecha <= :fec ';

 If (rgtipoCorte.ItemIndex = 0) then
   begin
     Fieldact := 'CuadreUsuario';
     Sql := Sql + ' AND (CuadreUsuario IS NULL OR CuadreUsuario = '+ #39#39 + ')' +
                  ' AND UsuarioId = ' +#39 + DM.curUser + #39;
   end;

 Sql := Sql + ' ORDER BY CobroId ';

 qbuscar := DM.NewQuery;
 qbuscar.Close;
 qbuscar.SQL.Text := Sql;
 qbuscar.Parameters.ParamByName('fec').Value := edfechacorte.Date;
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

        Sql := ' UPDATE PTCobro SET '+ Fieldact + ' = :cur '+
               ' WHERE CobroId = :cob '+
               ' AND fecha = :fec ';
        qupdate.sql.Text := Sql;
        qupdate.Parameters.ParamByName('cur').Value := cuadrenumber;
        qupdate.Parameters.ParamByName('cob').Value := qbuscar.FieldByName('CobroId').AsString;
        qupdate.Parameters.ParamByName('fec').Value := edfechacorte.Date;
        qupdate.ExecSQL;

        Sql := ' UPDATE PTCobroDetalle SET '+ Fieldact + ' = :cur '+
               ' WHERE CobroId = :cob ';
        qupdate.sql.Text := Sql;
        qupdate.Parameters.ParamByName('cur').Value := cuadrenumber;
        qupdate.Parameters.ParamByName('cob').Value := qbuscar.FieldByName('CobroId').AsString;
        qupdate.ExecSQL;

        If (rgtipoCorte.ItemIndex = 0) then
          begin
            Sql := ' UPDATE PTCobroAxapta SET '+ Fieldact + ' = :cur, Cuadrado = 1 '+
                   ' WHERE CobroId = :cob '+
                   ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
                   ' AND fecha = :fec '+
                   ' AND Cuadrado = 0 '+
                   ' AND Transferido = 0 ';
            qupdate.sql.Text := Sql;
            qupdate.Parameters.ParamByName('cur').Value := cuadrenumber;
            qupdate.Parameters.ParamByName('cob').Value := qbuscar.FieldByName('CobroId').AsString;
            qupdate.Parameters.ParamByName('fec').Value := edfechacorte.Date;
            qupdate.ExecSQL;
          end;

        qbuscar.Next;
      End;
   End;

  FreeAndNil(qbuscar);
  FreeAndNil(qupdate);
end;


END.
