unit DialogConsultaPruebas;

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
  TfrmDialogConsultaPruebas = class(TfrmDialogConsulta)
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
    JvMemoryData1CodigoIDAS400: TStringField;
    JvMemoryData2CodigoIDAS400: TStringField;
    cxLabel1: TcxLabel;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Item8: TdxLayoutItem;
    qrPruebasSEXO: TIntegerField;
    qrPruebasAYUNA: TBooleanField;
    dbDatosAyuna: TcxGridDBColumn;
    JvMemoryData1Ayuna: TBooleanField;
    qrPruebasGPrecio: TStringField;
    dbDatosGPrecio: TcxGridDBColumn;
    JvMemoryData1GPrecio: TStringField;
    qrPruebasCOMENTARIO_REQ: TIntegerField;
    qrPruebasCOD_SEC_PRUEBA: TIntegerField;
    qrPruebasRECID: TLargeintField;
    dbDatosTipoPrueba: TcxGridDBColumn;
    JvMemoryData1TipoPrueba: TStringField;
    procedure dbDatosStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
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
    procedure BuscarData_Envase(PruebaID : String);
    Function Verifica_Seleccion : Boolean;
    Function Verifica_Pruebas_Aceptadas: Boolean;
    Function Verifica_Pruebas_Aceptadas_IDAS400: Boolean;
    Function Verifica_Seleccion_AS400: Boolean;
    Function Verifica_Prueba_Entrada(PruebaID : String; Muestrano : String):Boolean;
    Function Busca_Prueba_Coprologico(ClienteID : String;PruebaID : String):Boolean;
    Function Busqueda_Grupo_Cliente(ClienteID : String;PruebaID : String):String;
    Function Verifica_Pruebas_Equivalentes(PruebaID : String):String;

  private
    { Private declarations }
    GrupoPrecio,Gprivado,SucursalID,Origen,ClienteID,sqlString,ClaseCredito,ClienteID2,RecID2 : String;
  public
    { Public declarations }
    ayuna             : TcxStyle;
    normal            : TcxStyle;
    noseguro          : TcxStyle;
    noseguroayuna     : TcxStyle;
    procedure Run;
  end;

var
  frmDialogConsultaPruebas: TfrmDialogConsultaPruebas;
  adentrogrid : Boolean;

implementation

uses DataModule, UInterfaseAs400, Main;

{$R *.dfm}


procedure TfrmDialogConsultaPruebas.BuscarData;
begin
  sqlString:=EmptyStr;
  If edbuscar.Text <> '' then
  begin    case edbuscarpor.ItemIndex of
     0 : sqlString := sqlString + 'PruebaID LIKE '+#39+'%'+edbuscar.Text+'%'+#39;
     1 : sqlString := sqlString + 'Descripcion LIKE '+#39+'%'+edbuscar.Text+'%'+#39;
    end;
  end;

 //Filtrando las Pruebas del Exterior
  If Factura_St = 'I' Then
  begin
     If (frmMain.Exis_Vta = True) And (frmMain.frmTmp.qrEntradaPacienteFactExterior.Value = 1) Then
       sqlString := sqlString + ' Exterior = '+ #39 + '1' + #39;
  end else if Factura_St = 'M' Then
  begin
     If (frmMain.Exis_Vta = True) And (frmMain.frmTmpMod.qrEntradaPacienteFactExterior.Value = 1) Then
       sqlString := sqlString + ' Exterior = '+ #39 + '1' + #39;
  end else if Factura_St = 'L' Then
  begin
     If (frmMain.Exis_Vta = True) And (frmMain.frmTmpLab.qrEntradaPacienteFactExterior.Value = 1) Then
       sqlString := sqlString + ' Exterior = '+ #39 + '1' + #39;
  end else if Factura_St = 'C' Then
  begin
     If (frmMain.Exis_Vta = True) And (frmMain.frmClinica.qrEntradaPacienteFactExterior.Value = 1) Then
       sqlString := sqlString + ' Exterior = '+ #39 + '1' + #39;
  end else if Factura_St = 'F' Then
  begin
     If (frmMain.Exis_Vta = True) And (frmMain.frmTmpND.qrEntradaPacienteFactExterior.Value = 1) Then
       sqlString := sqlString + ' Exterior = '+ #39 + '1' + #39;
  end;


 //Filtrando las Pruebas del Exterior
  if Factura_St = 'I' Then
  begin
     If (frmMain.Exis_Cli = True) And (frmMain.frmClinica.qrEntradaPacienteFactExterior.Value = 1) Then
       sqlString := sqlString + ' Exterior = '+ #39 + '1' + #39;
  end else if Factura_St = 'M' Then
  begin
     If (frmMain.Exis_Cli = True) And (frmMain.frmClinica.qrEntradaPacienteFactExterior.Value = 1) Then
       sqlString := sqlString + ' Exterior = '+ #39 + '1' + #39;
  end else if Factura_St = 'L' Then
  begin
     If (frmMain.Exis_Cli = True) And (frmMain.frmClinica.qrEntradaPacienteFactExterior.Value = 1) Then
       sqlString := sqlString + ' Exterior = '+ #39 + '1' + #39;
  end else if Factura_St = 'C' Then
  begin
     If (frmMain.Exis_Cli = True) And (frmMain.frmClinica.qrEntradaPacienteFactExterior.Value = 1) Then
       sqlString := sqlString + ' Exterior = '+ #39 + '1' + #39;
  end else if Factura_St = 'F' Then
  begin
     If (frmMain.Exis_Cli = True) And (frmMain.frmClinica.qrEntradaPacienteFactExterior.Value = 1) Then
       sqlString := sqlString + ' Exterior = '+ #39 + '1' + #39;
  end;
  with qrPruebas,sql do
  begin
      Filtered := False;
        case edbuscarpor.ItemIndex of
          0 : Filter := sqlString + ' OR ' +'PruebaID = NULL';
          1 : Filter := sqlString + ' OR ' +'Descripcion = NULL';
        end;
      Filtered := True;
  end;
  With qrPruebas,sql do
  begin
    First;
    DsDatos.Enabled := False;
    if not JvMemoryData1.Active then
      JvMemoryData1.Active := true;
    JvMemoryData1.EmptyTable;
    while not eof do
    begin
       JvMemoryData1.Append;
       JvMemoryData1Seleccion.AsBoolean       := False;
       JvMemoryData1PruebaID.AsString         := fieldbyname('PruebaID').AsString;
       JvMemoryData1Descripcion.AsString      := fieldbyname('Descripcion').AsString;
       JvMemoryData1Precio.AsFloat            := fieldbyname('Precio').Asfloat;
       JvMemoryData1PrecioDolares.AsFloat     := fieldbyname('PrecioDolares').Asfloat;
       JvMemoryData1CodigoIDAS400.AsString    := FormatFloat('00000000', FieldByName('CodigoIDAS400').AsInteger);
       JvMemoryData1Ayuna.AsBoolean           := fieldbyname('Ayuna').AsBoolean;
       JvMemoryData1GPrecio.AsString          := FieldByName('GPrecio').AsString;
       JvMemoryData1TipoPrueba.AsString       := FieldByName('Tipo').AsString;
       Next;
    end;
    JvMemoryData1.First;
    DsDatos.Enabled := True;
  End;
end;


procedure TfrmDialogConsultaPruebas.Run;
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
            if Factura_St = 'I' Then
            begin
               frmMain.frmTmp.qrEntradaPacienteDetalle.Insert;
               frmMain.frmTmp.qrEntradaPacienteDetalleCodigoAs400.Value   := JvMemoryData2CodigoIDAS400.Value;
               frmMain.frmTmp.qrEntradaPacienteDetallePruebaID.Value      := JvMemoryData2PruebaID.Value;
               if frmMain.frmTmp.qrEntradaPacienteDetalle.State in [dsEdit, dsInsert] then
               Begin
                  frmMain.frmTmp.qrEntradaPacienteDetalle.Post;
               End
            end
            else
            if Factura_St = 'M' Then
            begin
               frmMain.frmTmpMod.qrEntradaPacienteDetalle.Insert;
               frmMain.frmTmpMod.qrEntradaPacienteDetalleCodigoAs400.Value    := JvMemoryData2CodigoIDAS400.Value;
               frmMain.frmTmpMod.qrEntradaPacienteDetallePruebaID.Value       := JvMemoryData2PruebaID.Value;
               if frmMain.frmTmpMod.qrEntradaPacienteDetalle.State in [dsEdit, dsInsert] then
               Begin
                  frmMain.frmTmpMod.qrEntradaPacienteDetalle.Post;
               End;
            end
            else
            if Factura_St = 'L' Then
            begin
               frmMain.frmTmpLab.qrEntradaPacienteDetalle.Insert;
               frmMain.frmTmpLab.qrEntradaPacienteDetalleCodigoAs400.Value      := JvMemoryData2CodigoIDAS400.Value;
               frmMain.frmTmpLab.qrEntradaPacienteDetallePruebaID.Value         := JvMemoryData2PruebaID.Value;
               if frmMain.frmTmpLab.qrEntradaPacienteDetalle.State in [dsEdit, dsInsert] then
               Begin
                  frmMain.frmTmpLab.qrEntradaPacienteDetalle.Post;
               End;
            end
            else
            if Factura_St = 'C' Then
            begin
               frmMain.frmClinica.qrEntradaPacienteDetalle.Insert;
               frmMain.frmClinica.qrEntradaPacienteDetalleCodigoAs400.Value   := JvMemoryData2CodigoIDAS400.Value;
               frmMain.frmClinica.qrEntradaPacienteDetallePruebaID.Value  := JvMemoryData2PruebaID.Value;
               if frmMain.frmClinica.qrEntradaPacienteDetalle.State in [dsEdit, dsInsert] then
               Begin
                  frmMain.frmClinica.qrEntradaPacienteDetalle.Post;
               End;
            end
            else
            if Factura_St = 'F' Then
            begin
               frmMain.frmTmpND.qrEntradaPacienteDetalle.Insert;
               frmMain.frmTmpND.qrEntradaPacienteDetalleCodigoAs400.Value   := JvMemoryData2CodigoIDAS400.Value;
               frmMain.frmTmpND.qrEntradaPacienteDetallePruebaID.Value  := JvMemoryData2PruebaID.Value;
               if frmMain.frmTmpND.qrEntradaPacienteDetalle.State in [dsEdit, dsInsert] then
               Begin
                  frmMain.frmTmpND.qrEntradaPacienteDetalle.Post;
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

