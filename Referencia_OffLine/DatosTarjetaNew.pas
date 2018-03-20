unit DatosTarjetaNew;

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
  cxMemo, DateUtils, cxBlobEdit, cxintl, cxImage, cxLookupEdit, cxDBLookupEdit,
  dlgmensajes, cxLabel, LMDCustomButton, LMDButton, LMDControl, LMDBaseControl,
  LMDBaseGraphicControl, LMDBaseLabel, LMDCustomLabel, LMDLabel,
  LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel, LMDSimplePanel, ppDB,
  ppDBPipe, ppCtrls, ppBands, ppVar, ppPrnabl, ppClass, ppCache,ppTypes, ppComm,
  ppRelatv, ppProd, ppReport, myChkBox, ppStrtch, ppMemo, cxMRUEdit, RAWPrinter;

type
  TfrmDatosTarjetaNew = class(TfrmCustomModule)
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
    BtPacientes: TcxButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    BtTransacciones: TcxButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl2Item3: TdxLayoutItem;
    cxGridStyles: TcxStyleRepository;
    stGrDatos: TcxStyle;
    stGrEdit: TcxStyle;
    BtImprimir: TcxButton;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl2Item10: TdxLayoutItem;
    dxLayoutControl2Item11: TdxLayoutItem;
    dxLayoutControl2Item12: TdxLayoutItem;
    dxLayoutControl2Item13: TdxLayoutItem;
    dxLayoutControl2Group7: TdxLayoutGroup;
    dxLayoutControl2Item17: TdxLayoutItem;
    dxLayoutControl2Group12: TdxLayoutGroup;
    dsDatos: TDataSource;
    ppRptDomicilio: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDBText12: TppDBText;
    ppLabel16: TppLabel;
    ppLabel24: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppSystemVariable6: TppSystemVariable;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand3: TppSummaryBand;
    ppDBPipeline1: TppDBPipeline;
    qrReporte: TADOQuery;
    dsReporte: TDataSource;
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
    dxLayoutControl2Item5: TdxLayoutItem;
    dxLayoutControl2Group3: TdxLayoutGroup;
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
    qrReportebPrivado: TStringField;
    ppLabel31: TppLabel;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLine10: TppLine;
    qrReporteID_Visita: TIntegerField;
    ppShape6: TppShape;
    ppLabel32: TppLabel;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppLabel33: TppLabel;
    qrReporteUsuario_Toma: TStringField;
    qrReporteFlebotomista: TStringField;
    ppDBText10: TppDBText;
    EdTarjetaId: TcxDBTextEdit;
    EdPaciente: TcxDBTextEdit;
    lblNombrePaciente: TcxLabel;
    cxButton1: TcxButton;
    cxDBSpinEdit1: TcxDBSpinEdit;
    cxDBSpinEdit2: TcxDBSpinEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBDateEdit4: TcxDBDateEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutControl2Item1: TdxLayoutItem;
    dxLayoutControl2Group4: TdxLayoutGroup;
    dxLayoutControl2Item2: TdxLayoutItem;
    qrTarjeta: TADOQuery;
    qrTarjetaTarjetaID: TStringField;
    qrTarjetaPacienteId: TStringField;
    qrTarjetaPuntosTotal: TIntegerField;
    qrTarjetaPuntosUsados: TIntegerField;
    qrTarjetaUserEmision: TStringField;
    qrTarjetaUserModifica: TStringField;
    qrTarjetaFechaModifica: TDateTimeField;
    qrTarjetaEstatus: TBooleanField;
    qrTarjetaIdentificacion: TStringField;
    ppDBPipeline2: TppDBPipeline;
    ppField1: TppField;
    ppField2: TppField;
    ppField3: TppField;
    ppField4: TppField;
    ppField5: TppField;
    ppField6: TppField;
    ppField7: TppField;
    ppField8: TppField;
    ppField9: TppField;
    ppField10: TppField;
    ppField11: TppField;
    ppField12: TppField;
    ppField13: TppField;
    ppField14: TppField;
    ppField15: TppField;
    ppField16: TppField;
    ppField17: TppField;
    ppField18: TppField;
    ppField19: TppField;
    ppRptTarjeta: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDBText11: TppDBText;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel21: TppLabel;
    ppLabel34: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel35: TppLabel;
    ppShape7: TppShape;
    ppLabel36: TppLabel;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppLabel37: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppLabel46: TppLabel;
    ppDBMemo3: TppDBMemo;
    ppLabel47: TppLabel;
    ppDBText28: TppDBText;
    ppLabel48: TppLabel;
    ppDBText29: TppDBText;
    ppLabel49: TppLabel;
    ppLine6: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLine23: TppLine;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLine24: TppLine;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLine25: TppLine;
    ppLabel60: TppLabel;
    ppLine26: TppLine;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppDBMemo4: TppDBMemo;
    ppShape8: TppShape;
    ppDBText30: TppDBText;
    ppShape9: TppShape;
    ppDBText31: TppDBText;
    ppShape10: TppShape;
    ppDBText32: TppDBText;
    ppShape11: TppShape;
    ppDBText33: TppDBText;
    ppShape12: TppShape;
    ppDBText34: TppDBText;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLabel63: TppLabel;
    ppDBText35: TppDBText;
    ppLine37: TppLine;
    ppDBText36: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    qrTarjetaFechaEmision: TDateTimeField;
    cxButton2: TcxButton;
    BtEliminar: TcxButton;
    BtGrabar: TcxButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    qrTarjetaDet: TADOQuery;
    qrTarjetaDetID: TStringField;
    qrTarjetaDetTarjetaID: TStringField;
    qrTarjetaDetFecha: TDateTimeField;
    qrTarjetaDetMontoPagado: TBCDField;
    dsTarjetaDet: TDataSource;
    qrPaciente: TADOQuery;
    qrPacienteNOMBRE: TStringField;
    qrPacienteCLIENTEID: TStringField;
    dsCliente: TDataSource;
    dxLayoutControl1Item8: TdxLayoutItem;
    btLabel: TcxButton;
    RAWPrinter1: TRAWPrinter;
    procedure btLabelClick(Sender: TObject);
    procedure qrTarjetaAfterPost(DataSet: TDataSet);
    procedure qrTarjetaBeforeDelete(DataSet: TDataSet);
    procedure qrTarjetaNewRecord(DataSet: TDataSet);
    procedure qrTarjetaBeforeEdit(DataSet: TDataSet);
    procedure BtEliminarClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure EdTarjetaIdExit(Sender: TObject);
    procedure EdTarjetaIdKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtImprimirClick(Sender: TObject);
    procedure BtGrabarClick(Sender: TObject);
    procedure BtTransaccionesClick(Sender: TObject);
    procedure BtPacientesClick(Sender: TObject);
    procedure Printing_Label(_nombre: String);

  protected
    procedure SetColorTo(iColor: TColor);
  private
    { Private declarations }
    Db1Servidor,Db2Servidor,StTrans : String;
  public
    { Public declarations }
    recid                       : Integer;
    muestranumber, UserId       : String;
    urgente, reportado, doctor  : TcxStyle;
    fecha_label                 : TDateTime;
    hora_label                  : String;

  end;

