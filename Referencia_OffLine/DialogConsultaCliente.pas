unit DialogConsultaCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DialogConsulta, cxGraphics, Menus, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, ADODB,
  dxLayoutControl, cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,
  StdCtrls, cxButtons, cxTextEdit, cxContainer, cxMaskEdit, cxDropDownEdit,
  DialogCobro, cxImageComboBox, cxLookupEdit, cxDBLookupEdit,
  cxDBExtLookupComboBox, cxintl, cxLabel,dlgmensajes, cxGridCardView,
  cxGridBandedTableView;

type
  TfrmDialogConsultaCliente = class(TfrmDialogConsulta)
    dbDatosClienteID: TcxGridDBColumn;
    dbDatosNombre: TcxGridDBColumn;
    dbDatosTelefono: TcxGridDBColumn;
    edtipocliente: TcxExtLookupComboBox;
    dxLayoutControl1Item3: TdxLayoutItem;
    qrClientes: TADOQuery;
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
    qrClientesGRUPODESCUENTOLINEA: TStringField;
    qrClientesGRUPODESCUENTOTOTAL: TStringField;
    qrClientesSINPRFILTER: TIntegerField;
    cxLabel1: TcxLabel;
    dbDatosFAX: TcxGridDBColumn;
    dbDatosTELEFONO2: TcxGridDBColumn;
    dbDatosCodigoIDAS400: TcxGridDBColumn;
    qrClientesRECID: TLargeintField;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle56: TcxStyle;
    cxStyle57: TcxStyle;
    cxStyle58: TcxStyle;
    cxStyle59: TcxStyle;
    cxStyle60: TcxStyle;
    cxStyle61: TcxStyle;
    cxStyle62: TcxStyle;
    cxStyle63: TcxStyle;
    cxStyle64: TcxStyle;
    cxStyle65: TcxStyle;
    cxStyle66: TcxStyle;
    cxStyle67: TcxStyle;
    cxStyle68: TcxStyle;
    cxStyle69: TcxStyle;
    cxStyle70: TcxStyle;
    cxStyle71: TcxStyle;
    cxStyle72: TcxStyle;
    cxStyle73: TcxStyle;
    cxStyle74: TcxStyle;
    cxStyle75: TcxStyle;
    cxStyle76: TcxStyle;
    cxStyle77: TcxStyle;
    cxStyle78: TcxStyle;
    cxStyle79: TcxStyle;
    cxStyle80: TcxStyle;
    cxStyle81: TcxStyle;
    cxStyle82: TcxStyle;
    cxStyle83: TcxStyle;
    cxStyle84: TcxStyle;
    cxStyle85: TcxStyle;
    cxStyle86: TcxStyle;
    cxStyle87: TcxStyle;
    cxStyle88: TcxStyle;
    cxStyle89: TcxStyle;
    cxStyle90: TcxStyle;
    cxStyle91: TcxStyle;
    cxStyle92: TcxStyle;
    cxStyle93: TcxStyle;
    cxStyle94: TcxStyle;
    cxStyle95: TcxStyle;
    cxStyle96: TcxStyle;
    cxStyle97: TcxStyle;
    cxStyle98: TcxStyle;
    cxStyle99: TcxStyle;
    cxStyle100: TcxStyle;
    cxStyle101: TcxStyle;
    cxStyle102: TcxStyle;
    cxStyle103: TcxStyle;
    cxStyle104: TcxStyle;
    cxStyle105: TcxStyle;
    cxStyle106: TcxStyle;
    cxStyle107: TcxStyle;
    cxStyle108: TcxStyle;
    cxStyle109: TcxStyle;
    cxStyle110: TcxStyle;
    cxStyle111: TcxStyle;
    cxGridBandedTableViewStyleSheet1: TcxGridBandedTableViewStyleSheet;
    cxGridCardViewStyleSheet1: TcxGridCardViewStyleSheet;
    cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet;
    dbDatosEstatus: TcxGridDBColumn;
    cxStyle1: TcxStyle;
    procedure dbDatosStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
    procedure edtipoclienteExit(Sender: TObject);
    procedure cgDatosExit(Sender: TObject);
    procedure cgDatosEnter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure edbuscarPropertiesChange(Sender: TObject);
    procedure BuscarData;
    function CodGrupo(Descripcion : String) : String;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Run;
  end;

var
  frmDialogConsultaCliente: TfrmDialogConsultaCliente;
  adentrogrid, _buscar : Boolean;

implementation

uses DataModule, PuntoVenta, Main;

{$R *.dfm}



function TfrmDialogConsultaCliente.CodGrupo(Descripcion: string) : String;
Var
 qfind : TADOQuery;
begin
  qfind := DM.NewQuery;
  qfind.Close;
  qfind.SQL.Text := ' SELECT * FROM PTGrupoCliente WHERE Descripcion = ' + #39 + Descripcion + #39 +
                    ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39;
  qfind.Open;
  result := qfind.FieldByName('GrupoCliente').AsString;
  FreeAndNil(qfind);
end;


procedure TfrmDialogConsultaCliente.dbDatosStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;
    if ARecord.Values[dbDatosEstatus.Index] <>  0 then
        AStyle := cxStyle1
     else
        AStyle := cxStyle56;
end;

procedure TfrmDialogConsultaCliente.BuscarData;
var
 sqlString : String;