procedure TfrmDialogConsultaPruebas.cgDatosEnter(Sender: TObject);
begin
  inherited;
  adentrogrid := true;
end;

procedure TfrmDialogConsultaPruebas.cgDatosExit(Sender: TObject);
begin
  inherited;
  adentrogrid := false;
end;

procedure TfrmDialogConsultaPruebas.dbDatosEditValueChanged(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem);
begin
  inherited;
  Seleccion_Pruebas;
end;

procedure TfrmDialogConsultaPruebas.dbDatosStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;
    if ARecord.Values[dbDatosAyuna.Index] = True then
        AStyle := Ayuna
     else if ARecord.Values[dbDatosTipoPrueba.Index] = 'C' then
        AStyle := cxStyle107
     else
        AStyle := normal;
    If (ARecord.Values[dbDatosGPrecio.Index] = '0') Then
    begin
        AStyle := noseguro;
        If ARecord.Values[dbDatosAyuna.Index] = True then AStyle := noseguroayuna;
    end;
end;

procedure TfrmDialogConsultaPruebas.edbuscarExit(Sender: TObject);
begin
  inherited;
  if (edbuscar.Text <> '') then
    BuscarData;
end;

procedure TfrmDialogConsultaPruebas.edbuscarPropertiesChange(Sender: TObject);
begin
  inherited;
  if (edbuscar.Text <> '') then
    BuscarData;
end;

procedure TfrmDialogConsultaPruebas.FormCreate(Sender: TObject);
Var qgprecio    : TAdoQuery;
    strSql      : AnsiString;
    Fecha       : String;
    strExPrueba : String;
begin
  inherited;

    if Factura_St = 'I' Then
    begin
           GrupoPrecio  := Dm.Buscar_GrupoPrecio(frmMain.frmTmp.qrEntradaPacienteClienteID.Value);
           Gprivado     := Dm.GrupoPrivado(frmMain.frmTmp.qrEntradaPacienteSucursalId.Value);
           SucursalID   := frmMain.frmTmp.qrEntradaPacienteSucursalID.Value;
           Origen       := frmMain.frmTmp.qrEntradaPacienteOrigen.Value;
           ClienteID2   := frmMain.frmTmp.qrEntradaPacienteClienteID.Value;
           RecID2       := frmMain.frmTmp.qrEntradaPacienteRecID.AsString;
           Fecha        := FormatDateTime('yyyymmdd',frmMain.frmTmp.qrEntradaPacienteFecha.AsDateTime);
           if GrupoPrecio <> EmptyStr then
              ClienteID := GrupoPrecio
           else
              ClienteID := frmMain.frmTmp.qrEntradaPacienteClienteID.Value;
           ClaseCredito := frmMain.frmTmp.qrEntradaPacienteClaseCredito.Value;
           dm.GrupoPrecioPriv := Dm.GrupoPrecioPrivado(frmMain.frmTmp.qrEntradaPacienteSucursalId.Value)
    end
    else
    if Factura_St = 'M' Then
    begin
         GrupoPrecio  := Dm.Buscar_GrupoPrecio(frmMain.frmTmpMod.qrEntradaPacienteClienteID.Value);
         Gprivado     := Dm.GrupoPrivado(frmMain.frmTmpMod.qrEntradaPacienteSucursalID.Value);
         SucursalID   := frmMain.frmTmpMod.qrEntradaPacienteSucursalID.Value;
         Origen       := frmMain.frmTmpMod.qrEntradaPacienteOrigen.Value;
         ClienteID2   := frmMain.frmTmpMod.qrEntradaPacienteClienteID.Value;
         RecID2       := frmMain.frmTmpMod.qrEntradaPacienteRecID.AsString;
         Fecha        := FormatDateTime('yyyymmdd',frmMain.frmTmpMod.qrEntradaPacienteFecha.AsDateTime);
         if GrupoPrecio <> EmptyStr then
            ClienteID := GrupoPrecio
         else
            ClienteID    := frmMain.frmTmpMod.qrEntradaPacienteClienteID.Value;
         ClaseCredito := frmMain.frmTmpMod.qrEntradaPacienteClaseCredito.Value;
//         If frmMain.frmTmpMod.qrEntradaPacienteSucursalId.Value <> dm.CurSucursal then
         dm.GrupoPrecioPriv := Dm.GrupoPrecioPrivado(frmMain.frmTmpMod.qrEntradaPacienteSucursalId.Value)
//         if (GPrivado = '1') And (frmMain.frmTmpMod.qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoPriv.Value) Then GrupoPrecio:='2';
//         if (GPrivado = '2') And (frmMain.frmTmpMod.qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoPriv.Value) Then GrupoPrecio:='18';
    end
    else
    if Factura_St = 'L' Then
    begin
         GrupoPrecio  := Dm.Buscar_GrupoPrecio(frmMain.frmTmpLab.qrEntradaPacienteClienteID.Value);
         Gprivado     := Dm.GrupoPrivado(frmMain.frmTmpLab.qrEntradaPacienteSucursalID.Value);
         SucursalID   := frmMain.frmTmpLab.qrEntradaPacienteSucursalID.Value;
         Origen       := frmMain.frmTmpLab.qrEntradaPacienteOrigen.Value;
         ClienteID2   := frmMain.frmTmpLab.qrEntradaPacienteClienteID.Value;
         RecID2       := frmMain.frmTmpLab.qrEntradaPacienteRecID.AsString;
         Fecha        := FormatDateTime('yyyymmdd',frmMain.frmTmpLab.qrEntradaPacienteFecha.AsDateTime);
         if GrupoPrecio <> EmptyStr then
            ClienteID := GrupoPrecio
         else
            ClienteID := frmMain.frmTmpLab.qrEntradaPacienteClienteID.Value;
         ClaseCredito := frmMain.frmTmpLab.qrEntradaPacienteClaseCredito.Value;
//         If frmMain.frmTmpLab.qrEntradaPacienteSucursalId.Value <> dm.CurSucursal then
         dm.GrupoPrecioPriv := Dm.GrupoPrecioPrivado(frmMain.frmTmpLab.qrEntradaPacienteSucursalId.Value)
//         if (GPrivado = '1') And (frmMain.frmTmpLab.qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoPriv.Value) Then GrupoPrecio:='2';
//         if (GPrivado = '2') And (frmMain.frmTmpLab.qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoPriv.Value) Then GrupoPrecio:='18';
    end
    else
    if Factura_St = 'C' Then
    begin
         GrupoPrecio  := Dm.Buscar_GrupoPrecio(frmMain.frmClinica.qrEntradaPacienteClienteID.Value);
         Gprivado     := Dm.GrupoPrivado(frmMain.frmClinica.qrEntradaPacienteSucursalID.Value);
         SucursalID   := frmMain.frmClinica.qrEntradaPacienteSucursalID.Value;
         Origen       := frmMain.frmClinica.qrEntradaPacienteOrigen.Value;
         ClienteID2   := frmMain.frmClinica.qrEntradaPacienteClienteID.Value;
         RecID2       := frmMain.frmClinica.qrEntradaPacienteRecID.AsString;
         Fecha        := FormatDateTime('yyyymmdd',frmMain.frmClinica.qrEntradaPacienteFecha.AsDateTime);
         if GrupoPrecio <> EmptyStr then
            ClienteID := GrupoPrecio
         else
            ClienteID    := frmMain.frmClinica.qrEntradaPacienteClienteID.Value;
         ClaseCredito := frmMain.frmClinica.qrEntradaPacienteClaseCredito.Value;
