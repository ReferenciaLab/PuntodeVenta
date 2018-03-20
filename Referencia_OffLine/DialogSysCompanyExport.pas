unit DialogSysCompanyExport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DialogModule, Menus, cxLookAndFeelPainters, cxGraphics, cxPC,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, dxLayoutControl, StdCtrls, cxButtons,
  cxControls, DB, ABSMain, cxMemo, cxCalendar, ADODB, PymeConst,
  JvComponentBase, JvFormPlacement, JvStringHolder, JvAppStorage,
  JvAppXMLStorage, cxGroupBox, cxCheckGroup, cxintl;

type
  TfrmDialogSysCompanyExport = class(TfrmDialogModule)
    lcEmpresas: TcxLookupComboBox;
    lcDialogItem1: TdxLayoutItem;
    pcDocumentos: TcxPageControl;
    lcDialogItem2: TdxLayoutItem;
    tsFinanzas: TcxTabSheet;
    tsVentas: TcxTabSheet;
    tsCompras: TcxTabSheet;
    tsInventario: TcxTabSheet;
    tsServicios: TcxTabSheet;
    lcDialogGroup3: TdxLayoutGroup;
    deHasta: TcxDateEdit;
    lcDialogItem3: TdxLayoutItem;
    deDesde: TcxDateEdit;
    lcDialogItem4: TdxLayoutItem;
    lcDialogGroup4: TdxLayoutGroup;
    memFinanzas: TcxMemo;
    memVentas: TcxMemo;
    memCompras: TcxMemo;
    memInventario: TcxMemo;
    memServicios: TcxMemo;
    qrCias: TABSQuery;
    dsCias: TDataSource;
    conDest: TADOConnection;
    adoCmd: TADOCommand;
    strUpdInventSum: TJvStrHolder;
    fsCompanyExport: TJvFormStorage;
    XmlCompanyExport: TJvAppXMLFileStorage;
    lcDialogGroup5: TdxLayoutGroup;
    lcDialogGroup6: TdxLayoutGroup;
    cgMaestros: TcxCheckGroup;
    lcDialogItem5: TdxLayoutItem;
    strUpdMaestros: TJvStrHolder;
  private
    { Private declarations }
    CurTable : String;
    procedure DoExport;
    procedure RunCommand(sqlCmd: string);
    procedure DoExportMaestros(strSourceDb : String; strDestDb: String);
    procedure DoExportContabilidad(strDocFilter: string; strDestDb: string; strSourceDb: string);
    procedure DoExportCxc(sqlCmd: string; strDestDb: string; strSourceDb: string; strDocFilter: string);
    procedure DoExportBanco(sqlCmd: string; strDestDb: string; strSourceDb: string; strDocFilter: string);
    procedure DoExportCxp(strSourceDb: string; strDestDb: string; strDocFilter: string);
    procedure DoExportVentas( strSourceDb: string; strDestDb: string; strDocFilter: string);
    procedure DoExportCompras( strSourceDb: string; strDestDb: string; strDocFilter: string);
    procedure DoExportInventario(strSourceDb: string; strDestDb: string; strDocFilter: string);
  public
    { Public declarations }
    procedure ExportCompany;
  end;

var
  frmDialogSysCompanyExport: TfrmDialogSysCompanyExport;

implementation

uses DataModule, ApplDbChangeSettings, Main, cxCheckBox;

{$R *.dfm}

{ TfrmDialogSysCompanyExport }

procedure TfrmDialogSysCompanyExport.DoExport;
var
  strSourceDb: String;
  strDestDb: String;
  strDocFilter : String;
  sqlCmd : String;
  I: Integer;
begin
  try
    frmApplDBChangeSettings := TfrmApplDBChangeSettings.Create(Self);
    frmApplDBChangeSettings.lblCaption.Caption := SExportandoCia;
    frmApplDBChangeSettings.pbProgress.Max := 30;
    frmApplDbChangeSettings.Show;
    frmApplDbChangeSettings.Update;
    try
      if not DM.ApplEmpresas.Active then DM.ApplEmpresas.Open;

      strSourceDb := DM.ApplEmpresas.FieldByName('Nombre').Text + '.dbo';
      DM.ApplEmpresas.Locate('Descripcion', DM.CurCompany, []);
      qrCias.Locate('Descripcion', lcEmpresas.EditText, []);
      strDestDb := qrCias.FieldByName('Nombre').Text + '.dbo';

      conDest.Close;
      conDest.DefaultDatabase := '';
      conDest.ConnectionString := 'Data Source=' + qrCias.FieldByName('Servidor').Text;
      conDest.ConnectionString := conDest.ConnectionString + ';Initial Catalog=' + qrCias.FieldByName('Nombre').Text;
      conDest.ConnectionString := conDest.ConnectionString + ';User ID=' + qrCias.FieldByName('SqlUser').Text;
      conDest.ConnectionString := conDest.ConnectionString + ';Password=' +  qrCias.FieldByName('SqlPassword').Text;
      conDest.Open;

      conDest.BeginTrans;

      frmApplDBChangeSettings.pbProgress.StepBy(1);

      // Maestros
      DoExportMaestros( strSourceDb, strDestDb );
      frmApplDBChangeSettings.pbProgress.StepBy(1);

      // Finanzas

      strDocFilter := '(' + #39 + #39;
      for I := 0 to memFinanzas.Lines.Count - 1 do
        strDocFilter := strDocFilter + ',' + #39 + memFinanzas.Lines[i] + #39;
      strDocFilter := strDocFilter + ')';

      DoExportContabilidad(strDocFilter, strDestDb, strSourceDb);
      DoExportBanco(sqlCmd, strDestDb, strSourceDb, strDocFilter);
      DoExportCxc(sqlCmd, strDestDb, strSourceDb, strDocFilter);
      DoExportCxp(strSourceDb, strDestDb, strDocFilter);

      // Ventas
      strDocFilter := '(' + #39 + #39;
      for I := 0 to memVentas.Lines.Count - 1 do
        strDocFilter := strDocFilter + ',' + #39 + memVentas.Lines[i] + #39;
      strDocFilter := strDocFilter + ')';

      DoExportVentas(strSourceDb,strDestDb,strDocFilter);

      // Compras
      strDocFilter := '(' + #39 + #39;
      for I := 0 to memCompras.Lines.Count - 1 do
        strDocFilter := strDocFilter + ',' + #39 + memCompras.Lines[i] + #39;
      strDocFilter := strDocFilter + ')';

      DoExportCompras(strSourceDb,strDestDb,strDocFilter);

      // Inventario
      strDocFilter := '(' + #39 + #39;
      for I := 0 to memInventario.Lines.Count - 1 do
        strDocFilter := strDocFilter + ',' + #39 + memInventario.Lines[i] + #39;
      strDocFilter := strDocFilter + ')';

      DoExportInventario(strSourceDb,strDestDb,strDocFilter);

      // - Fin del Proceos
      if conDest.InTransaction then
        conDest.CommitTrans;
    except
      raise;
      if conDest.InTransaction then
        conDest.RollbackTrans;
    end;
  finally
    conDest.Close;
    FreeAndNil(frmApplDbChangeSettings);
  end;
