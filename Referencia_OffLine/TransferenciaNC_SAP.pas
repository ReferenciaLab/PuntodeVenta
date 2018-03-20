unit TransferenciaNC_SAP;

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
  TfrmTransferenciaNC_SAP = class(TfrmCustomModule)
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
    cxGrid1DBTableView1Fecha: TcxGridDBColumn;
    cxGrid1DBTableView1Cuenta_Cliente: TcxGridDBColumn;
    cxGrid1DBTableView1Nombre: TcxGridDBColumn;
    cxGrid1DBTableView1Tipo_Nota: TcxGridDBColumn;
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
    qrPedidoDetalle: TADOQuery;
    qrPedidoNombreCliente: TStringField;
    btProforma: TcxButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    btConsulta: TcxButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    MenuFunciones: TPopupMenu;
    CargarNotadeCredito1: TMenuItem;
    TransferirNotadeCreditoSAP1: TMenuItem;
    BorrarNotadeCredito1: TMenuItem;
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
    AadirNotaCredito1: TMenuItem;
    BorrarNotaCredito2: TMenuItem;
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
    qrPedido_Head: TADOQuery;
    dsPedido: TDataSource;
    qrPedido_HeadID: TGuidField;
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
    qrPedidoMuestrano: TStringField;
    qrPedidoID: TLargeintField;
    qrPedidoGrupoID: TStringField;
    cxGrid1DBTableView1Muestrano: TcxGridDBColumn;
    cxGrid1DBTableView1Nombre_Paciente: TcxGridDBColumn;
    qrPedidoNombrePaciente: TStringField;
    JvMemoryData1Numero_Factura: TIntegerField;
    qrPedidoNum_Factura: TIntegerField;
    JvMemoryData1Fecha: TDateTimeField;
    ppRptNotaCredito: TppReport;
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
    ppLabel242: TppLabel;
    ppLabel246: TppLabel;
    ppLabel250: TppLabel;
    ppLabel1: TppLabel;
    ppLabel5: TppLabel;
    ppDetailBand21: TppDetailBand;
    ppDBText219: TppDBText;
    ppDBText218: TppDBText;
    ppDBText223: TppDBText;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel257: TppLabel;
    ppDBCalc37: TppDBCalc;
    ppReporteNotaC: TppDBPipeline;
    ppDBText3: TppDBText;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    JvMemoryData1SucursalID: TStringField;
    JvMemoryData1Monto: TCurrencyField;
    qrPedidoFecha: TDateTimeField;
    qrPedidoSucursalID: TStringField;
    qrPedidoMonto: TCurrencyField;
    qrPedidoU_Numero: TStringField;
    JvMemoryData2Seleccion: TBooleanField;
    cxGrid2DBTableView2Seleccionar: TcxGridDBColumn;
    dxLayoutControl2Item1: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutControl2Group5: TdxLayoutGroup;
    CheckAll: TcxCheckBox;
    NoCheckAll: TcxCheckBox;
    qrPedidoDetalleSeleccionar: TBooleanField;
    procedure NoCheckAllPropertiesChange(Sender: TObject);
    procedure CheckAllPropertiesChange(Sender: TObject);
    procedure DetalleFacturacionClick(Sender: TObject);
    procedure cxGrid1DBTableView1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbExtServicioPropertiesChange(Sender: TObject);
    procedure btAceptaSerClick(Sender: TObject);
    procedure btCancelSerClick(Sender: TObject);
    procedure BorrarNotadeCredito1Click(Sender: TObject);
    procedure CargarNotadeCredito1Click(Sender: TObject);
    procedure btAceptarClick(Sender: TObject);
    procedure cbExtClientePropertiesChange(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure AadirNotaCredito1Click(Sender: TObject);
    procedure qrPedidoDetalleCalcFields(DataSet: TDataSet);
    procedure CancelarAgregarUsuario1Click(Sender: TObject);
    procedure InsertarPrueba1Click(Sender: TObject);
    procedure DesmarcarTodosRegistros1Click(Sender: TObject);
    procedure MarcarTodosRegistros1Click(Sender: TObject);
    procedure EliminarPrueba1Click(Sender: TObject);
    procedure BorrarNotaCredito2Click(Sender: TObject);
    procedure cboEstadoPropertiesChange(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure TransferirNotadeCreditoSAP1Click(Sender: TObject);
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

    Function  ActNotaCreditoSap : Boolean;
    Function  Get_Estado(Estado : String) : String;
    Function  Busca_RecID(ClienteID : String; Estado: String) : Int64;
    Function  Verifica_TasaSap(Fecha : String) : Boolean;
    Function  Buscar_NotaCredito(TipoPedido : String) : Boolean;
    Function  Busca_GrupoID(ClienteID : String) : String;
    Function  CreaID : String;
    Function  GetSecuenciaId : Int64;
    procedure Buscar_Registro_Primario;

  end;

var
  frmTransferenciaNC_SAP       : TfrmTransferenciaNC_SAP;

implementation

uses ActionsDM, cxExportGrid4Link, DataModule, Main;

{$R *.dfm}


procedure TfrmTransferenciaNC_SAP.FormCreate(Sender: TObject);
begin
  inherited;
  DM.qrParametro.close;
  DM.qrParametro.open;  
  frmMain.Tran_fer := True;
  Buscar_NotaCredito('T');
  Buscar_Registro_Primario;
end;


procedure TfrmTransferenciaNC_SAP.FormDestroy(Sender: TObject);
begin
  inherited;
  frmMain.Tran_fer := False;
end;


procedure TfrmTransferenciaNC_SAP.FormShow(Sender: TObject);
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
// Verifica si existen codigos de pruebas ya usados
   qconsulta := DM.NewQuery;
   With qconsulta, sql do
   begin
      Close;
      Text := ' SELECT ITEMCODE FROM '+DM.qrParametroServidor_Sap.AsString+'.dbo.OITM '+
              ' WHERE   ItmsGrpCod in (125,118) AND U_CodAnt<>'+#39+'00000000'+#39+
              ' Group by ITEMCODE '+
              ' HAVING count(ITEMCODE)>1 ';
      Open;
      if (qconsulta.RecordCount > 0) Then
      begin
         qconsultad := DM.NewQuery;
         qconsulta.First;
         while Not qconsulta.eof do
         begin
             With qconsultad, sql do
             begin
                Close;
                Text := ' SELECT ItemCode,ItemName,U_CodAnt FROM '+ DM.qrParametroServidor_Sap.AsString+'.dbo.OITM '+
                        ' WHERE   ItmsGrpCod in (125,118) AND U_CodAnt<>'+#39+'00000000'+#39+
                        ' AND ItemCode='+#39+qConsulta.Fieldbyname('ItemCode').AsString+#39;
                Open;
             end;
            if (qconsultad.RecordCount > 0) then
            begin
               ContD := qconsultad.RecordCount;
               qconsultad.First;
               while Not qconsultad.eof do
               begin
                  Mensaje:=Mensaje+'Servicio ('+qconsultad.Fieldbyname('ItemCode').AsString+' '+qconsultad.Fieldbyname('Itemname').AsString+').  Está registrado en otro servicio '+#39+'('+#39+qconsultad.Fieldbyname('ItemCode').AsString+#39+')'+#39+'.  Verifique.'+#13;
                  qconsultad.Next;
               end;
            end;
            qconsulta.Next;
         end;
      end;
   end;
  if (ContD > 0) then
  begin
     Showmessage(Mensaje);
  end;
  FreeAndNil(qconsulta);
  FreeAndNil(qconsultad);
  DM.qrPruebas.Close;
  With DM.qrPruebas, sql do
  begin
    Close;
    Clear;
    Add('SELECT PRUEBAID, ALIAS, DESCRIPCION, ESTATUS, GRUPOPRUEBAID, DEPARTAMENTO, PRECIO,');
    Add(' PERMITECAMBIOPRECIO, CODIGOAXAPTA, PRECIODOLARES, COSTO, EXTERIOR, FACTURARCABECERA, PRUEBAS,');
    Add(' TIPO, ORINA, SANGRE, CONDPACIENTE, CONDMUESTRA, CODDIAPROC, DIASRESULTADO, UNIDAD, ABREVIACION,');
    Add(' MEDIO, COLOR, DEPID, TIPOAS400, CODIGOIDAS400, MEDIOAS400, NOPROCESAR, COMENTARIONOPROCESAR, TIPOMUESTRA,');
    Add(' COMENTARIO_REQ, COD_SEC_PRUEBA, SEXO, AYUNA, FONT_BOLD, CLIENTEID, DATAAREAID, RECID, TRANSFER FROM dbo.PTPrueba (nolock) Where Estatus = '+#39+'1'+#39);
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

procedure TfrmTransferenciaNC_SAP.InsertarPrueba1Click(Sender: TObject);
Var Estado : String;
begin
  inherited;
  cbExtServicio.EditValue := 'SER00792';
  spServicio.Visible := True;
end;

procedure TfrmTransferenciaNC_SAP.MarcarTodosRegistros1Click(Sender: TObject);
begin
  inherited;
  if qrPedido.RecordCount > 0 then
  begin
        spMensaje.Visible :=True;
        qrPedido.First;
        While Not qrPedido.Eof do
        begin
            qrPedido.Edit;
            qrPedidoSeleccionar.Asboolean := True;
            qrPedido.Post;
            qrPedido.Next;
        end;
        qrPedido.First;
        qrPedido.Refresh;
        spMensaje.Visible :=False;
  end;
end;

procedure TfrmTransferenciaNC_SAP.NoCheckAllPropertiesChange(Sender: TObject);
begin
  inherited;
    If Not qrPedidoDetalle.IsEmpty then
    begin
      if qrPedidoDetalle.RecordCount > 0 then
      begin
            CheckAll.Checked := False;
            spMensaje.Visible :=True;
            qrPedidoDetalle.First;
            While Not qrPedidoDetalle.Eof do
            begin
                qrPedidoDetalle.Edit;
                qrPedidoDetalleSeleccionar.Asboolean := False;
                qrPedidoDetalle.Post;
                qrPedidoDetalle.Next;
            end;
            qrPedidoDetalle.First;
            qrPedidoDetalle.Refresh;
            spMensaje.Visible :=False;
      end;
    end;
end;

procedure TfrmTransferenciaNC_SAP.qrPedidoDetalleCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  qrPedidoDetalleNeto.Value := (qrPedidoDetallePrecio_Unitario.Value * qrPedidoDetalleCantidad.Value)-(qrPedidoDetalleDescuento.value);
end;

procedure TfrmTransferenciaNC_SAP.EdClienteDblClick(Sender: TObject);
begin
  inherited;
  frmMain.LanzaVentana(-1405);
end;


procedure TfrmTransferenciaNC_SAP.EdPacienteDblClick(Sender: TObject);
begin
  inherited;
{  frmMain.LanzaVentana(-7999);
  if (cboEstado.Text <> '') then
    Buscar_Ordenes_Abiertas;
}
end;


procedure TfrmTransferenciaNC_SAP.EliminarPrueba1Click(Sender: TObject);
Var qArticulo : TAdoQuery;
    DPrueba   : String;
begin
  inherited;
{  if ( qrPedido.RecordCount > 0) And
     ((qrPedidoEstado.AsString='Abierto') Or (qrPedidoEstado.AsString='T') Or
     (qrPedidoEstado.AsString='Nota-Credito') Or (qrPedidoEstado.AsString='P')) And
     (qrPedidoDetallePruebaID.AsString <> EmptyStr) Then
  begin
     If (EtMensajeDlg('Está seguro de eliminar este servicio '+qrPedidoDetallePruebaID.AsString+' Entrada='+qrPedidoDetalleMuestrano.AsString,etConfirmacion,[etSi,etNo],1,dm.Imagenes.Items[5].Bitmap,true) = mryes) then
     begin
          DPrueba := qrPedidoDetallePruebaID.AsString;
          spMensaje.Visible :=True;
          DPrueba :=qrPedidoDetallePruebaID.AsString+' '+qrPedidoDetalleDescripcion.AsString;
          qArticulo := DM.NewQuery;
          qArticulo.Close;
          qArticulo.SQL.Text := ' Delete POSInterfaz.dbo.NotaCreditoDetalle '+
                                ' Where RecID='+qrPedidoDetalleRecID.AsString+' And PruebaID ='+#39+qrPedidoDetallePruebaID.AsString+#39;
          qArticulo.ExecSQL;
          Buscar_NotaCredito(Get_Estado(qrPedidoEstado.AsString));
          Buscar_Registro_Primario;
          spMensaje.Visible := False;
          ShowMessage('Articulo '+ DPrueba+' Eliminado.  Verifique.');
     end;
     FreeAndNil(qArticulo);
  end;
}
  if ( qrPedido.RecordCount > 0) And
     ((qrPedidoEstado.AsString='Abierto') Or (qrPedidoEstado.AsString='T') Or
     (qrPedidoEstado.AsString='Nota-Credito') Or (qrPedidoEstado.AsString='P')) And
     (qrPedidoDetallePruebaID.AsString <> EmptyStr) Then
  begin
     If (EtMensajeDlg('Está seguro de eliminar Pruebas marcadas(s) ',etConfirmacion,[etSi,etNo],1,dm.Imagenes.Items[5].Bitmap,true) = mryes) then
     begin
        spMensaje.Visible :=True;     
        If qrPedidoDetalle.RecordCount > 0 then qrPedidoDetalle.First;
        While Not qrPedidoDetalle.Eof do
        begin
             If qrPedidoDetalleSeleccionar.AsBoolean = True Then
             Begin
                qrPed.Close;
                qrPed.SQL.Text :=    ' Delete POSInterfaz.dbo.NotaCreditoDetalle '+
                                     ' Where RecID='+qrPedidoDetalleRecID.AsString+' And PruebaID ='+#39+qrPedidoDetallePruebaID.AsString+#39;
                qrPed.ExecSQL;
             end;
             qrPedidoDetalle.Next;
        end;
        //qrPedidoDetalle.First;
        spMensaje.Visible := False;
        Buscar_Registro_Primario;
     end;
  end;
end;

procedure TfrmTransferenciaNC_SAP.SetColorTo(iColor: TColor);
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
Function TfrmTransferenciaNC_SAP.Buscar_NotaCredito(TipoPedido : String):Boolean;
begin
    qrPedido.Close;
    qrPedido.Sql.Clear;
    qrPedido.SQL.Text := ' Select Seleccionar,U_Numero,Fecha,ClienteID,NombreCliente,'+
                         '        Case Estado When '+#39+'T'+#39+' Then '+#39+'Abierto'+#39+
                         '             When '+#39+'P'+#39+' Then '+#39+'Pre-Factura'+#39+
                         '             When '+#39+'F'+#39+' Then '+#39+'Facturado'+#39+
                         '             When '+#39+'C'+#39+' Then '+#39+'Cancelado'+#39+' end As Estado,'+
                         '     MonedaID,Fecha_Desde,Fecha_Hasta,ClienteID_Gen,GrupoID_Gen,Comentario,Muestrano,RecID as ID,GrupoID,NombrePaciente,Muestrano,Num_Factura,SucursalD as SucursalID,MontoFacturado As Monto '+
                         ' From dbo.NotaCredito '+
                         ' WHERE Estado =   '+ #39 +TipoPedido+ #39;

    qrPedido.Open;
    If qrpedido.RecordCount > 0 then
    begin
       qrPedido.First;
       Result := True;
    end
    else
      Result := False;
End;
procedure TfrmTransferenciaNC_SAP.BorrarNotadeCredito1Click(Sender: TObject);
begin
  inherited;
  BorrarNotaCredito2Click(Sender);
end;

Procedure TfrmTransferenciaNC_SAP.BorrarNotaCredito2Click(Sender: TObject);
 Var
 //qPedidos           : TAdoQuery;
     ClienteID,Estado   : String;
begin
  inherited;
  If (qrPedido.RecordCount > 0) And
     ((qrPedidoEstado.AsString='Abierto') Or (qrPedidoEstado.AsString='T') )
  And (qrPedidoSeleccionar.AsBoolean = True) Then
  begin
     If (EtMensajeDlg('Está seguro de eliminar Nota Crédito del Cliente(s) ',etConfirmacion,[etSi,etNo],1,dm.Imagenes.Items[5].Bitmap,true) = mryes) then
     begin
        qrPedido.First;
        While Not qrPedido.Eof do
        begin
             If qrPedidoSeleccionar.AsBoolean = True Then
             Begin
                ClienteID:=qrPedidoClienteID.AsString;
                Estado   :=qrPedidoEstado.AsString;
                spMensaje.Visible :=True;
//                qPedidos := DM.NewQuery;
                qrPed.Close;
                qrPed.SQL.Text :=    ' Delete POSInterfaz.dbo.NotaCreditoDetalle '+
                                     ' Where Recid in (Select RecID From POSInterfaz.dbo.NotaCredito Where ClienteID='+#39+qrPedidoClienteID.AsString+#39+')'+
                                     ' And Muestrano='+#39+qrPedidoMuestrano.Value+#39+
                                     ' Delete POSInterfaz.dbo.NotaCredito '+
                                     ' Where MuesTrano='+#39+qrPedidoMuestrano.Value+#39+
                                     ' Update PtEntradaPaciente '+
                                     ' Set Estatus_Sap='+#39+'A'+#39+' Where Estatus='+#39+'4'+#39+
                                     ' And Muestrano='+#39+qrPedidoMuestrano.Value+#39;
                qrPed.ExecSQL;
             end;
             qrPedido.Next;
        end;
        qrPedido.First;
        spMensaje.Visible := False;
        ShowMessage('Nota de Credito del Cliente(s) Eliminado.  Verifique.');
        Buscar_NotaCredito(Get_Estado(Estado));
        Buscar_Registro_Primario;
     end;
//     FreeAndNil(qPedidos);
  end;
end;

procedure TfrmTransferenciaNC_SAP.btAceptarClick(Sender: TObject);
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
       ShowMessage('Debe seleccionar Fecha Inicio v Cliente.  Verifique.');
       FechaIni.SetFocus;
       Exit;
   end;
   If FechaFin.Text = EmptyStr then
   begin
       ShowMessage('Debe seleccionar Fecha Fin Nota Credito Cliente.  Verifique.');
       FechaFin.SetFocus;
       Exit;
   end;
   If FechaFin.Text = EmptyStr then
   begin
       ShowMessage('Debe seleccionar Fecha Fin Nota Credito Cliente.  Verifique.');
       FechaFin.SetFocus;
       Exit;
   end;
   if qrPedido.IsEmpty then
   begin
      qrPedido.Active := true;
   end;
   qrPedido.Append;
   qrPedidoID.AsString                      := CreaID;
   qrPedidoGrupoID.Value                    := Busca_GrupoID(txtClienteID.Text);
   qrPedidoClienteID.Value                  := txtClienteID.Text;
   qrPedidoNombreCliente.Value              := txtNombreCliente.EditingText;
   qrPedidoEstado.Value                     := 'T';
   qrPedidoFecha_Desde.Value                := FechaIni.EditValue;
   qrPedidoFecha_Hasta.Value                := FechaIni.EditValue;
   qrPedidoSeleccionar.Value                := False;
   qrPedidoMonedaID.Value                   := txtMonedaID.EditValue;
   qrPedido.Post;

  // Inserta detalle prueba default
   Buscar_NotaCredito('T');
   Buscar_Registro_Primario;
   btCancelarClick(Sender);
   InsertarPrueba1Click(Sender);
end;

procedure TfrmTransferenciaNC_SAP.btAceptaSerClick(Sender: TObject);
Var Estado : String;
begin
  inherited;
   Estado := Get_Estado('T');
   if qrPedidoDetalle.IsEmpty then
   begin
      qrPedidoDetalle.Active := true;
   end;
   qrPedidoDetalle.Append;
   qrPedidoDetalleSeleccionar.AsBoolean     := false;
   qrPedidoDetalleRecID.Value               := Busca_RecID(qrPedidoClienteID.AsString,'T');
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
   Buscar_NotaCredito('T');
   Buscar_Registro_Primario;
   btCancelSerClick(Sender);
end;

procedure TfrmTransferenciaNC_SAP.btCancelarClick(Sender: TObject);
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

procedure TfrmTransferenciaNC_SAP.btCancelSerClick(Sender: TObject);
begin
  inherited;
  cbExtServicio.ItemIndex := -1;
  txtServicioID.Text      := EmptyStr;
  txtNombreServicio.Text  := EmptyStr;
  cboMonedaID.ItemIndex   := 0;
  cxMonto.EditText        := EmptyStr;
  spServicio.Visible      := False;
end;

procedure TfrmTransferenciaNC_SAP.TransferirNotadeCreditoSAP1Click(Sender: TObject);
 Var  qPedidos                  : TAdoQuery;
      ClienteID,GrupoID,Estado  : String;
      Cont                      : Integer;
begin
  inherited;
    Cont:=0;
    if qrPedido.RecordCount > 0 then
    begin
       If (EtMensajeDlg('Está seguro de transferir a SAP estas entradas Seleccionadas ?',etConfirmacion,[etSi,etNo],1,dm.Imagenes.Items[5].Bitmap,true) = mryes) then
       begin
            If Not Verifica_TasaSap(FormatDateTime('yyyymmdd', qrPedidoFecha_Desde.AsDateTime)) Then
            begin
                 Raise exception.CreateFmt( ' Verifique Tasa del Dia en Sap '+FormatDateTime('dd/mm/yyyy',qrPedidoFecha_Desde.AsDateTime)+' no está registrada.  Verifique.',[]);
            end;
            ClienteID :=qrPedidoClienteID.Value;
            GrupoID   :=qrPedidoGrupoID.Value;
            Estado    :=qrPedidoEstado.Value;
            qrPedido.First;
            While Not qrPedido.Eof do
            begin
               if qrPedidoSeleccionar.AsBoolean = True then
               begin
                spMensaje.Visible :=True;
                Cont := Cont+1;
                If Not ActNotaCreditoSap Then
                 begin
                    if qrPedidoClienteID.AsString <> EmptyStr then
                    begin
                      Raise exception.CreateFmt( ' NO Se Pudo Generar la carga del Cliente '+qrPedidoClienteID.AsString+'.'+ #13 +
                                                 ' Se Ha Generado Un Error en ActNotaCreditoSap. '+ #13 +
                                                 ' Por Favor, Intentelo Nuevamente.',[]);
                    end
                 end;
               end;
               qrPedido.Next;
            end;
            spMensaje.Visible := False;
            if Cont = 0  then
            begin
                ShowMessage('Debe seleccionar Cliente(s) a Transferir.  Verifique.');
                Exit;
            end;
            If qrPedidoClienteID.AsString <> EmptyStr then
                ShowMessage('Proceso Nota de Credito Transferido.  Verifique.');
            Buscar_NotaCredito(Get_Estado(Estado));
            Buscar_Registro_Primario;
           end;
        FreeAndNil(qPedidos);
      end;
end;

procedure TfrmTransferenciaNC_SAP.Buscar_Registro_Primario;
begin
  With qrPedido,sql do
  begin
    if IsEmpty then
    begin
        dsPedido.Enabled := False;
        dsArticulos.Enabled := False;
        exit;
    end
    else
    begin
        dsPedido.Enabled := True;
        dsArticulos.Enabled := True;
    end;
  end;
  qrPedido.First;
  dsPedido.Enabled := True;
  If qrPedido.recordset.recordcount > 0 then
  begin
      qrPedido.First;
      If (qrPedidoEstado.AsString = 'Abierto') Or
         (qrPedidoEstado.AsString = 'T') Then
      begin
        BorrarNotadecredito1.Enabled :=True;
        TransferirNotadeCreditoSAP1.Enabled := True;
        cxGrid2DBTableView2.OptionsData.Editing := True;
      end
      else
      begin
        BorrarNotadecredito1.Enabled :=False;
        TransferirNotadeCreditoSAP1.Enabled := False;
        cxGrid2DBTableView2.OptionsData.Editing := False;
      end;

      If qrPedido.Recordset.RecordCount > 0 then
      begin
        With qrPedidoDetalle do
        begin
            Close;
            SQL.Text := ' Select * From NotaCreditoDetalle '+
                        ' Where RecID in ( Select RecID from NotaCredito Where Muestrano ='+#39+qrPedidoMuestrano.AsString+#39+' And ClienteID='+#39+qrPedidoClienteID.AsString+#39+' And  Fecha_Desde ='+#39+FormatDateTime('yyyymmdd', qrPedidoFecha_Desde.AsDateTime)+#39+' And Fecha_Hasta ='+#39+FormatDateTime('yyyymmdd', qrPedidoFecha_Hasta.AsDateTime)+#39+')';
            Open;
            If Recordset.RecordCount > 0 then First;
          End;
      End;
    end;
end;
procedure TfrmTransferenciaNC_SAP.CancelarAgregarUsuario1Click(
  Sender: TObject);
begin
  inherited;
 if qrPedidoDetalle.IsEmpty then
   begin
      qrPedidoDetalle.Active := true;
      qrPedidoDetalle.Delete;
   end;
   qrPedidoDetalle.Cancel;
   cxGrid2DBTableView2.OptionsView.NewItemRow := False;
end;

procedure TfrmTransferenciaNC_SAP.CargarNotadeCredito1Click(Sender: TObject);
begin
  inherited;
      frmMain.LanzaVentana(1406);
      Buscar_NotaCredito('T');
      Buscar_Registro_Primario;
end;

procedure TfrmTransferenciaNC_SAP.cbExtClientePropertiesChange(
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

procedure TfrmTransferenciaNC_SAP.cbExtServicioPropertiesChange(
  Sender: TObject);
begin
  inherited;
  If cbExtServicio.Text <> EmptyStr then
  begin
      qfindServicio           := DM.NewQuery;
      qfindServicio.Close;
      qfindServicio           := DM.Find_Ldr('Select PruebaID Descripcion from PtPrueba (nolock) Where Estatus = '+#39+'1'+#39+' And PruebaID = :ser', cbExtServicio.EditValue);
      txtServicioID.Text      := cbExtServicio.EditValue;
      txtNombreServicio.Text  := cbExtServicio.Text;
      cboMonedaID.ItemIndex   := 0;
      FreeAndNil(qfindServicio);
  end;
end;

procedure TfrmTransferenciaNC_SAP.cboEstadoPropertiesChange(Sender: TObject);
begin
  inherited;
    if cboEstado.Text = '' then
    begin
          Seleccion   := ' Select Seleccionar,U_Numero,Fecha,ClienteID,NombreCliente,'+
                         '        Case Estado When '+#39+'T'+#39+' Then '+#39+'Abierto'+#39+
                         '             When '+#39+'P'+#39+' Then '+#39+'Pre-Factura'+#39+
                         '             When '+#39+'F'+#39+' Then '+#39+'Facturado'+#39+
                         '             When '+#39+'C'+#39+' Then '+#39+'Cancelado'+#39+' end As Estado,'+
                         '     MonedaID,Fecha_Desde,Fecha_Hasta,ClienteID_Gen,GrupoID_Gen,Comentario,Muestrano,RecID as ID,GrupoID,NombrePaciente,Muestrano,Num_Factura,SucursalD as SucursalID,MontoFacturado As Monto '+
                         ' From NotaCredito ';
    end
    else if cboEstado.Text = 'Abierto' then
    begin
          Seleccion   := ' Select Seleccionar,U_Numero,Fecha,ClienteID,NombreCliente,'+
                         '        Case Estado When '+#39+'T'+#39+' Then '+#39+'Abierto'+#39+
                         '             When '+#39+'P'+#39+' Then '+#39+'Pre-Factura'+#39+
                         '             When '+#39+'F'+#39+' Then '+#39+'Facturado'+#39+
                         '             When '+#39+'C'+#39+' Then '+#39+'Cancelado'+#39+' end As Estado,'+
                         '     MonedaID,Fecha_Desde,Fecha_Hasta,ClienteID_Gen,GrupoID_Gen,Comentario,Muestrano,RecID as ID,GrupoID,NombrePaciente,Muestrano,Num_Factura,SucursalD as SucursalID,MontoFacturado As Monto '+
                         ' From NotaCredito '+
                         ' Where Estado = '+ #39 + 'T' + #39 ;
          cxGrid2DBTableView2.OptionsData.Editing := True;
    end
    else if cboEstado.Text = 'Pre-Factura' then
    begin
          Seleccion   := ' Select Seleccionar,U_Numero,Fecha,ClienteID,NombreCliente,'+
                         '        Case Estado When '+#39+'T'+#39+' Then '+#39+'Abierto'+#39+
                         '             When '+#39+'P'+#39+' Then '+#39+'Pre-Factura'+#39+
                         '             When '+#39+'F'+#39+' Then '+#39+'Facturado'+#39+
                         '             When '+#39+'C'+#39+' Then '+#39+'Cancelado'+#39+' end As Estado,'+
                         '     MonedaID,Fecha_Desde,Fecha_Hasta,ClienteID_Gen,GrupoID_Gen,Comentario,Muestrano,RecID as ID,GrupoID,NombrePaciente,Muestrano,Num_Factura,SucursalD as SucursalID,MontoFacturado As Monto '+
                         ' From NotaCredito '+
                       ' Where Estado = '+ #39 + 'P' + #39 ;
      cxGrid2DBTableView2.OptionsData.Editing := False;
    end
    else if cboEstado.Text = 'Facturado' then
    begin
          Seleccion   := ' Select Seleccionar,U_Numero,Fecha,ClienteID,NombreCliente,'+
                         '        Case Estado When '+#39+'T'+#39+' Then '+#39+'Abierto'+#39+
                         '             When '+#39+'P'+#39+' Then '+#39+'Pre-Factura'+#39+
                         '             When '+#39+'F'+#39+' Then '+#39+'Facturado'+#39+
                         '             When '+#39+'C'+#39+' Then '+#39+'Cancelado'+#39+' end As Estado,'+
                         '     MonedaID,Fecha_Desde,Fecha_Hasta,ClienteID_Gen,GrupoID_Gen,Comentario,Muestrano,RecID as ID,GrupoID,NombrePaciente,Muestrano,Num_Factura,SucursalD as SucursalID,MontoFacturado As Monto '+
                         ' From NotaCredito '+
                       ' Where Estado = '+ #39 + 'F' + #39;
      cxGrid2DBTableView2.OptionsData.Editing := True;
    end
    else if cboEstado.Text = 'Cancelado' then
    begin
          Seleccion   := ' Select Seleccionar,U_Numero,Fecha,ClienteID,NombreCliente,'+
                         '        Case Estado When '+#39+'T'+#39+' Then '+#39+'Abierto'+#39+
                         '             When '+#39+'P'+#39+' Then '+#39+'Pre-Factura'+#39+
                         '             When '+#39+'F'+#39+' Then '+#39+'Facturado'+#39+
                         '             When '+#39+'C'+#39+' Then '+#39+'Cancelado'+#39+' end As Estado,'+
                         '     MonedaID,Fecha_Desde,Fecha_Hasta,ClienteID_Gen,GrupoID_Gen,Comentario,Muestrano,RecID as ID,GrupoID,NombrePaciente,Muestrano,Num_Factura,SucursalD as SucursalID,MontoFacturado As Monto '+
                         ' From NotaCredito '+
                         ' Where Estado = '+ #39 + 'C' + #39;
      cxGrid2DBTableView2.OptionsData.Editing := True;
    end;
    With qrPedido,sql do
    begin
        Close;
        Sql.Text := Seleccion;
        Open;
    end;
    Buscar_Registro_Primario;
end;

procedure TfrmTransferenciaNC_SAP.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
  Var Est : String;
begin
  inherited;
    If Length(qrPedidoClienteID.Value) > 0 then
    begin
      With qrPedidoDetalle,sql do
      begin
          Close;
          SQL.Text := ' Select * From NotaCreditoDetalle '+
                      ' Where RecID in ( Select RecID From NotaCredito Where '+
                      ' Muestrano ='+#39+qrPedidoMuestrano.AsString+#39+' And ClienteID='+#39+qrPedidoClienteID.AsString+#39+' And  Fecha_Desde ='+#39+FormatDateTime('yyyymmdd', qrPedidoFecha_Desde.AsDateTime)+#39+' And Fecha_Hasta ='+#39+FormatDateTime('yyyymmdd', qrPedidoFecha_Hasta.AsDateTime)+#39+')';
          Open;
            If Recordset.RecordCount > 0 then First;
          End;
          If (qrPedidoEstado.AsString = 'Abierto') Or
             (qrPedidoEstado.AsString = 'T') then
          begin
            BorrarNotadeCredito1.Enabled :=True;
            cxGrid2DBTableView2.OptionsData.Editing := True;
            TransferirNotadeCreditoSAP1.Enabled := True;
          end
          else
          begin
            BorrarNotadeCredito1.Enabled :=False;
            cxGrid2DBTableView2.OptionsData.Editing := False;
            TransferirNotadeCreditoSAP1.Enabled := False;
          end;
    end;
end;
procedure TfrmTransferenciaNC_SAP.cxGrid1DBTableView1KeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
    If Length(qrPedidoClienteID.Value) > 0 then
    begin
      With qrPedidoDetalle,sql do
      begin
          Close;
          SQL.Text := ' Select * From NotaCreditoDetalle '+
                      ' Where RecID in ( Select RecID From NotaCredito Where '+
                      ' Muestrano ='+#39+qrPedidoMuestrano.AsString+#39+' And ClienteID='+#39+qrPedidoClienteID.AsString+#39+' And  Fecha_Desde ='+#39+FormatDateTime('yyyymmdd', qrPedidoFecha_Desde.AsDateTime)+#39+' And Fecha_Hasta ='+#39+FormatDateTime('yyyymmdd', qrPedidoFecha_Hasta.AsDateTime)+#39+')';
          Open;
            If Recordset.RecordCount > 0 then First;
          End;
          If (qrPedidoEstado.AsString = 'Abierto') Or
             (qrPedidoEstado.AsString = 'T') then
          begin
            BorrarNotadeCredito1.Enabled :=True;
            cxGrid2DBTableView2.OptionsData.Editing := True;
            TransferirNotadeCreditoSAP1.Enabled := True;
          end
          else
          begin
            BorrarNotadeCredito1.Enabled :=False;
            cxGrid2DBTableView2.OptionsData.Editing := False;
            TransferirNotadeCreditoSAP1.Enabled := False;
          end;
    end;

end;

procedure TfrmTransferenciaNC_SAP.DesmarcarTodosRegistros1Click(
  Sender: TObject);
begin
  inherited;
    if qrPedido.IsEmpty then
    begin
        if qrPedido.RecordCount > 0 then
        begin
              spMensaje.Visible :=True;
              qrPedido.First;
              While Not qrPedido.Eof do
              begin
                  qrPedido.Edit;
                  qrPedidoSeleccionar.AsBoolean:= False;
                  qrPedido.Post;
                 qrPedido.Next;
              end;
              qrPedido.First;
              qrPedido.Refresh;
              spMensaje.Visible :=False;
        end;
    end;
end;

procedure TfrmTransferenciaNC_SAP.DetalleFacturacionClick(Sender: TObject);
begin
  inherited;
    If qrPedido.RecordCount > 0 then
    Begin
        ppRptNotaCredito.DeviceType := dtScreen;
        ppRptNotaCredito.Print;
    end;
end;

procedure TfrmTransferenciaNC_SAP.AadirNotaCredito1Click(Sender: TObject);
begin
  inherited;
  spCliente.Visible := True;
end;

function TfrmTransferenciaNC_SAP.ActNotaCreditoSap : Boolean;
begin
Result := False;
Try
  with  dm.ActNotaCreditoSap, Parameters do
  begin
    ParamByName('@GrupoID').Value         := ' ';
    ParamByName('@ClienteID').Value       := qrPedidoClienteID.AsString;
    ParamByName('@RecID').Value           := qrPedidoID.AsLargeInt;
    ParamByName('@FechaInicial').Value    := FormatDateTime('yyyymmdd', qrPedidoFecha_Desde.AsDateTime);
    ParamByName('@FechaFinal').Value      := FormatDateTime('yyyymmdd', qrPedidoFecha_Hasta.AsDateTime);
    ExecProc;
    Result:= True;
  end;
  Except
    On E : Exception do
      ShowMessage(E.Message);
  End
end;
function TfrmTransferenciaNC_SAP.Busca_RecID(ClienteID : String; Estado: String) : Int64;
Var qconsulta : TADOQuery;
begin
   qconsulta := DM.NewQuery;
   With qconsulta, sql do
   begin
      Close;
      Text := ' Select Top 1 RecID from PosInterfaz.dbo.NotaCredito '+#13+
              ' Where Estado = '+#39+Estado+#39+' And ClienteID='#39+ClienteID+#39;
      Open;
   end;
  if (qconsulta.RecordCount > 0) then
    result := qconsulta.FieldByName('RecID').Value
  else
    result := 0;
  FreeAndNil(qconsulta);
end;
function TfrmTransferenciaNC_SAP.Verifica_TasaSap(Fecha : String) : Boolean;
Var qconsulta : TADOQuery;
begin
   qconsulta := DM.NewQuery;
   With qconsulta, sql do
   begin
      Close;
      Text := ' Select Top 1 Rate from '+DM.qrParametroServidor_Sap.AsString+'.dbo.ORTT Where RateDate='+#39+Fecha+#39;
      Open;
   end;
  if (qconsulta.RecordCount > 0) then
    result := True
  else
    result := False;
  FreeAndNil(qconsulta);
end;

function TfrmTransferenciaNC_SAP.Get_Estado(Estado : String) : String;
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
function TfrmTransferenciaNC_SAP.Busca_GrupoID(ClienteID : String) : String;
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
procedure TfrmTransferenciaNC_SAP.CheckAllPropertiesChange(Sender: TObject);
begin
  inherited;
    if Not qrPedidoDetalle.IsEmpty then
    begin
      If qrPedidoDetalle.RecordCount > 0 then
      begin
            NocheckAll.Checked := False;
            spMensaje.Visible :=True;
            qrPedidoDetalle.First;
            While Not qrPedidoDetalle.Eof do
            begin
                qrPedidoDetalle.Edit;
                qrPedidoDetalleSeleccionar.Asboolean := True;
                qrPedidoDetalle.Post;
                qrPedidoDetalle.Next;
            end;
            qrPedidoDetalle.First;
            qrPedidoDetalle.Refresh;
            spMensaje.Visible :=False;
      end;
    end;
end;

function TfrmTransferenciaNC_SAP.CreaID : String;
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
function TfrmTransferenciaNC_SAP.GetSecuenciaId : Int64;
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