//         If frmMain.frmClinica.qrEntradaPacienteSucursalId.Value <> dm.CurSucursal then
         dm.GrupoPrecioPriv := Dm.GrupoPrecioPrivado(frmMain.frmClinica.qrEntradaPacienteSucursalId.Value)
//         if (GPrivado = '1') And (frmMain.frmClinica.qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoPriv.Value) Then GrupoPrecio:='2';
//         if (GPrivado = '2') And (frmMain.frmClinica.qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoPriv.Value) Then GrupoPrecio:='18';
    end
    else
    if Factura_St = 'F' Then
    begin
         GrupoPrecio  := Dm.Buscar_GrupoPrecio(frmMain.frmTmpND.qrEntradaPacienteClienteID.Value);
         Gprivado     := Dm.GrupoPrivado(frmMain.frmTmpND.qrEntradaPacienteSucursalID.Value);
         SucursalID   := frmMain.frmTmpND.qrEntradaPacienteSucursalID.Value;
         Origen       := frmMain.frmTmpND.qrEntradaPacienteOrigen.Value;
         ClienteID2   := frmMain.frmTmpND.qrEntradaPacienteClienteID.Value;
         RecID2       := frmMain.frmTmpND.qrEntradaPacienteRecID.AsString;
         Fecha        := FormatDateTime('yyyymmdd',frmMain.frmTmpND.qrEntradaPacienteFecha.AsDateTime);
         if GrupoPrecio <> EmptyStr then
            ClienteID := GrupoPrecio
         else
            ClienteID    := frmMain.frmTmpND.qrEntradaPacienteClienteID.Value;
         ClaseCredito := frmMain.frmTmpND.qrEntradaPacienteClaseCredito.Value;
//         If frmMain.frmTmpND.qrEntradaPacienteSucursalId.Value <> dm.CurSucursal then
         dm.GrupoPrecioPriv := Dm.GrupoPrecioPrivado(frmMain.frmTmpND.qrEntradaPacienteSucursalId.Value)
//         if (GPrivado = '1') And (frmMain.frmTmpND.qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoPriv.Value) Then GrupoPrecio:='2';
//         if (GPrivado = '2') And (frmMain.frmTmpND.qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoPriv.Value) Then GrupoPrecio:='18';
    end;

//  If (frmMain.frmTmp.qrEntradaPacienteGrupoPrecio.Value = '') Then
//  Begin
//      if GPrivado = '1' Then GrupoPrecio:='2';
//  end;
  If ((Origen = dm.qrParametroGrupoCia.Value)) Or
      (Origen = dm.qrParametroGrupoProy.Value) Or
      (Origen = dm.qrParametroGrupoOtro.Value) then
  begin

      With qrPruebas,sql do
      begin
        Close;
        Clear;
        strSql:='SELECT     p.PRUEBAID, p.ALIAS, p.DESCRIPCION, p.ESTATUS, p.GRUPOPRUEBAID, p.DEPARTAMENTO, p.PRECIO, p.PERMITECAMBIOPRECIO,';
        strSql:=strSql+'  p.CODIGOAXAPTA, p.PRECIODOLARES, p.COSTO, EXTERIOR, FACTURARCABECERA, p.PRUEBAS, p.TIPO, p.ORINA, p.SANGRE, p.CONDPACIENTE,';
        strSql:=strSql+' p.CONDMUESTRA, p.CODDIAPROC, p.DIASRESULTADO, p.UNIDAD, p.ABREVIACION, p.MEDIO, p.COLOR, p.DEPID, p.TIPOAS400,';
        strSql:=strSql+' CONVERT(VARCHAR(10), CASE p.CODIGOIDAS400 WHEN NULL THEN 0 WHEN '+#39+#39+' THEN 0 ELSE p.CODIGOIDAS400 END) AS CODIGOIDAS400,';
        strSql:=strSql+' p.MEDIOAS400, p.NOPROCESAR, p.COMENTARIONOPROCESAR, p.TIPOMUESTRA, p.COMENTARIO_REQ, p.COD_SEC_PRUEBA, p.DATAAREAID,';
        strSql:=strSql+' p.RECID, p.SEXO, p.AYUNA,'+#39+'1'+#39+' as GPrecio';
        if Factura_St = 'I' Then
        begin
//                strSql:=strSql+' FROM     ptprueba p Where Descripcion like  '+#39+'%'+dm.Buscar_Cadenas(frmMain.frmTmp.qrEntradaPacienteClienteNombre.Value)+'%'+#39;
                strSql:=strSql+' FROM       ptprueba p Where p.Estatus='+#39+'1'+#39+' and Clienteid ='+#39+frmMain.frmTmp.qrEntradaPacienteClienteID.Value+#39;
                strExPrueba:=dm.Pruebas_Exclusion(frmMain.frmTmp.qrEntradaPacienteOrigen.Value,frmMain.frmTmp.qrEntradaPacienteClienteID.Value);
        end
        else
        if Factura_St = 'M' Then
        begin
//                strSql:=strSql+' FROM     ptprueba p Where Descripcion like  '+#39+'%'+dm.Buscar_Cadenas(frmMain.frmTmpMod.qrEntradaPacienteClienteNombre.Value)+'%'+#39;
                strSql:=strSql+' FROM       ptprueba p Where p.Estatus='+#39+'1'+#39+' and Clienteid ='+#39+frmMain.frmTmpMod.qrEntradaPacienteClienteID.Value+#39;
                strExPrueba:=dm.Pruebas_Exclusion(frmMain.frmTmpMod.qrEntradaPacienteOrigen.Value,frmMain.frmTmpMod.qrEntradaPacienteClienteID.Value);
        end
        else
        if Factura_St = 'L' Then
        begin
//                strSql:=strSql+' FROM     ptprueba p Where Descripcion like '+#39+'%'+dm.Buscar_Cadenas(frmMain.frmTmpLab.qrEntradaPacienteClienteNombre.Value)+'%'+#39;
                strSql:=strSql+' FROM       ptprueba p Where p.Estatus='+#39+'1'+#39+' and Clienteid ='+#39+frmMain.frmTmpLab.qrEntradaPacienteClienteID.Value+#39;
                strExPrueba:=dm.Pruebas_Exclusion(frmMain.frmTmpLab.qrEntradaPacienteOrigen.Value,frmMain.frmTmpLab.qrEntradaPacienteClienteID.Value);
        end
        else
        if Factura_St = 'C' Then
        begin
//                strSql:=strSql+' FROM     ptprueba p Where Descripcion like  '+#39+'%'+dm.Buscar_Cadenas(frmMain.frmClinica.qrEntradaPacienteClienteNombre.Value)+'%'+#39;
                strSql:=strSql+' FROM       ptprueba p Where p.Estatus='+#39+'1'+#39+' and clienteid ='+#39+frmMain.frmClinica.qrEntradaPacienteClienteID.Value+#39;
                strExPrueba:=dm.Pruebas_Exclusion(frmMain.frmClinica.qrEntradaPacienteOrigen.Value,frmMain.frmClinica.qrEntradaPacienteClienteID.Value);
        end
        else
        if Factura_St = 'F' Then
        begin
