unit DialogBalUsuarioDiario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, StdCtrls, cxButtons, cxTextEdit, dxLayoutControl,
  cxContainer, cxMaskEdit, cxDropDownEdit, ADODB, cxCurrencyEdit,pptypes,
  JvMemoryDataset, ppDB, ppCtrls, ppDBPipe, ppBands, ppVar, ppPrnabl, ppClass,
  ppCache, ppComm, ppRelatv, ppProd, ppReport;

type
  TfrmDialogBalUsuarioDiario = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dbDatos: TcxGridDBTableView;
    lvDatos: TcxGridLevel;
    cgDatos: TcxGrid;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    btaceptar: TcxButton;
    dxLayoutControl1Item6: TdxLayoutItem;
    dsUsuarioCaja: TDataSource;
    qrBalUsuarioCaja: TADOQuery;
    qrBalUsuarioCajaCuadrado: TStringField;
    qrBalUsuarioCajaTotal_Efectivo: TBCDField;
    qrBalUsuarioCajaTotal_Dolares: TBCDField;
    qrBalUsuarioCajaTotal_Tarjeta_Debito: TBCDField;
    qrBalUsuarioCajaTotal_Tarjeta_Credito: TBCDField;
    qrBalUsuarioCajaTotal_Cheque: TBCDField;
    qrBalUsuarioCajaTotal_Nota_Credito: TBCDField;
    qrBalUsuarioCajaTotal_Devolucion: TBCDField;
    dbDatosCuadrado: TcxGridDBColumn;
    dbDatosTotal_Efectivo: TcxGridDBColumn;
    dbDatosTotal_Dolares: TcxGridDBColumn;
    dbDatosTotal_Tarjeta_Debito: TcxGridDBColumn;
    dbDatosTotal_Tarjeta_Credito: TcxGridDBColumn;
    dbDatosTotal_Cheque: TcxGridDBColumn;
    dbDatosTotal_Nota_Credito: TcxGridDBColumn;
    dbDatosTotal_Devolucion: TcxGridDBColumn;
    qrBalUsuarioCajaTotal_Cobrado_RD: TCurrencyField;
    dbDatosTotal_Cobrado_RD: TcxGridDBColumn;
    dxLayoutControl1Item1: TdxLayoutItem;
    btImprimir: TcxButton;
    ppReporteCaja: TppReport;
    ppHeaderBand16: TppHeaderBand;
    ppDBText215: TppDBText;
    ppLabel237: TppLabel;
    ppLabel238: TppLabel;
    ppSystemVariable23: TppSystemVariable;
    ppSystemVariable24: TppSystemVariable;
    ppLabel239: TppLabel;
    ppLabel241: TppLabel;
    ppSystemVariable25: TppSystemVariable;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppImage1: TppImage;
    ppDetailBand21: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppShape2: TppShape;
    ppLabel242: TppLabel;
    ppLabel246: TppLabel;
    ppLabel250: TppLabel;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel5: TppLabel;
    ppLabel4: TppLabel;
    ppLabel9: TppLabel;
    ppShape1: TppShape;
    ppShape3: TppShape;
    JvReporte: TJvMemoryData;
    dsReporteJ: TDataSource;
    JvReporteCuadrado: TStringField;
    JvReporteTotal_Efectivo: TCurrencyField;
    JvReporteTotal_Dolares: TCurrencyField;
    JvReporteTotal_Tarjeta_Debito: TCurrencyField;
    JvReporteTotal_Tarjeta_Credito: TCurrencyField;
    JvReporteTotal_Cheque: TCurrencyField;
    JvReporteTotal_Nota_Credito: TCurrencyField;
    JvReporteTotal_Devolucion: TCurrencyField;
    JvReporteTotal_Cobrado_RD: TCurrencyField;
    ppDBPipeline: TppDBPipeline;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppShape4: TppShape;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppLabel10: TppLabel;
    ppShape5: TppShape;
    ppLabel11: TppLabel;
    ppShape6: TppShape;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel52: TppLabel;
    ppLabel51: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppLine4: TppLine;
    ppLabel81: TppLabel;
    ppLine5: TppLine;
    ppLabel82: TppLabel;
    ppLine7: TppLine;
    ppLine6: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppLine40: TppLine;
    ppLine41: TppLine;
    ppLine42: TppLine;
    ppLine43: TppLine;
    ppLine44: TppLine;
    ppLabel83: TppLabel;
    ppLine45: TppLine;
    ppLabel84: TppLabel;
    ppLine46: TppLine;
    ppLine47: TppLine;
    ppLine48: TppLine;
    ppLine49: TppLine;
    ppLine50: TppLine;
    ppLabel55: TppLabel;
    ppShape7: TppShape;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    procedure cgDatosExit(Sender: TObject);
    procedure cgDatosEnter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    qfindSucursal        : TADOQuery;
    qfindUsuario         : TADOQuery;
  public
    { Public declarations }
    procedure Run(Usuario : string; Fecha : String);
  end;

var
  frmDialogBalUsuarioDiario: TfrmDialogBalUsuarioDiario;
  AdentroGrid : Boolean;

