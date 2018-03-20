unit CuadreCajaSucursal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, dxLayoutControl, StdCtrls, cxButtons,
  cxCurrencyEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, ADODB, DB,
  cxContainer, cxEdit, cxGroupBox, cxRadioGroup, cxControls, pptypes, ppReport,
  ppCtrls, ppBands, ppClass, ppVar, ppPrnabl, ppCache, ppComm, ppRelatv, ppProd;

type
  TfrmCuadreCajaSucursal = class(TForm)
    dxLayoutControl3: TdxLayoutControl;
    rgTipoCorte: TcxRadioGroup;
    edfechacorte: TcxDateEdit;
    edTotalEfectivo: TcxCurrencyEdit;
    btaceptarcuadre: TcxButton;
    btcancelarcuadre: TcxButton;
    dxLayoutGroup2: TdxLayoutGroup;
    GroupParametros: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl3Item2: TdxLayoutItem;
    GroupSaldo: TdxLayoutGroup;
    dxLayoutControl3Item30: TdxLayoutItem;
    botonescuadre: TdxLayoutGroup;
    dxLayoutControl3Item31: TdxLayoutItem;
    dxLayoutControl3Item10: TdxLayoutItem;
    Label2: TLabel;
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
    dxLayoutControl3Group1: TdxLayoutGroup;
    qrEntradaPacienteFROM_CLINICA: TIntegerField;
    qrEntradaPacienteSINPRFILTER: TIntegerField;
    qrEntradaPacienteDetallePRECIOCOMBO: TBCDField;
    qrEntradaPacienteDetalleSINPRFILTER: TIntegerField;
    qrEntradaPacienteDetalleFROM_CLINICA: TIntegerField;
    qrEntradaPacienteDetalleREFRECID_POS: TIntegerField;
    qrEntradaPacienteDetalleENTRADAID_POS: TStringField;
    qrEntradaPacienteDetalleMUESTRANO_POS: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);

    function totalEfectivo : double;
    function GetCuadreNo : String;
    procedure SetDefaultCuadre;

    procedure CrearCabeceraCorte;
    procedure CrearDetalleCorte;
    procedure CrearCorteSucursal;
    procedure ActVentas(cuadrenumber: String);
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
  frmCuadreCajaSucursal: TfrmCuadreCajaSucursal;

Implementation

Uses ActionsDM, DataModule, Main;

{$R *.dfm}


