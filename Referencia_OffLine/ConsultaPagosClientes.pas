unit ConsultaPagosClientes;

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
  LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel, LMDSimplePanel,ppTypes,
  ppDB, ppDBPipe, ppBands, ppVar, ppCtrls, ppPrnabl, ppClass, ppCache, ppComm,
  ppRelatv, ppProd, ppReport;

type
  TfrmConsultaPagosClientes = class(TfrmCustomModule)
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
    dsPagos: TDataSource;
    dsPagosDetalle: TDataSource;
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
    cxGridDBTableView1SucursalID: TcxGridDBColumn;
    cxGridDBTableView1Fecha: TcxGridDBColumn;
    cxGridDBTableView1Usuario: TcxGridDBColumn;
    cxGridDBTableView1Recibo: TcxGridDBColumn;
    cxGridDBTableView1Hora: TcxGridDBColumn;
    cxGridDBTableView1Monto: TcxGridDBColumn;
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
    qrPagosSucursalId: TStringField;
    qrPagosFecha: TDateTimeField;
    qrPagosHora: TStringField;
    qrPagosUsuarioID: TStringField;
    qrPagosMonto: TBCDField;
    qrPagosReciboNo: TStringField;
    qrPagosNombreCliente: TStringField;
    cxGridDBTableView1NombreCliente: TcxGridDBColumn;
    qrImpCobro: TADOQuery;
    dsCobros: TDataSource;
    ppImpCobroCliente: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDBText26: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppLabel6: TppLabel;
    ppLabel25: TppLabel;
    ppDBText31: TppDBText;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppShape2: TppShape;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel38: TppLabel;
    ppLabel227: TppLabel;
    ppDBText134: TppDBText;
    ppLabel233: TppLabel;
    ppLabel234: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel235: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppLabel236: TppLabel;
    ppDBText137: TppDBText;
    ppLabel90: TppLabel;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppDBText2: TppDBText;
    ppDetailBand2: TppDetailBand;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText136: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppCobroCliente: TppDBPipeline;
    qrImpCobroNombre_Sucursal: TStringField;
    qrImpCobroResponsable: TStringField;
    qrImpCobroClienteID: TStringField;
    qrImpCobroNombre_Cliente: TStringField;
    qrImpCobroUsuarioID: TStringField;
    qrImpCobroMonedaID: TStringField;
    qrImpCobroReciboNo: TStringField;
    qrImpCobroForma_Pago: TStringField;
    qrImpCobroDescripcion: TStringField;
    qrImpCobroMonto: TBCDField;
    qrImpCobroTotal: TBCDField;
    ppDBText3: TppDBText;
    qrPagosCobroid: TStringField;
    ppSummaryBand1: TppSummaryBand;
    ppLine1: TppLine;
    ppLabel4: TppLabel;
    ppLabel259: TppLabel;
    ppLabel260: TppLabel;
    ppLabel261: TppLabel;
    ppDBText147: TppDBText;
    ppDBText148: TppDBText;
    ppDBText149: TppDBText;
    ppLabel231: TppLabel;
    ppDBText48: TppDBText;
    qrPagosDetalle: TADOQuery;
    cxGridDetallePagos: TcxGridLevel;
    qrPagosDetalleCobroid: TStringField;
    qrPagosDetalleForma_Pago: TStringField;
    qrPagosDetalleMonto: TBCDField;
    qrPagosDetalleCuadreUsuario: TStringField;
    qrPagosDetalleCuadreGlobal: TStringField;
    qrPagosDetalleDevuelta: TBCDField;
    qrPagosDetalleBancoID: TStringField;
    qrPagosDetalleNumero_Referencia: TStringField;
    qrPagosDetalleNumero_Aprobacion: TStringField;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBTableView2Cobroid: TcxGridDBColumn;
    cxGridDBTableView2Forma_Pago: TcxGridDBColumn;
    cxGridDBTableView2Monto: TcxGridDBColumn;
    cxGridDBTableView2CuadreUsuario: TcxGridDBColumn;
    cxGridDBTableView2CuadreGlobal: TcxGridDBColumn;
    cxGridDBTableView2Devuelta: TcxGridDBColumn;
    cxGridDBTableView2BancoID: TcxGridDBColumn;
    cxGridDBTableView2Numero_Referencia: TcxGridDBColumn;
    cxGridDBTableView2Numero_Aprobacion: TcxGridDBColumn;
    qrImpCobroNumero_Serial: TStringField;
    qrImpCobroFecha_Emision: TDateTimeField;
    qrImpCobroFecha_Revision: TDateTimeField;
    procedure BtImprimirClick(Sender: TObject);
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
  frmConsultaPagosClientes        : TfrmConsultaPagosClientes;
  titulo                      : String;
  adentrogrid, _buscar        : Boolean;

implementation

uses ActionsDM, cxExportGrid4Link, DataModule, Main;

{$R *.dfm}