Type
  TDias = Record
  Lunes, Martes, Miercoles, Jueves, Viernes, Sabado, Domingo : Integer;
  End;

var
  frmDatosTarjetaNew    : TfrmDatosTarjetaNew;
  SecuenciaLabel        : integer;
  SecAct                : integer;
  qfindLb               : TADOQuery;
  qfindLabel            : TADOQuery;
  secuencia             : integer;
  Descripcion, titulo   : string;
  depact,muestraact     : string;
  colact                : integer;
  Dias                  : TDias;

implementation

uses ActionsDM, cxExportGrid4Link, DataModule, Main;

{$R *.dfm}

//Buscando el Label de la Prueba Registrada.

procedure TfrmDatosTarjetaNew.BtPacientesClick(Sender: TObject);
Var TipoDoc : String;
begin
  If (qrTarjetaTarjetaID.Value <> EmptyStr) and
     (qrTarjeta.State = dsInsert) Then
  Begin
      Factura_St := 'T';
      frmMain.CustTarjeta := '';
      frmMain.LanzaVentana(-7999);
  end;
end;

procedure TfrmDatosTarjetaNew.BtTransaccionesClick(Sender: TObject);
Var TipoDoc : String;
begin
  frmMain.LanzaVentana(-7990);
//  If qrTarjetaTarjetaID.Value <> EmptyStr then
//  begin
//    If qrTarjeta.State in [dsEdit,dsBrowse,dsInsert] then
//    Begin
//          qrTarjeta.Properties['Update Criteria'].Value := 0;
//          qrTarjeta.Edit;
//          qrTarjeta.Post;
//    end;
//    if (Length(qrTarjetaTarjetaID.AsString) > 0) then
//    begin
//        qrTarjetaDet.Insert;
//        qrTarjetaDet.Edit;
//        qrTarjetaDetID.AsInteger              := qrClienteDomicilioCteDomID.AsInteger;
//        qrTarjetaDetCteDomDet.AsInteger       := dm.GetSecuenciaDetId;
//        qrClienteDomDetFecha.AsDateTime       := DM.Buscar_Fecha_Actual;
//        qrClienteDomDetUsuario_Toma.AsString  := DM.CurUser;
//    end
//    else
//      showmessage('No Existe Paciente.  Verifique.');
//  end;
end;


