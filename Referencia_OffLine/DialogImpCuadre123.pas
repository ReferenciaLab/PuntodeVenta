unit DialogImpCuadre;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, StdCtrls, cxButtons, cxTextEdit, dxLayoutControl,
  cxContainer, cxMaskEdit, cxDropDownEdit, ADODB,pptypes, cxGroupBox,
  cxRadioGroup, cxintl, ppCtrls, ppBands, ppClass, ppVar, ppPrnabl, ppCache,
  ppComm, ppRelatv, ppProd, ppReport, ppParameter, daDataModule, ppModule,
  raCodMod, daDataView, daQueryDataView, daADO;

type
  TfrmDialogImpCuadre = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dbDatos: TcxGridDBTableView;
    lvDatos: TcxGridLevel;
    cgDatos: TcxGrid;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    btcancelar: TcxButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    btaceptar: TcxButton;
    dxLayoutControl1Item6: TdxLayoutItem;
    dsDatos: TDataSource;
    qrCuadres: TADOQuery;
    rgCriterio: TcxRadioGroup;
    dxLayoutControl1Item1: TdxLayoutItem;
    qrCuadresCorteId: TStringField;
    qrCuadresFecha: TDateTimeField;
    qrCuadresHora: TStringField;
    qrCuadresUsuario: TStringField;
    qrCuadresSucursalId: TStringField;
    dbDatosCorteId: TcxGridDBColumn;
    dbDatosFecha: TcxGridDBColumn;
    dbDatosHora: TcxGridDBColumn;
    dbDatosUsuario: TcxGridDBColumn;
    cxIntl1: TcxIntl;
    procedure rgCriterioPropertiesChange(Sender: TObject);
    procedure cgDatosExit(Sender: TObject);
    procedure cgDatosEnter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure RefrescarDatos;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Run;
  end;

var
  frmDialogImpCuadre: TfrmDialogImpCuadre;
  AdentroGrid : Boolean;

implementation

uses ActionsDM,DataModule,PuntoVenta,Main;

{$R *.dfm}

procedure TfrmDialogImpCuadre.RefrescarDatos;
var
 Sql : String;
begin
 Sql := 'SELECT * FROM PTCorteCajaCab ';

 if rgCriterio.ItemIndex = 0 then
    Sql := Sql + 'WHERE Usuario = '+ #39 + DM.CurUser + #39 ;

 qrCuadres.close;
 qrCuadres.SQL.Clear;
 qrCuadres.SQL.Text := Sql;
 qrCuadres.open;
end;

procedure TfrmDialogImpCuadre.rgCriterioPropertiesChange(Sender: TObject);
begin
 RefrescarDatos;
end;

procedure TfrmDialogImpCuadre.cgDatosEnter(Sender: TObject);
begin
 AdentroGrid := True;
end;

procedure TfrmDialogImpCuadre.cgDatosExit(Sender: TObject);
begin
 AdentroGrid := False;
end;

procedure TfrmDialogImpCuadre.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = Vk_Down) and (not AdentroGrid) then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);
  if (key = 13) then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);
  if (key = Vk_Up) and (not AdentroGrid) then
     PostMessage(Handle, Wm_NextDlgCtl, 1, 0);
  if (key = 27) then
  begin
   Close;
  end;
end;

procedure TfrmDialogImpCuadre.Run;
Var
 Texto  : String;
 qcorte : TADOQuery;
begin
 RefrescarDatos;
 showmodal;
 if ModalResult = mrOk then
  begin
   if qrCuadres.RecordCount > 0 then
    begin
{
     ppImpCuadreCaja.AutoSearchFields[0].Value := qrCuadresCorteID.Value;
     ppImpCuadreCaja.AutoSearchDialog := False;
     ppImpCuadreCaja.DeviceType := dtScreen;
     ppImpCuadreCaja.Print;
}
     DM.qrCorteCajaDetRep.Close;
     DM.qrCorteCajaDetRep.Parameters.ParamByName('cor').Value := qrCuadresCorteID.Value;
     DM.qrCorteCajaDetRep.Open;

     DM.qrCorteDetalle.Close;
     DM.qrCorteDetalle.Parameters.ParamByName('cor').Value := qrCuadresCorteID.Value;
     DM.qrCorteDetalle.Open;

     //Imprimiendo el Reporte de Pagos Desglosados por Paciente - Forma de Pago.
     if (qrCuadres.FieldByName('Usuario').AsString = 'SUCURSAL') then
       Begin
        DM.Cobro_Var := 'Sucursal';

        DM.qrCorteSucursal.Close;
        DM.qrCorteSucursal.Parameters.ParamByName('cor').Value := qrCuadresCorteID.Value;
        DM.qrCorteSucursal.Open;

//        DM.ppImpCuadreCajaSucursal.DeviceType := dtScreen;
//        DM.ppImpCuadreCajaSucursal.Print;
        DM.ppCuadreSucursal2.DeviceType := dtScreen;
        DM.ppCuadreSucursal2.Print;

        Texto := ' SELECT * FROM PTCobro C, PTEntradaPaciente E '+
                 ' WHERE C.refrecid = E.RecId '+
                 ' AND C.Fecha = :fec '+
                 ' AND C.SucursalId = :suc '+
                 ' AND C.UsuarioId = :usr '+
                 ' AND C.CuadreGlobal = :cdr '+
                 ' ORDER BY C.SucursalId, C.Fecha, C.UsuarioId, C.EntradaId ';
       end
     else
       Begin