procedure TfrmCuadreCajaSucursal.FormKeyDown(Sender: TObject; var Key: Word;
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


function TfrmCuadreCajaSucursal.totalEfectivo : double;
begin
 result := 0.00;
end;


procedure TfrmCuadreCajaSucursal.Run;
Var
 qcorte : TADOQuery;
begin
 SetDefaultCuadre;
 showmodal;
 if ModalResult = mrOk then
  begin
   if MessageDlg('Seguro Que Desea Realizar El Corte?', mtWarning, [mbYes,mbNo], 0) = mrYes then
    begin
      if Validar_Cobros then     // Lista los ptcobros con Cuadreglobal en blanco de la fecha y suc. indicada
        Begin
          DM.Info('Esta Operacion NO Podra Ser Realizada Nuevamente.!!!');

          CorteId := GetCuadreNo;  // Proximo numero cuadre de sucursal

          Buscar_Cobros_Recibos;

          Buscar_Cobros_Facturas;

          CrearCabeceraCorte;

          CrearDetalleCorte;

          CrearCorteSucursal;

          ActVentas(CorteId);

          DM.Cobro_Var := 'Sucursal';

          DM.qrCorteCajaDetRep.Close;
          DM.qrCorteCajaDetRep.Parameters.ParamByName('cor').Value := CorteId;
          DM.qrCorteCajaDetRep.Open;

          DM.qrCorteDetalle.Close;
          DM.qrCorteDetalle.Parameters.ParamByName('cor').Value := CorteId;
          DM.qrCorteDetalle.Open;

          DM.qrCorteSucursal.Close;
          DM.qrCorteSucursal.Parameters.ParamByName('cor').Value := CorteId;
          DM.qrCorteSucursal.Open;

          //Imprimiendo el Cuadre de Caja del Usuario.
          qcorte := DM.NewQuery;
          qcorte.Close;
          qcorte.SQL.Text := ' SELECT * FROM PTCorteCajaCab WHERE CorteId = :cor ';
          qcorte.Parameters.ParamByName('cor').Value := CorteId;
          qcorte.Open;

          if (qcorte.RecordCount > 0) then
            Begin
              DM.ppImpCuadreCajaSucursal.DeviceType := dtScreen;
              DM.ppImpCuadreCajaSucursal.Print;

              //Imprimiendo el Reporte de Pagos Desglosados por Paciente - Forma de Pago.
              DM.qrCobro.Close;
              DM.qrCobro.SQL.Text := ' SELECT * FROM PTCobro C, PTEntradaPaciente E '+
                                     ' WHERE C.refrecid = E.RecId '+
                                     ' AND E.DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
                                     ' AND C.Fecha = :fec '+
                                     ' AND C.SucursalId = :suc '+
//                                     ' AND C.UsuarioId = :usr '+
                                     ' AND C.CuadreGlobal = :cdr '+
                                     ' ORDER BY C.SucursalId, C.Fecha, C.CobroId ';
              DM.qrCobro.Parameters.ParamByName('suc').Value := qcorte.FieldByName('SucursalId').AsString;
              DM.qrCobro.Parameters.ParamByName('fec').Value := qcorte.FieldByName('Fecha').AsString;
//              DM.qrCobro.Parameters.ParamByName('usr').Value := qcorte.FieldByName('UsuarioId').AsString;
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
                                             ' AND SucursalId = :suc '+
                                             ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
                                             ' ORDER BY Sucursal, Origen, Fecha, ClienteId, EntradaId ';
//                                             ' AND SucursalId = :suc AND UserId = :usr '+
//                                             ' ORDER BY Sucursal, Origen, Fecha, EntradaId ';
              DM.qrEntradaCabRep.Parameters.ParamByName('suc').Value := qcorte.FieldByName('SucursalId').AsString;
              DM.qrEntradaCabRep.Parameters.ParamByName('fec').Value := qcorte.FieldByName('Fecha').AsString;
//              DM.qrEntradaCabRep.Parameters.ParamByName('usr').Value := qcorte.FieldByName('Usuario').AsString;
              DM.qrEntradaCabRep.Open;

              If (DM.qrEntradaCabRep.RecordCount > 0) then
                begin
                  DM.ppImpEntradasxGrupos.DeviceType := dtScreen;
                  DM.ppImpEntradasxGrupos.Print;
                end;

              //Imprimiendo el Reporte de Entradas con Descuentos del Usuario.
              DM.qrEntradaCabRep.Close;
              DM.qrEntradaCabRep.SQL.Text := ' SELECT * FROM PTEntradaPaciente WHERE Fecha = :fec '+
//                                           ' AND SucursalId = :suc AND DescAutorizadoPor = :usr '+
                                             ' AND SucursalId = :suc '+
                                             ' AND Descuento > 0.99 '+
                                             ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
                                             ' ORDER BY Sucursal, Fecha, EntradaId ';
              DM.qrEntradaCabRep.Parameters.ParamByName('suc').Value := qcorte.FieldByName('SucursalId').AsVariant;
              DM.qrEntradaCabRep.Parameters.ParamByName('fec').Value := qcorte.FieldByName('Fecha').AsVariant;
//            DM.qrEntradaCabRep.Parameters.ParamByName('usr').Value := qcorte.FieldByName('Usuario').AsVariant;
              DM.qrEntradaCabRep.Open;

              If (DM.qrEntradaCabRep.RecordCount > 0) then
                begin
                  DM.ppImpPacienteDescuento.DeviceType := dtScreen;
                  DM.ppImpPacienteDescuento.Print;
                end;

              //Imprimiendo el Reporte de Pagos Pendientes del Usuario.
              DM.qrEntradaCabRep.Close;
              DM.qrEntradaCabRep.SQL.Text := ' SELECT * FROM PTEntradaPaciente WHERE SucursalId = :suc '+
                                             ' AND (Neto - TotalPagado) > 0.99 '+
                                             ' AND FormadePago <> :pag '+
                                             ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
                                             ' ORDER BY Fecha, Sucursal, EntradaId ';
              DM.qrEntradaCabRep.Parameters.ParamByName('suc').Value := qcorte.FieldByName('SucursalId').AsVariant;
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


procedure TfrmCuadreCajaSucursal.SetDefaultCuadre;
begin
  edTotalEfectivo.Value := 0;
  rgTipoCorte.ItemIndex := 0;
  edfechacorte.Date := date;
end;


function TfrmCuadreCajaSucursal.GetCuadreNo : String;
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


procedure TfrmCuadreCajaSucursal.CrearCabeceraCorte;
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
 qcabcorte.Parameters.ParamByName('03').Value := 'SUCURSAL';
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
 qcabcorte.Parameters.ParamByName('25').Value := 0.00; //DM.Redondeo(EDDOLLARES.Value);
// qcabcorte.Parameters.ParamByName('26').Value := DM.Redondeo(Cobros_Today);
// qcabcorte.Parameters.ParamByName('27').Value := DM.Redondeo(Cobros_Anter);
 qcabcorte.ExecSQL;

 FreeAndNil(qcabcorte);
end;


procedure TfrmCuadreCajaSucursal.CrearDetalleCorte;
Var
 Sql : String;
 qcobros, qdetalle : TADOQuery;
begin
 Sql := ' SELECT c.formadepagoid, c.monedaid, SUM(c.monto), SUM(c.montoMST) FROM PTCobro B, ptcobrodetalle C '+
        ' WHERE B.cobroid = C.cobroid '+
        ' AND B.SucursalId = :suc '+
        ' AND B.fecha = :fec ';

 if (rgtipoCorte.ItemIndex = 0) then
   Sql := Sql + ' AND (B.CuadreGlobal IS NULL OR B.CuadreGlobal = '+#39#39+')'
 else
   Sql := Sql + ' AND (B.CuadreGlobal IS NULL OR B.CuadreGlobal = '+#39#39+')';

 qcobros := DM.NewQuery;
 qcobros.close;
// qcobros.sql.Text := Sql + ' GROUP BY B.SucursalId, B.UsuarioId, C.FormadePagoId, C.MonedaId ';
 qcobros.sql.Text := Sql + ' GROUP BY C.FormadePagoId, C.MonedaId ';
 qcobros.Parameters.ParamByName('suc').Value := DM.CurSucursal;
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


procedure TfrmCuadreCajaSucursal.CrearCorteSucursal;
Var
 Sql : String;
 qcobros, qdetalle : TADOQuery;
begin
 Sql := ' SELECT B.UsuarioId, C.FormadePagoId, C.MonedaId, '+
        ' SUM(C.Monto) AS Monto, SUM(C.MontoMST) AS MontoMST '+
        ' FROM PTCobro B, ptcobrodetalle C '+
        ' WHERE B.cobroid = C.cobroid '+
        ' AND B.SucursalId = :suc '+
        ' AND B.fecha = :fec ';

 if (rgtipoCorte.ItemIndex = 0) then
   Sql := Sql + ' AND (B.CuadreGlobal IS NULL OR B.CuadreGlobal = '+#39#39+')'
 else
   Sql := Sql + ' AND (B.CuadreGlobal IS NULL OR B.CuadreGlobal = '+#39#39+')';

 qcobros := DM.NewQuery;
 qcobros.close;
 qcobros.sql.Text := Sql + ' GROUP BY B.UsuarioId, C.FormadePagoId, C.MonedaId ';
 qcobros.Parameters.ParamByName('suc').Value := DM.CurSucursal;
 qcobros.Parameters.ParamByName('fec').Value := edfechacorte.Date;
 qcobros.Active := True;

 qdetalle := DM.NewQuery;
 qdetalle.close;
 qdetalle.SQL.Text := ' INSERT INTO PTCorteSucursal '+
                      ' (CorteID, Usuario, FormaDePagoId, MonedaId, Valor, ValorMST) '+
                      ' VALUES (:0,:1,:2,:3,:4,:5) ';

 while not qcobros.Eof do
  begin
    qdetalle.Parameters[0].Value := CorteId;
    qdetalle.Parameters[1].Value := qcobros.FieldByName('UsuarioId').AsString;
    qdetalle.Parameters[2].Value := qcobros.FieldByName('FormadePagoId').AsString;
    qdetalle.Parameters[3].Value := qcobros.FieldByName('MonedaId').AsString;
    qdetalle.Parameters[4].Value := DM.Redondeo(qcobros.FieldByName('Monto').AsFloat);
    qdetalle.Parameters[5].Value := DM.Redondeo(qcobros.FieldByName('MontoMST').AsFloat);
    qdetalle.ExecSQL;

    qcobros.Next;
  end;

 FreeAndNil(qcobros);
 FreeAndNil(qdetalle);
end;


function TfrmCuadreCajaSucursal.Validar_Cobros : Boolean;
Var
 Sql : String;
 qbuscar: TADOQuery;
begin
 Sql := ' SELECT * FROM PTCobro B, PTCobroDetalle C '+
        ' WHERE B.cobroid = C.cobroid '+
        ' AND B.SucursalId = :suc '+
        ' AND B.fecha = :fec ';

 If (rgtipoCorte.ItemIndex = 0) then
   Sql := Sql + ' AND (B.CuadreGlobal IS NULL OR B.CuadreGlobal = '+ #39#39 + ')'
 else
   Sql := Sql + ' AND (B.CuadreGlobal IS NULL OR B.CuadreGlobal = '+ #39#39 + ')';

   Sql := Sql + ' ORDER BY B.CobroId ';

 qbuscar := DM.NewQuery;
 qbuscar.Close;
 qbuscar.SQL.Text := Sql;
 qbuscar.Parameters.ParamByName('fec').Value := edfechacorte.Date;
 qbuscar.Parameters.ParamByName('suc').Value := DM.CurSucursal;
 qbuscar.Open;

 If (qbuscar.RecordCount > 0) Then
   Result := True
 Else
   Result := False;

 FreeAndNil(qbuscar);
End;


procedure TfrmCuadreCajaSucursal.Buscar_Cobros_Recibos;
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

 Sql := ' SELECT * FROM PTCobro B, PTCobroDetalle C '+
        ' WHERE B.cobroid = C.cobroid '+
        ' AND B.SucursalId = :suc '+
        ' AND B.fecha = :fec ';

 If (rgtipoCorte.ItemIndex = 0) then
   Sql := Sql + ' AND (B.CuadreGlobal IS NULL OR B.CuadreGlobal = '+ #39#39 + ')'
 else
   Sql := Sql + ' AND (B.CuadreGlobal IS NULL OR B.CuadreGlobal = '+ #39#39 + ')';

   Sql := Sql + ' ORDER BY B.CobroId ';

// qrecibo := DM.NewQuery;

 qbuscar := DM.NewQuery;
 qbuscar.Close;
 qbuscar.SQL.Text := Sql;
 qbuscar.Parameters.ParamByName('fec').Value := edfechacorte.Date;
 qbuscar.Parameters.ParamByName('suc').Value := DM.CurSucursal;
 qbuscar.Open;

 If (qbuscar.RecordCount > 0) Then
   Begin
     qbuscar.First;
     While Not qbuscar.Eof Do
      Begin
//        Query Borrado NO TIENE NADA ESPECIAL -- WILLIAMS A. GUTIERREZ 20/08/2010
//        qrecibo.Close;
//        qrecibo.SQL.Text := 'SELECT * FROM PTCobro WHERE CobroId = '+ #39 + qbuscar.FieldByName('CobroId').AsString + #39;
//        qrecibo.Open;

//        Total_Pagado     := DM.Redondeo(Total_Pagado + qrEntradaPacienteTotalPagado.Value);
        Total_Pagado     := DM.Redondeo(Total_Pagado + qbuscar.FieldByName('Monto').AsFloat);

        If (qbuscar.FieldByName('MonedaID').AsString = DM.qrParametroMonedaDolares.Value) Then
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


procedure TfrmCuadreCajaSucursal.Buscar_Cobros_Facturas;
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

 Sql := ' SELECT * FROM PTEntradaPaciente '+
        ' WHERE SucursalId = :suc '+
        ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
        ' AND fecha = :fec ';

 If (rgtipoCorte.ItemIndex = 0) then
   Sql := Sql + ' AND (CuadreGlobal IS NULL OR CuadreGlobal = '+ #39#39 + ')'
 else
   Sql := Sql + ' AND (CuadreGlobal IS NULL OR CuadreGlobal = '+ #39#39 + ')';

   Sql := Sql + ' ORDER BY EntradaId ';

 qrecibo := DM.NewQuery;

 qbuscar := DM.NewQuery;
 qbuscar.Close;
 qbuscar.SQL.Text := Sql;
 qbuscar.Parameters.ParamByName('fec').Value := edfechacorte.Date;
 qbuscar.Parameters.ParamByName('suc').Value := DM.CurSucursal;
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

//            If (qrecibo.FieldByName('MonedaID').AsString = DM.qrParametroMonedaDolares.Value) Then
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


procedure TfrmCuadreCajaSucursal.ActVentas(cuadrenumber: String);
Var
 Sql, Fieldact : String;
 qbuscar, qupdate : TADOQuery;
begin
 Sql := ' SELECT * FROM PTCobro B, PTCobroDetalle C '+
        ' WHERE B.cobroid = C.cobroid '+
        ' AND B.SucursalId = :suc '+
        ' AND B.fecha = :fec ';

 If (rgtipoCorte.ItemIndex = 0) then
   Begin
     Fieldact := 'CuadreGlobal';
     Sql := Sql + ' AND (B.CuadreGlobal IS NULL OR B.CuadreGlobal = '+ #39#39 + ')';
   end
 else
   Begin
     Fieldact := 'CuadreGlobal';
     Sql := Sql + ' AND (B.CuadreGlobal IS NULL OR B.CuadreGlobal = '+ #39#39 + ')';
   end;

 Sql := Sql + ' ORDER BY b.CobroId, b.EntradaId ';

 qbuscar := DM.NewQuery;
 qbuscar.Close;
 qbuscar.SQL.Text := Sql;
 qbuscar.Parameters.ParamByName('fec').Value := edfechacorte.Date;
 qbuscar.Parameters.ParamByName('suc').Value := DM.CurSucursal;
 qbuscar.Open;

 If (qbuscar.RecordCount > 0) Then
   Begin
     qbuscar.First;
     While Not qbuscar.Eof Do
      Begin
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
            Sql := ' UPDATE PTCobroAxapta SET '+ Fieldact + ' = :cur '+
                   ' WHERE CobroId = :cob '+
                   ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
                   ' AND fecha = :fec ';
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


procedure TfrmCuadreCajaSucursal.Actu_Cabecera(_entrada: String; _cuadre: String);
begin
  qrEntradaPaciente.Close;
  qrEntradaPaciente.parameters[0].Value := _entrada;
  qrEntradaPaciente.Open;

  qrEntradaPaciente.First;

  While Not qrEntradaPaciente.Eof Do
   Begin
    qrEntradaPaciente.Edit;

     If (rgtipoCorte.ItemIndex = 0) then
       qrEntradaPacienteCUADREGLOBAL.Value := _cuadre
     Else
       qrEntradaPacienteCUADREGLOBAL.Value := _cuadre;

    Actu_Detalle(qrEntradaPacienteRECID.Value, _cuadre);

    qrEntradaPaciente.Post;
    qrEntradaPaciente.Next;
   End;
end;


procedure TfrmCuadreCajaSucursal.Actu_Detalle(_registro: Integer; _cuadre: String);
begin
  qrEntradaPacienteDetalle.Close;
  qrEntradaPacienteDetalle.parameters[0].Value := _registro;
  qrEntradaPacienteDetalle.Open;

  qrEntradaPacienteDetalle.First;

  While Not qrEntradaPacienteDetalle.Eof Do
   Begin
     qrEntradaPacienteDetalle.Edit;

     If (rgtipoCorte.ItemIndex = 0) then
       qrEntradaPacienteDetalleCUADREGLOBAL.Value := _cuadre
     Else
       qrEntradaPacienteDetalleCUADREGLOBAL.Value := _cuadre;

    qrEntradaPacienteDetalle.Post;
    qrEntradaPacienteDetalle.Next;
   End;
end;


end.