procedure TfrmDatosTarjetaNew.cxButton2Click(Sender: TObject);
begin
  inherited;
  qrTarjeta.Cancel;
  qrTarjetaDet.Cancel;
  qrTarjeta.Insert;
  If EdTarjetaId.Enabled then EdTarjetaId.SetFocus;
end;

procedure TfrmDatosTarjetaNew.BtEliminarClick(Sender: TObject);
begin
 inherited;
  If Not((Trim(qrTarjetaTarjetaID.AsString) = EmptyStr)) Then
  begin
       If qrTarjeta.RecordCount > 0 then
       begin
          qrTarjeta.Delete;
          EdTarjetaIDExit(Sender);
       end;
  end;
end;

procedure TfrmDatosTarjetaNew.BtGrabarClick(Sender: TObject);
begin
  inherited;
    if qrTarjetaTarjetaID.Value <> EmptyStr then
    begin
     if (qrTarjeta.State in [dsEdit, dsInsert]) And (qrTarjeta.Modified) then
     Begin
        qrTarjeta.Properties['Update Criteria'].Value := 0;
        qrTarjeta.Edit;
        qrTarjeta.Post;
     end;
     if qrTarjetaDet.State in [dsEdit, dsInsert, dsBrowse] then
     Begin
        qrTarjetaDet.Properties['Update Criteria'].Value := 0;
        qrTarjetaDet.Edit;
        qrTarjetaDet.Post;
     end;
    end;
  qrTarjeta.Cancel;
  qrTarjetaDet.Cancel;
  qrTarjeta.Insert;
  If EdTarjetaId.Enabled then EdTarjetaId.SetFocus;

end;

