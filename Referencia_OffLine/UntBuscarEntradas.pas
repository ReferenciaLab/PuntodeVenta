unit UntBuscarEntradas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, Menus, cxLookAndFeelPainters, dxLayoutControl,
  cxDropDownEdit, cxCalendar, cxCheckBox, StdCtrls, cxButtons, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxTextEdit, cxContainer, cxMaskEdit,
  ADODB,dlgmensajes;

type
  TFrmbuscarEntradas = class(TForm)
    dsDatos: TDataSource;
    dsPagos: TDataSource;
    qrPagos: TADOQuery;
    qrPagosForma_Pago: TStringField;
    qrPagosMonedaID: TStringField;
    qrPagosMonto: TBCDField;
    qrPagosMontoMST: TBCDField;
    qrPagosOrden: TIntegerField;
    qrPagosCUADREUSUARIO: TStringField;
    qrPagosCUADREGLOBAL: TStringField;
    qrPagosRefrecid: TLargeintField;
    qrPagosFecha: TDateTimeField;
    dxLayoutControl1: TdxLayoutControl;
    edbuscarpor: TcxComboBox;
    edbuscar: TcxTextEdit;
    cgDatos: TcxGrid;
    dbDatos: TcxGridDBTableView;
    dbDatosMuestrano: TcxGridDBColumn;
    dbDatosFecha: TcxGridDBColumn;
    dbDatosPacienteID: TcxGridDBColumn;
    dbDatosNombrePaciente: TcxGridDBColumn;
    dbDatosTelefonos: TcxGridDBColumn;
    dbDatosClienteID: TcxGridDBColumn;
    dbDatosClienteNombre: TcxGridDBColumn;
    dbDatosMonedaID: TcxGridDBColumn;
    dbDatosNeto: TcxGridDBColumn;
    dbDatosTotalPagado: TcxGridDBColumn;
    dbDatosTotalPendiente: TcxGridDBColumn;
    dbDatosHold: TcxGridDBColumn;
    dbDatosEntradaID_Ref: TcxGridDBColumn;
    dbDatosEntradaID: TcxGridDBColumn;
    dbDatosCoberturaSeg: TcxGridDBColumn;
    dbPagos: TcxGridDBTableView;
    dbPagosFecha: TcxGridDBColumn;
    dbPagosForma_Pago: TcxGridDBColumn;
    dbPagosMonedaID: TcxGridDBColumn;
    dbPagosMonto: TcxGridDBColumn;
    dbPagosMontoMST: TcxGridDBColumn;
    dbPagosOrden: TcxGridDBColumn;
    dbPagosCUADREUSUARIO: TcxGridDBColumn;
    dbPagosCUADREGLOBAL: TcxGridDBColumn;
    dbPagosRefrecid: TcxGridDBColumn;
    lvDatos: TcxGridLevel;
    lvPagos: TcxGridLevel;
    btcancelar: TcxButton;
    btaceptar: TcxButton;
    CbCriterio: TcxCheckBox;
    dtFechaIni: TcxDateEdit;
    dtFechaFin: TcxDateEdit;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    Qinserta: TADOQuery;
    cxButton2: TcxButton;
    dxLayoutControl1Item9: TdxLayoutItem;
    procedure cxButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edbuscarExit(Sender: TObject);
    procedure edbuscarporPropertiesChange(Sender: TObject);
    procedure edbuscarporExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    Procedure Desbloquear_Entrada;
    procedure BuscarData;
  private
    { Private declarations }
     notac             : TcxStyle;
    notad             : TcxStyle;
    normal            : TcxStyle;
  public
    { Public declarations }
    procedure run;
  end;

var
  FrmbuscarEntradas: TFrmbuscarEntradas;
  adentrogrid, _buscar : Boolean;

implementation

uses DatosModule, Main, DataModule;

{$R *.dfm}

procedure TFrmbuscarEntradas.BuscarData;
var
 sqlString,sqlString2: String;
 I : Integer;
