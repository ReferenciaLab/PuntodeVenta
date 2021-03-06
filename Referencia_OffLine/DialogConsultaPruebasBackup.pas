unit DialogConsultaPruebasBackup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DialogConsulta, cxGraphics, Menus, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, ADODB,
  dxLayoutControl, cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,
  StdCtrls, cxButtons, cxTextEdit, cxContainer, cxMaskEdit, cxDropDownEdit,
  cxintl, dxmdaset, JvMemoryDataset, cxGridCardView, cxGridBandedTableView,
  cxLabel;

type
  TfrmDialogConsultaPruebasBackup = class(TfrmDialogConsulta)
    dbDatosPruebaID: TcxGridDBColumn;
    dbDatosDescripcion: TcxGridDBColumn;
    dbDatosPrecio: TcxGridDBColumn;
    dbDatosPrecioDolares: TcxGridDBColumn;
    qrPruebas: TADOQuery;
    qrPruebasPRUEBAID: TStringField;
    qrPruebasALIAS: TStringField;
    qrPruebasDESCRIPCION: TStringField;
    qrPruebasESTATUS: TIntegerField;
    qrPruebasGRUPOPRUEBAID: TStringField;
    qrPruebasDEPARTAMENTO: TStringField;
    qrPruebasPRECIO: TBCDField;
    qrPruebasPERMITECAMBIOPRECIO: TIntegerField;
    qrPruebasCODIGOAXAPTA: TStringField;
    qrPruebasPRECIODOLARES: TBCDField;
    qrPruebasCOSTO: TBCDField;
    qrPruebasEXTERIOR: TIntegerField;
    qrPruebasFACTURARCABECERA: TIntegerField;
    qrPruebasPRUEBAS: TIntegerField;
    qrPruebasTIPO: TStringField;
    qrPruebasORINA: TIntegerField;
    qrPruebasSANGRE: TIntegerField;
    qrPruebasCONDPACIENTE: TStringField;
    qrPruebasCONDMUESTRA: TStringField;
    qrPruebasCODDIAPROC: TStringField;
    qrPruebasDIASRESULTADO: TIntegerField;
    qrPruebasUNIDAD: TStringField;
    qrPruebasABREVIACION: TStringField;
    qrPruebasMEDIO: TIntegerField;
    qrPruebasCOLOR: TIntegerField;
    qrPruebasDEPID: TStringField;
    qrPruebasTIPOAS400: TStringField;
    qrPruebasCODIGOIDAS400: TStringField;
    qrPruebasMEDIOAS400: TStringField;
    qrPruebasNOPROCESAR: TIntegerField;
    qrPruebasCOMENTARIONOPROCESAR: TStringField;
    qrPruebasDATAAREAID: TStringField;
    qrPruebasRECID: TIntegerField;
    qrPruebasTIPOMUESTRA: TStringField;
    dbDatosSeleccion: TcxGridDBColumn;
    JvMemoryData1: TJvMemoryData;
    JvMemoryData1Seleccion: TBooleanField;
    JvMemoryData1PruebaID: TStringField;
    JvMemoryData1Descripcion: TStringField;
    JvMemoryData1Precio: TCurrencyField;
    JvMemoryData1PrecioDolares: TCurrencyField;
    dxLayoutControl1Item3: TdxLayoutItem;
    cgSeleccion: TcxGrid;
    dbSeleccion: TcxGridDBTableView;
    lvSeleccion: TcxGridLevel;
    dsSeleccion: TDataSource;
    dbSeleccionSeleccion: TcxGridDBColumn;
    dbSeleccionPruebaID: TcxGridDBColumn;
    dbSeleccionDescripcion: TcxGridDBColumn;
    dbSeleccionPrecio: TcxGridDBColumn;
    dbSeleccionPrecioDolares: TcxGridDBColumn;
    dxLayoutControl1Group3: TdxLayoutGroup;
    JvMemoryData2: TJvMemoryData;
    JvMemoryData2Seleccion: TBooleanField;
    JvMemoryData2PruebaID: TStringField;
    JvMemoryData2Descripcion: TStringField;
    JvMemoryData2Precio: TCurrencyField;
    JvMemoryData2PrecioDolares: TCurrencyField;
    GridStyles: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    cxStyle14: TcxStyle;
    cxStyle15: TcxStyle;
    cxStyle16: TcxStyle;
    cxStyle17: TcxStyle;
    cxStyle18: TcxStyle;
    cxStyle19: TcxStyle;
    cxStyle20: TcxStyle;
    cxStyle21: TcxStyle;
    cxStyle22: TcxStyle;
    cxStyle23: TcxStyle;
    cxStyle24: TcxStyle;
    cxStyle25: TcxStyle;
    cxStyle26: TcxStyle;
    cxStyle27: TcxStyle;
    cxStyle28: TcxStyle;
    cxStyle29: TcxStyle;
    cxStyle30: TcxStyle;
    cxStyle31: TcxStyle;
    cxStyle32: TcxStyle;
    cxStyle33: TcxStyle;
    cxStyle34: TcxStyle;
    cxStyle35: TcxStyle;
    cxStyle36: TcxStyle;
    cxStyle37: TcxStyle;
    cxStyle38: TcxStyle;
    cxStyle39: TcxStyle;
    cxStyle40: TcxStyle;
    cxStyle41: TcxStyle;
    cxStyle42: TcxStyle;
    cxStyle43: TcxStyle;
    cxStyle44: TcxStyle;
    cxStyle45: TcxStyle;
    cxStyle46: TcxStyle;
    cxStyle47: TcxStyle;
    cxStyle48: TcxStyle;
    cxStyle49: TcxStyle;
    cxStyle50: TcxStyle;
    cxStyle51: TcxStyle;
    cxStyle52: TcxStyle;
    cxStyle53: TcxStyle;
    cxStyle54: TcxStyle;
    cxStyle55: TcxStyle;
    cxStyleVerde: TcxStyle;
    GridBandedTableViewStyleSheetDevExpress: TcxGridBandedTableViewStyleSheet;
    GridCardViewStyleSheetDevExpress: TcxGridCardViewStyleSheet;
    GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet;
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
    MenuGrid: TPopupMenu;
    MenuItem1: TMenuItem;
    LbCondicion: TcxLabel;
    cxLabel1: TcxLabel;
    procedure MenuItem1Click(Sender: TObject);
    procedure dbDatosEditValueChanged(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem);
    procedure edbuscarExit(Sender: TObject);
    procedure cgDatosExit(Sender: TObject);
    procedure cgDatosEnter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure edbuscarPropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BuscarData;
    procedure Seleccion_Pruebas;
    Function Verifica_Seleccion : Boolean;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Run;
  end;

