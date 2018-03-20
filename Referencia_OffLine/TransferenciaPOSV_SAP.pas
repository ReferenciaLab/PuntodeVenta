unit TransferenciaPOSV_SAP;

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
  cxCurrencyEdit, JvMemoryDataset, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDSimplePanel,dlgmensajes, cxCheckGroup, cxRichEdit,
  cxLookupEdit, cxDBLookupEdit, cxLabel, LMDCustomButton, LMDButton, LMDControl,
  LMDBaseControl, LMDBaseGraphicControl, LMDBaseLabel, LMDCustomLabel, LMDLabel;

type
  TfrmTransferenciaPOSV_SAP = class(TfrmCustomModule)
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
    BtFunciones: TcxButton;
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
    JvMemoryData1Seleccionar: TBooleanField;
    JvMemoryData1Pedido_Venta: TStringField;
    JvMemoryData1Cuenta_Cliente: TStringField;
    JvMemoryData1Nombre: TStringField;
    JvMemoryData1Tipo_Pedido: TStringField;
    JvMemoryData1Estado: TStringField;
    JvMemoryData1MonedaID: TStringField;
    cxGrid1DBTableView1Seleccionar: TcxGridDBColumn;
    cxGrid1DBTableView1Pedido_Venta: TcxGridDBColumn;
    cxGrid1DBTableView1Cuenta_Cliente: TcxGridDBColumn;
    cxGrid1DBTableView1Nombre: TcxGridDBColumn;
    cxGrid1DBTableView1Tipo_Pedido: TcxGridDBColumn;
    cxGrid1DBTableView1Estado: TcxGridDBColumn;
    cxGrid1DBTableView1MonedaID: TcxGridDBColumn;
    JvMemoryData2: TJvMemoryData;
    dsArticulos: TDataSource;
    JvMemoryData2PruebaID: TStringField;
    JvMemoryData2SucursalID: TStringField;
    JvMemoryData2Cantidad: TIntegerField;
    JvMemoryData2Unidad: TStringField;
    JvMemoryData2Precio_Unitario: TCurrencyField;
    JvMemoryData2Descuento: TCurrencyField;
    JvMemoryData2Neto: TCurrencyField;
    JvMemoryData2Descripcion: TStringField;
    JvMemoryData2Muestrano: TStringField;
    JvMemoryData2Nota_Debito: TBooleanField;
    JvMemoryData2Porcentaje_Desc: TCurrencyField;
    cxGrid2DBTableView2PruebaID: TcxGridDBColumn;
    cxGrid2DBTableView2SucursalID: TcxGridDBColumn;
    cxGrid2DBTableView2Cantidad: TcxGridDBColumn;
    cxGrid2DBTableView2Unidad: TcxGridDBColumn;
    cxGrid2DBTableView2Precio_Unitario: TcxGridDBColumn;
    cxGrid2DBTableView2Descuento: TcxGridDBColumn;
    cxGrid2DBTableView2Porcentaje_Desc: TcxGridDBColumn;
    cxGrid2DBTableView2Neto: TcxGridDBColumn;
    cxGrid2DBTableView2Descripcion: TcxGridDBColumn;
    cxGrid2DBTableView2Muestrano: TcxGridDBColumn;
    qrPedido: TADOQuery;
    qrPedidoClienteID: TStringField;
    qrPedidoMonedaID: TStringField;
    qrPedidoEstado: TStringField;
    qrPedidoU_Numero: TStringField;
    qrPedidoDetalle: TADOQuery;
    qrPedidoNombreCliente: TStringField;
    btProforma: TcxButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    btConsulta: TcxButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    MenuFunciones: TPopupMenu;
    CargarPedidodeVenta1: TMenuItem;
    TransferirPedidoSAP1: TMenuItem;
    BorrarPedido1: TMenuItem;
    spMensaje: TLMDSimplePanel;
    Shape1: TShape;
    Label1: TLabel;
    Panel1: TPanel;
    qrPedidoDetalleRecID: TLargeintField;
    qrPedidoDetallePruebaID: TStringField;
    qrPedidoDetalleMuestrano: TStringField;
    qrPedidoDetalleDescripcion: TStringField;
    qrPedidoDetallePrecio: TBCDField;
    qrPedidoDetalleDeptoPrue: TStringField;
    qrPedidoDetalleSucursalID: TStringField;
    qrPedidoDetalleCantidad: TIntegerField;
    qrPedidoDetalleUnidad: TStringField;
    qrPedidoDetalleDescuento: TBCDField;
    qrPedidoDetalleDescuento_Porcentaje: TBCDField;
    qrPedidoClienteID_Gen: TStringField;
    qrPedidoGrupoID_Gen: TStringField;
    JvMemoryData1GrupoID_Gen: TStringField;
    JvMemoryData1ClienteID_Gen: TStringField;
    qrPedidoFecha_Desde: TDateTimeField;
    qrPedidoFecha_Hasta: TDateTimeField;
    JvMemoryData1Fecha_Inicio: TDateTimeField;
    JvMemoryData1Fecha_Fin: TDateTimeField;
    MenuPedido: TPopupMenu;
    MenuArticulo: TPopupMenu;
    AadirPedido1: TMenuItem;
    BorrarPedido2: TMenuItem;
    InsertarPrueba1: TMenuItem;
    EliminarPrueba1: TMenuItem;
    MarcarTodosRegistros1: TMenuItem;
    DesmarcarTodosRegistros1: TMenuItem;
    MenuProforma: TPopupMenu;
    Factura: TMenuItem;
    MenuConsultas: TPopupMenu;
    DetalleFacturacion: TMenuItem;
    ImprimirDetalleTodos1: TMenuItem;
    qrPedidoComentario: TStringField;
    JvMemoryData1Comentario: TStringField;
    cxGrid1DBTableView1Comentario: TcxGridDBColumn;
    JvMemoryData2RecID: TLargeintField;
    CancelarAgregarUsuario1: TMenuItem;
    JvMemoryData1RecID: TLargeintField;
    qrPedidoSeleccionar: TBooleanField;
    qrPedidoTipo_Pedido: TStringField;
    qrPedido_Head: TADOQuery;
    dsPedidoHead: TDataSource;
    qrPedido_HeadID: TGuidField;
    qrPedido_HeadU_Numero: TStringField;
    qrPedido_HeadGrupoID: TStringField;
    qrPedido_HeadClienteID: TStringField;
    qrPedido_HeadNombreCliente: TStringField;
    qrPedido_HeadTipo_Pedido: TStringField;
    qrPedido_HeadEstado: TStringField;
    qrPedido_HeadFecha_Desde: TDateTimeField;
    qrPedido_HeadFecha_Hasta: TDateTimeField;
    qrPedido_HeadComentario: TStringField;
    qrPedido_HeadSeleccionar: TBooleanField;
    qrPedido_HeadMonedaID: TStringField;
    spCliente: TLMDSimplePanel;
    LMDLabel2: TLMDLabel;
    btCancelar: TLMDButton;
    btAceptar: TLMDButton;
    txtNombreCliente: TcxTextEdit;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel1: TcxLabel;
    cbExtCliente: TcxExtLookupComboBox;
    cxLabel2: TcxLabel;
    txtMonedaID: TcxTextEdit;
    txtClienteID: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxLabel6: TcxLabel;
    FechaIni: TcxDateEdit;
    FechaFin: TcxDateEdit;
    qrPedidoDetallePrecio_Unitario: TFloatField;
    qrPedidoDetalleNeto: TFloatField;
    spServicio: TLMDSimplePanel;
    LMDLabel1: TLMDLabel;
    btCancelSer: TLMDButton;
    btAceptaSer: TLMDButton;
    txtNombreServicio: TcxTextEdit;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cbExtServicio: TcxExtLookupComboBox;
    cxLabel10: TcxLabel;
    txtServicioID: TcxTextEdit;
    cxLabel11: TcxLabel;
    cxMonto: TcxMaskEdit;
    cboMonedaID: TcxComboBox;
    cxLabel12: TcxLabel;
    spCantidad: TcxSpinEdit;
    cxGrid1DBTableView1GrupoID: TcxGridDBColumn;
    qrPed: TADOQuery;
    qrPedL: TADOQuery;
    procedure cxGrid1DBTableView1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbExtServicioPropertiesChange(Sender: TObject);
    procedure btAceptaSerClick(Sender: TObject);
    procedure btCancelSerClick(Sender: TObject);
    procedure BorrarPedido1Click(Sender: TObject);
    procedure CargarPedidodeVenta1Click(Sender: TObject);
    procedure btAceptarClick(Sender: TObject);
    procedure cbExtClientePropertiesChange(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure AadirPedido1Click(Sender: TObject);
    procedure qrPedidoDetalleCalcFields(DataSet: TDataSet);
    procedure CancelarAgregarUsuario1Click(Sender: TObject);
    procedure InsertarPrueba1Click(Sender: TObject);
    procedure DesmarcarTodosRegistros1Click(Sender: TObject);
    procedure MarcarTodosRegistros1Click(Sender: TObject);
    procedure EliminarPrueba1Click(Sender: TObject);
    procedure BorrarPedido2Click(Sender: TObject);
    procedure cboEstadoPropertiesChange(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure TransferirPedidoSAP1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdPacienteDblClick(Sender: TObject);
    procedure EdClienteDblClick(Sender: TObject);
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
    qFindCliente      : TADOQuery;
    qFindServicio     : TADOQuery;
  public
    { Public declarations }
    _doctor       : String;
    _poliza       : String;
    _muestra      : String;
    _entrada      : String;
    _recordId     : Integer;

    Function ActPreFacturaSap : Boolean;
    Function  Get_Estado(Estado : String) : String;    
    Function  Busca_RecID(ClienteID : String; Estado: String) : Int64;
    Function  Buscar_Pedidos(TipoPedido : String) : Boolean;
    Function  Busca_GrupoID(ClienteID : String) : String;
    Function  Verifica_TasaSap(Fecha : String) : String;
    Function  CreaID : String;
    Function  GetSecuenciaId : Int64;
    procedure Buscar_Registro_Primario;

  end;

var
  frmTransferenciaPOSV_SAP       : TfrmTransferenciaPOSV_SAP;

implementation

uses ActionsDM, cxExportGrid4Link, DataModule, Main;

{$R *.dfm}


procedure TfrmTransferenciaPOSV_SAP.FormCreate(Sender: TObject);
begin
  inherited;
  frmMain.Tran_fer := True;
  Buscar_Pedidos('T');
  Buscar_Registro_Primario;
end;


procedure TfrmTransferenciaPOSV_SAP.FormDestroy(Sender: TObject);
begin
  inherited;
  frmMain.Tran_fer := False;
end;


procedure TfrmTransferenciaPOSV_SAP.FormShow(Sender: TObject);
Var qconsulta,qconsultad : TADOQuery;
    U_Cod_Ant,Mensaje : String;
    ContD             : Integer;
begin
  inherited;
  If (dm.DBSAP.Connected = False) Then
  begin
    dm.DBSAP.Close;
    dm.DBSAP.Open;
  end;
  DM.qrParametro.close;
  DM.qrParametro.open;
  DM.qrPruebas.Close;
  With DM.qrPruebas, sql do
  begin
    Close;
    Clear;
    Add('SELECT PRUEBAID, ALIAS, DESCRIPCION, ESTATUS, GRUPOPRUEBAID, DEPARTAMENTO, PRECIO,');
    Add(' PERMITECAMBIOPRECIO, CODIGOAXAPTA, PRECIODOLARES, COSTO, EXTERIOR, FACTURARCABECERA, PRUEBAS,');
    Add(' TIPO, ORINA, SANGRE, CONDPACIENTE, CONDMUESTRA, CODDIAPROC, DIASRESULTADO, UNIDAD, ABREVIACION,');
    Add(' MEDIO, COLOR, DEPID, TIPOAS400, CODIGOIDAS400, MEDIOAS400, NOPROCESAR, COMENTARIONOPROCESAR, TIPOMUESTRA,');
    Add(' COMENTARIO_REQ, COD_SEC_PRUEBA, SEXO, AYUNA, FONT_BOLD, CLIENTEID, DATAAREAID, RECID, TRANSFER FROM PTPrueba (nolock) Where Estatus = '+#39+'1'+#39+' And Not PRUEBAID Is Null ');
    Open;
  end;
  DM.qrSucursal.Close;
  With DM.qrSucursal, sql do
  begin
    Close;
    Clear;
    Add('SELECT * FROM PtSucursal (nolock) Where sucursal > 0 ');
    Open;
  end;

  if not DM.qrCliente.Active then
    DM.qrCliente.Open;

  cboEstado.ItemIndex := 1;
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

procedure TfrmTransferenciaPOSV_SAP.InsertarPrueba1Click(Sender: TObject);
Var Estado : String;
begin
  inherited;
  cbExtServicio.EditValue := 'SER00792';
  spServicio.Visible := True;
{   Estado := Get_Estado(qrPedido_HeadEstado.AsString);
   if qrPedidoDetalle.IsEmpty then
   begin
      qrPedidoDetalle.Active := true;
      qrPedidoDetalle.Delete;
   end;
   qrPedidoDetalle.Append;
   qrPedidoDetalleRecID.Value               := GetSecuenciaId;
   qrPedidoDetallePruebaID.Value            := 'SER00792';
   qrPedidoDetalleSucursalID.Value          := 'SP';
   qrPedidoDetalleCantidad.Value            := 1;
   qrPedidoDetalleUnidad.Value              := 'UND';
   qrPedidoDetallePrecio.Value              := 0.00;
   qrPedidoDetalleDescuento.Value           := 0.00;
   qrPedidoDetalleDescuento_Porcentaje.Value:= 0.00;
   qrPedidoDetallePrecio_Unitario.Value     := 0.00;
   qrPedidoDetalleMuestrano.Value           := EmptyStr;
   qrPedidoDetalleDescripcion.Value         := 'Facturacion POS';
   qrPedidoDetalle.Post;
}
//   cxGrid2DBTableView2.OptionsView.NewItemRow := True;

{ if JvMemoryData2.IsEmpty then
   begin
      JvMemoryData2.Active := true;
      JvMemoryData2.EmptyTable;
   end;
   JvMemoryData2.Append;
   cxGrid2DBTableView2.OptionsView.NewItemRow := True;
   }
end;

procedure TfrmTransferenciaPOSV_SAP.MarcarTodosRegistros1Click(Sender: TObject);
begin
  inherited;
  if qrPedido_Head.Recordset.RecordCount > 0 then
  begin
        spMensaje.Visible :=True;
        qrPedido_Head.First;
        While Not qrPedido_Head.Eof do
        begin
            qrPedido_Head.Edit;
            qrPedido_HeadSeleccionar.Asboolean := True;
            qrPedido_Head.Post;
            qrPedido_Head.Next;
        end;
        qrPedido_Head.First;
        qrPedido_Head.Refresh;
        spMensaje.Visible :=False;
  end;
end;

procedure TfrmTransferenciaPOSV_SAP.qrPedidoDetalleCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  qrPedidoDetalleNeto.Value := (qrPedidoDetallePrecio_Unitario.Value * qrPedidoDetalleCantidad.Value)-(qrPedidoDetalleDescuento.value);
end;

procedure TfrmTransferenciaPOSV_SAP.EdClienteDblClick(Sender: TObject);
begin
  inherited;
  frmMain.LanzaVentana(-1405);
end;


procedure TfrmTransferenciaPOSV_SAP.EdPacienteDblClick(Sender: TObject);
begin
  inherited;
{  frmMain.LanzaVentana(-7999);
  if (cboEstado.Text <> '') then
    Buscar_Ordenes_Abiertas;
}
end;


procedure TfrmTransferenciaPOSV_SAP.EliminarPrueba1Click(Sender: TObject);
Var qArticulo : TAdoQuery;
    DPrueba   : String;
begin
  inherited;
  if ( qrPedido_Head.RecordCount > 0) And
     ((qrPedido_HeadEstado.AsString='Abierto') Or (qrPedido_HeadEstado.AsString='T') Or
     (qrPedido_HeadEstado.AsString='Pre-Factura') Or (qrPedido_HeadEstado.AsString='P')) And
     (qrPedidoDetallePruebaID.AsString <> EmptyStr) Then
  begin
     If (EtMensajeDlg('Est� seguro de eliminar este servicio '+qrPedidoDetallePruebaID.AsString+' Entrada='+qrPedidoDetalleMuestrano.AsString,etConfirmacion,[etSi,etNo],1,dm.Imagenes.Items[5].Bitmap,true) = mryes) then
     begin
          DPrueba := qrPedidoDetallePruebaID.AsString;
          spMensaje.Visible :=True;
          DPrueba :=qrPedidoDetallePruebaID.AsString+' '+qrPedidoDetalleDescripcion.AsString;
          qArticulo := DM.NewQuery;
          qArticulo.Close;
          qArticulo.SQL.Text := ' Delete POSInterfaz.dbo.PedidoVentaDetalle '+
                                ' Where RecID='+qrPedidoDetalleRecID.AsString+' And PruebaID ='+#39+qrPedidoDetallePruebaID.AsString+#39;
          qArticulo.ExecSQL;
          Buscar_Pedidos(Get_Estado(qrPedido_HeadEstado.AsString));
          Buscar_Registro_Primario;
          spMensaje.Visible := False;
          ShowMessage('Articulo '+ DPrueba+' Eliminado.  Verifique.');
     end;
     FreeAndNil(qArticulo);
  end;
end;

procedure TfrmTransferenciaPOSV_SAP.SetColorTo(iColor: TColor);
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
Function TfrmTransferenciaPOSV_SAP.Buscar_Pedidos(TipoPedido : String):Boolean;
begin
    qrPedido_Head.Close;
    qrPedido_Head.Sql.Clear;
    qrPedido_Head.SQL.Text := ' Select ID,Seleccionar,U_Numero,GrupoID,ClienteID,NombreCliente,'+
                         ' Case Estado When '+#39+'T'+#39+' Then '+#39+'Abierto'+#39+
                         '             When '+#39+'P'+#39+' Then '+#39+'Pre-Factura'+#39+
                         '             When '+#39+'F'+#39+' Then '+#39+'Facturado'+#39+
                         '             When '+#39+'C'+#39+' Then '+#39+'Cancelado'+#39+' end As Estado,'+
                         ' Case Tipo_Pedido When '+#39+'P'+#39+' Then '+#39+'Pedido de Ventas'+#39+
                         '             When '+#39+'D'+#39+' Then '+#39+'Diario'+#39+
                         '             When '+#39+'S'+#39+' Then '+#39+'Suscripcion'+#39+
                         '             When '+#39+'A'+#39+' Then '+#39+'Articulo Requerido'+#39+' end As Tipo_Pedido,'+
                         '      Fecha_Desde,Fecha_Hasta,Comentario,MonedaID '+
                         ' From PedidoVenta_Head '+
                         ' WHERE Estado = '+ #39 +TipoPedido+ #39;

    qrPedido_Head.Open;
    If qrpedido_Head.RecordCount > 0 then
    begin
       qrPedido_Head.First;
       Result := True;
    end
    else
      Result := False;
End;
procedure TfrmTransferenciaPOSV_SAP.BorrarPedido1Click(Sender: TObject);
begin
  inherited;
  BorrarPedido2Click(Sender);
end;

Procedure TfrmTransferenciaPOSV_SAP.BorrarPedido2Click(Sender: TObject);
 Var
 //qPedidos           : TAdoQuery;
     ClienteID,Estado   : String;
begin
  inherited;
  If (qrPedido_Head.RecordCount > 0) And
     ((qrPedido_HeadEstado.AsString='Abierto') Or (qrPedido_HeadEstado.AsString='T') )
  And (qrPedido_HeadSeleccionar.AsBoolean = True) Then
  begin
     If (EtMensajeDlg('Est� seguro de eliminar pedido del Cliente(s) ',etConfirmacion,[etSi,etNo],1,dm.Imagenes.Items[5].Bitmap,true) = mryes) then
     begin
        qrPedido_Head.First;
        While Not qrPedido_Head.Eof do
        begin
             If qrPedido_HeadSeleccionar.AsBoolean = True Then
             Begin
                ClienteID:=qrPedido_HeadClienteID.AsString;
                Estado   :=qrPedido_HeadEstado.AsString;
                spMensaje.Visible :=True;
//                qPedidos := DM.NewQuery;
                qrPed.Close;
                qrPed.SQL.Text := ' Delete POSInterfaz.dbo.PedidoVentaDetalle '+
                                     ' Where Recid in (Select RecID From POSInterfaz.dbo.PedidoVenta Where ClienteID='+#39+qrPedido_HeadClienteID.AsString+#39+
                                     ' And Fecha_Desde ='+#39+FormatDateTime('yyyymmdd', qrPedido_HeadFecha_Desde.AsDateTime)+#39+
                                     ' And Fecha_Hasta ='+#39+FormatDateTime('yyyymmdd', qrPedido_HeadFecha_Hasta.AsDateTime)+#39+')'+
                                     ' Delete POSInterfaz.dbo.PedidoVenta '+
                                     ' Where ClienteID='+#39+qrPedido_HeadClienteID.AsString+#39+
                                     ' And Fecha_Desde ='+#39+FormatDateTime('yyyymmdd', qrPedido_HeadFecha_Desde.AsDateTime)+#39+
                                     ' And Fecha_Hasta ='+#39+FormatDateTime('yyyymmdd', qrPedido_HeadFecha_Hasta.AsDateTime)+#39+
                                     ' Delete POSInterfaz.dbo.PedidoVenta_Head '+
                                     ' Where ClienteID='+#39+qrPedido_HeadClienteID.AsString+#39+
                                     ' And Fecha_Desde ='+#39+FormatDateTime('yyyymmdd', qrPedido_HeadFecha_Desde.AsDateTime)+#39+
                                     ' And Fecha_Hasta ='+#39+FormatDateTime('yyyymmdd', qrPedido_HeadFecha_Hasta.AsDateTime)+#39+
                                     ' Update LaboratorioDb.dbo.PtEntradaPaciente '+
                                     ' Set Estatus_Sap='+#39+'A'+#39+' Where ClienteID='+#39+qrPedido_HeadClienteID.AsString+#39+
                                     ' And Fecha between '+#39+FormatDateTime('yyyymmdd', qrPedido_HeadFecha_Desde.AsDateTime)+#39+
                                     ' And '+#39+FormatDateTime('yyyymmdd', qrPedido_HeadFecha_Hasta.AsDateTime)+#39;
                qrPed.ExecSQL;
                qrPedL.Close;
                qrPedL.SQL.Text :=   ' Update PtEntradaPaciente '+
                                     ' Set Estatus_Sap='+#39+'A'+#39+' Where ClienteID='+#39+qrPedido_HeadClienteID.AsString+#39+
                                     ' And Fecha between '+#39+FormatDateTime('yyyymmdd', qrPedido_HeadFecha_Desde.AsDateTime)+#39+
                                     ' And '+#39+FormatDateTime('yyyymmdd', qrPedido_HeadFecha_Hasta.AsDateTime)+#39;
                qrPedL.ExecSQL;
             end;
             qrPedido_Head.Next;
        end;
        qrPedido_Head.First;
        spMensaje.Visible := False;
        ShowMessage('Pedido del Cliente(s) Eliminado.  Verifique.');
        Buscar_Pedidos(Get_Estado(Estado));
        Buscar_Registro_Primario;
     end;
//     FreeAndNil(qPedidos);
  end;
end;

procedure TfrmTransferenciaPOSV_SAP.btAceptarClick(Sender: TObject);
Var Estado : String;
begin
  inherited;
   if (cbExtCliente.EditText = EmptyStr) Or (txtClienteID.Text = EmptyStr) Or
       (txtNombreCliente.Text=EmptyStr) Or (txtMonedaID.Text = EmptyStr) then
   begin
       ShowMessage('Debe seleccionar el Cliente.  Verifique.');
       cbExtCliente.SetFocus;
       Exit;
   end;
   If FechaIni.Text = EmptyStr then
   begin
       ShowMessage('Debe seleccionar Fecha Inicio Factura Cliente.  Verifique.');
       FechaIni.SetFocus;
       Exit;
   end;
   If FechaFin.Text = EmptyStr then
   begin
       ShowMessage('Debe seleccionar Fecha Fin Factura Cliente.  Verifique.');
       FechaFin.SetFocus;
       Exit;
   end;
   If FechaFin.Text = EmptyStr then
   begin
       ShowMessage('Debe seleccionar Fecha Fin Factura Cliente.  Verifique.');
       FechaFin.SetFocus;
       Exit;
   end;
   if qrPedido_Head.IsEmpty then
   begin
      qrPedido_Head.Active := true;
   end;
   qrPedido_Head.Append;
   qrPedido_HeadID.Value                    := CreaID;
   qrPedido_HeadGrupoID.Value               := Busca_GrupoID(txtClienteID.Text);
   qrPedido_HeadClienteID.Value             := txtClienteID.Text;
   qrPedido_HeadNombreCliente.Value         := txtNombreCliente.EditingText;
   qrPedido_HeadTipo_Pedido.Value           := 'P';
   qrPedido_HeadEstado.Value                := 'T';
   qrPedido_HeadFecha_Desde.Value           := FechaIni.EditValue;
   qrPedido_HeadFecha_Hasta.Value           := FechaIni.EditValue;
   qrPedido_HeadSeleccionar.Value           := False;
   qrPedido_HeadMonedaID.Value              := txtMonedaID.EditValue;
   qrPedido_Head.Post;

  // Inserta detalle prueba default
   Buscar_Pedidos('T');
   Buscar_Registro_Primario;
   btCancelarClick(Sender);
   InsertarPrueba1Click(Sender);
end;

procedure TfrmTransferenciaPOSV_SAP.btAceptaSerClick(Sender: TObject);
Var Estado : String;
begin
  inherited;
   Estado := Get_Estado('T');
   if qrPedidoDetalle.IsEmpty then
   begin
      qrPedidoDetalle.Active := true;
   end;
   qrPedidoDetalle.Append;
   qrPedidoDetalleRecID.Value               := Busca_RecID(qrPedido_HeadClienteID.AsString,'T');
   qrPedidoDetallePruebaID.Value            := txtServicioID.Text;
   qrPedidoDetalleSucursalID.Value          := DM.CurSucursal;
   qrPedidoDetalleCantidad.Value            := spCantidad.EditValue;
   qrPedidoDetalleUnidad.Value              := 'UND';
   qrPedidoDetallePrecio.Value              := cxMonto.EditValue;
   qrPedidoDetalleDescuento.Value           := 0.00;
   qrPedidoDetalleDescuento_Porcentaje.Value:= 0.00;
   qrPedidoDetallePrecio_Unitario.Value     := cxMonto.EditValue;
   qrPedidoDetalleMuestrano.Value           := EmptyStr;
   qrPedidoDetalleDescripcion.Value         := txtNombreServicio.Text;
   qrPedidoDetalle.Post;
   Buscar_Pedidos('T');
   Buscar_Registro_Primario;
   btCancelSerClick(Sender);
end;

procedure TfrmTransferenciaPOSV_SAP.btCancelarClick(Sender: TObject);
begin
  inherited;
  cbExtCliente.ItemIndex:= -1;
  txtClienteID.Text     := EmptyStr;
  txtNombreCliente.Text := EmptyStr;
  txtMonedaID.Text      := EmptyStr;
  FechaIni.EditText     := EmptyStr;
  FechaFin.EditText     := EmptyStr;
  spCliente.Visible     := False;
end;

procedure TfrmTransferenciaPOSV_SAP.btCancelSerClick(Sender: TObject);
begin
  inherited;
  cbExtServicio.ItemIndex := -1;
  txtServicioID.Text      := EmptyStr;
  txtNombreServicio.Text  := EmptyStr;
  cboMonedaID.ItemIndex   := 0;
  cxMonto.EditText        := EmptyStr;
  spServicio.Visible      := False;
end;

procedure TfrmTransferenciaPOSV_SAP.TransferirPedidoSAP1Click(Sender: TObject);
 Var  qPedidos                  : TAdoQuery;
      ClienteID,GrupoID,Estado  : String;
      Cont                      : Integer;
begin
  inherited;
    Cont:=0;
    if qrPedido_Head.RecordCount > 0 then
    begin
{       Fecha_Proceso := dtFechaDesde.Date;
       qPagosH       := DM.NewQuery;
       Fecha_Proceso := dtFechaDesde.Date;
       Fecha_Procesoc:= dm.DateToInt(dtFechaDesde.Date);
       Fecha_FinC    := dm.DateToInt(EndOfTheMonth(dtFechaDesde.Date));
       Mensaje       := EmptyStr;
       For Fecha_Procesoc := Fecha_Procesoc to Fecha_FinC do
       begin
            qPagosH.Close;
            qPagosH.SQL.Text := ' Select Fecha from POSInterfaz.dbo.Pagos_Head '+
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
            Showmessage('Favor Verificar D�as No Posteados '+Mensaje+Char(13)+'Verifique D�as No Posteados con Depto. Tesorer�a.');
            Exit;
       end;
}
       If (EtMensajeDlg('Est� seguro de transferir a SAP este Estos Clientes Seleccionados ?',etConfirmacion,[etSi,etNo],1,dm.Imagenes.Items[5].Bitmap,true) = mryes) then
       begin
            ClienteID :=qrPedido_HeadClienteID.Value;
            GrupoID   :=qrPedido_HeadGrupoID.Value;
            Estado    :=qrPedido_HeadEstado.Value;
            spMensaje.Visible :=True;
            qrPedido_Head.First;
            While Not qrPedido_Head.Eof do
            begin
               If  Verifica_TasaSap(FormatDateTime('yyyymmdd', qrPedido_HeadFecha_Hasta.AsDateTime))=EmptyStr Then
               begin
                    spMensaje.Visible := False;
                     Raise exception.CreateFmt( ' Verifique Tasa del Dia en Sap '+FormatDateTime('dd/mm/yyyy',qrPedido_HeadFecha_Hasta.AsDateTime)+' no est� registrada.  Verifique.',[]);
               end;

               if qrPedido_HeadSeleccionar.AsBoolean = True then
               begin
                Cont := Cont+1;
                If Not ActPreFacturaSap Then
                 begin
                    if qrPedido_HeadClienteID.AsString <> EmptyStr then
                    begin
                      Raise exception.CreateFmt( ' NO Se Pudo Generar la carga del Cliente '+qrPedido_HeadClienteID.AsString+'.'+ #13 +
                                              ' Se Ha Generado Un Error en ActPreFacturaSap. '+ #13 +
                                              ' Por Favor, Intentelo Nuevamente.',[]);
                    end
                 end;
               end;
               qrPedido_Head.Next;
            end;
            spMensaje.Visible := False;
            if Cont = 0  then
            begin
                ShowMessage('Debe seleccionar Cliente(s) a Transferir.  Verifique.');
                Exit;
            end;
            If qrPedido_HeadClienteID.AsString <> EmptyStr then
                ShowMessage('Proceso Cliente(s) Transferido(s).  Verifique.');
            Buscar_Pedidos(Get_Estado(Estado));
            Buscar_Registro_Primario;
           end;
        FreeAndNil(qPedidos);
      end;
end;

procedure TfrmTransferenciaPOSV_SAP.Buscar_Registro_Primario;
begin
  With qrPedido_Head,sql do
  begin
    if IsEmpty then
    begin
        dsPedidoHead.Enabled := False;
        dsArticulos.Enabled := False;
        exit;
    end
    else
    begin
        dsPedidoHead.Enabled := True;
        dsArticulos.Enabled := True;
    end;
  end;
{  With qrPedido,sql do
  begin
      First;
      DsDatos.Enabled := False;
      if not JvMemoryData1.Active then
         JvMemoryData1.Active := true;
      JvMemoryData1.EmptyTable;
      while not eof do
      begin
            JvMemoryData1.Append;
            JvMemoryData1Seleccionar.AsBoolean    := False;
            JvMemoryData1Pedido_Venta.AsString    := fieldbyname('U_Numero').AsString;
            JvMemoryData1Cuenta_Cliente.AsString  := fieldbyname('ClienteID').AsString;
            JvMemoryData1Nombre.AsString          := fieldbyname('NombreCliente').AsString;
            JvMemoryData1Tipo_Pedido.AsString     := 'Pedido de Venta';
            JvMemoryData1Estado.AsString          := fieldbyname('Estado').AsString;
            JvMemoryData1MonedaID.AsString        := FieldByName('MonedaID').AsString;
            JvMemoryData1Fecha_Inicio.AsDateTime  := FieldByName('Fecha_Desde').AsDateTime;
            JvMemoryData1Fecha_Fin.AsDateTime     := FieldByName('Fecha_Hasta').AsDateTime;
            JvMemoryData1ClienteID_Gen.AsString   := FieldByName('ClienteID_Gen').AsString;
            JvMemoryData1GrupoID_Gen.AsString     := FieldByName('GrupoID_Gen').AsString;
            Next;
      end;
  End;
  }
  qrPedido_Head.First;
  dsPedidoHead.Enabled := True;
  If qrPedido_Head.recordset.recordcount > 0 then
  begin
      qrPedido_Head.First;
      If (qrPedido_HeadEstado.AsString = 'Abierto') Or
         (qrPedido_HeadEstado.AsString = 'T') Then
      begin
        BorrarPedido1.Enabled :=True;
        TransferirPedidoSAP1.Enabled := True;
        cxGrid2DBTableView2.OptionsData.Editing := True;
      end
      else
      begin
        BorrarPedido1.Enabled :=False;
        TransferirPedidoSAP1.Enabled := False;
        cxGrid2DBTableView2.OptionsData.Editing := False;
      end;
{     DsDatos.Enabled := True;
      With qrPedido,sql do
      begin
          Close;
          SQL.Text := ' Select RecId,ClienteID,Muestrano,Case Estado When '+#39+'T'+#39+' Then '+#39+'Abierto'+#39+
                      '                                                     When '+#39+'P'+#39+' Then '+#39+'Pre-Factura'+#39+
                      '                                                     When '+#39+'F'+#39+' Then '+#39+'Facturado'+#39+
                      '                                                     When '+#39+'C'+#39+' Then '+#39+'Cancelado'+#39+' end As Estado,MonedaID,U_Numero,NombreCliente,Fecha_Desde,Fecha_Hasta,ClienteID_Gen,GrupoID_Gen,Comentario From PedidoVenta '+
                      ' Where ClienteID='+#39+qrPedidoClienteID.AsString+#39+' And  Fecha_Desde ='+#39+FormatDateTime('yyyymmdd', qrPedidoFecha_Desde.AsDateTime)+#39+' And Fecha_Hasta ='+#39+FormatDateTime('yyyymmdd', qrPedidoFecha_Hasta.AsDateTime)+#39;

          Open;
          if IsEmpty then
          begin
            exit;
          end;
          First;
      end;
}
      If qrPedido_Head.Recordset.RecordCount > 0 then
      begin
        With qrPedidoDetalle do
        begin
            Close;
            SQL.Text := ' Select * From PedidoVentaDetalle '+
                        ' Where RecID in ( Select RecID from PedidoVenta Where ClienteID='+#39+qrPedido_HeadClienteID.AsString+#39+' And  Fecha_Desde ='+#39+FormatDateTime('yyyymmdd', qrPedido_HeadFecha_Desde.AsDateTime)+#39+' And Fecha_Hasta ='+#39+FormatDateTime('yyyymmdd', qrPedido_HeadFecha_Hasta.AsDateTime)+#39+')';
            Open;
            If Recordset.RecordCount > 0 then First;
          End;
      End;
    end;
end;
procedure TfrmTransferenciaPOSV_SAP.CancelarAgregarUsuario1Click(
  Sender: TObject);
begin
  inherited;
{ if JvMemoryData2.IsEmpty then
   begin
      JvMemoryData2.Active := true;
      JvMemoryData2.EmptyTable;
   end;
   JvMemoryData2.Cancel;
   cxGrid2DBTableView2.OptionsView.NewItemRow := False;
 }
 if qrPedidoDetalle.IsEmpty then
   begin
      qrPedidoDetalle.Active := true;
      qrPedidoDetalle.Delete;
   end;
   qrPedidoDetalle.Cancel;
   cxGrid2DBTableView2.OptionsView.NewItemRow := False;
end;

procedure TfrmTransferenciaPOSV_SAP.CargarPedidodeVenta1Click(Sender: TObject);
begin
  inherited;
      frmMain.LanzaVentana(1405);
      Buscar_Pedidos('T');
      Buscar_Registro_Primario;
end;

procedure TfrmTransferenciaPOSV_SAP.cbExtClientePropertiesChange(
  Sender: TObject);
begin
  inherited;
  If cbExtCliente.Text <> EmptyStr then
  begin
      qfindCliente          := DM.NewQuery;
      qfindCliente.Close;
      qfindCliente          := DM.Find_Ldr('Select * from PTCliente (nolock) Where ClienteID = :pac', cbExtCliente.EditValue);
      txtClienteID.Text     := cbExtCliente.EditValue;
      txtNombreCliente.Text := cbExtCliente.Text;
      txtMonedaID.Text      := qfindCliente.FieldByName('MonedaID').AsString;
      FreeAndNil(qfindCliente);
  end;
end;

procedure TfrmTransferenciaPOSV_SAP.cbExtServicioPropertiesChange(
  Sender: TObject);
begin
  inherited;
  If cbExtServicio.Text <> EmptyStr then
  begin
      qfindServicio           := DM.NewQuery;
      qfindServicio.Close;
      qfindServicio           := DM.Find_Ldr('Select PruebaID, Descripcion from PtPrueba (nolock) Where Estatus = '+#39+'1'+#39+' And Not PRUEBAID Is Null And PruebaID = :ser', cbExtServicio.EditValue);
      txtServicioID.Text      := cbExtServicio.EditValue;
      txtNombreServicio.Text  := cbExtServicio.Text;
      cboMonedaID.ItemIndex   := 0;
      FreeAndNil(qfindServicio);
  end;

end;

procedure TfrmTransferenciaPOSV_SAP.cboEstadoPropertiesChange(Sender: TObject);
begin
  inherited;
    if cboEstado.Text = '' then
    begin
          Seleccion    := ' Select ID,Seleccionar,U_Numero,GrupoID,ClienteID,NombreCliente,'+
                         ' Case Estado When '+#39+'T'+#39+' Then '+#39+'Abierto'+#39+
                         '             When '+#39+'P'+#39+' Then '+#39+'Pre-Factura'+#39+
                         '             When '+#39+'F'+#39+' Then '+#39+'Facturado'+#39+
                         '             When '+#39+'C'+#39+' Then '+#39+'Cancelado'+#39+' end As Estado,'+
                         ' Case Tipo_Pedido When '+#39+'P'+#39+' Then '+#39+'Pedido de Ventas'+#39+
                         '             When '+#39+'D'+#39+' Then '+#39+'Diario'+#39+
                         '             When '+#39+'S'+#39+' Then '+#39+'Suscripcion'+#39+
                         '             When '+#39+'A'+#39+' Then '+#39+'Articulo Requerido'+#39+' end As Tipo_Pedido,'+
                         '      Fecha_Desde,Fecha_Hasta,Comentario,MonedaID '+
                         ' From PedidoVenta_Head ';
    end
    else if cboEstado.Text = 'Abierto' then
    begin
          Seleccion    := ' Select ID,Seleccionar,U_Numero,GrupoID,ClienteID,NombreCliente,'+
                         ' Case Estado When '+#39+'T'+#39+' Then '+#39+'Abierto'+#39+
                         '             When '+#39+'P'+#39+' Then '+#39+'Pre-Factura'+#39+
                         '             When '+#39+'F'+#39+' Then '+#39+'Facturado'+#39+
                         '             When '+#39+'C'+#39+' Then '+#39+'Cancelado'+#39+' end As Estado,'+
                         ' Case Tipo_Pedido When '+#39+'P'+#39+' Then '+#39+'Pedido de Ventas'+#39+
                         '             When '+#39+'D'+#39+' Then '+#39+'Diario'+#39+
                         '             When '+#39+'S'+#39+' Then '+#39+'Suscripcion'+#39+
                         '             When '+#39+'A'+#39+' Then '+#39+'Articulo Requerido'+#39+' end As Tipo_Pedido,'+
                         '      Fecha_Desde,Fecha_Hasta,Comentario,MonedaID '+
                         ' From PedidoVenta_Head '+
                       ' Where Estado = '+ #39 + 'T' + #39 ;
          cxGrid2DBTableView2.OptionsData.Editing := True;
    end
    else if cboEstado.Text = 'Pre-Factura' then
    begin
          Seleccion    := ' Select ID,Seleccionar,U_Numero,GrupoID,ClienteID,NombreCliente,'+
                         ' Case Estado When '+#39+'T'+#39+' Then '+#39+'Abierto'+#39+
                         '             When '+#39+'P'+#39+' Then '+#39+'Pre-Factura'+#39+
                         '             When '+#39+'F'+#39+' Then '+#39+'Facturado'+#39+
                         '             When '+#39+'C'+#39+' Then '+#39+'Cancelado'+#39+' end As Estado,'+
                         ' Case Tipo_Pedido When '+#39+'P'+#39+' Then '+#39+'Pedido de Ventas'+#39+
                         '             When '+#39+'D'+#39+' Then '+#39+'Diario'+#39+
                         '             When '+#39+'S'+#39+' Then '+#39+'Suscripcion'+#39+
                         '             When '+#39+'A'+#39+' Then '+#39+'Articulo Requerido'+#39+' end As Tipo_Pedido,'+
                         '      Fecha_Desde,Fecha_Hasta,Comentario,MonedaID '+
                         ' From PedidoVenta_Head '+
                       ' Where Estado = '+ #39 + 'P' + #39 ;
      cxGrid2DBTableView2.OptionsData.Editing := False;
    end
    else if cboEstado.Text = 'Facturado' then
    begin
          Seleccion    := ' Select ID,Seleccionar,U_Numero,GrupoID,ClienteID,NombreCliente,'+
                         ' Case Estado When '+#39+'T'+#39+' Then '+#39+'Abierto'+#39+
                         '             When '+#39+'P'+#39+' Then '+#39+'Pre-Factura'+#39+
                         '             When '+#39+'F'+#39+' Then '+#39+'Facturado'+#39+
                         '             When '+#39+'C'+#39+' Then '+#39+'Cancelado'+#39+' end As Estado,'+
                         ' Case Tipo_Pedido When '+#39+'P'+#39+' Then '+#39+'Pedido de Ventas'+#39+
                         '             When '+#39+'D'+#39+' Then '+#39+'Diario'+#39+
                         '             When '+#39+'S'+#39+' Then '+#39+'Suscripcion'+#39+
                         '             When '+#39+'A'+#39+' Then '+#39+'Articulo Requerido'+#39+' end As Tipo_Pedido,'+
                         '      Fecha_Desde,Fecha_Hasta,Comentario,MonedaID '+
                         ' From PedidoVenta_Head '+
                       ' Where Estado = '+ #39 + 'F' + #39;
      cxGrid2DBTableView2.OptionsData.Editing := True;
    end
    else if cboEstado.Text = 'Cancelado' then
    begin
          Seleccion    := ' Select ID,Seleccionar,U_Numero,GrupoID,ClienteID,NombreCliente,'+
                         ' Case Estado When '+#39+'T'+#39+' Then '+#39+'Abierto'+#39+
                         '             When '+#39+'P'+#39+' Then '+#39+'Pre-Factura'+#39+
                         '             When '+#39+'F'+#39+' Then '+#39+'Facturado'+#39+
                         '             When '+#39+'C'+#39+' Then '+#39+'Cancelado'+#39+' end As Estado,'+
                         ' Case Tipo_Pedido When '+#39+'P'+#39+' Then '+#39+'Pedido de Ventas'+#39+
                         '             When '+#39+'D'+#39+' Then '+#39+'Diario'+#39+
                         '             When '+#39+'S'+#39+' Then '+#39+'Suscripcion'+#39+
                         '             When '+#39+'A'+#39+' Then '+#39+'Articulo Requerido'+#39+' end As Tipo_Pedido,'+
                         '      Fecha_Desde,Fecha_Hasta,Comentario,MonedaID '+
                         ' From PedidoVenta_Head '+
                         ' Where Estado = '+ #39 + 'C' + #39;
      cxGrid2DBTableView2.OptionsData.Editing := True;
    end;
    With qrPedido_Head,sql do
    begin
        Close;
        Sql.Text := Seleccion;
        Open;
    end;
    Buscar_Registro_Primario;
end;

procedure TfrmTransferenciaPOSV_SAP.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
  Var Est : String;
begin
  inherited;
    If Length(qrPedido_HeadClienteID.Value) > 0 then
    begin
      With qrPedidoDetalle,sql do
      begin
          Close;
          SQL.Text := ' Select * From PedidoVentaDetalle '+
                      ' Where RecID in ( Select RecID From PedidoVenta Where '+
                      ' ClienteID='+#39+qrPedido_HeadClienteID.AsString+#39+' And  Fecha_Desde ='+#39+FormatDateTime('yyyymmdd', qrPedido_HeadFecha_Desde.AsDateTime)+#39+' And Fecha_Hasta ='+#39+FormatDateTime('yyyymmdd', qrPedido_HeadFecha_Hasta.AsDateTime)+#39+')';
          Open;
            If Recordset.RecordCount > 0 then First;
          End;
          If (qrPedido_HeadEstado.AsString = 'Abierto') Or
             (qrPedido_HeadEstado.AsString = 'T') then
          begin
            BorrarPedido1.Enabled :=True;
            cxGrid2DBTableView2.OptionsData.Editing := True;
            TransferirPedidoSAP1.Enabled := True;
          end
          else
          begin
            BorrarPedido1.Enabled :=False;
            cxGrid2DBTableView2.OptionsData.Editing := False;
            TransferirPedidoSAP1.Enabled := False;
          end;
    end;
end;
procedure TfrmTransferenciaPOSV_SAP.cxGrid1DBTableView1KeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
    If Length(qrPedido_HeadClienteID.Value) > 0 then
    begin
      With qrPedidoDetalle,sql do
      begin
          Close;
          SQL.Text := ' Select * From PedidoVentaDetalle '+
                      ' Where RecID in ( Select RecID From PedidoVenta Where '+
                      ' ClienteID='+#39+qrPedido_HeadClienteID.AsString+#39+' And  Fecha_Desde ='+#39+FormatDateTime('yyyymmdd', qrPedido_HeadFecha_Desde.AsDateTime)+#39+' And Fecha_Hasta ='+#39+FormatDateTime('yyyymmdd', qrPedido_HeadFecha_Hasta.AsDateTime)+#39+')';
          Open;
            If Recordset.RecordCount > 0 then First;
          End;
          If (qrPedido_HeadEstado.AsString = 'Abierto') Or
             (qrPedido_HeadEstado.AsString = 'T') then
          begin
            BorrarPedido1.Enabled :=True;
            cxGrid2DBTableView2.OptionsData.Editing := True;
            TransferirPedidoSAP1.Enabled := True;
          end
          else
          begin
            BorrarPedido1.Enabled :=False;
            cxGrid2DBTableView2.OptionsData.Editing := False;
            TransferirPedidoSAP1.Enabled := False;
          end;
    end;

end;

procedure TfrmTransferenciaPOSV_SAP.DesmarcarTodosRegistros1Click(
  Sender: TObject);
begin
  inherited;
  if qrPedido_Head.RecordCount > 0 then
  begin
        spMensaje.Visible :=True;
        qrPedido_Head.First;
        While Not qrPedido_Head.Eof do
        begin
            qrPedido_Head.Edit;
            qrPedido_HeadSeleccionar.AsBoolean:= False;
            qrPedido_Head.Post;
           qrPedido_Head.Next;
        end;
        qrPedido_Head.First;
        qrPedido_Head.Refresh;
        spMensaje.Visible :=False;
  end;
end;

procedure TfrmTransferenciaPOSV_SAP.AadirPedido1Click(Sender: TObject);
begin
  inherited;
  spCliente.Visible := True;
end;

function TfrmTransferenciaPOSV_SAP.ActPreFacturaSap : Boolean;
begin
Result := False;
Try
  with  dm.ActPreFacturaSap, Parameters do
  begin
    ParamByName('@GrupoID').Value         := ' ';
    ParamByName('@ClienteID').Value       := qrPedido_HeadClienteID.AsString;
    ParamByName('@FechaInicial').Value    := FormatDateTime('yyyymmdd', qrPedido_HeadFecha_Desde.AsDateTime);
    ParamByName('@FechaFinal').Value      := FormatDateTime('yyyymmdd', qrPedido_HeadFecha_Hasta.AsDateTime);
    ExecProc;
    Result:= True;
  end;
  Except
    On E : Exception do
      ShowMessage(E.Message);
  End
end;
function TfrmTransferenciaPOSV_SAP.Busca_RecID(ClienteID : String; Estado: String) : Int64;
Var qconsulta : TADOQuery;
begin
   qconsulta := DM.NewQuery;
   With qconsulta, sql do
   begin
      Close;
      Text := ' Select Top 1 RecID from PosInterfaz.dbo.PedidoVenta '+#13+
              ' Where Estado = '+#39+Estado+#39+' And ClienteID='#39+ClienteID+#39;
      Open;
   end;
  if (qconsulta.RecordCount > 0) then
    result := qconsulta.FieldByName('RecID').Value
  else
    result := 0;
  FreeAndNil(qconsulta);
end;
function TfrmTransferenciaPOSV_SAP.Get_Estado(Estado : String) : String;
Var Est : String;
begin
   result := EmptyStr;
   Est:=Estado;
   if Estado='Abierto' then Est:='T'
   else If Estado='Pre-Factura' then Est:='P'
   else If Estado='Facturado' then Est:='F'
   else If Estado='Cancelado' then Est:='C';
   if Length(Est)=1 then
      Result:=Est
   else
      Result:=Estado;
end;
function TfrmTransferenciaPOSV_SAP.Busca_GrupoID(ClienteID : String) : String;
Var qconsulta : TADOQuery;
begin
   qconsulta := DM.NewQuery;
   With qconsulta, sql do
   begin
      Close;
      Text := ' Select Top 1 GrupoCliente from PtCliente '+#13+
              ' Where ClienteID='#39+ClienteID+#39;
      Open;
   end;
  if (qconsulta.RecordCount > 0) then
    result := qconsulta.FieldByName('GrupoCliente').Value
  else
    result := EmptyStr;
  FreeAndNil(qconsulta);
end;
function TfrmTransferenciaPOSV_SAP.CreaID : String;
Var qconsulta : TADOQuery;
begin
   qconsulta := DM.NewQuery;
   With qconsulta, sql do
   begin
      Close;
      Text := ' SELECT NEWID() AS ID ';
      Open;
   end;
  if (qconsulta.RecordCount > 0) then
    result := qconsulta.FieldByName('ID').Value
  else
    result := EmptyStr;
  FreeAndNil(qconsulta);
end;
function TfrmTransferenciaPOSV_SAP.GetSecuenciaId : Int64;
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
function TfrmTransferenciaPOSV_SAP.Verifica_TasaSap(Fecha : String): String;
Var qconsulta : TADOQuery;
begin
   qconsulta := DM.NewQuery;
   With qconsulta, sql do
   begin
      Close;
      Text := ' Select Top 1 Rate from '+ DM.qrParametroServidor_Sap.AsString+'.dbo.ORTT Where RateDate='+#39+Fecha+#39;
      Open;
   end;
  if (qconsulta.RecordCount > 0) then
    result := Fecha
  else
    result := EmptyStr;
  FreeAndNil(qconsulta);
end;

END.

