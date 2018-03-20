unit VerificaCuadre_PtoVta;

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
  LMDCustomBevelPanel, LMDSimplePanel, cxLookupEdit, cxDBLookupEdit;

type
  TfrmVerificaCuadre_VTA = class(TfrmCustomModule)
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
    dtFechaCarga: TcxDateEdit;
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
    BorrarCuadre1: TMenuItem;
    JvMemoryData1Fecha: TDateField;
    JvMemoryData1Numero_Transaccion: TStringField;
    JvMemoryData1Estado: TBooleanField;
    cxGrid1DBTableView1Fecha: TcxGridDBColumn;
    cxGrid1DBTableView1Numero_Transaccion: TcxGridDBColumn;
    cxGrid1DBTableView1CuadreTotal: TcxGridDBColumn;
    cxGrid1DBTableView1Estado: TcxGridDBColumn;
    qrPagosHeadFecha: TDateTimeField;
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
    PostearCuadre1: TMenuItem;
    MenuCuadres: TPopupMenu;
    EliminaCuadre1: TMenuItem;
    MenuPagos: TPopupMenu;
    MenuPago1: TMenuItem;
    qrPagosMonto_COMP: TBCDField;
    cxGrid2DBTableView2Monto_COMP: TcxGridDBColumn;
    qrPagosFecha_deposito: TDateTimeField;
    cxGrid2DBTableView2Fecha_Deposito: TcxGridDBColumn;
    spCuadre: TLMDSimplePanel;
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
    InsertaCuadre1: TMenuItem;
    cxLabel5: TcxLabel;
    cxMontoDON: TcxMaskEdit;
    cxMontoFS: TcxMaskEdit;
    cxLabel6: TcxLabel;
    cxMontoCDEP: TcxMaskEdit;
    cxLabel7: TcxLabel;
    qrPagosMonto_TB: TBCDField;
    cxGrid2DBTableView2Column1: TcxGridDBColumn;
    cxLabel12: TcxLabel;
    txtCuentaBanco: TcxTextEdit;
    cxGrid2DBTableView2Cuenta_Banco: TcxGridDBColumn;
    cxGrid2DBTableView2Fecha: TcxGridDBColumn;
    procedure cbExtSucursalPropertiesEditValueChanged(Sender: TObject);
    procedure cbExtBancoPropertiesEditValueChanged(Sender: TObject);
    procedure qrPagosMonto_EFEValidate(Sender: TField);
    procedure qrPagosMonto_COMPValidate(Sender: TField);
    procedure qrPagosMonto_FSOBValidate(Sender: TField);
    procedure qrPagosMonto_DONValidate(Sender: TField);
    procedure qrPagosMonto_CKValidate(Sender: TField);
    procedure qrPagosMonto_TCValidate(Sender: TField);
    procedure qrPagosFecha_depositoValidate(Sender: TField);
    procedure cxGrid2DBTableView2Monto_COMPStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure cxGrid2DBTableView2Monto_FSOBStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure cxGrid2DBTableView2Monto_DONStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure btAceptaSerClick(Sender: TObject);
    procedure btCancelCClick(Sender: TObject);
    procedure InsertaCuadre1Click(Sender: TObject);
    procedure cxGridDBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure MenuPago1Click(Sender: TObject);
    procedure EliminaCuadre1Click(Sender: TObject);
    procedure PostearCuadre1Click(Sender: TObject);
    procedure cxGrid2DBTableView2CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure ckUsuarioClick(Sender: TObject);
    Function  ActCuadreSap    : Boolean;
    Function  ActPagoDetalle  : Boolean;
    Function  DelCuadreSap : Boolean;
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
    Function  Valida_Banco : Boolean;    
  protected
    procedure SetColorTo(iColor: TColor);
  private
    { Private declarations }
    Cancelada         : TcxStyle;
    Facturada         : TcxStyle;
    Normal            : TcxStyle;
    notac             : TcxStyle;
    Seleccion         : String;
    Fecha_Pago        : TDateTime;
    Function          CreaGUID: String;
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
  frmVerificaCuadre_VTA       : TfrmVerificaCuadre_VTA;

implementation

uses ActionsDM, cxExportGrid4Link, DataModule, Main;

{$R *.dfm}


procedure TfrmVerificaCuadre_VTA.FormCreate(Sender: TObject);
begin
  inherited;
  DM.qrParametro.close;
  DM.qrParametro.open;  
  If (dm.DBSAP.Connected = False) Then
  begin
    dm.DBSAP.Close;
    dm.DBSAP.Open;
  end;
  DM.qryBanco.Connection := dm.DBSAP;
  With DM.qryBanco, sql do
  begin
    Close;
    Clear;
    Text :='Select BankCode,BankName from '+ DM.qrParametroServidor_Sap.AsString+'.dbo.ODSC ';
    Open;
  end;
  notac := TcxStyle.Create(Self);
  normal:= TcxStyle.Create(Self);
  notac.Font.Color  := clWhite;
  notac.TextColor   := clRed;
  normal.Font.Color := clWhite;
  normal.TextColor  := clBlack;
  Buscar_Pagos_Abiertos;
  Buscar_Registro_Primario;
