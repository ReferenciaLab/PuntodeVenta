unit DialogAnulacionFacturas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DialogConsulta, cxGraphics, Menus, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, ADODB,
  dxLayoutControl, cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,
  StdCtrls, cxButtons, cxTextEdit, cxContainer, cxMaskEdit, cxDropDownEdit,
  DialogCobro, cxintl, dxmdaset,dlgmensajes;

type
  TfrmDialogAnulacionFacturas = class(TfrmDialogConsulta)
    dxMemFacturaAnulada: TdxMemData;
    dxMemFacturaAnuladaEntradaID: TStringField;
    dxMemFacturaAnuladaFecha: TDateField;
    dxMemFacturaAnuladaPacienteID: TStringField;
    dxMemFacturaAnuladaNombrePaciente: TStringField;
    dxMemFacturaAnuladaTelefonos: TStringField;
    dxMemFacturaAnuladaClienteID: TStringField;
    dxMemFacturaAnuladaNeto: TCurrencyField;
    dxMemFacturaAnuladaTotalPagodo: TCurrencyField;
    dxMemFacturaAnuladaTotalPendiente: TCurrencyField;
    dxMemFacturaAnuladaSeleccionID: TBooleanField;
    dxMemFacturaAnuladaMonedaID: TStringField;
    dxMemFacturaAnuladaClienteNombre: TStringField;
    dxMemFacturaAnuladaHold: TStringField;
    dbDatosSeleccionID: TcxGridDBColumn;
    dbDatosEntradaID: TcxGridDBColumn;
    dbDatosFecha: TcxGridDBColumn;
    dbDatosPacienteID: TcxGridDBColumn;
    dbDatosNombrePaciente: TcxGridDBColumn;
    dbDatosTelefonos: TcxGridDBColumn;
    dbDatosClienteID: TcxGridDBColumn;
    dbDatosClienteNombre: TcxGridDBColumn;
    dbDatosMonedaID: TcxGridDBColumn;
    dbDatosNeto: TcxGridDBColumn;
    dbDatosTotalPagodo: TcxGridDBColumn;
    dbDatosTotalPendiente: TcxGridDBColumn;
    dbDatosHold: TcxGridDBColumn;
    dxMemFacturaAnuladaRefID: TIntegerField;
    QryUpd: TADOQuery;
    procedure cgDatosExit(Sender: TObject);
    procedure cgDatosEnter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure edbuscarPropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BuscarData;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Run;
  end;

var
  frmDialogAnulacionFacturas: TfrmDialogAnulacionFacturas;
  adentrogrid : Boolean;

implementation

uses DataModule,PuntoVenta,Main;

{$R *.dfm}

