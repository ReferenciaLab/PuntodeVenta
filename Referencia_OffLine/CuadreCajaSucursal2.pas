unit CuadreCajaSucursal2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, dxLayoutControl, StdCtrls, cxButtons,
  cxCurrencyEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, ADODB, DB,
  cxContainer, cxEdit, cxGroupBox, cxRadioGroup, cxControls, pptypes, ppReport,
  ppCtrls, ppBands, ppClass, ppVar, ppPrnabl, ppCache, ppComm, ppRelatv, ppProd,
  cxGraphics, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,dlgmensajes;

type
  TfrmCuadreCajaSucursal2 = class(TForm)
    dxLayoutControl3: TdxLayoutControl;
    rgTipoCorte: TcxRadioGroup;
    edfechacorte: TcxDateEdit;
    btaceptarcuadre: TcxButton;
    btcancelarcuadre: TcxButton;
    dxLayoutGroup2: TdxLayoutGroup;
    GroupParametros: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl3Item2: TdxLayoutItem;
    GroupSaldo: TdxLayoutGroup;
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
    qrEntradaPacienteSINPRFILTER: TIntegerField;
    qrEntradaPacienteDetallePRECIOCOMBO: TBCDField;
    qrEntradaPacienteDetalleSINPRFILTER: TIntegerField;
    qrEntradaPacienteDetalleFROM_CLINICA: TIntegerField;
    qrEntradaPacienteDetalleENTRADAID_POS: TStringField;
    qrEntradaPacienteDetalleMUESTRANO_POS: TStringField;
    LcSucursales: TcxLookupComboBox;
    dxLayoutControl3Item1: TdxLayoutItem;
    dxLayoutControl3Group2: TdxLayoutGroup;
    qrEntradaPacienteRECID: TLargeintField;
    qrEntradaPacienteDetalleREFRECID: TLargeintField;
    qrEntradaPacienteDetalleREFRECID_POS: TLargeintField;
    qrEntradaPacienteDetalleRECID: TLargeintField;
    qrEntradaPacienteDetalleNCR_ESTATUS: TBooleanField;
    procedure LcSucursalesPropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    Function  ActCuadreSucursal : Boolean;
    function totalEfectivo : double;
    function GetCuadreNo : String;
    function GetSecuenciaId : Int64;
    procedure SetDefaultCuadre;

    procedure Actu_Cabecera(_entrada: String; _cuadre: String);
    procedure Actu_Detalle(_registro: Int64; _cuadre: String);
  private
    { Private declarations }
  public
    { Public declarations }

    Total_PagoRD, Total_PagoUS, Total_VtaRD, Total_VtaUS, Total_ContRD,
    Total_ContUS, Total_Normal, Total_Filtro, Depo_Normal, Depo_Filtro,
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
    Depo_Normal_Dos, Depo_Filtro_Dos, Total_Bruto_Dos, Total_Cobertura_Dos,
    Total_Descuento_Dos, Total_Gastos_Dos, Total_Venta_Dos, Total_Pagado_Dos,
    Total_Pendiente_Dos, Total_Credito_Dos, Total_Contado_Dos,
    Cobros_Today_Dos, Cobros_Anter_Dos,

    Valor1000, Valor500, Valor100, Valor50, Valor20, Valor10, Valor5, Valor1,
    Valor50c, Valor25c, Valor10c, Valor5c, Valor25, ValorDOLLARES,
    ValorFormaPagoI, ValorFormaPagoE, ValorEntregar : double;

    registro : Int64;
    corteid, suc_actual : String;

    procedure Run;

    function  Validar_Cobros : Boolean;
    Function  Verifica_CuadreUsuario: String;
    Function  Verifica_CuadreSucursal_FueraL: String;
    function  Buscar_Fecha_Entrada(_entrada: String) : Boolean;
    Function  Verifica_Hold(_sucursal:String; _fecha: TDate): Boolean;
    Function  Verifica_Pagos_NoCuadre(_sucursal:String; _fecha: TDate): Boolean;
  end;

var
  frmCuadreCajaSucursal2: TfrmCuadreCajaSucursal2;

Implementation

Uses ActionsDM, DataModule, Main;

{$R *.dfm}


