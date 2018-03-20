unit ConsultaWebAzul;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomModule, Menus, StdActns, ActnList, StrUtils, JvComponentBase,
  JvFormPlacement, ExtCtrls, JvExControls, JvComponent, JvEnterTab,
  dxLayoutControl, cxControls, cxPC, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxLookAndFeelPainters,
  StdCtrls, cxButtons, cxDBEdit, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxContainer, cxTextEdit, ADODB, cxImageComboBox,
  cxCheckBox, cxTimeEdit,cxDbLookupComboBox,cxDBExtLookupComboBox,cxSpinEdit,
  cxMemo, DateUtils, cxBlobEdit, cxintl,dlgmensajes, cxLookupEdit,
  cxDBLookupEdit, cxLabel, LMDCustomButton, LMDButton, LMDControl,
  LMDBaseControl, LMDBaseGraphicControl, LMDBaseLabel, LMDCustomLabel, LMDLabel,
  LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel, LMDSimplePanel;

type
  TfrmConsultaWebAzul = class(TfrmCustomModule)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    cxPageControl1: TcxPageControl;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxTabSheet1: TcxTabSheet;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutControl2Group1: TdxLayoutGroup;
    dxLayoutControl2Group2: TdxLayoutGroup;
    dxLayoutControl2Item4: TdxLayoutItem;
    BtImprimir: TcxButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    qrPagos: TADOQuery;
    dsReclamo: TDataSource;
    dsReclamoDetalle: TDataSource;
    dxLayoutControl2Item1: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutControl2Item3: TdxLayoutItem;
    cxGridStyles: TcxStyleRepository;
    stGrDatos: TcxStyle;
    stGrEdit: TcxStyle;
    edbuscarpor: TcxComboBox;
    edbuscar: TcxTextEdit;
    dtFechaIni: TcxDateEdit;
    dtFechaFin: TcxDateEdit;
    dxLayoutControl2Item10: TdxLayoutItem;
    GridTransacciones: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    GridTransaccionesDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1Paciente: TcxGridDBColumn;
    cxGridDBTableView1Fecha: TcxGridDBColumn;
    cxGridDBTableView1Monto: TcxGridDBColumn;
    cxGridDBTableView1Numero: TcxGridDBColumn;
    cxGridDBTableView1NombrePaciente: TcxGridDBColumn;
    cxGridDBTableView1Estatus: TcxGridDBColumn;
    spDetalle: TLMDSimplePanel;
    LMDLabel1: TLMDLabel;
    btCancelC: TLMDButton;
    btAceptaSer: TLMDButton;
    E: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cbExtSucursal: TcxExtLookupComboBox;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxMontoEFE: TcxMaskEdit;
    cxMontoTC: TcxMaskEdit;
    cxMontoCK: TcxMaskEdit;
    cxLabel2: TcxLabel;
    spTurno: TcxSpinEdit;
    cxLabel3: TcxLabel;
    txtCuadre: TcxTextEdit;
    cxLabel4: TcxLabel;
    dtFechaDep: TcxDateEdit;
    cbExtBanco: TcxExtLookupComboBox;
    cxLabel5: TcxLabel;
    cxMontoDON: TcxMaskEdit;
    cxMontoFS: TcxMaskEdit;
    cxLabel6: TcxLabel;
    cxMontoCDEP: TcxMaskEdit;
    cxLabel7: TcxLabel;
    cxLabel12: TcxLabel;
    txtCuentaBanco: TcxTextEdit;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView2: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    qrPagosPaciente: TStringField;
    qrPagosMonto: TBCDField;
    qrPagosFecha: TDateTimeField;
    qrPagosCodigo_Autorizacion: TStringField;
    qrPagosEstatus: TStringField;
    qrPagosNOMBREPACIENTE: TStringField;
    procedure qrPagosCalcFields(DataSet: TDataSet);
    procedure edbuscarporPropertiesChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edbuscarporExit(Sender: TObject);
    procedure edbuscarExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BuscarData;

  protected
    procedure SetColorTo(iColor: TColor);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

Type
  TDias = Record
  Lunes, Martes, Miercoles, Jueves, Viernes, Sabado, Domingo : Integer;
  End;

var
  frmConsultaWebAzul        : TfrmConsultaWebAzul;
  titulo                      : String;
  adentrogrid, _buscar        : Boolean;

implementation