procedure TfrmDatosTarjetaNew.BtImprimirClick(Sender: TObject);
begin
  inherited;
  If qrTarjetaTarjetaID.Value <> EmptyStr then
  begin
     With qrReporte, sql do
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
      Add(' Where p.ctedomid='+edTarjetaID.Text+' and p.estatus='+#39+'A'+#39);
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
  end;
end;

procedure TfrmDatosTarjetaNew.btLabelClick(Sender: TObject);
 Var  qprint   : TADOQuery;
      printer  : String;
begin
  inherited;
  If Trim(lblNombrePaciente.Caption)<> EmptyStr then
  begin
    Printing_Label(lblNombrePaciente.Caption);
  end;
end;

procedure TfrmDatosTarjetaNew.Printing_Label(_nombre: String);
begin
  with RAWPrinter1 do
  begin
   PrinterName := Ruta_BarCode;
   BeginDoc;
     writeLn('FK"FORMA"');
     writeLn('FS"FORMA"');
     writeLn('');
     writeLn('q350');
     writeLn('Q350,30+0');
     writeLn('S5');
     writeLn('D8');
     writeLn('ZT');
//     writeLn('B250,20,0,1,2,6,70,N,"'  + _muestra + '"');
//     writeLn('A230,130,0,3,1,1,N,"'    + _label + '"');
//     writeLn('A590,20,1,1,1,1,N,"'    + _departamento + '"');
     writeLn('A1,50,0,1,1,1,N,"'    + _nombre + '"');
//     writeLn('B500,130,0,3,2,3,50,N,"' + LetraSec[_secuencia] + '"');
//     writeLn('A570,20,1,1,1,1,N,"' + _usuario + '"');
//     writeLn('A230,170,0,1,1,1,N,"' + _descripcion + '"');
//     writeLn('A230,190,0,1,1,1,N,"' + _descripcion2 + '"');
     writeLn('FE');
     writeLn('');
     writeLn('FR"FORMA"');
     writeLn('?');
     writeLn('P1');
     writeLn('');
   EndDoc;
  end;
end;

procedure TfrmDatosTarjetaNew.FormDestroy(Sender: TObject);
begin
  inherited;
  frmMain.Exis_Muestra := False;
end;

procedure TfrmDatosTarjetaNew.FormShow(Sender: TObject);
begin
  inherited;
  If Factura_St <> 'CD' then
  begin
      DM.qrParametro.close;
      DM.qrParametro.open;
      qrPaciente.close;
      qrPaciente.open;
      With qrTarjeta, sql do
      begin
        Close;
        Clear;
        Text :='Select *  From PtTarjeta Where TarjetaID = :TarjetaID';
        Open;
      end;
{      With qrTarjetaDet, sql do
      begin
        Close;
        Clear;
        Text :='Select *  From PtTarjetaDet Where CteDomID = :CteID ';
        Open;
      end;

      urgente := TcxStyle.Create(Self);
      urgente.Color := DM.ColorUrgente;
      urgente.TextColor := ClBlack;

      reportado := TcxStyle.Create(Self);
    //  reportado.Color := DM.ColorReady;
      reportado.Color := DM.ColorConsulta;
      reportado.TextColor := ClBlack;

      doctor := TcxStyle.Create(Self);
    //  doctor.Color := $0005EAD9;
      doctor.Color := DM.ColorBorra;
      doctor.TextColor := ClNavy;

      frmMain.Exis_Muestra := True;
      frmMain.Muestra_Unico := False;
      frmMain.Muestra_Todos := False;

      SetColorTo(dm.ColorModifica);
}
  end
  else
  begin
      Factura_St:=EmptyStr;
 //     DM.qrFlebotomistas.Close;
 //     DM.qrFlebotomistas.Open;
//      cxDBExtLookupComboBox1.EditingText := dm.GetMaxDescFlebAX;
  end;
end;

procedure TfrmDatosTarjetaNew.qrTarjetaAfterPost(DataSet: TDataSet);
begin
  inherited;
  qrPaciente.Refresh;
end;

procedure TfrmDatosTarjetaNew.qrTarjetaBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  qrPaciente.Cancel;
  ShowMessage('No puede eliminar registros.');
end;

procedure TfrmDatosTarjetaNew.qrTarjetaBeforeEdit(DataSet: TDataSet);
Var qfind               : TAdoQuery;
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
//            qrTarjetaIdentificacion.Value := qfind.FieldByName('Identificacion').AsString;
            Exit;
        end;
      end;
    end;
    EdPaciente.Text       := Paciente;
end;

procedure TfrmDatosTarjetaNew.qrTarjetaNewRecord(DataSet: TDataSet);
begin
  inherited;
  qrTarjetaUserEmision.Value  :=DM.CurUser;
  qrTarjetaFechaEmision.Value :=DM.SystemDate;
  qrTarjetaEstatus.Value      :=True;
  lblNombrePaciente.Caption   :=EmptyStr;
//  if qrTarjetaTarjetaID.Value = EmptyStr then EdTarjetaId.Setfocus;

end;

procedure TfrmDatosTarjetaNew.SetColorTo(iColor: TColor);
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
  end;
end;

procedure TfrmDatosTarjetaNew.EdTarjetaIdExit(Sender: TObject);
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
//          If EdPaciente.Enabled then EdPaciente.SetFocus;
        end;
      end;
    end;
end;

procedure TfrmDatosTarjetaNew.EdTarjetaIdKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Length(EdTarjetaID.Text) = 6 then
  begin
   EdPaciente.SetFocus;
  end;
end;

END.