var
  frmDialogConsultaPruebasBackup: TfrmDialogConsultaPruebasBackup;
  adentrogrid : Boolean;

implementation

uses DataModule, UInterfaseAs400, Main;

{$R *.dfm}


procedure TfrmDialogConsultaPruebasBackup.BuscarData;
var
 sqlString : String;
begin
 sqlString := ' SELECT * FROM PTPrueba WHERE IsNull(PruebaID,'+#39+#39+')<>'+#39+#39;

 if edbuscar.Text <> '' then
  begin
   case edbuscarpor.ItemIndex of
     0 : sqlString := sqlString + ' AND PruebaID LIKE '+#39+'%'+edbuscar.Text+'%'+#39;
     1 : sqlString := sqlString + ' AND Descripcion LIKE '+#39+'%'+edbuscar.Text+'%'+#39;
   end;
 end;

 //Filtrando las Pruebas del Exterior
 If (frmMain.Exis_Vta = True) And (frmMain.frmTmp.qrEntradaPacienteFactExterior.Value = 1) Then
   sqlString := sqlString + ' AND Exterior = '+ #39 + '1' + #39;

 //Filtrando las Pruebas del Exterior
 If (frmMain.Exis_Cli = True) And (frmMain.frmClinica.qrEntradaPacienteFactExterior.Value = 1) Then
   sqlString := sqlString + ' AND Exterior = '+ #39 + '1' + #39;

 sqlString := sqlString + ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39;
 sqlString := sqlString + ' ORDER BY PruebaID ';

  With qrPruebas,sql do
  begin
    Close;
    SQL.Text := sqlString;
    Open;
    if IsEmpty then
    begin
      exit;
    end;
    First;
    DsDatos.Enabled := False;
    if not JvMemoryData1.Active then
      JvMemoryData1.Active := true;
    JvMemoryData1.EmptyTable;
    while not eof do
    begin
       JvMemoryData1.Append;
       JvMemoryData1Seleccion.AsBoolean      := False;
       JvMemoryData1PruebaID.AsString        := fieldbyname('PruebaID').AsString;
       JvMemoryData1Descripcion.AsString     := fieldbyname('Descripcion').AsString;
       JvMemoryData1Precio.AsFloat           := fieldbyname('Precio').Asfloat;
       JvMemoryData1PrecioDolares.AsFloat    := fieldbyname('PrecioDolares').Asfloat;
       Next;
    end;
    JvMemoryData1.First;
    DsDatos.Enabled := True;
  End;
end;


procedure TfrmDialogConsultaPruebasBackup.Run;
Var
 qfind : TADOQuery;