end;


procedure TfrmVerificaCuadre_VTA.FormDestroy(Sender: TObject);
begin
  inherited;
  frmMain.Tran_fer := False;
end;


procedure TfrmVerificaCuadre_VTA.FormShow(Sender: TObject);
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
  notac.Font.Color      := clWhite;
  notac.TextColor       := clRed;
  cboEstado.SetFocus;
end;

procedure TfrmVerificaCuadre_VTA.InsertaCuadre1Click(Sender: TObject);
begin
  inherited;
  spCuadre.Visible := True;
  Fecha_Pago := qrPagosFecha.Value
end;

procedure TfrmVerificaCuadre_VTA.MenuPago1Click(Sender: TObject);
Var qPagos : TAdoQuery;
    DPago   : String;
begin
  inherited;
  if ( qrPagosDetalle.RecordCount > 0) And
     (qrPagosDetalleCobroID.AsString<>EmptyStr) Then
  begin
     If (EtMensajeDlg('Está seguro de eliminar este pago Tipo='+qrPagosDetalleFormaDePagoID.AsString+' y Monto='+qrPagosDetalleMonto.AsString,etConfirmacion,[etSi,etNo],1,dm.Imagenes.Items[5].Bitmap,true) = mryes) then
     begin
          DPago := qrPagosDetalleCobroID.AsString;
          spMensaje.Visible :=True;
          qPagos := DM.NewQuery;
          qPagos.Close;
          qPagos.SQL.Text := ' Delete POSInterfaz.dbo.PagosDetalle Where CobroID = '+#39+DPago+#39;
          qPagos.ExecSQL;
          spMensaje.Visible := False;
          ShowMessage('Pago CobroID No'+ DPago+' Eliminado.  Verifique.');
          Buscar_Pagos_Abiertos;
          Buscar_Registro_Primario;
     end;
     FreeAndNil(qPagos);
  end;
end;

procedure TfrmVerificaCuadre_VTA.qrPagosCalcFields(DataSet: TDataSet);
begin
  inherited;
  qrPagosTotal.Value := qrPagosMonto_EFE.Value + qrPagosMonto_TC.Value+qrPagosMonto_TD.Value+qrPagosMonto_TB.Value+
                        qrPagosMonto_CK.Value+qrPagosMonto_US.Value+qrPagosMonto_DON.Value+qrPagosMonto_FSOB.Value+qrPagosMonto_COMP.Value;
end;

procedure TfrmVerificaCuadre_VTA.qrPagosFecha_depositoValidate(Sender: TField);
begin
  inherited;
  If ((qrPagosFecha_Deposito.Value) > (qrPagosFecha.Value+DM.ContDiasTrabajo(qrPagosFecha.Value)+5)) Or
     ((qrPagosFecha_Deposito.Value) < (qrPagosFecha.Value)) then
  begin
      Raise exception.CreateFmt('Fecha Depósito NO PERMITIDA.  Verifique.', []);
  end;

end;

procedure TfrmVerificaCuadre_VTA.qrPagosMonto_CKValidate(Sender: TField);
begin
  inherited;
  If (qrPagosMonto_CK.Value > 99999.99) Or
     (qrPagosMonto_CK.Value < 0) then
  begin
      Raise exception.CreateFmt('Cantidad sobrepasa total cheque por cuadre ó negativo.  Verifique.', []);
  end;
end;

procedure TfrmVerificaCuadre_VTA.qrPagosMonto_COMPValidate(Sender: TField);
begin
  inherited;
  If (qrPagosMonto_COMP.Value > 99999.99) Or
     (qrPagosMonto_COMP.Value < 0 ) Then
  begin
      Raise exception.CreateFmt('Cantidad sobrepasa total completivo por cuadre ó negativo.  Verifique.', []);
  end;

end;

procedure TfrmVerificaCuadre_VTA.qrPagosMonto_DONValidate(Sender: TField);
begin
  inherited;
  If (qrPagosMonto_DON.Value > 99999.99) Or
     (qrPagosMonto_DON.Value < 0) Then
  begin
      Raise exception.CreateFmt('Cantidad sobrepasa total Donación diario por cuadre ó negativo.  Verifique.', []);
  end;
end;

procedure TfrmVerificaCuadre_VTA.qrPagosMonto_EFEValidate(Sender: TField);
begin
  inherited;
  If (qrPagosMonto_EFE.Value > 99999.99) Or
     (qrPagosMonto_EFE.Value < 0)then
  begin
      Raise exception.CreateFmt('Cantidad sobrepasa total efectivo diario por cuadre ó negativo.  Verifique.', []);
  end;

end;

procedure TfrmVerificaCuadre_VTA.qrPagosMonto_FSOBValidate(Sender: TField);
begin
  inherited;
  If (qrPagosMonto_FSOB.Value > 99999.99) Or
     (qrPagosMonto_FSOB.Value < 0) Then
  begin
      Raise exception.CreateFmt('Cantidad sobrepasa total sobrante por cuadre ó negativo.  Verifique.', []);
  end;