//Buscando el Label de la Prueba Registrada.
procedure TfrmConsultaPagosClientes.FormPaint(Sender: TObject);
begin
  inherited;
  pnCaption.Caption := titulo;
  FFrameTopPanel.Caption := titulo;
  frmCustomModule.Caption := FFrameTopPanel.Caption;
end;

procedure TfrmConsultaPagosClientes.FormShow(Sender: TObject);
begin
  inherited;
  edbuscarpor.ItemIndex   := 0;
  edbuscarpor.SetFocus;
  With qrPagos, sql do
  begin
    Close;
    Clear;
    Text :='select top 0 SucursalId,Fecha,Hora,UsuarioID,TotalCobrado Monto,ReciboNo,e.Nombre As NombreCliente,c.CobroID from ptcobro c inner join ptcobrodetalle d '+
           ' on c.cobroid=d.cobroid inner join PtCliente e On c.ClienteID=e.CLIENTEID where d.FormadePagoID IN ('+#39+'PGE'+#39+','+#39+'PGT'+#39+','+#39+'PGK'+#39+')';
    Open;
  end;
  With qrPagosDetalle, sql do
  begin
    Close;
    Clear;
    Text :=' Select Top 0 Cobroid,f.Descripcion as Forma_Pago,Monto,CuadreUsuario,CuadreGlobal,Devuelta,BancoID,Numero_Referencia,'+
           ' Numero_Aprobacion from ptcobrodetalle d inner join PtFormadePago f on d.FormaDePagoID=f.FormadePagoID ';
    Open;
  end;
end;

procedure TfrmConsultaPagosClientes.edbuscarExit(Sender: TObject);
begin
  inherited;
  _buscar := True;
  adentrogrid := False;
  BuscarData;
end;

procedure TfrmConsultaPagosClientes.edbuscarporExit(Sender: TObject);
begin
  inherited;
  _buscar := True;
  adentrogrid := False;
end;

procedure TfrmConsultaPagosClientes.edbuscarporPropertiesChange(Sender: TObject);
begin
  inherited;
  if (edbuscarpor.ItemIndex = 1) Then BuscarData;
end;

procedure TfrmConsultaPagosClientes.FormCreate(Sender: TObject);
begin
  inherited;
  titulo := 'Consulta Entradas con Pagos de Clientes';
end;

procedure TfrmConsultaPagosClientes.FormDestroy(Sender: TObject);
begin
  inherited;
  frmMain.Exis_Muestra := False;
  frmMain.Muestra_Unico := False;
  frmMain.Muestra_Todos := False;  
  frmMain.Tran_fer := False;
end;
procedure TfrmConsultaPagosClientes.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmConsultaPagosClientes.SetColorTo(iColor: TColor);
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
procedure TfrmConsultaPagosClientes.BtImprimirClick(Sender: TObject);
begin
  inherited;
  qrImpCobro.Close;
  qrImpCobro.SQL.Text:=' Select s.Nombre as Nombre_Sucursal,c.Concepto as Responsable,c.ClienteID,e.Nombre as Nombre_Cliente,'+
                        ' c.UsuarioID,c.MonedaID,c.ReciboNo,d.FormaDePagoID as Forma_Pago, '+
                        '(Case d.FormaDePagoID when '+#39+'PGE'+#39+' Then '+#39+'Pago en Efectivo (RD$)'+#39+
                        ' when '+#39+'PGD'+#39+' Then '+#39+'Tarjeta de Débito'+#39+
                        ' when '+#39+'PGT'+#39+' Then '+#39+'Tarjeta de Crédito'+#39+
                        ' when '+#39+'PGK'+#39+' Then '+#39+'Cheques'+#39+
                        ' when '+#39+'PGU'+#39+' Then '+#39+'Pago en Efectivo (US$)'+#39+
                        ' End) As Descripcion,d.Monto,(Select Isnull(Sum(Monto),0) From Ptcobrodetalle Where CobroID='+#39+qrPagos.FieldByName('CobroID').AsString+#39+') As Total, '+
                        ' (Select Serial from PtSeriales Where Grupo_ID='+#39+'97'+#39+') As Numero_Serial,(Select Fecha_Emision from PtSeriales Where Grupo_ID='+#39+'97'+#39+') As Fecha_Emision,' +
                        ' (Select Fecha_Revision from PtSeriales Where Grupo_ID='+#39+'97'+#39+') As Fecha_Revision '+
                        ' From ptcobro c inner join ptcliente e on c.clienteid=e.ClienteID '+
                        ' inner join ptSucursal s on c.SucursalID=s.SucursalID inner join PTCobroDetalle d on c.CobroID=d.CobroID '+
                        ' WHERE c.cobroid='+#39+qrPagos.FieldByName('CobroID').AsString+#39;
  qrImpCobro.Open;
  if qrImpCobro.RecordCount > 0 then
  begin
    ppImpCobroCliente.PrinterSetup.Copies := 3;
    ppImpCobroCliente.DeviceType := dtScreen;
    ppImpCobroCliente.Print;
  end;