begin
 showmodal;
 if ModalResult = mrOk then
  begin
   If (frmMain.Exis_Vta = True) then
     Begin
      if JvMemoryData2.Active then JvMemoryData2.First;
       while not JvMemoryData2.Eof do
       begin
           frmMain.frmTmp.qrEntradaPacienteDetalle.Insert;
           frmMain.frmTmp.qrEntradaPacienteDetalleRefRecid.Value  := frmMain.frmTmp.qrEntradaPacienteRECID.Value;
           frmMain.frmTmp.qrEntradaPacienteDetalleSecuencia.Value := frmMain.frmTmp.MaxSecuenciaLinea;
           frmMain.frmTmp.qrEntradaPacienteDetalleRECID.Value     := frmMain.frmTmp.GetSecuenciaId;
           frmMain.frmTmp.qrEntradaPacienteDetalleMuestraNo.Value := frmMain.frmTmp.qrEntradaPacienteMuestraNo.Value;
           frmMain.frmTmp.qrEntradaPacienteDetalleDATAAREAID.Value:= frmMain.frmTmp.qrEntradaPacienteDATAAREAID.Value;
           frmMain.frmTmp.qrEntradaPacienteDetallePruebaID.Value  := JvMemoryData2PruebaID.Value;
           frmMain.frmTmp.qrEntradaPacienteDetalle.Post;
           JvMemoryData2.Next;
       end;
   If (frmMain.Exis_Cli = True) then
   Begin
     if JvMemoryData2.Active then JvMemoryData2.First;
       while not JvMemoryData2.Eof do
       begin
         frmMain.frmClinica.qrEntradaPacienteDetalle.Insert;
         frmMain.frmClinica.qrEntradaPacienteDetalleRefRecid.Value  := frmMain.frmClinica.qrEntradaPacienteRECID.Value;
         frmMain.frmClinica.qrEntradaPacienteDetalleSecuencia.Value := frmMain.frmClinica.MaxSecuenciaLinea;
         frmMain.frmClinica.qrEntradaPacienteDetalleRECID.Value     := frmMain.frmClinica.GetSecuenciaId;
         frmMain.frmClinica.qrEntradaPacienteDetalleMuestraNo.Value := frmMain.frmClinica.qrEntradaPacienteMuestraNo.Value;
         frmMain.frmClinica.qrEntradaPacienteDetalleDATAAREAID.Value:= frmMain.frmClinica.qrEntradaPacienteDATAAREAID.Value;
         frmMain.frmClinica.qrEntradaPacienteDetallePruebaID.Value  := JvMemoryData2PruebaID.Value;
//         frmMain.frmClinica.qrEntradaPacienteDetallePruebaID.Value  := qrPruebasPruebaID.Value;
         frmMain.frmClinica.qrEntradaPacienteDetalle.Post;
         JvMemoryData2.Next;
       end;
     end;
   end;
  end;
end;

procedure TfrmDialogConsultaPruebasBackup.cgDatosEnter(Sender: TObject);
begin
  inherited;
  adentrogrid := true;

end;

procedure TfrmDialogConsultaPruebasBackup.cgDatosExit(Sender: TObject);
begin
  inherited;
  adentrogrid := false;
end;

procedure TfrmDialogConsultaPruebasBackup.dbDatosEditValueChanged(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem);
begin
  inherited;
  Seleccion_Pruebas;
end;

procedure TfrmDialogConsultaPruebasBackup.edbuscarExit(Sender: TObject);
begin
  inherited;
  if (edbuscar.Text <> '') then
    BuscarData;
end;

procedure TfrmDialogConsultaPruebasBackup.edbuscarPropertiesChange(Sender: TObject);
begin
  inherited;
  if (edbuscar.Text <> '') then
    BuscarData;
end;

procedure TfrmDialogConsultaPruebasBackup.FormCreate(Sender: TObject);
begin
  inherited;
  With qrPruebas,sql do
  begin
    Close;
    Open;
    if IsEmpty then
    begin
      exit;
    end;
    First;
    DsDatos.Enabled := False;
    if not JvMemoryData1.Active then
      JvMemoryData1.Active := true;
    JvMemoryData1.EmptyTable;
    while not eof do
    begin
        JvMemoryData1.Append;
        JvMemoryData1Seleccion.AsBoolean      := False;
        JvMemoryData1PruebaID.AsString        := fieldbyname('PruebaID').AsString;
        JvMemoryData1Descripcion.AsString     := fieldbyname('Descripcion').AsString;
        JvMemoryData1Precio.AsFloat           := fieldbyname('Precio').Asfloat;
        JvMemoryData1PrecioDolares.AsFloat    := fieldbyname('PrecioDolares').Asfloat;
        Next;
    end;
    JvMemoryData1.First;
    DsDatos.Enabled := True;
  End;
  edbuscarpor.ItemIndex := 1;

  if (edbuscar.Text <> '') then
    BuscarData;