end;

procedure TfrmDialogSysCompanyExport.ExportCompany;
begin
  qrCias.Close;
  qrCias.ParamByName('pNombre').Text := DM.CurCompany;
  qrCias.Open;
  ShowModal;
  if ModalResult = mrOk then begin
    DoExport;
  end;
end;

procedure TfrmDialogSysCompanyExport.DoExportCxp(strSourceDb: string; strDestDb: string; strDocFilter: string);
var
  sqlCmd: string;
begin
  // - Cuentas por Pagar
  CurTable := '';
  sqlCmd := 'INSERT INTO ' + strDestDb + '.CpDiario SELECT * FROM ' + strSourceDb + '.CpDiario';
  sqlCmd := sqlCmd + ' WHERE ( Posteado = 1 ) AND ( Fecha >= :pDesde AND Fecha <= :pHasta )  ';
  sqlCmd := sqlCmd + ' AND ( TipoDocumento NOT IN ' + strDocFilter + ' )';
  RunCommand(sqlCmd);
  CurTable := 'CpDiarioDetalle';
  sqlCmd := 'INSERT INTO ' + strDestDb + '.CpDiarioDetalle ( DiarioID, ProyectoID, Secuencia, Fecha, Numero, CuentaContable, Descripcion, Dimension1, Dimension2, Debito, Credito, Posteado, DelSistema ) ' + ' SELECT d.DiarioID, d.ProyectoID, d.Secuencia, d.Fecha, d.Numero, d.CuentaContable, d.Descripcion, d.Dimension1, d.Dimension2, d.Debito, d.Credito, d.Posteado, d.DelSistema FROM ' + strSourceDb + '.CpDiarioDetalle d';
  sqlCmd := sqlCmd + ' JOIN ' + strSourceDb + '.CpDiario h ON d.DiarioID = h.DiarioID ';
  sqlCmd := sqlCmd + ' WHERE ( h.Posteado = 1 ) AND ( d.Fecha >= :pDesde AND d.Fecha <= :pHasta )  ';
  sqlCmd := sqlCmd + ' AND ( h.TipoDocumento NOT IN ' + strDocFilter + ' )';
  RunCommand(sqlCmd);
  CurTable := '';
  sqlCmd := 'INSERT INTO ' + strDestDb + '.CpTransacciones (' + ' Suplidor, Fecha, Comprobante, Factura, Descripcion, MontoCUR, AplicadoCUR, MontoMST, AplicadoMST, MonedaID, Vencimiento, UltimoDocAplicacion, ' + ' UltimoFechaAplicacion, Cerrado, TipoTransaccion, APPROVEDBY, APPROVED, ProyectoID, Dimension1, Dimension2, TasaCambio, ' + ' NumeroDocumento, FechaDocumento, UltTasaCambio, FormaDePago, MetodoDePago, ReferenciaDePago, PagoEnEfectivo, TransID, TipoDocumento, AjusteCambio )' +
    ' SELECT DISTINCT d.Suplidor, d.Fecha, d.Comprobante, d.Factura, d.Descripcion, d.MontoCUR, d.AplicadoCUR, d.MontoMST, d.AplicadoMST, d.MonedaID, d.Vencimiento, d.UltimoDocAplicacion, ' + ' d.UltimoFechaAplicacion, d.Cerrado, d.TipoTransaccion, d.APPROVEDBY, d.APPROVED, d.ProyectoID, d.Dimension1, d.Dimension2, d.TasaCambio, ' + ' d.NumeroDocumento, d.FechaDocumento, d.UltTasaCambio, d.FormaDePago, d.MetodoDePago, d.ReferenciaDePago, d.PagoEnEfectivo, d.TransID, d.TipoDocumento, ' + ' d.AjusteCambio FROM ' + strSourceDb + '.CpTransacciones d';
  sqlCmd := sqlCmd + ' JOIN ' + strSourceDb + '.CpDiario h ON d.Comprobante = h.Numero ';
  sqlCmd := sqlCmd + ' WHERE ( h.Posteado = 1 ) AND ( d.Fecha >= :pDesde AND d.Fecha <= :pHasta )  ';
  sqlCmd := sqlCmd + ' AND ( h.TipoDocumento NOT IN ' + strDocFilter + ' )';
  RunCommand(sqlCmd);
  CurTable := 'CgTransacciones';
  sqlCmd := 'INSERT INTO CgTransacciones ( IdRecTransaccion, Origen, DiarioID, ProyectoID, Fecha, Numero, CuentaContable, Descripcion, Dimension1, Dimension2, Debito, Credito, Monto ) ' + ' SELECT DISTINCT d.IdRecTransaccion, d.Origen, d.DiarioID, d.ProyectoID, d.Fecha, d.Numero, d.CuentaContable, d.Descripcion, d.Dimension1, d.Dimension2, d.Debito, d.Credito, d.Monto ';
  sqlCmd := sqlCmd + ' FROM ' + strSourceDb + '.CgTransacciones d JOIN ' + strSourceDb + '.CpDiario h ON d.DiarioID = h.DiarioID ';
  sqlCmd := sqlCmd + ' WHERE ( d.Origen IN (7,8,9) ) AND ( h.Posteado = 1 ) AND ( d.Fecha >= :pDesde AND d.Fecha <= :pHasta )  ';
  sqlCmd := sqlCmd + ' AND ( h.TipoDocumento NOT IN ' + strDocFilter + ' )';
  RunCommand(sqlCmd);
end;