begin
 sqlString := 'SELECT * FROM PTCliente WHERE IsNull(ClienteId,'+#39+#39+')<>'+#39+#39;
 If (edtipocliente.Text <> '') And (edtipocliente.Text <> 'TODOS') And (edtipocliente.Text <> 'Todos') Then
 begin
    sqlString := sqlString + ' AND GrupoCliente = '+ #39 + CodGrupo(edtipocliente.Text) + #39;
 end;

 If (edbuscar.Text <> '') then
 begin
    case edbuscarpor.ItemIndex of
     0 : sqlString := sqlString + ' AND ClienteID LIKE '+#39+'%'+edbuscar.Text+'%'+#39;
     1 : sqlString := sqlString + ' AND Nombre LIKE '+#39+'%'+edbuscar.Text+'%'+#39;
     2 : sqlString := sqlString + ' AND Telefono LIKE '+#39+'%'+edbuscar.Text+'%'+#39;
     3 : sqlString := sqlString + ' AND CodigoIDAS400 LIKE '+#39+'%'+edbuscar.Text+'%'+#39;
    end;
 end;

 If (frmMain.Recibo = True) or (frmMain.Exis_Cli = True) Or (frmMain.Tran_fer = True) then
 Begin
    sqlString := 'SELECT * FROM PTCliente WHERE IsNull(ClienteId,'+#39+#39+')<>'+#39+#39;
    If (edbuscar.Text <> '') then
    begin
        case edbuscarpor.ItemIndex of
         0 : sqlString := sqlString + ' AND ClienteID LIKE '+#39+'%'+edbuscar.Text+'%'+#39;
         1 : sqlString := sqlString + ' AND Nombre LIKE '+#39+'%'+edbuscar.Text+'%'+#39;
         2 : sqlString := sqlString + ' AND Telefono LIKE '+#39+'%'+edbuscar.Text+'%'+#39;
         3 : sqlString := sqlString + ' AND CodigoIDAS400 LIKE '+#39+'%'+edbuscar.Text+'%'+#39;
        end;
    end;
 end;

 If (frmMain.Exis_Vta = True) then
 Begin
      if Factura_St = 'I' Then
      begin
          if (frmMain.frmTmp.qfindSucursal.FieldByName('Cliente_Uno').AsString <> '') Then
          Begin
            sqlString := 'SELECT * FROM PTCliente WHERE IsNull(ClienteId,'+#39+#39+')<>'+#39+#39;
            sqlString := sqlString + ' AND ClienteID LIKE '+#39+'%'+ frmMain.frmTmp.qfindSucursal.FieldByName('Cliente_Uno').AsString +'%'+#39;
            sqlString := sqlString + ' OR ClienteID LIKE '+#39+'%'+ frmMain.frmTmp.qfindSucursal.FieldByName('Cliente_Dos').AsString +'%'+#39;
          end
      end
      else
      if Factura_St = 'M' Then
      begin
          if (frmMain.frmTmpMod.qfindSucursal.FieldByName('Cliente_Uno').AsString <> '') Then
          Begin
            sqlString := 'SELECT * FROM PTCliente WHERE IsNull(ClienteId,'+#39+#39+')<>'+#39+#39;
            sqlString := sqlString + ' AND ClienteID LIKE '+#39+'%'+ frmMain.frmTmpMod.qfindSucursal.FieldByName('Cliente_Uno').AsString +'%'+#39;
            sqlString := sqlString + ' OR ClienteID LIKE '+#39+'%'+ frmMain.frmTmpMod.qfindSucursal.FieldByName('Cliente_Dos').AsString +'%'+#39;
          end;
      end
      else
      if Factura_St = 'L' Then
      begin
          if (frmMain.frmTmpLab.qfindSucursal.FieldByName('Cliente_Uno').AsString <> '') Then
          Begin
            sqlString := 'SELECT * FROM PTCliente WHERE IsNull(ClienteId,'+#39+#39+')<>'+#39+#39;
            sqlString := sqlString + ' AND ClienteID LIKE '+#39+'%'+ frmMain.frmTmpLab.qfindSucursal.FieldByName('Cliente_Uno').AsString +'%'+#39;
            sqlString := sqlString + ' OR ClienteID LIKE '+#39+'%'+ frmMain.frmTmpLab.qfindSucursal.FieldByName('Cliente_Dos').AsString +'%'+#39;
          end;
      end
      else
      if Factura_St = 'C' Then
      begin
          if (frmMain.frmClinica.qfindSucursal.FieldByName('Cliente_Uno').AsString <> '') Then
          Begin
            sqlString := 'SELECT * FROM PTCliente WHERE IsNull(ClienteId,'+#39+#39+')<>'+#39+#39;
            sqlString := sqlString + ' AND ClienteID LIKE '+#39+'%'+ frmMain.frmClinica.qfindSucursal.FieldByName('Cliente_Uno').AsString +'%'+#39;
            sqlString := sqlString + ' OR ClienteID LIKE '+#39+'%'+ frmMain.frmClinica.qfindSucursal.FieldByName('Cliente_Dos').AsString +'%'+#39;
          end;
      end
      else
      if Factura_St = 'N' Then
      begin
          if (frmMain.frmTmpNCR.qfindSucursal.FieldByName('Cliente_Uno').AsString <> '') Then
          Begin
            sqlString := 'SELECT * FROM PTCliente WHERE IsNull(ClienteId,'+#39+#39+')<>'+#39+#39;
            sqlString := sqlString + ' AND ClienteID LIKE '+#39+'%'+ frmMain.frmTmpNCR.qfindSucursal.FieldByName('Cliente_Uno').AsString +'%'+#39;
            sqlString := sqlString + ' OR ClienteID LIKE '+#39+'%'+ frmMain.frmTmpNCR.qfindSucursal.FieldByName('Cliente_Dos').AsString +'%'+#39;
          end;
      end
      else
      if Factura_St = 'F' Then
      begin
          if (frmMain.frmTmpND.qfindSucursal.FieldByName('Cliente_Uno').AsString <> '') Then
          Begin
            sqlString := 'SELECT * FROM PTCliente WHERE IsNull(ClienteId,'+#39+#39+')<>'+#39+#39;
            sqlString := sqlString + ' AND ClienteID LIKE '+#39+'%'+ frmMain.frmTmpND.qfindSucursal.FieldByName('Cliente_Uno').AsString +'%'+#39;
            sqlString := sqlString + ' OR ClienteID LIKE '+#39+'%'+ frmMain.frmTmpND.qfindSucursal.FieldByName('Cliente_Dos').AsString +'%'+#39;
          end;
      end;
 end;

 If (Trim(edTipoCliente.Text) ='AMBULATORIOS') And (Trim(edbuscarpor.Text) <> EmptyStr) and
    (Trim(edbuscar.Text) = EmptyStr) then
 begin
      EtMensajeDlg('Debe escribir criterio de b�squeda en el Texto Tipo Cliente Ambulatorio.  Verifique.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
      edbuscar.SetFocus;
      Exit;
 end;

 sqlString := sqlString + ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39;
 qrClientes.Close;
 qrClientes.SQL.Text := sqlString + ' ORDER BY ClienteId ';
 qrClientes.Open;
end;


procedure TfrmDialogConsultaCliente.cgDatosEnter(Sender: TObject);
begin
  inherited;
  adentrogrid := True;
  _buscar := False;
end;


procedure TfrmDialogConsultaCliente.cgDatosExit(Sender: TObject);
begin
  inherited;
  adentrogrid := False;
  _buscar := True;
end;


procedure TfrmDialogConsultaCliente.edbuscarPropertiesChange(Sender: TObject);
begin
  inherited;
  _buscar := True;
  adentrogrid := False;
//  BuscarData;
end;


procedure TfrmDialogConsultaCliente.edtipoclienteExit(Sender: TObject);
begin
  inherited;
  _buscar := True;
  adentrogrid := False;
//  BuscarData;
end;


procedure TfrmDialogConsultaCliente.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = Vk_Down) and (not AdentroGrid) then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);

  if (key = 13) and (not AdentroGrid) then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);

  if (key = Vk_Up) and (not AdentroGrid) then
     PostMessage(Handle, Wm_NextDlgCtl, 1, 0);

  if (key = 13) and (AdentroGrid) then
    begin
      Close;
      ModalResult := mrOk;
    end;

  if (key = 13) and (_buscar) then
    begin
      If (AdentroGrid) then
        Begin
          Close;
          ModalResult := mrOk;
        end
      Else
        BuscarData;
    end;

  if (key = 27) then
    begin
      Close;
    end;

  if (key = vk_f9) then
    begin
      Close;

      if (qrClientes.RecordCount >0) then
        ModalResult := mrOk;
    end;
end;


procedure TfrmDialogConsultaCliente.FormShow(Sender: TObject);
begin
  inherited;
  _buscar := True;
  adentrogrid := False;
  DM.qrParametro.close;
  DM.qrParametro.open;

  If (frmMain.Exis_Vta = True) then
  Begin