implementation
 uses ActionsDM,DataModule,PuntoVenta,PuntoVentaMod,PuntoVentaLab,Main;
{$R *.dfm}

procedure TfrmDialogBalUsuarioDiario.cgDatosEnter(Sender: TObject);
begin
 AdentroGrid := True;
end;

procedure TfrmDialogBalUsuarioDiario.cgDatosExit(Sender: TObject);
begin
 AdentroGrid := False;
end;

procedure TfrmDialogBalUsuarioDiario.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmDialogBalUsuarioDiario.Run(Usuario : string;Fecha : String);
begin
  With qrBalUsuarioCaja, sql do
  begin
     Close;
     Clear;
     Add('select '+#39+'No Cuadre'+#39+' as Cuadrado,sum(case when (d.FormadePagoID = '+#39+'EFE'+#39+') and (isnull(c.CuadreUsuario,'+#39+#39+')='+#39+#39+') and TipoDoc='+#39+'RI'+#39+' then c.TotalCobrado else 0 end) as Total_Efectivo,'+
	   'sum(case when (d.FormadePagoID = '+#39+'CASH'+#39+') and (isnull(c.CuadreUsuario,'+#39+#39+')='+#39+#39+') then c.TotalCobrado else 0 end) as Total_Dolares,'+
	   'sum(case when (d.FormadePagoID = '+#39+'TD'+#39+')   and (isnull(c.CuadreUsuario,'+#39+#39+')='+#39+#39+') then c.TotalCobrado else 0 end) as Total_Tarjeta_Debito,'+
	   'sum(case when (d.FormadePagoID = '+#39+'TC'+#39+')   and (isnull(c.CuadreUsuario,'+#39+#39+')='+#39+#39+') then c.TotalCobrado else 0 end) as Total_Tarjeta_Credito,'+
	   'sum(case when (d.FormadePagoID = '+#39+'CK'+#39+')   and (isnull(c.CuadreUsuario,'+#39+#39+')='+#39+#39+') then c.TotalCobrado else 0 end) as Total_Cheque,'+
	   'sum(case when (c.TipoDoc = '+#39+'NC'+#39+')			and (isnull(c.CuadreUsuario,'+#39+#39+')='+#39+#39+') then c.TotalCobrado else 0 end) as Total_Nota_Credito,'+
	   'sum(case when (c.TipoDoc = '+#39+'DV'+#39+')			and (isnull(c.CuadreUsuario,'+#39+#39+')='+#39+#39+') then c.TotalCobrado else 0 end) as Total_Devolucion,'+
     'sum(case when (d.FormadePagoID = '+#39+'EFE'+#39+') and (isnull(c.CuadreUsuario,'+#39+#39+')='+#39+#39+') and TipoDoc='+#39+'RI'+#39+' then c.TotalCobrado else 0 end)  + '+
	   'sum(case when (d.FormadePagoID = '+#39+'TD'+#39+')   and (isnull(c.CuadreUsuario,'+#39+#39+')='+#39+#39+') then c.TotalCobrado else 0 end) + '+
	   'sum(case when (d.FormadePagoID = '+#39+'TC'+#39+')   and (isnull(c.CuadreUsuario,'+#39+#39+')='+#39+#39+') then c.TotalCobrado else 0 end) + '+
	   'sum(case when (c.TipoDoc = '+#39+'DV'+#39+')			and (isnull(c.CuadreUsuario,'+#39+#39+')='+#39+#39+') then c.TotalCobrado else 0 end)    + '+
	   'sum(case when (d.FormadePagoID = '+#39+'CK'+#39+')   and (isnull(c.CuadreUsuario,'+#39+#39+')='+#39+#39+') then c.TotalCobrado else 0 end) as Total_Cobrado_RD'+
     ' from ptcobro c inner join ptcobrodetalle d'+
     ' on c.cobroid=d.cobroid '+
     ' where fecha='+#39+FormatDateTime('yyyymmdd', dm.fecha_server)+#39+
     ' and c.UsuarioID='+#39+dm.CurUser+#39+
     ' union '+
     ' select '+#39+'Cuadrado'+#39+' as Cuadrado,sum(case when (d.FormadePagoID = '+#39+'EFE'+#39+') and (isnull(c.CuadreUsuario,'+#39+#39+')<>'+#39+#39+') and TipoDoc='+#39+'RI'+#39+' then c.TotalCobrado else 0 end) as Total_Efectivo,'+
     '    sum(case when (d.FormadePagoID = '+#39+'CASH'+#39+') and (isnull(c.CuadreUsuario,'+#39+#39+')<>'+#39+#39+') then c.TotalCobrado else 0 end) as Total_Dolares,'+
     '    sum(case when (d.FormadePagoID = '+#39+'TD'+#39+')   and (isnull(c.CuadreUsuario,'+#39+#39+')<>'+#39+#39+') then c.TotalCobrado else 0 end) as Total_Tarjeta_Debito,'+
     '    sum(case when (d.FormadePagoID = '+#39+'TC'+#39+')   and (isnull(c.CuadreUsuario,'+#39+#39+')<>'+#39+#39+') then c.TotalCobrado else 0 end) as Total_Tarjeta_Credito,'+
     '    sum(case when (d.FormadePagoID = '+#39+'CK'+#39+')   and (isnull(c.CuadreUsuario,'+#39+#39+')<>'+#39+#39+') then c.TotalCobrado else 0 end) as Total_Cheque,'+
     '    sum(case when (c.TipoDoc = '+#39+'NC'+#39+')         and (isnull(c.CuadreUsuario,'+#39+#39+')<>'+#39+#39+') then c.TotalCobrado else 0 end) as Total_Nota_Credito,'+
     '    sum(case when (c.TipoDoc = '+#39+'DV'+#39+')         and (isnull(c.CuadreUsuario,'+#39+#39+')<>'+#39+#39+') then c.TotalCobrado else 0 end) as Total_Devolucion, '+
     '    sum(case when (d.FormadePagoID = '+#39+'EFE'+#39+')  and (isnull(c.CuadreUsuario,'+#39+#39+')<>'+#39+#39+') and TipoDoc='+#39+'RI'+#39+' then c.TotalCobrado else 0 end) + '+
     '    sum(case when (d.FormadePagoID = '+#39+'TD'+#39+')   and (isnull(c.CuadreUsuario,'+#39+#39+')<>'+#39+#39+') then c.TotalCobrado else 0 end) + '+
     '    sum(case when (d.FormadePagoID = '+#39+'TC'+#39+')   and (isnull(c.CuadreUsuario,'+#39+#39+')<>'+#39+#39+') then c.TotalCobrado else 0 end) + '+
     '    sum(case when (d.FormadePagoID = '+#39+'CK'+#39+')   and (isnull(c.CuadreUsuario,'+#39+#39+')<>'+#39+#39+') then c.TotalCobrado else 0 end) + '+
     '    sum(case when (c.TipoDoc = '+#39+'DV'+#39+')         and (isnull(c.CuadreUsuario,'+#39+#39+')<>'+#39+#39+') then c.TotalCobrado else 0 end) As Total_Cobrado_RD '+
     '    from ptcobro c inner join ptcobrodetalle d '+
     '    on c.cobroid=d.cobroid '+
     '   where fecha='+#39+FormatDateTime('yyyymmdd', dm.fecha_server)+#39+
     '   and c.UsuarioID='+#39+dm.CurUser+#39);
     Open;
  end;
 showmodal;
 if ModalResult = mrOk then
 begin
 If MessageDlg('Desea Imprimir el Reporte Caja?', mtWarning, [mbYes,mbNo], 0) = mrYes then
 begin
     Application.ProcessMessages;
     With qrBalUsuarioCaja, sql do
     begin
       First;
       dsUsuarioCaja.Enabled := False;
       if not jvReporte.Active then  jvReporte.Active := true;
       jvReporte.EmptyTable;
       while not eof do
       begin
          jvReporte.Append;
          jvReporteCuadrado.AsString              := fieldbyname('Cuadrado').AsString;
          jvReporteTotal_Efectivo.AsFloat         := fieldbyname('Total_Efectivo').AsFloat;
          jvReporteTotal_Dolares.AsFloat          := fieldbyname('Total_Dolares').AsFloat;
          jvReporteTotal_Tarjeta_Debito.AsFloat   := fieldbyname('Total_Tarjeta_Debito').AsFloat;
          jvReporteTotal_Tarjeta_Credito.AsFloat  := fieldbyname('Total_Tarjeta_Credito').AsFloat;
          jvReporteTotal_Cheque.AsFloat           := fieldbyname('Total_Cheque').AsFloat;
          jvReporteTotal_Nota_Credito.AsFloat     := fieldbyname('Total_Nota_Credito').AsFloat;
          jvReporteTotal_Devolucion.AsFloat       := fieldbyname('Total_Devolucion').AsFloat;
          jvReporteTotal_Cobrado_RD.AsFloat       := fieldbyname('Total_Cobrado_RD').AsFloat;
          Next;
       end;
       jvReporte.First;
       dsUsuarioCaja.Enabled := True;
     end;
     If (jvReporte.RecordCount > 0) Then
     Begin
        if dm.CurUser = EmptyStr then
          ppLabel8.Caption := 'Todas los Usuarios'
        else
        begin
          qfindUsuario := DM.Find('SELECT Nombre FROM SysUsuarios (nolock) WHERE UserID = :usr', dm.CurUser);
          ppLabel8.Caption := dm.CurUser+' - '+qfindUsuario.FieldByName('Nombre').AsString;
          qfindSucursal := DM.Find_Ldr('SELECT Nombre FROM PTSucursal (nolock) WHERE SucursalId = :suc', dm.CurSucursal);
          ppLabel55.Caption := qfindSucursal.FieldByName('Nombre').AsString;
        end;
        ppLabel6.Caption := 'Reporte de Caja ';
        ppLabel7.Caption := 'Del : '+FormatDateTime('dd/mm/yyyy', dm.fecha_server);
        ppReporteCaja.DeviceType := dtScreen;
        ppReporteCaja.Print;
     end;
   end;
 end;
end;

end.