procedure TfrmDialogSysCompanyExport.DoExportInventario(strSourceDb, strDestDb,
  strDocFilter: string);
var
  sqlCmd : String;
begin
  // - Diario
  CurTable := '';
  sqlCmd := 'INSERT INTO ' + strDestDb + '.IvDiario SELECT * FROM ' + strSourceDb + '.IvDiario';
  sqlCmd := sqlCmd + ' WHERE ( Posteado = 1 ) AND ( Fecha >= :pDesde AND Fecha <= :pHasta )  ';
  sqlCmd := sqlCmd + ' AND ( TipoDocumento NOT IN ' + strDocFilter + ' )';
  RunCommand(sqlCmd);
  // - DiarioDetalle
  CurTable := 'IvDiarioLineas';
  sqlCmd := 'INSERT INTO ' + strDestDb + '.IvDiarioLineas (DiarioID, Secuencia, Fecha, Comprobante, Numero, TipoDiario, ProductoID, ConfigId, TallaId, ColorId, Nombre, Almacen, Ubicacion, Lote, Serial, ' +
            'IvDimID, Existencia, Contado, Cantidad, Costo, CostoAgregado, MontoCosto, MontoVentas, IvTransaccionID, AlmacenDest, UbicacionDest, ' +
            'IvDimIDDest, Posteado, CuentaContable, OrdenID, ConceptoID, ProyectoID, Dimension1, Dimension2, Precio, TecnicoID, MonedaID, Cliente)' +
            ' SELECT d.DiarioID, d.Secuencia, d.Fecha, d.Comprobante, d.Numero, d.TipoDiario, d.ProductoID, d.ConfigId, d.TallaId, d.ColorId, d.Nombre, d.Almacen, d.Ubicacion, d.Lote, d.Serial, ' +
            ' d.IvDimID, d.Existencia, d.Contado, d.Cantidad, d.Costo, d.CostoAgregado, d.MontoCosto, d.MontoVentas, d.IvTransaccionID, d.AlmacenDest, d.UbicacionDest, ' +
            ' d.IvDimIDDest, d.Posteado, d.CuentaContable, d.OrdenID, d.ConceptoID, d.ProyectoID, d.Dimension1, d.Dimension2, d.Precio, d.TecnicoID, d.MonedaID, d.Cliente FROM ' + strSourceDb + '.IvDiarioLineas d';
  sqlCmd := sqlCmd + ' JOIN ' + strSourceDb + '.IvDiario h ON d.DiarioID = h.DiarioID ';
  sqlCmd := sqlCmd + ' WHERE ( h.Posteado = 1 ) AND ( d.Fecha >= :pDesde AND d.Fecha <= :pHasta )  ';
  sqlCmd := sqlCmd + ' AND ( h.TipoDocumento NOT IN ' + strDocFilter + ' )';
  RunCommand(sqlCmd);
  // - Transaccion de Inventario
  CurTable := 'IvTransacciones';
  sqlCmd := 'INSERT INTO ' + strDestDb + '.IvTransacciones ( IvTransaccionID, ProductoID, InventDimID, Direccion, ' +
       'IvSecuencia, EstadoSalida, EstadoEntrada, FechaFisica, ' +
       'Cantidad, CostoPosteado, CostoAjustado, CostoTotal, ' +
       'CostoUnitario, TipoTransaccion, TransReferenciaID, Factura, ' +
       'Comprobante, FechaEsperada, FechaFinanciera, ConduceID, ' +
       'ClienteProveedor, ProyectoID, IvTransRefID, ProductoComboID,' +
       'ValorAbierto, Cerrado, FechaCierre, Numero, ' +
       'DisponibleFisicoPRE, DisponibleFisicoPOST, ivPostID ) '+
       'SELECT i.IvTransaccionID, i.ProductoID, i.InventDimID, i.Direccion,' +
       'i.IvSecuencia, i.EstadoSalida, i.EstadoEntrada, i.FechaFisica,'+
       'i.Cantidad, i.CostoPosteado, i.CostoAjustado, i.CostoTotal,'+
       'i.CostoUnitario, i.TipoTransaccion, i.TransReferenciaID, i.Factura,'+
       'i.Comprobante, i.FechaEsperada, i.FechaFinanciera, i.ConduceID,'+
       'i.ClienteProveedor, i.ProyectoID, i.IvTransRefID, i.ProductoComboID,'+
       'i.ValorAbierto, i.Cerrado, i.FechaCierre, i.Numero,'+
       'i.DisponibleFisicoPRE, i.DisponibleFisicoPOST, i.ivPostID ' +
       'FROM  ' + strSourceDb + '.IvTransacciones i INNER JOIN ' + strSourceDb +
       '.IvDiarioLineas l ON i.IvTransaccionID = l.IvTransaccionID INNER JOIN ' + StrSourceDb +
       '.IvDiario f ON l.DiarioID = f.DiarioID  ';
  sqlCmd := sqlCmd + ' WHERE ( f.Fecha >= :pDesde AND f.Fecha <= :pHasta ) ';
  sqlCmd := sqlCmd + '  AND ( f.TipoDocumento NOT IN ' + strDocFilter + ')';
  RunCommand(sqlCmd);
  // - Asiento Contable
  CurTable := 'CgTransacciones';
  sqlCmd := 'INSERT INTO CgTransacciones ( IdRecTransaccion, Origen, DiarioID, ProyectoID, Fecha, Numero, CuentaContable, Descripcion, Dimension1, Dimension2, Debito, Credito, Monto ) ' + ' SELECT DISTINCT  d.IdRecTransaccion, d.Origen, d.DiarioID, d.ProyectoID, d.Fecha, d.Numero, d.CuentaContable, d.Descripcion, d.Dimension1, d.Dimension2, d.Debito, d.Credito, d.Monto ';
  sqlCmd := sqlCmd + ' FROM ' + strSourceDb + '.CgTransacciones d JOIN ' + strSourceDb + '.IvDiario h ON d.DiarioID = h.DiarioID ';
  sqlCmd := sqlCmd + ' WHERE ( d.Origen IN (10,11,12) ) AND ( h.Posteado = 1 ) AND ( d.Fecha >= :pDesde AND d.Fecha <= :pHasta )  ';
  sqlCmd := sqlCmd + ' AND ( h.TipoDocumento NOT IN ' + strDocFilter + ' )';
  RunCommand(sqlCmd);
  // Limpiar InventSum
  CurTable := '';
  sqlCmd := 'TRUNCATE TABLE IvResumen';
  RunCommand(sqlCmd);
  // Recalcular InventSum
  CurTable := '';
  sqlCmd := strUpdInventSum.Strings.Text;
  RunCommand(sqlCmd);