end;

procedure TfrmVerificaCuadre_VTA.qrPagosMonto_TCValidate(Sender: TField);
begin
  inherited;
  If (qrPagosMonto_TC.Value > 99999.99) Or
     (qrPagosMonto_TC.Value < 0) Then
  begin
      Raise exception.CreateFmt('Cantidad sobrepasa total tarjeta por cuadre ó negativo.  Verifique.', []);
  end;
end;

procedure TfrmVerificaCuadre_VTA.SetColorTo(iColor: TColor);
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


procedure TfrmVerificaCuadre_VTA.PostearCuadre1Click(Sender: TObject);
 Var FechaStr : String;
     qPagos   : TAdoQuery;
begin
  inherited;
    qrPagos.First;
    While Not qrPagos.eof do
    Begin
       If Valida_Banco then
       Begin
          ShowMessage('Existen cuadres sin Cuenta de Banco.  Verifique.');
          Exit;
       end;
       qrPagos.Next;
    End;
    qrPagos.First;
    If Length(JvMemoryData1Fecha.AsString) > 0 then
    begin
        FechaStr :=FormatDateTime('dd/mm/yyyy', JvMemoryData1Fecha.AsDateTime);
        If (EtMensajeDlg('Está seguro de Contabilizar este Cuadre '+FechaStr+' ?',etConfirmacion,[etSi,etNo],1,dm.Imagenes.Items[5].Bitmap,true) = mryes) then
        begin
            spMensaje.Visible :=True;
            qPagos := DM.NewQuery;
            qPagos.Close;
            qPagos.SQL.Text := ' Update POSInterfaz.dbo.Pagos_Head '+
                               ' Set Estado='+#39+'1'+#39+
                               ' Where Fecha='+#39+FormatDateTime('yyyymmdd', JvMemoryData1Fecha.AsDateTime)+#39;
            qPagos.ExecSQL;
            spMensaje.Visible := False;
            ShowMessage('Cuadre Fecha '+FechaStr+' Trabajado.  Verifique.');
            Buscar_Pagos_Abiertos;
            Buscar_Registro_Primario;
        end;
    end;
    FreeAndNil(qPagos);
end;

procedure TfrmVerificaCuadre_VTA.Buscar_Pagos_Abiertos;
begin
  qrPagosHead.Close;
  qrPagosHead.SQL.Text := ' Select * From Pagos_Head '+
                          ' Where Estado = '+ #39 + '0' + #39 +
                          ' Order By Fecha asc';
  qrPagosHead.Open;
  If qrPagosHead.RecordCount > 0 then qrPagosHead.First;
end;
procedure TfrmVerificaCuadre_VTA.Buscar_Pagos_Abiertos_Detalle;
begin
  qrPagos.Close;
  qrPagos.SQL.Text := ' Select * From Pagos '+
                      ' Where Fecha In (Select Fecha from Pagos_Head Where Estado='+ #39 + '0' + #39 +')';
  qrPagos.Open;
  If qrPagos.RecordCount > 0 then qrPagos.First;
end;

procedure TfrmVerificaCuadre_VTA.CargarCuadreCajaClick(Sender: TObject);
begin
  inherited;
  spCargaCuadre.Visible := True;
end;

procedure TfrmVerificaCuadre_VTA.CargarCuadredeCaja1Click(Sender: TObject);
begin
  inherited;
  spCargaCuadre.Visible := True;
end;

procedure TfrmVerificaCuadre_VTA.cbExtBancoPropertiesEditValueChanged(
  Sender: TObject);
Var qPagosC : TAdoQuery;
begin
  inherited;
  If (Length(cbExtBanco.Text) > 0) And (Length(cbExtSucursal.Text) > 0)  then
  begin
      qPagosC := DM.NewQuery;
      qPagosC.Close;
      qPagosC.SQL.Text := ' Select Banco_Cuenta_1 From PTSUCURSAL '+
                          ' Where SucursalID='+#39+cbExtSucursal.EditValue+#39+' And BankCode='+#39+cbExtBanco.EditValue+#39;
      qPagosC.Open;
      if (qPagosC.RecordCount > 0) then
        txtCuentaBanco.Text :=qPagosC.FieldByName('Banco_Cuenta_1').AsString
      else
        txtCuentaBanco.Text :=EmptyStr;
      FreeAndNil(qPagosC);
  end;
end;

procedure TfrmVerificaCuadre_VTA.cbExtSucursalPropertiesEditValueChanged(
  Sender: TObject);