end;

procedure TfrmDialogConsultaPruebasBackup.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = Vk_Down) and (not AdentroGrid) then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);

  if (key = 13) and (not AdentroGrid) then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);

  if ((key = 13) and (JvMemoryData2.Active)) or ((key = vk_f5) and (JvMemoryData2.Active)) then
  begin
   Close;
   ModalResult := mrOk;
  end;
  if (key = vk_f9) and (JvMemoryData1.Active) then
  begin
      JvMemoryData1.Edit;
      JvMemoryData1Seleccion.AsBoolean  := True;
      Seleccion_Pruebas;
  end;
  if (key = Vk_Up) and (not AdentroGrid) then
     PostMessage(Handle, Wm_NextDlgCtl, 1, 0);

  if (key = 27) then
  begin
   Close;
  end;

end;

procedure TfrmDialogConsultaPruebasBackup.FormShow(Sender: TObject);
begin
  inherited;
  edbuscar.SetFocus;
end;

procedure TfrmDialogConsultaPruebasBackup.MenuItem1Click(Sender: TObject);
begin
  inherited;
  if JvMemoryData2.Active then JvMemoryData2.Delete;
end;
procedure TfrmDialogConsultaPruebasBackup.Seleccion_Pruebas;
begin
  inherited;
      if not JvMemoryData1.Active then
      JvMemoryData1.Active := true;
    if not JvMemoryData2.Active then
      JvMemoryData2.Active := true;
    JvMemoryData1.First;
    DsDatos.Enabled := False;
    while not JvMemoryData1.Eof do
    begin
        if (JvMemoryData1Seleccion.AsBoolean) Then
//        or (dbDatos.Controller.SelectedRecords[].Selected) then
        begin
           qrPruebas.Locate('PruebaID',JvMemoryData1PruebaID.AsString,[]);
           If (frmMain.Exis_Vta = True) then
           Begin
               If (qrPruebas.RecordCount > 0) And
                  (qrPruebasTipo.Value = 'P') And
                  (qrPruebasGrupoPruebaId.Value = 'PRU') Then
               Begin
                   //Confirmando el Mensaje No Reactivo del AS-400.
                   InterfaseAS400.Confirmar_No_Reactivo(qrPruebasCODIGOIDAS400.Value,
                                                        qrPruebasPRUEBAID.Value,
                                                        qrPruebasDESCRIPCION.Value);
               end;

               If (qrPruebas.RecordCount > 0) And
                  (qrPruebasEstatus.Value = 0) Then
                 Begin
                   //Confirmando el Mensaje de la Prueba Inactiva.
                   Raise exception.CreateFmt(' La Prueba: (' + qrPruebasPRUEBAID.AsString + ') ' + qrPruebasDESCRIPCION.AsString + #13 +
                                             ' NO Puede Ser Seleccionada. ESTA PROHIBIDA SU FACTURACION. '+ #13 +
                                             ' Por Favor, Comuniquese con el Departamento Tecnico Correspondiente.!!!', []);
                 end;
           End;
          If Verifica_Seleccion then
          begin
              DsDatos.Enabled := True;
              JvMemoryData1.Edit;
              JvMemoryData1Seleccion.AsBoolean      := False;
              JvMemoryData1.First;
              Raise exception.CreateFmt(' La Prueba: (' + JvMemoryData1PruebaID.AsString + ') ' + JvMemoryData2Descripcion.AsString + #13 +
                                             ' Ya fu� Seleccionada. Favor verificar Pruebas Seleccionadas.', []);
          end
          else
          begin
            JvMemoryData2.Append;
            JvMemoryData2Seleccion.AsBoolean      := True;
            JvMemoryData2PruebaID.AsString        := JvMemoryData1PruebaID.AsString;
            JvMemoryData2Descripcion.AsString     := JvMemoryData1Descripcion.AsString;
            JvMemoryData2Precio.AsFloat           := JvMemoryData1Precio.AsFloat;
            JvMemoryData2PrecioDolares.AsFloat    := JvMemoryData1PrecioDolares.AsFloat;
            JvMemoryData1.Edit;
            JvMemoryData1Seleccion.AsBoolean      := False;

            edbuscar.Text := '';
            edbuscar.SetFocus;
          end;
        end;
        JvMemoryData1.Next;
    end;
    JvMemoryData1.Locate('PruebaID',JvMemoryData2PruebaID.AsString,[]);
//    JvMemoryData1.First;
    DsDatos.Enabled := True;
end;


Function TfrmDialogConsultaPruebasBackup.Verifica_Seleccion: Boolean;
begin
  inherited;
  Result:=false;
    if JvMemoryData2.Locate('PruebaID',JvMemoryData1PruebaID.AsString,[]) then
        Result:=true
End;


end.