//      edtipocliente.Text:= frmMain.frmTmp.qrEntradaPacienteOrigen.Value;

      If Factura_St = 'I' Then
      begin
          edtipocliente.Text := frmMain.frmTmp.edtipocliente.Text;
          edtipocliente.Properties.ReadOnly := False;
          if (frmMain.frmTmp.qfindSucursal.FieldByName('Cliente_Uno').AsString <> '') Then
            edtipocliente.Properties.ReadOnly := True;
      end
      else
      If Factura_St = 'M' Then
      begin
          edtipocliente.Text := frmMain.frmTmpMod.edtipocliente.Text;
          edtipocliente.Properties.ReadOnly := False;
          if (frmMain.frmTmpMod.qfindSucursal.FieldByName('Cliente_Uno').AsString <> '') Then
            edtipocliente.Properties.ReadOnly := True;
      end
      else
      If Factura_St = 'L' Then
      begin
          edtipocliente.Text := frmMain.frmTmpLab.edtipocliente.Text;
          edtipocliente.Properties.ReadOnly := False;
          if (frmMain.frmTmpLab.qfindSucursal.FieldByName('Cliente_Uno').AsString <> '') Then
            edtipocliente.Properties.ReadOnly := True;
      end
      else
      If Factura_St = 'C' Then
      begin
          edtipocliente.Text := frmMain.frmClinica.edtipocliente.Text;
          edtipocliente.Properties.ReadOnly := False;
          if (frmMain.frmClinica.qfindSucursal.FieldByName('Cliente_Uno').AsString <> '') Then
            edtipocliente.Properties.ReadOnly := True;
      end
      else
      If Factura_St = 'N' Then
      begin
          edtipocliente.Text                  := frmMain.frmTmpNCR.edtipocliente.Text;
          edtipocliente.Properties.ReadOnly   := False;
          if (frmMain.frmTmpNCR.qfindSucursal.FieldByName('Cliente_Uno').AsString <> '') Then
            edtipocliente.Properties.ReadOnly := True;
      end
      else
      If Factura_St = 'F' Then
      begin
          edtipocliente.Text                  := frmMain.frmTmpND.edtipocliente.Text;
          edtipocliente.Properties.ReadOnly   := False;
          if (frmMain.frmTmpND.qfindSucursal.FieldByName('Cliente_Uno').AsString <> '') Then
            edtipocliente.Properties.ReadOnly := True;
      end;
  end;
  If (frmMain.Exis_Lab = True) then
  Begin
//      edtipocliente.Text:= frmMain.frmTmp.qrEntradaPacienteOrigen.Value;
      if Factura_St = 'I' Then
      begin
          edtipocliente.Text := frmMain.frmLab.edtipocliente.Text;
          edtipocliente.Properties.ReadOnly := True;
      end
      else
      if Factura_St = 'M' Then
      begin
          edtipocliente.Text := frmMain.frmLabMod.edtipocliente.Text;
          edtipocliente.Properties.ReadOnly := True;
      end
      else
      if Factura_St = 'L' Then
      begin
          edtipocliente.Text := frmMain.frmLabLab.edtipocliente.Text;
          edtipocliente.Properties.ReadOnly := True;
      end
      else
      if Factura_St = 'C' Then
      begin
          edtipocliente.Text := frmMain.frmClinica.edtipocliente.Text;
          edtipocliente.Properties.ReadOnly := True;
      end
      else
      if Factura_St = 'N' Then
      begin
          edtipocliente.Text := frmMain.frmLabNCR.edtipocliente.Text;
          edtipocliente.Properties.ReadOnly := True;
      end
      else
      if Factura_St = 'F' Then
      begin
          edtipocliente.Text := frmMain.frmLabND.edtipocliente.Text;
          edtipocliente.Properties.ReadOnly := True;
      end;
  end;

  If (frmMain.Exis_Cli = True) Or (frmMain.Tran_fer = True) then
  Begin
      If (frmMain.Exis_Cli = True) then
        edtipocliente.Text := frmMain.frmClinica.edtipocliente.Text;

      If (frmMain.Tran_fer = True) then
        edtipocliente.Text := '';

      edtipocliente.Properties.ReadOnly := False;
      edbuscarpor.ItemIndex := 1;
  end;
//  BuscarData;
  edbuscarpor.ItemIndex := 1;
  edbuscar.SetFocus;
end;

procedure TfrmDialogConsultaCliente.Run;
Var
 qfind : TADOQuery;
begin
 showmodal;
 if ModalResult = mrOk then
 begin
  DM.qrParametro.Close;
  DM.qrParametro.Open;

  qfind := DM.NewQuery;
  qfind.Close;
  qfind.SQL.Text := ' SELECT * FROM PTProyecto WHERE ClienteID = ' + #39 + qrClientesClienteID.Value + #39 +
                    ' ORDER BY ProyectoId ';