uses ActionsDM, cxExportGrid4Link, DataModule, Main;

{$R *.dfm}

//Buscando el Label de la Prueba Registrada.
procedure TfrmConsultaWebAzul.FormPaint(Sender: TObject);
begin
  inherited;
  pnCaption.Caption := titulo;
  FFrameTopPanel.Caption := titulo;
  frmCustomModule.Caption := FFrameTopPanel.Caption;
end;

procedure TfrmConsultaWebAzul.FormShow(Sender: TObject);
begin
  inherited;
  edbuscarpor.ItemIndex   := 0;
  edbuscarpor.SetFocus;
  With qrPagos, sql do
  begin
    Close;
    Clear;
    Text :='Select Top 0 * from Azuldb.dbo.Pagos p left Join PtEntradaPaciente e '+
           'On p.paciente=e.Muestrano';
    Open;
  end;
end;
procedure TfrmConsultaWebAzul.qrPagosCalcFields(DataSet: TDataSet);
begin
  inherited;
  If qrPagosEstatus.Value = 'S' then
     qrPagosEstatus.Value:='Aplicado'
  else
     qrPagosEstatus.Value:='No Aplicado';
end;

procedure TfrmConsultaWebAzul.edbuscarExit(Sender: TObject);
begin
  inherited;
  _buscar := True;
  adentrogrid := False;
  BuscarData;
end;

procedure TfrmConsultaWebAzul.edbuscarporExit(Sender: TObject);
begin
  inherited;
  _buscar := True;
  adentrogrid := False;
end;

procedure TfrmConsultaWebAzul.edbuscarporPropertiesChange(Sender: TObject);
begin
  inherited;
  if (edbuscarpor.ItemIndex = 3) Then BuscarData;
end;

procedure TfrmConsultaWebAzul.FormCreate(Sender: TObject);
begin
  inherited;
  titulo := 'Consulta Entradas con Pagos vía Web-Azul';
end;

procedure TfrmConsultaWebAzul.FormDestroy(Sender: TObject);
begin
  inherited;
  frmMain.Exis_Muestra := False;
  frmMain.Muestra_Unico := False;
  frmMain.Muestra_Todos := False;  
  frmMain.Tran_fer := False;
