unit DatosTarjeta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DatosModule, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, Menus, cxLookAndFeelPainters, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, ABSMain, JvStringHolder, StdActns,
  ActnList, ADODB, cxGridCustomPopupMenu, cxGridPopupMenu, dxPSContainerLnk,
  dxPSdxLCLnk, dxPSCore, dxPScxCommon, dxPScxGridLnk, JvComponentBase,
  JvFormPlacement, ExtCtrls, dxLayoutControl, StdCtrls, cxButtons, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, JvExControls, JvComponent,
  JvEnterTab, cxMaskEdit, cxSpinEdit, cxDBEdit, cxContainer, cxTextEdit,
  cxCheckBox, cxintl, cxDropDownEdit, cxCalendar, cxLabel,dlgmensajes, ppBands,
  ppCtrls, ppStrtch, ppMemo, ppVar, ppPrnabl, ppClass, ppCache, ppProd,
  ppReport, ppDB, ppComm, ppRelatv, ppDBPipe,ppTypes;

type
  TfrmDatosTarjeta = class(TfrmDatosModule)
    qrTarjeta: TADOQuery;
    lcDatosGroup1: TdxLayoutGroup;
    EdTarjetaId: TcxDBTextEdit;
    lcDatosItem1: TdxLayoutItem;
    cxDBSpinEdit1: TcxDBSpinEdit;
    lcDatosItem3: TdxLayoutItem;
    lcDatosItem7: TdxLayoutItem;
    EdPaciente: TcxDBTextEdit;
    btPacientes: TcxButton;
    lcDatosGroup2: TdxLayoutGroup;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBDateEdit4: TcxDBDateEdit;
    lcDatosItem2: TdxLayoutItem;
    lcDatosItem4: TdxLayoutItem;
    lcDatosItem5: TdxLayoutItem;
    lcDatosGroup3: TdxLayoutGroup;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    lcDatosItem6: TdxLayoutItem;
    lcDatosGroup4: TdxLayoutGroup;
    cxDBSpinEdit2: TcxDBSpinEdit;
    lcDatosGroup5: TdxLayoutGroup;
    lcDatosItem12: TdxLayoutItem;
    cxDBCheckBox1: TcxDBCheckBox;
    btBuscarPac: TcxButton;
    btBuscarTarjeta: TcxButton;
    btImprimir: TcxButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    qrTarjetaTarjetaID: TStringField;
    qrTarjetaPacienteId: TStringField;
    qrTarjetaPuntosTotal: TIntegerField;
    qrTarjetaPuntosUsados: TIntegerField;
    qrTarjetaUserEmision: TStringField;
    qrTarjetaFechaEmision: TDateTimeField;
    qrTarjetaUserModifica: TStringField;
    qrTarjetaFechaModifica: TDateTimeField;
    tvDatosTarjetaID: TcxGridDBColumn;
    tvDatosPacienteId: TcxGridDBColumn;
    tvDatosPuntosTotal: TcxGridDBColumn;
    tvDatosPuntosUsados: TcxGridDBColumn;
    lcDatosItem8: TdxLayoutItem;
    lblNombrePaciente: TcxLabel;
    qrReporte: TADOQuery;
    qrReporteNombres: TStringField;
    qrReporteApellidos: TStringField;
    qrReporteEdad: TIntegerField;
    qrReportebSeguro: TStringField;
    qrReporteTel_Residencia: TStringField;
    qrReporteTel_Oficina: TStringField;
    qrReporteTel_Celular: TStringField;
    qrReporteDireccion: TStringField;
    qrReporteFecha: TDateTimeField;
    qrReporteHora: TStringField;
    qrReportebFax: TStringField;
    qrReportebInternet: TStringField;
    qrReportebPersonal: TStringField;
    qrReporteObservacion: TStringField;
    qrReporteDocumento: TStringField;
    qrReportebPrivado: TStringField;
    qrReporteID_Visita: TIntegerField;
    qrReporteUsuario_Toma: TStringField;
    qrReporteFlebotomista: TStringField;
    dsReporte: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppDBPipeline1ppField1: TppField;
    ppDBPipeline1ppField2: TppField;
    ppDBPipeline1ppField3: TppField;
    ppDBPipeline1ppField4: TppField;
    ppDBPipeline1ppField5: TppField;
    ppDBPipeline1ppField6: TppField;
    ppDBPipeline1ppField7: TppField;
    ppDBPipeline1ppField8: TppField;
    ppDBPipeline1ppField9: TppField;
    ppDBPipeline1ppField10: TppField;
    ppDBPipeline1ppField11: TppField;
    ppDBPipeline1ppField12: TppField;
    ppDBPipeline1ppField13: TppField;
    ppDBPipeline1ppField14: TppField;
    ppDBPipeline1ppField15: TppField;
    ppDBPipeline1ppField16: TppField;
    ppDBPipeline1ppField17: TppField;
    ppDBPipeline1ppField18: TppField;
    ppDBPipeline1ppField19: TppField;
    ppRptTarjeta: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDBText12: TppDBText;
    ppLabel16: TppLabel;
    ppLabel24: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppSystemVariable6: TppSystemVariable;
    ppLabel31: TppLabel;
    ppShape6: TppShape;
    ppLabel32: TppLabel;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppLabel33: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppLabel10: TppLabel;
    ppDBMemo1: TppDBMemo;
    ppLabel11: TppLabel;
    ppDBText8: TppDBText;
    ppLabel12: TppLabel;
    ppDBText9: TppDBText;
    ppLabel13: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLine6: TppLine;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLine7: TppLine;
    ppLabel23: TppLabel;
    ppLabel27: TppLabel;
    ppLine8: TppLine;
    ppLabel28: TppLabel;
    ppLine9: TppLine;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppDBMemo2: TppDBMemo;
    ppShape1: TppShape;
    ppDBText13: TppDBText;
    ppShape2: TppShape;
    ppDBText14: TppDBText;
    ppShape3: TppShape;
    ppDBText15: TppDBText;
    ppShape4: TppShape;
    ppDBText16: TppDBText;
    ppShape5: TppShape;
    ppDBText17: TppDBText;
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
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLine10: TppLine;
    ppDBText10: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    qrTarjetaEstatus: TBooleanField;
    tvDatosEstatus: TcxGridDBColumn;
    qrPaciente: TADOQuery;
    qrPacienteNOMBRE: TStringField;
    dsCliente: TDataSource;
    qrPacienteCLIENTEID: TStringField;
    qrTarjetaNombrePaciente: TStringField;
    tvDatosNombrePaciente: TcxGridDBColumn;
    dbGridTarjetaDet: TcxGridLevel;
    dbGridTarjetaDetTV: TcxGridDBTableView;
    qrTarjetaDet: TADOQuery;
    dsTarjetaDet: TDataSource;
    qrTarjetaDetID: TStringField;
    qrTarjetaDetTarjetaID: TStringField;
    qrTarjetaDetFecha: TDateTimeField;
    qrTarjetaDetMontoPagado: TBCDField;
    dbGridTarjetaDetTVTarjetaID: TcxGridDBColumn;
    dbGridTarjetaDetTVFecha: TcxGridDBColumn;
    dbGridTarjetaDetTVMontoPagado: TcxGridDBColumn;
    qrTarjetaIdentificacion: TStringField;
    procedure qrTarjetaBeforeDelete(DataSet: TDataSet);
    procedure EdTarjetaIdKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qrTarjetaAfterPost(DataSet: TDataSet);
    procedure qrTarjetaBeforeEdit(DataSet: TDataSet);
    procedure qrTarjetaNewRecord(DataSet: TDataSet);
    procedure EdTarjetaIdExit(Sender: TObject);
    procedure btPacientesClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure btBuscarTarjetaClick(Sender: TObject);
    procedure btBuscarPacClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDatosTarjeta: TfrmDatosTarjeta;