procedure TfrmDialogAnulacionFacturas.Run;
begin
 ShowModal;
 if ModalResult = mrOk then
 begin
  if dxMemFacturaAnuladaEntradaID.AsString <> EmptyStr then
  begin
    if MessageDlg('Desea Anular la factura Número= '+dxMemFacturaAnuladaEntradaID.AsString+#13+#10+
                 ' A Nombre de = '+dxMemFacturaAnuladaNombrePaciente.AsString+#13+#10+
                 'Monto = '+CurrToStr(dxMemFacturaAnuladaTotalPagodo.AsCurrency), mtConfirmation, [mbYes,mbNo], 0) = mrYes then
    begin
        Screen.Cursor := crHourGlass;
        dm.DataBase.BeginTrans;
        Try
          With QryUpd,SQL do
          begin
            Close;
            Clear;
            Add('Update dbo.PTEntradaPaciente Set');
            Add(' Bruto='+'0'+',Descuento='+'0'+',Subtotal='+'0');
            Add(',Neto='+'0'+',TotalPagado='+'0'+',CoberturaPorC='+'0');
            Add(',CoberturaSeguro='+'0'+',CoberturaValor='+'0'+',DescuentoPorC='+'0');
            Add(',DescuentoValor='+'0'+',DescuentoBono='+'0'+',CoberturaMontoPreConfirmado='+'0');
            Add(',Nulo='+#39+'S'+#39);
            Add(' Where EntradaID='+#39+dxMemFacturaAnuladaEntradaID.AsString+#39);
            ExecSQL;
            Close;
            Clear;
            Add('Update dbo.PTEntradaPacienteDetalle Set');
            Add(' Precio='+'0'+',Descuento='+'0'+',DescuentoExtra='+'0');
            Add(',TotalLinea='+'0'+',DescPCT='+'0'+',CoberturaEspecial='+'0');
            Add(',CoberturaEspecialPorC='+'0'+',CoberturaAplicada='+'0'+',DescuentoAplicado='+'0');
            Add(',DescuentoLineaAplicado='+'0'+',Adicional='+'0'+',PrecioCombo='+'0');
            Add(' Where RefRecID='+IntToStr(dxMemFacturaAnuladaRefID.AsInteger));
            ExecSQL;
            Close;
            Clear;
            Add('Update dbo.PTClienteTransacciones Set');
            Add(' Valor='+'0'+',ValorMST='+'0');
            Add(' Where DocumentoAplica='+#39+dxMemFacturaAnuladaEntradaID.AsString+#39);
            ExecSQL;
            Close;
            Clear;
            Add('Update dbo.PTCobro Set');
            Add(' TotalCobrado='+'0'+',TotalFactura='+'0'+',PendienteFactura='+'0');
            Add(',PendienteCobro='+'0');
            Add(' Where EntradaID='+#39+dxMemFacturaAnuladaEntradaID.AsString+#39);
            ExecSQL;
            Close;
            Clear;
            Add('Update dbo.PTCobroDetalle Set');
            Add(' Monto='+'0'+',MontoMST='+'0');
            Add(' Where RefRecID='+IntToStr(dxMemFacturaAnuladaRefID.AsInteger));
            ExecSQL;
            Close;
            Clear;
            Add('Update dbo.PTCobroAxapta Set');
            Add(' Valor='+'0'+',ValorMST='+'0');
            Add(',MontoDetalle='+'0'+',MontoDetalleMST='+'0');
            Add(' Where DocumentoAplica='+#39+dxMemFacturaAnuladaEntradaID.AsString+#39);
            ExecSQL;
            Close;
            Clear;
            Add('Insert into dbo.PTAuditoria_Factura (EntradaID,Fecha,PacienteID,ClienteID,Neto,TotalPagado ');
            Add(' ,SucursalID,UserID ) Values ('+#39+dxMemFacturaAnuladaEntradaID.AsString+#39+','+#39+FormatDateTime('yyyymmdd',dxMemFacturaAnuladaFecha.AsDateTime)+#39);
            Add(','+#39+dxMemFacturaAnuladaPacienteID.AsString+#39+','+#39+dxMemFacturaAnuladaClienteID.AsString+#39);
            Add(','+dxMemFacturaAnuladaNeto.AsString+','+dxMemFacturaAnuladaTotalPagodo.AsString);
            Add(','+#39+dm.CurSucursal+#39+','+#39+dm.CurUser+#39+')');
            ExecSQL;
          end;
        Screen.Cursor := crDefault;
        dm.DataBase.CommitTrans;
        dm.Info('Factura '+dxMemFacturaAnuladaEntradaID.AsString+' Anulada Satisfactoriamente.');
        except
          on e : Exception do
          begin
            if dm.DataBase.InTransaction then  dm.DataBase.RollbackTrans;
            Screen.Cursor := crDefault;
            dm.Error('Ocurrio un error al momento de Grabar.  Verifique.'+#13+e.Message);
            exit;
          end;
        end;
        BuscarData;
        Application.ProcessMessages;
//        frmMain.frmTmp.RefrescarInterface;
    end;
  end;
 end;
{
//Procedimiento de Raul para llamar la pantalla de consulta (TOMA DE MUESTRA).
procedure Run(pantalla : string);
procedure TfrmDialogConsultaEntradas.Run(pantalla : string);
Var
 qfind : TADOQuery;
begin
 showmodal;
 if ModalResult = mrOk then
 begin
  if (pantalla = 'PuntoVenta') then
  begin
   frmMain.frmTmp.recid := DM.qrEntradaPacienteConsRecid.Value;
   frmMain.frmTmp.BuscarDatos;
   frmMain.frmTmp.RefrescarInterface;
  end;
  if (pantalla = 'TomaMuestra') then
  begin
   frmMain.frmTmpMuestra.recid := DM.qrEntradaPacienteConsRecid.Value;
   frmMain.frmTmpMuestra.BuscarDatos;
  end;
 end;
end;
}
end;


procedure TfrmDialogAnulacionFacturas.BuscarData;
var
 sqlString : String;
begin
 DM.qrParametro.close;
 DM.qrParametro.open;

 sqlString := ' SELECT * FROM PTEntradaPaciente WHERE RecId IS NOT NULL And Nulo IS NULL ';

 If (frmMain.Exis_Cap = True) then
   sqlString := sqlString + ' AND EntradaID LIKE '+ #39 + '%CAP%' + #39;

 If (frmMain.Exis_Lab = True) then
   sqlString := sqlString + ' AND Origen LIKE '+ #39 + '%' + DM.qrParametroGrupoLab.Value + '%' + #39;

 If (frmMain.Exis_Muestra = True) then
   sqlString := sqlString + ' AND Hold NOT LIKE '+ #39 + '%1%' + #39;

 if edbuscar.Text <> '' then begin
   case edbuscarpor.ItemIndex of
     0 : sqlString := sqlString + ' AND EntradaID like '+#39+'%'+edbuscar.Text+'%'+#39;
     1 : sqlString := sqlString + ' AND PacienteID like '+#39+'%'+edbuscar.Text+'%'+#39;
     2 : sqlString := sqlString + ' AND NombrePaciente like '+#39+'%'+'%'+edbuscar.Text+'%'+#39;
     3 : sqlString := sqlString + ' AND ClienteID like '+#39+'%'+edbuscar.Text+'%'+#39;
     4 : sqlString := sqlString + ' AND ClienteNombre like '+#39+'%'+edbuscar.Text+'%'+#39;
     5 : sqlString := sqlString + ' AND Telefonos like '+#39+'%'+edbuscar.Text+'%'+#39;
   end;
 end;
  With DM.qrEntradaPacienteCons,sql do
  begin
    Close;
    Clear;
    Text := sqlString + ' ORDER BY  Fecha Desc, SucursalId Desc, EntradaID Desc, MuestraNo Desc ';
    Open;
    if not IsEmpty then
    begin
      if not dxMemFacturaAnulada.Active then
      begin
         dxMemFacturaAnulada.Open;
         dxMemFacturaAnulada.Delete;
      end;
      First;
      while not eof do
      begin
          dxMemFacturaAnulada.Append;
          dxMemFacturaAnuladaSeleccionID.Value := False;
          dxMemFacturaAnuladaEntradaID.AsString   := FieldByName('EntradaID').AsString;
          dxMemFacturaAnuladaFecha.AsDateTime     := FieldByName('Fecha').AsDateTime;
          dxMemFacturaAnuladaPacienteID.AsString  := FieldByName('PacienteID').AsString;
          dxMemFacturaAnuladaNombrePaciente.AsString  := FieldByName('NombrePaciente').AsString;
          dxMemFacturaAnuladaTelefonos.AsString   := FieldByName('Telefonos').AsString;
          dxMemFacturaAnuladaClienteID.AsString   := FieldByName('ClienteID').AsString;
          dxMemFacturaAnuladaClienteNombre.AsString   := FieldByName('ClienteNombre').AsString;
          dxMemFacturaAnuladaMonedaID.AsString   := FieldByName('MonedaID').AsString;
          dxMemFacturaAnuladaNeto.AsCurrency   := FieldByName('Neto').AsCurrency;
          dxMemFacturaAnuladaTotalPagodo.AsCurrency   := FieldByName('TotalPagado').AsCurrency;
          dxMemFacturaAnuladaTotalPendiente.AsCurrency   := FieldByName('TotalPendiente').AsCurrency;
          dxMemFacturaAnuladaHold.AsString   := FieldByName('Hold').AsString;
          dxMemFacturaAnuladaRefID.AsInteger := FieldByName('RecID').AsInteger;
          Next;
      end;
      dxMemFacturaAnulada.First;
    end
  end;
end;


procedure TfrmDialogAnulacionFacturas.cgDatosEnter(Sender: TObject);
begin
  inherited;
  adentrogrid := true;
end;


procedure TfrmDialogAnulacionFacturas.cgDatosExit(Sender: TObject);
begin
  inherited;
  adentrogrid := false;
end;


procedure TfrmDialogAnulacionFacturas.edbuscarPropertiesChange(Sender: TObject);
begin
  inherited;
  BuscarData;
end;


procedure TfrmDialogAnulacionFacturas.FormCreate(Sender: TObject);
var
 sqlString : String;
begin
  inherited;
 sqlString := 'SELECT * FROM PTEntradaPaciente WHERE RecId IS NOT NULL And Nulo IS NULL ';

 If (frmMain.Exis_Cap = True) then
   sqlString := sqlString + ' AND EntradaID LIKE '+ #39 + '%CAP%' + #39;

 If (frmMain.Exis_Lab = True) then
   sqlString := sqlString + ' AND Origen LIKE '+ #39 + '%' + DM.qrParametroGrupoLab.Value + '%' + #39;

 If (frmMain.Exis_Muestra = True) then
   sqlString := sqlString + ' AND Hold NOT LIKE '+ #39 + '%1%' + #39;
  With DM.qrEntradaPacienteCons,sql do
  begin
    Close;
    Clear;
    Text := sqlString + ' ORDER BY  Fecha Desc, SucursalId Desc, EntradaID Desc, MuestraNo Desc ';
    Open;
    if not IsEmpty then
    begin
      if not dxMemFacturaAnulada.Active then
      begin
         dxMemFacturaAnulada.Open;
         dxMemFacturaAnulada.Delete;
      end;
      First;
      while not eof do
      begin
          dxMemFacturaAnulada.Append;
          dxMemFacturaAnuladaSeleccionID.Value := False;
          dxMemFacturaAnuladaEntradaID.AsString   := FieldByName('EntradaID').AsString;
          dxMemFacturaAnuladaFecha.AsDateTime     := FieldByName('Fecha').AsDateTime;
          dxMemFacturaAnuladaPacienteID.AsString  := FieldByName('PacienteID').AsString;
          dxMemFacturaAnuladaNombrePaciente.AsString  := FieldByName('NombrePaciente').AsString;
          dxMemFacturaAnuladaTelefonos.AsString   := FieldByName('Telefonos').AsString;
          dxMemFacturaAnuladaClienteID.AsString   := FieldByName('ClienteID').AsString;
          dxMemFacturaAnuladaClienteNombre.AsString   := FieldByName('ClienteNombre').AsString;
          dxMemFacturaAnuladaMonedaID.AsString   := FieldByName('MonedaID').AsString;
          dxMemFacturaAnuladaNeto.AsCurrency   := FieldByName('Neto').AsCurrency;
          dxMemFacturaAnuladaTotalPagodo.AsCurrency   := FieldByName('TotalPagado').AsCurrency;
          dxMemFacturaAnuladaTotalPendiente.AsCurrency   := FieldByName('TotalPendiente').AsCurrency;
          dxMemFacturaAnuladaHold.AsString   := FieldByName('Hold').AsString;
          dxMemFacturaAnuladaRefID.AsInteger := FieldByName('RecID').AsInteger;
          Next;
      end;
      dxMemFacturaAnulada.First;
    end
  end;
  If (frmMain.Exis_Vta = True) then
    edbuscarpor.ItemIndex := 5
  Else
    edbuscarpor.ItemIndex := 2;
end;


procedure TfrmDialogAnulacionFacturas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = Vk_Down) and (not AdentroGrid) then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);
  if (key = 13) and (not AdentroGrid) then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);
{  if (key = 13) and (AdentroGrid) then
  begin
   Close;
   ModalResult := mrOk;
  end;
  if (key = Vk_Up) and (not AdentroGrid) then
     PostMessage(Handle, Wm_NextDlgCtl, 1, 0);
  if (key = 27) then
  begin
   Close;
  end;
}
end;


procedure TfrmDialogAnulacionFacturas.FormShow(Sender: TObject);
begin
  inherited;
  edbuscar.SetFocus;
end;


end.
