unit TransferenciaCON_ARS;

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
  LMDBaseControl, LMDBaseGraphicControl, LMDBaseLabel, LMDCustomLabel, LMDLabel,
  ppDB, ppDBPipe, ppCtrls, ppBands, ppVar, ppPrnabl, ppClass, ppCache, ppComm,
  ppRelatv, ppProd, ppReport,pptypes;

type
  TfrmTransferenciaCON_ARS = class(TfrmCustomModule)
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
    cxGrid1DBTableView1Cuenta_Cliente: TcxGridDBColumn;
    cxGrid1DBTableView1Nombre: TcxGridDBColumn;
    cxGrid1DBTableView1Estado: TcxGridDBColumn;
    cxGrid1DBTableView1NombreArchivo: TcxGridDBColumn;
    JvMemoryData2: TJvMemoryData;
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
    qrConciliacion: TADOQuery;
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
    JvMemoryData1GrupoID_Gen: TStringField;
    JvMemoryData1ClienteID_Gen: TStringField;
    JvMemoryData1Fecha_Inicio: TDateTimeField;
    JvMemoryData1Fecha_Fin: TDateTimeField;
    MenuPedido: TPopupMenu;
    MenuArticulo: TPopupMenu;
    AadirPedido1: TMenuItem;
    BorrarPedido2: TMenuItem;
    EliminarReclamacion1: TMenuItem;
    MarcarTodosRegistros1: TMenuItem;
    DesmarcarTodosRegistros1: TMenuItem;
    MenuProforma: TPopupMenu;
    Factura: TMenuItem;
    MenuConsultas: TPopupMenu;
    DetalleFacturacion: TMenuItem;
    ImprimirDetalleTodos1: TMenuItem;
    JvMemoryData1Comentario: TStringField;
    cxGrid1DBTableView1Comentario: TcxGridDBColumn;
    JvMemoryData2RecID: TLargeintField;
    JvMemoryData1RecID: TLargeintField;
    qrConciliacion_Head: TADOQuery;
    dsConciliacionHead: TDataSource;
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
    cxGrid1DBTableView1Fecha: TcxGridDBColumn;
    qrConc: TADOQuery;
    qrConcL: TADOQuery;
    qrConciliacion_HeadID: TGuidField;
    qrConciliacion_HeadNombreCliente: TStringField;
    qrConciliacion_HeadFecha: TDateTimeField;
    qrConciliacion_HeadComentario: TStringField;
    qrConciliacion_HeadSeleccionar: TBooleanField;
    qrConciliacion_HeadEstado: TStringField;
    qrConciliacion_HeadNombreArchivo: TStringField;
    qrConciliacionFecha: TDateTimeField;
    qrConciliacionMuestrano: TStringField;
    qrConciliacionNombrePaciente: TStringField;
    qrConciliacionPolizaID: TStringField;
    qrConciliacionNum_Aprobacion: TStringField;
    qrConciliacionMonto_Reclamdo: TBCDField;
    qrConciliacionMonto_Aprobado: TBCDField;
    qrConciliacionDiferencia: TBCDField;
    qrConciliacionID: TGuidField;
    qrConciliacionEstatus: TStringField;
    qrConciliacionRecID: TLargeintField;
    dsConciliacion: TDataSource;
    cxGrid2DBTableView2Fecha: TcxGridDBColumn;
    cxGrid2DBTableView2Muestrano: TcxGridDBColumn;
    cxGrid2DBTableView2NombrePaciente: TcxGridDBColumn;
    cxGrid2DBTableView2PolizaID: TcxGridDBColumn;
    cxGrid2DBTableView2Num_Aprobacion: TcxGridDBColumn;
    cxGrid2DBTableView2Monto_Reclamdo: TcxGridDBColumn;
    cxGrid2DBTableView2Monto_Aprobado: TcxGridDBColumn;
    cxGrid2DBTableView2Diferencia: TcxGridDBColumn;
    cxGrid2DBTableView2ID: TcxGridDBColumn;
    cxGrid2DBTableView2Estatus: TcxGridDBColumn;
    cxGrid2DBTableView2RecID: TcxGridDBColumn;
    qrConciliacion_HeadGrupoArs: TStringField;
    ppRptConciliacionArs: TppReport;
    ppHeaderBand16: TppHeaderBand;
    ppDBText215: TppDBText;
    ppLabel237: TppLabel;
    ppLabel238: TppLabel;
    ppSystemVariable23: TppSystemVariable;
    ppSystemVariable24: TppSystemVariable;
    ppLabel239: TppLabel;
    ppLabel241: TppLabel;
    ppSystemVariable25: TppSystemVariable;
    ppShape1: TppShape;
    ppLabel246: TppLabel;
    ppLabel250: TppLabel;
    ppLabel5: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppDetailBand21: TppDetailBand;
    ppDBText218: TppDBText;
    ppDBText223: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel257: TppLabel;
    ppDBCalc37: TppDBCalc;
    ppRepConciliacionARS: TppDBPipeline;
    ImprimirConciliacion1: TMenuItem;
    ppLabel6: TppLabel;
    ppDBText6: TppDBText;
    ppDBText5: TppDBText;
    ppLabel7: TppLabel;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    qrConciliacionNombreCliente: TStringField;
    qrConciliacionDesc_Estado: TStringField;
    ppDBText9: TppDBText;
    qrConciliacionComentario: TStringField;
    qrConciliacionClienteID: TStringField;
    qrConciliacionNum_Fact: TIntegerField;
    cxGrid2DBTableView2ClienteID: TcxGridDBColumn;
    cxGrid2DBTableView2Num_Factura: TcxGridDBColumn;
    ppLabel1: TppLabel;
    ppLabel8: TppLabel;
    ppDBText1: TppDBText;
    ppDBText10: TppDBText;
    procedure ImprimirConciliacion1Click(Sender: TObject);
    procedure qrConciliacionCalcFields(DataSet: TDataSet);
    procedure cxGrid1DBTableView1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbExtServicioPropertiesChange(Sender: TObject);
    procedure btCancelSerClick(Sender: TObject);
    procedure BorrarPedido1Click(Sender: TObject);
    procedure CargarPedidodeVenta1Click(Sender: TObject);
    procedure btAceptarClick(Sender: TObject);
    procedure cbExtClientePropertiesChange(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure AadirPedido1Click(Sender: TObject);
    procedure CancelarAgregarUsuario1Click(Sender: TObject);
    procedure InsertarPrueba1Click(Sender: TObject);
    procedure DesmarcarTodosRegistros1Click(Sender: TObject);
    procedure MarcarTodosRegistros1Click(Sender: TObject);
    procedure EliminarReclamacion1Click(Sender: TObject);
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
  frmTransferenciaCON_ARS       : TfrmTransferenciaCON_ARS;

implementation

uses ActionsDM, cxExportGrid4Link, DataModule, Main;

{$R *.dfm}


procedure TfrmTransferenciaCON_ARS.FormCreate(Sender: TObject);
begin
  inherited;
  frmMain.Tran_fer := True;
  Buscar_Pedidos('A');
  Buscar_Registro_Primario;
end;


procedure TfrmTransferenciaCON_ARS.FormDestroy(Sender: TObject);
begin
  inherited;
  frmMain.Tran_fer := False;
end;


procedure TfrmTransferenciaCON_ARS.FormShow(Sender: TObject);
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
  DM.qrPruebas.Close;
  DM.qrParametro.close;
  DM.qrParametro.open;
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

procedure TfrmTransferenciaCON_ARS.InsertarPrueba1Click(Sender: TObject);
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

procedure TfrmTransferenciaCON_ARS.MarcarTodosRegistros1Click(Sender: TObject);
begin
  inherited;
  if qrConciliacion_Head.Recordset.RecordCount > 0 then
  begin
        spMensaje.Visible :=True;
        qrConciliacion_Head.First;
        While Not qrConciliacion_Head.Eof do
        begin
            qrConciliacion_Head.Edit;
            qrConciliacion_HeadSeleccionar.Asboolean := True;
            qrConciliacion_Head.Post;
            qrConciliacion_Head.Next;
        end;
        qrConciliacion_Head.First;
        qrConciliacion_Head.Refresh;
        spMensaje.Visible :=False;
  end;
end;

procedure TfrmTransferenciaCON_ARS.qrConciliacionCalcFields(DataSet: TDataSet);
begin
  inherited;
  qrConciliacionDiferencia.Value    := (qrConciliacionMonto_Reclamdo.Value - qrConciliacionMonto_Aprobado.Value);
  qrConciliacionNombreCliente.Value := qrConciliacion_HeadNombreCliente.Value;
  if qrConciliacionEstatus.Value = 'N' then
     qrConciliacionDesc_Estado.Value   := 'No Encontrado'
  else if qrConciliacionEstatus.Value = 'I' then
     qrConciliacionDesc_Estado.Value   := 'Incompleto';
  qrConciliacionComentario.Value := qrConciliacion_HeadComentario.Value;
end;

procedure TfrmTransferenciaCON_ARS.EdClienteDblClick(Sender: TObject);
begin
  inherited;
  frmMain.LanzaVentana(-1405);
end;


procedure TfrmTransferenciaCON_ARS.EdPacienteDblClick(Sender: TObject);
begin
  inherited;
{  frmMain.LanzaVentana(-7999);
  if (cboEstado.Text <> '') then
    Buscar_Ordenes_Abiertas;
}
end;


procedure TfrmTransferenciaCON_ARS.EliminarReclamacion1Click(Sender: TObject);
Var qArticulo : TAdoQuery;
    DPrueba   : String;
begin
  inherited;
  if ( qrConciliacion_Head.RecordCount > 0) And
     ((qrConciliacion_HeadEstado.AsString='Abierta') Or (qrConciliacion_HeadEstado.AsString='A') Or
     (qrConciliacion_HeadEstado.AsString='Posteada') Or (qrConciliacion_HeadEstado.AsString='P')) And
     (qrConciliacionMuestrano.AsString <> EmptyStr) Then
  begin
     If (EtMensajeDlg('Está seguro de eliminar esta Conciliacion Aprobación='+qrConciliacionNum_Aprobacion.AsString,etConfirmacion,[etSi,etNo],1,dm.Imagenes.Items[5].Bitmap,true) = mryes) then
     begin
          spMensaje.Visible :=True;
          qArticulo := DM.NewQuery;
          qArticulo.Close;
          qArticulo.SQL.Text := ' Delete POSInterfaz.dbo.ConciliacionArs '+
                                ' Where ID='+qrConciliacionID.AsString+' And Num_Aprobacion ='+#39+qrConciliacionNum_Aprobacion.AsString+#39;
          qArticulo.ExecSQL;
          Buscar_Pedidos(Get_Estado(qrConciliacion_HeadEstado.AsString));
          Buscar_Registro_Primario;
          spMensaje.Visible := False;
          ShowMessage('Num. Aprobacion '+qrConciliacionNum_Aprobacion.AsString+' Eliminada.  Verifique.');
     end;
     FreeAndNil(qArticulo);
  end;
end;

procedure TfrmTransferenciaCON_ARS.SetColorTo(iColor: TColor);
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
Function TfrmTransferenciaCON_ARS.Buscar_Pedidos(TipoPedido : String):Boolean;
begin
    qrConciliacion_Head.Close;
    qrConciliacion_Head.Sql.Clear;
    qrConciliacion_Head.SQL.Text :=  ' Select ID, GrupoArs, NombreCliente,NombreArchivo,Fecha,Comentario,'+
                                     ' Case Estado When '+#39+'A'+#39+' Then '+#39+'Abierta'+#39+
                                     ' When '+#39+'P'+#39+' Then '+#39+'Posteada'+#39+
                                     '             end As Estado,'+
                                     ' Seleccionar, NombreArchivo'+
                                     ' From ConciliacionArs_Head '+
                                     ' WHERE Estado = '+ #39 +TipoPedido+ #39;
    qrConciliacion_Head.Open;
    If qrConciliacion_Head.RecordCount > 0 then
    begin
       qrConciliacion_Head.First;
       Result := True;
    end
    else
      Result := False;
End;
procedure TfrmTransferenciaCON_ARS.BorrarPedido1Click(Sender: TObject);
begin
  inherited;
  BorrarPedido2Click(Sender);
end;

Procedure TfrmTransferenciaCON_ARS.BorrarPedido2Click(Sender: TObject);
 Var
 //qPedidos           : TAdoQuery;
     GrupoArs,Estado   : String;
begin
  inherited;
  If (qrConciliacion_Head.RecordCount > 0) And
     ((qrConciliacion_HeadEstado.AsString='Abierta') Or (qrConciliacion_HeadEstado.AsString='A') )
  And (qrConciliacion_HeadSeleccionar.AsBoolean = True) Then
  begin
     If (EtMensajeDlg('Está seguro de eliminar reclamacion del Cliente(s) ',etConfirmacion,[etSi,etNo],1,dm.Imagenes.Items[5].Bitmap,true) = mryes) then
     begin
        qrConciliacion_Head.First;
        While Not qrConciliacion_Head.Eof do
        begin
             If qrConciliacion_HeadSeleccionar.AsBoolean = True Then
             Begin
                Estado   :=qrConciliacion_HeadEstado.AsString;
                spMensaje.Visible :=True;
//                qPedidos := DM.NewQuery;
                If qrConciliacion_HeadID.AsString <> EmptyStr then
                begin
                    qrConc.Close;
                    qrConc.SQL.Text :=   ' Delete POSInterfaz.dbo.ConciliacionArs '+
                                         ' Where ID='+#39+qrConciliacion_HeadID.AsString+#39+
                                         ' Delete POSInterfaz.dbo.ConciliacionArs_Head '+
                                         ' Where ID ='+#39+qrConciliacion_HeadID.AsString+#39+
                                         ' Update POSInterfaz.dbo.PedidoVenta '+
                                         ' Set Reconciliado=0 ,Pagado_Ars=0, Estatus_Ars=Null,ID_ARS=Null '+
                                         ' Where ID_ARS='+#39+qrConciliacion_HeadID.AsString+#39;
                    qrConc.ExecSQL;
                end;
             end;
             qrConciliacion_Head.Next;
        end;
        qrConciliacion_Head.First;
        spMensaje.Visible := False;
        ShowMessage(' Conciliacion del Grupo Cliente Eliminada.  Verifique.');
        Buscar_Pedidos(Get_Estado(Estado));
        Buscar_Registro_Primario;
     end;
//     FreeAndNil(qPedidos);
  end;
end;

procedure TfrmTransferenciaCON_ARS.btAceptarClick(Sender: TObject);
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
   if qrConciliacion_Head.IsEmpty then
   begin
      qrConciliacion_Head.Active := true;
   end;
   qrConciliacion_Head.Append;
   qrConciliacion_HeadID.Value                    := CreaID;
   qrConciliacion_HeadGrupoArs.Value              := txtClienteID.Text;
   qrConciliacion_HeadNombreCliente.Value         := txtNombreCliente.EditingText;
   qrConciliacion_HeadEstado.Value                := 'A';
   qrConciliacion_HeadFecha.Value                 := FechaIni.EditValue;
   qrConciliacion_HeadSeleccionar.Value           := False;
   qrConciliacion_Head.Post;

  // Inserta detalle prueba default
   Buscar_Pedidos('A');
   Buscar_Registro_Primario;
   btCancelarClick(Sender);
   InsertarPrueba1Click(Sender);
end;

procedure TfrmTransferenciaCON_ARS.btCancelarClick(Sender: TObject);
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

procedure TfrmTransferenciaCON_ARS.btCancelSerClick(Sender: TObject);
begin
  inherited;
  cbExtServicio.ItemIndex := -1;
  txtServicioID.Text      := EmptyStr;
  txtNombreServicio.Text  := EmptyStr;
  cboMonedaID.ItemIndex   := 0;
  cxMonto.EditText        := EmptyStr;
  spServicio.Visible      := False;
end;

procedure TfrmTransferenciaCON_ARS.TransferirPedidoSAP1Click(Sender: TObject);
 Var  qPedidos                  : TAdoQuery;
      ClienteID,GrupoID,Estado  : String;
      Cont                      : Integer;
begin
  inherited;
    Cont:=0;
    if qrConciliacion_Head.RecordCount > 0 then
    begin
       If (EtMensajeDlg('Está seguro de Postear estas Reclamaciones Seleccionados ?',etConfirmacion,[etSi,etNo],1,dm.Imagenes.Items[5].Bitmap,true) = mryes) then
       begin
            Estado    :=qrConciliacion_HeadEstado.Value;
            spMensaje.Visible :=True;
            qrConciliacion_Head.First;
            While Not qrConciliacion_Head.Eof do
            begin

               if qrConciliacion_HeadSeleccionar.AsBoolean = True then
               begin
                  Cont := Cont+1;
                  qrConc.Close;
                  qrConc.SQL.Text :=   ' Update POSInterfaz.dbo.ConciliacionArs_Head '+
                                       ' Set Estado='#39+'P'+#39+
                                       ' Where ID='+#39+qrConciliacion_HeadID.Value+#39+
                                       ' Update POSInterfaz.dbo.ConciliacionArs '+
                                       ' Set Estatus='#39+'P'+#39+
                                       ' Where ID='+#39+qrConciliacion_HeadID.Value+#39;
                  qrConc.ExecSQL;

               end;
               qrConciliacion_Head.Next;
            end;
            spMensaje.Visible := False;
            if Cont = 0  then
            begin
                ShowMessage('Debe seleccionar Cliente(s) a Transferir.  Verifique.');
                Exit;
            end;
            If qrConciliacion_HeadGrupoArs.AsString <> EmptyStr then
                ShowMessage('Proceso Reclamacion(s) Posteada(s).  Verifique.');
            Buscar_Pedidos(Get_Estado(Estado));
            Buscar_Registro_Primario;
           end;
        FreeAndNil(qPedidos);
      end;
end;

procedure TfrmTransferenciaCON_ARS.Buscar_Registro_Primario;
begin
  With qrConciliacion_Head,sql do
  begin
    if IsEmpty then
    begin
        dsConciliacionHead.Enabled := False;
        dsConciliacion.Enabled := False;
        exit;
    end
    else
    begin
        dsConciliacionHead.Enabled := True;
        dsConciliacion.Enabled := True;
    end;
  end;

  qrConciliacion_Head.First;
  dsConciliacionHead.Enabled := True;
  If qrConciliacion_Head.recordset.recordcount > 0 then
  begin
      qrConciliacion_Head.First;
      If (qrConciliacion_HeadEstado.AsString = 'Abierta') Or
         (qrConciliacion_HeadEstado.AsString = 'A') Then
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

      If qrConciliacion_Head.Recordset.RecordCount > 0 then
      begin
        With qrConciliacion do
        begin
            Close;
            if (qrConciliacion_HeadEstado.AsString = 'A') then
            begin
                SQL.Text := ' Select  c.Fecha,c.Muestrano, c.NombrePaciente, c.PolizaID, Num_Aprobacion, Monto_Reclamdo, Monto_Aprobado, Diferencia, c.ID,'+
                            ' Estatus,c.RecID,c.ClienteID, o.DocNum As Num_Fact From ConciliacionArs c Right join ConciliacionArs_Head h on '+
                            ' c.ID=h.ID left join PedidoVenta p on c.ClienteID=p.ClienteID And '+
                            ' c.Num_Aprobacion=p.AprobacionNo And c.Muestrano=p.Muestrano Left Join '+ DM.qrParametroServidor_Sap.AsString+'.dbo.OINV o On '+
                            ' p.ClienteID COLLATE SQL_Latin1_General_CP850_CI_AS=o.CardCode And '+
                            ' p.U_Numero COLLATE SQL_Latin1_General_CP850_CI_AS=o.U_PedNum '+
                            ' Where c.ID ='+#39+qrConciliacion_HeadID.AsString+#39+
                            ' And c.Estatus='+#39+'I'+#39+
                            ' Union All '+
                            ' Select  c.Fecha,c.Muestrano, c.NombrePaciente, c.PolizaID, '+
                            ' Num_Aprobacion, Monto_Reclamdo, Monto_Aprobado, Diferencia, c.ID, '+
                            ' Estatus,c.RecID,c.ClienteID, '+
                            '	'+#39+#39+' As Num_Fact '+
                            ' From ConciliacionArs c Right join ConciliacionArs_Head h on '+
                            ' c.ID=h.ID left join PedidoVenta p on c.ClienteID=p.ClienteID And '+
                            ' c.Num_Aprobacion=p.AprobacionNo '+
                            ' Where c.ID ='+#39+qrConciliacion_HeadID.AsString+#39+
                            ' And c.Estatus='+#39+'N'+#39+
                            ' Order by Fecha ';
            end
            else
            if (qrConciliacion_HeadEstado.AsString = 'P') then
            begin
                SQL.Text := ' Select  c.Fecha,c.Muestrano, c.NombrePaciente, c.PolizaID, Num_Aprobacion, Monto_Reclamdo, Monto_Aprobado, Diferencia, c.ID,'+
                            ' Estatus,c.RecID,c.ClienteID, o.DocNum As Num_Fact From ConciliacionArs c Right join ConciliacionArs_Head h on '+
                            ' c.ID=h.ID left join PedidoVenta p on c.ClienteID=p.ClienteID And '+
                            ' c.Num_Aprobacion=p.AprobacionNo And c.Muestrano=p.Muestrano Left Join '+ DM.qrParametroServidor_Sap.AsString+'.dbo.OINV o On '+
                            ' p.ClienteID COLLATE SQL_Latin1_General_CP850_CI_AS=o.CardCode And '+
                            ' p.U_Numero COLLATE SQL_Latin1_General_CP850_CI_AS=o.U_PedNum '+
                            ' Where c.ID ='+#39+qrConciliacion_HeadID.AsString+#39+
                            ' Order by Fecha ';
            end;
            Open;
            If Recordset.RecordCount > 0 then First;
          End;
      End;
    end;
end;

procedure TfrmTransferenciaCON_ARS.ImprimirConciliacion1Click(Sender: TObject);
begin
  inherited;
    If qrConciliacion.RecordCount > 0 then
    Begin
        ppRptConciliacionArs.DeviceType := dtScreen;
        ppRptConciliacionArs.Print;
    end;
end;

procedure TfrmTransferenciaCON_ARS.CancelarAgregarUsuario1Click(
  Sender: TObject);
begin
  inherited;
 if qrConciliacion.IsEmpty then
   begin
      qrConciliacion.Active := true;
      qrConciliacion.Delete;
   end;
   qrConciliacion.Cancel;
   cxGrid2DBTableView2.OptionsView.NewItemRow := False;
end;

procedure TfrmTransferenciaCON_ARS.CargarPedidodeVenta1Click(Sender: TObject);
begin
  inherited;
      frmMain.LanzaVentana(1316);
      Buscar_Pedidos('A');
      Buscar_Registro_Primario;
end;

procedure TfrmTransferenciaCON_ARS.cbExtClientePropertiesChange(
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

procedure TfrmTransferenciaCON_ARS.cbExtServicioPropertiesChange(
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

procedure TfrmTransferenciaCON_ARS.cboEstadoPropertiesChange(Sender: TObject);
begin
  inherited;
    if cboEstado.Text = '' then
    begin
          Seleccion    := ' Select ID, GrupoArs, NombreCliente,NombreArchivo,Fecha,Comentario,'+
                          ' Case Estado When '+#39+'A'+#39+' Then '+#39+'Abierta'+#39+
                          ' When '+#39+'P'+#39+' Then '+#39+'Posteada'+#39+
                          '             end As Estado,'+
                          ' Seleccionar, NombreArchivo'+
                          ' From ConciliacionArs_Head ';
    end
    else if cboEstado.Text = 'Abierta' then
    begin
          Seleccion    := ' Select ID, GrupoArs, NombreCliente,NombreArchivo, Fecha,Comentario,'+
                          ' Case Estado When '+#39+'A'+#39+' Then '+#39+'Abierta'+#39+
                          ' When '+#39+'P'+#39+' Then '+#39+'Posteada'+#39+
                          '             end As Estado,'+
                          ' Seleccionar, NombreArchivo'+
                          ' From ConciliacionArs_Head '+
                          ' Where Estado = '+#39+'A'+#39 ;
          cxGrid2DBTableView2.OptionsData.Editing := True;
    end
    else if cboEstado.Text = 'Posteada' then
    begin
          Seleccion   := ' Select ID, GrupoArs, NombreCliente,NombreArchivo,Fecha,Comentario,'+
                          ' Case Estado When '+#39+'A'+#39+' Then '+#39+'Abierta'+#39+
                          ' When '+#39+'P'+#39+' Then '+#39+'Posteada'+#39+
                          '             end As Estado,'+
                          ' Seleccionar, NombreArchivo'+
                          ' From ConciliacionArs_Head '+
                          ' Where Estado ='+#39+'P'+#39;
      cxGrid2DBTableView2.OptionsData.Editing := False;
    end;
    With qrConciliacion_Head,sql do
    begin
        Close;
        Sql.Text := Seleccion;
        Open;
    end;
    Buscar_Registro_Primario;
end;

procedure TfrmTransferenciaCON_ARS.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
  Var Est : String;
begin
  inherited;
    If Length(qrConciliacion_HeadGrupoArs.Value) > 0 then
    begin
      With qrConciliacion,sql do
      begin
          Close;
            if (qrConciliacion_HeadEstado.AsString = 'A') then
            begin
              SQL.Text := ' Select  c.Fecha,c.Muestrano, c.NombrePaciente, c.PolizaID, Num_Aprobacion, Monto_Reclamdo, Monto_Aprobado, Diferencia, c.ID,'+
                            ' Estatus,c.RecID,c.ClienteID, o.DocNum As Num_Fact From ConciliacionArs c Right join ConciliacionArs_Head h on '+
                            ' c.ID=h.ID left join PedidoVenta p on c.ClienteID=p.ClienteID And '+
                            ' c.Num_Aprobacion=p.AprobacionNo And c.Muestrano=p.Muestrano Left Join '+ DM.qrParametroServidor_Sap.AsString+'.dbo.OINV o On '+
                            ' p.ClienteID COLLATE SQL_Latin1_General_CP850_CI_AS=o.CardCode And '+
                            ' p.U_Numero COLLATE SQL_Latin1_General_CP850_CI_AS=o.U_PedNum '+
                            ' Where c.ID ='+#39+qrConciliacion_HeadID.AsString+#39+
                            ' And c.Estatus='+#39+'I'+#39+
                            ' Union All '+
                            ' Select  c.Fecha,c.Muestrano, c.NombrePaciente, c.PolizaID, '+
                            ' Num_Aprobacion, Monto_Reclamdo, Monto_Aprobado, Diferencia, c.ID, '+
                            ' Estatus,c.RecID,c.ClienteID, '+
                            '	'+#39+#39+' As Num_Fact '+
                            ' From ConciliacionArs c Right join ConciliacionArs_Head h on '+
                            ' c.ID=h.ID left join PedidoVenta p on c.ClienteID=p.ClienteID And '+
                            ' c.Num_Aprobacion=p.AprobacionNo '+
                            ' Where c.ID ='+#39+qrConciliacion_HeadID.AsString+#39+
                            ' And c.Estatus='+#39+'N'+#39+
                            ' Order by Fecha ';
            end
            Else
            begin
              SQL.Text := ' Select  c.Fecha,c.Muestrano, c.NombrePaciente, c.PolizaID, Num_Aprobacion, Monto_Reclamdo, Monto_Aprobado, Diferencia, c.ID,'+
                            ' Estatus,c.RecID,c.ClienteID, o.DocNum As Num_Fact From ConciliacionArs c Right join ConciliacionArs_Head h on '+
                            ' c.ID=h.ID left join PedidoVenta p on c.ClienteID=p.ClienteID And '+
                            ' c.Num_Aprobacion=p.AprobacionNo And c.Muestrano=p.Muestrano Left Join '+ DM.qrParametroServidor_Sap.AsString+'.dbo.OINV o On '+
                            ' p.ClienteID COLLATE SQL_Latin1_General_CP850_CI_AS=o.CardCode And '+
                            ' p.U_Numero COLLATE SQL_Latin1_General_CP850_CI_AS=o.U_PedNum '+
                            ' Where c.ID ='+#39+qrConciliacion_HeadID.AsString+#39+
                            ' Order by Fecha ';
            end;
          Open;
            If Recordset.RecordCount > 0 then First;
          End;
          If (qrConciliacion_HeadEstado.AsString = 'Abierta') Or
             (qrConciliacion_HeadEstado.AsString = 'A') then
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
procedure TfrmTransferenciaCON_ARS.cxGrid1DBTableView1KeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
    If Length(qrConciliacion_HeadID.Value) > 0 then
    begin
      With qrConciliacion,sql do
      begin
          Close;
            if (qrConciliacion_HeadEstado.AsString = 'A') then
            begin
                SQL.Text := ' Select  c.Fecha,c.Muestrano, c.NombrePaciente, c.PolizaID, Num_Aprobacion, Monto_Reclamdo, Monto_Aprobado, Diferencia, c.ID,'+
                            ' Estatus,c.RecID,c.ClienteID, o.DocNum As Num_Fact From ConciliacionArs c Right join ConciliacionArs_Head h on '+
                            ' c.ID=h.ID left join PedidoVenta p on c.ClienteID=p.ClienteID And '+
                            ' c.Num_Aprobacion=p.AprobacionNo And c.Muestrano=p.Muestrano Left Join '+ DM.qrParametroServidor_Sap.AsString+'.dbo.OINV o On '+
                            ' p.ClienteID COLLATE SQL_Latin1_General_CP850_CI_AS=o.CardCode And '+
                            ' p.U_Numero COLLATE SQL_Latin1_General_CP850_CI_AS=o.U_PedNum '+
                            ' Where c.ID ='+#39+qrConciliacion_HeadID.AsString+#39+
                            ' And c.Estatus='+#39+'I'+#39+
                            ' Union All '+
                            ' Select  c.Fecha,c.Muestrano, c.NombrePaciente, c.PolizaID, '+
                            ' Num_Aprobacion, Monto_Reclamdo, Monto_Aprobado, Diferencia, c.ID, '+
                            ' Estatus,c.RecID,c.ClienteID, '+
                            '	'+#39+#39+' As Num_Fact '+
                            ' From ConciliacionArs c Right join ConciliacionArs_Head h on '+
                            ' c.ID=h.ID left join PedidoVenta p on c.ClienteID=p.ClienteID And '+
                            ' c.Num_Aprobacion=p.AprobacionNo '+
                            ' Where c.ID ='+#39+qrConciliacion_HeadID.AsString+#39+
                            ' And c.Estatus='+#39+'N'+#39+
                            ' Order by Fecha ';
            end
            Else
            Begin
                SQL.Text := ' Select  c.Fecha,c.Muestrano, c.NombrePaciente, c.PolizaID, Num_Aprobacion, Monto_Reclamdo, Monto_Aprobado, Diferencia, c.ID,'+
                            ' Estatus,c.RecID,c.ClienteID, o.DocNum As Num_Fact From ConciliacionArs c Right join ConciliacionArs_Head h on '+
                            ' c.ID=h.ID left join PedidoVenta p on c.ClienteID=p.ClienteID And '+
                            ' c.Num_Aprobacion=p.AprobacionNo And c.Muestrano=p.Muestrano Left Join '+ DM.qrParametroServidor_Sap.AsString+'.dbo.OINV o On '+
                            ' p.ClienteID COLLATE SQL_Latin1_General_CP850_CI_AS=o.CardCode And '+
                            ' p.U_Numero COLLATE SQL_Latin1_General_CP850_CI_AS=o.U_PedNum '+
                            ' Where c.ID ='+#39+qrConciliacion_HeadID.AsString+#39+
                            ' Order by Fecha ';
            end;
          Open;
            If Recordset.RecordCount > 0 then First;
          End;
          If (qrConciliacion_HeadEstado.AsString = 'Abierta') Or
             (qrConciliacion_HeadEstado.AsString = 'A') then
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

procedure TfrmTransferenciaCON_ARS.DesmarcarTodosRegistros1Click(
  Sender: TObject);
begin
  inherited;
  if qrConciliacion_Head.RecordCount > 0 then
  begin
        spMensaje.Visible :=True;
        qrConciliacion_Head.First;
        While Not qrConciliacion_Head.Eof do
        begin
            qrConciliacion_Head.Edit;
            qrConciliacion_HeadSeleccionar.AsBoolean:= False;
            qrConciliacion_Head.Post;
            qrConciliacion_Head.Next;
        end;
        qrConciliacion_Head.First;
        qrConciliacion_Head.Refresh;
        spMensaje.Visible :=False;
  end;
end;

procedure TfrmTransferenciaCON_ARS.AadirPedido1Click(Sender: TObject);
begin
  inherited;
  spCliente.Visible := True;
end;

function TfrmTransferenciaCON_ARS.Busca_RecID(ClienteID : String; Estado: String) : Int64;
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
function TfrmTransferenciaCON_ARS.Get_Estado(Estado : String) : String;
Var Est : String;
begin
   result := EmptyStr;
   Est:=Estado;
   if Estado='Abierta' then Est:='A'
   else If Estado='Posteada' then Est:='P';
  if Length(Est)=1 then
      Result:=Est
   else
      Result:=Estado;
end;
function TfrmTransferenciaCON_ARS.Busca_GrupoID(ClienteID : String) : String;
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
function TfrmTransferenciaCON_ARS.CreaID : String;
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
function TfrmTransferenciaCON_ARS.GetSecuenciaId : Int64;
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
function TfrmTransferenciaCON_ARS.Verifica_TasaSap(Fecha : String): String;
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