//                strSql:=strSql+' FROM     ptprueba p Where Descripcion like '+#39+'%'+dm.Buscar_Cadenas(frmMain.frmTmpND.qrEntradaPacienteClienteNombre.Value)+'%'+#39;
                strSql:=strSql+' FROM       ptprueba p Where p.Estatus='+#39+'1'+#39+' and clienteid ='+#39+frmMain.frmTmpND.qrEntradaPacienteClienteID.Value+#39;
                strExPrueba:=dm.Pruebas_Exclusion(frmMain.frmTmpND.qrEntradaPacienteOrigen.Value,frmMain.frmTmpND.qrEntradaPacienteClienteID.Value);
        end;

        strSql:=strSql+' UNION ALL ';

        strSql:=strSql+' SELECT     p.PRUEBAID, p.ALIAS, p.DESCRIPCION, p.ESTATUS, p.GRUPOPRUEBAID, p.DEPARTAMENTO, a.PRECIO, p.PERMITECAMBIOPRECIO,';
        strSql:=strSql+'  p.CODIGOAXAPTA, p.PRECIODOLARES, p.COSTO, EXTERIOR, FACTURARCABECERA, p.PRUEBAS, p.TIPO, p.ORINA, p.SANGRE, p.CONDPACIENTE,';
        strSql:=strSql+' p.CONDMUESTRA, p.CODDIAPROC, p.DIASRESULTADO, p.UNIDAD, p.ABREVIACION, p.MEDIO, p.COLOR, p.DEPID, p.TIPOAS400,';
        strSql:=strSql+' CONVERT(VARCHAR(10), CASE p.CODIGOIDAS400 WHEN NULL THEN 0 WHEN '+#39+#39+' THEN 0 ELSE p.CODIGOIDAS400 END) AS CODIGOIDAS400,';
        strSql:=strSql+'  p.MEDIOAS400, p.NOPROCESAR, p.COMENTARIONOPROCESAR, p.TIPOMUESTRA, p.COMENTARIO_REQ, p.COD_SEC_PRUEBA, p.DATAAREAID,';
        strSql:=strSql+'  p.RECID, p.SEXO, p.AYUNA,'+#39+'1'+#39+' as GPrecio';
        strSql:=strSql+' FROM       PTACUERDOCOMERCIAL a Inner Join ptprueba p ON a.pruebarelation = p.pruebaid ';
        strSql:=strSql+' WHERE p.Estatus='+#39+'1'+#39+' and convert(varchar(08),'+#39+Fecha+#39+',112) Between convert(varchar(08),a.desde,112) And convert(varchar(08),a.hasta,112)';
        strSql:=strSql+' AND p.dataareaid = a.dataareaid ';
        strSql:=strSql+' AND a.clienterelation = '+#39+ClienteID+#39;
        strSql:=strSql+' And a.desde in (SELECT max(desde) FROM PTACUERDOCOMERCIAL ';
        strSql:=strSql+' WHERE CLIENTERELATION='+#39+ClienteID+#39;
        strSql:=strSql+' And Pruebarelation=p.pruebaid ';
        strSql:=strSql+' And Convert(varchar(08),'+#39+Fecha+#39+',112) Between convert(varchar(08),desde,112) And convert(varchar(08),hasta,112))';
        strSql:=strSql+' And a.RECID in (SELECT max(RECID) FROM PTACUERDOCOMERCIAL';
        strSql:=strSql+' WHERE CLIENTERELATION='+#39+ClienteID+#39;
        strSql:=strSql+' And Pruebarelation=p.pruebaid ';
        strSql:=strSql+' And Convert(varchar(08),'+#39+Fecha+#39+',112) Between convert(varchar(08),desde,112) And convert(varchar(08),hasta,112))';
