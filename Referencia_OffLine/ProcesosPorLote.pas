unit ProcesosPorLote;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, dxLayoutControl, StdCtrls, cxButtons,
  cxCurrencyEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, ADODB, DB,
  cxContainer, cxEdit, cxGroupBox, cxRadioGroup, cxControls, pptypes, ppReport,
  ppCtrls, ppBands, ppClass, ppVar, ppPrnabl, ppCache, ppComm, ppRelatv, ppProd,
  cxGraphics, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TfrmProcesosPorLote = class(TForm)
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
    qrEntradaPacienteFROM_CLINICA: TIntegerField;
    qrEntradaPacienteSINPRFILTER: TIntegerField;
    qrEntradaPacienteDetallePRECIOCOMBO: TBCDField;
    qrEntradaPacienteDetalleSINPRFILTER: TIntegerField;
    qrEntradaPacienteDetalleFROM_CLINICA: TIntegerField;
    qrEntradaPacienteDetalleREFRECID_POS: TIntegerField;
    qrEntradaPacienteDetalleENTRADAID_POS: TStringField;
    qrEntradaPacienteDetalleMUESTRANO_POS: TStringField;
    LcSucursales: TcxLookupComboBox;
    dxLayoutControl3Item1: TdxLayoutItem;
    dxLayoutControl3Group2: TdxLayoutGroup;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    function GetSecuenciaId : Integer;
    Function Get_Corte_Caja : Int64;
  private
    { Private declarations }
  public
    { Public declarations }

    procedure Run;
    procedure Actu_Cabeza;
    procedure Actu_Cortes;
    procedure Actu_Cobros;
    procedure Actu_Usuarios;
    procedure Actu_Secuencia;
    procedure Actu_Transacciones;

    Var qsecdoc, qbuscar, qupdate, qcobros : TAdoQuery;
  end;

var
  frmProcesosPorLote: TfrmProcesosPorLote;

Implementation

Uses ActionsDM, DataModule, Main;

{$R *.dfm}