end;

procedure TfrmDialogSysCompanyExport.DoExportMaestros(strSourceDb : String; strDestDb: String);
var
  strCmd : String;
begin
  // Catalogo
  if cgMaestros.States[0] = cbsChecked then begin
    strUpdMaestros.MacroByName('Source_Table').Value := strSourceDb + '.CgCuentas';
    strUpdMaestros.MacroByName('Dest_Table').Value := strDestDb + '.CgCuentas';
    strUpdMaestros.MacroByName('Key_Field').Value := 'CuentaContable';
    strCmd := strUpdMaestros.ExpandMacros;
    RunCommand( strCmd );
  end;
  // Bancos
  if cgMaestros.States[1] = cbsChecked then begin
    strUpdMaestros.MacroByName('Source_Table').Value := strSourceDb + '.BcCuentas';
    strUpdMaestros.MacroByName('Dest_Table').Value := strDestDb + '.BcCuentas';
    strUpdMaestros.MacroByName('Key_Field').Value := 'CuentaBanco';
    strCmd := strUpdMaestros.ExpandMacros;
    RunCommand( strCmd );
  end;
  // Cientes
  if cgMaestros.States[2] = cbsChecked then begin
    strUpdMaestros.MacroByName('Source_Table').Value := strSourceDb + '.CcClientes';
    strUpdMaestros.MacroByName('Dest_Table').Value := strDestDb + '.CcClientes';
    strUpdMaestros.MacroByName('Key_Field').Value := 'Cliente';
    strCmd := strUpdMaestros.ExpandMacros;
    RunCommand( strCmd );
  end;
  // Suplidores
  if cgMaestros.States[3] = cbsChecked then begin
    strUpdMaestros.MacroByName('Source_Table').Value := strSourceDb + '.CpSuplidor';
    strUpdMaestros.MacroByName('Dest_Table').Value := strDestDb + '.CpSuplidor';
    strUpdMaestros.MacroByName('Key_Field').Value := 'Suplidor';
    strCmd := strUpdMaestros.ExpandMacros;
    RunCommand( strCmd );
  end;
  // Productos
  if cgMaestros.States[4] = cbsChecked then begin
    strUpdMaestros.MacroByName('Source_Table').Value := strSourceDb + '.IvProductos';
    strUpdMaestros.MacroByName('Dest_Table').Value := strDestDb + '.IvProductos';
    strUpdMaestros.MacroByName('Key_Field').Value := 'ProductoID';
    strCmd := strUpdMaestros.ExpandMacros;
    RunCommand( strCmd );
  end;
end;

procedure TfrmDialogSysCompanyExport.DoExportVentas(strSourceDb, strDestDb,
  strDocFilter: string);
var
  sqlCmd : String;