procedure TfrmCuadreCajaSucursal2.FormKeyDown(Sender: TObject; var Key: Word;
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


function TfrmCuadreCajaSucursal2.totalEfectivo : double;
begin
  result := 0.00;
end;


procedure TfrmCuadreCajaSucursal2.Run;
Var
 qcorte   : TADOQuery;
 Servidor : String;
begin
 SetDefaultCuadre;
 showmodal;
 if ModalResult = mrOk then
  begin
   Servidor := dm.Busca_Servidor_Fuera_Linea;
   if Servidor <> EmptyStr then
   begin
     If dm.qrParametroServidor_AS400.value <> EmptyStr then
     begin
          If dm.PingHost(Servidor,1) then
          begin
             if dm.Verifica_Pagos_Sucursal_FueraLinea(edfechacorte.Date) then
             begin
                  EtMensajeDlg('Tiene pagos sin cuadre Sucursal de fecha(s) '+Verifica_CuadreSucursal_FueraL+' de Fuera de Línea.  Verifique.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
                  Exit;
             end;
          end;
     end;
   end;
   if Verifica_Hold(LcSucursales.EditValue , edfechacorte.Date) then Exit;
   if Verifica_CuadreUsuario <> EmptyStr then
   begin
       Raise exception.CreateFmt( ' Favor verificar Usuario(s)  '+Verifica_CuadreUsuario+'  No han realizado su cuadre de Usuario. '+ #13 +
                                  ' Para proceder ellos deben efectuar su cuadre correspondiente.', []);

   end;
//   if Verifica_Pagos_NoCuadre(LcSucursales.EditValue , edfechacorte.Date) then Exit;
   if MessageDlg('Seguro Que Desea Realizar El Corte?', mtWarning, [mbYes,mbNo], 0) = mrYes then
    begin
      if Validar_Cobros then
        Begin
          DM.Info('Esta Operacion NO Podra Ser Realizada Nuevamente.!!!');

          CorteId := GetCuadreNo;
//        registro := GetSecuenciaId;         //Registrar registro dentro SP

//        Cambiar a Store Procedure Cuadre Sucursal
          If (Trim(CorteId) <> EmptyStr) then
          begin
               If Not ActCuadreSucursal Then
               begin
                 Raise exception.CreateFmt( ' NO Se Pudo Generar el Cuadre de Sucursal. '+ #13 +
                                            ' Se Ha Generado Un Error en el SP. '+ #13 +
                                            ' Por Favor, Intentelo Nuevamente.!!!', []);
               end;
          end
          else
          begin
                 Raise exception.CreateFmt( ' El Número de Cuadre de Sucursal No pudo generarse. '+ #13 +
                                            ' Se Ha Generado Un Error en el SP. '+ #13 +
                                            ' Por Favor, Intentelo Nuevamente.!!!', []);
          end;

          If dm.Verifica_Filtro_UnoDos(LcSucursales.EditValue) then
             DM.Filtro_UnoDos :=1
          else
             DM.Filtro_UnoDos :=0;

          DM.Cuadre_Imp := 'SUCURSAL';
          DM.Cobro_Var  := 'Sucursal';

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

          DM.qrCorteSucursal.Close;
          DM.qrCorteSucursal.Sql.Text :='SELECT CorteId, Usuario, SUM(Valor) AS Valor,SUM(ValorMST) AS ValorMST'+
                                        ' FROM PTCorteSucursal (nolock) '+
                                        ' WHERE CorteID = :cor '+
                                        ' GROUP BY CorteId, Usuario'+
                                        ' ORDER BY CorteId, Usuario ';
          DM.qrCorteSucursal.Parameters.ParamByName('cor').Value := CorteId;
          DM.qrCorteSucursal.Open;

          //Imprimiendo el Cuadre de Caja del Usuario.
          qcorte := DM.NewQuery;
          qcorte.Close;
          qcorte.SQL.Text := ' SELECT * FROM PTCorteCajaCab (nolock) WHERE CorteId = :cor ';
          qcorte.Parameters.ParamByName('cor').Value := CorteId;
          qcorte.Open;

          if (qcorte.RecordCount > 0) then
            Begin
              //Imprimiendo el Cuadre de Caja (GLOBAL).
              DM.ppCuadreSucursal2.DeviceType := dtScreen;
              DM.ppCuadreSucursal2.Print;

              //Imprimiendo el Deposito del Cuadre de Caja (FISCAL).
              DM.qrCobro.Close;
              DM.qrCobro.SQL.Text := ' SELECT * FROM PTCobro C (nolock) , PTEntradaPaciente E (nolock) '+
                                     ' WHERE C.refrecid = E.RecId '+
                                     ' AND E.DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
                                     ' AND C.SinPrFilter = 0 '+
                                     ' AND C.Fecha = '+#39+FormatDateTime('yyyymmdd', qcorte.FieldByName('Fecha').AsDateTime)+#39+
                                     ' AND C.SucursalId = :suc '+
                                     ' AND C.CuadreGlobal = :cdr ';
                     If dm.qrParametroServidor_AS400.value <> EmptyStr then
                        DM.qrCobro.SQL.Text :=DM.qrCobro.SQL.Text +' AND Isnull(c.Fuera_Linea,'+#39+'0'+#39+') = 0'
                     else
                        DM.qrCobro.SQL.Text :=DM.qrCobro.SQL.Text +' AND Isnull(c.Fuera_Linea,'+#39+'0'+#39+') = 1';
                     DM.qrCobro.SQL.Text :=DM.qrCobro.SQL.Text +' ORDER BY C.SucursalId, C.Fecha, C.UsuarioId, C.EntradaId, C.CobroId ';
              DM.qrCobro.Parameters.ParamByName('suc').Value := qcorte.FieldByName('SucursalId').AsString;
//              DM.qrCobro.Parameters.ParamByName('fec').Value := qcorte.FieldByName('Fecha').AsString;
              DM.qrCobro.Parameters.ParamByName('cdr').Value := qcorte.FieldByName('CorteId').AsString;
              DM.qrCobro.Open;

              DM.qrCorteDetalle.Close;
              DM.qrCorteDetalle.SQL.Text := ' SELECT CorteID, Tipo, FormadePagoId, MonedaId, '+
                                            ' SUM(Valor) AS Valor, SUM(ValorMST) AS ValorMST '+
                                            ' FROM PTCorteCajaDet (nolock) '+
                                            ' WHERE corteid = :cor And MonedaId='+#39+DM.qrParametroMonedaID.Value+#39+
                                            ' AND SinPrFilter = 0 '+
                                            ' GROUP BY CorteID, Tipo, FormadePagoId, MonedaId '+
                                            ' ORDER BY CorteID, Tipo, FormadePagoId, MonedaId ';
              DM.qrCorteDetalle.Parameters.ParamByName('cor').Value := CorteId;
              DM.qrCorteDetalle.Open;

              DM.qrCorteSucursal.Close;
              DM.qrCorteSucursal.SQL.Text := ' SELECT CorteId, Usuario, '+
                                             ' SUM(Valor) AS Valor, SUM(ValorMST) AS ValorMST '+
                                             ' FROM PTCorteSucursal (nolock) '+
                                             ' WHERE corteid = :cor '+
                                             ' AND SinPrFilter = 0 '+
                                             ' GROUP BY CorteID, Usuario '+
                                             ' ORDER BY CorteID, Usuario ';
              DM.qrCorteSucursal.Parameters.ParamByName('cor').Value := CorteId;
              DM.qrCorteSucursal.Open;

              DM.Cuadre_Imp := 'FISCAL';

              If (DM.qrCobro.RecordCount > 0) then
                begin
                  //Imprimiendo el Cuadre de Caja (FISCAL).
                  DM.ppCuadreSucursalUno.DeviceType := dtScreen;
                  DM.ppCuadreSucursalUno.Print;

                  //Imprimiendo el Deposito del Cuadre de Caja (FISCAL)
                  DM.ppImpCuadreDepositoFiscal.DeviceType := dtScreen;
                  DM.ppImpCuadreDepositoFiscal.Print;
                end;

              //Imprimiendo el Deposito del Cuadre de Caja (FILTRO).
                    DM.qrCobro.Close;
                    DM.qrCobro.SQL.Text := ' SELECT * FROM PTCobro C (nolock) Inner Join PTEntradaPaciente E (nolock) '+
                                           ' ON C.refrecid = E.RecId '+
                                           ' Where E.DataAreaId = ' + #39 + DM.CurEmpresa + #39;
                    if DM.Filtro_UnoDos = 1 then
                        DM.qrCobro.SQL.Text := DM.qrCobro.SQL.Text + ' AND C.SinPrFilter in (1,2) '
                    else
                        DM.qrCobro.SQL.Text := DM.qrCobro.SQL.Text + ' AND C.SinPrFilter = 1 ';

                     DM.qrCobro.SQL.Text := DM.qrCobro.SQL.Text +' AND C.Fecha = '+#39+FormatDateTime('yyyymmdd', qcorte.FieldByName('Fecha').AsDateTime)+#39+
                                     ' AND C.SucursalId = :suc '+
                                     ' AND C.CuadreGlobal = :cdr ';
                     If dm.qrParametroServidor_AS400.value <> EmptyStr then
                        DM.qrCobro.SQL.Text :=DM.qrCobro.SQL.Text +' AND Isnull(c.Fuera_Linea,'+#39+'0'+#39+') = 0'
                     else
                        DM.qrCobro.SQL.Text :=DM.qrCobro.SQL.Text +' AND Isnull(c.Fuera_Linea,'+#39+'0'+#39+') = 1';

                     DM.qrCobro.SQL.Text :=DM.qrCobro.SQL.Text +' ORDER BY C.SucursalId, C.Fecha, C.UsuarioId, C.EntradaId, C.CobroId ';
              DM.qrCobro.Parameters.ParamByName('suc').Value := qcorte.FieldByName('SucursalId').AsString;
//              DM.qrCobro.Parameters.ParamByName('fec').Value := qcorte.FieldByName('Fecha').AsString;
              DM.qrCobro.Parameters.ParamByName('cdr').Value := qcorte.FieldByName('CorteId').AsString;
              DM.qrCobro.Open;

              DM.qrCorteDetalle.Close;
              DM.qrCorteDetalle.SQL.Text := ' SELECT CorteID, Tipo, FormadePagoId, MonedaId, '+
                                            ' SUM(Valor) AS Valor, SUM(ValorMST) AS ValorMST '+
                                            ' FROM PTCorteCajaDet (nolock) '+
                                            ' WHERE corteid = :cor And MonedaId='+#39+DM.qrParametroMonedaID.Value+#39;
              if DM.Filtro_UnoDos = 1 then
                  DM.qrCorteDetalle.SQL.Text := DM.qrCorteDetalle.SQL.Text + ' AND SinPrFilter in (1,2) '
              else
                  DM.qrCorteDetalle.SQL.Text := DM.qrCorteDetalle.SQL.Text + ' AND SinPrFilter = 1 ';

              DM.qrCorteDetalle.SQL.Text := DM.qrCorteDetalle.SQL.Text +' GROUP BY CorteID, Tipo, FormadePagoId, MonedaId '+
                                                                        ' ORDER BY CorteID, Tipo, FormadePagoId, MonedaId ';
              DM.qrCorteDetalle.Parameters.ParamByName('cor').Value := CorteId;
              DM.qrCorteDetalle.Open;

              DM.qrCorteSucursal.Close;
              DM.qrCorteSucursal.SQL.Text := ' SELECT CorteId, Usuario, '+
                                             ' SUM(Valor) AS Valor, SUM(ValorMST) AS ValorMST '+
                                             ' FROM PTCorteSucursal (nolock) '+
                                             ' WHERE corteid = :cor ';
              if DM.Filtro_UnoDos = 1 then
                  DM.qrCorteSucursal.SQL.Text := DM.qrCorteSucursal.SQL.Text + ' AND SinPrFilter in (1,2) '
              else
                  DM.qrCorteSucursal.SQL.Text := DM.qrCorteSucursal.SQL.Text + ' AND SinPrFilter = 1 ';

              DM.qrCorteSucursal.SQL.Text := DM.qrCorteSucursal.SQL.Text +' GROUP BY CorteID, Usuario '+
                                                                        ' ORDER BY CorteID, Usuario ';
              DM.qrCorteSucursal.Parameters.ParamByName('cor').Value := CorteId;
              DM.qrCorteSucursal.Open;

              DM.Cuadre_Imp := 'FILTRO';

              If (DM.qrCobro.RecordCount > 0) then
                begin
                  //Imprimiendo el Cuadre de Caja (FILTRO).
                  DM.ppCuadreSucursalDos.DeviceType := dtScreen;
                  DM.ppCuadreSucursalDos.Print;

                  //Imprimiendo el Deposito del Cuadre de Caja (FILTRO).
                  DM.ppImpCuadreDepositoFiltro.DeviceType := dtScreen;
                  DM.ppImpCuadreDepositoFiltro.Print;
                end;

             If DM.Filtro_UnoDos = 0 then
             begin
              //Imprimiendo el Deposito del Cuadre de Caja (FILTRO DOS).
              DM.qrCobro.Close;
              DM.qrCobro.SQL.Text := ' SELECT * FROM PTCobro C (nolock) Inner Join PTEntradaPaciente E (nolock) '+
                                     ' ON C.refrecid = E.RecId '+
                                     ' WHERE E.DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
                                     ' AND C.SinPrFilter = 2 '+
                                     ' AND C.Fecha = '+#39+FormatDateTime('yyyymmdd', qcorte.FieldByName('Fecha').AsDateTime)+#39+
                                     ' AND C.SucursalId = :suc '+
                                     ' AND C.CuadreGlobal = :cdr ';
                     If dm.qrParametroServidor_AS400.value <> EmptyStr then
                        DM.qrCobro.SQL.Text :=DM.qrCobro.SQL.Text +' AND Isnull(c.Fuera_Linea,'+#39+'0'+#39+') = 0'
                     else
                        DM.qrCobro.SQL.Text :=DM.qrCobro.SQL.Text +' AND Isnull(c.Fuera_Linea,'+#39+'0'+#39+') = 1';
                    DM.qrCobro.SQL.Text :=DM.qrCobro.SQL.Text +' ORDER BY C.SucursalId, C.Fecha, C.UsuarioId, C.EntradaId, C.CobroId ';
              DM.qrCobro.Parameters.ParamByName('suc').Value := qcorte.FieldByName('SucursalId').AsString;
//              DM.qrCobro.Parameters.ParamByName('fec').Value := qcorte.FieldByName('Fecha').AsString;
              DM.qrCobro.Parameters.ParamByName('cdr').Value := qcorte.FieldByName('CorteId').AsString;
              DM.qrCobro.Open;

              DM.qrCorteDetalle.Close;
              DM.qrCorteDetalle.SQL.Text := ' SELECT CorteID, Tipo, FormadePagoId, MonedaId, '+
                                            ' SUM(Valor) AS Valor, SUM(ValorMST) AS ValorMST '+
                                            ' FROM PTCorteCajaDet (nolock) '+
                                            ' WHERE corteid = :cor And MonedaId='+#39+DM.qrParametroMonedaID.Value+#39+
                                            ' AND SinPrFilter = 2 '+
                                            ' GROUP BY CorteID, Tipo, FormadePagoId, MonedaId '+
                                            ' ORDER BY CorteID, Tipo, FormadePagoId, MonedaId ';
              DM.qrCorteDetalle.Parameters.ParamByName('cor').Value := CorteId;
              DM.qrCorteDetalle.Open;

              DM.qrCorteSucursal.Close;
              DM.qrCorteSucursal.SQL.Text := ' SELECT CorteId, Usuario, '+
                                             ' SUM(Valor) AS Valor, SUM(ValorMST) AS ValorMST '+
                                             ' FROM PTCorteSucursal (nolock) '+
                                             ' WHERE corteid = :cor '+
                                             ' AND SinPrFilter = 2 '+
                                             ' GROUP BY CorteID, Usuario '+
                                             ' ORDER BY CorteID, Usuario ';
              DM.qrCorteSucursal.Parameters.ParamByName('cor').Value := CorteId;
              DM.qrCorteSucursal.Open;

              DM.Cuadre_Imp := 'FILTRO_DOS';

              If (DM.qrCobro.RecordCount > 0) then
                begin
                  //Imprimiendo el Cuadre de Caja (FILTRO).
                  DM.ppCuadreSucursalTres.DeviceType := dtScreen;
                  DM.ppCuadreSucursalTres.Print;

                  //Imprimiendo el Deposito del Cuadre de Caja (FILTRO).
                  DM.ppImpCuadreDepositoFiltroDos.DeviceType := dtScreen;
                  DM.ppImpCuadreDepositoFiltroDos.Print;
                end;

             end;
              //Imprimiendo el Reporte de Pagos Desglosados por Paciente - Forma de Pago.
              DM.qrCobro.Close;
              DM.qrCobro.SQL.Text := ' SELECT * FROM PTCobro C (nolock) Inner Join PTEntradaPaciente E (nolock) '+
                                     ' ON C.refrecid = E.RecId '+
                                     ' WHERE E.DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
                                     ' AND C.Fecha = '+#39+FormatDateTime('yyyymmdd', qcorte.FieldByName('Fecha').AsDateTime)+#39+
                                     ' AND C.SucursalId = :suc '+
                                     ' AND C.CuadreGlobal = :cdr ';
                     If dm.qrParametroServidor_AS400.value <> EmptyStr then
                        DM.qrCobro.SQL.Text :=DM.qrCobro.SQL.Text +' AND Isnull(c.Fuera_Linea,'+#39+'0'+#39+') = 0'
                     else
                        DM.qrCobro.SQL.Text :=DM.qrCobro.SQL.Text +' AND Isnull(c.Fuera_Linea,'+#39+'0'+#39+') = 1';

                      DM.qrCobro.SQL.Text :=DM.qrCobro.SQL.Text +' ORDER BY C.SucursalId, C.Fecha, C.EntradaId, C.CobroId ';
              DM.qrCobro.Parameters.ParamByName('suc').Value := qcorte.FieldByName('SucursalId').AsString;
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
              DM.qrEntradaCabRep.SQL.Text := ' SELECT * FROM PTEntradaPaciente (nolock) WHERE SucursalId = :suc '+
                                             ' AND (Neto - TotalPagado) > 0.99 '+
                                             ' AND FormadePago <> :pag '+
                                             ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
                                             ' AND Origen <>'+#39+DM.qrParametroGrupoLab.Value+#39+
                                             ' AND Substring(EntradaID,1,3)<>'+#39+'HOL'+#39+
                                             ' AND Estatus ='+#39+'0'+#39+
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
    end
  Else
    DM.Info('La Operacion Fue Abortada por el Usuario.!!!');
//    DM.Info('Sucursal Actual (' + suc_actual + ').!!!');
  end;
end;


procedure TfrmCuadreCajaSucursal2.SetDefaultCuadre;
begin
//  edTotalEfectivo.Value := 0;
  rgTipoCorte.ItemIndex := 0;
  edfechacorte.Date := DM.Buscar_Fecha_Actual;
end;


function TfrmCuadreCajaSucursal2.GetCuadreNo : String;
Var
 _valor   : String;
 numero   : Int64;
 qsecdoc  : TADOQuery;
begin
 _valor  := '';
 numero  := 0;
 qsecdoc := DM.NewQuery;
 With qsecdoc,sql do
 begin
   Close;
   Clear;
   Add(' DECLARE	@return_value int,@r_result bigint,@r_result2 bigint,@r_result3 bit');
   Add(' EXEC	@return_value = [dbo].[Sec_Documentos] ');
   Add(' @Tipo_Doc = N'+#39+'CC'+#39+',');
   Add(' @SucursalID = N'+#39+suc_actual +#39+',');
   Add(' @r_result = @r_result OUTPUT, ');
   Add(' @r_result2 = @r_result2 OUTPUT, ');
   Add(' @r_result3 = @r_result3 OUTPUT ');
   Add(' SELECT	@r_result as Secuencia,@r_result2 as SucursalAS400,@r_result3 as UsarIdentificador');
   Open;
   if not IsEmpty then
   begin
     if FieldByName('Secuencia').AsString <> '' then
       numero := StrtoInt64(FieldByName('Secuencia').AsString)
     else
       numero := 1;

     _valor := FormatFloat('000', FieldByName('SucursalAS400').AsInteger) +
               FormatFloat('00000000', numero);

     If (FieldByName('UsarIdentificador').AsBoolean) then
       Result := 'CC'+ '-' + suc_actual + '-' + _valor
     Else
       Result := suc_actual + '-' + _valor;
   end;
 end;
 FreeAndNil(qsecdoc);
end;


function TfrmCuadreCajaSucursal2.GetSecuenciaId : Int64;
Var
 _valor   : String;
 numero   : Int64;
 qsecdoc  : TADOQuery;
begin
 _valor  := '';
 numero  := 0;
 qsecdoc := DM.NewQuery;
 With qsecdoc,sql do
 begin
   Close;
   Clear;
   Add(' DECLARE	@return_value int,@r_result bigint,@r_result2 bigint,@r_result3 bit');
   Add(' EXEC	@return_value = [dbo].[Sec_Documentos] ');
   Add(' @Tipo_Doc = N'+#39+'SEDOC'+#39+',');
   Add(' @SucursalID = N'+#39+suc_actual +#39+',');
   Add(' @r_result = @r_result OUTPUT, ');
   Add(' @r_result2 = @r_result2 OUTPUT, ');
   Add(' @r_result3 = @r_result3 OUTPUT ');
   Add(' SELECT	@r_result as Secuencia,@r_result2 as SucursalAS400');
   Open;
   if not IsEmpty then
   begin
     if FieldByName('Secuencia').AsString <> '' then
       numero := StrToInt64(FieldByName('Secuencia').AsString)
     else
       numero := 1;

     _valor := FormatFloat('000', FieldByName('SucursalAS400').AsInteger) +
               FormatFloat('000000000000', numero);
   end;

 end;
 Result := StrToInt(_valor);
 FreeAndNil(qsecdoc);
end;

function TfrmCuadreCajaSucursal2.Validar_Cobros : Boolean;
Var
 Sql : String;
 qbuscar: TADOQuery;
begin
 Sql := ' SELECT * FROM PTCobro B (nolock), PTCobroDetalle C (nolock)'+
        ' WHERE B.cobroid = C.cobroid '+
        ' AND B.SucursalId = :suc '+
        ' AND B.fecha ='+#39+FormatDateTime('yyyymmdd', edfechacorte.Date)+#39+
        ' AND Isnull(B.CuadreGlobal,'+ #39#39+')='+#39#39;
       If dm.qrParametroServidor_AS400.value <> EmptyStr then
          Sql :=Sql +' AND Isnull(b.Fuera_Linea,'+#39+'0'+#39+') = 0'
       else
          Sql :=Sql +' AND Isnull(b.Fuera_Linea,'+#39+'0'+#39+') = 1';
       Sql :=Sql +' ORDER BY B.CobroId ';

 qbuscar := DM.NewQuery;
 qbuscar.Close;
 qbuscar.SQL.Text := Sql;
// qbuscar.Parameters.ParamByName('fec').Value := edfechacorte.Date;
 qbuscar.Parameters.ParamByName('suc').Value := suc_actual; //DM.CurSucursal;
 qbuscar.Open;

 If (qbuscar.RecordCount > 0) Then
   Result := True
 Else
   Result := False;

 FreeAndNil(qbuscar);
End;

procedure TfrmCuadreCajaSucursal2.Actu_Cabecera(_entrada: String; _cuadre: String);
begin
  qrEntradaPaciente.Close;
  qrEntradaPaciente.parameters[0].Value := _entrada;
  qrEntradaPaciente.Open;
  qrEntradaPaciente.First;
  While Not qrEntradaPaciente.Eof Do
   Begin
    qrEntradaPaciente.Edit;
    qrEntradaPacienteCUADREGLOBAL.Value := _cuadre;
    Actu_Detalle(qrEntradaPacienteRECID.Value, _cuadre);
    qrEntradaPaciente.Post;
    qrEntradaPaciente.Next;
   End;
end;


procedure TfrmCuadreCajaSucursal2.Actu_Detalle(_registro: Int64; _cuadre: String);
begin
  qrEntradaPacienteDetalle.Close;
  qrEntradaPacienteDetalle.parameters[0].Value := _registro;
  qrEntradaPacienteDetalle.Open;

  qrEntradaPacienteDetalle.First;

  While Not qrEntradaPacienteDetalle.Eof Do
   Begin
     qrEntradaPacienteDetalle.Edit;
     qrEntradaPacienteDetalleCUADREGLOBAL.Value := _cuadre;
     qrEntradaPacienteDetalle.Post;
     qrEntradaPacienteDetalle.Next;
   End;
end;


function TfrmCuadreCajaSucursal2.Buscar_Fecha_Entrada(_entrada: String) : Boolean;
begin
  qrEntradaPaciente.Close;
  qrEntradaPaciente.parameters[0].Value := _entrada;
  qrEntradaPaciente.Open;

  If (qrEntradaPacienteFECHA.Value = edfechacorte.Date) Then
   Result := True
  Else
   Result := False;
End;


procedure TfrmCuadreCajaSucursal2.FormCreate(Sender: TObject);
begin
  if not DM.qrSucursal.Active then
    DM.qrSucursal.Open;

  if DM.CurSucursal <> '' then
    LcSucursales.EditText := DM.CurSucursal
  else
    LcSucursales.EditText := DM.qrSucursal.FieldByName('Nombre').Text;

  suc_actual := DM.CurSucursal;
end;


procedure TfrmCuadreCajaSucursal2.LcSucursalesPropertiesChange(Sender: TObject);
begin
  DM.qrSucursal.locate('Nombre', LcSucursales.text, []);
  suc_actual := DM.qrSucursal.FieldByName('SucursalID').AsString;
end;

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

Function TfrmCuadreCajaSucursal2.Verifica_Hold(_sucursal:String; _fecha: TDate): Boolean;
var
 qfind : TADOQuery;
 Muestra : String;
begin
   qfind := DM.NewQuery;
   result := False;
   qfind.Close;
   qfind.SQL.Text := ' SELECT Muestrano,NombrePaciente FROM PTEntradaPaciente (nolock) '+
                     ' WHERE fecha = '+#39+FormatDateTime('yyyymmdd', _fecha)+#39+
                     ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
                     ' AND Substring(EntradaID,1,3)<>'+#39+'HOL'+#39+
                     ' AND SucursalID = :suc '+
                     ' AND Hold = 1 ';
//   qfind.Parameters.ParamByName('fec').Value := _fecha;
   qfind.Parameters.ParamByName('suc').Value := _sucursal;
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
Function TfrmCuadreCajaSucursal2.Verifica_Pagos_NoCuadre(_sucursal:String; _fecha: TDate): Boolean;
var
 qfind : TADOQuery;
 Muestra : String;
begin
   qfind := DM.NewQuery;
   result := False;
   qfind.Close;
   qfind.SQL.Text := ' SELECT c.Fecha,e.Muestrano,e.NombrePaciente,c.UsuarioId FROM ptEntradaPaciente e (nolock), ptCobro c (nolock)'+
                     ' WHERE c.fecha < '+#39+FormatDateTime('yyyymmdd', _fecha)+#39+
                     ' and e.recid=c.refrecid '+
                     ' AND e.DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
                     ' AND c.SucursalID = :suc '+
                     ' AND (c.CuadreGlobal IS NULL OR c.CuadreGlobal = '+ #39#39 + ')'+
                     ' AND c.TipoDoc='+#39+'RI'+#39;
                     If dm.qrParametroServidor_AS400.value <> EmptyStr then
                        qfind.SQL.Text :=qfind.SQL.Text +' AND Isnull(c.Fuera_Linea,'+#39+'0'+#39+') = 0'
                     else
                        qfind.SQL.Text :=qfind.SQL.Text +' AND Isnull(c.Fuera_Linea,'+#39+'0'+#39+') = 1';
//   qfind.Parameters.ParamByName('fec').Value := _fecha;
   qfind.Parameters.ParamByName('suc').Value := _sucursal;
   qfind.Open;
   If (qfind.RecordCount > 0) Then
   begin
     qfind.First;
     While Not qfind.Eof Do
     Begin
       Muestra := Muestra+' '+qfind.FieldByName('Fecha').AsString+' '+qfind.FieldByName('Muestrano').AsString+' '+qfind.FieldByName('NombrePaciente').AsString+' '+qfind.FieldByName('UsuarioID').AsString+#13;
       qfind.Next
     end;
     if Trim(Muestra) <> '' then
     begin
        EtMensajeDlg('Recuerde ENTRADA(S) NO estan en Cuadre de Sucursal. Favor Contacte con Cobros.'+#13+#10+Muestra, etAviso, [etOk],0, dm.Imagenes.Items[6].Bitmap,true);
        result := True;
     end;
   end;
   FreeAndNil(qfind);
end;
Function TfrmCuadreCajaSucursal2.Verifica_CuadreUsuario: String;
var
 qfind : TADOQuery;
 UsuarioID : String;
 i         : Integer;
begin
   qfind := DM.NewQuery;
   result := EmptyStr;
   qfind.Close;
   qfind.SQL.Text := ' SELECT Distinct c.UsuarioID From ptEntradaPaciente e (nolock), ptCobro c (nolock) '+
                     ' WHERE c.fecha = '+#39+FormatDateTime('yyyymmdd', edfechacorte.Date)+#39+
                     ' and e.recid=c.refrecid '+
                     ' AND e.DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
                     ' AND c.SucursalID = :suc '+
                     ' AND Isnull(c.CuadreUsuario,'+ #39#39+')='+ #39#39+
                     ' AND c.TipoDoc in ('+#39+'RI'+#39+','+#39+'DV'+#39+')';
                     If dm.qrParametroServidor_AS400.value <> EmptyStr then
                        qfind.SQL.Text :=qfind.SQL.Text +' AND Isnull(c.Fuera_Linea,'+#39+'0'+#39+') = 0'
                     else
                        qfind.SQL.Text :=qfind.SQL.Text +' AND Isnull(c.Fuera_Linea,'+#39+'0'+#39+') = 1';
//   qfind.Parameters.ParamByName('fec').Value := edfechacorte.Date;
   qfind.Parameters.ParamByName('suc').Value := LcSucursales.EditValue;
   qfind.Open;
   If (qfind.RecordCount > 0) Then
   begin
     qfind.First;
     i:=0;
     While Not qfind.Eof Do
     Begin
        i:=i+1;
        if i = 1 then
          UsuarioID := qfind.FieldByName('UsuarioID').AsString
        else
          UsuarioID := UsuarioID+', '+qfind.FieldByName('UsuarioID').AsString;
        qfind.Next
     end;
     if Trim(UsuarioID) <> EmptyStr then
        result := UsuarioID
      else
        result := EmptyStr;
   end;
   FreeAndNil(qfind);
end;
Function TfrmCuadreCajaSucursal2.Verifica_CuadreSucursal_FueraL: String;
var
 qfind : TADOQuery;
 Fecha : String;
 i         : Integer;
begin
   qfind := DM.NewQuery;
   result := EmptyStr;
   qfind.Close;
   qfind.SQL.Text := ' SELECT Distinct c.Fecha From ptEntradaPaciente e (nolock), ptCobro c (nolock) '+
                     ' WHERE c.fecha < '+#39+FormatDateTime('yyyymmdd', edfechacorte.Date)+#39+
                     ' and e.recid=c.refrecid '+
                     ' AND e.DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
                     ' AND c.SucursalID = :suc '+
                     ' AND Isnull(c.CuadreGlobal,'+ #39#39+')='+ #39#39+
                     ' AND c.TipoDoc in ('+#39+'RI'+#39+','+#39+'DV'+#39+')'+
                     ' AND Isnull(c.Fuera_Linea,'+#39+'0'+#39+') = 1';
   qfind.Parameters.ParamByName('suc').Value := LcSucursales.EditValue;
   qfind.Open;
   If (qfind.RecordCount > 0) Then
   begin
     qfind.First;
     i:=0;
     While Not qfind.Eof Do
     Begin
        i:=i+1;
        if i = 1 then
          Fecha := formatdatetime('dd/mm/yyyy',qfind.FieldByName('Fecha').AsDatetime)
        else
          Fecha := Fecha+', '+formatdatetime('dd/mm/yyyy',qfind.FieldByName('Fecha').AsDatetime);
        qfind.Next
     end;
     if Trim(Fecha) <> EmptyStr then
        result := Fecha
      else
        result := EmptyStr;
   end;
   FreeAndNil(qfind);
end;

function TfrmCuadreCajaSucursal2.ActCuadreSucursal : Boolean;
begin
Result := False;
Try
  with  dm.sp_ActCuadreSucursal, Parameters do
  begin
    ParamByName('@CorteID').Value     := CorteId;
    ParamByName('@SucursalID').Value  := LcSucursales.EditValue;
    ParamByName('@FechaCorte').Value  := FormatDateTime('yyyymmdd', edFechaCorte.Date);
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