implementation

uses ActionsDM, cxExportGrid4Link, DataModule, Main;

{$R *.dfm}

procedure TfrmDatosTarjeta.btBuscarPacClick(Sender: TObject);
begin
  inherited;
  Factura_St := 'T';
  frmMain.LanzaVentana(-7999);
end;

procedure TfrmDatosTarjeta.btBuscarTarjetaClick(Sender: TObject);
begin
  inherited;
  frmMain.LanzaVentana(-7990);
end;

procedure TfrmDatosTarjeta.btImprimirClick(Sender: TObject);
begin
  inherited;
  If qrTarjetaTarjetaID.Value <> EmptyStr then
  begin
{     With qrReporte, sql do
    begin
      Close;
      Clear;
      Add('select top 1 d.Usuario_Toma,p.nombres,p.apellidos,year(getdate())-Year(p.fecha_nacimiento) as Edad,');
      Add(' p.documento,case when tipo_cliente = '+#39+'P'+#39+' Then '+#39+'x'+#39+' else '+#39+''+#39+' end as bPrivado,');
      Add(' case when tipo_cliente = '+#39+'S'+#39+' Then '+#39+'x'+#39+' else '+#39+''+#39+' end as bSeguro,');
      Add(' Tel_Residencia,Tel_Oficina,Tel_Celular,Direccion,d.Fecha,d.Hora,');
      Add(' case when Resultado_Via = '+#39+'F'+#39+' Then '+#39+'x'+#39+' else '+#39+''+#39+' end as bFax,');
      Add(' case when Resultado_Via = '+#39+'I'+#39+' Then '+#39+'x'+#39+' else '+#39+''+#39+' end as bInternet,');
      Add(' case when Resultado_Via = '+#39+'P'+#39+' Then '+#39+'x'+#39+' else '+#39+''+#39+' end as bPersonal,observacion, CteDomDet as ID_Visita, f.Descripcion as Flebotomista ');
      Add(' from ptclientedom p inner join ptclientedomdetalle d ');
      Add(' on p.ctedomid = d.CteDomid, ptflebotomista f ');
      Add(' Where p.ctedomid='+edClienteDom.Text+' and p.estatus='+#39+'A'+#39);
      Add(' And d.flebotomistaid=f.flebotomistaid ');
      Add(' Order by fecha desc,Hora desc ');

      Open;
      if IsEmpty then
      begin
          EtMensajeDlg('No Existen datos.  Verifique.',etConfirmacion,[etOk],1,dm.Imagenes.Items[5].Bitmap,true);
          Exit;
      end;
    end;
    ppRptTarjeta.DeviceType := dtScreen;
    ppRptTarjeta.Print;
}
  end;
end;

procedure TfrmDatosTarjeta.btPacientesClick(Sender: TObject);
begin
  inherited;
  If (qrTarjetaTarjetaID.Value <> EmptyStr) and
     (qrTarjeta.State = dsInsert) Then
  Begin
     Factura_St := 'T';
     frmMain.CustTarjeta := '';
     frmMain.LanzaVentana(1100);
  end;
end;

procedure TfrmDatosTarjeta.EdTarjetaIdExit(Sender: TObject);
Var Tarjeta               : String;
begin
  inherited;
    Tarjeta   := EdTarjetaId.Text;
    If (EdTarjetaId.EditValue)<> EmptyStr then
    begin
      With qrTarjeta, sql do
      begin
        Close;
        Clear;
        Text :='Select *  From PtTarjeta Where TarjetaID = '+#39+Tarjeta+#39;
        Open;
        If (qrTarjeta.RecordCount > 0) Then
        begin
            qrTarjeta.Edit;
            qrTarjetaPacienteId.Value     := qrTarjeta.FieldByName('PacienteID').AsString;
            lblNombrePaciente.Caption     := qrTarjeta.FieldByName('Nombre').AsString;
            qrTarjetaIdentificacion.Value := qrTarjeta.FieldByName('Identificacion').AsString;
            qrTarjetaPuntosTotal.Value    := qrTarjeta.FieldByName('PuntosTotal').AsInteger;
            qrTarjetaPuntosUsados.Value   := qrTarjeta.FieldByName('PuntosUsados').AsInteger;
        end
        else
        begin
          qrTarjeta.Append;
          qrTarjetaTarjetaID.Value := Tarjeta;
          If EdPaciente.Enabled then EdPaciente.SetFocus;
        end;
      end;
    end;
end;

procedure TfrmDatosTarjeta.EdTarjetaIdKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Length(EdTarjetaID.Text) = 6 then EdPaciente.SetFocus;
end;

procedure TfrmDatosTarjeta.FormCreate(Sender: TObject);
begin
  inherited;
  DM.qrParametro.close;
  DM.qrParametro.open;
  qrPaciente.close;
  qrPaciente.open;
  qrTarjetaDet.Close;
  qrTarjetaDet.Open;
end;

procedure TfrmDatosTarjeta.qrTarjetaAfterPost(DataSet: TDataSet);
begin
  inherited;
  qrPaciente.Refresh;
end;

procedure TfrmDatosTarjeta.qrTarjetaBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  qrPaciente.Cancel;
  ShowMessage('No puede eliminar registros.');
end;

procedure TfrmDatosTarjeta.qrTarjetaBeforeEdit(DataSet: TDataSet);
Var qfind                 : TAdoQuery;
    Paciente            : String;
begin
  inherited;
    qfind     := DM.NewQuery;
    Paciente  := EdPaciente.Text;
    If (EdPaciente.EditValue)<> EmptyStr then
    begin
      With qfind, sql do
      begin
        Close;
        Clear;
        Text :='Select *  From ptcliente Where ClienteID = '+#39+Paciente+#39;
        Open;
        If (qfind.RecordCount > 0) Then
        begin
            lblNombrePaciente.Caption     := qfind.FieldByName('Nombre').AsString;
            qrTarjetaIdentificacion.Value := qfind.FieldByName('Identificacion').AsString;
            Exit;
        end;
      end;
    end;
    EdPaciente.Text       := Paciente;
end;

procedure TfrmDatosTarjeta.qrTarjetaNewRecord(DataSet: TDataSet);
begin
  inherited;
  qrTarjetaUserEmision.Value  :=DM.CurUser;
  qrTarjetaFechaEmision.Value :=DM.SystemDate;
  qrTarjetaEstatus.Value      :=True;
  lblNombrePaciente.Caption   :=EmptyStr;
  if qrTarjetaTarjetaID.Value = EmptyStr then EdTarjetaId.Setfocus;
end;

end.