//        DM.ppImpCuadreCajaUsuario.DeviceType := dtScreen;
//        DM.ppImpCuadreCajaUsuario.Print;
        DM.ppCuadreUsuario2.DeviceType := dtScreen;
        DM.ppCuadreUsuario2.Print;

        DM.Cobro_Var := 'Usuario';

        Texto := ' SELECT * FROM PTCobro C, PTEntradaPaciente E '+
                 ' WHERE C.refrecid = E.RecId '+
                 ' AND C.Fecha = :fec '+
                 ' AND C.SucursalId = :suc '+
                 ' AND C.UsuarioId = :usr '+
                 ' AND C.CuadreUsuario = :cdr '+
                 ' ORDER BY C.SucursalId, C.Fecha, C.UsuarioId, C.EntradaId ';
       end;

     DM.qrCobro.Close;
     DM.qrCobro.SQL.Text := Texto;
     DM.qrCobro.Parameters.ParamByName('suc').Value := qrCuadres.FieldByName('SucursalId').AsString;
     DM.qrCobro.Parameters.ParamByName('fec').Value := qrCuadres.FieldByName('Fecha').AsString;
     DM.qrCobro.Parameters.ParamByName('usr').Value := qrCuadres.FieldByName('Usuario').AsString;
     DM.qrCobro.Parameters.ParamByName('cdr').Value := qrCuadres.FieldByName('CorteId').AsString;
     DM.qrCobro.Open;

     If (DM.qrCobro.RecordCount > 0) then
       begin
         DM.ppListadoPagosDesglosados.DeviceType := dtScreen;
         DM.ppListadoPagosDesglosados.Print;
       end;

     //Imprimiendo el Reporte de Entradas por Grupo de Cliente del Usuario.
     DM.qrEntradaCabRep.Close;
     DM.qrEntradaCabRep.SQL.Text := ' SELECT * FROM PTEntradaPaciente WHERE Fecha = :fec '+
                                    ' AND SucursalId = :suc AND UserId = :usr '+
                                    ' ORDER BY Sucursal, Origen, Fecha, EntradaId ';
     DM.qrEntradaCabRep.Parameters.ParamByName('suc').Value := qrCuadres.FieldByName('SucursalId').AsString;
     DM.qrEntradaCabRep.Parameters.ParamByName('fec').Value := qrCuadres.FieldByName('Fecha').AsString;
     DM.qrEntradaCabRep.Parameters.ParamByName('usr').Value := qrCuadres.FieldByName('Usuario').AsString;
     DM.qrEntradaCabRep.Open;

     If (DM.qrEntradaCabRep.RecordCount > 0) then
       begin
         DM.ppImpEntradasxGrupos.DeviceType := dtScreen;
         DM.ppImpEntradasxGrupos.Print;
       end;

     //Imprimiendo el Reporte de Entradas con Descuentos del Usuario.
     DM.qrEntradaCabRep.Close;
     DM.qrEntradaCabRep.SQL.Text := ' SELECT * FROM PTEntradaPaciente WHERE Fecha = :fec '+
                                    ' AND SucursalId = :suc AND DescAutorizadoPor = :usr '+
                                    ' AND Descuento > 0.99 '+
                                    ' ORDER BY Sucursal, Fecha, EntradaId ';
     DM.qrEntradaCabRep.Parameters.ParamByName('suc').Value := qrCuadres.FieldByName('SucursalId').AsVariant;
     DM.qrEntradaCabRep.Parameters.ParamByName('fec').Value := qrCuadres.FieldByName('Fecha').AsVariant;
     DM.qrEntradaCabRep.Parameters.ParamByName('usr').Value := qrCuadres.FieldByName('Usuario').AsVariant;
     DM.qrEntradaCabRep.Open;

     If (DM.qrEntradaCabRep.RecordCount > 0) then
       begin
         DM.ppImpPacienteDescuento.DeviceType := dtScreen;
         DM.ppImpPacienteDescuento.Print;
       end;

     //Imprimiendo el Reporte de Pagos Pendientes del Usuario.
     DM.qrEntradaCabRep.Close;
     DM.qrEntradaCabRep.SQL.Text := ' SELECT * FROM PTEntradaPaciente WHERE UserId = :usr '+
                                    ' AND (Neto - TotalPagado) > 0.99 '+
                                    ' AND FormadePago <> :pag '+
                                    ' ORDER BY Fecha, Sucursal, EntradaId ';
     DM.qrEntradaCabRep.Parameters.ParamByName('usr').Value := qrCuadres.FieldByName('Usuario').AsString;
     DM.qrEntradaCabRep.Parameters.ParamByName('pag').Value := 'CRE';
     DM.qrEntradaCabRep.Open;

     If (DM.qrEntradaCabRep.RecordCount > 0) then
       begin
         DM.ppImpPagosPend.DeviceType := dtScreen;
         DM.ppImpPagosPend.Print;
       end;

     FreeAndNil(qcorte);
    end;
  end;
end;

end.