Var qPagosS : TAdoQuery;
begin
  inherited;
  If Length(cbExtSucursal.Text) > 0 then
  begin
      qPagosS := DM.NewQuery;
      qPagosS.Close;
      qPagosS.SQL.Text := ' Select BankCode,Banco_Cuenta_1 From PtSucursal '+
                          ' Where SucursalID='+#39+cbExtSucursal.EditValue+#39;
      qPagosS.Open;
      if (qPagosS.RecordCount > 0) then
      begin
        cbExtBanco.EditValue:=qPagosS.FieldByName('BankCode').AsString;
        txtCuentaBanco.Text :=qPagosS.FieldByName('Banco_Cuenta_1').AsString;
      end
      else
      begin
        cbExtBanco.EditValue:=EmptyStr;
        txtCuentaBanco.Text :=EmptyStr;
      end;
      FreeAndNil(qPagosS);
  end;
end;

procedure TfrmVerificaCuadre_VTA.cboEstadoPropertiesChange(
  Sender: TObject);
begin
  inherited;
    if cboEstado.Text = 'Todo' then
    begin
      Seleccion :=  ' Select * From Pagos_Head '+
                    ' Order By Fecha asc';
    end
    else if cboEstado.Text = 'Abierto' then
    begin
      Seleccion :=  ' Select * From Pagos_Head '+
                     ' Where Estado = '+ #39 + '0' + #39 +
                     ' Order By Fecha asc ';
      cxGrid2DBTableView2.OptionsData.Editing := True;
    end
    else if cboEstado.Text = 'Registrado' then
    begin
      Seleccion :=  ' Select * From Pagos_Head '+
                     ' Where Estado = '+ #39 + '1' + #39 +
                     ' Order By Fecha asc ';
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

procedure TfrmVerificaCuadre_VTA.ckUsuarioClick(Sender: TObject);
begin
  inherited;
    if ckUsuario.Checked = True then
    begin
      Seleccion :=  ' Select * From Pagos_Head '+
                     ' Where Estado = '+ #39 + '0' + #39 +' And UserID_Creacion='+#39+dm.CurUser+#39+
                     ' Order By Fecha asc ';
      cxGrid2DBTableView2.OptionsData.Editing := True;
    end
    else if cboEstado.Text = 'Abierto' then
    begin
      Seleccion :=  ' Select * From Pagos_Head '+
                     ' Where Estado = '+ #39 + '0' + #39+
                     ' Order By Fecha asc ';
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

procedure TfrmVerificaCuadre_VTA.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
    If Length(JvMemoryData1Fecha.AsString) > 0 then
    begin
      dsPagos.Enabled := True;
      dsPagosDetalle.Enabled := True;
      With qrPagos,sql do
      begin
          Close;
          SQL.Text := ' Select * From Pagos '+
                      ' Where Fecha='+#39+FormatDateTime('yyyymmdd', JvMemoryData1Fecha.AsDateTime)+#39+
                      ' Order By SucursalID,Cuadre_Referencia,TurnoID ';
          Open;
          if Not IsEmpty then  First;
          If JvMemoryData1Estado.AsBoolean = False then
          begin
            BorrarCuadre1.Enabled :=True;
            cxGrid2DBTableView2.OptionsData.Editing := True;
            PostearCuadre1.Enabled := True;
            EliminaCuadre1.Enabled := True;
            MenuPago1.Enabled := True;
          end
          else
          begin
            BorrarCuadre1.Enabled :=False;
            cxGrid2DBTableView2.OptionsData.Editing := False;
            PostearCuadre1.Enabled := False;
            EliminaCuadre1.Enabled := False;
            MenuPago1.Enabled      := False;
          end;
      end;
    end;
    If Length(JvMemoryData1Fecha.AsString) > 0 then
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
            BorrarCuadre1.Enabled :=True;
            cxGridDBTableView1.OptionsData.Editing := True;
            PostearCuadre1.Enabled := True;
            EliminaCuadre1.Enabled := True;
            MenuPago1.Enabled      := True;
          end
          else
          begin
            BorrarCuadre1.Enabled :=False;
            cxGridDBTableView1.OptionsData.Editing := False;
            PostearCuadre1.Enabled := False;
            EliminaCuadre1.Enabled := False;
            MenuPago1.Enabled      := False;
          end;
      end;
    end;
end;