begin
  // - Facturas
  CurTable := '';
  sqlCmd := 'INSERT INTO ' + strDestDb + '.VeFactura SELECT * FROM ' + strSourceDb + '.VeFactura';
  sqlCmd := sqlCmd + ' WHERE ( Fecha >= :pDesde AND Fecha <= :pHasta )  ';
  sqlCmd := sqlCmd + ' AND ( TipoDocumento NOT IN ' + strDocFilter + ' )';
  RunCommand(sqlCmd);
  // - Transacciones de Inventario
  CurTable := 'IvTransacciones';
  sqlCmd := 'INSERT INTO ' + strDestDb + '.IvTransacciones ( IvTransaccionID, ProductoID, InventDimID, Direccion, ' +
       'IvSecuencia, EstadoSalida, EstadoEntrada, FechaFisica, ' +
       'Cantidad, CostoPosteado, CostoAjustado, CostoTotal, ' +
       'CostoUnitario, TipoTransaccion, TransReferenciaID, Factura, ' +
       'Comprobante, FechaEsperada, FechaFinanciera, ConduceID, ' +
       'ClienteProveedor, ProyectoID, IvTransRefID, ProductoComboID,' +
       'ValorAbierto, Cerrado, FechaCierre, Numero, ' +
       'DisponibleFisicoPRE, DisponibleFisicoPOST, ivPostID ) '+
       'SELECT i.IvTransaccionID, i.ProductoID, i.InventDimID, i.Direccion,' +
       'i.IvSecuencia, i.EstadoSalida, i.EstadoEntrada, i.FechaFisica,'+
       'i.Cantidad, i.CostoPosteado, i.CostoAjustado, i.CostoTotal,'+
       'i.CostoUnitario, i.TipoTransaccion, i.TransReferenciaID, i.Factura,'+
       'i.Comprobante, i.FechaEsperada, i.FechaFinanciera, i.ConduceID,'+
       'i.ClienteProveedor, i.ProyectoID, i.IvTransRefID, i.ProductoComboID,'+
       'i.ValorAbierto, i.Cerrado, i.FechaCierre, i.Numero,'+
       'i.DisponibleFisicoPRE, i.DisponibleFisicoPOST, i.ivPostID ' +
       'FROM  ' + strSourceDb + '.IvTransacciones i INNER JOIN ' + strSourceDb +
       '.VeFacturaLineas l ON i.IvTransaccionID = l.InventTransID INNER JOIN ' + strSourceDb +
       '.VeFactura f ON l.VentaID = f.VentaID AND l.FacturaID = f.FacturaID ';
  sqlCmd := sqlCmd + ' WHERE ( f.Fecha >= :pDesde AND f.Fecha <= :pHasta ) ';
  sqlCmd := sqlCmd + '  AND ( f.TipoDocumento NOT IN ' + strDocFilter + ')';
  RunCommand(sqlCmd);
  // - Lineas de Factura
  CurTable := '';
  sqlCmd := 'INSERT INTO ' + strDestDb + '.VeFacturaLineas SELECT * FROM ' + strSourceDb + '.VeFacturaLineas';
  sqlCmd := sqlCmd + ' WHERE ( Fecha >= :pDesde AND Fecha <= :pHasta )  ';
  sqlCmd := sqlCmd + ' AND ( TipoDocumento NOT IN ' + strDocFilter + ' )';
  RunCommand(sqlCmd);
  // - Transacciones de Cxc
  CurTable := '';
  sqlCmd := 'INSERT INTO ' + strDestDb + '.CcTransacciones (' + ' Cliente, Fecha, Comprobante, Factura, Descripcion, MontoCUR, AplicadoCUR, MontoMST, AplicadoMST, MonedaID, Vencimiento, UltimoDocAplicacion, ' + ' UltimoFechaAplicacion, Cerrado, TipoTransaccion, APPROVEDBY, APPROVED, ProyectoID, Dimension1, Dimension2, TasaCambio, NumeroDocumento, ' + ' FechaDocumento, UltTasaCambio, FormaDePago, MetodoDePago, ReferenciaDePago, PagoEnEfectivo, TransID, TipoDocumento, AjusteCambio, VendedorId ) ' +
            ' SELECT DISTINCT d.Cliente, d.Fecha, d.Comprobante, d.Factura, d.Descripcion, d.MontoCUR, d.AplicadoCUR, d.MontoMST, d.AplicadoMST, d.MonedaID, d.Vencimiento, d.UltimoDocAplicacion, ' + ' d.UltimoFechaAplicacion, d.Cerrado, d.TipoTransaccion, d.APPROVEDBY, d.APPROVED, d.ProyectoID, d.Dimension1, d.Dimension2, d.TasaCambio, d.NumeroDocumento, ' + ' d.FechaDocumento, d.UltTasaCambio, d.FormaDePago, d.MetodoDePago, d.ReferenciaDePago, d.PagoEnEfectivo, d.TransID, d.TipoDocumento, d.AjusteCambio, ' + ' d.VendedorId FROM ' + strSourceDb + '.CcTransacciones d' +
            ' JOIN VeFactura ON d.Factura = VeFactura.FacturaID ';
  sqlCmd := sqlCmd + ' WHERE ( d.TipoTransaccion IN (1,5) ) AND ( d.Fecha >= :pDesde AND d.Fecha <= :pHasta )  ';
  sqlCmd := sqlCmd + ' AND ( d.TipoDocumento NOT IN ' + strDocFilter + ' )';
  RunCommand(sqlCmd);
  // - Asiento Contable
  CurTable := 'CgTransacciones';
  sqlCmd := 'INSERT INTO CgTransacciones ( IdRecTransaccion, Origen, DiarioID, ProyectoID, Fecha, Numero, CuentaContable, Descripcion, Dimension1, Dimension2, Debito, Credito, Monto ) ' + ' SELECT DISTINCT  d.IdRecTransaccion, d.Origen, d.DiarioID, d.ProyectoID, d.Fecha, d.Numero, d.CuentaContable, d.Descripcion, d.Dimension1, d.Dimension2, d.Debito, d.Credito, d.Monto ';
  sqlCmd := sqlCmd + ' FROM ' + strSourceDb + '.CgTransacciones d JOIN ' + strSourceDb + '.VeFactura h ON d.DiarioID = h.DiarioID ';
  sqlCmd := sqlCmd + ' WHERE ( d.Origen = 14 ) AND ( d.Fecha >= :pDesde AND d.Fecha <= :pHasta )  ';
  sqlCmd := sqlCmd + ' AND ( h.TipoDocumento NOT IN ' + strDocFilter + ' )';
  RunCommand(sqlCmd);
end;

procedure TfrmDialogSysCompanyExport.DoExportCxc(sqlCmd: string; strDestDb: string; strSourceDb: string; strDocFilter: string);
begin
  // - Cuentas por Cobrar
  CurTable := '';
  sqlCmd := 'INSERT INTO ' + strDestDb + '.CcDiario SELECT * FROM ' + strSourceDb + '.CcDiario';
  sqlCmd := sqlCmd + ' WHERE ( Posteado = 1 ) AND ( Fecha >= :pDesde AND Fecha <= :pHasta )  ';
  sqlCmd := sqlCmd + ' AND ( TipoDocumento NOT IN ' + strDocFilter + ' )';
  RunCommand(sqlCmd);
  CurTable := 'CcDiarioDetalle';
  sqlCmd := 'INSERT INTO ' + strDestDb + '.CcDiarioDetalle (DiarioID, ProyectoID, Secuencia, Fecha, Numero, CuentaContable, Descripcion, Dimension1, Dimension2, ' +
            ' Debito, Credito, Posteado, DelSistema)' +
            ' SELECT d.DiarioID, d.ProyectoID, d.Secuencia, d.Fecha, d.Numero, d.CuentaContable, d.Descripcion, d.Dimension1, d.Dimension2, ' +
            ' d.Debito, d.Credito, d.Posteado, d.DelSistema FROM ' + strSourceDb + '.CcDiarioDetalle d';
  sqlCmd := sqlCmd + ' JOIN ' + strSourceDb + '.CcDiario h ON d.DiarioID = h.DiarioID ';
  sqlCmd := sqlCmd + ' WHERE ( h.Posteado = 1 ) AND ( d.Fecha >= :pDesde AND d.Fecha <= :pHasta )  ';
  sqlCmd := sqlCmd + ' AND ( h.TipoDocumento NOT IN ' + strDocFilter + ' )';
  RunCommand(sqlCmd);
  CurTable := '';
  sqlCmd := 'INSERT INTO ' + strDestDb + '.CcTransacciones (' + ' Cliente, Fecha, Comprobante, Factura, Descripcion, MontoCUR, AplicadoCUR, MontoMST, AplicadoMST, MonedaID, Vencimiento, UltimoDocAplicacion, ' + ' UltimoFechaAplicacion, Cerrado, TipoTransaccion, APPROVEDBY, APPROVED, ProyectoID, Dimension1, Dimension2, TasaCambio, NumeroDocumento, ' + ' FechaDocumento, UltTasaCambio, FormaDePago, MetodoDePago, ReferenciaDePago, PagoEnEfectivo, TransID, TipoDocumento, AjusteCambio, VendedorId ) ' +
    ' SELECT DISTINCT d.Cliente, d.Fecha, d.Comprobante, d.Factura, d.Descripcion, d.MontoCUR, d.AplicadoCUR, d.MontoMST, d.AplicadoMST, d.MonedaID, d.Vencimiento, d.UltimoDocAplicacion, ' + ' d.UltimoFechaAplicacion, d.Cerrado, d.TipoTransaccion, d.APPROVEDBY, d.APPROVED, d.ProyectoID, d.Dimension1, d.Dimension2, d.TasaCambio, d.NumeroDocumento, ' + ' d.FechaDocumento, d.UltTasaCambio, d.FormaDePago, d.MetodoDePago, d.ReferenciaDePago, d.PagoEnEfectivo, d.TransID, d.TipoDocumento, d.AjusteCambio, ' + ' d.VendedorId FROM ' + strSourceDb + '.CcTransacciones d';
  sqlCmd := sqlCmd + ' JOIN ' + strSourceDb + '.CcDiario h ON d.Comprobante = h.Numero ';
  sqlCmd := sqlCmd + ' WHERE ( h.Posteado = 1 ) AND ( d.Fecha >= :pDesde AND d.Fecha <= :pHasta )  ';
  sqlCmd := sqlCmd + ' AND ( h.TipoDocumento NOT IN ' + strDocFilter + ' )';
  RunCommand(sqlCmd);
  CurTable := 'CgTransacciones';
  sqlCmd := 'INSERT INTO CgTransacciones ( IdRecTransaccion, Origen, DiarioID, ProyectoID, Fecha, Numero, CuentaContable, Descripcion, Dimension1, Dimension2, Debito, Credito, Monto ) ' + ' SELECT DISTINCT  d.IdRecTransaccion, d.Origen, d.DiarioID, d.ProyectoID, d.Fecha, d.Numero, d.CuentaContable, d.Descripcion, d.Dimension1, d.Dimension2, d.Debito, d.Credito, d.Monto ';
  sqlCmd := sqlCmd + ' FROM ' + strSourceDb + '.CgTransacciones d JOIN ' + strSourceDb + '.CcDiario h ON d.DiarioID = h.DiarioID ';
  sqlCmd := sqlCmd + ' WHERE ( d.Origen IN (4,5,6) ) AND ( h.Posteado = 1 ) AND ( d.Fecha >= :pDesde AND d.Fecha <= :pHasta )  ';
  sqlCmd := sqlCmd + ' AND ( h.TipoDocumento NOT IN ' + strDocFilter + ' )';
  RunCommand(sqlCmd);