end;
procedure TfrmConsultaWebAzul.FormKeyDown(Sender: TObject; var Key: Word;
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

      if (qrPagos.RecordCount >0) then
        ModalResult := mrOk;
    end;

end;

procedure TfrmConsultaWebAzul.SetColorTo(iColor: TColor);
var
  i : Integer;
  oColor : TColor;
begin
  //SetComponentsColor(iColor);
  stGrEdit.Color := iColor;

  oColor := DM.ColorConsulta;
  for i := 0 to ComponentCount -1 do begin
    if ( Components[i] is TcxDbMaskEdit ) then begin
      if ( Components[i] as TcxDbMaskEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbMaskEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbMaskEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbComboBox ) then begin
      if ( Components[i] as TcxDbComboBox ).Properties.ReadOnly then
        ( Components[i] as TcxDbComboBox ).Style.Color := oColor
      else
        ( Components[i] as TcxDbComboBox ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbButtonEdit ) then begin
      if ( Components[i] as TcxDbButtonEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbButtonEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbButtonEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDBMRUEdit ) then begin
      if ( Components[i] as TcxDBMRUEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDBMRUEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDBMRUEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbTextEdit ) then begin
      if ( Components[i] as TcxDbTextEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbTextEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbTextEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbLookupComboBox ) then begin
      if ( Components[i] as TcxDbLookupComboBox ).Properties.ReadOnly then
        ( Components[i] as TcxDbLookupComboBox ).Style.Color := oColor
      else
        ( Components[i] as TcxDbLookupComboBox ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDBExtLookupComboBox ) then begin
      if ( Components[i] as TcxDBExtLookupComboBox ).Properties.ReadOnly then
        ( Components[i] as TcxDBExtLookupComboBox ).Style.Color := oColor
      else
        ( Components[i] as TcxDBExtLookupComboBox ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbCheckBox ) then begin
      if ( Components[i] as TcxDbCheckBox ).Properties.ReadOnly then
        ( Components[i] as TcxDbCheckBox ).Style.Color := oColor
      else
        ( Components[i] as TcxDbCheckBox ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbLookupComboBox ) then begin
      if ( Components[i] as TcxDbLookupComboBox ).Properties.ReadOnly then
        ( Components[i] as TcxDbLookupComboBox ).Style.Color := oColor
      else
        ( Components[i] as TcxDbLookupComboBox ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbImageComboBox ) then begin
      if ( Components[i] as TcxDbImageComboBox ).Properties.ReadOnly then
        ( Components[i] as TcxDbImageComboBox ).Style.Color := oColor
      else
        ( Components[i] as TcxDbImageComboBox ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbCalcEdit ) then begin
      if ( Components[i] as TcxDbCalcEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbCalcEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbCalcEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbSpinEdit ) then begin
      if ( Components[i] as TcxDbSpinEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbSpinEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbSpinEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbCurrencyEdit ) then begin
      if ( Components[i] as TcxDbCurrencyEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbCurrencyEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbCurrencyEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbTimeEdit ) then begin
      if ( Components[i] as TcxDbTimeEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbTimeEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbTimeEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbMemo ) then begin
      if ( Components[i] as TcxDbMemo ).Properties.ReadOnly then
        ( Components[i] as TcxDbMemo ).Style.Color := oColor
      else
        ( Components[i] as TcxDbMemo ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbHyperLinkEdit ) then begin
      if ( Components[i] as TcxDbHyperLinkEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbHyperLinkEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbHyperLinkEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbDateEdit ) then begin
      if ( Components[i] as TcxDbDateEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbDateEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbDateEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxMaskEdit ) then begin
      if ( Components[i] as TcxMaskEdit ).Properties.ReadOnly then
        ( Components[i] as TcxMaskEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxMaskEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxSpinEdit ) then begin
      if ( Components[i] as TcxSpinEdit ).Properties.ReadOnly then
        ( Components[i] as TcxSpinEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxSpinEdit ).Style.Color := iColor;
    end;
    //
  end;
end;
procedure TfrmConsultaWebAzul.BuscarData;
var
 sqlString,sqlString2 : String;
begin
 DM.qrParametro.close;
 DM.qrParametro.open;

 If ((dtFechaIni.Text = Emptystr) and (dtFechaIni.Text = Emptystr)) And (edbuscarpor.ItemIndex=9) then
 Begin
      EtMensajeDlg('Fecha de Inicio y Fecha Fin NO fueron digitadas.  Verifique.', etError, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
      Exit;
 end;

 sqlString := 'Select p.Paciente,p.Fecha,e.NombrePaciente,p.Monto,p.Codigo_Autorizacion,p.Estatus From Azuldb.dbo.Pagos p Left join PtEntradaPaciente e On p.Paciente=e.Muestrano WHERE Isnull(e.RecId,'+#39+#39+')<>'+#39+#39;

 If Not((dtFechaIni.Text = Emptystr) and (dtFechaIni.Text = Emptystr)) then
 begin
    sqlString := sqlString + ' AND p.Fecha Between '+#39+formatdatetime('yyyymmdd',dtFechaini.date)+#39+' And  '+#39+formatdatetime('yyyymmdd',dtFechaFin.date)+#39;
 end;

 If (edbuscar.Text <> '') or (edbuscarpor.ItemIndex=3) then begin
   case edbuscarpor.ItemIndex of
     0 : sqlString := sqlString + ' AND p.Paciente like '+#39+'%'+edbuscar.Text+'%'+#39;
     1 : sqlString := sqlString + ' AND e.NombrePaciente like '+#39+'%'+edbuscar.Text+'%'+#39;
     2 : sqlString := sqlString + ' AND e.Telefonos like '+#39+'%'+edbuscar.Text+'%'+#39;
     4 : sqlString := sqlString;
   end;
 end;

 If ((dtFechaIni.Text = Emptystr) and (dtFechaIni.Text = Emptystr)) And
     (frmMain.Exis_Cap = False) And
     (frmMain.Exis_Lab = False) And
     (Trim(edbuscar.Text) = EmptyStr) And (Length(Trim(edbuscar.Text))<3) And
    Not((edbuscarpor.ItemIndex=3))
     then
 begin
      EtMensajeDlg('Debe escribir criterio de búsqueda más exacto en el Texto.  Verifique.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
      edbuscar.SetFocus;
      Exit;
 end;
 qrPagos.Close;
 qrPagos.SQL.Text := sqlString + ' ORDER BY p.Fecha Desc, p.Paciente Desc ';
 qrPagos.Open;
end;
END.