end;

procedure TfrmConsultaPagosClientes.BuscarData;
var
 sqlString,sqlString2 : String;
begin
 DM.qrParametro.close;
 DM.qrParametro.open;

 If ((dtFechaIni.Text = Emptystr) and (dtFechaIni.Text = Emptystr)) And (edbuscarpor.ItemIndex=1) then
 Begin
      EtMensajeDlg('Fecha de Inicio y Fecha Fin NO fueron digitadas.  Verifique.', etError, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
      Exit;
 end;

 sqlString := 'select distinct SucursalId,Fecha,Hora,UsuarioID,TotalCobrado Monto,ReciboNo, e.Nombre As NombreCliente,c.Cobroid from ptcobro c inner join ptcobrodetalle d on c.cobroid=d.cobroid '+
              ' inner join PtCliente e On c.ClienteID=e.CLIENTEID  where d.FormadePagoID IN ('+#39+'PGE'+#39+','+#39+'PGT'+#39+','+#39+'PGK'+#39+')';

 If Not((dtFechaIni.Text = Emptystr) and (dtFechaIni.Text = Emptystr)) then
 begin
    sqlString := sqlString + ' AND c.Fecha Between '+#39+formatdatetime('yyyymmdd',dtFechaini.date)+#39+' And  '+#39+formatdatetime('yyyymmdd',dtFechaFin.date)+#39;
 end;

 If (edbuscar.Text <> '') or (edbuscarpor.ItemIndex=1) then begin
   case edbuscarpor.ItemIndex of
     0 : sqlString := sqlString + ' AND c.UsuarioID like '+#39+'%'+edbuscar.Text+'%'+#39;
     2 : sqlString := sqlString;
   end;
 end;

 If ((dtFechaIni.Text = Emptystr) and (dtFechaIni.Text = Emptystr)) And
     (frmMain.Exis_Cap = False) And
     (frmMain.Exis_Lab = False) And
     (Trim(edbuscar.Text) = EmptyStr) And (Length(Trim(edbuscar.Text))<1) And
    Not((edbuscarpor.ItemIndex=1))
     then
 begin
      EtMensajeDlg('Debe escribir criterio de búsqueda más exacto en el Texto.  Verifique.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
      edbuscar.SetFocus;
      Exit;
 end;
 qrPagos.Close;
 qrPagos.SQL.Text := sqlString + ' ORDER BY c.Fecha Desc, c.Hora Desc ';
 qrPagos.Open;
 if qrPagos.RecordCount > 0 then
 begin
     if edbuscarpor.ItemIndex = 0 then
     begin
       With qrPagosDetalle, sql do
       begin
         Close;
         Clear;
         Text :=' Select Cobroid,Case FormaDePagoID When '+#39+'PGE'+#39+' Then '+#39+'Pago en Efectivo (RD $).'+#39+
                                   ' When '+#39+'PGT'+#39+' Then '+#39+'Tarjeta de Credito.'+#39+
                                   ' When '+#39+'PGD'+#39+' Then '+#39+'Tarjeta de Debito.'+#39+
                                   ' When '+#39+'PGK'+#39+' Then '+#39+'Cheques.'+#39+' End As Forma_Pago, '+
                   ' Monto,CuadreUsuario,CuadreGlobal,Devuelta,BancoID,Numero_Referencia, '+
                   ' Numero_Aprobacion from ptcobrodetalle d '+
                   ' Where d.Orden='+#39+'8'+#39+' and d.CobroID in (Select cobroid from PTCobro Where UsuarioID='+#39+edbuscar.Text+#39+')';
         Open;
       end
     end
     else
     if edbuscarpor.ItemIndex = 1 then
     begin
       With qrPagosDetalle, sql do
       begin
       With qrPagosDetalle, sql do
       begin
         Close;
         Clear;
         Text :=' Select Cobroid,Case FormaDePagoID When '+#39+'PGE'+#39+' Then '+#39+'Pago en Efectivo (RD $).'+#39+
                                   ' When '+#39+'PGT'+#39+' Then '+#39+'Tarjeta de Credito.'+#39+
                                   ' When '+#39+'PGD'+#39+' Then '+#39+'Tarjeta de Debito.'+#39+
                                   ' When '+#39+'PGK'+#39+' Then '+#39+'Cheques.'+#39+' End As Forma_Pago, '+
                   ' Monto,CuadreUsuario,CuadreGlobal,Devuelta,BancoID,Numero_Referencia, '+
                   ' Numero_Aprobacion from ptcobrodetalle d '+
                   ' Where d.Orden='+#39+'8'+#39+' and d.CobroID in (Select cobroid from PTCobro Where Fecha between '+#39+FormatDateTime('yyyymmdd', dtFechaIni.Date)+#39+ ' AND '+#39+FormatDateTime('yyyymmdd', dtFechaFin.Date)+#39+')';
         Open;
       end
     end;
   end;
 end;
end;
END.

