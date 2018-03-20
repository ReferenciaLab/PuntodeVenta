unit ActPlanSAut;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, dxLayoutControl, StdCtrls, cxButtons,
  cxCurrencyEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, ADODB, DB,
  cxContainer, cxEdit, cxGroupBox, cxRadioGroup, cxControls, pptypes, ppReport,
  ppCtrls, ppBands, ppClass, ppVar, ppPrnabl, ppCache, ppComm, ppRelatv, ppProd,
  cxGraphics, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,StrUtils,dlgMensajes;

type
  TfrmProcesosActPlanS = class(TForm)
    dxLayoutControl3: TdxLayoutControl;
    edfechadesde: TcxDateEdit;
    btaceptarcuadre: TcxButton;
    btcancelarcuadre: TcxButton;
    dxLayoutGroup2: TdxLayoutGroup;
    GroupParametros: TdxLayoutGroup;
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
    qrEntradaPacienteENTRADAID_REF: TStringField;
    qrEntradaPacienteFECHANACIMIENTO: TDateTimeField;
    qrEntradaPacienteCOD_CASO: TStringField;
    qrEntradaPacienteSTNOTAC: TStringField;
    qrEntradaPacienteUSRNOTAC: TStringField;
    qrEntradaPacienteCOD_DIAG: TStringField;
    qrEntradaPacienteDetalleNCR_ESTATUS: TBooleanField;
    qrEntradaPacienteRECID: TLargeintField;
    qrEntradaPacienteDetalleREFRECID: TLargeintField;
    qrEntradaPacienteDetalleREFRECID_POS: TLargeintField;
    qrEntradaPacienteDetalleRECID: TLargeintField;
    qrEntradaPacienteCOD_AREA: TStringField;
    edfechacorte: TcxDateEdit;
    dxLayoutControl3Item1: TdxLayoutItem;
    procedure btaceptarcuadreClick(Sender: TObject);
    procedure qrEntradaPacienteDetalleBeforeInsert(DataSet: TDataSet);
    procedure qrEntradaPacienteDetalleBeforeEdit(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Buscar_Ordenes_TELEFONOS;
    procedure Insertar_Usuario_New(usuario: string; clave: string; name: string; cedula: string;
                                              cliente: string; tipo: string; actual: string);
    procedure Procesar_Usuario_New;
    procedure Buscar_Paciente;
    Procedure Buscar_Grupo_Pac(Grupo: string);
    procedure Confirmar_Precio_Prueba;
    procedure ActTotales;
    procedure ActDetalle;
    procedure Buscar_Cliente;
    procedure Buscar_Grupo_Clt(Grupo: string);
    procedure Buscar_Combo;
    procedure Insertar_Combo_Blanco;
    procedure Insertar_Combo_Precio;
    procedure Actu_Precio_Combo;
    procedure Buscar_Cod_Cups(cliente: String; prueba: String);
    Function  TotalDescuentoLinea : Currency;
    Function  Crear_Clave(cedularnc : String) : Integer;
    Function  Crear_Usuario(nombre : String) : String;
    Function  Buscar_User_Internet(_customer : String) : Boolean;
    Function  CalcularCoberturaAplicada : Currency;
    Function  ImporteBrutoExclLineaActual(refrecid : int64; secuencia : integer) : Currency;
    Function  ImporteBrutoExclLineaActualAplica(refrecid : int64 ;secuencia : integer) : Currency;
    Function Retorna_Paciente_Clave_Internet(ClienteID : String) : String;
  private
    { Private declarations }
    qfindCltParams        : TADOQuery;
    qfindcombo            : TADOQuery;
    ClienteFactura        : String;
    ClienteFact           : String;
    qfindGrupoClt         : TADOQuery;
    qfindcodcup           : TADOQuery;
    qpruebadesc           : TADOQuery;
    factor                : Integer;
    _recorId              : Integer;
    curCoberturaAplicada  : Integer;
    precio_combo          : Currency;
    comboprecio           : Boolean;
    combodescto           : Integer;
    GrupoPrecio           : String;
    GrupoCliente          : String;
  public
    { Public declarations }

    procedure Run;
    Procedure Buscar_Orden;
    function GetSecuenciaId : Int64;

    Var qfindPacientes,qfindGrupoPac,qFindEntrada       : TADOQuery;
  end;

var
  frmProcesosActPlanS: TfrmProcesosActPlanS;

Implementation

Uses ActionsDM, DataModule, Main,UInterfaseAs400;

{$R *.dfm}


procedure TfrmProcesosActPlanS.FormKeyDown(Sender: TObject; var Key: Word;
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


procedure TfrmProcesosActPlanS.FormShow(Sender: TObject);
begin
  DM.qrParametro.close;
  DM.qrParametro.open;
  If dm.qrParametroServidor_AS400.value <> EmptyStr then
  begin
        If Not dm.PingHost(dm.qrParametroServidor_AS400.value,1) then
        begin
           ShowMessage('Servidor de As400 a�n no est� disponible.');
           Exit;
        end;
  end;
end;

procedure TfrmProcesosActPlanS.Run;
begin
 showmodal;
 if ModalResult = mrOk then
  begin
      if edfechadesde.Text=EmptyStr then
      begin
        ShowMessage('Fecha Inicio No debe estar en blanco.');
        exit;
      end;
      if edfechacorte.Text=EmptyStr then
      begin
        ShowMessage('Fecha Hasta No debe estar en blanco.');
        exit;
      end;
      Buscar_Orden;
  end;
end;


procedure TfrmProcesosActPlanS.Buscar_Orden;
Var Tipo : String;
begin
// Buscar_Ordenes_Telefonos;
 Try
 With qrEntradaPaciente,sql do
 begin
    Close;
    Clear;
    Text := ' SELECT * FROM ptEntradapaciente Where Fecha between '+#39+FormatDateTime('yyyymmdd', edFechadesde.date)+#39+' And '+#39+FormatDateTime('yyyymmdd', edFechadesde.date)+#39+' And Origen='+#39+'02'+#39+
            ' And (Neto - TotalPagado) <> 0 And DataAreaID='+#39+DM.CurEmpresa+#39+
            ' ORDER BY SucursalId, Muestrano ';

{
    Text := ' SELECT * FROM ptEntradapaciente Where Fecha between '+#39+FormatDateTime('yyyymmdd', edFechadesde.date)+#39+' And '+#39+FormatDateTime('yyyymmdd', edfechacorte.date)+#39+
            ' AND CLIENTEID='+#39+'C00981'+#39;
}
    Open;
    if Not isEmpty then
    begin
         First;
         While Not Eof Do
         Begin
            qrEntradapacienteDetalle.Close;
            qrEntradapacienteDetalle.SQL.Clear;
            qrEntradapacienteDetalle.sql.Text := ' SELECT * FROM ptEntradapacienteDetalle Where Refrecid='+IntToStr(qrEntradaPacienteRecID.Value)+
            ' And DataAreaID='+#39+DM.CurEmpresa+#39+' ORDER BY PruebaID ';
            qrEntradapacienteDetalle.Open;
            if not qrEntradaPacienteDetalle.isEmpty then
            begin
{
                         qrentradapacienteDetalle.Insert;
                         qrentradapacienteDetallePruebaID.Value       := 'SER00927';
                         qrEntradaPacienteDetalleDESCRIPCION.Value    := 'ANTI-T PALLIDUM';
                         qrEntradaPacienteDetalleMUESTRAANT.Value     := '0';
                         qrEntradaPacienteDetalleRefrecID.Value       := qrentradapacienteRecID.Value;
                         qrEntradaPacienteDetalleSECUENCIA.Value      := 11;
                         qrEntradaPacienteDetalleUnidadMuestra.Value  := 'UND';
                         qrEntradaPacienteDetallePrecio.Value         := 210.00;
                         qrEntradaPacienteDetalleTotalLinea.Value     := 210.00;
                         qrEntradaPacienteDetalleTipoPrueba.Value     :='P';
                         qrEntradaPacienteDetalleCODIGOAS400.Value    :='1251';
                         qrEntradaPacienteDetalleMuestrano.Value      :=qrentradapacienteMuestrano.Value;
                         qrEntradaPacienteDetalleEstatus.Value        :='0';
                         qrEntradaPacienteDetalleCuadrado.Value       :=1;
                         qrEntradaPacienteDetallePasarAxapta.Value    :=1;
                         qrEntradaPacienteDetalleCuadreGlobal.Value   :='CA';
                         qrEntradaPacienteDetalleCuadreUsuario.Value  :='CA';
                         qrEntradaPacienteDetalleLDRDEPARTAMENTOID.Value :='71';
                         qrEntradaPacienteDetalleMuestrano_Pos.Value  :=qrentradapacienteMuestrano.Value;
                         qrEntradaPacienteDetalleDataAreaID.Value     :='ldr';
                         qrEntradaPacienteDetalleRecID.Value          :=GetSecuenciaId;
                         qrEntradaPacienteDetalle.Post;

                         qrentradapaciente.Edit;
                         qrentradapacienteBruto.value           := qrentradapacienteBruto.value+210.00 ;
                         qrentradapacienteSubTotal.value        := qrentradapacienteSubTotal.value+210.00 ;
                         qrentradapacienteNETO.value            := qrentradapacienteNETO.value+210.00 ;
                         qrEntradaPaciente.Post;
}
// cambiar

                         qrentradapaciente.Edit;
                         qrentradapacienteOrigen.value         := Dm.qrParametroGrupoPriv.value ;
                         qrentradapacienteClienteid.value      := qrentradapacientePacienteId.value ;
                         qrentradapacienteClienteNombre.value  := qrEntradaPacienteNOMBREPACIENTE.value ;
                         qrEntradaPacienteFORMADEPAGO.Value    := 'EFE' ;
                         factor                                   := 1;
                         Confirmar_Precio_Prueba;
                         ActDetalle;
                         ActTotales;
                         qrEntradaPaciente.Post;
//Fin cambiar
{
           If ((qrEntradaPacientePublicarInternet.Value = 1) OR (qrEntradaPacientePublicarInternet.Value = 0))
               and (not((qrEntradaPacientePacienteId.Value ='00029127') or (qrEntradaPacientePacienteId.Value ='00008805') or
                       (qrEntradaPacientePacienteId.Value ='00018822') or (qrEntradaPacientePacienteId.Value ='00029448') or
                       (qrEntradaPacientePacienteId.Value ='00006242')or (qrEntradaPacientePacienteId.Value ='01047251'))) Then
             Begin
              If (Dm.GetDigitoVerificador(copy(DM.Cortar_Char('-', qfindPacientes.FieldByName('Identificacion').AsString),1,11),qfindPacientes.FieldByName('Tipo_Documento').AsString)) Then
              begin
                 If Not Buscar_User_Internet(qrEntradaPacientePacienteId.Value) Then
                 Begin
                       If dm.qrParametroServidor_AS400.value <> EmptyStr then
                       begin
                            If dm.PingHost(dm.qrParametroServidor_AS400.value,1) then
                            begin
                             InterfaseAS400.Buscar_Cedula_Internet(qfindPacientes.FieldByName('Identificacion').AsString,qrEntradaPacienteMuestrano.AsString,qfindPacientes.FieldByName('Tipo_Documento').AsString);
                             If (InterfaseAS400.User_Internet_AS400 <> '') And (InterfaseAS400.Clave_Internet_AS400 <> '') Then
                             Begin
                                If (qfindPacientes.FieldByName('GrupoCliente').AsString = DM.qrParametroGrupoAcc.Value) Or
                                   (qfindPacientes.FieldByName('GrupoCliente').AsString = DM.qrParametroGrupoEmp.Value) Or
                                   (qfindPacientes.FieldByName('GrupoCliente').AsString = DM.qrParametroGrupoVip.Value) Or
                                   (qfindPacientes.FieldByName('GrupoCliente').AsString = DM.qrParametroGrupoPriv.Value) Then
                                    Tipo := 'P'
                                Else
                                    Tipo := 'C';

                                If Not Dm.Verifica_Clave_Internet(Trim(InterfaseAS400.Clave_Internet_AS400)) then
                                begin
                                     If Not((Trim(InterfaseAS400.User_Internet_AS400)=EmptyStr) Or (Trim(InterfaseAS400.Clave_Internet_AS400)=EmptyStr) Or
                                            (Trim(qfindPacientes.FieldByName('Nombre').AsString)=EmptyStr) Or (Trim(qfindPacientes.FieldByName('Identificacion').AsString)=EmptyStr) Or
                                            (Trim(qrEntradaPacientePacienteId.Value)=EmptyStr))then
                                     begin
                                            Insertar_Usuario_New(Trim(InterfaseAS400.User_Internet_AS400),
                                                          FormatFloat('000000', StrToInt(Trim(InterfaseAS400.Clave_Internet_AS400))),
                                                          qfindPacientes.FieldByName('Nombre').AsString,
                                                          qfindPacientes.FieldByName('Identificacion').AsString,
                                                          qrEntradaPacientePacienteId.Value, Tipo, 'N');
//                                            if (qrEntradaPacientePublicarInternet.Value = 1) And (Imp_Internet='S') then InstructivodeInternet1Click(nil);
                                     End;
                                end;
                             end
//                             Else
//                             begin
//                                If Trim(qfindPacientes.FieldByName('Identificacion').AsString)<>EmptyStr then
//                                begin
//                                  Procesar_Usuario_New;
//                                  If qrEntradaPacientePublicarInternet.Value = 1 then InstructivodeInternet1Click(nil);
//                                end;
//                             end;
                          end;
                       end;
                   end;
                   //Imprimiendo el Instructivo de Internet Generado.
//                   if (qrEntradaPacientePublicarInternet.Value = 1) And (Tipo='N') then InstructivodeInternet1Click(nil);
                 end
                 Else
                   if qrEntradaPacientePublicarInternet.Value = 1 then
                      EtMensajeDlg('N�mero de c�dula no v�lido.  No podr� generar clave de internet.', etError, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
             end;
 }

                If (qrEntradaPacienteFROM_CLINICA.Value <> 1) then
                Begin
                   If dm.qrParametroServidor_AS400.value <> EmptyStr then
                   begin
                        If dm.PingHost(dm.qrParametroServidor_AS400.value,1) then
                        begin
                           Try
                             InterfaseAS400.ASConnection.Close;
                             InterfaseAS400.ASConnection.Open;

                             //Insertando las Pruebas en el AS-400.
                             InterfaseAS400.MandarPruebaAS400(qrEntradaPacienteMuestraNo.Value, ifThen(Retorna_Paciente_Clave_Internet(qrEntradaPacientePacienteID.Value) <> EmptyStr,Retorna_Paciente_Clave_Internet(qrEntradaPacientePacienteID.Value),qrEntradaPacientePacienteID.Value));
                             InterfaseAS400.ASConnection.Close;
                           Except
                             Raise exception.CreateFmt(' Existe un Problema de Comunicacion Con el Servidor AS-400. '+ #13 +
                                                       ' Por Favor, LLame al Departamento de Computos. '+ #13 +
                                                       ' � Intentelo Nuevamente.!!!', []);
                           End;
                        end;
                   end;
                End;
///
               end;
            Next;
         end;
    end;
 end;
 Except
     Raise exception.CreateFmt('Error En Entrada='+qrEntradaPacienteMuestrano.AsString, []);
 End;
  DM.Info('Fin Proceso Actualizaci�n Plan Social a Privado.');
end;

Function TfrmProcesosActPlanS.Buscar_User_Internet(_customer : String) : Boolean;
Var
 qinter  : TAdoQuery;
begin
  qinter := DM.NewQuery;
  qinter.Close;
  qinter.SQL.Text := ' SELECT * FROM PTUsuariosInternet '+
                     ' WHERE ClienteId = ' + #39 + _customer + #39 +
                     ' AND Tipo = ' + #39 + 'P' + #39 +
                     ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39;
  qinter.Open;

  if (qinter.RecordCount > 0) then
    result := True
  else
    result := False;
  FreeAndNil(qinter);
end;
procedure TfrmProcesosActPlanS.Insertar_Usuario_New(usuario: string; clave: string; name: string; cedula: string;
                                              cliente: string; tipo: string; actual: string);
var
 qinsert : TADOQuery;
begin
     qinsert := DM.NewQuery;
     qinsert.Close;
     qinsert.SQL.Text := ' INSERT INTO PTUsuariosInternet(UsuarioInternet, ClaveInternet, Nombre, Identificacion, '+
                         ' ClienteId, Tipo, Actualizado, DataAreaId, RecId) VALUES (:0,:1,:2,:3,:4,:5,:6,:7,:8)';
     qinsert.Parameters[0].Value := usuario;
     qinsert.Parameters[1].Value := clave;
     qinsert.Parameters[2].Value := name;
     qinsert.Parameters[3].Value := cedula;
     qinsert.Parameters[4].Value := cliente;
     qinsert.Parameters[5].Value := tipo;
     qinsert.Parameters[6].Value := 'N';
     qinsert.Parameters[7].Value := qrEntradaPacienteDATAAREAID.Value;
     qinsert.Parameters[8].Value := qrEntradaPacienteRECID.Value;
     qinsert.ExecSQL;
     FreeAndNil(qinsert);
end;
procedure TfrmProcesosActPlanS.Procesar_Usuario_New;
Var
  Valor : Boolean;
  Pass2, Clave, i : Integer;
  Limpio, Usuario, Useralt, Tipo : String;
begin
  DM.qrParametro.Close;
  DM.qrParametro.Open;

  //Eliminando los Guiones de la Cedula - RNC del Cliente.
  Limpio  := DM.Cortar_Char('-', qfindPacientes.FieldByName('Identificacion').AsString);

  //Creando la Clave de Internet.
  Clave :=  Crear_Clave(Copy(Limpio, 1, 11));

  //Creando el Usuario de Internet.
  Usuario :=  Crear_Usuario(qfindPacientes.FieldByName('Nombre').AsString);

  //Creando el Usuario Alternativo. 6 Digitos o Menos.
  If ( Length(Usuario) > 8 ) Then
    Useralt := Copy(Usuario, 1, 8)
  Else
    Useralt := Usuario;

  //Creando el Usuario Alternativo. 4 Digitos de la Clave.
  Pass2 := StrToInt( RightStr (IntToStr (Clave), 4) );
      If dm.qrParametroServidor_AS400.value <> EmptyStr then
      begin
            if dm.PingHost(dm.qrParametroServidor_AS400.value,1) then
            begin
                  If Not InterfaseAS400.Buscar_Usuario_Internet(Usuario) then
                  begin
                    //Creando el Usuario Alternativo (Useralt + Pass2).
                    Usuario:= Useralt+Copy(IntToStr(Pass2),1,10-Length(Useralt));
//                    Usuario := Useralt + IntToStr(Pass2);
                    i:=1;
                    While Not InterfaseAS400.Buscar_Usuario_Internet(Usuario) do
                    Begin
                       Pass2    := Pass2 + 100;
                       Usuario  := Copy(Useralt,1,Length(Useralt)-i)+Copy(IntToStr(Pass2),1,10-Length(Copy(Useralt,1,Length(Useralt)-i)));
                       Clave    := Clave+100;
                       i:=i+1;
                       Next;
                    end;
                  end;
            end;
      end;
  If (qfindPacientes.FieldByName('GrupoCliente').AsString = DM.qrParametroGrupoAcc.Value) Or
     (qfindPacientes.FieldByName('GrupoCliente').AsString = DM.qrParametroGrupoEmp.Value) Or
     (qfindPacientes.FieldByName('GrupoCliente').AsString = DM.qrParametroGrupoVip.Value) Or
     (qfindPacientes.FieldByName('GrupoCliente').AsString = DM.qrParametroGrupoPriv.Value) Then
   Tipo := 'P'
 Else
   Tipo := 'C';

//  Insertar_Usuario(Usuario, IntToStr(Clave),
  Insertar_Usuario_New(Usuario, FormatFloat('000000', Clave),
                       qfindPacientes.FieldByName('Nombre').AsString,
                       qfindPacientes.FieldByName('Identificacion').AsString,
                       qrEntradaPacientePacienteId.Value, Tipo, 'N');
end;
procedure TfrmProcesosActPlanS.qrEntradaPacienteDetalleBeforeEdit(
  DataSet: TDataSet);
begin
  comboprecio := True;
end;

procedure TfrmProcesosActPlanS.qrEntradaPacienteDetalleBeforeInsert(
  DataSet: TDataSet);
begin
  comboprecio := True;
end;

Function TfrmProcesosActPlanS.Crear_Clave(cedularnc : String) : Integer;
Var
  Numero  : Double;
  Valor   : Int64;
//  Valor   : Integer;
  Texto   : String; //AnsiString;
begin
  //Cargando la Cedula - RNC.
//  Valor := StrToInt(cedularnc);
  Valor := StrToInt64(cedularnc);

  //Obteniendo el Numero Unico (Alejandro Espinosa Curiel).
  Numero := ((Valor * 180) / 360) * 3.1416;

  //Obteniendo la Parte Entera del Numero Unico.
  Valor := Trunc(Numero);

  //Tomando las 1ras 6 Posiciones del Entero.
  Texto := RightStr(IntToStr(Valor), 6);
//  Texto := AnsiRightStr(IntToStr(Valor), 6);

  //Asignando la Clave Obtenida.
  Result := StrToInt(Texto);
end;
Function TfrmProcesosActPlanS.Crear_Usuario(nombre : String) : String;
Var
  Texto : String;
  Valor, Largo, Blanco : Integer;
begin
  Largo := Length(nombre);

  Blanco := AnsiPos(' ', nombre);
//  Blanco := AnsiPos(#32, nombre);

  If (Largo > 8) Then
    Begin
      If (Blanco > 1) Then
        Begin
         Valor := Blanco - 1;

         If (Valor > 7) Then
           Texto := Copy(nombre, 1, 8)
         Else
           Texto := Copy(nombre, 1, Valor);
        End
      Else
        Texto := Copy(nombre, 1, 8);
    End
  Else
    Texto := nombre;

  Result := Texto;
end;
procedure TfrmProcesosActPlanS.Buscar_Paciente;
begin
  qfindPacientes := DM.Find_Ldr('Select * from PTCliente Where ClienteID = :pac', qrEntradaPacientePacienteId.Value);

  //Buscando los Datos del Grupo del Paciente.
  Buscar_Grupo_Pac(qfindPacientes.FieldByName('GrupoCliente').AsString);
end;

//Buscando los Datos del Grupo del Paciente.
Procedure TfrmProcesosActPlanS.Buscar_Grupo_Pac(Grupo: string);
begin
 qfindGrupoPac := DM.Find_Ldr('SELECT * FROM PTGrupoCliente WHERE GrupoCliente = :grp', Grupo);
end;
procedure TfrmProcesosActPlanS.Buscar_Ordenes_Telefonos;
begin
   If dm.qrParametroServidor_AS400.value <> EmptyStr then
   begin
        If dm.PingHost(dm.qrParametroServidor_AS400.value,1) then
        begin
              Try
                InterfaseAS400.ASConnection.Close;
                InterfaseAS400.ASConnection.Open;
                //Buscando las Entradas del AS-400.
                InterfaseAS400.qrASBADPHONE.Close;
                InterfaseAS400.qrASBADPHONE.Open;
                _recorId := InterfaseAS400.qrASBADPHONE.RecordCount;
                If (InterfaseAS400.qrASBADPHONE.RecordCount > 0) then
                Begin
                    InterfaseAS400.qrASBADPHONE.First;
                    while Not InterfaseAS400.qrASBADPHONE.Eof do
                    begin
                      InterfaseAS400.qrSqlEncabezado.Close;
                      InterfaseAS400.qrSQLEncabezado.Parameters.ParamByName('MuestraNo').Value := FormatFloat('00000000000',InterfaseAS400.qrASBADPHONEIN6NUM.Value);
                      InterfaseAS400.qrSQLEncabezado.Open;
                      If Not InterfaseAS400.qrSqlEncabezado.Eof then
                      Begin
                          InterfaseAS400.qrASBADPHONE.Edit;
        //              qfindEntrada := DM.Find_Ldr('Select * from PTEntradaPaciente Where Muestrano = :mue', FormatFloat('00000000000',InterfaseAS400.qrASBADPHONEIN6NUM.Value));
                          if Trim(InterfaseAS400.qrSQLEncabezadoTelefono.AsString)=EmptyStr then
                              InterfaseAS400.qrASBADPHONEIN6TEL.Asstring :=  '0'
                          else
                          Begin
                              if Copy(InterfaseAS400.qrSQLEncabezadoTelefono.AsString,1,10)<>'8098615545' Then
                                InterfaseAS400.qrASBADPHONEIN6TEL.Asstring :=  Copy(InterfaseAS400.qrSQLEncabezadoTelefono.AsString,1,10)
                              else
                                InterfaseAS400.qrASBADPHONEIN6TEL.Asstring :=  '0';
                          end;
        //                  InterfaseAS400.CambiarTelefonoAS400(FormatFloat('00000000000',InterfaseAS400.qrASBADPHONEIN6NUM.Value));
                          InterfaseAS400.qrASBADPHONE.Post;
                      end;
                      InterfaseAS400.qrASBADPHONE.Next;
                    end;
                end;
              Except
                Raise exception.CreateFmt(' Existe un Problema de Comunicacion Con el Servidor AS-400. '+ #13 +
                                          ' Por Favor, LLame al Departamento de Computos. '+ #13 +
                                          ' � Intentelo Nuevamente.!!!'+'  '+FormatFloat('00000000000',InterfaseAS400.qrASBADPHONEIN6NUM.Value), []);
              End;
        End;
   end;
end;
procedure TfrmProcesosActPlanS.Confirmar_Precio_Prueba;
Var
 valor_precio     : Currency;
 qprueba          : TADOQuery;
 Precio_Cabecera  : Integer;
begin
  DM.qrParametro.close;
  DM.qrParametro.open;

  qrEntradaPacienteDetalle.DisableControls;
  qrEntradaPacienteDetalle.First;

  //Calculando el Nuevo Precio de la Prueba Dependiendo del Cliente Actual.
  While Not qrEntradaPacienteDetalle.Eof Do
   Begin
     qrEntradaPacienteDetalle.Properties['Update Criteria'].Value := 0;
     qrEntradaPacienteDetalle.Edit;

     //Buscando los Datos del Cliente a Facturar y Sus Parametros.
     Buscar_Cliente;

     //Calculando el Descuento a las PRUEBAS y los COMBOS.
     qprueba := DM.Find_Ldr('SELECT * FROM PTPrueba WHERE PruebaID = :pru', qrEntradaPacienteDetallePruebaID.value);

     qrEntradaPacienteDetalleRefRecid.Value := qrEntradaPacienteRECID.Value;
     qrEntradaPacienteDetalleMuestraNo.Value := qrEntradaPacienteMuestraNo.Value;
     qrEntradaPacienteDetalleDATAAREAID.Value := qrEntradaPacienteDATAAREAID.Value;
     qrEntradaPacienteDetalleRepMuestra.Value := qrEntradaPacienteRepMuestra.Value;
     qrEntradaPacienteDetalleCUADRADO.Value := qrEntradaPacienteCUADRADO.Value;
     qrEntradaPacienteDetalleTRANSFERIDO.Value := qrEntradaPacienteTRANSFERIDO.Value;
     qrEntradaPacienteDetalleSINPRFILTER.Value := qrEntradaPacienteSINPRFILTER.Value;
     //Registrando las Pruebas en Dollares del Exterior.
     If (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoExt.Value) Or
        (qrEntradaPacienteTipoDocumento.Value = 3) Or
        (qrEntradaPacienteFactExterior.Value = 1) Then
       Begin
         qrEntradaPacienteDESCUENTOPORC.Value   := 0;
         qrEntradaPacienteDESCUENTO.Value       := 0;
         qrEntradaPacienteDetalleDescPct.Value  := 0;
       End
     Else
       Begin
         If (qprueba.FieldByName('Tipo').Value = 'C') then
           Begin
             If (qprueba.FieldByName('FacturarCabecera').Value = 1) then
               Begin
                 qrEntradaPacienteDetalleCOMBO.Value       := 1; //LA PRUEBA ES UN COMBO.
//                 qrEntradaPacienteDetallePASARAXAPTA.Value := 0; //TRANSFERIR A AXAPTA (False).

                 //Registrando la Cabecera de los Combos (CON PRECIO).
                 if (qrEntradaPacienteSucursalId.Value <> dm.Cursucursal ) then
                     dm.GrupoPrecioPriv := Dm.GrupoPrecioPrivado(qrEntradaPacienteSucursalId.Value);
                 GrupoPrecio :=Dm.Buscar_GrupoPrecio(qrEntradaPacienteClienteID.Value);
                 GrupoCliente := Dm.Buscar_GrupoCliente(qrEntradaPacienteDetallePruebaID.Value,ClienteFactura,qrEntradaPacienteMonedaID.Value,formatdatetime('yyyymmdd',qrEntradaPacienteFecha.Value));
                 if GrupoCliente <> EmptyStr then
                 begin
                    ClienteFact := ClienteFactura;
                    GrupoPrecio := ClienteFactura;
                 end
                 else
                 begin
                   if GrupoPrecio = EmptyStr then
                      ClienteFact := ClienteFactura
                   Else
                      ClienteFact := GrupoPrecio;
                 end;
                 qrEntradaPacienteDetallePrecio.Value := DM.Precio_Prueba_Configurado(qrEntradaPacienteDetallePruebaID.Value,
                                                                                      ClienteFact,
                                                                                      qrEntradaPacienteMonedaID.Value,
                                                                                      qrEntradaPacienteOrigen.value,dm.GroupPrivado,GrupoPrecio,qrEntradaPacienteClaseCredito.Value,formatdatetime('yyyymmdd',qrEntradaPacienteFecha.Value)) * factor;
                 //Validaciones de las Pruebas de Seguro.
                 If (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSeg.Value) Then
                   Begin
                     //Marcando la Prueba Como Cubierta por el Seguro o No Segun el Acuerdo Comercial.
                     qrEntradaPacienteDetalleCoberturaAplica.Value := DM.ValidarSeguroPruebaCobertura(qrEntradaPacienteOrigen.Value,
                                                                                                      qfindCltParams.FieldByName('GrupoPrecio').AsString,
                                                                                                      qrEntradaPacienteDetallePruebaID.Value,
                                                                                                      qrEntradaPacienteMonedaID.Value,
                                                                                                      qrEntradaPacienteClienteID.Value,
                                                                                                      qrEntradaPacientePacienteID.Value,
                                                                                                      formatdatetime('yyyymmdd',qrEntradaPacienteFecha.Value),
                                                                                                      curCoberturaAplicada,
                                                                                                      qrEntradaPacienteRECID.value);

                     If (qrEntradaPacienteDetalleCoberturaAplica.Value = 1) then
                       Begin
                         //Pruebas de los Seguros.
                         curCoberturaAplicada := DM.CurCoberturaAplicada(qrEntradaPacienteRECID.Value); //DM.CurCoberturaAplicada(_recorId)
//                         curCoberturaAplicada := curCoberturaAplicada + 1;

                         valor_precio := DM.ValidarSeguroPruebaCobertura_Precio(qrEntradaPacienteClienteID.Value,
                                                                                qrEntradaPacienteDetallePruebaID.Value,
                                                                                qrEntradaPacienteMonedaID.Value,
                                                                                qrEntradaPacienteSucursalID.Value,
                                                                                formatdatetime('yyyymmdd',qrEntradaPacienteFecha.Value));
                         If (valor_precio > 1) Then
                           Begin
//                             qrEntradaPacienteDetalle.Edit;
//                             qrEntradaPacienteDetalleCoberturaAplica.Value := 0;
//                             qrEntradaPacienteDetallePrecio.Value := DM.Redondeo(valor_precio);
                             DM.Warning('   EL TOTAL DE PRUEBAS X DIAS DE ESTA ASEGURADORA YA FUE ALCANZADO.   ' + #13);
//                                     '   La Prueba: ('+ qrEntradaPacienteDetalleDescripcion.Value +')    ' + #13 +
//                                     '   Sera Facturada a Precio Normal. NO Tiene Cobertura.!!!');
                           End;
                       End;
                   End; //Final de las Validaciones de las Pruebas de Seguro.

                 precio_combo := DM.Redondeo(qrEntradaPacienteDetallePrecio.Value);
                 Buscar_Combo;
                 if qrEntradaPacienteDetallePruebaID.value = EmptyStr then  Insertar_Combo_Blanco;
               End
             Else
               Begin
                 qrEntradaPacienteDetalleCOMBO.Value       := 1; //LA PRUEBA ES UN COMBO.
//                 qrEntradaPacienteDetallePASARAXAPTA.Value := 0; //TRANSFERIR A AXAPTA (False).
                 qrEntradaPacienteDetalleDESCPCT.Value := 0;

                 //Registrando la Cabecera de los Combos (SIN PRECIO).
                 Buscar_Combo;
                 if qrEntradaPacienteDetallePruebaID.value = EmptyStr then  Insertar_Combo_Precio;
               End;
           End
         Else
           Begin
             If (comboprecio = True) Then
               Begin
                 //Registrando las Pruebas NORMALES y/o Detalle de los Combos (CON PRECIO).
                 if Not((qrEntradaPacienteDetallePrecio.Value = 0) and (qrEntradaPacienteDetalleCombo.Value = 1)) Then
                 begin
                     if (qrEntradaPacienteSucursalId.Value <> dm.Cursucursal ) then
                         dm.GrupoPrecioPriv := Dm.GrupoPrecioPrivado(qrEntradaPacienteSucursalId.Value);
                     GrupoPrecio  := Dm.Buscar_GrupoPrecio(qrEntradaPacienteClienteID.Value);
                     GrupoCliente := Dm.Buscar_GrupoCliente(qrEntradaPacienteDetallePruebaID.Value,ClienteFactura,qrEntradaPacienteMonedaID.Value,formatdatetime('yyyymmdd',qrEntradaPacienteFecha.Value));
                     if GrupoCliente <> EmptyStr then
                     begin
                        ClienteFact := ClienteFactura;
                        GrupoPrecio := ClienteFactura;
                     end
                     else
                     begin
                       if GrupoPrecio = EmptyStr then
                          ClienteFact := ClienteFactura
                       Else
                          ClienteFact := GrupoPrecio;
                     end;
                     qrEntradaPacienteDetallePrecio.Value := DM.Precio_Prueba_Configurado(qrEntradaPacienteDetallePruebaID.Value,
                                                                                          ClienteFact,
                                                                                          qrEntradaPacienteMonedaID.Value,
                                                                                          qrEntradaPacienteOrigen.value,dm.GroupPrivado,GrupoPrecio,qrEntradaPacienteClaseCredito.Value,formatdatetime('yyyymmdd',qrEntradaPacienteFecha.Value)) * factor;
                 end
                 else
                 begin
                      qrEntradaPacienteDetallePrecio.Value := 0;
                 end;

                 //Validaciones de las Pruebas de Seguro.
                 If (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSeg.Value) Then
                   Begin
                   //Marcando la Prueba Como Cubierta por el Seguro o No Segun el Acuerdo Comercial.
                   qrEntradaPacienteDetalleCoberturaAplica.Value := DM.ValidarSeguroPruebaCobertura(qrEntradaPacienteOrigen.Value,
                                                                                                    qfindCltParams.FieldByName('GrupoPrecio').AsString,
                                                                                                    qrEntradaPacienteDetallePruebaID.Value,
                                                                                                    qrEntradaPacienteMonedaID.Value,
                                                                                                    qrEntradaPacienteClienteID.Value,
                                                                                                    qrEntradaPacientePacienteID.Value,
                                                                                                    formatdatetime('yyyymmdd',qrEntradaPacienteFecha.Value),
                                                                                                    curCoberturaAplicada,
                                                                                                    qrEntradaPacienteRECID.value);

                     If (qrEntradaPacienteDetalleCoberturaAplica.Value = 1) then
                       Begin
                         //Pruebas de los Seguros.
                         curCoberturaAplicada := DM.CurCoberturaAplicada(qrEntradaPacienteRECID.Value); //DM.CurCoberturaAplicada(_recorId)
//                         curCoberturaAplicada := curCoberturaAplicada + 1;

                         valor_precio := DM.ValidarSeguroPruebaCobertura_Precio(qrEntradaPacienteClienteID.Value,
                                                                                qrEntradaPacienteDetallePruebaID.Value,
                                                                                qrEntradaPacienteMonedaID.Value,
                                                                                qrEntradaPacienteSucursalID.Value,
                                                                                formatdatetime('yyyymmdd',qrEntradaPacienteFecha.Value));
                         If (valor_precio > 1) Then
                           Begin
//                             qrEntradaPacienteDetalle.Edit;
//                             qrEntradaPacienteDetalleCoberturaAplica.Value := 0;
//                             qrEntradaPacienteDetallePrecio.Value := DM.Redondeo(valor_precio);
                             DM.Warning('   EL TOTAL DE PRUEBAS X DIAS DE ESTA ASEGURADORA YA FUE ALCANZADO.   ' + #13);
//                                     '   La Prueba: ('+ qrEntradaPacienteDetalleDescripcion.Value +')    ' + #13 +
//                                     '   Sera Facturada a Precio Normal. NO Tiene Cobertura.!!!');
                           End;
                       End;
                   end; //Final de las Validaciones de las Pruebas de Seguro.

               end
             Else
               Begin
                 //Registrando el Detalle de los Combos (SIN PRECIO).
                 combodescto                                         := 0;
                 qrEntradaPacienteDESCUENTOPORC.Value                := 0;
                 qrEntradaPacienteDESCUENTO.Value                    := 0;
                 qrEntradaPacienteDetalleDESCPCT.Value               := 0;
                 qrEntradaPacienteDetalleCOMBO.Value                 := 1; //LA PRUEBA ES UN COMBO.
                 qrEntradaPacienteDetallePrecio.Value                := 0;
                 qrEntradaPacienteDetalleDescPct.Value               := 0;
                 qrEntradaPacienteDetalleFacturar.Value              := 0;
                 qrEntradaPacienteDetalleDescuento.Value             := 0;
                 qrEntradaPacienteDetalleCoberturaAplica.Value       := 0;
                 qrEntradaPacienteDetalleCoberturaExpPorc.Value      := 0;
                 qrEntradaPacienteDetalleCoberturaEspecial.Value     := 0;
                 qrEntradaPacienteDetalleCoberturaEspecialPorc.Value := 0;
               End;
           end;
       End;


     If (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSeg.Value) Then
       Buscar_Cod_Cups(qrEntradaPacienteClienteID.Value, qrEntradaPacienteDetallePruebaID.Value)
     else
     begin
       qrEntradaPacienteDetalleCODIGOCUPID.Value := Emptystr;
       qrEntradaPacienteDetalleCoberturaAplica.Value := 0;
     end;
         if qrEntradaPacienteDetalle.State in [dsEdit, dsInsert] then
         Begin
            qrEntradaPacienteDetalle.Post;
         End;
       qrEntradaPacienteDetalle.Next;
   end;

  FreeAndNil(qprueba);
  qrEntradaPacienteDetalle.EnableControls;
end;
procedure TfrmProcesosActPlanS.ActTotales;
Var
 qfind : TADOQuery;
begin
 If (qrEntradaPacienteDetalle.RecordCount > 0) Then
 Begin
     ActDetalle;
     qfind := DM.NewQuery;
     qfind.Close;
     qfind.SQL.Text := ' SELECT SUM(Precio), SUM(DescuentoLineaAplicado), '+
                       ' SUM(CoberturaAplicada), SUM(Adicional) '+
                       ' FROM PTEntradaPacienteDetalle '+
                       ' WHERE refRecid = '+ inttostr(qrEntradaPacienteRECID.Value) +
                       ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39;
     inttostr(qrEntradaPacienteRECID.Value);
     qfind.Open;

     qrEntradaPaciente.Edit;
     //Redondeo de los Valores del Punto de Venta.
     qrEntradaPacienteBruto.Value       := Dm.Redondeo(qfind.Fields[0].AsFloat + qfind.Fields[3].AsFloat);
     qrEntradaPacienteDescuento.Value   := Dm.Redondeo(qfind.Fields[1].AsFloat + qrEntradaPacienteDescuentoBono.Value);
     qrEntradaPacienteSubTotal.Value    := Dm.Redondeo(qrEntradaPacienteBruto.Value - qrEntradaPacienteDescuento.Value);

     If (qrEntradaPacienteCoberturaConfirmada.Value = 1) then
       Begin
         qrEntradaPacienteCoberturaSeguro.Value             := Dm.Redondeo(qfind.Fields[2].AsFloat);
         qrEntradaPacienteCOBERTURAMONTOPRECONFIRMADO.Value := Dm.Redondeo(qfind.Fields[2].AsFloat);
       end
     Else
       Begin
         qrEntradaPacienteCoberturaSeguro.Value             := 0;
         qrEntradaPacienteCOBERTURAMONTOPRECONFIRMADO.Value := Dm.Redondeo(qfind.Fields[2].AsFloat);
       end;

     If (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoExt.Value) Or
        (qrEntradaPacienteTipoDocumento.Value = 3) Or
        (qrEntradaPacienteFactExterior.Value = 1) Then
       qrEntradaPacienteGastosVarios.Value := Dm.Redondeo(DM.TotalGastosVariosUsa(qrEntradaPacienteRECID.Value))
     Else
       qrEntradaPacienteGastosVarios.Value := Dm.Redondeo(DM.TotalGastosVarios(qrEntradaPacienteRECID.Value));

     qrEntradaPacienteNeto.Value := Dm.Redondeo(qrEntradaPacienteSubTotal.Value -
                                                qrEntradaPacienteCoberturaSeguro.Value +
                                                qrEntradaPacienteGastosVarios.Value);
     FreeAndNil(qfind);
   End
 Else
 Begin
     //Redondeo de los Valores del Punto de Venta.
     qrEntradaPaciente.Edit;
     qrEntradaPacienteBruto.Value := 0;
     qrEntradaPacienteDescuento.Value := 0;
     qrEntradaPacienteDescuentoPorC.Value := 0;
     qrEntradaPacienteSubTotal.Value := 0;
     qrEntradaPacienteNeto.Value := 0;
     qrEntradaPacienteCoberturaSeguro.Value := 0;
     qrEntradaPacienteCOBERTURAMONTOPRECONFIRMADO.Value := 0;
 End;
 FreeAndNil(qfind);
end;
procedure TfrmProcesosActPlanS.ActDetalle;
var
 bM : TBookMark;
 qact : TADOQuery;
begin
 bM := qrEntradaPacienteDetalle.GetBookmark;

 //Pruebas de los Seguros.
 curCoberturaAplicada := 0;

 qrEntradaPacienteDetalle.DisableControls;
 qrEntradaPacienteDetalle.First;

 qact := DM.NewQuery;

 While not qrEntradaPacienteDetalle.Eof Do
  begin
    If (qrEntradaPacienteDetallePruebaId.Value = '') Or
       (qrEntradaPacienteDetallePruebaId.Value = ' ') Or
       (qrEntradaPacienteDetallePruebaId.IsNull) Then
      qrEntradaPacienteDetalle.Delete;

    qact.Close;
    qact.SQL.Clear;
    qact.SQL.Text := ' UPDATE PTEntradaPacienteDetalle SET '+
                     ' CoberturaAplicada = :cob, '+
                     ' DescuentoLineaAplicado = :desc '+
                     ' WHERE RefRecid = :rec '+
                     ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
                     ' AND Secuencia = :sec ';
    qact.Parameters[0].Value := CalcularCoberturaAplicada;
    qact.Parameters[1].Value := TotalDescuentoLinea;
    qact.Parameters[2].Value := qrEntradaPacienteDetalleRefRecid.Value;
    qact.Parameters[3].Value := qrEntradaPacienteDetalleSecuencia.Value;
    qact.ExecSQL;

    qrEntradaPacienteDetalle.Next
  end;

 //Pruebas de los Seguros.
 curCoberturaAplicada := DM.CurCoberturaAplicada(qrEntradaPacienteRECID.Value); //DM.CurCoberturaAplicada(_recorId)
 qrEntradaPacienteDetalle.GotoBookmark(bM);
 qrEntradaPacienteDetalle.FreeBookmark(bM);
 qrEntradaPacienteDetalle.EnableControls;
end;
procedure TfrmProcesosActPlanS.Buscar_Cliente;
begin
    //Buscando los Datos del Cliente Registrado en el Punto de Venta.
    qfindCltParams := DM.Find_Ldr('SELECT * FROM PTCliente WHERE ClienteID = :cli', qrEntradaPacienteClienteId.Value);

    If qfindCltParams.FieldByName('Principal').AsString <> '' then
      Begin
        If (qfindCltParams.FieldByName('UsarAcuerdoPropio').AsInteger = 1) then
          Begin
            //Buscando los Acuerdos Comerciales del Cliente HIJO.
            ClienteFactura := qrEntradaPacienteClienteId.Value;
//            If (Operacion <> '') Then
            If qrEntradaPaciente.State in [dsInsert] Then
              Begin
                qrEntradaPacienteAcuerdoPropio.Value := 1;
                qrEntradaPacienteClientePadre.Value := qfindCltParams.FieldByName('Principal').AsString;
              End;
          End
        Else
          Begin
            //Buscando los Acuerdos Comerciales del Cliente (PADRE - PRINCIPAL).
            ClienteFactura := qfindCltParams.FieldByName('Principal').AsString;
//            If (Operacion <> '') Then
            If qrEntradaPaciente.State in [dsInsert] Then
              Begin
                qrEntradaPacienteAcuerdoPropio.Value := 0;
                qrEntradaPacienteClientePadre.Value := qfindCltParams.FieldByName('Principal').AsString;
              End;
          End;
      End
    Else
      Begin
        //Buscando los Acuerdos Comerciales del Cliente Registrado en el Punto de Venta.
        ClienteFactura := qrEntradaPacienteClienteId.Value;
//        If (Operacion <> '') Then
        If qrEntradaPaciente.State in [dsInsert] Then
         Begin
           qrEntradaPacienteAcuerdoPropio.Value := 0;
           qrEntradaPacienteClientePadre.Value := qrEntradaPacienteClienteId.Value;
         End;
      End;

    //Cargando los PARAMETROS del CLIENTE A FACTURAR en el Punto de Venta.
    qfindCltParams := DM.Find_Ldr('SELECT * FROM PTCliente WHERE ClienteID = :cli', ClienteFactura);

    //Buscando los Datos del Grupo del Cliente.
    Buscar_Grupo_Clt(qfindCltParams.FieldByName('GrupoCliente').AsString);

    //Buscando los Datos del PACIENTE Registrado y Sus Parametros.
    Buscar_Paciente;
//  End;
end;
//Buscando los Datos del Grupo del Cliente.
Procedure TfrmProcesosActPlanS.Buscar_Grupo_Clt(Grupo: string);
begin
 qfindGrupoClt := DM.Find_Ldr('SELECT * FROM PTGrupoCliente WHERE GrupoCliente = :grp', Grupo);
end;
procedure TfrmProcesosActPlanS.Buscar_Combo;
begin
  qfindcombo := DM.NewQuery;

  qfindcombo.Close;
  qfindcombo.SQL.Text := ' SELECT * FROM PTCombosPruebas '+
                         ' WHERE ComboId = '+ #39 + qrEntradaPacienteDetallePruebaID.Value + #39 +
                         ' ORDER BY linea ';
  qfindcombo.Open;

  If (qfindcombo.RecordCount > 0) then
    qfindcombo.First
  Else
    Raise exception.CreateFmt('El COMBO ('+ qrEntradaPacienteDetallePruebaID.Value +') NO Tiene Pruebas Registrada.', []);
end;
procedure TfrmProcesosActPlanS.Insertar_Combo_Blanco;
begin
 While Not qfindcombo.Eof Do
  Begin
   If (qrEntradaPacienteDetallePruebaID.Value = '') Or
      (qrEntradaPacienteDetallePruebaID.IsNull) Then
     qrEntradaPacienteDetalle.Delete
   Else
     qrEntradaPacienteDetalle.Post;

   qrEntradaPacienteDetalle.Insert;

   If (qfindcombo.FieldByName('Sexo').AsInteger < 2) then
    Begin
     If (qfindcombo.FieldByName('Sexo').AsInteger <> qrEntradaPacienteSexo.Value) Then
      Begin
       //El Paciente NO ES del Sexo Configurado a La Prueba en el Combo.
       comboprecio := False;
       DM.Info('La Prueba: ( '+ qfindcombo.FieldByName('Descripcion').AsString +' ). NO Aplica Para Pacientes de Este Sexo.');
       qfindcombo.Next;
      End
     Else
      Begin
       //El Paciente ES del Sexo Configurado a La Prueba en el Combo.
       comboprecio := False;
       qrEntradaPacienteDetalleCOMBO.Value := 1; //LA PRUEBA ES UN COMBO.
       qrEntradaPacienteDetallePruebaID.Value := qfindcombo.FieldByName('PruebaID').AsString;
       qfindcombo.Next;
      End;
    End
   Else
    Begin
     //La Prueba Se Le Realiza a Ambos Sexos.
     comboprecio := False;
     qrEntradaPacienteDetalleCOMBO.Value := 1; //LA PRUEBA ES UN COMBO.
     qrEntradaPacienteDetallePruebaID.Value := qfindcombo.FieldByName('PruebaID').AsString;
     qfindcombo.Next;
    End;
  End;

 //Agregado Para Evitar Error al Momento de Actualizar el Detalle.
 If (qrEntradaPacienteDetallePruebaID.Value = '') Or
    (qrEntradaPacienteDetallePruebaID.IsNull) Then
   qrEntradaPacienteDetalle.Delete;

 //Agregado Para Evitar Error al Momento de Actualizar el Detalle.
 qrEntradaPacienteDetalle.Edit;
 qrEntradaPacienteDetalle.Post;
 FreeAndNil(qfindcombo);

 //Agregado Para Actualizar el Valor del Combo para la Transferencia a Axapta.
 Actu_Precio_Combo;
end;
procedure TfrmProcesosActPlanS.Insertar_Combo_Precio;
begin
 While Not qfindcombo.Eof Do
  Begin
   If (qrEntradaPacienteDetallePruebaID.Value = '') Or
      (qrEntradaPacienteDetallePruebaID.IsNull) Then
     qrEntradaPacienteDetalle.Delete
   Else
     qrEntradaPacienteDetalle.Post;

   qrEntradaPacienteDetalle.Insert;

   If (qfindcombo.FieldByName('Sexo').AsInteger < 2) then
    Begin
     If (qfindcombo.FieldByName('Sexo').AsInteger <> qrEntradaPacienteSexo.Value) Then
      Begin
       //El Paciente NO ES del Sexo Configurado a La Prueba en el Combo.
       comboprecio := True;
       DM.Info('La Prueba: ( '+ qfindcombo.FieldByName('Descripcion').AsString +' ). NO Aplica Para Pacientes de Este Sexo.');
       qfindcombo.Next;
      End
     Else
      Begin
       //El Paciente ES del Sexo Configurado a La Prueba en el Combo.
       comboprecio := True;
       qrEntradaPacienteDetalleCOMBO.Value := 1; //LA PRUEBA ES UN COMBO.
       qrEntradaPacienteDetallePruebaID.Value := qfindcombo.FieldByName('PruebaID').AsString;
       qfindcombo.Next;
      End;
    End
   Else
    Begin
     //La Prueba Se Le Realiza a Ambos Sexos.
     comboprecio := True;
     qrEntradaPacienteDetalleCOMBO.Value := 1; //LA PRUEBA ES UN COMBO.
     qrEntradaPacienteDetallePruebaID.Value := qfindcombo.FieldByName('PruebaID').AsString;
     qfindcombo.Next;
    End;
  End;

 //Agregado Para Evitar Error al Momento de Actualizar el Detalle.
 If (qrEntradaPacienteDetallePruebaID.Value = '') Or
    (qrEntradaPacienteDetallePruebaID.IsNull) Then
   qrEntradaPacienteDetalle.Delete;

 //Agregado Para Evitar Error al Momento de Actualizar el Detalle.
 qrEntradaPacienteDetalle.Edit;
 FreeAndNil(qfindcombo);
end;
procedure TfrmProcesosActPlanS.Actu_Precio_Combo;
Var
  valor : Currency;
  qfind : TAdoQuery;
Begin
  qfind := DM.NewQuery;

  qfind.Close;
  qfind.SQL.Text := ' SELECT COUNT(PruebaId) FROM PTEntradaPacienteDetalle '+
                    ' WHERE Combo = 1 AND Precio < 1 '+
                    ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
                    ' AND Refrecid = '+ #39 + qrEntradaPacienteRECID.AsString + #39;
  qfind.Open;

  If (qfind.RecordCount > 0) And (qfind.Fields[0].AsInteger > 0) And (precio_combo > 1) then
    Begin
      valor := DM.Redondeo(precio_combo / qfind.Fields[0].AsInteger);

      qrEntradaPacienteDetalle.Close;
      qrEntradaPacienteDetalle.parameters[0].Value := StrtoInt64(qrEntradaPacienteRECID.AsString);
      qrEntradaPacienteDetalle.Open;

      qrEntradaPacienteDetalle.DisableControls;
      qrEntradaPacienteDetalle.First;
      While not qrEntradaPacienteDetalle.Eof do
       begin
         if (qrEntradaPacienteDetalleCombo.Value = 1) And (qrEntradaPacienteDetallePrecio.Value < 1) then
           Begin
             qrEntradaPacienteDetalle.Properties['Update Criteria'].Value := 0;
             qrEntradaPacienteDetalle.Edit;
             qrEntradaPacienteDetallePrecioCombo.Value := valor;
             qrEntradaPacienteDetalle.Post;
           end;

         qrEntradaPacienteDetalle.Next;
       end;
    end;

  qrEntradaPacienteDetalle.First;
  qrEntradaPacienteDetalle.EnableControls;
  qrEntradaPacienteDetalle.Last;

  FreeAndNil(qfind);
end;
procedure TfrmProcesosActPlanS.btaceptarcuadreClick(Sender: TObject);
begin

end;

//Buscando los Datos del Codigo CUPS del Cliente.
procedure TfrmProcesosActPlanS.Buscar_Cod_Cups(cliente: String; prueba: String);
begin
  qfindcodcup := DM.NewQuery;
  qfindcodcup.Close;
  qfindcodcup.SQL.Text := ' SELECT * FROM PTCodigoCup '+
                          ' WHERE ClienteId = '#39 + cliente + #39 +
                          ' AND PruebaId = '#39 + prueba + #39 +
                          ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
                          ' ORDER BY PruebaId ';
  qfindcodcup.Active := True;

  qrEntradaPacienteDetalle.Edit;

  if (qfindcodcup.RecordCount > 0) then
    Begin
      qrEntradaPacienteDetalleCodigoCupID.Value := qfindcodcup.FieldByName('CodigoCupID').AsString;

      if (qfindcodcup.FieldByName('DescripcionCup').AsString <> '') then
        qrEntradaPacienteDetalleDescripcionCup.Value := qfindcodcup.FieldByName('DescripcionCup').AsString
      else
        qrEntradaPacienteDetalleDescripcionCup.Value := qrEntradaPacienteDetalleDescripcion.Value;
    end
  Else
    Begin
      qrEntradaPacienteDetalleCodigoCupID.Value := prueba;
      qrEntradaPacienteDetalleDescripcionCup.Value := qrEntradaPacienteDetalleDescripcion.Value;
    end;

  FreeAndNil(qfindcodcup);
end;
function TfrmProcesosActPlanS.TotalDescuentoLinea : Currency;
Var
 DescuentoPorc, DescuentoPesosCab, DescuentoPesos : Currency;
begin
  qrEntradaPaciente.Edit;
  qrEntradaPacienteDetalle.Edit;

  DescuentoPorc := 0;
  DescuentoPesos := 0;
  DescuentoPesosCab := 0;

  //Calculando el Descuento a las PRUEBAS y los COMBOS.
  qpruebadesc := DM.Find_Ldr('SELECT * FROM PTPrueba WHERE PruebaID = :pru', qrEntradaPacienteDetallePruebaID.value);

  //Calculando el Descuento a las PRUEBAS y los COMBOS.
  If (qpruebadesc.FieldByName('Tipo').Value = 'P') Or
     (qpruebadesc.FieldByName('Tipo').Value = 'C') Then
    Begin
      If (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSeg.Value) Then
        begin
          If (qrEntradaPacienteCoberturaConfirmada.Value = 1) And
             (qrEntradaPacienteDetalleCoberturaAplica.Value = 1) Then
            Begin
              DescuentoPorc := (qrEntradaPacienteDetallePrecio.Value -
                                CalcularCoberturaAplicada -
                                qrEntradaPacienteDetalleDescuento.Value) *
                               (qrEntradaPacienteDetalleDescPct.Value / 100);
            End
          Else
            DescuentoPorc := 0;
        end
      Else
        DescuentoPorc := (qrEntradaPacienteDetallePrecio.Value -
                          CalcularCoberturaAplicada -
                          qrEntradaPacienteDetalleDescuento.Value) *
                         (qrEntradaPacienteDetalleDescPct.Value / 100);

      If (qrEntradaPacienteDescuentoValor.Value > 0) then
        DescuentoPesosCab := qrEntradaPacienteDetallePrecio.Value *
                             qrEntradaPacienteDescuentoValor.Value /
                            (ImporteBrutoExclLineaActual(qrEntradaPacienteDetalleRefRecid.Value,
                             qrEntradaPacienteDetalleSecuencia.Value) +
                            (qrEntradaPacienteDetallePrecio.Value));

      If (qrEntradaPacienteDescuentoPorc.Value  > 0) And (qrEntradaPacienteFactExterior.Value <> 1)  Then
        DescuentoPorc := DescuentoPorc + ((qrEntradaPacienteDetalleTotalLinea.Value -
                                           DescuentoPesosCab - CalcularCoberturaAplicada) *
                                           qrEntradaPacienteDescuentoPorc.Value /100);

      DescuentoPesos := DM.Redondeo(DescuentoPesosCab + qrEntradaPacienteDetalleDescuento.Value);
    End;

  result := DM.Redondeo(DescuentoPesos + DescuentoPorc);
end;
function TfrmProcesosActPlanS.CalcularCoberturaAplicada : Currency;
var
 coberturaporc, CoberturaPesosCab : Currency;
begin
 If (qrEntradaPacienteCoberturaRechazada.Value = 1) Then
   result := 0
 Else
   Begin
    If (qrEntradaPacienteDetalleCoberturaAplica.Value = 1) then
     begin
      if (qrEntradaPacienteDetalleCoberturaEspecialPorc.Value > 0) or
         (qrEntradaPacienteDetalleCoberturaEspecial.Value > 0) then
       begin

        if not (qrEntradaPacienteDetalleCoberturaExpPorc.Value = 1) then
          result := qrEntradaPacienteDetalleCoberturaEspecial.Value
        else
          begin
            coberturaporc := (qrEntradaPacienteDetallePrecio.Value) *
                             (qrEntradaPacienteDetalleCoberturaEspecial.Value / 100);

            result := coberturaporc;
          end;
       end
      else
       begin
         coberturaporc := 0;
         CoberturaPesosCab := 0;

         If (qrEntradaPacienteCoberturaConfirmada.Value = 1) then
           begin
            if (qrEntradaPacienteCoberturaValor.Value > 0) then
                CoberturaPesosCab := qrEntradaPacienteDetallePrecio.Value * qrEntradaPacienteCoberturaValor.Value /
                                     (ImporteBrutoExclLineaActualAplica(qrEntradaPacienteDetalleRefRecid.Value,
                                      qrEntradaPacienteDetalleSecuencia.Value) +
                                      qrEntradaPacienteDetallePrecio.Value)
            else
             if (qrEntradaPacienteCoberturaPorc.Value > 0.01 )  Then
                coberturaporc := (qrEntradaPacienteDetalleTotalLinea.Value - CoberturaPesosCab) *
                                 (qrEntradaPacienteCoberturaPorc.Value /100);
           end
         else
           begin
            if (qrEntradaPacienteCoberturaPorc.Value > 0.01 ) Then
                coberturaporc := (qrEntradaPacienteDetalleTotalLinea.Value - CoberturaPesosCab) *
                                 (qrEntradaPacienteCoberturaPorc.Value /100);
           end;

         result := DM.Redondeo(coberturaporc + CoberturaPesosCab);
       end;
     end
    else
     result := 0;
   end;
end;
function TfrmProcesosActPlanS.ImporteBrutoExclLineaActual(refrecid : int64 ; secuencia : integer) : Currency;
var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;
 qfind.Close;
 qfind.SQL.Text := ' SELECT SUM(Precio) '+
                   ' FROM PTEntradaPacienteDetalle '+
                   ' WHERE RefRecid = :rec '+
                   ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
                   ' AND Secuencia <> :sec ';
 qfind.Parameters[0].Value := refrecid;
 qfind.Parameters[1].Value := secuencia;
 qfind.Open;

 if qfind.Fields[0].AsString <> '' then
    result := Dm.Redondeo(qfind.Fields[0].AsFloat)
 else
    result := 0;

 FreeAndNil(qfind);
end;
function TfrmProcesosActPlanS.ImporteBrutoExclLineaActualAplica(refrecid : int64 ;secuencia : integer) : Currency;
var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;
 qfind.Close;
 qfind.SQL.Text := ' SELECT SUM(Precio) '+
                   ' FROM PTEntradaPacienteDetalle '+
                   ' WHERE RefRecid = :rec '+
                   ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
                   ' AND Secuencia <> :sec '+
                   ' AND CoberturaAplica = 1 ';
 qfind.Parameters[0].Value := refrecid;
 qfind.Parameters[1].Value := secuencia;
 qfind.Open;

 if qfind.Fields[0].AsString <> '' then
    result := Dm.Redondeo(qfind.Fields[0].AsFloat)
 else
    result := 0;

 FreeAndNil(qfind);
end;
Function TfrmProcesosActPlanS.Retorna_Paciente_Clave_Internet(ClienteID : String) : String;
Var
 qinter  : TAdoQuery;
begin
  qinter := DM.NewQuery;
  qinter.Close;
  qinter.SQL.Text := ' Select top 1 i.clienteid from ptusuariosinternet i inner join ptcliente c on i.clienteid=c.clienteid '+
                     ' Where i.clienteid='+#39+ClienteID+#39+
                     ' AND i.Tipo = ' + #39 + 'P' + #39 +
                     ' AND i.DataAreaId = ' + #39 + DM.CurEmpresa + #39;
  qinter.Open;
  if (qinter.RecordCount > 0) then
    result := qinter.FieldByName('ClienteId').Value
  else
    result := EmptyStr;
  FreeAndNil(qinter);
End;
function TfrmProcesosActPlanS.GetSecuenciaId : Int64;
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
   Add(' DECLARE	@return_value int,@r_result bigint,@r_result2 bigint,@r_result3 bit ');
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
   Result := StrToInt64(_valor);
 end;

 FreeAndNil(qsecdoc);
end;

END.