end;

procedure TfrmDialogSysCompanyExport.DoExportBanco(sqlCmd: string; strDestDb: string; strSourceDb: string; strDocFilter: string);
begin
  // - Banco
  CurTable := '';
  sqlCmd := 'INSERT INTO ' + strDestDb + '.BcDiario (' +
    ' DiarioID, ProyectoID, TipoDocumento, TipoDiario, CuentaBanco, CuentaBancoTo, Origen, Numero, Fecha, Descripcion, Beneficiario, Nota, TotalDebitos, ' +
    ' TotalCreditos, Posteado, ChequeNum, MonedaID, MontoCUR, Monto, DepositoNum, RefNum, Aprobado, AprobadoPor, ValorEnLetras, ChequeImpreso,' +
    ' ImpresoPor, ImpresoFecha, Memorizado, DiarioPagoID, FechaUltimaCopia, DiarioUltimaCopia, TasaFija )' +
   ' SELECT DiarioID, ProyectoID, TipoDocumento, TipoDiario, CuentaBanco, CuentaBancoTo, Origen, Numero, Fecha, Descripcion, Beneficiario, Nota, TotalDebitos, ' +
   ' TotalCreditos, Posteado, ChequeNum, MonedaID, MontoCUR, Monto, DepositoNum, RefNum, Aprobado, AprobadoPor, ValorEnLetras, ChequeImpreso, ' +
   ' ImpresoPor, ImpresoFecha, Memorizado, DiarioPagoID, FechaUltimaCopia, DiarioUltimaCopia, TasaFija FROM ' + strSourceDb + '.BcDiario';
  sqlCmd := sqlCmd + ' WHERE ( Posteado = 1 ) AND ( Fecha >= :pDesde AND Fecha <= :pHasta )  ';
  sqlCmd := sqlCmd + ' AND ( TipoDocumento NOT IN ' + strDocFilter + ' )';

  RunCommand(sqlCmd);

  CurTable := 'BcDiarioDetalle';
  sqlCmd := 'INSERT INTO ' + strDestDb + '.BcDiarioDetalle ( DiarioID, ProyectoID, Secuencia, Fecha, Numero, CuentaContable, Descripcion, Dimension1, Dimension2, Debito, Credito, Posteado, DelSistema ) ' +
             ' SELECT d.DiarioID, d.ProyectoID, d.Secuencia, d.Fecha, d.Numero, d.CuentaContable, d.Descripcion, d.Dimension1, d.Dimension2, d.Debito, d.Credito, d.Posteado, d.DelSistema FROM ' + strSourceDb + '.BcDiarioDetalle d';
  sqlCmd := sqlCmd + ' JOIN ' + strSourceDb + '.BcDiario h ON d.DiarioID = h.DiarioID ';
  sqlCmd := sqlCmd + ' WHERE ( h.Posteado = 1 ) AND ( d.Fecha >= :pDesde AND d.Fecha <= :pHasta )  ';
  sqlCmd := sqlCmd + ' AND ( h.TipoDocumento NOT IN ' + strDocFilter + ' )';

  RunCommand(sqlCmd);

  CurTable := 'BcTransacciones';
  sqlCmd := 'INSERT INTO ' + strDestDb + '.BcTransacciones ' +
    ' (BcTransID, Fecha, Comprobante, CuentaContable, CuentaBanco, MontoCUR, Monto, ValorCUR, Valor, MonedaID, NumeroEstado, FechaEstado, ' +
    ' BcTipoTransaccionID, Tipo, DepositoNum, ChequeNum, ReferenciaPago, ModoPago, Conciliado, Incluida, MontoCorreccion, Dimension1, Dimension2,'+
    ' Manual, Texto, Cancelar, ProyectoID, Beneficiario, Transferencia)' +
    'SELECT d.BcTransID, d.Fecha, d.Comprobante, d.CuentaContable, d.CuentaBanco, d.MontoCUR, d.Monto, d.ValorCUR, d.Valor, d.MonedaID, d.NumeroEstado, d.FechaEstado, ' +
      ' d.BcTipoTransaccionID, d.Tipo, d.DepositoNum, d.ChequeNum, d.ReferenciaPago, d.ModoPago, d.Conciliado, d.Incluida, d.MontoCorreccion, d.Dimension1, d.Dimension2, ' +
      ' d.Manual, d.Texto, d.Cancelar, d.ProyectoID, d.Beneficiario, d.Transferencia FROM ' + strSourceDb + '.BcTransacciones d';
  sqlCmd := sqlCmd + ' JOIN ' + strSourceDb + '.BcDiario h ON d.Comprobante = h.Numero ';
  sqlCmd := sqlCmd + ' WHERE ( h.Posteado = 1 ) AND ( d.Fecha >= :pDesde AND d.Fecha <= :pHasta )  ';
  sqlCmd := sqlCmd + ' AND ( h.TipoDocumento NOT IN ' + strDocFilter + ' )';

  RunCommand(sqlCmd);

  CurTable := 'CgTransacciones';
  sqlCmd := 'INSERT INTO CgTransacciones ( IdRecTransaccion, Origen, DiarioID, ProyectoID, Fecha, Numero, CuentaContable, Descripcion, Dimension1, Dimension2, Debito, Credito, Monto ) ' +
             ' SELECT     d.IdRecTransaccion, d.Origen, d.DiarioID, d.ProyectoID, d.Fecha, d.Numero, d.CuentaContable, d.Descripcion, d.Dimension1, d.Dimension2, d.Debito, d.Credito, d.Monto ';
  sqlCmd := sqlCmd + ' FROM ' + strSourceDb + '.CgTransacciones d JOIN ' + strSourceDb + '.BcDiario h ON d.DiarioID = h.DiarioID ';
  sqlCmd := sqlCmd + ' WHERE ( d.Origen IN (1,2,3) ) AND ( h.Posteado = 1 ) AND ( d.Fecha >= :pDesde AND d.Fecha <= :pHasta )  ';
  sqlCmd := sqlCmd + ' AND ( h.TipoDocumento NOT IN ' + strDocFilter + ' )';

  RunCommand(sqlCmd);