begin
 DM.qrParametro.close;
 DM.qrParametro.open;

 If ((dtFechaIni.Text = Emptystr) and (dtFechaIni.Text = Emptystr)) And (edbuscarpor.ItemIndex=9) then
 Begin
      EtMensajeDlg('Fecha de Inicio y Fecha Fin NO fueron digitadas.  Verifique.', etError, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
      Exit;
 end;

 sqlString := 'SELECT * FROM PTEntradaPaciente (nolock) WHERE Isnull(RecId,'+#39+#39+')<>'+#39+#39;
 sqlString := sqlString + ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39;

 If Not((dtFechaIni.Text = Emptystr) and (dtFechaIni.Text = Emptystr)) then
 begin
    sqlString := sqlString + ' AND Fecha Between '+#39+formatdatetime('yyyymmdd',dtFechaini.date)+#39+' And  '+#39+formatdatetime('yyyymmdd',dtFechaFin.date)+#39;
 end;
               {
 If (CbCriterio.Checked = False) Then
   sqlString := sqlString + ' AND SucursalId = '+ #39 + DM.CurSucursal + #39;

 If (frmMain.Exis_Cap = True) then
   sqlString := sqlString + ' AND EntradaID LIKE '+ #39 + '%CAP%' + #39;

 If (frmMain.Exis_Lab = True) then
   sqlString := sqlString + ' AND Origen LIKE '+ #39 + '%' + DM.qrParametroGrupoLab.Value + '%' + #39;

 If (frmMain.Exis_Muestra = True) then
   sqlString := sqlString + ' AND Hold NOT LIKE '+ #39 + '%1%' + #39;
 If (Factura_St = 'N') Or (Factura_St = 'F') Or (Factura_St = 'M') Then
 begin
    sqlString := sqlString + ' AND Substring(EntradaID,1,3)<>'+ #39 + 'NCR' + #39;
    sqlString := sqlString + ' AND Hold NOT LIKE '+ #39 + '%1%' + #39;
 end;
                }
 If (edbuscar.Text <> '') or (edbuscarpor.ItemIndex=7) or (edbuscarpor.ItemIndex=8) then begin
   case edbuscarpor.ItemIndex of
     0 : sqlString := sqlString + ' AND MuestraNo like '+#39+'%'+edbuscar.Text+'%'+#39;
     1 : sqlString := sqlString + ' AND EntradaID like '+#39+'%'+edbuscar.Text+'%'+#39;
     2 : sqlString := sqlString + ' AND PacienteID like '+#39+'%'+edbuscar.Text+'%'+#39;
     3 : sqlString := sqlString + ' AND NombrePaciente like '+#39+'%'+edbuscar.Text+'%'+#39;
     4 : sqlString := sqlString + ' AND ClienteID like '+#39+'%'+edbuscar.Text+'%'+#39;
     5 : sqlString := sqlString + ' AND ClienteNombre like '+#39+'%'+edbuscar.Text+'%'+#39;
     6 : sqlString := sqlString + ' AND Telefonos like '+#39+'%'+edbuscar.Text+'%'+#39;
     7 : sqlString := sqlString + ' AND UserID ='+#39+dm.CurUser+#39+' And Convert(Varchar(10),Fecha,103) = Convert(Varchar(10),Getdate(),103)';
     8 : sqlString := sqlString + ' AND Convert(Varchar(08),Fecha,112) = Convert(Varchar(08),Getdate(),112)';
    10 : sqlString := sqlString + ' AND AprobacionNo like '+#39+'%'+edbuscar.Text+'%'+#39;
    11 : sqlString := sqlString;
   end;
 end;

 If ((dtFechaIni.Text = Emptystr) and (dtFechaIni.Text = Emptystr)) And
     (frmMain.Exis_Cap = False) And
     (frmMain.Exis_Lab = False) And
     (Trim(edbuscar.Text) = EmptyStr) And (Length(Trim(edbuscar.Text))<5) And
    Not((edbuscarpor.ItemIndex=7) or (edbuscarpor.ItemIndex=8))
     then
 begin
      EtMensajeDlg('Debe escribir criterio de búsqueda más exacto en el Texto.  Verifique.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
      edbuscar.SetFocus;
      Exit;
 end;

 DM.qrEntradaPacienteCons.Close;
 DM.qrEntradaPacienteCons.SQL.Text := sqlString + ' ORDER BY Fecha Desc, HoraEntrada Desc, SucursalId Desc, MuestraNo Desc, EntradaID Desc ';
 DM.qrEntradaPacienteCons.Open;
 if (DM.qrEntradaPacienteCons.RecordCount > 0) And
    ((dm.CurRol = 7) or (dm.CurRol = 11) or (dm.CurRol = 17) or (dm.CurRol = 19)) then
 begin
      DM.qrEntradaPacienteCons.First;
      I:=0;

      while Not DM.qrEntradaPacienteCons.Eof do
      Begin
        if I=0 then
        begin
          sqlString2 :='Select Fecha,FormaDePagoID as Forma_Pago,d.MonedaID,Monto,MontoMST,Orden,d.CUADREUSUARIO,d.CUADREGLOBAL, '+
                       ' d.RefRecid from PtCobroDetalle d Inner Join PtCobro c On c.CobroID=d.CobroID Where d.Refrecid='+DM.qrEntradaPacienteConsRECID.AsString;
        end
        else If I > 0 Then
        begin
          sqlString2 := sqlString2 + ' Union all '+
                        ' Select Fecha,FormaDePagoID as Forma_Pago,d.MonedaID,Monto,MontoMST,Orden,d.CUADREUSUARIO,d.CUADREGLOBAL, '+
                        ' d.RefRecid from PtCobroDetalle d Inner Join PtCobro c On c.CobroID=d.CobroID Where d.Refrecid='+DM.qrEntradaPacienteConsRECID.AsString;
        end;
        I:=I+1;
        If I = DM.qrEntradaPacienteCons.RecordCount then
        begin
          With qrPagos, sql do
          begin
            Close;
            Clear;
            Text := sqlString2;
            Open;
          end;
        end;
        DM.qrEntradaPacienteCons.Next;
      end;
      DM.qrEntradaPacienteCons.First;
 end;
end;

procedure TFrmbuscarEntradas.cxButton1Click(Sender: TObject);
begin
With Qinserta Do
 begin
    Close;
    Parameters.ParamByName('ENTRADA').Value := dm.qrEntradaPacienteConsENTRADAID.Value;
    ExecSQL;
 end;
end;

procedure TFrmbuscarEntradas.cxButton2Click(Sender: TObject);
begin
BuscarData;
end;

procedure TFrmbuscarEntradas.Desbloquear_Entrada;
Var qfind : TADOQuery;
begin
      qfind := DM.NewQuery;
      qfind.Close;
      qfind.SQL.Text := ' Update PTEntradaPaciente with (rowlock) '+
                        ' Set STNOTAC='+#39+''+#39+',USRNOTAC='+#39+''+#39+
                        ' WHERE Recid = '+ inttostr(DM.qrEntradaPacienteConsRecid.Value) +
                        ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39;
      qfind.Execsql;
      DM.DataBase.Execute('DELETE FROM PTEntradaPacienteDetalleNC WHERE Muestrano = '+#39+Dm.qrEntradaPacienteConsMuestrano.AsString+#39);
      DM.DataBase.Execute('DELETE FROM PTEntradaPacienteNC WHERE Muestrano = '+#39+Dm.qrEntradaPacienteConsMuestrano.AsString+#39);
      FreeAndNil(qfind);
end;

procedure TFrmbuscarEntradas.edbuscarExit(Sender: TObject);
begin
  _buscar := True;
  adentrogrid := False;
end;

procedure TFrmbuscarEntradas.edbuscarporExit(Sender: TObject);
begin
  _buscar := True;
  adentrogrid := False;
end;

procedure TFrmbuscarEntradas.edbuscarporPropertiesChange(Sender: TObject);
begin
  if (edbuscarpor.ItemIndex = 7) Or
     (edbuscarpor.ItemIndex = 8) Or
     (edbuscarpor.ItemIndex = 9) Then BuscarData;
end;

procedure TFrmbuscarEntradas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
end;

procedure TFrmbuscarEntradas.FormCreate(Sender: TObject);
begin
edbuscarpor.ItemIndex := 4;

end;

procedure TFrmbuscarEntradas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
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
      if (DM.qrEntradaPacienteCons.RecordCount >0) then
        ModalResult := mrOk;
    end;
end;

procedure TFrmbuscarEntradas.FormShow(Sender: TObject);
begin
  _buscar := True;
  adentrogrid := False;
  edbuscar.SetFocus;
  DM.qrEntradaPacienteCons.Close;
end;

procedure TFrmbuscarEntradas.run;
Var
 qfind : TADOQuery;
 Opcion: String;
begin

end;

end.