//        strSql:=strSql+' And        Not PruebaID In '+strExPrueba;

        strSql:=strSql+' UNION ALL ';

        strSql:=strSql+' SELECT     PRUEBAID, ALIAS, DESCRIPCION, ESTATUS, GRUPOPRUEBAID, DEPARTAMENTO, a.PRECIO, PERMITECAMBIOPRECIO, CODIGOAXAPTA,';
        strSql:=strSql+' PRECIODOLARES, p.COSTO, EXTERIOR, FACTURARCABECERA, PRUEBAS, TIPO, ORINA, SANGRE, CONDPACIENTE, CONDMUESTRA, CODDIAPROC,';
        strSql:=strSql+' DIASRESULTADO, UNIDAD, ABREVIACION, MEDIO, COLOR, DEPID, TIPOAS400, CONVERT(VARCHAR(10), CASE CODIGOIDAS400 WHEN NULL ';
        strSql:=strSql+' THEN 0 WHEN '+#39+#39+' THEN 0 ELSE CODIGOIDAS400 END) AS CODIGOIDAS400, MEDIOAS400, NOPROCESAR, COMENTARIONOPROCESAR, TIPOMUESTRA,';
        strSql:=strSql+' COMENTARIO_REQ, COD_SEC_PRUEBA, p.DATAAREAID, p.RECID, SEXO, AYUNA,'+#39+'0'+#39+' as GPrecio  ';
        strSql:=strSql+' FROM PTACUERDOCOMERCIAL a Inner Join ptprueba p ON a.pruebarelation = p.pruebaid ';
        strSql:=strSql+' WHERE p.Estatus='+#39+'1'+#39+' and CONVERT(varchar(08),'+#39+Fecha+#39+',112) Between convert(varchar(08),a.desde,112) And convert(varchar(08),a.hasta,112)';
        strSql:=strSql+' AND p.dataareaid = a.dataareaid ';
        strSql:=strSql+' AND a.clienterelation = '+#39+dm.GrupoPrecioPriv+#39;
        strSql:=strSql+' And a.desde in (SELECT max(desde) FROM PTACUERDOCOMERCIAL ';
        strSql:=strSql+' WHERE CLIENTERELATION='+#39+dm.GrupoPrecioPriv+#39;
        strSql:=strSql+' And Pruebarelation=p.pruebaid ';
        strSql:=strSql+' And Convert(varchar(08),'+#39+Fecha+#39+',112) Between convert(varchar(08),desde,112) And convert(varchar(08),hasta,112))';
        strSql:=strSql+' And a.RECID in (SELECT max(RECID) FROM PTACUERDOCOMERCIAL';
        strSql:=strSql+' WHERE CLIENTERELATION='+#39+dm.GrupoPrecioPriv+#39;
        strSql:=strSql+' And Pruebarelation=p.pruebaid ';
        strSql:=strSql+' And Convert(varchar(08),'+#39+Fecha+#39+',112) Between convert(varchar(08),desde,112) And convert(varchar(08),hasta,112))';
        If Trim(strExPrueba) <> EmptyStr then
           strSql:=strSql+' And        Not PruebaID In '+strExPrueba;

        strSql:=strSql+' UNION ALL ';

        strSql:=strSql+' SELECT PRUEBAID, ALIAS, DESCRIPCION, ESTATUS, GRUPOPRUEBAID, DEPARTAMENTO, PRECIO, PERMITECAMBIOPRECIO, CODIGOAXAPTA,';
        strSql:=strSql+' PRECIODOLARES, COSTO, EXTERIOR, FACTURARCABECERA, PRUEBAS, TIPO, ORINA, SANGRE, CONDPACIENTE, CONDMUESTRA, CODDIAPROC,';
        strSql:=strSql+' DIASRESULTADO, UNIDAD, ABREVIACION, MEDIO, COLOR, DEPID, TIPOAS400, CONVERT(VARCHAR(10), CASE CODIGOIDAS400 WHEN NULL ';
        strSql:=strSql+' THEN 0 WHEN '+#39+#39+' THEN 0 ELSE CODIGOIDAS400 END) AS CODIGOIDAS400, MEDIOAS400, NOPROCESAR, COMENTARIONOPROCESAR, TIPOMUESTRA,';
        strSql:=strSql+' COMENTARIO_REQ, COD_SEC_PRUEBA, DATAAREAID, RECID, SEXO, AYUNA,'+#39+'0'+#39+' as GPrecio  ';
        strSql:=strSql+' FROM       ptprueba ';
        strSql:=strSql+' WHERE      Estatus='+#39+'1'+#39+' and pruebaid Not In (Select pruebarelation from ptAcuerdoComercial';
        strSql:=strSql+' Where Clienterelation In('+#39+ClienteID+#39+','+#39+dm.GrupoPrecioPriv+#39+'))';
        If Trim(strExPrueba) <> EmptyStr then
           strSql:=strSql+' And        Not PruebaID In '+strExPrueba;
        strSql:=strSql+' Order by  GPrecio Desc ,p.Tipo Asc ';
        sql.Text:=strSql;
        Open;
      end;
  End
  else If (Origen = dm.qrParametroGrupoPriv.Value) Or
          (Origen = dm.qrParametroGrupoVIP.Value) Or
          (Origen = dm.qrParametroGrupoEmp.Value) Then
  begin
      With qrPruebas,sql do
      begin
        Close;
        Clear;
        Add('SELECT     p.PRUEBAID, p.ALIAS, p.DESCRIPCION, p.ESTATUS, p.GRUPOPRUEBAID, p.DEPARTAMENTO, a.PRECIO, p.PERMITECAMBIOPRECIO,');
        Add('           p.CODIGOAXAPTA, p.PRECIODOLARES, p.COSTO, EXTERIOR, FACTURARCABECERA, p.PRUEBAS, p.TIPO, p.ORINA, p.SANGRE, p.CONDPACIENTE,');
        Add('           p.CONDMUESTRA, p.CODDIAPROC, p.DIASRESULTADO, p.UNIDAD, p.ABREVIACION, p.MEDIO, p.COLOR, p.DEPID, p.TIPOAS400,');
        Add('           CONVERT(VARCHAR(10), CASE p.CODIGOIDAS400 WHEN NULL THEN 0 WHEN '+#39+#39+' THEN 0 ELSE p.CODIGOIDAS400 END) AS CODIGOIDAS400,');
        Add('           p.MEDIOAS400, p.NOPROCESAR, p.COMENTARIONOPROCESAR, p.TIPOMUESTRA, p.COMENTARIO_REQ, p.COD_SEC_PRUEBA, p.DATAAREAID,');
        Add('           p.RECID, p.SEXO, p.AYUNA,'+#39+'1'+#39+' as GPrecio');
        Add(' FROM      PTACUERDOCOMERCIAL a Inner Join ptprueba p ON a.pruebarelation = p.pruebaid ');
        Add(' WHERE     p.Estatus='+#39+'1'+#39+' and CONVERT(varchar(08),'+#39+Fecha+#39+',112) Between convert(varchar(08),a.desde,112) And convert(varchar(08),a.hasta,112)');
        Add(' AND p.dataareaid = a.dataareaid ');
        Add(' AND a.clienterelation = '+#39+dm.GrupoPrecioPriv+#39);
        Add(' And a.desde in (SELECT max(desde) FROM PTACUERDOCOMERCIAL ');
        Add(' WHERE CLIENTERELATION='+#39+dm.GrupoPrecioPriv+#39);
        Add(' And Pruebarelation=p.pruebaid ');
        Add(' And convert(varchar(08),'+#39+Fecha+#39+',112) Between convert(varchar(08),desde,112) And convert(varchar(08),hasta,112))');
        Add(' And a.RecID in (SELECT max(RecID) FROM PTACUERDOCOMERCIAL');
        Add(' WHERE CLIENTERELATION='+#39+dm.GrupoPrecioPriv+#39);
        Add(' And Pruebarelation=p.pruebaid ');
        Add(' And convert(varchar(08),'+#39+Fecha+#39+',112) Between convert(varchar(08),desde,112) And convert(varchar(08),hasta,112))');

        Add(' UNION ALL ');

        Add(' SELECT     PRUEBAID, ALIAS, DESCRIPCION, ESTATUS, GRUPOPRUEBAID, DEPARTAMENTO, PRECIO, PERMITECAMBIOPRECIO, CODIGOAXAPTA,');
        Add('            PRECIODOLARES, COSTO, EXTERIOR, FACTURARCABECERA, PRUEBAS, TIPO, ORINA, SANGRE, CONDPACIENTE, CONDMUESTRA, CODDIAPROC,');
        Add('            DIASRESULTADO, UNIDAD, ABREVIACION, MEDIO, COLOR, DEPID, TIPOAS400, CONVERT(VARCHAR(10), CASE CODIGOIDAS400 WHEN NULL ');
        Add('            THEN 0 WHEN '+#39+#39+' THEN 0 ELSE CODIGOIDAS400 END) AS CODIGOIDAS400, MEDIOAS400, NOPROCESAR, COMENTARIONOPROCESAR, TIPOMUESTRA,');
        Add('            COMENTARIO_REQ, COD_SEC_PRUEBA, DATAAREAID, RECID, SEXO, AYUNA,'+#39+'0'+#39+' as GPrecio  ');
        Add(' FROM       PTPrueba ');
        Add(' WHERE      Estatus='+#39+'1'+#39+' and DataAreaId = '+#39+DM.CurEmpresa+#39+' And PruebaID Not In ( SELECT pruebarelation FROM PTACUERDOCOMERCIAL ');
        Add(' WHERE Convert(varchar(08),'+#39+Fecha+#39+',112) Between convert(varchar(08),desde,112) And convert(varchar(08),hasta,112)');
        Add(' AND clienterelation = '+#39+dm.GrupoPrecioPriv+#39+')');
        Add(' Order by GPrecio Desc,Descripcion Asc ');
        Open;
      end;
  End
  else if (grupoprecio<>dm.GrupoPrecioPriv) Or
          (Origen = dm.qrParametroGrupoLab.Value)Then
  begin
      With qrPruebas,sql do
      begin
        Close;
        Clear;
        Add('SELECT     p.PRUEBAID, p.ALIAS, p.DESCRIPCION, p.ESTATUS, p.GRUPOPRUEBAID, p.DEPARTAMENTO, a.PRECIO, p.PERMITECAMBIOPRECIO,');
        Add('           p.CODIGOAXAPTA, p.PRECIODOLARES, p.COSTO, EXTERIOR, FACTURARCABECERA, p.PRUEBAS, p.TIPO, p.ORINA, p.SANGRE, p.CONDPACIENTE,');
        Add('           p.CONDMUESTRA, p.CODDIAPROC, p.DIASRESULTADO, p.UNIDAD, p.ABREVIACION, p.MEDIO, p.COLOR, p.DEPID, p.TIPOAS400,');
        Add('           CONVERT(VARCHAR(10), CASE p.CODIGOIDAS400 WHEN NULL THEN 0 WHEN '+#39+#39+' THEN 0 ELSE p.CODIGOIDAS400 END) AS CODIGOIDAS400,');
        Add('           p.MEDIOAS400, p.NOPROCESAR, p.COMENTARIONOPROCESAR, p.TIPOMUESTRA, p.COMENTARIO_REQ, p.COD_SEC_PRUEBA, p.DATAAREAID,');
        Add('           p.RECID, p.SEXO, p.AYUNA,'+#39+'2'+#39+' as GPrecio');
        Add(' FROM      PTACUERDOCOMERCIAL a Inner Join ptprueba p ON a.pruebarelation = p.pruebaid ');
        Add(' WHERE     p.Estatus='+#39+'1'+#39+' and CONVERT(varchar(08),'+#39+Fecha+#39+',112) Between convert(varchar(08),a.desde,112) And convert(varchar(08),a.hasta,112)');
        Add(' AND p.dataareaid = a.dataareaid ');
        Add(' AND a.clienterelation = '+#39+ClienteID2+#39);
        Add(' And a.desde in (SELECT max(desde) FROM PTACUERDOCOMERCIAL ');
        Add(' WHERE CLIENTERELATION='+#39+ClienteID2+#39);
        Add(' And Pruebarelation=p.pruebaid ');
        Add(' And convert(varchar(08),'+#39+Fecha+#39+',112) Between convert(varchar(08),desde,112) And convert(varchar(08),hasta,112))');
        Add(' And a.RecID in (SELECT max(RecID) FROM PTACUERDOCOMERCIAL');
        Add(' WHERE CLIENTERELATION='+#39+ClienteID2+#39);
        Add(' And Pruebarelation=p.pruebaid ');
        Add(' And convert(varchar(08),'+#39+Fecha+#39+',112) Between convert(varchar(08),desde,112) And convert(varchar(08),hasta,112))');

        Add(' UNION ALL ');

        Add('SELECT     p.PRUEBAID, p.ALIAS, p.DESCRIPCION, p.ESTATUS, p.GRUPOPRUEBAID, p.DEPARTAMENTO, a.PRECIO, p.PERMITECAMBIOPRECIO,');
        Add('           p.CODIGOAXAPTA, p.PRECIODOLARES, p.COSTO, EXTERIOR, FACTURARCABECERA, p.PRUEBAS, p.TIPO, p.ORINA, p.SANGRE, p.CONDPACIENTE,');
        Add('           p.CONDMUESTRA, p.CODDIAPROC, p.DIASRESULTADO, p.UNIDAD, p.ABREVIACION, p.MEDIO, p.COLOR, p.DEPID, p.TIPOAS400,');
        Add('           CONVERT(VARCHAR(10), CASE p.CODIGOIDAS400 WHEN NULL THEN 0 WHEN '+#39+#39+' THEN 0 ELSE p.CODIGOIDAS400 END) AS CODIGOIDAS400,');
        Add('           p.MEDIOAS400, p.NOPROCESAR, p.COMENTARIONOPROCESAR, p.TIPOMUESTRA, p.COMENTARIO_REQ, p.COD_SEC_PRUEBA, p.DATAAREAID,');
        Add('           p.RECID, p.SEXO, p.AYUNA,'+#39+'1'+#39+' as GPrecio');
        Add(' FROM      PTACUERDOCOMERCIAL a Inner Join ptprueba p ON a.pruebarelation = p.pruebaid ');
        Add(' WHERE     p.Estatus='+#39+'1'+#39+' and CONVERT(varchar(08),'+#39+Fecha+#39+',112) Between convert(varchar(08),a.desde,112) And convert(varchar(08),a.hasta,112)');
        Add(' AND p.dataareaid = a.dataareaid ');
        Add(' AND a.clienterelation = '+#39+GrupoPrecio+#39);
        Add(' And a.desde in (SELECT max(desde) FROM PTACUERDOCOMERCIAL ');
        Add(' WHERE CLIENTERELATION='+#39+GrupoPrecio+#39);
        Add(' And Pruebarelation=p.pruebaid ');
        Add(' And convert(varchar(08),'+#39+Fecha+#39+',112) Between convert(varchar(08),desde,112) And convert(varchar(08),hasta,112))');
        Add(' And a.RecID in (SELECT max(RecID) FROM PTACUERDOCOMERCIAL');
        Add(' WHERE CLIENTERELATION='+#39+GrupoPrecio+#39);
        Add(' And Pruebarelation=p.pruebaid ');
        Add(' And convert(varchar(08),'+#39+Fecha+#39+',112) Between convert(varchar(08),desde,112) And convert(varchar(08),hasta,112))');

        Add(' Union All ');

        Add(' SELECT     p.PRUEBAID, p.ALIAS, p.DESCRIPCION, p.ESTATUS, p.GRUPOPRUEBAID, p.DEPARTAMENTO, a.PRECIO, p.PERMITECAMBIOPRECIO,');
        Add('           p.CODIGOAXAPTA, p.PRECIODOLARES, p.COSTO, EXTERIOR, FACTURARCABECERA, p.PRUEBAS, p.TIPO, p.ORINA, p.SANGRE, p.CONDPACIENTE,');
        Add('           p.CONDMUESTRA, p.CODDIAPROC, p.DIASRESULTADO, p.UNIDAD, p.ABREVIACION, p.MEDIO, p.COLOR, p.DEPID, p.TIPOAS400,');
        Add('           CONVERT(VARCHAR(10), CASE p.CODIGOIDAS400 WHEN NULL THEN 0 WHEN '+#39+#39+' THEN 0 ELSE p.CODIGOIDAS400 END) AS CODIGOIDAS400,');
        Add('           p.MEDIOAS400, p.NOPROCESAR, p.COMENTARIONOPROCESAR, p.TIPOMUESTRA, p.COMENTARIO_REQ, p.COD_SEC_PRUEBA, p.DATAAREAID,');
        Add('           p.RECID, p.SEXO, p.AYUNA,'+#39+'0'+#39+' as GPrecio');
        Add(' FROM      PTACUERDOCOMERCIAL a inner join ptprueba p on ');
        Add('           a.pruebarelation = p.pruebaid ');
        Add(' WHERE     p.Estatus='+#39+'1'+#39+' and PruebaID Not In ( SELECT p.PRUEBAID FROM PtAcuerdoComercial a Inner Join ptprueba p ');
        Add(' ON        a.pruebarelation = p.pruebaid ');
        Add(' WHERE     convert(varchar(08),'+#39+Fecha+#39+',112) Between convert(varchar(08),a.desde,112) And convert(varchar(08),a.hasta,112)');
        Add(' AND p.dataareaid = a.dataareaid ');
        Add(' AND a.clienterelation = '+#39+GrupoPrecio+#39+')');
        Add(' And a.desde in (SELECT max(desde) FROM PTACUERDOCOMERCIAL ');
        Add(' WHERE CLIENTERELATION='+#39+dm.GrupoPrecioPriv+#39);
        Add(' And Pruebarelation=p.pruebaid ');
        Add(' And convert(varchar(08),'+#39+Fecha+#39+',112) Between convert(varchar(08),desde,112) And convert(varchar(08),hasta,112))');
        Add(' And a.RecID in (SELECT max(RecID) FROM PTACUERDOCOMERCIAL');
        Add(' WHERE CLIENTERELATION='+#39+dm.GrupoPrecioPriv+#39);
        Add(' And Pruebarelation=p.pruebaid ');
        Add(' And convert(varchar(08),'+#39+Fecha+#39+',112) Between convert(varchar(08),desde,112) And convert(varchar(08),hasta,112))');

        Add(' UNION ALL ');

        Add(' SELECT     PRUEBAID, ALIAS, DESCRIPCION, ESTATUS, GRUPOPRUEBAID, DEPARTAMENTO, PRECIO, PERMITECAMBIOPRECIO, CODIGOAXAPTA,');
        Add('            PRECIODOLARES, COSTO, EXTERIOR, FACTURARCABECERA, PRUEBAS, TIPO, ORINA, SANGRE, CONDPACIENTE, CONDMUESTRA, CODDIAPROC,');
        Add('            DIASRESULTADO, UNIDAD, ABREVIACION, MEDIO, COLOR, DEPID, TIPOAS400, CONVERT(VARCHAR(10), CASE CODIGOIDAS400 WHEN NULL ');
        Add('            THEN 0 WHEN '+#39+#39+' THEN 0 ELSE CODIGOIDAS400 END) AS CODIGOIDAS400, MEDIOAS400, NOPROCESAR, COMENTARIONOPROCESAR, TIPOMUESTRA,');
        Add('            COMENTARIO_REQ, COD_SEC_PRUEBA, DATAAREAID, RECID, SEXO, AYUNA,'+#39+'0'+#39+' as GPrecio  ');
        Add(' FROM       ptprueba ');
        Add(' WHERE      Estatus='+#39+'1'+#39+' and pruebaid Not In (Select pruebarelation from ptAcuerdoComercial');
        Add(' Where Clienterelation In('+#39+GrupoPrecio+#39+','+#39+dm.GrupoPrecioPriv+#39+'))');
        Add(' Order by  GPrecio Desc, PruebaID Asc ');
        Open;
      end;
  End;
  With qrPruebas,sql do
  begin
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
        JvMemoryData1CodigoIDAS400.AsString   := FormatFloat('00000000',FieldByName('CodigoIDAS400').AsInteger);
        JvMemoryData1Ayuna.AsBoolean          := fieldbyname('Ayuna').AsBoolean;
        JvMemoryData1GPrecio.AsString         := FieldByName('GPrecio').AsString;
        JvMemoryData1TipoPrueba.AsString      := FieldByName('Tipo').AsString;
        Next;
    end;
    JvMemoryData1.First;
    DsDatos.Enabled := True;
  End;
  edbuscarpor.ItemIndex := 1;

  if (edbuscar.Text <> '') then
    BuscarData;
end;

procedure TfrmDialogConsultaPruebas.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmDialogConsultaPruebas.FormShow(Sender: TObject);
Var qgprecio  : TAdoQuery;
begin
  inherited;
  ayuna             := TcxStyle.Create(Self);
  normal            := TcxStyle.Create(Self);
  noseguro          := TcxStyle.Create(Self);
  noseguroayuna     := TcxStyle.Create(Self);
  ayuna.Font.Color  := clWhite;
  ayuna.TextColor   := clGreen;
  normal.Font.Color := clWhite;
  normal.TextColor  := clBlack;
  noseguroayuna.TextColor := clGreen;
  noseguroayuna.Color := DM.ColorUrgente;
  noseguro.Color    := DM.ColorUrgente;
  edbuscar.SetFocus;
end;

procedure TfrmDialogConsultaPruebas.MenuItem1Click(Sender: TObject);
begin
  inherited;
  if JvMemoryData2.Active then JvMemoryData2.Delete;
end;
procedure TfrmDialogConsultaPruebas.Seleccion_Pruebas;
Var Cod_Prueba,Cod_Tipo,Prueba_Sel,Cliente_Copro : String;
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
                If dm.qrParametroServidor_AS400.value <> EmptyStr then
                begin
                    If dm.PingHost(dm.qrParametroServidor_AS400.value,1) then
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
          If (Verifica_Seleccion_AS400) or (Verifica_Pruebas_Aceptadas_IDAS400) then
          begin
              DsDatos.Enabled := True;
              JvMemoryData1.Edit;
              JvMemoryData1Seleccion.AsBoolean      := False;
              JvMemoryData1.First;
              Raise exception.CreateFmt(' Existe otra prueba YA seleccionada con el mismo codigo de prueba AS-400.  Verifique con Seguros.', []);
          end;

          //  Validacion Combo en Plan Cia y Proyectos
          If ((Origen = dm.qrParametroGrupoCia.Value) Or (Origen = dm.qrParametroGrupoProy.Value)) And
             ( JvMemoryData1GPrecio.AsString ='0') And (JvMemoryData1TipoPrueba.AsString='C') then
          begin
              If MessageDlg('Combo '+JvMemoryData1Descripcion.AsString+' No pertenece a este cliente.  Esta seguro de esta selecci�n?', mtConfirmation, [mbYes,mbNo], 0) = mrNo then
              begin
                  exit;
              end;
          end;
          If (Factura_St='F') then
          begin
              If Verifica_Prueba_Entrada(JvMemoryData1PruebaID.AsString,frmMain.frmTmpND.qrEntradaPacienteMuestrano.Value) then
              Begin
                  DsDatos.Enabled := True;
                  JvMemoryData1.Edit;
                  JvMemoryData1Seleccion.AsBoolean      := False;
                  Raise exception.CreateFmt(' La Prueba: (' + JvMemoryData1PruebaID.AsString + ') ' + JvMemoryData1Descripcion.AsString + #13 +
                                            ' Ya fu� Seleccionada en otra factura y el mismo n�mero de Laboratorio. Favor verificar Pruebas Seleccionadas.', []);
              end;
          end;
          If ((qrPruebasSexo.Value=0) Or (qrPruebasSexo.Value=1)) And
             (qrPruebasEstatus.Value = 1) Then
             Begin
               if Factura_St = 'I' Then
               Begin
                 if (qrPruebasSexo.Value <> frmMain.frmTmp.qrEntradaPacienteSexo.value) then
                 begin
                     Raise exception.CreateFmt(' La Prueba: (' + qrPruebasPRUEBAID.AsString + ') ' + qrPruebasDESCRIPCION.AsString + #13 +
                                               ' NO puede ser seleccionada para este SEXO.'+ #13 +
                                               ' Por favor elija la prueba que correspondiente a dicho sexo.', []);
                 end;
               end
               else
               if Factura_St = 'M' Then
               Begin
                 if (qrPruebasSexo.Value <> frmMain.frmTmpMod.qrEntradaPacienteSexo.value) then
                 begin
                     Raise exception.CreateFmt(' La Prueba: (' + qrPruebasPRUEBAID.AsString + ') ' + qrPruebasDESCRIPCION.AsString + #13 +
                                               ' NO puede ser seleccionada para este SEXO.'+ #13 +
                                               ' Por favor elija la prueba que correspondiente a dicho sexo.', []);
                 end;
               end
               else
               if Factura_St = 'L' Then
               Begin
                 if (qrPruebasSexo.Value <> frmMain.frmTmpLab.qrEntradaPacienteSexo.value) then
                 begin
                     Raise exception.CreateFmt(' La Prueba: (' + qrPruebasPRUEBAID.AsString + ') ' + qrPruebasDESCRIPCION.AsString + #13 +
                                               ' NO puede ser seleccionada para este SEXO.'+ #13 +
                                               ' Por favor elija la prueba que correspondiente a dicho sexo.', []);
                 end;
               end
               else
               if Factura_St = 'C' Then
               Begin
                 if (qrPruebasSexo.Value <> frmMain.frmClinica.qrEntradaPacienteSexo.value) then
                 begin
                     Raise exception.CreateFmt(' La Prueba: (' + qrPruebasPRUEBAID.AsString + ') ' + qrPruebasDESCRIPCION.AsString + #13 +
                                               ' NO puede ser seleccionada para este SEXO.'+ #13 +
                                               ' Por favor elija la prueba que correspondiente a dicho sexo.', []);
                 end;
               end
               else
               if Factura_St = 'F' Then
               Begin
                 if (qrPruebasSexo.Value <> frmMain.frmTmpND.qrEntradaPacienteSexo.value) then
                 begin
                     Raise exception.CreateFmt(' La Prueba: (' + qrPruebasPRUEBAID.AsString + ') ' + qrPruebasDESCRIPCION.AsString + #13 +
                                               ' NO puede ser seleccionada para este SEXO.'+ #13 +
                                               ' Por favor elija la prueba que correspondiente a dicho sexo.', []);
                 end;
               end
          end;
          If Factura_St = 'I' Then
          Begin
              if Dm.Buscar_PruebaGrupo(qrPruebasPRUEBAID.AsString,frmMain.frmTmp.qrEntradaPacienteOrigen.Value) then
                 begin
                     Raise exception.CreateFmt(' La Prueba: (' + qrPruebasPRUEBAID.AsString + ') ' + qrPruebasDESCRIPCION.AsString + #13 +
                                               ' NO puede ser seleccionada para este Grupo de Cliente.', []);
                 end;
          end
          else
          If Factura_St = 'M' Then
          Begin
                 if Dm.Buscar_PruebaGrupo(qrPruebasPRUEBAID.AsString,frmMain.frmTmpMod.qrEntradaPacienteOrigen.Value) then
                 begin
                     Raise exception.CreateFmt(' La Prueba: (' + qrPruebasPRUEBAID.AsString + ') ' + qrPruebasDESCRIPCION.AsString + #13 +
                                               ' NO puede ser seleccionada para este Grupo de Cliente.', []);
                 end;
          end
          else
          If Factura_St = 'L' Then
          Begin
                 if Dm.Buscar_PruebaGrupo(qrPruebasPRUEBAID.AsString,frmMain.frmTmpLab.qrEntradaPacienteOrigen.Value) then
                 begin
                     Raise exception.CreateFmt(' La Prueba: (' + qrPruebasPRUEBAID.AsString + ') ' + qrPruebasDESCRIPCION.AsString + #13 +
                                               ' NO puede ser seleccionada para este Grupo de Cliente.', []);
                 end;
          end
          else
          If Factura_St = 'C' Then
          Begin
                 if Dm.Buscar_PruebaGrupo(qrPruebasPRUEBAID.AsString,frmMain.frmClinica.qrEntradaPacienteOrigen.Value) then
                 begin
                     Raise exception.CreateFmt(' La Prueba: (' + qrPruebasPRUEBAID.AsString + ') ' + qrPruebasDESCRIPCION.AsString + #13 +
                                               ' NO puede ser seleccionada para este Grupo de Cliente.', []);
                 end;
          end
          else
          If Factura_St = 'F' Then
          Begin
                 if Dm.Buscar_PruebaGrupo(qrPruebasPRUEBAID.AsString,frmMain.frmTmpND.qrEntradaPacienteOrigen.Value) then
                 begin
                     Raise exception.CreateFmt(' La Prueba: (' + qrPruebasPRUEBAID.AsString + ') ' + qrPruebasDESCRIPCION.AsString + #13 +
                                               ' NO puede ser seleccionada para este Grupo de Cliente.', []);
                 end;
          end;

          If Verifica_Pruebas_Equivalentes(JvMemoryData1PruebaID.AsString)<> EmptyStr then
          begin
              Raise exception.CreateFmt(' La Prueba: (' + JvMemoryData1PruebaID.AsString + ') ' + JvMemoryData1Descripcion.AsString + #13 +
                                        ' Tiene una equivalente.  Favor seleccionar Prueba '+Verifica_Pruebas_Equivalentes(JvMemoryData1PruebaID.AsString)+'.', []);
              DsDatos.Enabled := True;
              JvMemoryData1.Edit;
              JvMemoryData1Seleccion.AsBoolean      := False;
              JvMemoryData1.First;
          end;
          If (Verifica_Seleccion) or (Verifica_Pruebas_Aceptadas) then
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
            JvMemoryData2CodigoIDAS400.AsString   := JvMemoryData1CodigoIDAS400.AsString;
            JvMemoryData1.Edit;
            JvMemoryData1Seleccion.AsBoolean      := False;
            edbuscar.Text := '';
            edbuscar.SetFocus;
          end;
        end;
        JvMemoryData1.Next;
    end;

    JvMemoryData1.Locate('PruebaID',JvMemoryData2PruebaID.AsString,[]);

    Cliente_Copro := Busqueda_Grupo_Cliente(ClienteID2,JvMemoryData1PruebaID.AsString);
    If Busca_Prueba_Coprologico(Cliente_Copro,JvMemoryData1PruebaID.AsString) then
    begin
        Cod_tipo:='CO';
        Cod_Prueba := Dm.Verifica_Cliente_Coprologico(Origen,JvMemoryData1PruebaID.AsString,RecID2,Cod_tipo,SucursalID,ClienteID2);
    end
    Else
    begin
        Cod_tipo:='IA';
        Cod_Prueba := Dm.Verifica_Cliente_Coprologico(ClienteID2,JvMemoryData1PruebaID.AsString,RecID2,Cod_tipo,'','');
    end;

    if Cod_Prueba <> EmptyStr then
    begin
      BuscarData_Envase(Cod_Prueba);
      Seleccion_Pruebas;
      JvMemoryData1.First;
    end;
    DsDatos.Enabled := True;
end;


Function TfrmDialogConsultaPruebas.Verifica_Pruebas_Aceptadas: Boolean;
begin
  inherited;
  Result:=false;
    if Factura_St = 'I' Then
    begin
        if frmMain.frmTmp.qrEntradaPacienteDetalle.Locate('PruebaID',JvMemoryData1PruebaID.AsString,[]) then
            Result:=true
    end else if Factura_St = 'M' Then
    begin
        if frmMain.frmTmpMod.qrEntradaPacienteDetalle.Locate('PruebaID',JvMemoryData1PruebaID.AsString,[]) then
            Result:=true
    end else if Factura_St = 'L' Then
    begin
        if frmMain.frmTmpLab.qrEntradaPacienteDetalle.Locate('PruebaID',JvMemoryData1PruebaID.AsString,[]) then
            Result:=true
    end else if Factura_St = 'C' Then
    begin
        if frmMain.frmClinica.qrEntradaPacienteDetalle.Locate('PruebaID',JvMemoryData1PruebaID.AsString,[]) then
            Result:=true
    end else if Factura_St = 'F' Then
    begin
        if frmMain.frmTmpND.qrEntradaPacienteDetalle.Locate('PruebaID',JvMemoryData1PruebaID.AsString,[]) then
            Result:=true
    end;

End;
Function TfrmDialogConsultaPruebas.Verifica_Pruebas_Aceptadas_IDAS400: Boolean;
begin
  inherited;
  Result:=false;
    if Factura_St = 'I' Then
    begin
    if frmMain.frmTmp.qrEntradaPacienteDetalle.Locate('CodigoAS400',JvMemoryData1CodigoIDAS400.AsString,[]) then
            Result:=true
    end else if Factura_St = 'M' Then
    begin
        if frmMain.frmTmpMod.qrEntradaPacienteDetalle.Locate('CodigoAS400',JvMemoryData1CodigoIDAS400.AsString,[]) then
            Result:=true
    end else if Factura_St = 'L' Then
    begin
        if frmMain.frmTmpLab.qrEntradaPacienteDetalle.Locate('CodigoAS400',JvMemoryData1CodigoIDAS400.AsString,[]) then
            Result:=true
    end else if Factura_St = 'C' Then
    begin
        if frmMain.frmClinica.qrEntradaPacienteDetalle.Locate('CodigoAS400',JvMemoryData1CodigoIDAS400.AsString,[]) then
            Result:=true
    end else if Factura_St = 'F' Then
    begin
        if frmMain.frmTmpND.qrEntradaPacienteDetalle.Locate('CodigoAS400',JvMemoryData1CodigoIDAS400.AsString,[]) then
            Result:=true
    end;

End;

Function TfrmDialogConsultaPruebas.Verifica_Seleccion: Boolean;
begin
  inherited;
  Result:=false;
    if JvMemoryData2.Locate('PruebaID',JvMemoryData1PruebaID.AsString,[]) then
        Result:=true
End;
Function TfrmDialogConsultaPruebas.Verifica_Seleccion_AS400: Boolean;
begin
  inherited;
  Result:=false;
    if JvMemoryData2.Locate('CodigoIDAS400',JvMemoryData1CodigoIDAs400.AsString,[]) then
        Result:=true
End;
Function  TfrmDialogConsultaPruebas.Verifica_Prueba_Entrada(PruebaID : String; Muestrano : String):Boolean;
Var qfind : TADOQuery;
begin
      qfind := DM.NewQuery;
      qfind.Close;
      qfind.SQL.Text := ' SELECT PRUEBAID FROM PTEntradaPacienteDetalle '+
                        ' WHERE Muestrano = '+#39+Muestrano+#39+
                        ' And PruebaID='+#39+PruebaID+#39+
                        ' And Ncr_Estatus='+'0'+
                        ' AND DataAreaId = '+#39+DM.CurEmpresa+#39;
      qfind.Open;
      if (qfind.RecordCount > 0) then
      Begin
          result := True;
      end
      Else
        result := False;
      FreeAndNil(qfind);
end;
procedure TfrmDialogConsultaPruebas.BuscarData_Envase(PruebaID : String);
begin
  sqlString:=EmptyStr;
  sqlString := sqlString + 'PruebaID LIKE '+#39+'%'+PruebaID+'%'+#39;

 //Filtrando las Pruebas del Exterior
  If Factura_St = 'I' Then
  begin
     If (frmMain.Exis_Vta = True) And (frmMain.frmTmp.qrEntradaPacienteFactExterior.Value = 1) Then
       sqlString := sqlString + ' Exterior = '+ #39 + '1' + #39;
  end else if Factura_St = 'M' Then
  begin
     If (frmMain.Exis_Vta = True) And (frmMain.frmTmpMod.qrEntradaPacienteFactExterior.Value = 1) Then
       sqlString := sqlString + ' Exterior = '+ #39 + '1' + #39;
  end else if Factura_St = 'L' Then
  begin
     If (frmMain.Exis_Vta = True) And (frmMain.frmTmpLab.qrEntradaPacienteFactExterior.Value = 1) Then
       sqlString := sqlString + ' Exterior = '+ #39 + '1' + #39;
  end else if Factura_St = 'C' Then
  begin
     If (frmMain.Exis_Vta = True) And (frmMain.frmClinica.qrEntradaPacienteFactExterior.Value = 1) Then
       sqlString := sqlString + ' Exterior = '+ #39 + '1' + #39;
  end else if Factura_St = 'F' Then
  begin
     If (frmMain.Exis_Vta = True) And (frmMain.frmTmpND.qrEntradaPacienteFactExterior.Value = 1) Then
       sqlString := sqlString + ' Exterior = '+ #39 + '1' + #39;
  end;


 //Filtrando las Pruebas del Exterior
  if Factura_St = 'I' Then
  begin
     If (frmMain.Exis_Cli = True) And (frmMain.frmClinica.qrEntradaPacienteFactExterior.Value = 1) Then
       sqlString := sqlString + ' Exterior = '+ #39 + '1' + #39;
  end else if Factura_St = 'M' Then
  begin
     If (frmMain.Exis_Cli = True) And (frmMain.frmClinica.qrEntradaPacienteFactExterior.Value = 1) Then
       sqlString := sqlString + ' Exterior = '+ #39 + '1' + #39;
  end else if Factura_St = 'L' Then
  begin
     If (frmMain.Exis_Cli = True) And (frmMain.frmClinica.qrEntradaPacienteFactExterior.Value = 1) Then
       sqlString := sqlString + ' Exterior = '+ #39 + '1' + #39;
  end else if Factura_St = 'C' Then
  begin
     If (frmMain.Exis_Cli = True) And (frmMain.frmClinica.qrEntradaPacienteFactExterior.Value = 1) Then
       sqlString := sqlString + ' Exterior = '+ #39 + '1' + #39;
  end else if Factura_St = 'F' Then
  begin
     If (frmMain.Exis_Cli = True) And (frmMain.frmClinica.qrEntradaPacienteFactExterior.Value = 1) Then
       sqlString := sqlString + ' Exterior = '+ #39 + '1' + #39;
  end;
  with qrPruebas,sql do
  begin
      Filtered := False;
      Filter := sqlString + ' OR ' +'PruebaID = NULL';
      Filtered := True;
  end;
  With qrPruebas,sql do
  begin
    First;
    DsDatos.Enabled := False;
    if not JvMemoryData1.Active then
      JvMemoryData1.Active := true;
    while not eof do
    begin
       JvMemoryData1.Append;
       JvMemoryData1Seleccion.AsBoolean       := True;
       JvMemoryData1PruebaID.AsString         := fieldbyname('PruebaID').AsString;
       JvMemoryData1Descripcion.AsString      := fieldbyname('Descripcion').AsString;
       JvMemoryData1Precio.AsFloat            := fieldbyname('Precio').Asfloat;
       JvMemoryData1PrecioDolares.AsFloat     := fieldbyname('PrecioDolares').Asfloat;
       JvMemoryData1CodigoIDAS400.AsString    := FormatFloat('00000000', FieldByName('CodigoIDAS400').AsInteger);
       JvMemoryData1Ayuna.AsBoolean           := fieldbyname('Ayuna').AsBoolean;
       JvMemoryData1GPrecio.AsString          := FieldByName('GPrecio').AsString;
       JvMemoryData1TipoPrueba.AsString       := FieldByName('Tipo').AsString;
       Next;
    end;
    JvMemoryData1.First;
    DsDatos.Enabled := True;
  End;
end;
Function  TfrmDialogConsultaPruebas.Busca_Prueba_Coprologico(ClienteID : String;PruebaID : String):Boolean;
Var qfind : TADOQuery;
begin
      qfind := DM.NewQuery;
      qfind.Close;
      qfind.SQL.Text := ' Select Top 1 PruebaID from PtEnvasePrueba (nolock) '+
                        ' Where ClienteID='+#39+ClienteID+#39+' And Estatus='+#39+'A'+#39+
                        ' And PruebaID='+#39+PruebaID+#39+' And Tipo='+#39+'CO'+#39;
      qfind.Open;
      if (qfind.RecordCount > 0) then
      Begin
          result := True;
      end
      Else
        result := False;
      FreeAndNil(qfind);
end;
Function  TfrmDialogConsultaPruebas.Busqueda_Grupo_Cliente(ClienteID : String;PruebaID : String):String;
Var qfind : TADOQuery;
begin
      qfind := DM.NewQuery;
      qfind.Close;
      qfind.SQL.Text := ' Select Top 1 ClienteID from PtEnvasePrueba (nolock) '+
                        ' Where ClienteID='+#39+ClienteID+#39+' And Estatus='+#39+'A'+#39+
                        ' And PruebaID='+#39+PruebaID+#39+' And Tipo='+#39+'CO'+#39;
      qfind.Open;
      if (qfind.RecordCount > 0) then
      Begin
          result := qfind.fieldbyname('ClienteID').AsString;
      end
      Else
        result := EmptyStr;
      FreeAndNil(qfind);
end;
Function  TfrmDialogConsultaPruebas.Verifica_Pruebas_Equivalentes(PruebaID : String):String;
Var qfind : TADOQuery;
begin
      qfind := DM.NewQuery;
      qfind.Close;
      qfind.SQL.Text := ' Select p.PruebaID+'+#39+' - '+#39+'+p.Descripcion As Prueba from PtEquivPrueba e (nolock) inner join PtPrueba p (nolock) on e.PruebaID_Equal=p.PruebaID '+
                        ' Where e.Estatus='+#39+'A'+#39+
                        ' And e.PruebaID='+#39+PruebaID+#39;
      qfind.Open;
      if (qfind.RecordCount > 0) then
      Begin
          result := qfind.fieldbyname('Prueba').AsString;
      end
      Else
        result := EmptyStr;
      FreeAndNil(qfind);
end;
end.