end;

procedure TfrmDialogSysCompanyExport.DoExportCompras(strSourceDb, strDestDb,
  strDocFilter: string);
var
  sqlCmd : String;
begin
  // - Facturas
  CurTable := '';
  sqlCmd := 'INSERT INTO ' + strDestDb + '.CoFactura SELECT * FROM ' + strSourceDb + '.CoFactura';
  sqlCmd := sqlCmd + ' WHERE ( Fecha >= :pDesde AND Fecha <= :pHasta )  ';
  sqlCmd := sqlCmd + ' AND ( TipoDocumento NOT IN ' + strDocFilter + ' )';
  RunCommand(sqlCmd);
  // - Transacciones de Inventario
  CurTable := 'IvTransacciones';
  sqlCmd := 'INSERT INTO ' + strDestDb + '.IvTransacciones ( IvTransaccionID, ProductoID, InventDimID, Direccion, ' +
       'IvSecuencia, EstadoSalida, EstadoEntrada, FechaFisica, ' +
       'Cantidad, CostoPosteado, CostoAjustado, CostoTotal, ' +
       'CostoUnitario, TipoTransaccion, TransReferenciaID, Factura, ' +
       'Comprobante, FechaEsperada, FechaFinanciera, ConduceID, ' +
       'ClienteProveedor, ProyectoID, IvTransRefID, ProductoComboID,' +
       'ValorAbierto, Cerrado, FechaCierre, Numero, ' +
       'DisponibleFisicoPRE, DisponibleFisicoPOST, ivPostID ) '+
       'SELECT i.IvTransaccionID, i.ProductoID, i.InventDimID, i.Direccion,' +
       'i.IvSecuencia, i.EstadoSalida, i.EstadoEntrada, i.FechaFisica,'+
       'i.Cantidad, i.CostoPosteado, i.CostoAjustado, i.CostoTotal,'+
       'i.CostoUnitario, i.TipoTransaccion, i.TransReferenciaID, i.Factura,'+
       'i.Comprobante, i.FechaEsperada, i.FechaFinanciera, i.ConduceID,'+
       'i.ClienteProveedor, i.ProyectoID, i.IvTransRefID, i.ProductoComboID,'+
       'i.ValorAbierto, i.Cerrado, i.FechaCierre, i.Numero,'+
       'i.DisponibleFisicoPRE, i.DisponibleFisicoPOST, i.ivPostID ' +
       'FROM  ' + strSourceDb + '.IvTransacciones i INNER JOIN ' + strSourceDb +
       '.CoFacturaLineas l ON i.IvTransaccionID = l.InventTransID INNER JOIN ' + StrSourceDb +
       '.CoFactura f ON l.CompraID = f.CompraID AND l.FacturaID = f.FacturaID ';
  sqlCmd := sqlCmd + ' WHERE ( f.Fecha >= :pDesde AND f.Fecha <= :pHasta ) ';
  sqlCmd := sqlCmd + '  AND ( f.TipoDocumento NOT IN ' + strDocFilter + ')';
  RunCommand(sqlCmd);
  // - Lineas de Factura
  CurTable := '';
  sqlCmd := 'INSERT INTO ' + strDestDb + '.CoFacturaLineas SELECT * FROM ' + strSourceDb + '.CoFacturaLineas';
  sqlCmd := sqlCmd + ' WHERE ( Fecha >= :pDesde AND Fecha <= :pHasta )  ';
  sqlCmd := sqlCmd + ' AND ( TipoDocumento NOT IN ' + strDocFilter + ' )';
  RunCommand(sqlCmd);
  // - Transacciones de Cxp
  CurTable := '';
  sqlCmd := 'INSERT INTO ' + strDestDb + '.CpTransacciones (' + ' Suplidor, Fecha, Comprobante, Factura, Descripcion, MontoCUR, AplicadoCUR, MontoMST, AplicadoMST, MonedaID, Vencimiento, UltimoDocAplicacion, ' + ' UltimoFechaAplicacion, Cerrado, TipoTransaccion, APPROVEDBY, APPROVED, ProyectoID, Dimension1, Dimension2, TasaCambio, NumeroDocumento, ' + ' FechaDocumento, UltTasaCambio, FormaDePago, MetodoDePago, ReferenciaDePago, PagoEnEfectivo, TransID, TipoDocumento, AjusteCambio ) ' +
            ' SELECT DISTINCT d.Suplidor, d.Fecha, d.Comprobante, d.Factura, d.Descripcion, d.MontoCUR, d.AplicadoCUR, d.MontoMST, d.AplicadoMST, d.MonedaID, d.Vencimiento, d.UltimoDocAplicacion, ' + ' d.UltimoFechaAplicacion, d.Cerrado, d.TipoTransaccion, d.APPROVEDBY, d.APPROVED, d.ProyectoID, d.Dimension1, d.Dimension2, d.TasaCambio, d.NumeroDocumento, ' + ' d.FechaDocumento, d.UltTasaCambio, d.FormaDePago, d.MetodoDePago, d.ReferenciaDePago, d.PagoEnEfectivo, d.TransID, d.TipoDocumento, d.AjusteCambio ' + ' FROM ' + strSourceDb + '.CpTransacciones d' +
            ' JOIN CoFactura ON d.Factura = CoFactura.FacturaID ';
  sqlCmd := sqlCmd + ' WHERE ( d.TipoTransaccion IN (1,5) ) AND ( d.Fecha >= :pDesde AND d.Fecha <= :pHasta )  ';
  sqlCmd := sqlCmd + ' AND ( d.TipoDocumento NOT IN ' + strDocFilter + ' )';
  RunCommand(sqlCmd);
  // - Asiento Contable
  CurTable := 'CgTransacciones';
  sqlCmd := 'INSERT INTO CgTransacciones ( IdRecTransaccion, Origen, DiarioID, ProyectoID, Fecha, Numero, CuentaContable, Descripcion, Dimension1, Dimension2, Debito, Credito, Monto ) ' + ' SELECT DISTINCT  d.IdRecTransaccion, d.Origen, d.DiarioID, d.ProyectoID, d.Fecha, d.Numero, d.CuentaContable, d.Descripcion, d.Dimension1, d.Dimension2, d.Debito, d.Credito, d.Monto ';
  sqlCmd := sqlCmd + ' FROM ' + strSourceDb + '.CgTransacciones d JOIN ' + strSourceDb + '.CoFactura h ON d.DiarioID = h.DiarioID ';
  sqlCmd := sqlCmd + ' WHERE ( d.Origen = 13 ) AND ( d.Fecha >= :pDesde AND d.Fecha <= :pHasta )  ';
  sqlCmd := sqlCmd + ' AND ( h.TipoDocumento NOT IN ' + strDocFilter + ' )';
  RunCommand(sqlCmd);