//                    ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39;
  qfind.Open;
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
  If (frmMain.Exis_Vta = True) then
  Begin
        If (qrClientes.RecordCount > 0) And
         (qrClientesESTATUS.Value > 0) Then
        Begin
          If (qrClientesESTATUS.Value = 1) Then
              Raise exception.CreateFmt(' El Cliente: (' + qrClientesClienteID.AsString + ') ' + qrClientesNombre.AsString + #13 +
                                      ' NO Puede Facturarse porque: '+ #13 + ' Tiene el CREDITO CANCELADO.!!! ' + #13 +
                                      ' Si Desea, Puede Comunicarse con el Departamento de Cobros.!!!', []);

          If (qrClientesESTATUS.Value = 2) Then
              Raise exception.CreateFmt(' El Cliente: (' + qrClientesClienteID.AsString + ') ' + qrClientesNombre.AsString + #13 +
                                      ' NO Puede Facturarse porque: '+ #13 + ' El Cliente ESTA INACTIVO.!!! ' + #13 +
                                      ' Si Desea, Puede Comunicarse con el Departamento de Cobros.!!!', []);
        End;
        // validacion PLANES PLATINIUM
        If dm.Verifica_Plan_Ex(qrClientes.FieldByName('ClienteID').AsString,EmptyStr) Then
        begin
              If Not dm.Verifica_Plan_Ex(qrClientes.FieldByName('ClienteID').AsString,dm.CurSucursal) Then
              Begin
                Raise exception.CreateFmt(' El Cliente: (' + qrClientesClienteID.AsString + ') ' + qrClientesNombre.AsString + #13 +
                                          ' NO Puede Facturarse '+ #13 + ' en esta Sucursal.!!! ' + #13 +
                                          ' Si Desea, Puede Comunicarse con el Departamento de Cobros.!!!', []);
              End;
         end;
      if Factura_St = 'I' Then
      begin
          frmMain.frmTmp.qrEntradaPacienteClienteNombre.Value := qrClientesNombre.AsString;
          frmMain.frmTmp.qrEntradaPacienteProyectoID.Value    := qfind.FieldByName('ProyectoID').AsString;
          frmMain.frmTmp.qrEntradaPacienteClienteID.Value     := qrClientesClienteID.Value;
          frmMain.frmTmp.qrEntradaPacienteOrigen.Value        := qrClientesGrupoCliente.Value;
          frmMain.frmTmp.qrEntradaPacienteSINPRFILTER.Value   := qrClientesSINPRFILTER.Value;
          frmMain.frmTmp.qrEntradaPacienteClaseCredito.Value  := qrClientesClaseCredito.Value;

          //OJO - GRUPO DE PRECIO Y FORMA DE PAGO.
          frmMain.frmTmp.qrEntradaPacienteGrupoDescuentoTotal.Value   := qrClientesGrupoDescuentoTotal.Value;
          frmMain.frmTmp.qrEntradaPacienteGrupoDescuentoLinea.Value   := qrClientesGrupoDescuentoLinea.Value;
          frmMain.frmTmp.qrEntradaPacienteGrupoPrecio.Value           := qrClientesGrupoPrecio.Value;
          frmMain.frmTmp.qrEntradaPacienteFormadePago.Value           := qrClientesFormaPago.Value;
          frmMain.frmTmp.Val_Forma_Pago(frmMain.frmTmp.qrEntradaPacienteFormadePago.Value);
      end
      else
      if Factura_St = 'M' Then
      begin
          frmMain.frmTmpMod.qrEntradaPacienteClienteNombre.Value := qrClientesNombre.AsString;
          frmMain.frmTmpMod.qrEntradaPacienteProyectoID.Value    := qfind.FieldByName('ProyectoID').AsString;
          frmMain.frmTmpMod.qrEntradaPacienteClienteID.Value     := qrClientesClienteID.Value;
          frmMain.frmTmpMod.qrEntradaPacienteOrigen.Value        := qrClientesGrupoCliente.Value;
          frmMain.frmTmpMod.qrEntradaPacienteSINPRFILTER.Value   := qrClientesSINPRFILTER.Value;
          frmMain.frmTmpMod.qrEntradaPacienteClaseCredito.Value  := qrClientesClaseCredito.Value;
          //OJO - GRUPO DE PRECIO Y FORMA DE PAGO.
          frmMain.frmTmpMod.qrEntradaPacienteGrupoDescuentoTotal.Value   := qrClientesGrupoDescuentoTotal.Value;
          frmMain.frmTmpMod.qrEntradaPacienteGrupoDescuentoLinea.Value   := qrClientesGrupoDescuentoLinea.Value;
          frmMain.frmTmpMod.qrEntradaPacienteGrupoPrecio.Value           := qrClientesGrupoPrecio.Value;
          frmMain.frmTmpMod.qrEntradaPacienteFormadePago.Value           := qrClientesFormaPago.Value;
          frmMain.frmTmpMod.Val_Forma_Pago(frmMain.frmTmpMod.qrEntradaPacienteFormadePago.Value);
      end
      else
      if Factura_St = 'L' Then
      begin
          frmMain.frmTmpLab.qrEntradaPacienteClienteNombre.Value := qrClientesNombre.AsString;
          frmMain.frmTmpLab.qrEntradaPacienteProyectoID.Value    := qfind.FieldByName('ProyectoID').AsString;
          frmMain.frmTmpLab.qrEntradaPacienteClienteID.Value     := qrClientesClienteID.Value;
          frmMain.frmTmpLab.qrEntradaPacienteOrigen.Value        := qrClientesGrupoCliente.Value;
          frmMain.frmTmpLab.qrEntradaPacienteSINPRFILTER.Value   := qrClientesSINPRFILTER.Value;
          frmMain.frmTmpLab.qrEntradaPacienteClaseCredito.Value  := qrClientesClaseCredito.Value;

          //OJO - GRUPO DE PRECIO Y FORMA DE PAGO.
          frmMain.frmTmpLab.qrEntradaPacienteGrupoDescuentoTotal.Value   := qrClientesGrupoDescuentoTotal.Value;
          frmMain.frmTmpLab.qrEntradaPacienteGrupoDescuentoLinea.Value   := qrClientesGrupoDescuentoLinea.Value;
          frmMain.frmTmpLab.qrEntradaPacienteGrupoPrecio.Value           := qrClientesGrupoPrecio.Value;
          frmMain.frmTmpLab.qrEntradaPacienteFormadePago.Value           := qrClientesFormaPago.Value;
          frmMain.frmTmpLab.Val_Forma_Pago(frmMain.frmTmpLab.qrEntradaPacienteFormadePago.Value);
      end
      else
      if Factura_St = 'C' Then
      begin
          frmMain.frmClinica.qrEntradaPacienteClienteNombre.Value := qrClientesNombre.AsString;
          frmMain.frmClinica.qrEntradaPacienteProyectoID.Value    := qfind.FieldByName('ProyectoID').AsString;
          frmMain.frmClinica.qrEntradaPacienteClienteID.Value     := qrClientesClienteID.Value;
          frmMain.frmClinica.qrEntradaPacienteOrigen.Value        := qrClientesGrupoCliente.Value;
          frmMain.frmClinica.qrEntradaPacienteSINPRFILTER.Value   := qrClientesSINPRFILTER.Value;
          frmMain.frmClinica.qrEntradaPacienteClaseCredito.Value  := qrClientesClaseCredito.Value;

          //OJO - GRUPO DE PRECIO Y FORMA DE PAGO.
          frmMain.frmClinica.qrEntradaPacienteGrupoDescuentoTotal.Value   := qrClientesGrupoDescuentoTotal.Value;
          frmMain.frmClinica.qrEntradaPacienteGrupoDescuentoLinea.Value   := qrClientesGrupoDescuentoLinea.Value;
          frmMain.frmClinica.qrEntradaPacienteGrupoPrecio.Value           := qrClientesGrupoPrecio.Value;
          frmMain.frmClinica.qrEntradaPacienteFormadePago.Value           := qrClientesFormaPago.Value;
          frmMain.frmClinica.Val_Forma_Pago(frmMain.frmClinica.qrEntradaPacienteFormadePago.Value);
      end
      else
      if Factura_St = 'N' Then
      begin
          frmMain.frmTmpNCR.qrEntradaPacienteClienteNombre.Value := qrClientesNombre.AsString;
          frmMain.frmTmpNCR.qrEntradaPacienteProyectoID.Value    := qfind.FieldByName('ProyectoID').AsString;
          frmMain.frmTmpNCR.qrEntradaPacienteClienteID.Value     := qrClientesClienteID.Value;
          frmMain.frmTmpNCR.qrEntradaPacienteOrigen.Value        := qrClientesGrupoCliente.Value;
          frmMain.frmTmpNCR.qrEntradaPacienteSINPRFILTER.Value   := qrClientesSINPRFILTER.Value;
          frmMain.frmTmpNCR.qrEntradaPacienteClaseCredito.Value  := qrClientesClaseCredito.Value;

          //OJO - GRUPO DE PRECIO Y FORMA DE PAGO.
          frmMain.frmTmpNCR.qrEntradaPacienteGrupoDescuentoTotal.Value   := qrClientesGrupoDescuentoTotal.Value;
          frmMain.frmTmpNCR.qrEntradaPacienteGrupoDescuentoLinea.Value   := qrClientesGrupoDescuentoLinea.Value;
          frmMain.frmTmpNCR.qrEntradaPacienteGrupoPrecio.Value           := qrClientesGrupoPrecio.Value;
          frmMain.frmTmpNCR.qrEntradaPacienteFormadePago.Value           := qrClientesFormaPago.Value;
          frmMain.frmTmpNCR.Val_Forma_Pago(frmMain.frmTmpNCR.qrEntradaPacienteFormadePago.Value);
      end
      else
      if Factura_St = 'F' Then
      begin
          frmMain.frmTmpND.qrEntradaPacienteClienteNombre.Value := qrClientesNombre.AsString;
          frmMain.frmTmpND.qrEntradaPacienteProyectoID.Value    := qfind.FieldByName('ProyectoID').AsString;
          frmMain.frmTmpND.qrEntradaPacienteClienteID.Value     := qrClientesClienteID.Value;
          frmMain.frmTmpND.qrEntradaPacienteOrigen.Value        := qrClientesGrupoCliente.Value;
          frmMain.frmTmpND.qrEntradaPacienteSINPRFILTER.Value   := qrClientesSINPRFILTER.Value;
          frmMain.frmTmpND.qrEntradaPacienteClaseCredito.Value  := qrClientesClaseCredito.Value;

          //OJO - GRUPO DE PRECIO Y FORMA DE PAGO.
          frmMain.frmTmpND.qrEntradaPacienteGrupoDescuentoTotal.Value   := qrClientesGrupoDescuentoTotal.Value;
          frmMain.frmTmpND.qrEntradaPacienteGrupoDescuentoLinea.Value   := qrClientesGrupoDescuentoLinea.Value;
          frmMain.frmTmpND.qrEntradaPacienteGrupoPrecio.Value           := qrClientesGrupoPrecio.Value;
          frmMain.frmTmpND.qrEntradaPacienteFormadePago.Value           := qrClientesFormaPago.Value;
          frmMain.frmTmpND.Val_Forma_Pago(frmMain.frmTmpND.qrEntradaPacienteFormadePago.Value);
      end;

      if qrClientesCoberturaPorc.value > 1 then
      begin
          if Factura_St = 'I' Then
          begin
              frmMain.frmTmp.qrEntradaPacienteCoberturaConfirmada.value := 0;
              frmMain.frmTmp.qrEntradaPacienteCoberturaPreConfirmada.value := 1;
              frmMain.frmTmp.qrEntradaPacienteCoberturaPorc.Value := qrClientesCoberturaPorc.value;
          end
          else if Factura_St = 'M' Then
          begin
              frmMain.frmTmpMod.qrEntradaPacienteCoberturaConfirmada.value := 0;
              frmMain.frmTmpMod.qrEntradaPacienteCoberturaPreConfirmada.value := 1;
              frmMain.frmTmpMod.qrEntradaPacienteCoberturaPorc.Value := qrClientesCoberturaPorc.value;
          end
          else if Factura_St = 'L' Then
          begin
              frmMain.frmTmpLab.qrEntradaPacienteCoberturaConfirmada.value := 0;
              frmMain.frmTmpLab.qrEntradaPacienteCoberturaPreConfirmada.value := 1;
              frmMain.frmTmpLab.qrEntradaPacienteCoberturaPorc.Value := qrClientesCoberturaPorc.value;
          end
          else if Factura_St = 'N' Then
          begin
              frmMain.frmTmpNCR.qrEntradaPacienteCoberturaConfirmada.value := 0;
              frmMain.frmTmpNCR.qrEntradaPacienteCoberturaPreConfirmada.value := 1;
              frmMain.frmTmpNCR.qrEntradaPacienteCoberturaPorc.Value := qrClientesCoberturaPorc.value;
          end
          else if Factura_St = 'F' Then
          begin
              frmMain.frmTmpND.qrEntradaPacienteCoberturaConfirmada.value := 0;
              frmMain.frmTmpND.qrEntradaPacienteCoberturaPreConfirmada.value := 1;
              frmMain.frmTmpND.qrEntradaPacienteCoberturaPorc.Value := qrClientesCoberturaPorc.value;
          end
        end
      else
        begin
          if Factura_St = 'I' Then
          begin
              frmMain.frmTmp.qrEntradaPacienteCoberturaPorc.Value := 0;
              frmMain.frmTmp.qrEntradaPacienteCoberturaConfirmada.Value := 0;
              frmMain.frmTmp.qrEntradaPacienteCoberturaPreConfirmada.value := 0;
          end
          else if Factura_St = 'M' Then
          begin
              frmMain.frmTmpMod.qrEntradaPacienteCoberturaPorc.Value := 0;
              frmMain.frmTmpMod.qrEntradaPacienteCoberturaConfirmada.Value := 0;
              frmMain.frmTmpMod.qrEntradaPacienteCoberturaPreConfirmada.value := 0;
          end
          else if Factura_St = 'L' Then
          begin
              frmMain.frmTmpLab.qrEntradaPacienteCoberturaPorc.Value := 0;
              frmMain.frmTmpLab.qrEntradaPacienteCoberturaConfirmada.Value := 0;
              frmMain.frmTmpLab.qrEntradaPacienteCoberturaPreConfirmada.value := 0;
          end
          else if Factura_St = 'N' Then
          begin
              frmMain.frmTmpNCR.qrEntradaPacienteCoberturaPorc.Value := 0;
              frmMain.frmTmpNCR.qrEntradaPacienteCoberturaConfirmada.Value := 0;
              frmMain.frmTmpNCR.qrEntradaPacienteCoberturaPreConfirmada.value := 0;
          end
          else if Factura_St = 'F' Then
          begin
              frmMain.frmTmpND.qrEntradaPacienteCoberturaPorc.Value := 0;
              frmMain.frmTmpND.qrEntradaPacienteCoberturaConfirmada.Value := 0;
              frmMain.frmTmpND.qrEntradaPacienteCoberturaPreConfirmada.value := 0;
          end
       end;

      If (qrClientesMonedaID.Value <> '') Then
      Begin
          if Factura_St = 'I' Then
          begin
              If (frmMain.frmTmp.qrEntradaPacienteTipoDocumento.Value = 3) Or
                 (frmMain.frmTmp.QrEntradaPacienteFactExterior.Value = 1) Then
              Begin
                  frmMain.frmTmp.qrEntradaPacienteNoAS400.Value := 1;
                  frmMain.frmTmp.qrEntradaPacienteNoAxapta.Value := 1;
                  frmMain.frmTmp.qrEntradaPacienteNoFactura.Value := 1;
                  frmMain.frmTmp.qrEntradaPacienteFactExterior.Value := 1;
                  frmMain.frmTmp.qrEntradaPacienteTipoDocumento.Value := 3;
                  frmMain.frmTmp.qrEntradaPacienteSINPRFILTER.Value   := 1;
                  frmMain.frmTmp.qrEntradaPacienteMonedaID.Value := DM.qrParametroMonedaDolares.Value;
              End
              Else
              Begin
                  frmMain.frmTmp.qrEntradaPacienteMonedaID.Value := qrClientesMonedaID.Value;
              End;
          end else if Factura_St = 'M' Then
          begin
              If (frmMain.frmTmpMod.qrEntradaPacienteTipoDocumento.Value = 3) Or
                 (frmMain.frmTmpMod.QrEntradaPacienteFactExterior.Value = 1) Then
              Begin
                  frmMain.frmTmpMod.qrEntradaPacienteNoAS400.Value := 1;
                  frmMain.frmTmpMod.qrEntradaPacienteNoAxapta.Value := 1;
                  frmMain.frmTmpMod.qrEntradaPacienteNoFactura.Value := 1;
                  frmMain.frmTmpMod.qrEntradaPacienteFactExterior.Value := 1;
                  frmMain.frmTmpMod.qrEntradaPacienteTipoDocumento.Value := 3;
                  frmMain.frmTmpMod.qrEntradaPacienteSINPRFILTER.Value   := 1;
                  frmMain.frmTmpMod.qrEntradaPacienteMonedaID.Value := DM.qrParametroMonedaDolares.Value;
              End
              Else
              Begin
                  frmMain.frmTmpMod.qrEntradaPacienteMonedaID.Value := qrClientesMonedaID.Value;
              End;
          end else if Factura_St = 'L' Then
          begin
              If (frmMain.frmTmpLab.qrEntradaPacienteTipoDocumento.Value = 3) Or
                 (frmMain.frmTmpLab.QrEntradaPacienteFactExterior.Value = 1) Then
              Begin
                  frmMain.frmTmpLab.qrEntradaPacienteNoAS400.Value := 1;
                  frmMain.frmTmpLab.qrEntradaPacienteNoAxapta.Value := 1;
                  frmMain.frmTmpLab.qrEntradaPacienteNoFactura.Value := 1;
                  frmMain.frmTmpLab.qrEntradaPacienteFactExterior.Value := 1;
                  frmMain.frmTmpLab.qrEntradaPacienteTipoDocumento.Value := 3;
                  frmMain.frmTmpLab.qrEntradaPacienteSINPRFILTER.Value   := 1;
                  frmMain.frmTmpLab.qrEntradaPacienteMonedaID.Value := DM.qrParametroMonedaDolares.Value;
              End
              Else
              Begin
                  frmMain.frmTmpLab.qrEntradaPacienteMonedaID.Value := qrClientesMonedaID.Value;
              End;
          end else if Factura_St = 'C' Then
          begin
              If (frmMain.frmClinica.qrEntradaPacienteTipoDocumento.Value = 3) Or
                 (frmMain.frmClinica.QrEntradaPacienteFactExterior.Value = 1) Then
              Begin
                  frmMain.frmClinica.qrEntradaPacienteNoAS400.Value := 1;
                  frmMain.frmClinica.qrEntradaPacienteNoAxapta.Value := 1;
                  frmMain.frmClinica.qrEntradaPacienteNoFactura.Value := 1;
                  frmMain.frmClinica.qrEntradaPacienteFactExterior.Value := 1;
                  frmMain.frmClinica.qrEntradaPacienteTipoDocumento.Value := 3;
                  frmMain.frmClinica.qrEntradaPacienteSINPRFILTER.Value   := 1;
                  frmMain.frmClinica.qrEntradaPacienteMonedaID.Value := DM.qrParametroMonedaDolares.Value;
              End
              Else
              Begin
                  frmMain.frmClinica.qrEntradaPacienteMonedaID.Value := qrClientesMonedaID.Value;
              End;
          end else if Factura_St = 'N' Then
          begin
              If (frmMain.frmTmpNCR.qrEntradaPacienteTipoDocumento.Value = 3) Or
                 (frmMain.frmTmpNCR.QrEntradaPacienteFactExterior.Value = 1) Then
              Begin
                  frmMain.frmTmpNCR.qrEntradaPacienteNoAS400.Value := 1;
                  frmMain.frmTmpNCR.qrEntradaPacienteNoAxapta.Value := 1;
                  frmMain.frmTmpNCR.qrEntradaPacienteNoFactura.Value := 1;
                  frmMain.frmTmpNCR.qrEntradaPacienteFactExterior.Value := 1;
                  frmMain.frmTmpNCR.qrEntradaPacienteTipoDocumento.Value := 3;
                  frmMain.frmTmpNCR.qrEntradaPacienteSINPRFILTER.Value   := 1;
                  frmMain.frmTmpNCR.qrEntradaPacienteMonedaID.Value := DM.qrParametroMonedaDolares.Value;
              End
              Else
              Begin
                  frmMain.frmTmpNCR.qrEntradaPacienteMonedaID.Value := qrClientesMonedaID.Value;
              End;
          end
          end else if Factura_St = 'F' Then
          begin
              If (frmMain.frmTmpND.qrEntradaPacienteTipoDocumento.Value = 3) Or
                 (frmMain.frmTmpND.QrEntradaPacienteFactExterior.Value = 1) Then
              Begin
                  frmMain.frmTmpND.qrEntradaPacienteNoAS400.Value := 1;
                  frmMain.frmTmpND.qrEntradaPacienteNoAxapta.Value := 1;
                  frmMain.frmTmpND.qrEntradaPacienteNoFactura.Value := 1;
                  frmMain.frmTmpND.qrEntradaPacienteFactExterior.Value := 1;
                  frmMain.frmTmpND.qrEntradaPacienteTipoDocumento.Value := 3;
                  frmMain.frmTmpND.qrEntradaPacienteSINPRFILTER.Value   := 1;
                  frmMain.frmTmpND.qrEntradaPacienteMonedaID.Value := DM.qrParametroMonedaDolares.Value;
              End
              Else
              Begin
                  frmMain.frmTmpND.qrEntradaPacienteMonedaID.Value := qrClientesMonedaID.Value;
              End;
          end
      End;

      //Validando Los Parametros de Descuentos.
