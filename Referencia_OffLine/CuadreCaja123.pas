unit CuadreCaja123;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, dxLayoutControl, StdCtrls, cxButtons,
  cxCurrencyEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxContainer, cxEdit, cxGroupBox, cxRadioGroup, cxControls,ADODB,pptypes, DB;

type
  TfrmCuadreCaja123 = class(TForm)
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
    procedure SetDefaultCuadre;
    procedure CrearCabeceraCorte;
    procedure CrearDetalleCorte;
    procedure ActVentas;
    function totalEfectivo : double;
    function GetCuadreNo : String;
  private
    { Private declarations }
  public
    { Public declarations }

    Total_Bruto, Total_Cobertura, Total_Descuento, Total_Gastos, Total_Venta,
    Total_Pagado, Total_Pendiente, Total_Credito, Total_Contado, Valor2000,
    Valor1000, Valor500, Valor100, Valor50, Valor20, Valor10, Valor5, Valor1,
    Valor50c, Valor25c, Valor10c, Valor5c, Valor25,
    ValorFormaPagoI, ValorFormaPagoE, ValorEntregar : double;

    corteid : string;

    procedure Run;
    procedure Buscar_Cobros;
  end;

var
  frmCuadreCaja123: TfrmCuadreCaja123;

Implementation

Uses ActionsDM, DataModule, Main;

{$R *.dfm}


procedure TfrmCuadreCaja123.ed1000PropertiesChange(Sender: TObject);
begin
 if (ed1000.text <> '') then
    Valor1000 := strtoint(ed1000.text) * 1000
 else Valor1000 := 0;

 lbValor1000.Caption := formatfloat('##,###,##0',Valor1000);
 edTotalEfectivo.Value := totalEfectivo;
end;

procedure TfrmCuadreCaja123.ed100PropertiesChange(Sender: TObject);
begin
 if (ed100.text <> '') then
    Valor100 := strtoint(ed100.text) * 100
 else Valor100 := 0;

 lbValor100.Caption := formatfloat('##,###,##0',Valor100);
 edTotalEfectivo.Value := totalEfectivo;
end;

procedure TfrmCuadreCaja123.ed10cPropertiesChange(Sender: TObject);
begin
 if (ed10c.text <> '') then
    Valor10c := strtoint(ed10c.text) * 0.1
 else Valor10c := 0;

 lbValor10c.Caption := formatfloat('##,###,##0.00',Valor10c);
 edTotalEfectivo.Value := totalEfectivo;
end;

procedure TfrmCuadreCaja123.ed10PropertiesChange(Sender: TObject);
begin
 if (ed10.text <> '') then
    Valor10 := strtoint(ed10.text) * 10
 else Valor10 := 0;

 lbValor10.Caption := formatfloat('##,###,##0',Valor10);
 edTotalEfectivo.Value := totalEfectivo;
end;

procedure TfrmCuadreCaja123.ed1PropertiesChange(Sender: TObject);
begin
 if (ed1.text <> '') then
    Valor1 := strtoint(ed1.text) * 1
 else Valor1 := 0;

 lbValor1.Caption := formatfloat('##,###,##0',Valor1);
 edTotalEfectivo.Value := totalEfectivo;
end;

procedure TfrmCuadreCaja123.ed2000PropertiesChange(Sender: TObject);
begin
 if (ed2000.text <> '') then
    Valor2000 := strtoint(ed2000.text) * 2000
 else Valor2000 := 0;

 lbValor2000.Caption := formatfloat('##,###,##0',Valor2000);
 edTotalEfectivo.Value := totalEfectivo;
end;

procedure TfrmCuadreCaja123.ed20PropertiesChange(Sender: TObject);
begin
 if (ed20.text <> '') then
    Valor20 := strtoint(ed20.text) * 20
 else Valor20 := 0;

 lbValor20.Caption := formatfloat('##,###,##0',Valor20);
 edTotalEfectivo.Value := totalEfectivo;
end;

procedure TfrmCuadreCaja123.ed25cPropertiesChange(Sender: TObject);
begin
 if (ed25c.text <> '') then
    Valor25c := strtoint(ed25c.text) * 0.25
 else Valor25c := 0;

 lbValor25c.Caption := formatfloat('##,###,##0.00',Valor25c);
 edTotalEfectivo.Value := totalEfectivo;
end;

