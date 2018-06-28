unit TransferenciaCuadre_Sap;

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
  cxMemo, DateUtils, cxBlobEdit, cxintl, cxGroupBox, cxRadioGroup,
  cxCurrencyEdit, JvMemoryDataset, cxLabel, LMDCustomButton, LMDButton,
  LMDControl, LMDBaseControl, LMDBaseGraphicControl, LMDBaseLabel,
  LMDCustomLabel, LMDLabel, LMDCustomControl, LMDCustomPanel,dlgmensajes,
  LMDCustomBevelPanel, LMDSimplePanel;

type
  TfrmTransferenciaCuadre_SAP = class(TfrmCustomModule)
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
    dxLayoutControl2Group3: TdxLayoutGroup;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutControl2Item4: TdxLayoutItem;
    BtTransferir: TcxButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxGridStyles: TcxStyleRepository;
    stGrDatos: TcxStyle;
    stGrEdit: TcxStyle;
    dxLayoutControl2Group4: TdxLayoutGroup;
    cxGrid2DBTableView2: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    dxLayoutControl2Item9: TdxLayoutItem;
    dxLayoutControl2Item12: TdxLayoutItem;
    cboEstado: TcxComboBox;
    dsDatos: TDataSource;
    JvMemoryData1: TJvMemoryData;
    dsPagos: TDataSource;
    dxLayoutControl1Item2: TdxLayoutItem;
    btEliminar: TcxButton;
    qrPagosHead: TADOQuery;
    qrPagos: TADOQuery;
    spCargaCuadre: TLMDSimplePanel;
    LMDLabel2: TLMDLabel;
    btCancelar: TLMDButton;
    btAceptar: TLMDButton;
    dtFechaDesde: TcxDateEdit;
    cxLabel1: TcxLabel;
    cxGrid2DBTableView2SucursalID: TcxGridDBColumn;
    cxGrid2DBTableView2Monto_EFE: TcxGridDBColumn;
    cxGrid2DBTableView2Monto_TC: TcxGridDBColumn;
    cxGrid2DBTableView2Monto_CK: TcxGridDBColumn;
    cxGrid2DBTableView2Monto_DON: TcxGridDBColumn;
    cxGrid2DBTableView2Monto_FSOB: TcxGridDBColumn;
    cxGrid2DBTableView2Cuadre_Referencia: TcxGridDBColumn;
    cxGrid2DBTableView2TurnoID: TcxGridDBColumn;
    cxGrid2DBTableView2Banco: TcxGridDBColumn;
    MenuFunciones: TPopupMenu;
    CargarCuadredeCaja1: TMenuItem;
    TransferirCuadreaSAP1: TMenuItem;
    BorrarCuadre1: TMenuItem;
    JvMemoryData1Numero_Transaccion: TStringField;
    JvMemoryData1Estado: TBooleanField;
    cxGrid1DBTableView1FechaDesde: TcxGridDBColumn;
    cxGrid1DBTableView1Numero_Transaccion: TcxGridDBColumn;
    cxGrid1DBTableView1CuadreTotal: TcxGridDBColumn;
    cxGrid1DBTableView1Estado: TcxGridDBColumn;
    qrPagosHeadNumero_Diario: TStringField;
    qrPagosHeadCuadre_Total: TBCDField;
    qrPagosHeadEstado: TBooleanField;
    JvMemoryData1CuadreTotal: TCurrencyField;
    cxGrid2DBTableView2Total: TcxGridDBColumn;
    qrPagosID: TGuidField;
    qrPagosFecha: TDateTimeField;
    qrPagosSucursalID: TStringField;
    qrPagosMonto_EFE: TBCDField;
    qrPagosMonto_TC: TBCDField;
    qrPagosMonto_TD: TBCDField;
    qrPagosMonto_CK: TBCDField;
    qrPagosMonto_US: TBCDField;
    qrPagosMonto_DON: TBCDField;
    qrPagosMonto_FSOB: TBCDField;
    qrPagosCuadre_Referencia: TStringField;
    qrPagosTurnoID: TIntegerField;
    qrPagosCuenta_Banco: TStringField;
    qrPagosTotal: TCurrencyField;
    spMensaje: TLMDSimplePanel;
    Shape1: TShape;
    Label1: TLabel;
    Panel1: TPanel;
    dxLayoutControl2Item1: TdxLayoutItem;
    ckUsuario: TcxCheckBox;
    qrPagosBanco_Deposito: TStringField;
    dxLayoutControl2Group5: TdxLayoutGroup;
    dxLayoutControl2Item2: TdxLayoutItem;
    cxGrid3: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    qrPagosDetalle: TADOQuery;
    dsPagosDetalle: TDataSource;
    qrPagosDetalleMonedaID: TStringField;
    qrPagosDetalleMonto: TBCDField;
    qrPagosDetalleCuadre_Referencia: TStringField;
    qrPagosDetalleNumero_Referencia: TStringField;
    qrPagosDetalleNumero_Aprobacion: TStringField;
    qrPagosDetalleFecha_Vencimiento: TDateTimeField;
    qrPagosDetalleBanco_Cheque: TStringField;
    qrPagosDetalleFormaDePagoID: TStringField;
    cxGridDBTableView1FormaDePagoID: TcxGridDBColumn;
    cxGridDBTableView1MonedaID: TcxGridDBColumn;
    cxGridDBTableView1Monto: TcxGridDBColumn;
    cxGridDBTableView1Cuadre_Referencia: TcxGridDBColumn;
    cxGridDBTableView1Numero_Referencia: TcxGridDBColumn;
    cxGridDBTableView1Numero_Aprobacion: TcxGridDBColumn;
    cxGridDBTableView1Fecha_Vencimiento: TcxGridDBColumn;
    cxGridDBTableView1Banco_Cheque: TcxGridDBColumn;
    qrPagosDetalleUsuarioID: TStringField;
    cxGridDBTableView1UsuarioID: TcxGridDBColumn;
    qrPagosDetalleIDRef: TGuidField;
    qrPagosDetalleTipoDoc: TStringField;
    qrPagosDetalleCobroID: TStringField;
    cxLabel2: TcxLabel;
    dtFechaHasta: TcxDateEdit;
    JvMemoryData1Fecha_Hasta: TDateField;
    JvMemoryData1Fecha_Desde: TDateField;
    cxGrid1DBTableView1FechaHasta: TcxGridDBColumn;
    qrPagosHeadFecha_Desde: TDateTimeField;
    qrPagosHeadFecha_Hasta: TDateTimeField;
    qrPagosHeadPorcentaje_Aplicado: TIntegerField;
    JvMemoryData1Porcentaje_Aplicado: TIntegerField;
    cxGrid1DBTableView1Porcentaje_Aplicado: TcxGridDBColumn;
    spPorcentaje: TLMDSimplePanel;
    LMDLabel1: TLMDLabel;
    btCancela: TLMDButton;
    btAcepta: TLMDButton;
    cxLabel3: TcxLabel;
    spePorcentaje: TcxSpinEdit;
    AplicaPorcentaje1: TMenuItem;
    cxGrid2DBTableView2Fecha_Deposito: TcxGridDBColumn;
    qrPagosFecha_Deposito: TDateTimeField;
    cxGrid2DBTableView2Cuenta_Banco: TcxGridDBColumn;
    cxGrid2DBTableView2Monto_COMP: TcxGridDBColumn;
    qrPagosMonto_COMP: TBCDField;
    qrPagosH: TADOQuery;
    GuidField1: TGuidField;
    DateTimeField1: TDateTimeField;
    StringField1: TStringField;
    BCDField1: TBCDField;
    BCDField2: TBCDField;
    BCDField3: TBCDField;
    BCDField4: TBCDField;
    BCDField5: TBCDField;
    BCDField6: TBCDField;
    BCDField7: TBCDField;
    CurrencyField1: TCurrencyField;
    StringField2: TStringField;
    IntegerField1: TIntegerField;
    StringField3: TStringField;
    StringField4: TStringField;
    DateTimeField2: TDateTimeField;
    BCDField8: TBCDField;
    procedure btAceptaClick(Sender: TObject);
    procedure dtFechaDesdeExit(Sender: TObject);
    procedure btCancelaClick(Sender: TObject);
    procedure AplicaPorcentaje1Click(Sender: TObject);
    procedure cxGrid2DBTableView2CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure ckUsuarioClick(Sender: TObject);
    procedure TransferirCuadreaSAP1Click(Sender: TObject);
    Function  ActCuadreSap    : Boolean;
    Function  DelCuadrePeriodo : Boolean;
    procedure cboEstadoPropertiesChange(Sender: TObject);
    procedure BorrarCuadre1Click(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btAceptarClick(Sender: TObject);
    procedure qrPagosCalcFields(DataSet: TDataSet);
    procedure CargarCuadredeCaja1Click(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure CargarCuadreCajaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  protected
    procedure SetColorTo(iColor: TColor);
  private
    { Private declarations }
    Cancelada         : TcxStyle;
    Facturada         : TcxStyle;
    Normal            : TcxStyle;
    Seleccion         : String;
  public
    { Public declarations }
    _doctor       : String;
    _poliza       : String;
    _muestra      : String;
    _entrada      : String;
    _recordId     : Integer;

    procedure Buscar_Pagos_Abiertos;
    procedure Buscar_Registro_Primario;
    procedure Buscar_Pagos_Abiertos_Detalle;
  end;

var
  frmTransferenciaCuadre_SAP       : TfrmTransferenciaCuadre_SAP;

implementation

uses ActionsDM, cxExportGrid4Link, DataModule, Main;

{$R *.dfm}


procedure TfrmTransferenciaCuadre_SAP.FormCreate(Sender: TObject);
begin
  inherited;
//  frmMain.Tran_fer := True;
  Buscar_Pagos_Abiertos;
  Buscar_Registro_Primario;
end;


procedure TfrmTransferenciaCuadre_SAP.FormDestroy(Sender: TObject);
begin
  inherited;
  frmMain.Tran_fer := False;
end;


procedure TfrmTransferenciaCuadre_SAP.FormShow(Sender: TObject);
begin
  inherited;
  If (dm.DBSAP.Connected = False) Then
  begin
    dm.DBSAP.Close;
    dm.DBSAP.Open;
  end;  
  cboEstado.ItemIndex   := 1;
  Cancelada             := TcxStyle.Create(Self);
  Facturada             := TcxStyle.Create(Self);
  Normal                := TcxStyle.Create(Self);
  Cancelada.Font.Color  := clWhite;
  Cancelada.TextColor   := clRed;
  Facturada.Font.Color  := clWhite;
  Facturada.TextColor   := clBlue;
  Normal.Font.Color     := clWhite;
  Normal.TextColor      := clBlack;
  cboEstado.SetFocus;
end;

procedure TfrmTransferenciaCuadre_SAP.qrPagosCalcFields(DataSet: TDataSet);
begin
  inherited;
  qrPagosTotal.Value := qrPagosMonto_EFE.Value + qrPagosMonto_TC.Value+qrPagosMonto_TD.Value+
                        qrPagosMonto_CK.Value+qrPagosMonto_US.Value+qrPagosMonto_DON.Value+qrPagosMonto_FSOB.Value+qrPagosMonto_COMP.Value;
end;

procedure TfrmTransferenciaCuadre_SAP.SetColorTo(iColor: TColor);
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


procedure TfrmTransferenciaCuadre_SAP.TransferirCuadreaSAP1Click(
  Sender: TObject);
 Var FechaStr : String;
     FechaStr2: String;
     qPagos   : TAdoQuery;
begin
  inherited;
    if (Length(JvMemoryData1Fecha_Desde.AsString) > 0) And (Length(JvMemoryData1Fecha_Desde.AsString) > 0) then
    begin
        FechaStr  :=FormatDateTime('dd/mm/yyyy', JvMemoryData1Fecha_Desde.AsDateTime);
        FechaStr2 :=FormatDateTime('dd/mm/yyyy', JvMemoryData1Fecha_Hasta.AsDateTime);
        If (EtMensajeDlg('Está seguro de Contabilizar los Cuadres desde '+FechaStr+' Hasta '+FechaStr2+'?',etConfirmacion,[etSi,etNo],1,dm.Imagenes.Items[5].Bitmap,true) = mryes) then
        begin
            spMensaje.Visible :=True;
            If Not ActCuadreSap Then
            begin
                Raise exception.CreateFmt( ' NO Se Pudo Transferir a SAP Los Cuadres de fecha '+FechaStr+' Hasta '+FechaStr2+'.'+#13+
                                           ' Se Ha Generado Un Error en ActCuadreSap. '+ #13 +
                                           ' Por Favor, Intentelo Nuevamente.!!!', []);

            end;
            qPagos := DM.NewQuery;
            qPagos.Close;
            qPagos.SQL.Text := ' Update POSInterfaz..Pagos_Head_Mensual '+
                               ' Set Estado='+#39+'1'+#39+
                               ' Where Fecha_Desde='+#39+FormatDateTime('yyyymmdd', JvMemoryData1Fecha_Desde.AsDateTime)+#39+
                               ' And Fecha_Hasta='+#39+FormatDateTime('yyyymmdd', JvMemoryData1Fecha_Hasta.AsDateTime)+#39;
            qPagos.ExecSQL;
            spMensaje.Visible := False;
            ShowMessage('Cuadres Desde '+FechaStr+' Hasta '+FechaStr2+' Transferidos a Sap.  Verifique.');
            Buscar_Pagos_Abiertos;
            Buscar_Registro_Primario;
        end;
    end;
    FreeAndNil(qPagos);
end;

procedure TfrmTransferenciaCuadre_SAP.Buscar_Pagos_Abiertos;
begin
  qrPagosHead.Close;
  qrPagosHead.SQL.Text := ' Select * From Pagos_Head_Mensual '+
                          ' Where Estado = '+ #39 + '0' + #39 +
                          ' Order By Fecha_Desde asc';
  qrPagosHead.Open;
  If qrPagosHead.RecordCount > 0 then qrPagosHead.First;
end;
procedure TfrmTransferenciaCuadre_SAP.Buscar_Pagos_Abiertos_Detalle;
begin
  qrPagos.Close;
  qrPagos.SQL.Text := ' Select * From Pagos_Mensual '+
                      ' Where Fecha between '+#39+FormatDateTime('yyyymmdd', JvMemoryData1Fecha_Desde.AsDateTime)+#39+
                      ' And '+#39+FormatDateTime('yyyymmdd', JvMemoryData1Fecha_Hasta.AsDateTime);
  qrPagos.Open;
  If qrPagos.RecordCount > 0 then qrPagos.First;
end;

procedure TfrmTransferenciaCuadre_SAP.CargarCuadreCajaClick(Sender: TObject);
begin
  inherited;
  spCargaCuadre.Visible := True;
end;

procedure TfrmTransferenciaCuadre_SAP.CargarCuadredeCaja1Click(Sender: TObject);
begin
  inherited;
  spCargaCuadre.Visible := True;
end;

procedure TfrmTransferenciaCuadre_SAP.cboEstadoPropertiesChange(
  Sender: TObject);
begin
  inherited;
    if cboEstado.Text = 'Todo' then
    begin
      Seleccion :=  ' Select * From Pagos_Head_Mensual '+
                    ' Order By Fecha_Desde asc';
    end
    else if cboEstado.Text = 'Abierto' then
    begin
      Seleccion :=  ' Select * From Pagos_Head_Mensual '+
                     ' Where Estado = '+ #39 + '0' + #39 +
                     ' Order By Fecha_Desde asc ';
      cxGrid2DBTableView2.OptionsData.Editing := True;
    end
    else if cboEstado.Text = 'Registrado' then
    begin
      Seleccion :=  ' Select * From Pagos_Head_Mensual '+
                     ' Where Estado = '+ #39 + '1' + #39 +
                     ' Order By Fecha_Desde asc ';
      cxGrid2DBTableView2.OptionsData.Editing := False;
    end;
    With qrPagosHead,sql do
    begin
        Close;
        Sql.Text := Seleccion;
        Open;
    end;
    Buscar_Registro_Primario;
end;

procedure TfrmTransferenciaCuadre_SAP.ckUsuarioClick(Sender: TObject);
begin
  inherited;
    if ckUsuario.Checked = True then
    begin
      Seleccion :=  ' Select * From Pagos_Head_Mensual '+
                     ' Where Estado = '+ #39 + '0' + #39 +' And UserID_Creacion='+#39+dm.CurUser+#39+
                     ' Order By Fecha_Desde asc ';
      cxGrid2DBTableView2.OptionsData.Editing := True;
    end
    else if cboEstado.Text = 'Abierto' then
    begin
      Seleccion :=  ' Select * From Pagos_Head_Mensual '+
                     ' Where Estado = '+ #39 + '0' + #39+
                     ' Order By Fecha_Desde asc ';
      cxGrid2DBTableView2.OptionsData.Editing := True;
    end;
    With qrPagosHead,sql do
    begin
        Close;
        Sql.Text := Seleccion;
        Open;
    end;
    Buscar_Registro_Primario;
end;

procedure TfrmTransferenciaCuadre_SAP.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
    If (Length(JvMemoryData1Fecha_Desde.AsString) > 0) And (Length(JvMemoryData1Fecha_Hasta.AsString) > 0)  then
    begin
      dsPagos.Enabled := True;
      dsPagosDetalle.Enabled := True;
      With qrPagos,sql do
      begin
          Close;
          SQL.Text := ' Select * From Pagos_Mensual '+
                      ' Where Fecha between '+#39+FormatDateTime('yyyymmdd', JvMemoryData1Fecha_Desde.AsDateTime)+#39+
                      ' And '+#39+FormatDateTime('yyyymmdd', JvMemoryData1Fecha_Hasta.AsDateTime)+#39+
                      ' Order By SucursalID,Cuadre_Referencia,TurnoID ';
          Open;
          if Not IsEmpty then  First;
          If JvMemoryData1Estado.AsBoolean = False then
          begin
            BorrarCuadre1.Enabled                   :=True;
            cxGrid2DBTableView2.OptionsData.Editing := True;
            TransferirCuadreaSAP1.Enabled           := True;
            AplicaPorcentaje1.Enabled               :=True;
          end
          else
          begin
            BorrarCuadre1.Enabled                   :=False;
            cxGrid2DBTableView2.OptionsData.Editing := False;
            TransferirCuadreaSAP1.Enabled           := False;
            AplicaPorcentaje1.Enabled               :=False;
          end;
      end;
    end;
    If (Length(JvMemoryData1Fecha_Desde.AsString) > 0) And (Length(JvMemoryData1Fecha_Hasta.AsString) > 0) then
    begin
      With qrPagosDetalle,sql do
      begin
          Close;
          SQL.Text := ' Select * From PagosDetalle '+
                      ' Where IDRef='+#39+qrPagosID.Value+#39;
          Open;
          if Not IsEmpty then  First;
          If JvMemoryData1Estado.AsBoolean = False then
          begin
            BorrarCuadre1.Enabled                   :=True;
            cxGridDBTableView1.OptionsData.Editing  :=True;
            TransferirCuadreaSAP1.Enabled           :=True;
            AplicaPorcentaje1.Enabled               :=True;
          end
          else
          begin
            BorrarCuadre1.Enabled                   :=False;
            cxGridDBTableView1.OptionsData.Editing  :=False;
            TransferirCuadreaSAP1.Enabled           :=False;
            AplicaPorcentaje1.Enabled               :=False;
          end;
      end;
    end;
end;


procedure TfrmTransferenciaCuadre_SAP.cxGrid2DBTableView2CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
    If Length(qrPagosID.Value) > 0 then
    begin
      With qrPagosDetalle,sql do
      begin
          Close;
          SQL.Text := ' Select * From PagosDetalle '+
                      ' Where IDRef='+#39+qrPagosID.Value+#39;
          Open;
          if Not IsEmpty then  First;
          If JvMemoryData1Estado.AsBoolean = False then
          begin
            BorrarCuadre1.Enabled                   :=True;
            cxGridDBTableView1.OptionsData.Editing  :=True;
            TransferirCuadreaSAP1.Enabled           :=True;
            AplicaPorcentaje1.Enabled               :=True;
          end
          else
          begin
            BorrarCuadre1.Enabled                   :=False;
            cxGridDBTableView1.OptionsData.Editing  :=False;
            TransferirCuadreaSAP1.Enabled           :=False;
            AplicaPorcentaje1.Enabled               :=False;
          end;
      end;
    end;

end;

procedure TfrmTransferenciaCuadre_SAP.dtFechaDesdeExit(Sender: TObject);
begin
  inherited;
  if Length(dtFechaDesde.EditValue)> 0 then
  begin
    dtFechaHasta.Date := EndOfTheMonth(dtFechaDesde.Date);
  end;
end;

procedure TfrmTransferenciaCuadre_SAP.BorrarCuadre1Click(Sender: TObject);
Var
 FechaStr  : String;
 FechaStr2 : String;
begin
  FechaStr  :=FormatDateTime('dd/mm/yyyy', JvMemoryData1Fecha_Desde.AsDateTime);
  FechaStr2 :=FormatDateTime('dd/mm/yyyy', JvMemoryData1Fecha_Hasta.AsDateTime);
  If (EtMensajeDlg('Está seguro de eliminar el Cuadre Mensual desde '+FechaStr+' Hasta '+FechaStr2+' ?',etConfirmacion,[etSi,etNo],1,dm.Imagenes.Items[5].Bitmap,true) = mryes) then
  begin
      spMensaje.Visible :=True;
      If Not DelCuadrePeriodo Then
      begin
          Raise exception.CreateFmt( ' NO Se Pudo Borrar Cuadre mensual generado desde '+FechaStr+' Hasta '+FechaStr2+'.'+#13+
                                     ' Se Ha Generado Un Error en DelcuadrePerido. '+ #13 +
                                     ' Por Favor, Intentelo Nuevamente.!!!', []);

      end;
      spMensaje.Visible := False;
      ShowMessage('Cuadre Mensual desde '+FechaStr+' hasta '+FechaStr2+' eliminado.  Verifique.');
      Buscar_Pagos_Abiertos;
      Buscar_Registro_Primario;
  end;
end;

procedure TfrmTransferenciaCuadre_SAP.btAceptaClick(Sender: TObject);
 Var FechaStr : String;
     FechaStr2: String;
     qPagos   : TAdoQuery;
begin
  inherited;
    if (Length(JvMemoryData1Fecha_Desde.AsString) > 0) And (Length(JvMemoryData1Fecha_Desde.AsString) > 0) then
    begin
        FechaStr  :=FormatDateTime('dd/mm/yyyy', JvMemoryData1Fecha_Desde.AsDateTime);
        FechaStr2 :=FormatDateTime('dd/mm/yyyy', JvMemoryData1Fecha_Hasta.AsDateTime);
        If (EtMensajeDlg('Está seguro de Aplicar el Porcentaje ?',etConfirmacion,[etSi,etNo],1,dm.Imagenes.Items[5].Bitmap,true) = mryes) then
        begin
            spMensaje.Visible :=True;
            qPagos := DM.NewQuery;
            qPagos.Close;
            qPagos.SQL.Text := ' Update POSInterfaz..Pagos_Head_Mensual '+
                               ' Set Porcentaje_Aplicado='+#39+spePorcentaje.EditText+#39+
                               ' Where Fecha_Desde='+#39+FormatDateTime('yyyymmdd', JvMemoryData1Fecha_Desde.AsDateTime)+#39+
                               ' And Fecha_Hasta='+#39+FormatDateTime('yyyymmdd', JvMemoryData1Fecha_Hasta.AsDateTime)+#39;
            qPagos.ExecSQL;
            qPagos.SQL.Text := ' Update POSInterfaz..Pagos_Mensual '+
                               ' Set Monto_EFE= Monto_EFE_ORI - (Monto_EFE_ORI * ('+spePorcentaje.EditText+'*.01))'+
                               ' Where Fecha between '+#39+FormatDateTime('yyyymmdd', JvMemoryData1Fecha_Desde.AsDateTime)+#39+
                               ' And '+#39+FormatDateTime('yyyymmdd', JvMemoryData1Fecha_Hasta.AsDateTime)+#39;
            qPagos.ExecSQL;
            spMensaje.Visible := False;
            ShowMessage('Porcentaje Aplicado a Efectivo se realizado.  Verifique.');
            Buscar_Pagos_Abiertos;
            Buscar_Registro_Primario;
            spPorcentaje.Visible := False;
        end;
    end;
    FreeAndNil(qPagos);
end;

procedure TfrmTransferenciaCuadre_SAP.btAceptarClick(Sender: TObject);
Var
 qPagosH,qPagos : TAdoQuery;
 Mensaje        : String;
 Fecha_Proceso  : TDate;
 Fecha_Procesoc : Integer;
 Fecha_FinC     : Integer;
begin
  inherited;
  if dtFechaDesde.Text = EmptyStr then
  begin
      ShowMessage('Fecha Desde NO puede estar en blanco.  Verifique.');
      dtFechaDesde.SetFocus;
      Exit;
  end
  else if dtFechaHasta.Text = EmptyStr then
  begin
      ShowMessage('Fecha Hasta NO puede estar en blanco.  Verifique.');
      dtFechaHasta.SetFocus;
      Exit;
  end
  else If dtFechaDesde.EditValue > (DM.Buscar_Fecha_Actual) then
  begin
      ShowMessage('Fecha Desde NO puede ser mayor que la fecha del día.  Verifique.');
      dtFechaDesde.SetFocus;
      Exit;
  end
  else If dtFechaHasta.EditValue > (DM.Buscar_Fecha_Actual) then
  begin
      ShowMessage('Fecha Hasta NO puede ser mayor que la fecha del día.  Verifique.');
      dtFechaHasta.SetFocus;
      Exit;
  end
  else
  If dtFechaDesde.EditValue > (dtFechaHasta.EditValue) then
  begin
      ShowMessage('Fecha Desde debe ser menor o igual que fecha hasta.  Verifique.');
      dtFechaDesde.SetFocus;
      Exit;
  end
  else
  If dtFechaHasta.EditValue < (dtFechaDesde.EditValue) then
  begin
      ShowMessage('Fecha Hasta debe ser mayor o igual que fecha desde.  Verifique.');
      dtFechaHasta.SetFocus;
      Exit;
  end
  else
  begin
//    Verifica si falta dia en el mes
      Fecha_Proceso := dtFechaDesde.Date;
      qPagosH       := DM.NewQuery;
      Fecha_Proceso := dtFechaDesde.Date;
      Fecha_Procesoc:= dm.DateToInt(dtFechaDesde.Date);
      Fecha_FinC    := dm.DateToInt(dtFechaHasta.Date);                                     //dm.DateToInt(EndOfTheMonth(dtFechaDesde.Date));
      Mensaje       := EmptyStr;
      For Fecha_Procesoc := Fecha_Procesoc to Fecha_FinC do
      begin
          qPagosH.Close;
          qPagosH.SQL.Text := ' Select Fecha from POSInterfaz..Pagos_Head '+
                              ' Where Fecha = '+#39+FormatDateTime('yyyymmdd', Fecha_Proceso)+#39+
                              ' And Estado='+#39+'1'+#39;
          qPagosH.Open;
          if (qPagosH.RecordCount = 0) then
          begin
            if Length(Mensaje)=0 then
               Mensaje:=FormatDateTime('dd/mm/yyyy', Fecha_Proceso)+char(13)
            else
               Mensaje:=Mensaje +' '+FormatDateTime('dd/mm/yyyy', Fecha_Proceso)+Char(13)
          end;
          Fecha_Proceso := Fecha_Proceso+1;
      end;
      If Mensaje <> EmptyStr then
      begin
          Showmessage('Favor Verificar Días No Posteados '+Mensaje+Char(13)+'Verifique Días No Posteados con Depto. Tesorería.');
          Exit;
      end;
      qPagosH := DM.NewQuery;
      qPagosH.Close;
      qPagosH.SQL.Text := ' Select top 1 Fecha from POSInterfaz..Pagos_Head '+
                          ' Where Fecha between '+#39+FormatDateTime('yyyymmdd', dtFechaDesde.Date)+#39+
                          ' And '+#39+FormatDateTime('yyyymmdd', dtFechaHasta.Date)+#39+' And Estado='+#39+'1'+#39;
      qPagosH.Open;
      if (qPagosH.RecordCount = 0) then
      begin
        ShowMessage('Rango de Fecha de Proceso No tiene Datos.  Verifique.');
        dtFechaDesde.SetFocus;
        Exit;
      end
      else
      begin
          spMensaje.Visible :=True;
          qPagos := DM.NewQuery;
          qPagos.Close;
          qPagos.SQL.Text := ' Insert Into POSInterfaz..Pagos_Head_Mensual (Fecha_Desde,Fecha_Hasta,Cuadre_Total,Estado,UserID_Creacion) '+
                             ' Values ('+#39+FormatDateTime('yyyymmdd', dtfechaDesde.Date)+#39+','+#39+FormatDateTime('yyyymmdd', dtFechaHasta.Date)+#39+','+#39+'0.00'+#39+','+#39+'0'+#39+','+#39+Dm.CurUser+#39+')';
          qPagos.ExecSQL;
//          qPagosH := DM.NewQuery;
          qrPagosH.Close;
          qrPagosH.SQL.Text := ' Insert Into POSInterfaz..Pagos_Mensual (ID,Fecha,SucursalID,Monto_EFE,Monto_Efe_Ori,Monto_TC,Monto_TD,Monto_CK,'+
                              ' Monto_TB,Monto_US,Monto_DON,Monto_FSOB,Cuadre_Referencia,TurnoID,Cuenta_Banco,Banco_Deposito,Monto_Comp,Fecha_Deposito,TurnoID_Dep) '+
                              '	SELECT ID,Fecha,SucursalID, Monto_EFE, Monto_EFE,Monto_TC,Monto_TD, Monto_CK, Monto_TB, Monto_US, Monto_DON, Monto_FSOB,'+
                              ' Cuadre_Referencia,TurnoID,Cuenta_Banco,Banco_Deposito,Monto_Comp,Fecha_Deposito,[dbo].[ObtTurnoID_Dep](Fecha,sucursalID,ID) As TurnoID_Dep from POSInterfaz..Pagos '+
                              ' Where fecha between '+#39+FormatDateTime('yyyymmdd',dtfechaDesde.Date)+#39+' and '+#39+FormatDateTime('yyyymmdd',dtfechaHasta.Date)+#39+
                              ' and fecha in (Select Fecha from POSInterfaz..Pagos_Head Where Estado='#39+'1'+#39+')'+
                              ' Order By SucursalID,Cuadre_Referencia,TurnoID_Dep ';
          qrPagosH.ExecSQL;
// Inserta Detalle de Pagos Via SP
{         if Length(dtfechaDesde.Text) > 0 And  Length(dtfechaHasta.Text) Then
         begin
              If Not ActPagoDetalle Then
              begin
                  Raise exception.CreateFmt( ' NO Se Pudo Generar Cuadre Mensual desde '+#39+FormatDateTime('yyyymmdd', dtfechaDesde.Date)+#39+' Hasta '+#39+FormatDateTime('yyyymmdd', dtfechaHasta.Date)+#39+'.'+ #13 +
                                          ' Se Ha Generado Un Error en ActCuadreSap. '+ #13 +
                                          ' Por Favor, Intentelo Nuevamente.!!!', []);
              end
         end;
}
      end;
      FreeAndNil(qPagos);
      FreeAndNil(qPagosH);
      spCargaCuadre.Visible := False;
      Buscar_Pagos_Abiertos;
      Buscar_Registro_Primario;
      spMensaje.Visible :=False;
  end;
end;

procedure TfrmTransferenciaCuadre_SAP.btCancelaClick(Sender: TObject);
begin
  inherited;
  spePorcentaje.Value:=0;
  spPorcentaje.Visible := False;
end;

procedure TfrmTransferenciaCuadre_SAP.btCancelarClick(Sender: TObject);
begin
  inherited;
  dtFechaDesde.Clear;
  dtFechaHasta.Clear;
  spCargaCuadre.Visible := False;
end;
procedure TfrmTransferenciaCuadre_SAP.Buscar_Registro_Primario;
begin
  With qrPagosHead,sql do
  begin
    if IsEmpty then
    begin
        dsPagos.Enabled := False;
        dsPagosDetalle.Enabled := False;
        JvMemoryData1.EmptyTable;
        exit;
    end
    else
    begin
        dsPagos.Enabled := True;
        dsPagosDetalle.Enabled := True;
    end;
    If Recordset.RecordCount > 0 then First;
    DsDatos.Enabled := False;
    if not JvMemoryData1.Active then
      JvMemoryData1.Active := true;
    JvMemoryData1.EmptyTable;
    while not eof do
    begin
        JvMemoryData1.Append;
        JvMemoryData1Fecha_Desde.AsDateTime        := fieldbyname('Fecha_Desde').AsDateTime;
        JvMemoryData1Fecha_Hasta.AsDateTime        := fieldbyname('Fecha_Hasta').AsDateTime;
        JvMemoryData1Numero_Transaccion.AsString   := fieldbyname('Numero_Diario').AsString;
        JvMemoryData1CuadreTotal.AsFloat           := fieldbyname('Cuadre_Total').AsFloat;
        JvMemoryData1Estado.AsBoolean              := fieldbyname('Estado').AsBoolean;
        JvMemoryData1Porcentaje_Aplicado.Value     := fieldbyname('Porcentaje_Aplicado').AsInteger;
        Next;
    end;

    If qrPagosHead.recordset.recordcount > 0 then
    begin
      JvMemoryData1.First;
      If JvMemoryData1Estado.AsBoolean = False then
      begin
        BorrarCuadre1.Enabled                   :=True;
        TransferirCuadreaSAP1.Enabled           :=True;
        cxGrid2DBTableView2.OptionsData.Editing :=True;
        AplicaPorcentaje1.Enabled               :=True;
      end
      else
      begin
        BorrarCuadre1.Enabled                   :=False;
        TransferirCuadreaSAP1.Enabled           :=False;
        cxGrid2DBTableView2.OptionsData.Editing :=False;
        AplicaPorcentaje1.Enabled               :=False;
      end;
      DsDatos.Enabled := True;
      With qrPagos,sql do
      begin
          Close;
          SQL.Text := ' Select * From Pagos_Mensual '+
                      ' Where Fecha between '+#39+FormatDateTime('yyyymmdd', JvMemoryData1Fecha_Desde.AsDateTime)+#39+
                      ' And '+#39+FormatDateTime('yyyymmdd', JvMemoryData1Fecha_Hasta.AsDateTime)+#39+
                      ' Order By SucursalID,Cuadre_Referencia,TurnoID ';
          Open;
          if IsEmpty then
          begin
            exit;
          end;
          First;
      end;
      if qrPagos.Recordset.RecordCount > 0 then
      begin
        With qrPagosDetalle do
        begin
            Close;
            SQL.Text := ' Select * From PagosDetalle '+
                        ' Where IDRef='+#39+qrPagosID.Value+#39;
            Open;
            If Recordset.RecordCount > 0 then First;
        end;
      End;
    end;
  end;
end;
function TfrmTransferenciaCuadre_SAP.ActCuadreSap : Boolean;
begin
Result := False;
Try
  If (Length(JvMemoryData1Fecha_Desde.AsString) > 0) And (Length(JvMemoryData1Fecha_Hasta.AsString) > 0) Then
  begin
    with  dm.ActCuadreSapMensual, Parameters do
    begin
      ParamByName('@UserID').Value := dm.CurUser;
      ParamByName('@FechaInicial').Value  := FormatDateTime('yyyymmdd', JvMemoryData1Fecha_Desde.AsDateTime);
      ParamByName('@FechaFinal').Value  := FormatDateTime('yyyymmdd', JvMemoryData1Fecha_Hasta.AsDateTime);
      ExecProc;
      Result:= True;
    end;
  end;
  Except
    On E : Exception do
      ShowMessage(E.Message);
  End
end;
Function TfrmTransferenciaCuadre_SAP.DelCuadrePeriodo : Boolean;
begin
Result := False;
Try
  If (Length(JvMemoryData1Fecha_Desde.Text) >0) And ( Length(JvMemoryData1Fecha_Hasta.Text) >0)then
  begin
    with  dm.DelCuadrePeriodo, Parameters do
    begin
      ParamByName('@Fecha_Desde').Value  := FormatDateTime('yyyymmdd', JvMemoryData1Fecha_Desde.AsDateTime);
      ParamByName('@Fecha_Hasta').Value  := FormatDateTime('yyyymmdd', JvMemoryData1Fecha_Hasta.AsDateTime);
      ExecProc;
      Result:= True;
    end;
  end;
  Except
    On E : Exception do
      ShowMessage(E.Message);
  End
end;
procedure TfrmTransferenciaCuadre_SAP.AplicaPorcentaje1Click(Sender: TObject);
begin
  inherited;
  spPorcentaje.Visible := True;
end;

END.