//      frmMain.frmTmp.Val_Descuento;
//      frmMain.frmTmp.VerificarPagoDiferencia;
//      frmMain.frmTmp.ActTotales;

// OJO - BLOQUEADO PARA DAR MAYOR RAPIDEZ.      frmMain.frmTmp.RefrescarInterface;
      if Factura_St = 'I' Then
      begin
        frmMain.frmTmp.Agregar_Pacientes(qrClientesClienteID.Value)
      end
      else if Factura_St = 'M' Then
      begin
        frmMain.frmTmpMod.Agregar_Pacientes(qrClientesClienteID.Value)
      end
      else if Factura_St = 'L' Then
      begin
        frmMain.frmTmpLab.Agregar_Pacientes(qrClientesClienteID.Value)
      end
      else if Factura_St = 'C' Then
      begin
        frmMain.frmClinica.Agregar_Pacientes(qrClientesClienteID.Value)
      end
      else if Factura_St = 'N' Then
      begin
        frmMain.frmTmpNCR.Agregar_Pacientes(qrClientesClienteID.Value)
      end
      else if Factura_St = 'F' Then
      begin
        frmMain.frmTmpND.Agregar_Pacientes(qrClientesClienteID.Value)
      end;
    end;
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
  If (frmMain.Exis_Cli = True) And (frmMain.Tran_fer <> True) then
    Begin
      If (qrClientes.RecordCount > 0) And
         (qrClientesESTATUS.Value > 0) Then
        Begin
          If (qrClientesESTATUS.Value = 1) Then
            Raise exception.CreateFmt(' El Cliente: (' + qrClientesClienteID.AsString + ') ' + qrClientesNombre.AsString + #13 +
                                      ' NO Puede Facturarse porque: '+ #13 + ' Tiene el CREDITO CANCELADO.!!! ' + #13 +
                                      ' Si Desea, Puede Comunicarse con el Departamento de Cobros.!!!', []);

          If (qrClientesESTATUS.Value = 2) Then
            Raise exception.CreateFmt(' El Cliente: (' + qrClientesClienteID.AsString + ') ' + qrClientesNombre.AsString + #13 +
                                      ' NO Puede Facturarse porque: '+ #13 + ' El Cliente ESTA INACTIVO.!!! ' + #13 +
                                      ' Si Desea, Puede Comunicarse con el Departamento de Cobros.!!!', []);
        End;

      frmMain.frmClinica.qrEntradaPacienteClienteNombre.Value := qrClientesNombre.AsString;
      frmMain.frmClinica.qrEntradaPacienteProyectoID.Value    := qfind.FieldByName('ProyectoID').AsString;
      frmMain.frmClinica.qrEntradaPacienteOrigen.Value        := qrClientesGrupoCliente.Value;
      frmMain.frmClinica.qrEntradaPacienteClienteID.Value     := qrClientesClienteID.Value;
      frmMain.frmTmp.qrEntradaPacienteSINPRFILTER.Value       := qrClientesSINPRFILTER.Value;

      //OJO - GRUPO DE PRECIO Y FORMA DE PAGO.
      frmMain.frmClinica.qrEntradaPacienteGrupoDescuentoTotal.Value   := qrClientesGrupoDescuentoTotal.Value;
      frmMain.frmClinica.qrEntradaPacienteGrupoDescuentoLinea.Value   := qrClientesGrupoDescuentoLinea.Value;
      frmMain.frmClinica.qrEntradaPacienteGrupoPrecio.Value           := qrClientesGrupoPrecio.Value;
      frmMain.frmClinica.qrEntradaPacienteFormadePago.Value           := qrClientesFormaPago.Value;
      frmMain.frmClinica.Val_Forma_Pago(frmMain.frmClinica.qrEntradaPacienteFormadePago.Value);

      if qrClientesCoberturaPorc.value > 1 then
        begin
          frmMain.frmClinica.qrEntradaPacienteCoberturaConfirmada.value := 0;
          frmMain.frmClinica.qrEntradaPacienteCoberturaPreConfirmada.value := 1;
          frmMain.frmClinica.qrEntradaPacienteCoberturaPorc.Value := qrClientesCoberturaPorc.value;
        end
      else
        begin
          frmMain.frmClinica.qrEntradaPacienteCoberturaPorc.Value := 0;
          frmMain.frmClinica.qrEntradaPacienteCoberturaConfirmada.Value := 0;
          frmMain.frmClinica.qrEntradaPacienteCoberturaPreConfirmada.value := 0;
        end;

      If (qrClientesMonedaID.Value <> '') Then
        Begin
          If (frmMain.frmClinica.qrEntradaPacienteTipoDocumento.Value = 3) Or
             (frmMain.frmClinica.QrEntradaPacienteFactExterior.Value = 1) Then
            Begin
              frmMain.frmClinica.qrEntradaPacienteNoAS400.Value := 1;
              frmMain.frmClinica.qrEntradaPacienteNoAxapta.Value := 1;
              frmMain.frmClinica.qrEntradaPacienteNoFactura.Value := 1;
              frmMain.frmClinica.qrEntradaPacienteFactExterior.Value := 1;
              frmMain.frmClinica.qrEntradaPacienteTipoDocumento.Value := 3;
              frmMain.frmClinica.qrEntradaPacienteMonedaID.Value := DM.qrParametroMonedaDolares.Value;
            End
          Else
            Begin
              frmMain.frmClinica.qrEntradaPacienteMonedaID.Value := qrClientesMonedaID.Value;
            End;
        End;

      //Validando Los Parametros de Descuentos.