procedure TfrmCuadreCaja123.ed25PropertiesChange(Sender: TObject);
begin
 if (ed25.text <> '') then
    Valor25 := strtoint(ed25.text) * 25
 else Valor25 := 0;

 lbValor25.Caption := formatfloat('##,###,##0',Valor25);
 edTotalEfectivo.Value := totalEfectivo;
end;

procedure TfrmCuadreCaja123.ed500PropertiesChange(Sender: TObject);
begin
 if (ed500.text <> '') then
    Valor500 := strtoint(ed500.text) * 500
 else Valor500 := 0;

 lbValor500.Caption := formatfloat('##,###,##0',Valor500);
 edTotalEfectivo.Value := totalEfectivo;
end;

procedure TfrmCuadreCaja123.ed50cPropertiesChange(Sender: TObject);
begin
 if (ed50c.text <> '') then
    Valor50c := strtoint(ed50c.text) * 0.5
 else Valor50c := 0;

 lbValor50c.Caption := formatfloat('##,###,##0.00',Valor50c);
 edTotalEfectivo.Value := totalEfectivo;
end;

procedure TfrmCuadreCaja123.ed50PropertiesChange(Sender: TObject);
begin
 if (ed50.text <> '') then
    Valor50 := strtoint(ed50.text) * 50
 else Valor50 := 0;

 lbValor50.Caption := formatfloat('##,###,##0',Valor50);
 edTotalEfectivo.Value := totalEfectivo;
end;

procedure TfrmCuadreCaja123.ed5cPropertiesChange(Sender: TObject);
begin
 if (ed5c.text <> '') then
    Valor5c := strtoint(ed5c.text) * 0.05
 else Valor5c := 0;

 lbValor5c.Caption := formatfloat('##,###,##0.00',Valor5c);
 edTotalEfectivo.Value := totalEfectivo;
end;

procedure TfrmCuadreCaja123.ed5PropertiesChange(Sender: TObject);
begin
 if (ed5.text <> '') then
    Valor5 := strtoint(ed5.text) * 5
 else Valor5 := 0;

 lbValor5.Caption := formatfloat('##,###,##0',Valor5);
 edTotalEfectivo.Value := totalEfectivo;
end;