end;

procedure TfrmDialogSysCompanyExport.DoExportContabilidad(strDocFilter: string; strDestDb: string; strSourceDb: string);
var
  sqlCmd: string;
begin
  // - Contabilidad
  CurTable := '';
  sqlCmd := 'INSERT INTO ' + strDestDb + '.CgDiario SELECT * FROM ' + strSourceDb + '.CgDiario';
  sqlCmd := sqlCmd + ' WHERE ( Posteado = 1 ) AND ( Fecha >= :pDesde AND Fecha <= :pHasta )  ';
  sqlCmd := sqlCmd + ' AND ( TipoDocumento NOT IN ' + strDocFilter + ' )';
  RunCommand(sqlCmd);
  CurTable := 'CgDiarioDetalle';
  sqlCmd := 'INSERT INTO CgDiarioDetalle (DiarioID, ProyectoID, Secuencia, Fecha, Numero, CuentaContable, Descripcion, Dimension1, Dimension2, Debito, Credito, Posteado) ' + ' SELECT     d.DiarioID, d.ProyectoID, d.Secuencia, d.Fecha, d.Numero, d.CuentaContable, d.Descripcion, d.Dimension1, d.Dimension2, d.Debito, d.Credito, d.Posteado ';
  sqlCmd := sqlCmd + ' FROM ' + strSourceDb + '.CgDiarioDetalle d JOIN ' + strSourceDb + '.CgDiario h ON d.DiarioID = h.DiarioID ';
  sqlCmd := sqlCmd + ' WHERE ( h.Posteado = 1 ) AND ( d.Fecha >= :pDesde AND d.Fecha <= :pHasta )  ';
  sqlCmd := sqlCmd + ' AND ( h.TipoDocumento NOT IN ' + strDocFilter + ' )';
  RunCommand(sqlCmd);
  CurTable := 'CgTransacciones';
  sqlCmd := 'INSERT INTO CgTransacciones ( IdRecTransaccion, Origen, DiarioID, ProyectoID, Fecha, Numero, CuentaContable, Descripcion, Dimension1, Dimension2, Debito, Credito, Monto ) ' + ' SELECT     d.IdRecTransaccion, d.Origen, d.DiarioID, d.ProyectoID, d.Fecha, d.Numero, d.CuentaContable, d.Descripcion, d.Dimension1, d.Dimension2, d.Debito, d.Credito, d.Monto ';
  sqlCmd := sqlCmd + ' FROM ' + strSourceDb + '.CgTransacciones d JOIN ' + strSourceDb + '.CgDiario h ON d.DiarioID = h.DiarioID ';
  sqlCmd := sqlCmd + ' WHERE ( d.Origen = 0 ) AND ( h.Posteado = 1 ) AND ( d.Fecha >= :pDesde AND d.Fecha <= :pHasta )  ';
  sqlCmd := sqlCmd + ' AND ( h.TipoDocumento NOT IN ' + strDocFilter + ' )';
  RunCommand(sqlCmd);
end;

procedure TfrmDialogSysCompanyExport.RunCommand(sqlCmd: string);
begin

  if CurTable <> '' then conDest.Execute('SET IDENTITY_INSERT ' + CurTable + ' ON');

  adoCmd.CommandText := sqlCmd;
  if adoCmd.Parameters.Count > 0 then begin
    adoCmd.Parameters.ParamByName('pDesde').Value := deDesde.Date;
    adoCmd.Parameters.ParamByName('pHasta').Value := deHasta.Date;
  end;
  adoCmd.Execute;

  if CurTable <> '' then conDest.Execute('SET IDENTITY_INSERT ' + CurTable + ' OFF');

  frmApplDBChangeSettings.pbProgress.StepBy(1);
  frmApplDbChangeSettings.Update;
end;

end.