//      frmMain.frmClinica.Val_Descuento;
//      frmMain.frmClinica.VerificarPagoDiferencia;
//      frmMain.frmClinica.ActTotales;

// OJO - BLOQUEADO PARA DAR MAYOR RAPIDEZ.      frmMain.frmClinica.RefrescarInterface;
      frmMain.frmClinica.Agregar_Pacientes(qrClientesClienteID.Value);
    end;
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
  If (frmMain.Exis_Lab = True) then
  Begin
      If (qrClientes.RecordCount > 0) And
         (qrClientesESTATUS.Value > 0) Then
        Begin
          If (qrClientesESTATUS.Value = 1) Then
            Raise exception.CreateFmt(' El Cliente: (' + qrClientesClienteID.AsString + ') ' + qrClientesNombre.AsString + #13 +
                                      ' NO Puede Facturarse porque: '+ #13 + ' Tiene el CREDITO CANCELADO.!!! ' + #13 +
                                      ' Si Desea, Puede Comunicarse con el Departamento de Cobros.!!!', []);

          If (qrClientesESTATUS.Value = 2) Then
            Raise exception.CreateFmt(' El Cliente: (' + qrClientesClienteID.AsString + ') ' + qrClientesNombre.AsString + #13 +
                                      ' NO Puede Facturarse porque: '+ #13 + ' El Cliente ESTA INACTIVO.!!! ' + #13 +
                                      ' Si Desea, Puede Comunicarse con el Departamento de Cobros.!!!', []);
        End;

      if Factura_St = 'I' Then
      begin
          frmMain.frmLab.qrEntradaPacienteClienteID.Value     := qrClientesClienteID.Value;
          frmMain.frmTmp.qrEntradaPacienteSINPRFILTER.Value   := qrClientesSINPRFILTER.Value;
          frmMain.frmLab.qrEntradaPacienteClienteNombre.Value := qrClientesNombre.AsString;
          frmMain.frmLab.qrEntradaPacienteProyectoID.Value    := qfind.FieldByName('ProyectoID').AsString;
          frmMain.frmLab.qrEntradaPacienteCoberturaPorc.Value := 0;
          frmMain.frmLab.qrEntradaPacienteCoberturaConfirmada.Value := 0;

          If (qrClientesMonedaID.Value <> '') Then
            Begin
              If (frmMain.frmLab.qrEntradaPacienteTipoDocumento.Value = 3) Or
                 (frmMain.frmLab.QrEntradaPacienteFactExterior.Value = 1) Then
                Begin
                  frmMain.frmLab.qrEntradaPacienteNoAS400.Value := 1;
                  frmMain.frmLab.qrEntradaPacienteNoAxapta.Value := 1;
                  frmMain.frmLab.qrEntradaPacienteNoFactura.Value := 1;
                  frmMain.frmLab.qrEntradaPacienteFactExterior.Value := 1;
                  frmMain.frmLab.qrEntradaPacienteTipoDocumento.Value := 3;
                  frmMain.frmLab.qrEntradaPacienteMonedaID.Value := DM.qrParametroMonedaDolares.Value;
                End
              Else
                Begin
                  frmMain.frmLab.qrEntradaPacienteMonedaID.Value := qrClientesMonedaID.Value;
                End;
            End;
      end
      else if Factura_St = 'M' Then
      begin
          frmMain.frmLabMod.qrEntradaPacienteClienteID.Value     := qrClientesClienteID.Value;
          frmMain.frmLabMod.qrEntradaPacienteSINPRFILTER.Value   := qrClientesSINPRFILTER.Value;
          frmMain.frmLabMod.qrEntradaPacienteClienteNombre.Value := qrClientesNombre.AsString;
          frmMain.frmLabMod.qrEntradaPacienteProyectoID.Value    := qfind.FieldByName('ProyectoID').AsString;
          frmMain.frmLabMod.qrEntradaPacienteCoberturaPorc.Value := 0;
          frmMain.frmLabMod.qrEntradaPacienteCoberturaConfirmada.Value := 0;

          If (qrClientesMonedaID.Value <> '') Then
            Begin
              If (frmMain.frmLabMod.qrEntradaPacienteTipoDocumento.Value = 3) Or
                 (frmMain.frmLabMod.QrEntradaPacienteFactExterior.Value = 1) Then
                Begin
                  frmMain.frmLabMod.qrEntradaPacienteNoAS400.Value := 1;
                  frmMain.frmLabMod.qrEntradaPacienteNoAxapta.Value := 1;
                  frmMain.frmLabMod.qrEntradaPacienteNoFactura.Value := 1;
                  frmMain.frmLabMod.qrEntradaPacienteFactExterior.Value := 1;
                  frmMain.frmLabMod.qrEntradaPacienteTipoDocumento.Value := 3;
                  frmMain.frmLabMod.qrEntradaPacienteMonedaID.Value := DM.qrParametroMonedaDolares.Value;
                End
              Else
                Begin
                  frmMain.frmLabMod.qrEntradaPacienteMonedaID.Value := qrClientesMonedaID.Value;
                End;
            End;
      end
      else if Factura_St = 'L' Then
      begin
          frmMain.frmLabLab.qrEntradaPacienteClienteID.Value     := qrClientesClienteID.Value;
          frmMain.frmLabLab.qrEntradaPacienteSINPRFILTER.Value   := qrClientesSINPRFILTER.Value;
          frmMain.frmLabLab.qrEntradaPacienteClienteNombre.Value := qrClientesNombre.AsString;
          frmMain.frmLabLab.qrEntradaPacienteProyectoID.Value    := qfind.FieldByName('ProyectoID').AsString;
          frmMain.frmLabLab.qrEntradaPacienteCoberturaPorc.Value := 0;
          frmMain.frmLabLab.qrEntradaPacienteCoberturaConfirmada.Value := 0;

          If (qrClientesMonedaID.Value <> '') Then
            Begin
              If (frmMain.frmLabLab.qrEntradaPacienteTipoDocumento.Value = 3) Or
                 (frmMain.frmLabLab.QrEntradaPacienteFactExterior.Value = 1) Then
                Begin
                  frmMain.frmLabLab.qrEntradaPacienteNoAS400.Value := 1;
                  frmMain.frmLabLab.qrEntradaPacienteNoAxapta.Value := 1;
                  frmMain.frmLabLab.qrEntradaPacienteNoFactura.Value := 1;
                  frmMain.frmLabLab.qrEntradaPacienteFactExterior.Value := 1;
                  frmMain.frmLabLab.qrEntradaPacienteTipoDocumento.Value := 3;
                  frmMain.frmLabLab.qrEntradaPacienteMonedaID.Value := DM.qrParametroMonedaDolares.Value;
                End
              Else
                Begin
                  frmMain.frmLabLab.qrEntradaPacienteMonedaID.Value := qrClientesMonedaID.Value;
                End;
            End;
      end
      else if Factura_St = 'C' Then
      begin
          frmMain.frmClinica.qrEntradaPacienteClienteID.Value     := qrClientesClienteID.Value;
          frmMain.frmClinica.qrEntradaPacienteSINPRFILTER.Value   := qrClientesSINPRFILTER.Value;
          frmMain.frmClinica.qrEntradaPacienteClienteNombre.Value := qrClientesNombre.AsString;
          frmMain.frmClinica.qrEntradaPacienteProyectoID.Value    := qfind.FieldByName('ProyectoID').AsString;
          frmMain.frmClinica.qrEntradaPacienteCoberturaPorc.Value := 0;
          frmMain.frmClinica.qrEntradaPacienteCoberturaConfirmada.Value := 0;

          If (qrClientesMonedaID.Value <> '') Then
            Begin
              If (frmMain.frmClinica.qrEntradaPacienteTipoDocumento.Value = 3) Or
                 (frmMain.frmClinica.QrEntradaPacienteFactExterior.Value = 1) Then
                Begin
                  frmMain.frmClinica.qrEntradaPacienteNoAS400.Value := 1;
                  frmMain.frmClinica.qrEntradaPacienteNoAxapta.Value := 1;
                  frmMain.frmClinica.qrEntradaPacienteNoFactura.Value := 1;
                  frmMain.frmClinica.qrEntradaPacienteFactExterior.Value := 1;
                  frmMain.frmClinica.qrEntradaPacienteTipoDocumento.Value := 3;
                  frmMain.frmClinica.qrEntradaPacienteMonedaID.Value := DM.qrParametroMonedaDolares.Value;
                End
              Else
                Begin
                  frmMain.frmClinica.qrEntradaPacienteMonedaID.Value := qrClientesMonedaID.Value;
                End;
            End;
      end
      else if Factura_St = 'N' Then
      begin
          frmMain.frmLabNCR.qrEntradaPacienteClienteID.Value     := qrClientesClienteID.Value;
          frmMain.frmLabNCR.qrEntradaPacienteSINPRFILTER.Value   := qrClientesSINPRFILTER.Value;
          frmMain.frmLabNCR.qrEntradaPacienteClienteNombre.Value := qrClientesNombre.AsString;
          frmMain.frmLabNCR.qrEntradaPacienteProyectoID.Value    := qfind.FieldByName('ProyectoID').AsString;
          frmMain.frmLabNCR.qrEntradaPacienteCoberturaPorc.Value := 0;
          frmMain.frmLabNCR.qrEntradaPacienteCoberturaConfirmada.Value := 0;

          If (qrClientesMonedaID.Value <> '') Then
          Begin
                If (frmMain.frmLabNCR.qrEntradaPacienteTipoDocumento.Value = 3) Or
                 (frmMain.frmLabNCR.QrEntradaPacienteFactExterior.Value = 1) Then
                Begin
                  frmMain.frmLabNCR.qrEntradaPacienteNoAS400.Value := 1;
                  frmMain.frmLabNCR.qrEntradaPacienteNoAxapta.Value := 1;
                  frmMain.frmLabNCR.qrEntradaPacienteNoFactura.Value := 1;
                  frmMain.frmLabNCR.qrEntradaPacienteFactExterior.Value := 1;
                  frmMain.frmLabNCR.qrEntradaPacienteTipoDocumento.Value := 3;
                  frmMain.frmLabNCR.qrEntradaPacienteMonedaID.Value := DM.qrParametroMonedaDolares.Value;
                End
                Else
                Begin
                  frmMain.frmLabNCR.qrEntradaPacienteMonedaID.Value := qrClientesMonedaID.Value;
                End;
          End;
      end
      else if Factura_St = 'F' Then
      begin
          frmMain.frmLabND.qrEntradaPacienteClienteID.Value     := qrClientesClienteID.Value;
          frmMain.frmLabND.qrEntradaPacienteSINPRFILTER.Value   := qrClientesSINPRFILTER.Value;
          frmMain.frmLabND.qrEntradaPacienteClienteNombre.Value := qrClientesNombre.AsString;
          frmMain.frmLabND.qrEntradaPacienteProyectoID.Value    := qfind.FieldByName('ProyectoID').AsString;
          frmMain.frmLabND.qrEntradaPacienteCoberturaPorc.Value := 0;
          frmMain.frmLabND.qrEntradaPacienteCoberturaConfirmada.Value := 0;

          If (qrClientesMonedaID.Value <> '') Then
          Begin
                If (frmMain.frmLabND.qrEntradaPacienteTipoDocumento.Value = 3) Or
                 (frmMain.frmLabND.QrEntradaPacienteFactExterior.Value = 1) Then
                Begin
                  frmMain.frmLabND.qrEntradaPacienteNoAS400.Value := 1;
                  frmMain.frmLabND.qrEntradaPacienteNoAxapta.Value := 1;
                  frmMain.frmLabND.qrEntradaPacienteNoFactura.Value := 1;
                  frmMain.frmLabND.qrEntradaPacienteFactExterior.Value := 1;
                  frmMain.frmLabND.qrEntradaPacienteTipoDocumento.Value := 3;
                  frmMain.frmLabND.qrEntradaPacienteMonedaID.Value := DM.qrParametroMonedaDolares.Value;
                End
                Else
                Begin
                  frmMain.frmLabND.qrEntradaPacienteMonedaID.Value := qrClientesMonedaID.Value;
                End;
          End;
      end;

      //Validando Los Parametros de Descuentos.
