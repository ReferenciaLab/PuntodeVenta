unit DialogFiliacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxLayoutControl, cxControls, cxTextEdit, cxDBEdit, cxContainer,
  cxEdit, cxCheckBox, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons,
  dbTables,db, cxCurrencyEdit, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, JvMemoryDataset, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid,ADODB,ReferenciaWebService, ExtCtrls, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDSimplePanel, cxRadioGroup, cxDropDownEdit, cxCalendar,
  cxCheckGroup,dlgMensajes, cxGridCardView, cxLookAndFeels, dxmdaset,
  cxImageComboBox, cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox, cxLabel,
  cxMaskEdit, LMDCustomButton, LMDButton, LMDControl, LMDBaseControl,
  LMDBaseGraphicControl, LMDBaseLabel, LMDCustomLabel, LMDLabel;

type
  TfrmDialogFiliacion = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    BtAceptar: TcxButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    BtCancelar: TcxButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    cgSeleccion: TcxGrid;
    dbSeleccion: TcxGridDBTableView;
    dbSeleccionSeleccion: TcxGridDBColumn;
    dbSeleccionPruebaID: TcxGridDBColumn;
    dbSeleccionDescripcion: TcxGridDBColumn;
    dbSeleccionPrecio: TcxGridDBColumn;
    dbSeleccionPrecioDolares: TcxGridDBColumn;
    lvSeleccion: TcxGridLevel;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    cgDatosFiliacion: TcxGrid;
    dbDatosFiliacion: TcxGridDBTableView;
    lvDatosFiliacion: TcxGridLevel;
    dxLayoutControl1Item6: TdxLayoutItem;
    cgEntidad: TcxGrid;
    dbEntidad: TcxGridDBTableView;
    dbEntidadSeleccion: TcxGridDBColumn;
    dbEntidadPruebaID: TcxGridDBColumn;
    dbEntidadCantidad: TcxGridDBColumn;
    dbEntidadNombre: TcxGridDBColumn;
    lvEntidad: TcxGridLevel;
    dxLayoutControl1Item7: TdxLayoutItem;
    cgAdicional: TcxGrid;
    dbAdicional: TcxGridDBTableView;
    dbAdicionalSeleccion: TcxGridDBColumn;
    dbAdicionalPruebaID: TcxGridDBColumn;
    dbAdicionalCantidad: TcxGridDBColumn;
    dbAdicionalNombre: TcxGridDBColumn;
    lvAdicional: TcxGridLevel;
    qrTipoFiliacion: TADOQuery;
    dsFiliacionE: TDataSource;
    mdFiliacionE: TJvMemoryData;
    mdFiliacionESeleccion: TBooleanField;
    mdFiliacionEPruebaID: TStringField;
    mdFiliacionENombre: TStringField;
    mdFiliacionA: TJvMemoryData;
    mdFiliacionASeleccion: TBooleanField;
    mdFiliacionAPruebaID: TStringField;
    mdFiliacionANombre: TStringField;
    mdFiliacionACantidad: TIntegerField;
    dsFiliacionA: TDataSource;
    mdDatosFiliacion: TJvMemoryData;
    mdDatosFiliacionPruebaID: TStringField;
    mdDatosFiliacionNombre: TStringField;
    mdDatosFiliacionSecuencia: TIntegerField;
    mdDatosFiliacionParentesco: TStringField;
    JvMemoryData2: TJvMemoryData;
    JvMemoryData2Seleccion: TBooleanField;
    JvMemoryData2PruebaID: TStringField;
    JvMemoryData2Descripcion: TStringField;
    JvMemoryData2Precio: TCurrencyField;
    JvMemoryData2PrecioDolares: TCurrencyField;
    JvMemoryData2CodigoIDAS400: TStringField;
    dsSeleccion: TDataSource;
    dsDatosFiliacion: TDataSource;
    dbDatosFiliacionSecuencia: TcxGridDBColumn;
    dbDatosFiliacionPruebaID: TcxGridDBColumn;
    dbDatosFiliacionNombre: TcxGridDBColumn;
    dbDatosFiliacionParentesco: TcxGridDBColumn;
    dbDatosFiliacionFechaColeccion: TcxGridDBColumn;
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
    qrPruebasTIPOMUESTRA: TStringField;
    mdFiliacionECodigoIDAS400: TStringField;
    MenuGrid: TPopupMenu;
    MenuItem1: TMenuItem;
    mdDatosFiliacionTipoFiliacion: TStringField;
    mdFiliacionACodigoIDAS400: TStringField;
    mdDatosFiliacionCodigoIDAS400: TStringField;
    btProcesar: TcxButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    LookAndFeelController: TcxLookAndFeelController;
    cxStyleRepository1: TcxStyleRepository;
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
    stlEstatus: TcxStyle;
    stlRojo: TcxStyle;
    stlAzul: TcxStyle;
    GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet;
    GridCardViewStyleSheetDevExpress: TcxGridCardViewStyleSheet;
    mdDatosFiliacionFechaColeccion: TStringField;
    JvMemoryData2Comentario: TStringField;
    dbDatosFiliacionTipoFiliacion: TcxGridDBColumn;
    dbDatosFiliacionCodigoIDAS400: TcxGridDBColumn;
    dbSeleccionComentario: TcxGridDBColumn;
    MenuSeleccion: TPopupMenu;
    MenuItem2: TMenuItem;
    qrPruebasCOMENTARIO_REQ: TIntegerField;
    qrPruebasCOD_SEC_PRUEBA: TIntegerField;
    qrPruebasRECID: TLargeintField;
    spPerfilGenetico: TLMDSimplePanel;
    LMDLabel2: TLMDLabel;
    btCancelarNCF: TLMDButton;
    btAceptaPG: TLMDButton;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Item8: TdxLayoutItem;
    edbuscarpor: TcxComboBox;
    dxLayoutControl1Item9: TdxLayoutItem;
    edbuscar: TcxTextEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    cxLabel1: TcxLabel;
    btnAdd: TcxButton;
    dxLayoutControl1Item11: TdxLayoutItem;
    mdFiliacionEDocumento: TStringField;
    mdFiliacionECantidad: TIntegerField;
    qrPacientes: TADOQuery;
    dsDatos: TDataSource;
    mdDatosFiliacionTipoPerfil: TStringField;
    dbDatosFiliacionTipoPerfil: TcxGridDBColumn;
    qrPacientesTipo_Documento: TIntegerField;
    qrPacientesDocumento: TStringField;
    qrPacientesNombre: TStringField;
    qrPacientesSexo: TWordField;
    qrPacientesFecha_Nac: TDateTimeField;
    qrPacientesTelefono: TStringField;
    qrPacientesNum_Caso: TStringField;
    qrPacientesFecha_Rec: TDateTimeField;
    cbExtDocumento: TcxDBExtLookupComboBox;
    mskDocumento: TcxMaskEdit;
    txtNombre: TcxDBTextEdit;
    cbSexo: TcxDBImageComboBox;
    EdFechaBorn: TcxDBDateEdit;
    mskTelResidencia: TcxDBMaskEdit;
    qrPruebasf: TADOQuery;
    dsPruebasf: TDataSource;
    qrPruebasfmuestrano: TStringField;
    qrPruebasfpruebaid: TStringField;
    qrPruebasfcomentario: TStringField;
    qrPruebasfrefrecid: TLargeintField;
    mdFiliacionERecID: TLargeintField;
    lvPruebas: TcxGridLevel;
    dbPrueba: TcxGridDBTableView;
    dbPruebamuestrano: TcxGridDBColumn;
    dbPruebapruebaid: TcxGridDBColumn;
    dbPruebacomentario: TcxGridDBColumn;
    dbPruebarefrecid: TcxGridDBColumn;
    mdDatosFiliacionRecID: TLargeintField;
    procedure mskDocumentoExit(Sender: TObject);
    procedure mskDocumento1Exit(Sender: TObject);
    procedure dbAdicionalSeleccionPropertiesEditValueChanged(Sender: TObject);
    procedure edbuscarExit(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure edbuscarPropertiesChange(Sender: TObject);
    procedure cbExtDocumentoPropertiesChange(Sender: TObject);
    procedure btCancelarNCFClick(Sender: TObject);
    procedure btAceptaPGClick(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure dbDatosFiliacionParentescoPropertiesInitPopup(Sender: TObject);
    procedure btProcesarClick(Sender: TObject);
    procedure dbAdicionalEditValueChanged(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem);
    procedure MenuItem1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbDatosFiliacionStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure dbEntidadSeleccionPropertiesEditValueChanged(Sender: TObject);
    procedure Seleccion_Entidad_E;
    procedure Seleccion_Entidad_A;
    procedure Seleccion_Adicional;
    Procedure Seleccion_Pruebas;
    Procedure BuscarData;
    procedure cgAdicionalExit(Sender: TObject);
    procedure cgAdicionalEnter(Sender: TObject);
    procedure cgEntidadExit(Sender: TObject);
    procedure cgEntidadEnter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    Function  Verifica_Pruebas_Aceptadas(Tipo:String): Boolean;
    Function  Verifica_Pruebas_Aceptadas_IDAS400(Tipo:String): Boolean;
    Function  Verifica_Seleccion(Tipo:String): Boolean;
    Function  Verifica_Seleccion_AS400(Tipo:String): Boolean;
    Function  Verifica_Campos: Boolean;
  private
    { Private declarations }
    noseguro            : TcxStyle;
    RecID               : Int64;
    Db1Servidor,Db2Servidor,StTrans,ClienteID : String;
  public
    { Public declarations }

    procedure Run;
  end;

var
  frmDialogFiliacion: TfrmDialogFiliacion;
  adentrogrid, _buscar : Boolean;
implementation

uses ActionsDM, DataModule, Main, PuntoVenta,PuntoVentaMod,UInterfaseAs400;

{$R *.dfm}

procedure TfrmDialogFiliacion.BuscarData;
var
 sqlString : String;
begin
  With qrTipoFiliacion,sql do
  begin
    sqlString := 'Select * from ptPerfilGenetico p Where';
    if edbuscar.Text <> '' then begin
       case edbuscarpor.ItemIndex of
         1 : sqlString := sqlString + ' Nombre like '+#39+'%'+edbuscar.Text+'%'+#39;
         2 : sqlString := sqlString + ' Documento like '+#39+'%'+edbuscar.Text+'%'+#39;
         0 : sqlString := sqlString + ' Telefono like '+#39+'%'+edbuscar.Text+'%'+#39;
       end;
    end;

    If (Trim(edbuscar.Text) = EmptyStr) or (Length(Trim(edbuscar.Text)) < 5) then
    begin
          EtMensajeDlg('Debe escribir criterio de b�squeda m�s exacto en el Texto.  Verifique.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
          edbuscar.SetFocus;
          Exit;
    end;
    Close;
    SQL.Text := sqlString;
    Open;
//    if IsEmpty then
//    begin
//      exit;
//    end;
    If qrTipoFiliacion.RecordCount > 0 Then First;
    dsFiliacionE.Enabled := False;
    if not mdFiliacionE.Active then
      mdFiliacionE.Active := true;
    mdFiliacionE.EmptyTable;
    while not eof do
    begin
        mdFiliacionE.Append;
        mdFiliacionESeleccion.AsBoolean     := False;
        mdFiliacionEPruebaID.AsString       := '00004543';
        mdFiliacionENombre.AsString         := fieldbyname('Nombre').AsString;
        mdFiliacionEDocumento.AsString      := fieldbyname('Documento').AsString;
        mdFiliacionECodigoIDAS400.AsString  := '0994';
        mdFiliacionECantidad.AsInteger      := 1;
        mdFiliacionERecID.Value             := fieldbyname('RecID').Value;
        Next;
    end;
    mdFiliacionE.First;
    dsFiliacionE.Enabled := True;
  End;
end;

procedure TfrmDialogFiliacion.btAceptaPGClick(Sender: TObject);
Var qfind : TADOQuery;
begin
  inherited;

  If (Length(trim(mskDocumento.Text))=13) and (Not Dm.GetDigitoVerificador(copy(DM.Cortar_Char('-', mskDocumento.Text),1,11),qrPacientesTipo_Documento.AsString)) Then
  Begin
       EtMensajeDlg('Favor digitar N�mero de C�dula V�lido.', etError, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
       mskDocumento.Text := EmptyStr;
       mskDocumento.Setfocus;
       Exit;
  end
  else
  Begin
        if Factura_St = 'I' Then
        begin
           RecID := frmMain.frmTmp.qrEntradaPacienteRecID.Value;
        end else if Factura_St = 'M' Then
        begin
           RecID := frmMain.frmTmpMod.qrEntradaPacienteRecID.Value;
        end else if Factura_St = 'F' Then
        begin
           RecID := frmMain.frmTmpND.qrEntradaPacienteRecID.Value;
        end else if Factura_St = 'L' Then
        begin
           RecID := frmMain.frmTmpLab.qrEntradaPacienteRecID.Value;
        end else if Factura_St = 'C' Then
        begin
           RecID := frmMain.frmClinica.qrEntradaPacienteRecID.Value;
        end;
        qfind := DM.NewQuery;
        qfind.Close;
        qfind.SQL.Text := ' Select Top 1 * from PtPerfilGenetico p (nolock) '+
                           ' Where documento ='+#39+mskDocumento.Text+#39;
        qfind.Open;
        If (qfind.RecordCount = 0) Then
        begin
          If Not DM.ActPerfil(cbExtDocumento.EditValue,
                              mskDocumento.Text,
                              txtNombre.Text,
                              cbSexo.EditValue,
                              edFechaBorn.EditingValue,
                              mskTelResidencia.EditText,
                              RecID) Then
          begin
            Raise exception.CreateFmt( ' NO Se Pudo Grabar el Perfil Gen�tico. '+ #13 +
                                       ' Se Ha Generado Un Error en el SP. '+ #13 +
                                       ' Por Favor, Intentelo Nuevamente.!!!', []);
          end
          else
          begin
                mdFiliacionE.Last;
                mdFiliacionE.Append;
                mdFiliacionESeleccion.AsBoolean     := False;
                mdFiliacionEPruebaID.AsString       := '00004543';
                mdFiliacionENombre.AsString         := txtNombre.Text;
                mdFiliacionEDocumento.AsString      := mskDocumento.Text;
                mdFiliacionECodigoIDAS400.AsString  := '0994';
                mdFiliacionECantidad.AsInteger      := 1;
          end;
        end
        else
        begin
           EtMensajeDlg('N�mero de Documento ya registrado.', etError, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
           mskDocumento.Text := EmptyStr;
           mskDocumento.Setfocus;
           Exit;
        end;
        FreeAndNil(qfind);
  End;
  mskDocumento.EditValue  :=EmptyStr;
  txtNombre.Text          :=EmptyStr;
  cbSexo.ItemIndex        := 0;
  EdFechaBorn.Text        :=EmptyStr;
  mskTelResidencia.Text   :=EmptyStr;
  spPerfilGenetico.Visible:= False;
end;

procedure TfrmDialogFiliacion.btCancelarNCFClick(Sender: TObject);
begin
  inherited;
  spPerfilGenetico.Visible := False;
end;

procedure TfrmDialogFiliacion.btnAddClick(Sender: TObject);
begin
//  cbExtDocumento.EditValue  :='2';
  mskDocumento.Text         :=EmptyStr;
  txtNombre.Text            :=EmptyStr;
  cbSexo.ItemIndex          :=-1;
  EdFechaBorn.Text          :=EmptyStr;
  mskTelResidencia.Text     :=EmptyStr;
  spPerfilGenetico.Visible  := True;
end;

procedure TfrmDialogFiliacion.btProcesarClick(Sender: TObject);
begin
  if Not Verifica_Campos then
  begin
      Raise exception.CreateFmt(' Existen Datos en blanco en registro Unidad Familiar.  Favor Completarlos.', []);
  end;
  if  mdDatosFiliacionFechaColeccion.AsDateTime > DM.SystemDate then
  begin
      Raise exception.CreateFmt(' Fecha de Colecci�n NO puede ser mayor que la fecha del d�a.  Verifique.', []);
  end;
  Seleccion_Pruebas;
end;

procedure TfrmDialogFiliacion.cbExtDocumentoPropertiesChange(Sender: TObject);
begin
  mskDocumento.Properties.EditMask := dm.qrDocumento.Fieldbyname('Mascara').AsString;
  mskDocumento.Update;
end;

procedure TfrmDialogFiliacion.cgAdicionalEnter(Sender: TObject);
begin
  adentrogrid := true;
end;

procedure TfrmDialogFiliacion.cgAdicionalExit(Sender: TObject);
begin
  adentrogrid := false;
end;

procedure TfrmDialogFiliacion.cgEntidadEnter(Sender: TObject);
begin
  adentrogrid := true;
end;

procedure TfrmDialogFiliacion.cgEntidadExit(Sender: TObject);
begin
  adentrogrid := false;
end;

procedure TfrmDialogFiliacion.dbAdicionalEditValueChanged(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem);
begin
  Seleccion_Adicional;
end;

procedure TfrmDialogFiliacion.dbAdicionalSeleccionPropertiesEditValueChanged(
  Sender: TObject);
  Var I : Integer;
begin
     I:=0;
{     if mdDatosFiliacion.Active then
     begin
          mdDatosFiliacion.First;
          while not mdDatosFiliacion.eof do
          begin
            if mdDatosFiliacionTipoFiliacion.Asstring='A' then  I:=I+1;
            mdDatosFiliacion.Next;
          end;
         if I > 0 then
         begin
            if MessageDlg('Existe Unidad Familiar.  Desea eliminar la Unidad-Familiar existente.?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
            begin
                MenuItem1Click(Sender)
            end
            else
            begin
                dsFiliacionA.Enabled := True;
                mdFiliacionA.Edit;
                mdFiliacionASeleccion.AsBoolean := False;
                mdFiliacionA.First;
                Exit;
            end;
         end;
     end;
}
     mdFiliacionA.Edit;
     mdFiliacionASeleccion.Asboolean := True;
     Seleccion_Entidad_A;
End;

procedure TfrmDialogFiliacion.dbDatosFiliacionParentescoPropertiesInitPopup(
  Sender: TObject);
begin
  inherited;
  if Sender is TcxComboBox then with TcxComboBox(Sender).ActiveProperties do begin
    BeginUpdate;
    try
      Items.Clear;
      Items.Add('PADRE');
      Items.Add('MADRE');
      Items.Add('TIO');
      Items.Add('TIA');
      Items.Add('ABUELO');
      Items.Add('ABUELA');
      Items.Add('HIJO');
      Items.Add('HIJA');
      Items.Add('HERMANO');
      Items.Add('HERMANA');
    finally
      EndUpdate;
    end;
  end;
end;

procedure TfrmDialogFiliacion.dbDatosFiliacionStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
    If (ARecord.Values[dbDatosFiliacionSecuencia.Index] > 0) Then  AStyle := noseguro;
end;

procedure TfrmDialogFiliacion.dbEntidadSeleccionPropertiesEditValueChanged(
  Sender: TObject);
  Var I : Integer;
begin
     I:=0;
     if mdDatosFiliacion.Active then
     begin
          mdDatosFiliacion.First;
          while not mdDatosFiliacion.eof do
          begin
            if mdDatosFiliacionTipoFiliacion.Asstring='E' then  I:=I+1;
            mdDatosFiliacion.Next;
          end;
         if I > 0 then
         begin
            if MessageDlg('Existe Unidad Familiar.  Desea eliminar la Unidad-Familiar existente.?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
            begin
                MenuItem1Click(Sender)
            end
            else
            begin
                dsFiliacionE.Enabled := True;
                mdFiliacionE.Edit;
                mdFiliacionESeleccion.AsBoolean := False;
                mdFiliacionE.First;
                Exit;
            end;
         end;
     end;
     mdFiliacionE.Edit;
     mdFiliacionESeleccion.Asboolean := True;
     Seleccion_Entidad_E;
end;

procedure TfrmDialogFiliacion.edbuscarExit(Sender: TObject);
begin
  if (edbuscar.Text <> '') then
    BuscarData;
end;

procedure TfrmDialogFiliacion.edbuscarPropertiesChange(Sender: TObject);
begin
  _buscar := True;
  adentrogrid := False;
end;

procedure TfrmDialogFiliacion.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If (key = Vk_Down) Then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);
  If (key = 13) Then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);
  If (key = Vk_Up) Then
     PostMessage(Handle, Wm_NextDlgCtl, 1, 0);

  If (key = Vk_F5) Then btAceptar.Click;

  if (key = 27) then
  begin
   Close;
  end;
end;

procedure TfrmDialogFiliacion.FormShow(Sender: TObject);
begin
  With qrPacientes, sql do
  begin
    Close;
    Clear;
    Text :='Select *  From PtPerfilGenetico Where Tipo_Documento = :TipDoc';
    Open;
  end;

  With DM.qrDocumento, sql do
  begin
    Close;
    Clear;
    Text :='Select * From PtDocumento Where Estatus='+#39+'A'+#39;
    Open;
  end;
  qrPruebasf.Close;
  qrPruebasf.Open;
  noseguro                := TcxStyle.Create(Self);
  noseguro.Color          := clInfobk;
  noseguro.TextColor      := ClBlack;
  edbuscarpor.ItemIndex   := 1;
end;

procedure TfrmDialogFiliacion.MenuItem1Click(Sender: TObject);
begin
  if mdDatosFiliacion.Active then
  begin
      mdDatosFiliacion.First;
      iF mdDatosFiliacion.RecordCount > 0 Then
      begin
        dxLayoutControl1Group4.Caption :='Registro Datos Filiaci�n';
        mdDatosFiliacion.EmptyTable;
        jvMemoryData2.EmptyTable;
      end;
  end;
end;

procedure TfrmDialogFiliacion.MenuItem2Click(Sender: TObject);
begin
  if JvMemoryData2.Active then JvMemoryData2.Delete;
end;

procedure TfrmDialogFiliacion.mskDocumento1Exit(Sender: TObject);
Var
  qfind                 : TAdoQuery;
  Direccion,Documento,Tipo_Doc   : String;
begin
  inherited;
    Tipo_Doc  := cbExtDocumento.Text;
    Documento := mskDocumento.Text;
    if (mskDocumento.EditValue)<> EmptyStr then
    begin
      With qrPacientes, sql do
      begin
        Close;
        Clear;
        Text :='Select *  From PtPerfilGenetico Where Documento = '+#39+Documento+#39;
        Open;
        If (qrPacientes.RecordCount > 0) Then
        begin
           If dm.qrParametroServidor_AS400.value <> EmptyStr then
                DM.BuscaFoto(Self,Copy(qrPacientesDocumento.AsString,1,3),Copy(qrPacientesDocumento.AsString,5,7),Copy(qrPacientesDocumento.AsString,13,1));
            cbExtDocumento.Text := Tipo_Doc;
            mskDocumento.Text         := Documento;
            Exit;
        end;
      end;
    end;
    cbExtDocumento.Text := Tipo_Doc;
    mskDocumento.Text         := Documento;
    If (Length(trim(dm.qrDocumento.Fieldbyname('Mascara').AsString))= 13) or
       (Length(trim(dm.qrDocumento.Fieldbyname('Mascara').AsString))= 14) Then
    Begin
      If Not Dm.GetDigitoVerificador(copy(DM.Cortar_Char('-', mskDocumento.Text),1,11),qrPacientesTipo_Documento.AsString) Then
      begin
         EtMensajeDlg('Favor digitar N�mero de C�dula V�lido.', etError, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
//         qrClienteDomicilioDocumento.Value := EmptyStr;
         cbExtDocumento.Text := Tipo_Doc;
         mskDocumento.Setfocus;
         Exit;
      end;
      qfind := DM.NewQuery;
      DM.qrParametro.close;
      DM.qrParametro.open;
      If dm.qrParametroServidor_AS400.value = EmptyStr then
      begin
           Db1Servidor := 'Ced2011_1';
           Db2Servidor := 'Ced2011_2';
      end
      else
      begin
           Db1Servidor := 'Ced2016';
      end;
       qfind.Close;
       If cbExtDocumento.Text = 'CEDULA' then
       begin
         qfind.SQL.Text:=' SELECT * FROM PTCLIENTE '+
                               ' WHERE IDENTIFICACION like '+#39+'%'+Copy(mskDocumento.Text+'0',1,14)+'%'+#39;
       end else
       If cbExtDocumento.Text = 'CEDULA MENOR' then
       begin
         qfind.SQL.Text:=' SELECT * FROM PTCLIENTE '+
                               ' WHERE IDENTIFICACION like '+#39+'%'+Copy(mskDocumento.Text,1,14)+'%'+#39;
       end;
       qfind.Open;
       if qfind.RecordCount > 0 then
       begin
           qrPacientes.Edit;
           qrPacientesTipo_Documento.AsInteger       :=  dm.qrDocumento.Fieldbyname('TipoDocID').AsInteger;
           qrPacientesDocumento.AsString             :=  Documento;
           qrPacientesNombre.Value                   :=  qfind.FieldByName('NOMBRE').AsString;
           qrPacientesSexo.Value                     :=  qfind.FieldByName('Sexo').Value;
           qrPacientesFecha_Nac.Text                 :=  qfind.FieldByName('FechaNacimiento').AsString;
           qrPacientesTelefono.Value                 :=  qfind.FieldByName('Telefono').AsString;
          FreeAndNil(qfind);
          Exit;
       end
       else
       begin
             qfind.Close;
             qfind.SQL.Text:=' SELECT NOMBRES,APELLIDO1,ISNULL(APELLIDO2,'+#39+#39+') AS APELLIDO2,FECHA_NAC,SEXO,COD_SANGRE,P.COD_MUNICIPIO,P.COD_CIUDAD,'+
                                   '  P.COD_SECTOR,ISNULL(CALLE,'+#39+#39+') AS CALLE,ISNULL(CASA,'+#39+#39+') AS CASA,ISNULL(EDIFICIO,'+#39+#39+') AS EDIFICIO, ISNULL(PISO,'+#39+#39+') AS PISO, ISNULL(APTO,'+#39+#39+') AS APTO,ISNULL(S.DESCRIPCION,'+#39+#39+') AS SECTOR,C.CIUDADID AS CIUDAD '+
                                   '   FROM '+Db1Servidor+'..CEDULADOS P inner join '+Db1Servidor+'..SECTOR_PARAJE S on  '+
                                   '   		(S.COD_MUNICIPIO COLLATE SQL_AltDiction_CP850_CI_AI = P.COD_MUNICIPIO COLLATE SQL_AltDiction_CP850_CI_AI)  '+
                                   '   		AND (S.COD_SECTOR COLLATE SQL_AltDiction_CP850_CI_AI = P.COD_SECTOR COLLATE SQL_AltDiction_CP850_CI_AI ) INNER JOIN   '+
                                   '   '+Db1Servidor+'..MUNICIPIO M ON  '+
                                   '   		M.COD_MUNICIPIO COLLATE SQL_AltDiction_CP850_CI_AI = P.COD_MUNICIPIO COLLATE SQL_AltDiction_CP850_CI_AI '+
                                   '   		LEFT OUTER JOIN PTCIUDAD C ON '+
                                   '   		C.COD_NUM_PADRON COLLATE SQL_AltDiction_CP850_CI_AI = P.COD_MUNICIPIO COLLATE SQL_AltDiction_CP850_CI_AI '+
                                   ' WHERE MUN_CED ='+#39+Copy(mskDocumento.Text,1,3)+#39+
                                   ' AND   SEQ_CED ='+#39+copy(mskDocumento.Text,5,7)+#39+
                                   ' AND   VER_CED ='+#39+copy(mskDocumento.Text,13,1)+#39;
             qfind.Open;
             If (dm.qrParametroServidor_AS400.value <> EmptyStr) then
             begin
                 If (qfind.RecordCount =0) Then
                 begin
                   Raise exception.CreateFmt(' N�mero de Cedula No Existe.  Verifique.', []);
                 end
             end
             else
             If (dm.qrParametroServidor_AS400.value = EmptyStr) and (qfind.RecordCount =0) then
             begin
                 qfind.Close;
                 qfind.SQL.Text:=' SELECT NOMBRES,APELLIDO1,ISNULL(APELLIDO2,'+#39+#39+') AS APELLIDO2,FECHA_NAC,SEXO,COD_SANGRE,P.COD_MUNICIPIO,P.COD_CIUDAD,'+
                                       '  P.COD_SECTOR,ISNULL(CALLE,'+#39+#39+') AS CALLE,ISNULL(CASA,'+#39+#39+') AS CASA,ISNULL(EDIFICIO,'+#39+#39+') AS EDIFICIO, ISNULL(PISO,'+#39+#39+') AS PISO, ISNULL(APTO,'+#39+#39+') AS APTO,ISNULL(S.DESCRIPCION,'+#39+#39+') AS SECTOR,C.CIUDADID AS CIUDAD '+
                                       '   FROM '+Db2Servidor+'..CEDULADOS P inner join '+Db2Servidor+'..SECTOR_PARAJE S on  '+
                                       '   		(S.COD_MUNICIPIO COLLATE SQL_AltDiction_CP850_CI_AI = P.COD_MUNICIPIO COLLATE SQL_AltDiction_CP850_CI_AI)  '+
                                       '   		AND (S.COD_SECTOR COLLATE SQL_AltDiction_CP850_CI_AI = P.COD_SECTOR COLLATE SQL_AltDiction_CP850_CI_AI ) INNER JOIN   '+
                                       '   '+Db2Servidor+'..MUNICIPIO M ON  '+
                                       '   		M.COD_MUNICIPIO COLLATE SQL_AltDiction_CP850_CI_AI = P.COD_MUNICIPIO COLLATE SQL_AltDiction_CP850_CI_AI '+
                                       '   		LEFT OUTER JOIN PTCIUDAD C ON '+
                                       '   		C.COD_NUM_PADRON COLLATE SQL_AltDiction_CP850_CI_AI = P.COD_MUNICIPIO COLLATE SQL_AltDiction_CP850_CI_AI '+
                                       ' WHERE MUN_CED ='+#39+Copy(mskDocumento.Text,1,3)+#39+
                                       ' AND   SEQ_CED ='+#39+copy(mskDocumento.Text,5,7)+#39+
                                       ' AND   VER_CED ='+#39+copy(mskDocumento.Text,13,1)+#39;
                 qfind.Open;
             end;
               If (qfind.RecordCount =0) Then
               begin
                 Raise exception.CreateFmt(' N�mero de Cedula No Existe.  Verifique.', []);
              end;
       end;
           qrPacientes.Edit;
           qrPacientesTipo_Documento.AsInteger       :=  dm.qrDocumento.Fieldbyname('Tipo_Documento').AsInteger;
           qrPacientesDocumento.AsString             :=  Documento;
           qrPacientesNombre.Value                   :=  qfind.FieldByName('Nombre').AsString;
           qrPacientesFecha_Nac.Text                 :=  qfind.FieldByName('Fecha_Nac').AsString;
           case qfind.FieldByName('Sexo').AsString[1] of
              'M': cbSexo.ItemIndex:=1;
              'F': cbSexo.ItemIndex:=0;
           end;
           if Copy(cbSexo.Text,1,1)='F' then
             qrPacientesSEXO.Text := '0'
           else if Copy(cbSexo.Text,1,1)='M' then
             qrPacientesSEXO.Text := '1';
//           If dm.qrParametroServidor_AS400.value <> EmptyStr then
//                DM.BuscaFoto(Self,Copy(mskDocumento.Text,1,3),Copy(mskDocumento.Text,5,7),Copy(mskDocumento.Text,13,1));
    End
    else
    begin
           qrPacientes.Edit;
           qrPacientesTipo_Documento.AsInteger       :=  dm.qrDocumento.Fieldbyname('TipoDocID').AsInteger;
           qrPacientesDocumento.AsString             :=  Documento;
           If txtNombre.Enabled then txtNombre.Setfocus;
    end;
    FreeAndNil(qfind);
end;

procedure TfrmDialogFiliacion.mskDocumentoExit(Sender: TObject);
Var
  qfind                 : TAdoQuery;
  Direccion,Documento,Tipo_Doc   : String;
begin
  inherited;
    Tipo_Doc  := cbExtDocumento.Text;
    Documento := mskDocumento.Text;
    if (mskDocumento.EditValue)<> EmptyStr then
    begin
      With qrPacientes, sql do
      begin
        Close;
        Clear;
        Text :='Select *  From PtPerfilGenetico Where Documento = '+#39+Documento+#39;
        Open;
        If (qrPacientes.RecordCount > 0) Then
        begin
           If dm.qrParametroServidor_AS400.value <> EmptyStr then
                DM.BuscaFoto(Self,Copy(qrPacientesDocumento.AsString,1,3),Copy(qrPacientesDocumento.AsString,5,7),Copy(qrPacientesDocumento.AsString,13,1));
            cbExtDocumento.Text := Tipo_Doc;
            mskDocumento.Text         := Documento;
            Exit;
        end;
      end;
    end;
    cbExtDocumento.Text := Tipo_Doc;
    mskDocumento.Text   := Documento;
    If (Length(trim(dm.qrDocumento.Fieldbyname('Mascara').AsString))= 13) or
       (Length(trim(dm.qrDocumento.Fieldbyname('Mascara').AsString))= 14) Then
    Begin
      If Not Dm.GetDigitoVerificador(copy(DM.Cortar_Char('-', mskDocumento.Text),1,11),qrPacientesTipo_Documento.AsString) Then
      begin
         EtMensajeDlg('Favor digitar N�mero de C�dula V�lido.', etError, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
//         qrClienteDomicilioDocumento.Value := EmptyStr;
         cbExtDocumento.Text := Tipo_Doc;
         mskDocumento.Setfocus;
         Exit;
      end;
      qfind := DM.NewQuery;
      DM.qrParametro.close;
      DM.qrParametro.open;
      If dm.qrParametroServidor_AS400.value = EmptyStr then
      begin
           Db1Servidor := 'Ced2011_1';
           Db2Servidor := 'Ced2011_2';
      end
      else
      begin
           Db1Servidor := 'Ced2011';
      end;
       qfind.Close;
       If cbExtDocumento.Text = 'CEDULA' then
       begin
         qfind.SQL.Text:=' SELECT * FROM PTCLIENTE '+
                         ' WHERE IDENTIFICACION like '+#39+'%'+Copy(mskDocumento.Text+'0',1,14)+'%'+#39+
                         ' AND ESTATUS='+#39'0'+#39;

       end else
       If cbExtDocumento.Text = 'CEDULA MENOR' then
       begin
         qfind.SQL.Text:=' SELECT * FROM PTCLIENTE '+
                         ' WHERE IDENTIFICACION like '+#39+'%'+Copy(mskDocumento.Text,1,14)+'%'+#39+
                         ' AND ESTATUS='+#39'0'+#39;

       end;
       qfind.Open;
       if qfind.RecordCount > 0 then
       begin
           qrPacientes.Insert;
           qrPacientesTipo_Documento.AsInteger       :=  dm.qrDocumento.Fieldbyname('TipoDocID').AsInteger;
           qrPacientesDocumento.AsString             :=  Documento;
           qrPacientesNombre.Value                   :=  qfind.FieldByName('NOMBRE').AsString;
           qrPacientesSexo.Value                     :=  qfind.FieldByName('Sexo').Value;
           qrPacientesFecha_Nac.Text                 :=  qfind.FieldByName('FechaNacimiento').AsString;
           qrPacientesTelefono.Value                 :=  qfind.FieldByName('Telefono').AsString;
          FreeAndNil(qfind);
          Exit;
       end
       else
       begin
             qfind.Close;
             qfind.SQL.Text:=' SELECT NOMBRES,APELLIDO1,ISNULL(APELLIDO2,'+#39+#39+') AS APELLIDO2,FECHA_NAC,SEXO,COD_SANGRE,P.COD_MUNICIPIO,P.COD_CIUDAD,'+
                                   '  P.COD_SECTOR,ISNULL(CALLE,'+#39+#39+') AS CALLE,ISNULL(CASA,'+#39+#39+') AS CASA,ISNULL(EDIFICIO,'+#39+#39+') AS EDIFICIO, ISNULL(PISO,'+#39+#39+') AS PISO, ISNULL(APTO,'+#39+#39+') AS APTO,ISNULL(S.DESCRIPCION,'+#39+#39+') AS SECTOR,C.CIUDADID AS CIUDAD '+
                                   '   FROM '+Db1Servidor+'..CEDULADOS P inner join '+Db1Servidor+'..SECTOR_PARAJE S on  '+
                                   '   		(S.COD_MUNICIPIO COLLATE SQL_AltDiction_CP850_CI_AI = P.COD_MUNICIPIO COLLATE SQL_AltDiction_CP850_CI_AI)  '+
                                   '   		AND (S.COD_SECTOR COLLATE SQL_AltDiction_CP850_CI_AI = P.COD_SECTOR COLLATE SQL_AltDiction_CP850_CI_AI ) INNER JOIN   '+
                                   '   '+Db1Servidor+'..MUNICIPIO M ON  '+
                                   '   		M.COD_MUNICIPIO COLLATE SQL_AltDiction_CP850_CI_AI = P.COD_MUNICIPIO COLLATE SQL_AltDiction_CP850_CI_AI '+
                                   '   		LEFT OUTER JOIN PTCIUDAD C ON '+
                                   '   		C.COD_NUM_PADRON COLLATE SQL_AltDiction_CP850_CI_AI = P.COD_MUNICIPIO COLLATE SQL_AltDiction_CP850_CI_AI '+
                                   ' WHERE MUN_CED ='+#39+Copy(mskDocumento.Text,1,3)+#39+
                                   ' AND   SEQ_CED ='+#39+copy(mskDocumento.Text,5,7)+#39+
                                   ' AND   VER_CED ='+#39+copy(mskDocumento.Text,13,1)+#39;
             qfind.Open;
             If (dm.qrParametroServidor_AS400.value <> EmptyStr) then
             begin
                 If (qfind.RecordCount =0) Then
                 begin
                   Raise exception.CreateFmt(' N�mero de Cedula No Existe.  Verifique.', []);
                 end
             end
             else
             If (dm.qrParametroServidor_AS400.value = EmptyStr) and (qfind.RecordCount =0) then
             begin
                 qfind.Close;
                 qfind.SQL.Text:=' SELECT NOMBRES,APELLIDO1,ISNULL(APELLIDO2,'+#39+#39+') AS APELLIDO2,FECHA_NAC,SEXO,COD_SANGRE,P.COD_MUNICIPIO,P.COD_CIUDAD,'+
                                       '  P.COD_SECTOR,ISNULL(CALLE,'+#39+#39+') AS CALLE,ISNULL(CASA,'+#39+#39+') AS CASA,ISNULL(EDIFICIO,'+#39+#39+') AS EDIFICIO, ISNULL(PISO,'+#39+#39+') AS PISO, ISNULL(APTO,'+#39+#39+') AS APTO,ISNULL(S.DESCRIPCION,'+#39+#39+') AS SECTOR,C.CIUDADID AS CIUDAD '+
                                       '   FROM '+Db2Servidor+'..CEDULADOS P inner join '+Db2Servidor+'..SECTOR_PARAJE S on  '+
                                       '   		(S.COD_MUNICIPIO COLLATE SQL_AltDiction_CP850_CI_AI = P.COD_MUNICIPIO COLLATE SQL_AltDiction_CP850_CI_AI)  '+
                                       '   		AND (S.COD_SECTOR COLLATE SQL_AltDiction_CP850_CI_AI = P.COD_SECTOR COLLATE SQL_AltDiction_CP850_CI_AI ) INNER JOIN   '+
                                       '   '+Db2Servidor+'..MUNICIPIO M ON  '+
                                       '   		M.COD_MUNICIPIO COLLATE SQL_AltDiction_CP850_CI_AI = P.COD_MUNICIPIO COLLATE SQL_AltDiction_CP850_CI_AI '+
                                       '   		LEFT OUTER JOIN PTCIUDAD C ON '+
                                       '   		C.COD_NUM_PADRON COLLATE SQL_AltDiction_CP850_CI_AI = P.COD_MUNICIPIO COLLATE SQL_AltDiction_CP850_CI_AI '+
                                       ' WHERE MUN_CED ='+#39+Copy(mskDocumento.Text,1,3)+#39+
                                       ' AND   SEQ_CED ='+#39+copy(mskDocumento.Text,5,7)+#39+
                                       ' AND   VER_CED ='+#39+copy(mskDocumento.Text,13,1)+#39;
                 qfind.Open;
             end;
               If (qfind.RecordCount =0) Then
               begin
                 Raise exception.CreateFmt(' N�mero de Cedula No Existe.  Verifique.', []);
              end;
       end;
           qrPacientes.Insert;
           qrPacientesTipo_Documento.AsInteger       :=  dm.qrDocumento.Fieldbyname('Tipo_Documento').AsInteger;
           qrPacientesDocumento.AsString             :=  Documento;
           qrPacientesNombre.Value                   :=  qfind.FieldByName('Nombre').AsString;
           qrPacientesFecha_Nac.Text                 :=  qfind.FieldByName('Fecha_Nac').AsString;
           case qfind.FieldByName('Sexo').AsString[1] of
              'M': cbSexo.ItemIndex:=1;
              'F': cbSexo.ItemIndex:=0;
           end;
           if Copy(cbSexo.Text,1,1)='F' then
             qrPacientesSEXO.Text := '0'
           else if Copy(cbSexo.Text,1,1)='M' then
             qrPacientesSEXO.Text := '1';
//           If dm.qrParametroServidor_AS400.value <> EmptyStr then
//                DM.BuscaFoto(Self,Copy(mskDocumento.Text,1,3),Copy(mskDocumento.Text,5,7),Copy(mskDocumento.Text,13,1));
    End
    else
    begin
           qrPacientes.Edit;
           qrPacientesTipo_Documento.AsInteger       :=  dm.qrDocumento.Fieldbyname('TipoDocID').AsInteger;
           qrPacientesDocumento.AsString             :=  Documento;
           If txtNombre.Enabled then txtNombre.Setfocus;
    end;
    FreeAndNil(qfind);
end;

procedure TfrmDialogFiliacion.Run;
Var qfind : TADOQuery;
begin
  With qrTipoFiliacion,sql do
  begin
    Close;
    Clear;
    Add(' SELECT * from PtPerfilGenetico ');
    Add(' Order by Nombre ');
    Open;
//    if IsEmpty then
//    begin
//      exit;
//    end;
    If Recordcount > 0 then First;
    dsFiliacionE.Enabled := False;
    if not mdFiliacionE.Active then
      mdFiliacionE.Active := true;
    mdFiliacionE.EmptyTable;
    while not eof do
    begin
        mdFiliacionE.Append;
        mdFiliacionESeleccion.AsBoolean     := False;
        mdFiliacionEPruebaID.AsString       := '00004543';
        mdFiliacionENombre.AsString         := fieldbyname('Nombre').AsString;
        mdFiliacionEDocumento.AsString      := fieldbyname('Documento').AsString;
        mdFiliacionECodigoIDAS400.AsString  := '0994';
        mdFiliacionECantidad.AsInteger      := 1;
        mdFiliacionERecID.Value             := fieldbyname('RecID').Value;
        Next;
    end;
    If Recordcount > 0 then mdFiliacionE.First;
    dsFiliacionE.Enabled := True;
  End;
  With qrTipoFiliacion,sql do
  begin
    Close;
    Clear;
    Add(' SELECT * from ptTipoFiliacion ');
    Add(' WHERE Grupo='+#39+'A'+#39);
    Add(' And Estatus='#39+'A'+#39);
    Add(' Order by Nombre ');
    Open;
//    if IsEmpty then
//    begin
//      exit;
//    end;
    If Recordcount > 0 then First;
    dsFiliacionA.Enabled := False;
    if not mdFiliacionA.Active then
      mdFiliacionA.Active := true;
    mdFiliacionA.EmptyTable;
    while not eof do
    begin
        mdFiliacionA.Append;
        mdFiliacionASeleccion.AsBoolean     := False;
        mdFiliacionAPruebaID.AsString       := fieldbyname('PruebaID').AsString;
        mdFiliacionANombre.AsString         := fieldbyname('Nombre').AsString;
        mdFiliacionACantidad.AsInteger      := fieldbyname('Cantidad').AsInteger;
        mdFiliacionACodigoIDAS400.AsString  := fieldbyname('CodigoIDAS400').AsString;
        Next;
    end;
    If Recordcount > 0 then mdFiliacionA.First;
    dsFiliacionA.Enabled := True;
  End;
  qrPruebas.Open;
  showmodal;
  if ModalResult = mrOk then
  begin
    If (frmMain.Exis_Vta = True) then
     Begin
      if JvMemoryData2.Active then JvMemoryData2.First;
       while not JvMemoryData2.Eof do
         begin
            if Factura_St = 'I' Then
            begin
               frmMain.frmTmp.qrEntradaPacienteDetalle.Insert;
               frmMain.frmTmp.qrEntradaPacienteDetalleCodigoAs400.Value   := JvMemoryData2CodigoIDAS400.Value;
               frmMain.frmTmp.qrEntradaPacienteDetallePruebaID.Value      := JvMemoryData2PruebaID.Value;
               frmMain.frmTmp.qrEntradaPacienteDetallePrecio.Value        := JvMemoryData2Precio.Value;
               frmMain.frmTmp.qrEntradaPacienteDetalleComentario.Value    := JvMemoryData2Comentario.Value;
               if frmMain.frmTmp.qrEntradaPacienteDetalle.State in [dsEdit, dsInsert] then
               Begin
                  frmMain.frmTmp.qrEntradaPacienteDetalle.Post;
               End
            end else if Factura_St = 'M' Then
            begin
               frmMain.frmTmpMod.qrEntradaPacienteDetalle.Insert;
               frmMain.frmTmpMod.qrEntradaPacienteDetalleCodigoAs400.Value    := JvMemoryData2CodigoIDAS400.Value;
               frmMain.frmTmpMod.qrEntradaPacienteDetallePruebaID.Value       := JvMemoryData2PruebaID.Value;
               frmMain.frmTmpMod.qrEntradaPacienteDetallePrecio.Value         := JvMemoryData2Precio.Value;
               frmMain.frmTmpMod.qrEntradaPacienteDetalleComentario.Value     := JvMemoryData2Comentario.Value;
               if frmMain.frmTmpMod.qrEntradaPacienteDetalle.State in [dsEdit, dsInsert] then
               Begin
                  frmMain.frmTmpMod.qrEntradaPacienteDetalle.Post;
               End;
            end else if Factura_St = 'F' Then
            begin
               frmMain.frmTmpND.qrEntradaPacienteDetalle.Insert;
               frmMain.frmTmpND.qrEntradaPacienteDetalleCodigoAs400.Value    := JvMemoryData2CodigoIDAS400.Value;
               frmMain.frmTmpND.qrEntradaPacienteDetallePruebaID.Value       := JvMemoryData2PruebaID.Value;
               frmMain.frmTmpND.qrEntradaPacienteDetallePrecio.Value         := JvMemoryData2Precio.Value;
               frmMain.frmTmpND.qrEntradaPacienteDetalleComentario.Value     := JvMemoryData2Comentario.Value;
               if frmMain.frmTmpND.qrEntradaPacienteDetalle.State in [dsEdit, dsInsert] then
               Begin
                  frmMain.frmTmpND.qrEntradaPacienteDetalle.Post;
               End;
            end else if Factura_St = 'L' Then
            begin
               frmMain.frmTmpLab.qrEntradaPacienteDetalle.Insert;
               frmMain.frmTmpLab.qrEntradaPacienteDetalleCodigoAs400.Value    := JvMemoryData2CodigoIDAS400.Value;
               frmMain.frmTmpLab.qrEntradaPacienteDetallePruebaID.Value       := JvMemoryData2PruebaID.Value;
               frmMain.frmTmpLab.qrEntradaPacienteDetallePrecio.Value         := JvMemoryData2Precio.Value;
               frmMain.frmTmpLab.qrEntradaPacienteDetalleComentario.Value     := JvMemoryData2Comentario.Value;
               if frmMain.frmTmpLab.qrEntradaPacienteDetalle.State in [dsEdit, dsInsert] then
               Begin
                  frmMain.frmTmpLab.qrEntradaPacienteDetalle.Post;
               End;
            end else if Factura_St = 'C' Then
            begin
               frmMain.frmClinica.qrEntradaPacienteDetalle.Insert;
               frmMain.frmClinica.qrEntradaPacienteDetalleCodigoAs400.Value   := JvMemoryData2CodigoIDAS400.Value;
               frmMain.frmClinica.qrEntradaPacienteDetallePruebaID.Value      := JvMemoryData2PruebaID.Value;
               frmMain.frmClinica.qrEntradaPacienteDetallePrecio.Value        := JvMemoryData2Precio.Value;
               frmMain.frmClinica.qrEntradaPacienteDetalleComentario.Value    := JvMemoryData2Comentario.Value;
               if frmMain.frmClinica.qrEntradaPacienteDetalle.State in [dsEdit, dsInsert] then
               Begin
                  frmMain.frmClinica.qrEntradaPacienteDetalle.Post;
               End;
            end;
           JvMemoryData2.Next;
         end;
     end;

   If (frmMain.Exis_Cli = True) then
    Begin
      if JvMemoryData2.Active then JvMemoryData2.First;
       while not JvMemoryData2.Eof do
        begin
         frmMain.frmClinica.qrEntradaPacienteDetalle.Insert;
         frmMain.frmClinica.qrEntradaPacienteDetallePruebaID.Value  := JvMemoryData2PruebaID.Value;
         if frmMain.frmClinica.qrEntradaPacienteDetalle.State in [dsEdit, dsInsert] then
         Begin
            frmMain.frmClinica.qrEntradaPacienteDetalle.Post;
         End;
         JvMemoryData2.Next;
        end;
    end;
  end;
end;
procedure TfrmDialogFiliacion.Seleccion_Entidad_E;
Var I : integer;
begin
  inherited;
    I:=0;
    if not mdFiliacionE.Active      then    mdFiliacionE.Active     := true;
    if not mdDatosFiliacion.Active  then    mdDatosFiliacion.Active := true;
//    if mdDatosFiliacion.Recordcount > 0 then mdDatosFiliacion.EmptyTable;
    mdFiliacionE.First;
    dsFiliacionE.Enabled := False;
    while not mdFiliacionE.Eof do
    begin
        if (mdFiliacionESeleccion.Asboolean) Then
        begin
           qrPruebas.Locate('PruebaID',mdFiliacionEPruebaID.AsString,[]);
           If (frmMain.Exis_Vta = True) then
           Begin
               If (qrPruebas.RecordCount > 0) And
                  (qrPruebasTipo.Value = 'P') And
                  (qrPruebasGrupoPruebaId.Value = 'PRU') Then
               Begin
                   //Confirmando el Mensaje No Reactivo del AS-400.
                   If dm.qrParametroServidor_AS400.value <> EmptyStr then
                   begin
                        if dm.PingHost(dm.qrParametroServidor_AS400.value,1) then
                        begin
                             InterfaseAS400.Confirmar_No_Reactivo(qrPruebasCODIGOIDAS400.Value,
                                                                  qrPruebasPRUEBAID.Value,
                                                                  qrPruebasDESCRIPCION.Value);
                        end;
                   end;
               end;

               If (qrPruebas.RecordCount > 0) And
                  (qrPruebasEstatus.Value = 0) Then
               begin
                   //Confirmando el Mensaje de la Prueba Inactiva.
                   Raise exception.CreateFmt(' La Prueba: (' + qrPruebasPRUEBAID.AsString + ') ' + qrPruebasDESCRIPCION.AsString + #13 +
                                             ' NO Puede Ser Seleccionada. ESTA PROHIBIDA SU FACTURACION. '+ #13 +
                                             ' Por Favor, Comuniquese con el Departamento Tecnico Correspondiente.!!!', []);
               end;
           end;
          If (Verifica_Seleccion_AS400('E')) or (Verifica_Pruebas_Aceptadas_IDAS400('E')) then
          begin
              dsFiliacionE.Enabled := True;
              mdFiliacionE.Edit;
              mdFiliacionESeleccion.AsBoolean      := False;
              mdFiliacionE.First;
              Raise exception.CreateFmt(' Existe otra prueba YA seleccionada con el mismo codigo de prueba AS-400.  Verifique con Seguros.', []);
          end;
          If (Verifica_Seleccion('E')) or (Verifica_Pruebas_Aceptadas('E')) then
          begin
              dsFiliacionE.Enabled := True;
              mdFiliacionE.Edit;
              mdFiliacionESeleccion.AsBoolean      := False;
              mdFiliacionE.First;
              Raise exception.CreateFmt(' La Prueba: (' + mdFiliacionEPruebaID.AsString + ') ' + JvMemoryData2Descripcion.AsString + #13 +
                                        ' Ya fu� Seleccionada. Favor verificar Pruebas Seleccionadas.', []);
          end
          else
          begin
            For I := 1 to mdFiliacionECantidad.Asinteger do
            begin
                if I = 1  then    dxLayoutControl1Group4.Caption :='Registro Datos Perfil Gen�tico ('+mdFiliacionENombre.AsString+')';
                mdDatosFiliacion.Append;
                mdDatosFiliacionSecuencia.Asinteger       := mdDatosFiliacion.RecordCount+1;
                if I = 1 then
                    mdDatosFiliacionPruebaID.AsString     := mdFiliacionEPruebaID.AsString
                Else
                    mdDatosFiliacionPruebaID.AsString     := DM.Busca_PruebaFiliacionAD(I);
                mdDatosFiliacionNombre.AsString           := mdFiliacionENombre.AsString;
                mdDatosFiliacionTipoPerfil.AsString       := 'PRINCIPAL';
                mdDatosFiliacionParentesco.AsString       := EmptyStr;
                mdDatosFiliacionTipoFiliacion.AsString    := 'E';
                mdDatosFiliacionFechaColeccion.AsString   := EmptyStr;
                mdDatosFiliacionRecID.Value               := mdFiliacionERecID.Value;
                mdFiliacionE.Edit;
                mdFiliacionESeleccion.AsBoolean      := False;
            end;
          end;
        end;
        mdFiliacionE.Next;
    end;
//    mdFiliacionE.Locate('PruebaID',mdDatosFiliacionPruebaID.AsString,[]);
    dsFiliacionE.Enabled := True;
    mdFiliacionE.First;
    mdDatosFiliacion.Edit;
    mdDatosFiliacion.First;
end;
procedure TfrmDialogFiliacion.Seleccion_Entidad_A;
Var I : integer;
begin
  inherited;
    I:=0;
    if not mdFiliacionA.Active      then    mdFiliacionA.Active     := true;
    if not mdDatosFiliacion.Active  then    mdDatosFiliacion.Active := true;
//    if mdDatosFiliacion.Recordcount > 0 then mdDatosFiliacion.EmptyTable;
    mdFiliacionA.First;
    dsFiliacionA.Enabled := False;
    while not mdFiliacionA.Eof do
    begin
        if (mdFiliacionASeleccion.Asboolean) Then
        begin
           qrPruebas.Locate('PruebaID',mdFiliacionAPruebaID.AsString,[]);
           If (frmMain.Exis_Vta = True) then
           Begin
               If (qrPruebas.RecordCount > 0) And
                  (qrPruebasTipo.Value = 'P') And
                  (qrPruebasGrupoPruebaId.Value = 'PRU') Then
               Begin
                   //Confirmando el Mensaje No Reactivo del AS-400.
                   If dm.qrParametroServidor_AS400.value <> EmptyStr then
                   begin
                        if dm.PingHost(dm.qrParametroServidor_AS400.value,1) then
                        begin
                             InterfaseAS400.Confirmar_No_Reactivo(qrPruebasCODIGOIDAS400.Value,
                                                                  qrPruebasPRUEBAID.Value,
                                                                  qrPruebasDESCRIPCION.Value);
                        end;
                   end;
               end;

               If (qrPruebas.RecordCount > 0) And
                  (qrPruebasEstatus.Value = 0) Then
               begin
                   //Confirmando el Mensaje de la Prueba Inactiva.
                   Raise exception.CreateFmt(' La Prueba: (' + qrPruebasPRUEBAID.AsString + ') ' + qrPruebasDESCRIPCION.AsString + #13 +
                                             ' NO Puede Ser Seleccionada. ESTA PROHIBIDA SU FACTURACION. '+ #13 +
                                             ' Por Favor, Comuniquese con el Departamento Tecnico Correspondiente.!!!', []);
               end;
           end;

          If (Verifica_Seleccion_AS400('A')) or (Verifica_Pruebas_Aceptadas_IDAS400('A')) then
          begin
              dsFiliacionA.Enabled := True;
              mdFiliacionA.Edit;
              mdFiliacionASeleccion.AsBoolean      := False;
              mdFiliacionA.First;
              Raise exception.CreateFmt(' Existe otra prueba YA seleccionada con el mismo codigo de prueba AS-400.  Verifique con Seguros.', []);
          end;
          If (Verifica_Seleccion('A')) or (Verifica_Pruebas_Aceptadas('A')) then
          begin
              dsFiliacionA.Enabled := True;
              mdFiliacionA.Edit;
              mdFiliacionASeleccion.AsBoolean      := False;
              mdFiliacionA.First;
              Raise exception.CreateFmt(' La Prueba: (' + mdFiliacionAPruebaID.AsString + ') ' + JvMemoryData2Descripcion.AsString + #13 +
                                        ' Ya fu� Seleccionada. Favor verificar Pruebas Seleccionadas.', []);
          end
          else
          begin
                mdDatosFiliacion.Append;
                I:=mdDatosFiliacion.RecordCount+1;
                mdDatosFiliacionSecuencia.Asinteger       := I;
                mdDatosFiliacionPruebaID.AsString         := mdFiliacionAPruebaID.AsString;
                mdDatosFiliacionNombre.AsString           := EmptyStr;
                mdDatosFiliacionTipoPerfil.AsString       := 'ADICIONAL';
                mdDatosFiliacionParentesco.AsString       := EmptyStr;
                mdDatosFiliacionTipoFiliacion.AsString    := 'A';
                mdDatosFiliacionFechaColeccion.AsString   := EmptyStr;
                mdFiliacionA.Edit;
                mdFiliacionASeleccion.AsBoolean      := False;
          end;
        end;
        mdFiliacionA.Next;
    end;
//    mdFiliacionE.Locate('PruebaID',mdDatosFiliacionPruebaID.AsString,[]);
    dsFiliacionA.Enabled := True;
    mdFiliacionA.First;
    mdDatosFiliacion.Edit;
    mdDatosFiliacion.First;
end;

procedure TfrmDialogFiliacion.Seleccion_Adicional;
Var I : integer; qfiliacion  : TAdoQuery;
begin
  inherited;
    if not mdFiliacionA.Active then mdFiliacionA.Active := true;
{    if not (jvMemoryData2.Active) or (jvMemoryData2.Recordcount < 1) then
    begin
          dsFiliacionA.Enabled := True;
          mdFiliacionA.Edit;
          mdFiliacionASeleccion.AsBoolean      := False;
          Raise exception.CreateFmt(' Debe seleccionar Unidad Familiar.  Verifique.', []);
    end;
}
    mdFiliacionA.First;
    dsFiliacionA.Enabled := False;
    while not mdFiliacionA.Eof do
    begin
        if (mdFiliacionASeleccion.Asboolean) Then
        begin
           qrPruebas.Locate('PruebaID',mdFiliacionAPruebaID.AsString,[]);
           If (frmMain.Exis_Vta = True) then
           Begin
               If (qrPruebas.RecordCount > 0) And
                  (qrPruebasTipo.Value = 'P') And
                  (qrPruebasGrupoPruebaId.Value = 'PRU') Then
               Begin
                   //Confirmando el Mensaje No Reactivo del AS-400.
                   If dm.qrParametroServidor_AS400.value <> EmptyStr then
                   begin
                        if dm.PingHost(dm.qrParametroServidor_AS400.value,1) then
                        begin
                         InterfaseAS400.Confirmar_No_Reactivo(qrPruebasCODIGOIDAS400.Value,
                                                              qrPruebasPRUEBAID.Value,
                                                              qrPruebasDESCRIPCION.Value);
                        end;
                   end;
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
          If (Verifica_Seleccion_AS400('A')) or (Verifica_Pruebas_Aceptadas_IDAS400('A')) then
          begin
              dsFiliacionA.Enabled := True;
              mdFiliacionA.Edit;
              mdFiliacionASeleccion.AsBoolean      := False;
              mdFiliacionA.First;
              Raise exception.CreateFmt(' Existe otra prueba YA seleccionada con el mismo codigo de prueba AS-400.  Verifique con Seguros.', []);
          end;
          If (Verifica_Seleccion('A')) or (Verifica_Pruebas_Aceptadas('A')) then
          begin
              dsFiliacionA.Enabled := True;
              mdFiliacionA.Edit;
              mdFiliacionASeleccion.AsBoolean      := False;
              mdFiliacionA.First;
              Raise exception.CreateFmt(' La Prueba: (' + mdFiliacionEPruebaID.AsString + ') ' + JvMemoryData2Descripcion.AsString + #13 +
                                        ' Ya fu� Seleccionada. Favor verificar Pruebas Seleccionadas.', []);
          end
          else
            qFiliacion := DM.NewQuery;
            With qFiliacion, sql do
            begin
                Close;
                Text := ' Select * from ptPrueba '+
                               ' Where PruebaID ='+#39+mdFiliacionAPruebaID.AsString+#39+
                               ' And DataAreaID ='+#39+dm.CurEmpresa+#39;
                Open;
                if (RecordCount > 0) then
                begin
                    JvMemoryData2.Append;
                    JvMemoryData2Seleccion.AsBoolean      := True;
                    JvMemoryData2PruebaID.AsString        := fieldbyname('PruebaID').Asstring;
                    JvMemoryData2Descripcion.AsString     := fieldbyname('Descripcion').Asstring;
                    JvMemoryData2Precio.AsFloat           := fieldbyname('Precio').AsCurrency;
                    JvMemoryData2PrecioDolares.AsFloat    := fieldbyname('PrecioDolares').AsCurrency;
                    JvMemoryData2CodigoIDAS400.AsString   := fieldbyname('CodigoIDAS400').Asstring;
                    dsFiliacionA.Enabled := True;
                    mdFiliacionA.Edit;
                    mdFiliacionASeleccion.AsBoolean      := False;
                end;
            end;
        end;
        mdFiliacionA.Next;
    end;
//    mdFiliacionE.Locate('PruebaID',mdDatosFiliacionPruebaID.AsString,[]);
    dsFiliacionA.Enabled := True;
    mdDatosFiliacion.Edit;
end;

Function TfrmDialogFiliacion.Verifica_Pruebas_Aceptadas(Tipo:String): Boolean;
begin
  inherited;
  Result:=false;
    if Factura_St = 'I' Then
    begin
        if Tipo = 'E' then if frmMain.frmTmp.qrEntradaPacienteDetalle.Locate('PruebaID',mdFiliacionEPruebaID.AsString,[]) then  Result:=true;
        if Tipo = 'A' then if frmMain.frmTmp.qrEntradaPacienteDetalle.Locate('PruebaID',mdFiliacionAPruebaID.AsString,[]) then  Result:=true;
        if Tipo = 'D' then if frmMain.frmTmp.qrEntradaPacienteDetalle.Locate('PruebaID',mdDatosFiliacionPruebaID.AsString,[]) then  Result:=true
    end else if Factura_St = 'M' Then
    begin
        if Tipo = 'E' then if frmMain.frmTmpMod.qrEntradaPacienteDetalle.Locate('PruebaID',mdFiliacionEPruebaID.AsString,[]) then Result:=true;
        if Tipo = 'A' then if frmMain.frmTmpMod.qrEntradaPacienteDetalle.Locate('PruebaID',mdFiliacionAPruebaID.AsString,[]) then Result:=true;
        if Tipo = 'D' then if frmMain.frmTmpMod.qrEntradaPacienteDetalle.Locate('PruebaID',mdDatosFiliacionPruebaID.AsString,[]) then Result:=true
    end else if Factura_St = 'F' Then
    begin
        if Tipo = 'E' then if frmMain.frmTmpND.qrEntradaPacienteDetalle.Locate('PruebaID',mdFiliacionEPruebaID.AsString,[]) then Result:=true;
        if Tipo = 'A' then if frmMain.frmTmpND.qrEntradaPacienteDetalle.Locate('PruebaID',mdFiliacionAPruebaID.AsString,[]) then Result:=true;
        if Tipo = 'D' then if frmMain.frmTmpND.qrEntradaPacienteDetalle.Locate('PruebaID',mdDatosFiliacionPruebaID.AsString,[]) then Result:=true
    end else if Factura_St = 'L' Then
    begin
        if Tipo = 'E' then if frmMain.frmTmpLab.qrEntradaPacienteDetalle.Locate('PruebaID',mdFiliacionEPruebaID.AsString,[]) then Result:=true;
        if Tipo = 'A' then if frmMain.frmTmpLab.qrEntradaPacienteDetalle.Locate('PruebaID',mdFiliacionAPruebaID.AsString,[]) then Result:=true;
        if Tipo = 'D' then if frmMain.frmTmpLab.qrEntradaPacienteDetalle.Locate('PruebaID',mdDatosFiliacionPruebaID.AsString,[]) then Result:=true
    end else if Factura_St = 'C' Then
    begin
        if Tipo = 'E' then if frmMain.frmClinica.qrEntradaPacienteDetalle.Locate('PruebaID',mdFiliacionEPruebaID.AsString,[]) then  Result:=true;
        if Tipo = 'A' then if frmMain.frmClinica.qrEntradaPacienteDetalle.Locate('PruebaID',mdFiliacionAPruebaID.AsString,[]) then  Result:=true;
        if Tipo = 'D' then if frmMain.frmClinica.qrEntradaPacienteDetalle.Locate('PruebaID',mdDatosFiliacionPruebaID.AsString,[]) then  Result:=true;
    end;

End;
Function TfrmDialogFiliacion.Verifica_Pruebas_Aceptadas_IDAS400(Tipo:String): Boolean;
begin
  inherited;
    Result:=false;
    if Factura_St = 'I' Then
    begin
    if frmMain.frmTmp.qrEntradaPacienteDetalle.Locate('CodigoAS400',mdFiliacionECodigoIDAS400.AsString,[]) then Result:=true;
    end else if Factura_St = 'M' Then
    begin
        if Tipo = 'E' Then if frmMain.frmTmpMod.qrEntradaPacienteDetalle.Locate('CodigoAS400',mdFiliacionECodigoIDAS400.AsString,[]) then Result:=true;
        if Tipo = 'A' Then if frmMain.frmTmpMod.qrEntradaPacienteDetalle.Locate('CodigoAS400',mdFiliacionACodigoIDAS400.AsString,[]) then Result:=true;
        if Tipo = 'D' Then if frmMain.frmTmpMod.qrEntradaPacienteDetalle.Locate('CodigoAS400',mdDatosFiliacionCodigoIDAS400.AsString,[]) then Result:=true;
    end else if Factura_St = 'F' Then
    begin
        if Tipo = 'E' Then if frmMain.frmTmpND.qrEntradaPacienteDetalle.Locate('CodigoAS400',mdFiliacionECodigoIDAS400.AsString,[]) then Result:=true;
        if Tipo = 'A' Then if frmMain.frmTmpND.qrEntradaPacienteDetalle.Locate('CodigoAS400',mdFiliacionACodigoIDAS400.AsString,[]) then Result:=true;
        if Tipo = 'D' Then if frmMain.frmTmpND.qrEntradaPacienteDetalle.Locate('CodigoAS400',mdDatosFiliacionCodigoIDAS400.AsString,[]) then Result:=true;
    end else if Factura_St = 'L' Then
    begin
        If Tipo = 'E' Then if frmMain.frmTmpLab.qrEntradaPacienteDetalle.Locate('CodigoAS400',mdFiliacionECodigoIDAS400.AsString,[]) then Result:=true;
        If Tipo = 'A' Then if frmMain.frmTmpLab.qrEntradaPacienteDetalle.Locate('CodigoAS400',mdFiliacionACodigoIDAS400.AsString,[]) then Result:=true;
        If Tipo = 'D' Then if frmMain.frmTmpLab.qrEntradaPacienteDetalle.Locate('CodigoAS400',mdDatosFiliacionCodigoIDAS400.AsString,[]) then Result:=true;
    end else if Factura_St = 'C' Then
    begin
        If Tipo = 'E' Then if frmMain.frmClinica.qrEntradaPacienteDetalle.Locate('CodigoAS400',mdFiliacionECodigoIDAS400.AsString,[]) then Result:=true;
        If Tipo = 'A' Then if frmMain.frmClinica.qrEntradaPacienteDetalle.Locate('CodigoAS400',mdFiliacionACodigoIDAS400.AsString,[]) then Result:=true;
        If Tipo = 'D' Then if frmMain.frmClinica.qrEntradaPacienteDetalle.Locate('CodigoAS400',mdDatosFiliacionCodigoIDAS400.AsString,[]) then Result:=true;
    end;
End;

Function TfrmDialogFiliacion.Verifica_Seleccion(Tipo:String): Boolean;
begin
  inherited;
    Result:=false;
    if Tipo = 'E' Then if mdDatosFiliacion.Locate('PruebaID',mdFiliacionEPruebaID.AsString,[]) then Result:=true;
    if Tipo = 'A' Then if mdDatosFiliacion.Locate('PruebaID',mdFiliacionAPruebaID.AsString,[]) then Result:=true;
    if Tipo = 'D' Then if jvMemoryData2.Locate('PruebaID',mdDatosFiliacionPruebaID.AsString,[]) then Result:=true;
End;
Function TfrmDialogFiliacion.Verifica_Seleccion_AS400(Tipo:String): Boolean;
begin
  inherited;
    Result:=false;
    If Tipo = 'E' Then if mdDatosFiliacion.Locate('CodigoIDAS400',mdFiliacionECodigoIDAS400.AsString,[]) then  Result:=true;
    If Tipo = 'A' Then if mdDatosFiliacion.Locate('CodigoIDAS400',mdFiliacionACodigoIDAS400.AsString,[]) then  Result:=true;
    If Tipo = 'D' Then if jvMemoryData2.Locate('CodigoIDAS400',mdDatosFiliacionCodigoIDAS400.AsString,[]) then  Result:=true;
End;
Function TfrmDialogFiliacion.Verifica_Campos : Boolean;
begin
  inherited;
  Result:=false;
  if mdDatosFiliacion.Active then
  begin
      mdDatosFiliacion.First;
      while not mdDatosFiliacion.eof do
      begin
        if Not ((mdDatosFiliacionSecuencia.AsInteger < 1) or  (Trim(mdDatosFiliacionPruebaID.AsString) = EmptyStr)
        or (Trim(mdDatosFiliacionNombre.AsString) = EmptyStr) or (Trim(mdDatosFiliacionParentesco.AsString) = EmptyStr)
        or (Trim(mdDatosFiliacionTipoFiliacion.AsString) = EmptyStr) or (Trim(mdDatosFiliacionFechaColeccion.AsString) = EmptyStr))
//        or (Trim(mdDatosFiliacionCodigoIDAS400.AsString) = EmptyStr)
         then
        begin
           Result:=True
        end
        else
        begin
           Result:=False;
           Exit;
        end;
        mdDatosFiliacion.Next;
      end;
  end;
End;
procedure TfrmDialogFiliacion.Seleccion_Pruebas;
Var  qfiliacion  : TAdoQuery;
begin
  inherited;
    if not mdDatosFiliacion.Active then
      mdDatosFiliacion.Active := true;
    if not JvMemoryData2.Active then
      JvMemoryData2.Active := true;
    mdDatosFiliacion.First;
    dsDatosFiliacion.Enabled := False;
    while not mdDatosFiliacion.Eof do
    begin
           qrPruebas.Locate('PruebaID',mdDatosFiliacionPruebaID.AsString,[]);
           If (frmMain.Exis_Vta = True) then
           Begin
               If (qrPruebas.RecordCount > 0) And
                  (qrPruebasTipo.Value = 'P') And
                  (qrPruebasGrupoPruebaId.Value = 'PRU') Then
               begin
                   //Confirmando el Mensaje No Reactivo del AS-400.
                   If dm.qrParametroServidor_AS400.value <> EmptyStr then
                   begin
                        if dm.PingHost(dm.qrParametroServidor_AS400.value,1) then
                        begin
                          InterfaseAS400.Confirmar_No_Reactivo(qrPruebasCODIGOIDAS400.Value,
                                                              qrPruebasPRUEBAID.Value,
                                                              qrPruebasDESCRIPCION.Value);
                        end;
                   end;
               end;
               If (qrPruebas.RecordCount > 0) And
                  (qrPruebasEstatus.Value = 0) Then
                 Begin
                   //Confirmando el Mensaje de la Prueba Inactiva.
                   Raise exception.CreateFmt(' La Prueba: (' + qrPruebasPRUEBAID.AsString + ') ' + qrPruebasDESCRIPCION.AsString + #13 +
                                             ' NO Puede Ser Seleccionada. ESTA PROHIBIDA SU FACTURACION. '+ #13 +
                                             ' Por Favor, Comuniquese con el Departamento Tecnico Correspondiente.!!!', []);
                 end;
           end;
          If (Verifica_Seleccion_AS400('D')) or (Verifica_Pruebas_Aceptadas_IDAS400('D')) then
          begin
              dsDatosFiliacion.Enabled := True;
              mdDatosFiliacion.Edit;
//              mdFiliacionESeleccion.AsBoolean      := False;
              mdDatosFiliacion.First;
              Raise exception.CreateFmt(' Existe otra prueba YA seleccionada con el mismo codigo de prueba AS-400.  Verifique con Seguros.', []);
          end;
          If (Verifica_Seleccion('D')) or (Verifica_Pruebas_Aceptadas('D')) then
          begin
              dsDatosFiliacion.Enabled := True;
              dsDatosFiliacion.Edit;
//              mdFiliacionESeleccion.AsBoolean      := False;
              mdDatosFiliacion.First;
              Raise exception.CreateFmt(' La Prueba: (' + mdDatosFiliacionPruebaID.AsString + ') ' + JvMemoryData2Descripcion.AsString + #13 +
                                        ' Ya fu� Seleccionada. Favor verificar Pruebas Seleccionadas.', []);
          end
          else
          begin
            qFiliacion := DM.NewQuery;
            With qFiliacion, sql do
            begin
                  Close;
                  Clear;
                  if Factura_St = 'I' Then
                  begin
                      ClienteID    := frmMain.frmTmp.qrEntradaPacienteClienteID.Value;
                  end
                  else
                  if Factura_St = 'M' Then
                  begin
                      ClienteID    := frmMain.frmTmpMod.qrEntradaPacienteClienteID.Value;
                  end
                  else
                  if Factura_St = 'L' Then
                  begin
                      ClienteID    := frmMain.frmTmpLab.qrEntradaPacienteClienteID.Value;
                  end
                  else
                  if Factura_St = 'C' Then
                  begin
                      ClienteID    := frmMain.frmClinica.qrEntradaPacienteClienteID.Value;
                  end
                  else
                  if Factura_St = 'F' Then
                  begin
                      ClienteID    := frmMain.frmTmpND.qrEntradaPacienteClienteID.Value;
                  end;
                  Add(' SELECT     p.PRUEBAID, p.ALIAS, p.DESCRIPCION, p.ESTATUS, p.GRUPOPRUEBAID, p.DEPARTAMENTO, a.PRECIO, p.PERMITECAMBIOPRECIO,');
                  Add('           p.CODIGOAXAPTA, p.PRECIODOLARES, p.COSTO, EXTERIOR, FACTURARCABECERA, p.PRUEBAS, p.TIPO, p.ORINA, p.SANGRE, p.CONDPACIENTE,');
                  Add('           p.CONDMUESTRA, p.CODDIAPROC, p.DIASRESULTADO, p.UNIDAD, p.ABREVIACION, p.MEDIO, p.COLOR, p.DEPID, p.TIPOAS400,');
                  Add('           CONVERT(VARCHAR(10), CASE p.CODIGOIDAS400 WHEN NULL THEN 0 WHEN '+#39+#39+' THEN 0 ELSE p.CODIGOIDAS400 END) AS CODIGOIDAS400,');
                  Add('           p.MEDIOAS400, p.NOPROCESAR, p.COMENTARIONOPROCESAR, p.TIPOMUESTRA, p.COMENTARIO_REQ, p.COD_SEC_PRUEBA, p.DATAAREAID,');
                  Add('           p.RECID, p.SEXO, p.AYUNA,'+#39+'1'+#39+' as GPrecio');
                  Add(' FROM      PTACUERDOCOMERCIAL a INNER JOIN ptprueba p ON ');
                  Add(' a.pruebarelation = p.pruebaid ');
                  Add(' WHERE convert(varchar(08),Getdate(),112) Between convert(varchar(08),a.desde,112) And convert(varchar(08),a.hasta,112)');
                  Add(' AND p.dataareaid = a.dataareaid ');
                  Add(' AND a.clienterelation = '+#39+ClienteID+#39+' And a.pruebarelation ='+#39+mdDatosFiliacionPruebaID.AsString+#39);
                  Add(' And a.desde in (SELECT max(desde) FROM PTACUERDOCOMERCIAL ');
                  Add(' WHERE CLIENTERELATION='+#39+ClienteID+#39+' And pruebarelation ='+#39+mdDatosFiliacionPruebaID.AsString+#39);
                  Add(' And Pruebarelation=p.pruebaid ');
                  Add(' And Convert(varchar(08),Getdate(),112) Between convert(varchar(08),desde,112) And convert(varchar(08),hasta,112))');
                  Add(' And a.RECID in (SELECT max(RECID) FROM PTACUERDOCOMERCIAL');
                  Add(' WHERE CLIENTERELATION='+#39+ClienteID+#39+' And pruebarelation ='+#39+mdDatosFiliacionPruebaID.AsString+#39);
                  Add(' And Pruebarelation=p.pruebaid ');
                  Add(' And Convert(varchar(08),Getdate(),112) Between convert(varchar(08),desde,112) And convert(varchar(08),hasta,112))');
                  Open;
//                Close;
//                Text := ' Select * from ptPrueba '+
//                               ' Where PruebaID ='+#39+mdDatosFiliacionPruebaID.AsString+#39+
//                               ' And DataAreaID ='+#39+dm.CurEmpresa+#39;
//                Open;
                if (RecordCount > 0) then
                begin
                    JvMemoryData2.Append;
                    JvMemoryData2Seleccion.AsBoolean      := True;
                    JvMemoryData2PruebaID.AsString        := fieldbyname('PruebaID').Asstring;
                    JvMemoryData2Descripcion.AsString     := fieldbyname('Descripcion').Asstring;
                    if (mdDatosFiliacionTipoFiliacion.AsString = 'E') Then mdDatosFiliacion.Locate('TipoPerfil','PRINCIPAL',[]);
                    if (mdDatosFiliacionTipoFiliacion.AsString = 'E') And (DM.Verifica_Entradas_PG(mdDatosFiliacionRecID.Value)) then
                      JvMemoryData2Precio.AsFloat         := 0
                    else
                      JvMemoryData2Precio.AsFloat         := fieldbyname('Precio').AsCurrency;
                    JvMemoryData2PrecioDolares.AsFloat    := fieldbyname('PrecioDolares').AsCurrency;
                    JvMemoryData2CodigoIDAS400.AsString   := fieldbyname('CodigoIDAS400').Asstring;
                    JvMemoryData2Comentario.AsString      := Trim(mdDatosFiliacionNombre.AsString)+' ('+Trim(mdDatosFiliacionParentesco.AsString)+')';
                end;
            end;
          end;
        mdDatosFiliacion.Next;
        end;
    mdDatosFiliacion.Locate('PruebaID',JvMemoryData2PruebaID.AsString,[]);
    dsDatosFiliacion.Enabled := True;
    FreeAndNil(qFiliacion);
end;

END.