procedure TfrmCuadreCaja123.FormKeyDown(Sender: TObject; var Key: Word;
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

function TfrmCuadreCaja123.totalEfectivo : double;
begin
 result := Valor2000 + Valor1000 + Valor500 + Valor100 + Valor50 + Valor20 +
           Valor10 + Valor5 + Valor1 + Valor50c + Valor25c + Valor10c + Valor5c + valor25;
end;

procedure TfrmCuadreCaja123.Run;
begin
 SetDefaultCuadre;
 showmodal;
 if ModalResult = mrOk then
 begin
  if MessageDlg('Seguro que desea realizar el corte?', mtWarning, [mbYes,mbNo], 0) = mrYes then
  begin
   CorteId := GetCuadreNo;

   CrearCabeceraCorte;

   CrearDetalleCorte;

   ActVentas;

   DM.qrCorteCajaDetRep.Close;
   DM.qrCorteCajaDetRep.Parameters.ParamByName('cor').Value := CorteId;
   DM.qrCorteCajaDetRep.Open;

   DM.ppImpCuadreCaja.DeviceType := dtScreen;
   DM.ppImpCuadreCaja.Print;
  end;
 end;
 
end;

procedure TfrmCuadreCaja123.SetDefaultCuadre;
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


function TfrmCuadreCaja123.GetCuadreNo : String;
begin
  DM.qrParametro.Close;
  DM.qrParametro.Open;

  if DM.qrParametroIdentificadorCuadre.Value <> '' then
    result := DM.qrParametroIdentificadorCuadre.Value + '-' +
//              formatfloat('00',strtofloat(DM.cursucursal))+ '-' +
              DM.cursucursal + '-' +
              formatfloat('000000',DM.qrParametroSecuenciaCuadre.AsFloat)
  else
//    result := formatfloat('00',strtofloat(DM.cursucursal))+ '-' +
    result := DM.cursucursal + '-' +
              formatfloat('000000',DM.qrParametroSecuenciaCuadre.AsFloat);

  DM.qrParametro.Edit;
  DM.qrParametroSecuenciaCuadre.Value := DM.qrParametroSecuenciaCuadre.Value + 1;
  DM.qrParametro.Post;
end;

procedure TfrmCuadreCaja123.CrearCabeceraCorte;
Var
 qcabcorte : TADOQuery;
begin
 qcabcorte := DM.NewQuery;
 qcabcorte.Close;
 qcabcorte.SQL.Text := ' INSERT INTO PTCorteCajaCab (CorteId, Fecha, Hora, Usuario, SucursalId, '+
                       ' Total_Bruto, Total_Cobertura, Total_Descuento, Total_Gastos, Total_Pagado, '+
                       ' Total_Pendiente, Total_Credito, Total_Contado, Total_Venta) '+
                       ' VALUES (:00, :01, :02, :03, :04, :05, :06, :07, :08, :09, :10, :11, :12, :13)';

 qcabcorte.Parameters.ParamByName('00').Value := corteid;
 qcabcorte.Parameters.ParamByName('01').Value := edFechaCorte.Date;
 qcabcorte.Parameters.ParamByName('02').Value := copy(timetostr(now),1,5);

 if (rgTipoCorte.ItemIndex = 0) then
//   qcabcorte.Parameters.ParamByName('03').Value := 'GLOBAL'
   qcabcorte.Parameters.ParamByName('03').Value := 'SUCURSAL'
 else
   qcabcorte.Parameters.ParamByName('03').Value :=DM.CurUser;
 qcabcorte.Parameters.ParamByName('04').Value := DM.CurSucursal;
 qcabcorte.Parameters.ParamByName('05').Value := Total_Bruto;
 qcabcorte.Parameters.ParamByName('06').Value := Total_Cobertura;
 qcabcorte.Parameters.ParamByName('07').Value := Total_Descuento;
 qcabcorte.Parameters.ParamByName('08').Value := Total_Gastos;
 qcabcorte.Parameters.ParamByName('09').Value := Total_Pagado;
 qcabcorte.Parameters.ParamByName('10').Value := Total_Pendiente;
 qcabcorte.Parameters.ParamByName('11').Value := Total_Credito;
 qcabcorte.Parameters.ParamByName('12').Value := Total_Contado;
 qcabcorte.Parameters.ParamByName('13').Value := Total_Venta;
 qcabcorte.ExecSQL;

 FreeAndNil(qcabcorte);
end;


procedure TfrmCuadreCaja123.CrearDetalleCorte;
Var
 Sql : String;
 qcobros, qdetalle : TADOQuery;
begin
 Sql := ' SELECT c.formadepagoid, SUM(c.montoMST) FROM PTCobro b, ptcobrodetalle c '+
        ' WHERE b.cobroid = c.cobroid '+
        ' AND b.fecha = :fec ';
//        ' AND b.fecha <= :fec ';

 if (rgtipoCorte.ItemIndex = 0) then
     Sql := Sql + ' AND (b.CuadreSucursal IS NULL OR b.CuadreSucursal = '+#39#39+')'
 else
     Sql := Sql + ' AND (b.CuadreUsuario IS NULL OR b.CuadreUsuario = '+#39#39+') '  +
                  ' AND b.usuarioId = ' +#39 + DM.curUser + #39;

 qcobros := DM.NewQuery;
 qcobros.close;
 qcobros.sql.Text := Sql + ' GROUP BY c.formaDepagoid ';
 qcobros.Parameters.ParamByName('fec').Value := edfechacorte.Date;
 qcobros.Active := True;

 qdetalle := DM.NewQuery;
 qdetalle.close;
 qdetalle.SQL.Text := 'INSERT INTO PTCorteCajaDet(CorteID,Tipo,FormaDePagoId,Valor) Values(:0,:1,:2,:3)';

 while not qcobros.Eof do
  begin
    qdetalle.Parameters[0].Value := CorteId;
    qdetalle.Parameters[1].Value := '1';
    qdetalle.Parameters[2].Value := qcobros.Fields[0].AsString;
    qdetalle.Parameters[3].Value := qcobros.Fields[1].AsFloat;
    qdetalle.ExecSQL;

    if (qcobros.Fields[0].AsString <> 'EFE') then
      begin
        qdetalle.Parameters[0].Value := CorteId;
        qdetalle.Parameters[1].Value := '0';
        qdetalle.Parameters[2].Value := qcobros.Fields[0].AsString;
        qdetalle.Parameters[3].Value := qcobros.Fields[1].AsFloat;
        qdetalle.ExecSQL;
      end
    else
      begin
        qdetalle.Parameters[0].Value := CorteId;
        qdetalle.Parameters[1].Value := '0';
        qdetalle.Parameters[2].Value := qcobros.Fields[0].AsString;
        qdetalle.Parameters[3].Value := edtotalefectivo.Value;
        qdetalle.ExecSQL;
       end;

    qcobros.Next;
  end;

 FreeAndNil(qcobros);
 FreeAndNil(qdetalle);
end;


procedure TfrmCuadreCaja123.ActVentas;
Var
 Sql,Fieldact : String;
 qact : TADOQuery;
begin
 if (rgtipoCorte.ItemIndex = 0) then
     Fieldact := 'CuadreSucursal'
 else
     Fieldact := 'CuadreUsuario';

 Sql := ' UPDATE PTCobro SET '+ Fieldact + ' = :cor '+
        ' WHERE fecha = :fec ';
//        ' WHERE fecha <= :fec ';

 if (rgtipoCorte.ItemIndex = 0) then
     Sql := Sql + ' AND (CuadreSucursal IS NULL OR CuadreSucursal = '+#39#39+')'
 else
     Sql := Sql + ' AND (CuadreUsuario IS NULL OR CuadreUsuario = '+#39#39+') '  +
                  ' AND usuarioId = ' +#39 + DM.curUser + #39;
 qact := DM.NewQuery;
 qact.close;
 qact.sql.Text := Sql;
 qact.Parameters.ParamByName('cor').Value := CorteId;
 qact.Parameters.ParamByName('fec').Value := edfechacorte.Date;
 qact.ExecSQL;

 FreeAndNil(qact);
end;


procedure TfrmCuadreCaja123.Buscar_Cobros();
Var
 Sql : String;
 qbuscar  : TADOQuery;
begin
 Total_Bruto      := 0;
 Total_Cobertura  := 0;
 Total_Descuento  := 0;
 Total_Gastos     := 0;
 Total_Pagado     := 0;
 Total_Pendiente  := 0;
 Total_Credito    := 0;
 Total_Contado    := 0;
 Total_Venta      := 0;

 Sql := ' SELECT * FROM PTCobro b, ptcobrodetalle c '+
        ' WHERE b.cobroid = c.cobroid '+
        ' AND b.fecha = :fec ';

 If (rgtipoCorte.ItemIndex = 0) then
   Sql := Sql + ' AND (b.CuadreSucursal IS NULL OR b.CuadreSucursal = '+ #39#39 + ')'
 else
   Sql := Sql + ' AND (b.CuadreUsuario IS NULL OR b.CuadreUsuario = '+ #39#39 + ')' +
                ' AND b.usuarioId = ' +#39 + DM.curUser + #39;

   Sql := Sql + ' ORDER BY b.CobroId ';

 qbuscar := DM.NewQuery;
 qbuscar.Close;
 qbuscar.SQL.Text := Sql;
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
            Total_Bruto      := DM.Redondeo(Total_Bruto + qrEntradaPacienteBruto.Value);
            Total_Descuento  := DM.Redondeo(Total_Descuento + qrEntradaPacienteDescuento.Value);
            Total_Gastos     := DM.Redondeo(Total_Gastos + qrEntradaPacienteGastosVarios.Value);
            Total_Venta      := DM.Redondeo(Total_Venta + qrEntradaPacienteNeto.Value);
            Total_Pagado     := DM.Redondeo(Total_Pagado + qrEntradaPacienteTotalPagado.Value);
            Total_Pendiente  := DM.Redondeo(Total_Venta + (qrEntradaPacienteNeto.Value - qrEntradaPacienteTotalPagado.Value));

            if (qrEntradaPacienteFormadePago.Value = 'Contado') Or (qrEntradaPacienteFormadePago.Value = 'Contra Entrega') then
              begin
                Total_Contado    := DM.Redondeo(Total_Contado + Total_Venta);
                Total_Credito    := DM.Redondeo(Total_Credito + 0);
              end
            Else
              begin
                Total_Contado    := DM.Redondeo(Total_Contado + 0);
                Total_Credito    := DM.Redondeo(Total_Credito + Total_Venta);
              end;

            if (qrEntradaPacienteCoberturaConfirmada.Value = 1) And (qrEntradaPacienteCoberturaSeguro.Value > 1) then
              Total_Cobertura  := DM.Redondeo(Total_Cobertura + qrEntradaPacienteCoberturaSeguro.Value)
            Else
              Total_Cobertura  := DM.Redondeo(Total_Cobertura + 0);

            qrEntradaPaciente.Next;
          End;

        qbuscar.Next;
      End;
   End;

 FreeAndNil(qbuscar);
End;


end.