//      frmMain.frmTmp.Val_Descuento;
//      frmMain.frmLab.VerificarPagoDiferencia;
//      frmMain.frmLab.ActTotales;

// OJO - BLOQUEADO PARA DAR MAYOR RAPIDEZ.      frmMain.frmLab.RefrescarInterface;
    end;
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
  If (frmMain.Recibo = True) then
    Begin
      if Factura_St = 'I' Then
      begin
        If (frmMain.Exis_Vta = True) then frmMain.frmTmp.ClienteRecibo := qrClientesClienteID.Value
      end
      else if Factura_St = 'M' Then
      begin
        If (frmMain.Exis_Vta = True) then frmMain.frmTmpMod.ClienteRecibo := qrClientesClienteID.Value
      end
      else if Factura_St = 'L' Then
      begin
        If (frmMain.Exis_Vta = True) then frmMain.frmTmpLab.ClienteRecibo := qrClientesClienteID.Value
      end
      else if Factura_St = 'C' Then
      begin
        If (frmMain.Exis_Vta = True) then frmMain.frmClinica.ClienteRecibo := qrClientesClienteID.Value
      end
      else if Factura_St = 'N' Then
      begin
        If (frmMain.Exis_Vta = True) then frmMain.frmTmpNCR.ClienteRecibo := qrClientesClienteID.Value
      end
      else if Factura_St = 'F' Then
      begin
        If (frmMain.Exis_Vta = True) then frmMain.frmTmpND.ClienteRecibo := qrClientesClienteID.Value
      end;
    end;
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
  If (frmMain.Tran_fer = True) then
    Begin
      If (qrClientes.RecordCount > 0) And
         (qrClientesESTATUS.Value > 0) Then
        Begin
          If (qrClientesESTATUS.Value = 1) Then
            Raise exception.CreateFmt(' El Cliente: (' + qrClientesClienteID.AsString + ') ' + qrClientesNombre.AsString + #13 +
                                      ' NO Puede Facturarse porque: '+ #13 + ' Tiene el CREDITO CANCELADO.!!! ' + #13 +
                                      ' Si Desea, Puede Comunicarse con el Departamento de Cobros.!!!', []);

          If (qrClientesESTATUS.Value = 2) Then
            Raise exception.CreateFmt(' El Cliente: (' + qrClientesClienteID.AsString + ') ' + qrClientesNombre.AsString + #13 +
                                      ' NO Puede Facturarse porque: '+ #13 + ' El Cliente ESTA INACTIVO.!!! ' + #13 +
                                      ' Si Desea, Puede Comunicarse con el Departamento de Cobros.!!!', []);
        End;

      frmMain.frmTransferencia.EdCliente.Text       := qrClientesClienteID.AsString;
      frmMain.frmTransferencia.EdClienteNombre.Text := qrClientesNombre.AsString;
    end;
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
  FreeAndNil(qfind);
 end;
 END.