procedure TfrmProcesosPorLote.FormKeyDown(Sender: TObject; var Key: Word;
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


procedure TfrmProcesosPorLote.Run;
begin
 showmodal;
 if ModalResult = mrOk then
  begin
   if MessageDlg('Seguro Que Desea Realizar El Proceso?', mtWarning, [mbYes,mbNo], 0) = mrYes then
    begin
      qsecdoc := DM.NewQuery;
      qbuscar := DM.NewQuery;
      qupdate := DM.NewQuery;
      qcobros := DM.NewQuery;

//      Actu_Cobros;
//      Actu_Transacciones;
//      Actu_Cabeza;
//      Actu_Cortes;
      Actu_Usuarios;
      Actu_Secuencia;

      FreeAndNil(qsecdoc);
      FreeAndNil(qbuscar);
      FreeAndNil(qupdate);
      FreeAndNil(qcobros);
    end
  Else
    DM.Info('La Operacion Fue Abortada por el Usuario.!!!');
  end;
end;


function TfrmProcesosPorLote.GetSecuenciaId : Integer;
Var
 numero   : Integer;
begin
 qsecdoc.Close;
 qsecdoc.SQL.Clear;
 qsecdoc.SQL.Text := ' SELECT * FROM PTSecuencia ';
 qsecdoc.Open;

 if qsecdoc.FieldByName('Secuencia').AsString <> '' then
   numero := qsecdoc.FieldByName('Secuencia').AsInteger + 1
 else
   numero := 1;

 qsecdoc.Close;
 qsecdoc.SQL.Clear;
 qsecdoc.SQL.Text := ' UPDATE PTSecuencia SET Secuencia = Secuencia + 1 ';
 qsecdoc.ExecSQL;

 Result := numero;

// FreeAndNil(qsecdoc);
end;


procedure TfrmProcesosPorLote.Actu_Secuencia;
begin
 qbuscar.Close;
 qbuscar.SQL.Clear;
 qbuscar.SQL.Text := ' SELECT * FROM PTSecuenciaDoc ORDER BY TipoDoc, SucursalId ';
 qbuscar.Open;

 If (qbuscar.RecordCount > 0) Then
   Begin
     qbuscar.First;
     While Not qbuscar.Eof Do
      Begin
        qupdate.Close;
        qupdate.SQL.Clear;
        qupdate.sql.Text := ' UPDATE PTSecuenciaDoc SET RecId = :rec '+
                            ' WHERE TipoDoc = :tpo '+
                            ' AND SucursalId = :suc ';
        qupdate.Parameters.ParamByName('rec').Value := GetSecuenciaId;
        qupdate.Parameters.ParamByName('tpo').Value := qbuscar.FieldByName('TipoDoc').AsString;
        qupdate.Parameters.ParamByName('suc').Value := qbuscar.FieldByName('SucursalId').AsString;
        qupdate.ExecSQL;

        qbuscar.Next;
      End;
   End;

//  FreeAndNil(qbuscar);
//  FreeAndNil(qupdate);

  DM.Info('Se Acaba de Actualizar las Secuencias de Documentos.!!!');
end;


procedure TfrmProcesosPorLote.Actu_Transacciones;
begin
 qbuscar.Close;
 qbuscar.SQL.Clear;
 qbuscar.SQL.Text := ' SELECT * FROM PTClienteTransacciones '+
                     ' ORDER BY ClienteId, PacienteId, TipoAplica, DocumentoAplica, TipoDoc, Documento, MonedaId ';
 qbuscar.Open;

 If (qbuscar.RecordCount > 0) Then
   Begin
     qbuscar.First;
     While Not qbuscar.Eof Do
      Begin
        qupdate.Close;
        qupdate.SQL.Clear;
        qupdate.sql.Text := ' UPDATE PTClienteTransacciones SET RecId = :rec '+
                            ' WHERE ClienteId = :clt '+
                            ' AND PacienteId = :pac '+
                            ' AND TipoAplica = :tpa '+
                            ' AND DocumentoAplica = :apl '+
                            ' AND TipoDoc = :tpd '+
                            ' AND Documento = :doc '+
                            ' AND MonedaId = :cur '+
                            ' AND Valor = :val ';
        qupdate.Parameters.ParamByName('rec').Value := GetSecuenciaId;
        qupdate.Parameters.ParamByName('clt').Value := qbuscar.FieldByName('ClienteId').AsString;
        qupdate.Parameters.ParamByName('pac').Value := qbuscar.FieldByName('PacienteId').AsString;
        qupdate.Parameters.ParamByName('tpa').Value := qbuscar.FieldByName('TipoAplica').AsString;
        qupdate.Parameters.ParamByName('apl').Value := qbuscar.FieldByName('DocumentoAplica').AsString;
        qupdate.Parameters.ParamByName('tpd').Value := qbuscar.FieldByName('TipoDoc').AsString;
        qupdate.Parameters.ParamByName('doc').Value := qbuscar.FieldByName('Documento').AsString;
        qupdate.Parameters.ParamByName('cur').Value := qbuscar.FieldByName('MonedaId').AsString;
        qupdate.Parameters.ParamByName('val').Value := qbuscar.FieldByName('Valor').Value;
        qupdate.ExecSQL;

        qbuscar.Next;
      End;
   End;

//  FreeAndNil(qbuscar);
//  FreeAndNil(qupdate);

  DM.Info('Se Acaba de Actualizar las Transacciones de Clientes.!!!');
end;


procedure TfrmProcesosPorLote.Actu_Cobros;
begin
////////////////////////////////////////////////////////////////////////////////
 qbuscar.Close;
 qbuscar.SQL.Clear;
 qbuscar.SQL.Text := ' SELECT * FROM PTCobroAplicado ORDER BY CobroId, EntradaID ';
 qbuscar.Open;

 If (qbuscar.RecordCount > 0) Then
   Begin
     qbuscar.First;
     While Not qbuscar.Eof Do
      Begin
        qupdate.Close;
        qupdate.SQL.Clear;
        qupdate.sql.Text := ' UPDATE PTCobroAplicado SET RecId = :rec '+
                            ' WHERE CobroID = :cob '+
                            ' AND EntradaID = :ent '+
                            ' AND MontoAplicado = :apl ';
        qupdate.Parameters.ParamByName('rec').Value := GetSecuenciaId;
        qupdate.Parameters.ParamByName('cob').Value := qbuscar.FieldByName('CobroID').AsString;
        qupdate.Parameters.ParamByName('ent').Value := qbuscar.FieldByName('EntradaID').AsString;
        qupdate.Parameters.ParamByName('apl').Value := qbuscar.FieldByName('MontoAplicado').Value;
        qupdate.ExecSQL;

        qbuscar.Next;
      End;
   End;

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

 qbuscar.Close;
 qbuscar.SQL.Clear;
 qbuscar.SQL.Text := ' SELECT * FROM PTCobroDetalle ORDER BY CobroID, RefRecid, FormaDePagoID ';
 qbuscar.Open;

 If (qbuscar.RecordCount > 0) Then
   Begin
     qbuscar.First;
     While Not qbuscar.Eof Do
      Begin
        qupdate.Close;
        qupdate.SQL.Clear;
        qupdate.sql.Text := ' UPDATE PTCobroDetalle SET RecId = :rec '+
                            ' WHERE CobroID = :cob '+
                            ' AND RefRecid = :ref '+
                            ' AND FormaDePagoID = :fdp ';
        qupdate.Parameters.ParamByName('rec').Value := GetSecuenciaId;
        qupdate.Parameters.ParamByName('cob').Value := qbuscar.FieldByName('CobroID').AsString;
        qupdate.Parameters.ParamByName('ref').Value := qbuscar.FieldByName('RefRecid').AsString;
        qupdate.Parameters.ParamByName('fdp').Value := qbuscar.FieldByName('FormaDePagoID').Value;
        qupdate.ExecSQL;

        qbuscar.Next;
      End;
   End;

////////////////////////////////////////////////////////////////////////////////

//  FreeAndNil(qbuscar);
//  FreeAndNil(qupdate);

  DM.Info('Se Acaba de Actualizar Los Cobros de Caja.!!!');
end;


procedure TfrmProcesosPorLote.Actu_Cabeza;
begin
 qbuscar.Close;
 qbuscar.SQL.Clear;
 qbuscar.SQL.Text := ' SELECT * FROM PTCorteCajaCab ORDER BY CorteId ';
 qbuscar.Open;

 If (qbuscar.RecordCount > 0) Then
   Begin
     qbuscar.First;
     While Not qbuscar.Eof Do
      Begin
        qupdate.Close;
        qupdate.SQL.Clear;
        qupdate.sql.Text := ' UPDATE PTCorteCajaCab SET RecId = :rec '+
                            ' WHERE CorteId = :cor ';
        qupdate.Parameters.ParamByName('rec').Value := GetSecuenciaId;
        qupdate.Parameters.ParamByName('cor').Value := qbuscar.FieldByName('CorteId').AsString;
        qupdate.ExecSQL;

        qbuscar.Next;
      End;
   End;

//  FreeAndNil(qbuscar);
//  FreeAndNil(qupdate);

  DM.Info('Se Acaba de Actualizar la Cabecera de los Cortes de Caja.!!!');
end;


procedure TfrmProcesosPorLote.Actu_Cortes;
begin
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

 qbuscar.Close;
 qbuscar.SQL.Clear;
 qbuscar.SQL.Text := ' SELECT * FROM PTCorteCajaDet ORDER BY CorteID, Tipo, '+
                     ' FormaDePagoID, MonedaId, Valor, SINPRFILTER ';
 qbuscar.Open;

 If (qbuscar.RecordCount > 0) Then
   Begin
     qbuscar.First;
     While Not qbuscar.Eof Do
      Begin
        qupdate.Close;
        qupdate.SQL.Clear;
        qupdate.sql.Text := ' UPDATE PTCorteCajaDet SET '+
                            ' RefRecId = :ref, '+
                            ' RecId = :rec '+
                            ' WHERE CorteID = :cor '+
                            ' AND Tipo = :tpo '+
                            ' AND FormaDePagoID = :apl '+
                            ' AND MonedaId = :cur '+
                            ' AND Valor = :val '+
                            ' AND SINPRFILTER = :fil ';
        qupdate.Parameters.ParamByName('ref').Value := Get_Corte_Caja;
        qupdate.Parameters.ParamByName('rec').Value := GetSecuenciaId;
        qupdate.Parameters.ParamByName('cor').Value := qbuscar.FieldByName('CorteID').AsString;
        qupdate.Parameters.ParamByName('tpo').Value := qbuscar.FieldByName('Tipo').AsString;
        qupdate.Parameters.ParamByName('apl').Value := qbuscar.FieldByName('FormaDePagoID').AsString;
        qupdate.Parameters.ParamByName('cur').Value := qbuscar.FieldByName('MonedaId').AsString;
        qupdate.Parameters.ParamByName('val').Value := qbuscar.FieldByName('Valor').Value;
        qupdate.Parameters.ParamByName('fil').Value := qbuscar.FieldByName('SINPRFILTER').AsInteger;
        qupdate.ExecSQL;

        qbuscar.Next;
      End;
   End;

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
 qbuscar.Close;
 qbuscar.SQL.Clear;
 qbuscar.SQL.Text := ' SELECT * FROM PTCorteSucursal ORDER BY CorteID, '+
                     ' Usuario, FormaDePagoID, MonedaId, Valor, SINPRFILTER ';
 qbuscar.Open;

 If (qbuscar.RecordCount > 0) Then
   Begin
     qbuscar.First;
     While Not qbuscar.Eof Do
      Begin
        qupdate.Close;
        qupdate.SQL.Clear;
        qupdate.sql.Text := ' UPDATE PTCorteSucursal SET '+
                            ' RefRecId = :ref, '+
                            ' RecId = :rec '+
                            ' WHERE CorteID = :cor '+
                            ' AND Usuario = :usr '+
                            ' AND FormaDePagoID = :frm '+
                            ' AND MonedaId = :cur '+
                            ' AND Valor = :val '+
                            ' AND SINPRFILTER = :fil ';
        qupdate.Parameters.ParamByName('ref').Value := Get_Corte_Caja;
        qupdate.Parameters.ParamByName('rec').Value := GetSecuenciaId;
        qupdate.Parameters.ParamByName('cor').Value := qbuscar.FieldByName('CorteID').AsString;
        qupdate.Parameters.ParamByName('usr').Value := qbuscar.FieldByName('Usuario').AsString;
        qupdate.Parameters.ParamByName('frm').Value := qbuscar.FieldByName('FormaDePagoID').AsString;
        qupdate.Parameters.ParamByName('cur').Value := qbuscar.FieldByName('MonedaId').AsString;
        qupdate.Parameters.ParamByName('val').Value := qbuscar.FieldByName('Valor').Value;
        qupdate.Parameters.ParamByName('fil').Value := qbuscar.FieldByName('SINPRFILTER').AsInteger;
        qupdate.ExecSQL;

        qbuscar.Next;
      End;
   End;

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

 qbuscar.Close;
 qbuscar.SQL.Clear;
 qbuscar.SQL.Text := ' SELECT * FROM PTCorteSucursalDeposito ORDER BY CorteID, '+
                     ' FormaDePagoID, MonedaId, Valor, SINPRFILTER ';
 qbuscar.Open;

 If (qbuscar.RecordCount > 0) Then
   Begin
     qbuscar.First;
     While Not qbuscar.Eof Do
      Begin
        qupdate.Close;
        qupdate.SQL.Clear;
        qupdate.sql.Text := ' UPDATE PTCorteSucursalDeposito SET '+
                            ' RefRecId = :ref, '+
                            ' RecId = :rec '+
                            ' WHERE CorteID = :cor '+
                            ' AND FormaDePagoID = :frm '+
                            ' AND MonedaId = :cur '+
                            ' AND Valor = :val '+
                            ' AND SINPRFILTER = :fil ';
        qupdate.Parameters.ParamByName('ref').Value := Get_Corte_Caja;
        qupdate.Parameters.ParamByName('rec').Value := GetSecuenciaId;
        qupdate.Parameters.ParamByName('cor').Value := qbuscar.FieldByName('CorteID').AsString;
        qupdate.Parameters.ParamByName('frm').Value := qbuscar.FieldByName('FormaDePagoID').AsString;
        qupdate.Parameters.ParamByName('cur').Value := qbuscar.FieldByName('MonedaId').AsString;
        qupdate.Parameters.ParamByName('val').Value := qbuscar.FieldByName('Valor').Value;
        qupdate.Parameters.ParamByName('fil').Value := qbuscar.FieldByName('SINPRFILTER').AsInteger;
        qupdate.ExecSQL;

        qbuscar.Next;
      End;
   End;

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

//  FreeAndNil(qbuscar);
//  FreeAndNil(qupdate);

  DM.Info('Se Acaba de Actualizar Los Cobros de Caja.!!!');
end;


Function TfrmProcesosPorLote.Get_Corte_Caja : Int64;
begin
 qcobros.Close;
 qcobros.SQL.Clear;
 qcobros.sql.Text := ' SELECT * FROM PTCorteCajaCab WHERE CorteID = :cor ';
 qcobros.Open;
 qcobros.First;

 If (qcobros.RecordCount > 0) Then
   Result := strtoint64(qcobros.FieldByName('RecId').AsString)
 Else
   Result := GetSecuenciaId;

// FreeAndNil(qcobros);
End;


procedure TfrmProcesosPorLote.Actu_Usuarios;
begin
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

 qbuscar.Close;
 qbuscar.SQL.Clear;
 qbuscar.SQL.Text := ' SELECT * FROM SysUsuarios ORDER BY UserId ';
 qbuscar.Open;

 If (qbuscar.RecordCount > 0) Then
   Begin
     qbuscar.First;
     While Not qbuscar.Eof Do
      Begin
        qupdate.Close;
        qupdate.SQL.Clear;
        qupdate.sql.Text := ' UPDATE SysUsuarios SET '+
                            ' RecId = :rec '+
                            ' WHERE UserId = :usr ';
        qupdate.Parameters.ParamByName('rec').Value := GetSecuenciaId;
        qupdate.Parameters.ParamByName('usr').Value := qbuscar.FieldByName('UserId').AsString;
        qupdate.ExecSQL;

        qbuscar.Next;
      End;
   End;

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
 qbuscar.Close;
 qbuscar.SQL.Clear;
 qbuscar.SQL.Text := ' SELECT * FROM PTUsuarioSucursal '+
                     ' ORDER BY SucursalID, UserId ';
 qbuscar.Open;

 If (qbuscar.RecordCount > 0) Then
   Begin
     qbuscar.First;
     While Not qbuscar.Eof Do
      Begin
        qupdate.Close;
        qupdate.SQL.Clear;
        qupdate.sql.Text := ' UPDATE PTUsuarioSucursal SET '+
                            ' RecId = :rec '+
                            ' WHERE SucursalID = :suc '+
                            ' AND UserId = :usr ';
        qupdate.Parameters.ParamByName('rec').Value := GetSecuenciaId;
        qupdate.Parameters.ParamByName('suc').Value := qbuscar.FieldByName('SucursalID').AsString;
        qupdate.Parameters.ParamByName('usr').Value := qbuscar.FieldByName('UserId').AsString;
        qupdate.ExecSQL;

        qbuscar.Next;
      End;
   End;

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
 qbuscar.Close;
 qbuscar.SQL.Clear;
 qbuscar.SQL.Text := ' SELECT * FROM PTUsuarioDescuento '+
                     ' ORDER BY SucursalID, UserId, Descuento ';
 qbuscar.Open;

 If (qbuscar.RecordCount > 0) Then
   Begin
     qbuscar.First;
     While Not qbuscar.Eof Do
      Begin
        qupdate.Close;
        qupdate.SQL.Clear;
        qupdate.sql.Text := ' UPDATE PTUsuarioDescuento SET '+
                            ' RecId = :rec '+
                            ' WHERE SucursalID = :suc '+
                            ' AND UserId = :usr '+
                            ' AND Descuento = :des ';
        qupdate.Parameters.ParamByName('rec').Value := GetSecuenciaId;
        qupdate.Parameters.ParamByName('suc').Value := qbuscar.FieldByName('SucursalID').AsString;
        qupdate.Parameters.ParamByName('usr').Value := qbuscar.FieldByName('UserId').AsString;
        qupdate.Parameters.ParamByName('des').Value := qbuscar.FieldByName('Descuento').Value;
        qupdate.ExecSQL;

        qbuscar.Next;
      End;
   End;

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

//  FreeAndNil(qbuscar);
//  FreeAndNil(qupdate);

  DM.Info('Se Acaba de Actualizar Los Usuarios del Sistema.!!!');
end;




END.