procedure TfrmVerificaCuadre_VTA.cxGrid2DBTableView2CellClick(
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
            BorrarCuadre1.Enabled :=True;
            cxGridDBTableView1.OptionsData.Editing := True;
            PostearCuadre1.Enabled := True;
            MenuPago1.Enabled      := True;
          end
          else
          begin
            BorrarCuadre1.Enabled :=False;
            cxGridDBTableView1.OptionsData.Editing := False;
            PostearCuadre1.Enabled := False;
            EliminaCuadre1.Enabled := False;
            MenuPago1.Enabled      := False;
          end;
      end;
    end;
end;

procedure TfrmVerificaCuadre_VTA.cxGrid2DBTableView2Monto_COMPStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;
  If cxGrid2DBTableView2Monto_COMP.EditValue > 500000 then
  begin
      Raise exception.CreateFmt('Cantidad sobrepasa total completivo por cuadre.  Verifique.', []);
  end;

end;

procedure TfrmVerificaCuadre_VTA.cxGrid2DBTableView2Monto_DONStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;
  If cxGrid2DBTableView2Monto_Don.EditValue > 500000 then
  begin
      Raise exception.CreateFmt('Cantidad sobrepasa total donación por cuadre.  Verifique.', []);
  end;
end;

procedure TfrmVerificaCuadre_VTA.cxGrid2DBTableView2Monto_FSOBStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;
  If cxGrid2DBTableView2Monto_FSOB.EditValue > 500000 then
  begin
      Raise exception.CreateFmt('Cantidad sobrepasa total sobrante por cuadre.  Verifique.', []);
  end;

end;

procedure TfrmVerificaCuadre_VTA.cxGridDBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;
  if cxGridDBTableView1Monto.EditValue < 0 then
    AStyle := notac
  else
    AStyle := Normal;
end;

procedure TfrmVerificaCuadre_VTA.EliminaCuadre1Click(Sender: TObject);
Var qCuadre : TAdoQuery;
    DCuadre   : String;
begin
  inherited;
  if ( qrPagos.RecordCount > 0) And
     (qrPagosHeadEstado.AsBoolean=False) Then
  begin
     If (EtMensajeDlg('Está seguro de eliminar este Cuadre '+qrPagosCuadre_Referencia.AsString,etConfirmacion,[etSi,etNo],1,dm.Imagenes.Items[5].Bitmap,true) = mryes) then
     begin
          DCuadre := qrPagosCuadre_Referencia.AsString;
          spMensaje.Visible :=True;
          qCuadre := DM.NewQuery;
          qCuadre.Close;
          qCuadre.SQL.Text := ' Delete POSInterfaz.dbo.PagosDetalle Where IDRef = '+#39+qrPagosID.Value+#39+
                              ' Delete POSInterfaz.dbo.Pagos Where ID='+#39+qrPagosID.AsString+#39+' And Cuadre_Referencia ='+#39+DCuadre+#39;
          qCuadre.ExecSQL;
          spMensaje.Visible := False;
          ShowMessage('Cuadre '+ DCuadre+' Eliminado.  Verifique.');
          Buscar_Pagos_Abiertos;
          Buscar_Registro_Primario;
     end;
     FreeAndNil(qCuadre);
  end;
end;

procedure TfrmVerificaCuadre_VTA.BorrarCuadre1Click(Sender: TObject);
Var
 FechaStr : String;
begin
  FechaStr :=FormatDateTime('dd/mm/yyyy', JvMemoryData1Fecha.AsDateTime);
  If (EtMensajeDlg('Está seguro de eliminar este Cuadre '+FechaStr+' ?',etConfirmacion,[etSi,etNo],1,dm.Imagenes.Items[5].Bitmap,true) = mryes) then
  begin
      spMensaje.Visible :=True;
      If Not DelCuadreSap Then
      begin
          Raise exception.CreateFmt( ' NO Se Pudo Borrar los datos en tabla de pagos.'+#13+
                                     ' Se Ha Generado Un Error en DelCuadreSap. '+ #13 +
                                     ' Por Favor, Intentelo Nuevamente.!!!', []);

      end;
      spMensaje.Visible := False;
      ShowMessage('Cuadre Fecha '+FechaStr+' eliminado.  Verifique.');
      Buscar_Pagos_Abiertos;
      Buscar_Registro_Primario;
  end;
end;

procedure TfrmVerificaCuadre_VTA.btAceptarClick(Sender: TObject);
Var
 qPagosH,qPagos : TAdoQuery;
begin
  inherited;
  if dtFechaCarga.Text = EmptyStr then
  begin
      ShowMessage('Fecha Cuadre NO puede estar en blanco.  Verifique.');
      dtFechaCarga.SetFocus;
      Exit;
  end
  else If dtFechaCarga.EditValue > (DM.Buscar_Fecha_Actual) then
  begin
      ShowMessage('Fecha Cuadre NO puede ser mayor que la fecha del día.  Verifique.');
      dtFechaCarga.SetFocus;
      Exit;
  end
  else
  begin
      qPagosH := DM.NewQuery;
      qPagosH.Close;
      qPagosH.SQL.Text := ' Select top 1 Fecha from POSInterfaz.dbo.Pagos_Head '+
                          ' Where Fecha='+#39+FormatDateTime('yyyymmdd', dtfechaCarga.Date)+#39;
      qPagosH.Open;
      if (qPagosH.RecordCount > 0) then
      begin
        ShowMessage('Fecha Cuadre Ya se procesó.  Verifique.');
        dtFechaCarga.SetFocus;
        Exit;
      end
      else
      begin
          spMensaje.Visible :=True;
          qPagos := DM.NewQuery;
          qPagos.Close;
          qPagos.SQL.Text := ' Insert Into POSInterfaz.dbo.Pagos_Head (Fecha,Cuadre_Total,Estado,UserID_Creacion) '+
                             ' Values ('+#39+FormatDateTime('yyyymmdd', dtfechaCarga.Date)+#39+','+#39+'0.00'+#39+','+#39+'0'+#39+','+#39+Dm.CurUser+#39+')';
          qPagos.ExecSQL;
          qPagosH := DM.NewQuery;
          qPagosH.Close;
          qPagosH.SQL.Text := ' Insert Into POSInterfaz.dbo.Pagos (ID,Fecha, SucursalID, Monto_EFE, Monto_TC, Monto_CK, Monto_TB, Monto_US, Monto_DON,Monto_FSOB,Monto_COMP,Cuadre_Referencia,TurnoID,Cuenta_Banco,Banco_Deposito,Fecha_Deposito) '+
                              '	SELECT NEWID() As ID, C.Fecha,C.SucursalID,	Isnull(sum(Case When ((TipoDoc='+#39+'RI'+#39+' OR TipoDoc='+#39+'DV'+#39+') And d.FormadePagoId='+#39+'EFE'+#39+')'+
							                ' Then D.Monto End),0) AS Monto_EFE,'+
                              ' Isnull(sum(Case When ((TipoDoc='+#39+'RI'+#39+' OR TipoDoc='+#39+'DV'+#39+') And d.FormadePagoId='+#39+'TC'+#39+') Then D.Monto End),0)+'+
                              ' Isnull(sum(Case When ((TipoDoc='+#39+'RI'+#39+' OR TipoDoc='+#39+'DV'+#39+') And d.FormadePagoId='+#39+'TD'+#39+') Then D.Monto End),0) AS Monto_TC, '+
							                ' Isnull(sum(Case When ((TipoDoc='+#39+'RI'+#39+' OR TipoDoc='+#39+'DV'+#39+') And d.FormadePagoId='+#39+'CK'+#39+') Then D.Monto End),0) AS Monto_CK, '+
                              ' Isnull(sum(Case When ((TipoDoc='+#39+'RI'+#39+' OR TipoDoc='+#39+'DV'+#39+') And d.FormadePagoId='+#39+'TB'+#39+') Then D.Monto End),0) AS Monto_TB, '+
                               #39+'0.00'+#39+' As Monto_US, '+#39+'0.00'+#39+' As Monto_DON, '+#39+'0.00'+#39+' As Monto_FSOB,'+#39+'0.00'+#39+' As Monto_COMP,'+
						                  ' LTrim(c.CUADREGLOBAL) as Cuadre_Referencia,dbo.ObtTurnoID(c.Fecha,c.SucursalID,LTrim(c.CUADREGLOBAL)) As TurnoID, '+
						                  ' CASE C.SINPRFILTER WHEN 0 THEN s.Banco_Cuenta_1 WHEN 1 THEN s.Banco_Cuenta_2 WHEN 2 THEN s.Banco_Cuenta_3 END AS Cuenta_Banco, '+
						                  ' CASE C.SINPRFILTER WHEN 0 THEN s.BankCode WHEN 1 THEN s.BankCode1 WHEN 2 THEN s.BankCode2 END AS Banco,'+
                              ' Case dbo.ObtTurnoID(c.Fecha,c.SucursalID,LTrim(c.CUADREGLOBAL)) When '+'1'+' Then C.Fecha'+' Else '+
                              ' C.Fecha+'+IntToStr(DM.ContDiasTrabajo(dtfechaCarga.Date))+' End As Fecha_Deposito'+
			                        ' FROM        PTCobro AS C INNER JOIN '+
						                  ' PTCobroDetalle AS D ON D.CobroID = C.CobroID INNER JOIN '+
						                  ' PTSUCURSAL AS S ON S.SUCURSALID = C.SucursalID INNER JOIN '+
						                  ' PTENTRADAPACIENTE AS E ON C.refRecid = E.RECID '+
                              ' WHERE     (C.TipoDoc IN ('+#39+'RI'+#39+','+#39+'DV'+#39+')) AND (E.CLIENTENOMBRE NOT LIKE '+#39+'%FILIACION%'+#39+')'+' And c.SinprFilter='+#39+'0'+#39+
			                        ' AND c.FECHA ='+#39+FormatDateTime('yyyymmdd',dtfechaCarga.Date)+#39+' AND c.MONEDAID='+#39+'RD'+#39+
                              ' Group by   C.Fecha,C.SucursalID,LTrim(c.CUADREGLOBAL),'+
  						                ' CASE C.SINPRFILTER WHEN 0 THEN s.Banco_Cuenta_1 WHEN 1 THEN s.Banco_Cuenta_2 WHEN 2 THEN s.Banco_Cuenta_3 End,'+
  						                ' CASE C.SINPRFILTER WHEN 0 THEN s.BankCode WHEN 1 THEN s.BankCode1 WHEN 2 THEN s.BankCode2 End,'+
                              ' CASE dbo.ObtTurnoID(c.Fecha,c.SucursalID,LTrim(c.CUADREGLOBAL)) When '+'1'+' Then C.Fecha'+' Else '+
                              ' C.Fecha+'+IntToStr(DM.ContDiasTrabajo(dtfechaCarga.Date))+' End'+
                              ' Order by c.SucursalID,LTrim(c.CUADREGLOBAL),dbo.ObtTurnoID(c.Fecha,c.SucursalID,LTrim(c.CUADREGLOBAL)) ';
         qPagosH.ExecSQL;
// Inserta Detalle de Pagos Via SP
        if Length(dtfechaCarga.Text) > 0 then
         begin
              If Not ActPagoDetalle Then
              begin
                  Raise exception.CreateFmt( ' NO Se Pudo Transferir a SAP cuadre del día '+#39+FormatDateTime('yyyymmdd', dtfechaCarga.Date)+#39+'.'+ #13 +
                                          ' Se Ha Generado Un Error en ActCuadreSap. '+ #13 +
                                          ' Por Favor, Intentelo Nuevamente.!!!', []);
              end
         end;
      end;
      FreeAndNil(qPagos);
      FreeAndNil(qPagosH);
      spCargaCuadre.Visible := False;
      Buscar_Pagos_Abiertos;
      Buscar_Registro_Primario;
      spMensaje.Visible :=False;
  end;
end;

procedure TfrmVerificaCuadre_VTA.btAceptaSerClick(Sender: TObject);
begin
  inherited;
   if qrPagos.IsEmpty then
   begin
      qrPagos.Active := true;
   end;
   qrPagos.Append;
   qrPagosID.Value               := CreaGUID();
   if qrPagosID.Value = EmptyStr then
   begin
      ShowMessage('ID Generado no es válido.');
      qrPagos.Cancel;
      Exit;
   end;
   qrPagosFecha.Value            := Fecha_Pago;
   if Trim(qrPagosFecha.AsString) = EmptyStr then
   begin
      ShowMessage('Fecha del cuadre no es válida.');
      qrPagos.Cancel;
      Exit;
   end;
   if Length(cbExtSucursal.EditText) > 0 then
      qrPagosSucursalID.Value  := cbExtSucursal.EditValue;
   if cbExtSucursal.EditText = EmptyStr then
   begin
      ShowMessage('Sucursal del cuadre no es válida.');
      qrPagos.Cancel;
      Exit;
   end;

   IF Length(cxMontoEFE.EditValue) > 0 then
      qrPagosMonto_EFE.Value         := cxMontoEFE.EditValue;
   IF Length(cxMontoTC.EditValue) > 0 then
      qrPagosMonto_TC.Value          := cxMontoTC.EditValue;
   IF Length(cxMontoCK.EditValue) > 0 then
      qrPagosMonto_CK.Value          := cxMontoCK.EditValue;
   IF Length(cxMontoDON.EditValue) > 0 then
      qrPagosMonto_DON.Value         := cxMontoDON.EditValue;
   IF Length(cxMontoFS.EditValue) > 0 then
      qrPagosMonto_FSOB.Value        := cxMontoFS.EditValue;
   IF Length(cxMontoCDEP.EditValue) > 0 then
      qrPagosMonto_COMP.Value        := cxMontoCDEP.EditValue;
   if length(txtCuentaBanco.EditingText)>0 then
      qrPagosCuenta_Banco.Value      := txtCuentaBanco.EditValue;
   qrPagosMonto_US.Value             := 0;
   qrPagosMonto_TB.Value             := 0;   
   if (qrPagosMonto_EFE.Value = 0) And (qrPagosMonto_TC.Value=0) And
      (qrPagosMonto_DON.Value=0) And (qrPagosMonto_FSOB.Value=0) And
      (qrPagosMonto_COMP.Value=0) then
   begin
      ShowMessage('Debe registrar monto mínimo en 1 campo de totales.');
      qrPagos.Cancel;
      Exit;
   end;
   qrPagosTurnoID.Value           := spTurno.Value;
   if qrPagosTurnoID.Value  < 1 then
   begin
      ShowMessage('Debe digitar el número de Turno.');
      qrPagos.Cancel;
      Exit;
   end;
   qrPagosCuadre_Referencia.Value := Trim(txtCuadre.EditingText);
   if Trim(qrPagosCuadre_Referencia.Value)  = EmptyStr then
   begin
      ShowMessage('Debe digitar el Cuadre de Referencia.');
      qrPagos.Cancel;
      Exit;
   end;
   if Length(cbExtBanco.EditText) > 0 then
      qrPagosBanco_Deposito.Value  := cbExtBanco.EditValue;

   if Trim(cbExtBanco.EditText)  = EmptyStr then
   begin
      ShowMessage('Debe seleccionar el banco de depósito.');
      qrPagos.Cancel;
      Exit;
   end;
   If Length(dtFechaDep.Text) > 0 then
      qrPagosFecha_deposito.Value    := dtFechaDep.EditValue;

   if qrPagosFecha_deposito.AsString  = EmptyStr then
   begin
      ShowMessage('Debe digitar fecha de depósito.');
      qrPagos.Cancel;
      Exit;
   end;
   if txtCuentaBanco.Text = EmptyStr then
   begin
      ShowMessage('Número de Cuenta del Banco no es válida.');
      qrPagos.Cancel;
      Exit;
   end;

   qrPagos.Post;
   Buscar_Pagos_Abiertos;
   Buscar_Registro_Primario;
   btCancelCClick(Sender);
end;

procedure TfrmVerificaCuadre_VTA.btCancelarClick(Sender: TObject);
begin
  inherited;
  spCargaCuadre.Visible := False;
end;
procedure TfrmVerificaCuadre_VTA.btCancelCClick(Sender: TObject);
begin
  inherited;
  SpCuadre.Visible := False;
end;

procedure TfrmVerificaCuadre_VTA.Buscar_Registro_Primario;
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
        JvMemoryData1Fecha.AsDateTime             := fieldbyname('Fecha').AsDateTime;
        JvMemoryData1Numero_Transaccion.AsString  := fieldbyname('Numero_Diario').AsString;
        JvMemoryData1CuadreTotal.AsFloat          := fieldbyname('Cuadre_Total').AsFloat;
        JvMemoryData1Estado.AsBoolean             := fieldbyname('Estado').AsBoolean;
        Next;
    end;

    If qrPagosHead.recordset.recordcount > 0 then
    begin
      JvMemoryData1.First;
      If JvMemoryData1Estado.AsBoolean = False then
      begin
        BorrarCuadre1.Enabled :=True;
        PostearCuadre1.Enabled := True;
        cxGrid2DBTableView2.OptionsData.Editing := True;
        EliminaCuadre1.Enabled := True;
        MenuPago1.Enabled      := True;
      end
      else
      begin
        BorrarCuadre1.Enabled :=False;
        PostearCuadre1.Enabled := False;
        cxGrid2DBTableView2.OptionsData.Editing := False;
        EliminaCuadre1.Enabled := False;
        MenuPago1.Enabled      := False;
      end;
      DsDatos.Enabled := True;
      With qrPagos,sql do
      begin
          Close;
          SQL.Text := ' Select * From Pagos '+
                      ' Where Fecha='+#39+FormatDateTime('yyyymmdd', JvMemoryData1Fecha.AsDateTime)+#39+
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
function TfrmVerificaCuadre_VTA.ActCuadreSap : Boolean;
begin
Result := False;
Try
  If Length(JvMemoryData1Fecha.AsString) >0 then
  begin
    with  dm.ActCuadreSap, Parameters do
    begin
      ParamByName('@Fecha').Value  := FormatDateTime('yyyymmdd', JvMemoryData1Fecha.AsDateTime);
      ParamByName('@UserID').Value := dm.CurUser;
      ExecProc;
      Result:= True;
    end;
  end;
  Except
    On E : Exception do
      ShowMessage(E.Message);
  End
end;
Function TfrmVerificaCuadre_VTA.ActPagoDetalle : Boolean;
begin
Result := False;
Try
  If Length(dtfechaCarga.Text) >0 then
  begin
    with  dm.ActPagoDetalle, Parameters do
    begin
      ParamByName('@Fecha').Value  := FormatDateTime('yyyymmdd', dtfechaCarga.Date);
      ParamByName('@UserID').Value := dm.CurUser;
      ExecProc;
      Result:= True;
    end;
  end;
  Except
    On E : Exception do
      ShowMessage(E.Message);
  End
end;
Function TfrmVerificaCuadre_VTA.CreaGUID: String;
Var qconsulta : TADOQuery;
begin
   qconsulta := DM.NewQuery;
   With qconsulta, sql do
   begin
      Close;
      Text := ' SELECT NEWID() As ID ';
      Open;
   end;
  if (qconsulta.RecordCount > 0) then
    result := qconsulta.Fieldbyname('ID').AsString
  else
    result := '';
  FreeAndNil(qconsulta);
end;
function TfrmVerificaCuadre_VTA.DelCuadreSap : Boolean;
begin
Result := False;
Try
  If (Length(JvMemoryData1Fecha.AsString) > 0) Then
  begin
    with  dm.DelCuadreDiario, Parameters do
    begin
      ParamByName('@Fecha').Value  := FormatDateTime('yyyymmdd', JvMemoryData1Fecha.AsDateTime);
      ExecProc;
      Result:= True;
    end;
  end;
  Except
    On E : Exception do
      ShowMessage(E.Message);
  End
end;
Function TfrmVerificaCuadre_VTA.Valida_Banco : Boolean;
Var qDetalle  : TAdoQuery;
begin
  qDetalle := DM.NewQuery;
  Result := False;
  With qDetalle, sql do
  begin
      Close;
      SQL.Text := ' Select * from POSInterfaz.dbo.pagos  '+
                  ' Where Fecha='+#39+FormatDateTime('yyyymmdd', JvMemoryData1Fecha.AsDateTime)+#39+' And Isnull(Cuenta_Banco,'+#39+#39+')='+#39+#39;
      Open;
      if (RecordCount > 0) then
          Result := True
      else
          Result := False;
  end;
  FreeAndNil(qDetalle);
End;
END.

