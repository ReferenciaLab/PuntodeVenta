unit DatosClientesPlanes;

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
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView, ComCtrls,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, JvExControls, JvComponent,
  JvEnterTab, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBExtLookupComboBox, cxContainer, cxTextEdit, cxDBEdit, cxDBLookupComboBox,
  cxImageComboBox, cxMemo, cxSpinEdit, cxCheckBox, cxCurrencyEdit, cxCalendar,
  ppDB, ppDBPipe, ppCtrls, ppStrtch, ppMemo, ppBands, myChkBox, ppVar, ppPrnabl,
  ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport, pptypes, ppParameter,
  cxintl;

type
  TfrmDatosClientesPlanes = class(TfrmDatosModule)
    qrClientes: TADOQuery;
    tvDatosNombre: TcxGridDBColumn;
    lcDatosGroup1: TdxLayoutGroup;
    edcliente: TcxDBTextEdit;
    lcDatosItem1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    lcDatosItem2: TdxLayoutItem;
    lcDatosGroup2: TdxLayoutGroup;
    cxDBTextEdit3: TcxDBTextEdit;
    lcDatosItem4: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    lcDatosItem5: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    lcDatosItem6: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    lcDatosItem7: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    lcDatosItem8: TdxLayoutItem;
    cxDBTextEdit8: TcxDBTextEdit;
    lcDatosItem9: TdxLayoutItem;
    lcDatosGroup3: TdxLayoutGroup;
    BtImportar: TcxButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    BtExportar: TcxButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    pmAcuerdoComercial: TPopupMenu;
    Precios1: TMenuItem;
    Descuentos1: TMenuItem;
    cxDBTextEdit1: TcxDBTextEdit;
    lcDatosItem11: TdxLayoutItem;
    cxDBMemo1: TcxDBMemo;
    lcDatosItem12: TdxLayoutItem;
    cxDBExtLookupComboBox1: TcxDBExtLookupComboBox;
    lcDatosItem13: TdxLayoutItem;
    lcDatosGroup5: TdxLayoutGroup;
    lcDatosGroup6: TdxLayoutGroup;
    cxDBImageComboBox3: TcxDBImageComboBox;
    lcDatosItem20: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    lcDatosItem21: TdxLayoutItem;
    EdPlan: TcxDBTextEdit;
    lcDatosItem23: TdxLayoutItem;
    ActionList1: TActionList;
    cxDBTextEdit10: TcxDBTextEdit;
    lcDatosItem10: TdxLayoutItem;
    cxDBTextEdit11: TcxDBTextEdit;
    lcDatosItem14: TdxLayoutItem;
    BtEtiquetas: TcxButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    EdEmpleado: TcxDBTextEdit;
    lcDatosItem15: TdxLayoutItem;
    BtOrdenes: TcxButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBTextEdit9: TcxDBTextEdit;
    lcDatosItem3: TdxLayoutItem;
    tvDatosPlanId: TcxGridDBColumn;
    tvDatosEmpresaID: TcxGridDBColumn;
    tvDatosEmpleadoID: TcxGridDBColumn;
    tvDatosDepartamento: TcxGridDBColumn;
    BtCombos: TcxButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    lcDatosGroup7: TdxLayoutGroup;
    lcDatosGroup8: TdxLayoutGroup;
    cxDBTextEdit12: TcxDBTextEdit;
    lcDatosItem16: TdxLayoutItem;
    cxDBCheckBox1: TcxDBCheckBox;
    lcDatosItem17: TdxLayoutItem;
    cxDBCheckBox2: TcxDBCheckBox;
    lcDatosItem19: TdxLayoutItem;
    cxDBTextEdit13: TcxDBTextEdit;
    lcDatosItem18: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    lcDatosItem26: TdxLayoutItem;
    cxDBDateEdit3: TcxDBDateEdit;
    lcDatosItem27: TdxLayoutItem;
    qrClientesPlanId: TStringField;
    qrClientesEmpresaID: TStringField;
    qrClientesEmpleadoID: TStringField;
    qrClientesClienteID: TStringField;
    qrClientesCodigoAxapta: TStringField;
    qrClientesIdentificacion: TStringField;
    qrClientesNombre: TStringField;
    qrClientesDepartamento: TStringField;
    qrClientesContacto: TStringField;
    qrClientesTelefono: TStringField;
    qrClientesTelefono2: TStringField;
    qrClientesFax: TStringField;
    qrClientesDireccion: TMemoField;
    qrClientesCiudadID: TStringField;
    qrClientesemail: TStringField;
    qrClientesFechaNacimiento: TDateTimeField;
    qrClientesAlias: TStringField;
    qrClientesTipoSangre: TStringField;
    qrClientesLinea: TLargeintField;
    qrClientesFechaSangre: TDateTimeField;
    qrClientesFechaOrina: TDateTimeField;
    qrClientesFechaEsputo: TDateTimeField;
    qrClientesFechaGarganta: TDateTimeField;
    qrClientesFechaNail: TDateTimeField;
    qrClientesComboId: TStringField;
    qrClientesMuestraId: TStringField;
    qrClientesEstatus: TStringField;
    qrClientesCargo: TStringField;
    qrClientesSexo: TStringField;
    qrClientesEdad: TIntegerField;
    qrClientesSucursal: TStringField;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    lcDatosItem28: TdxLayoutItem;
    BtProcesar: TcxButton;
    dxLayoutControl1Item6: TdxLayoutItem;
    qrClientesPacienteCiaId: TStringField;
    cxDBTextEdit14: TcxDBTextEdit;
    lcDatosItem29: TdxLayoutItem;
    ppClientesPlanesRep: TppDBPipeline;
    dsClienteReporte: TDataSource;
    qrClienteReporte: TADOQuery;
    qrClientesTomado: TBooleanField;
    qrClientesImpreso: TBooleanField;
    qrClientesGenerado: TBooleanField;
    ppClientesPlanesReport: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppColumnHeaderBand1: TppColumnHeaderBand;
    ppColumnFooterBand1: TppColumnFooterBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    qrClienteReportePlanId: TStringField;
    qrClienteReporteEmpresaID: TStringField;
    qrClienteReporteEmpleadoID: TStringField;
    qrClienteReporteClienteID: TStringField;
    qrClienteReporteComboId: TStringField;
    qrClienteReporteCodigoAxapta: TStringField;
    qrClienteReporteIdentificacion: TStringField;
    qrClienteReporteNombre: TStringField;
    qrClienteReporteDepartamento: TStringField;
    qrClienteReporteContacto: TStringField;
    qrClienteReporteTelefono: TStringField;
    qrClienteReporteTelefono2: TStringField;
    qrClienteReporteFax: TStringField;
    qrClienteReporteDireccion: TMemoField;
    qrClienteReporteCiudadID: TStringField;
    qrClienteReporteemail: TStringField;
    qrClienteReporteFechaNacimiento: TDateTimeField;
    qrClienteReporteAlias: TStringField;
    qrClienteReporteTipoSangre: TStringField;
    qrClienteReporteLinea: TLargeintField;
    qrClienteReporteSangre: TBooleanField;
    qrClienteReporteOrina: TBooleanField;
    qrClienteReporteEsputo: TBooleanField;
    qrClienteReporteGarganta: TBooleanField;
    qrClienteReporteNail: TBooleanField;
    qrClienteReporteFechaSangre: TDateTimeField;
    qrClienteReporteFechaOrina: TDateTimeField;
    qrClienteReporteFechaEsputo: TDateTimeField;
    qrClienteReporteFechaGarganta: TDateTimeField;
    qrClienteReporteFechaNail: TDateTimeField;
    qrClienteReporteMuestraId: TStringField;
    qrClienteReporteEstatus: TStringField;
    qrClienteReporteCargo: TStringField;
    qrClienteReporteSexo: TStringField;
    qrClienteReporteEdad: TIntegerField;
    qrClienteReporteSucursal: TStringField;
    qrClienteReportePacienteCiaId: TStringField;
    qrClienteReporteTomado: TBooleanField;
    qrClienteReporteImpreso: TBooleanField;
    qrClienteReporteGenerado: TBooleanField;
    ppParameterList1: TppParameterList;
    btActualizar: TcxButton;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutControl1Item8: TdxLayoutItem;
    SaveDialog1: TSaveDialog;
    Barra1: TProgressBar;
    lcDatosItem22: TdxLayoutItem;
    tvDatosCargo: TcxGridDBColumn;
    tvDatosSucursal: TcxGridDBColumn;
    OpenDialog: TOpenDialog;
    cxDBCheckBox3: TcxDBCheckBox;
    lcDatosItem24: TdxLayoutItem;
    cxDBCheckBox4: TcxDBCheckBox;
    lcDatosItem25: TdxLayoutItem;
    cxDBCheckBox5: TcxDBCheckBox;
    lcDatosItem30: TdxLayoutItem;
    BtPrintLista: TcxButton;
    dxLayoutControl1Item9: TdxLayoutItem;
    BtVerTest: TcxButton;
    dxLayoutControl1Item10: TdxLayoutItem;
    ppClientesPlanesListado: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLabel54: TppLabel;
    ppLine1: TppLine;
    ppColumnHeaderBand3: TppColumnHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppDBText4: TppDBText;
    ppColumnFooterBand3: TppColumnFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText40: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText5: TppDBText;
    ppDBText8: TppDBText;
    ppLabel56: TppLabel;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppParameterList2: TppParameterList;
    LbNumero: TppLabel;
    qrClienteReporteTipoImpresion: TStringField;
    qrClientesTipoImpresion: TStringField;
    EdImpresion: TcxDBTextEdit;
    lcDatosItem31: TdxLayoutItem;
    qrClientesSangre: TBooleanField;
    qrClientesOrina: TBooleanField;
    qrClientesEsputo: TBooleanField;
    qrClientesGarganta: TBooleanField;
    qrClientesNail: TBooleanField;
    BtConsulta: TcxButton;
    dxLayoutControl1Item11: TdxLayoutItem;
    procedure BtConsultaClick(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure BtPrintListaClick(Sender: TObject);
    procedure qrClientesNailChange(Sender: TField);
    procedure qrClientesGargantaChange(Sender: TField);
    procedure qrClientesEsputoChange(Sender: TField);
    procedure qrClientesOrinaChange(Sender: TField);
    procedure qrClientesSangreChange(Sender: TField);
    procedure BtExportarClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure btActualizarClick(Sender: TObject);
    procedure BtOrdenesClick(Sender: TObject);
    procedure BtEtiquetasClick(Sender: TObject);
    procedure qrClientesBeforePost(DataSet: TDataSet);
    procedure BtCombosClick(Sender: TObject);
    procedure BtProcesarClick(Sender: TObject);
    procedure BtImportarClick(Sender: TObject);
    procedure qrClientesNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  protected
//    procedure DoPost; override;
  public
    _nail       :   String;
    _orina      :   String;
    _esputo     :   String;
    _sangre     :   String;
    _garganta   :   String;
    _muestraNo  :   String;
    _empleadoid :   String;
    PlanId      :   String;
    Imprimir    :   String;
    orina       :   Boolean;
    sangre      :   Boolean;
    qrPlan      :   TADOQuery;
    qrCltPLan   :   TADOQuery;
    qrTemporal  :   TADOQuery;

    Procedure Insertar_Ordenes;
    Procedure Actu_Toma_Externa;
    Procedure Export_Loaded_Old;
    Procedure Export_Loaded_New;
    Procedure Insertar_Data_Temp;
    Procedure BuscarData(codigo: string);
    Procedure Buscar_Combo(combo: string);
    Procedure Actu_Toma_Texto(valor: string);

    function  Buscar_Linea: Integer;
    function  CrearMuestraNo: String;
    function  Buscar_Cliente(plan: String; custid: String; emplid: String): Boolean;
    { Public declarations }
  end;

var
  frmDatosClientesPlanes: TfrmDatosClientesPlanes;

implementation

uses DataModule, Main, DialogSysDataClientes;

{$R *.dfm}

procedure TfrmDatosClientesPlanes.FormCreate(Sender: TObject);
begin
  inherited;
  DM.qrParametro.close;
  DM.qrParametro.open;
end;

procedure TfrmDatosClientesPlanes.qrClientesBeforePost(DataSet: TDataSet);
begin
  inherited;
  Buscar_Combo(qrClientesComboId.Value);
  qrClientesSangre.Value := sangre;
  qrClientesOrina.Value := orina;
end;


procedure TfrmDatosClientesPlanes.qrClientesNewRecord(DataSet: TDataSet);
begin
  inherited;
  qrClientesEdad.Value := 0;
  qrClientesSexo.Value := 'M';
  qrClientesEstatus.Value := 'A';
  qrClientesTomado.Value := False;
  qrClientesGenerado.Value := False;
  qrClientesImpreso.Value := False;
  qrClientesSangre.Value := False;
  qrClientesOrina.Value := False;
  qrClientesEsputo.Value := False;
  qrClientesGarganta.Value := False;
  qrClientesNail.Value := False;
  qrClientesPlanId.Value := PlanId;
  qrClientesLinea.Value := Buscar_Linea();
  qrClientesClienteID.Value := FormatFloat('00000', qrClientesLinea.Value);
  qrClientesEmpresaID.Value := qrPlan.FieldByName('ClienteID').AsString;
  qrClientesContacto.Value := qrPlan.FieldByName('Nombre').AsString;

  AutoKeyField := 'ComboId';
  AutoKeyField := 'EmpleadoId';
  AutoKeyField := 'Identificacion';
end;


procedure TfrmDatosClientesPlanes.qrClientesSangreChange(Sender: TField);
begin
  inherited;
  If (qrClientesSangre.Value = True) Then
    qrClientesFechaSangre.Value := DM.SystemDate;
end;

procedure TfrmDatosClientesPlanes.qrClientesOrinaChange(Sender: TField);
begin
  inherited;
  If (qrClientesOrina.Value = True) Then
    qrClientesFechaOrina.Value := DM.SystemDate;
end;

procedure TfrmDatosClientesPlanes.qrClientesEsputoChange(Sender: TField);
begin
  inherited;
  If (qrClientesEsputo.Value = True) Then
    qrClientesFechaEsputo.Value := DM.SystemDate;
end;

procedure TfrmDatosClientesPlanes.qrClientesGargantaChange(Sender: TField);
begin
  inherited;
  If (qrClientesGarganta.Value = True) Then
    qrClientesFechaGarganta.Value := DM.SystemDate;
end;

procedure TfrmDatosClientesPlanes.qrClientesNailChange(Sender: TField);
begin
  inherited;
  If (qrClientesNail.Value = True) Then
    qrClientesFechaNail.Value := DM.SystemDate;
end;

procedure TfrmDatosClientesPlanes.BtCombosClick(Sender: TObject);
begin
  inherited;
  If (qrClientes.State = dsInsert) or (qrClientes.State = dsEdit) then
    frmMain.lanzaVentana(-8017)
  Else
    Raise exception.CreateFmt('El Mantenimiento NO Esta En Edicion.', []);
end;


procedure TfrmDatosClientesPlanes.BtConsultaClick(Sender: TObject);
begin
  inherited;
  If (qrClientes.State = dsInsert) or (qrClientes.State = dsEdit) then
    Raise exception.CreateFmt('El Mantenimiento NO PUEDE Estar En Edicion. Por Favor Verifique.!!!', [])
  Else
    frmMain.lanzaVentana(-8030);
end;

procedure TfrmDatosClientesPlanes.BtEtiquetasClick(Sender: TObject);
begin
  inherited;
  frmMain.lanzaVentana(1501);
end;


procedure TfrmDatosClientesPlanes.BtExportarClick(Sender: TObject);
begin
  inherited;
  Export_Loaded_Old;
  Export_Loaded_New;
end;

procedure TfrmDatosClientesPlanes.BtPrintListaClick(Sender: TObject);
begin
  inherited;
    frmMain.lanzaVentana(1502);
end;

procedure TfrmDatosClientesPlanes.BtProcesarClick(Sender: TObject);
begin
  inherited;
   Insertar_Data_Temp;
end;

procedure TfrmDatosClientesPlanes.btActualizarClick(Sender: TObject);
begin
  inherited;
   Actu_Toma_Externa;
end;

procedure TfrmDatosClientesPlanes.BtImportarClick(Sender: TObject);
Var
 cont   : Integer;
 qSecu  : TADOQuery;
begin
  inherited;
   frmMain.spTexto.Caption := 'Borrando La Importacion Anterior...';
   DM.DataBase.Execute('DELETE FROM PTClientesPlanesTemporal');

   With TfrmDialogSysDataClientes.Create(Self) do begin
    SetForImport;
    ShowModal;
    if ModalResult = mrOk then
     begin
      Try
        frmMain.spTexto.Caption := 'Realizando la Importacion de los Datos.!!!';
        DM.Info('Realizando la Importacion de los Datos.!!!');

        cont := 0;
        qSecu  := DM.NewQuery;

        qSecu.close;
        qSecu.SQL.Text := ' INSERT INTO PTClientesPlanesTemporal '+
                          ' (Numero, EmpresaID, Departamento, EmpleadoID, '+
                          ' Nombre, Edad, Sexo, Sucursal, CargoCiudad, '+
                          ' ClienteID, ComboId) VALUES (:nume, :empr, :dept, '+
                          ' :empl, :name, :edad, :sexo, :sucu, :posi, :cust, :comb) ';

        Importacion.Close;
        Importacion.CommandText := ' SELECT * FROM Copia ';
        Importacion.Open;

        If (Importacion.RecordCount = 0) Then
          Begin
            Raise exception.CreateFmt('NO Existen Pacientes Cargados en la Tabla de Importacion.', []);
            Abort;
          end;

        DM.Info('Borrando La Importacion Anterior.!!!');
        DM.DataBase.Execute('DELETE FROM PTClientesPlanesTemporal');

        Importacion.First;
        While not Importacion.Eof Do
          Begin
            cont := cont + 1;
            qSecu.Parameters.ParamByName('nume').Value := cont;
            qSecu.Parameters.ParamByName('empr').Value := UpperCase(Importacion.FieldByName('empresa').Value);
            qSecu.Parameters.ParamByName('dept').Value := UpperCase(Importacion.FieldByName('depto').Value);
            qSecu.Parameters.ParamByName('empl').Value := UpperCase(Importacion.FieldByName('emplid').Value);
            qSecu.Parameters.ParamByName('name').Value := UpperCase(Importacion.FieldByName('nombre').Value);
            qSecu.Parameters.ParamByName('edad').Value := Importacion.FieldByName('edad').Value;
            qSecu.Parameters.ParamByName('sexo').Value := Importacion.FieldByName('sexo').Value;
            qSecu.Parameters.ParamByName('sucu').Value := UpperCase(Importacion.FieldByName('sucursal').Value);
            qSecu.Parameters.ParamByName('posi').Value := UpperCase(Importacion.FieldByName('sucursal').Value);
            qSecu.Parameters.ParamByName('cust').Value := UpperCase(Importacion.FieldByName('cliente').Value);
            qSecu.Parameters.ParamByName('comb').Value := UpperCase(Importacion.FieldByName('pruebaid').Value);
            qSecu.ExecSQL;

            Importacion.Next;
          End;
      Finally
        frmMain.spTexto.Caption := 'La Importacion de (' + IntToStr(cont) + ') Registros Termino Exitosamente.!!!';
      end;

      FreeAndNil(qSecu);
      DM.Info('La Importacion de (' + IntToStr(cont) + ') Registros Termino Exitosamente.!!!');
     end;
    Free;
  end;

  frmMain.lanzaVentana(-8016);
{
  inherited;
   frmMain.spTexto.Caption := 'Borrando La Importacion Anterior...';
   DM.DataBase.Execute('DELETE FROM PTClientesPlanesTemporal');

   With TfrmDialogSysDataClientes.Create(Self) do begin
    SetForImport;
    ShowModal;
    if ModalResult = mrOk then
     begin
      Try
        frmMain.spTexto.Caption := 'Importando Datos...';

        ExportDataSet.Close;
        ExportDataSet.CommandText := 'SELECT * FROM PTClientesPlanesTemporal ';
        ExportDataSet.Open;

        qImportWizard.FileName := edFileName.EditText;
        qImportWizard.Execute;
      Finally
        frmMain.spTexto.Caption := 'Importacion Terminada Exitosamente...';
      end;
     end;
    Free;
  end;

  frmMain.lanzaVentana(-8016);
}
end;


procedure TfrmDatosClientesPlanes.BtOrdenesClick(Sender: TObject);
begin
  inherited;
   Insertar_Ordenes;
end;

procedure TfrmDatosClientesPlanes.BuscarData(codigo: string);
begin
 qrClientes.Close;
 qrClientes.Parameters[0].Value := codigo;
 qrClientes.Open;

 PlanId := codigo;
 qrPlan := DM.find('SELECT * FROM PTPlanesEmpresa WHERE PlanID = :plan', PlanId);
// qrCombos := DM.find('SELECT * FROM PTPlanesCombos WHERE PlanID = :plan', PlanId);
end;


function TfrmDatosClientesPlanes.Buscar_Linea: Integer;
Var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;

 qfind.Close;
 qfind.SQL.Text := 'SELECT MAX(linea) FROM PTClientesPlanes ';
 qfind.Open;

 result := qfind.Fields[0].AsInteger + 1;

 FreeAndNil(qfind);
end;


//Generando el Numero de Muestra.
function TfrmDatosClientesPlanes.CrearMuestraNo: String;
Var
 qSecu : TADOQuery;
begin
 qrPlan := DM.find('SELECT * FROM PTPlanesEmpresa WHERE PlanID = :plan', PlanId);

 qSecu := DM.NewQuery;

 qSecu.close;
 qSecu.SQL.Text := 'SELECT * FROM PTSecuenciaDoc Where TipoDoc = '+ #39 + 'MT' + #39;
 qSecu.Open;

 if (qSecu.FieldByName('UsarIdentificador').AsBoolean) then
   result := qSecu.FieldByName('TipoDoc').asstring + '-' + formatfloat('00',strtofloat(DM.cursucursal)) +
//                               '-' + formatfloat('000000', qrPlan.FieldByName('MuestraActual').Asfloat)
                               formatfloat('000000', qrPlan.FieldByName('MuestraActual').Asfloat)
 else
//   result := formatfloat('00', strtofloat(DM.cursucursal)) + '-' +
   result := formatfloat('00', strtofloat(DM.cursucursal)) +
                         formatfloat('000000', qrPlan.FieldByName('MuestraActual').Asfloat);
 qSecu.close;
 qSecu.SQL.Clear;
 qSecu.SQL.Text := 'UPDATE PTPlanesEmpresa '+
                   'SET MuestraActual = MuestraActual + 1 '+
                   'WHERE PlanID = :plan ';
 qSecu.Parameters.ParamByName('plan').Value := PlanId;
 qSecu.ExecSQL;

 qrPlan := DM.find('SELECT * FROM PTPlanesEmpresa WHERE PlanID = :plan', PlanId);

 FreeAndNil(qSecu);
end;


procedure TfrmDatosClientesPlanes.cxButton1Click(Sender: TObject);
begin
  inherited;
  frmMain.lanzaVentana(-8016);
end;


//Buscando el Cliente Registrado.
function TfrmDatosClientesPlanes.Buscar_Cliente(plan: String; custid: String;
                                                emplid: String): Boolean;
Var
 qfind : TADOQuery;
 valor : Boolean;
begin
 qfind := DM.NewQuery;

 qfind.Close;
 qfind.SQL.Text := 'SELECT * FROM PTClientesPlanes '+
                   'WHERE PlanId = :plan '+
                   'AND ClienteID = :cust '+
                   'AND EmpleadoID = :empl ';
 qfind.Parameters.ParamByName('plan').Value := plan;
 qfind.Parameters.ParamByName('cust').Value := custid;
 qfind.Parameters.ParamByName('empl').Value := emplid;
 qfind.Open;

 If (qfind.RecordCount > 0) Then
   result := True
 Else
   result := False;

 FreeAndNil(qfind);
end;


//Insertando la Data de la Tabla Temporal
procedure TfrmDatosClientesPlanes.Insertar_Data_Temp;
Var
  total, inter, outer : Integer;
begin
 If DM.Mensaje('Desea Agregar Los Clientes Cargados en la Tabla Temporal?',mb_yesno) = id_yes Then
   Begin
     total := 0;
     inter := 0;
     outer := 0;

     qrCltPLan := DM.NewQuery;
     qrTemporal := DM.NewQuery;

     qrTemporal.Close;
     qrTemporal.SQL.Text := 'SELECT * FROM PTClientesPlanesTemporal ORDER BY EmpleadoId ';
     qrTemporal.Open;

     //Insertando los Datos de los Clientes
     qrCltPLan.Close;
     qrCltPLan.SQL.Text := 'INSERT INTO PTClientesPlanes '+
                           '(PlanId, EmpresaID, EmpleadoID, ClienteID, Identificacion, Edad, '+
                           'Nombre, Departamento, Direccion, Alias, Linea, Cargo, Sangre, Sexo, Orina, '+
                           'Esputo, Garganta, Nail, ComboId, MuestraId, Estatus, Sucursal, PacienteCiaId, '+
                           'Tomado, Generado, Impreso, TipoImpresion) VALUES (:plan, :empr, :empl, :cust, '+
                           ':iden, :edad, :name, :dept, :dire, :alia, :line, :pues, :blod, :sexo, :orin , '+
                           ':espu, :thro, :nail, :comb, :mues, :esta, :sucu, :paco, :toma, :gene, :impr, :imp2)';

     If (qrTemporal.RecordCount = 0) Then
       Raise exception.CreateFmt('NO Existen Clientes Cargados en la Tabla Temporal.', [])
     Else
       Begin
         total := qrTemporal.RecordCount;
         qrTemporal.First;
         While Not qrTemporal.Eof do
          Begin
           If Not Buscar_Cliente(PlanId, qrTemporal.FieldByName('ClienteId').AsString,
                                 qrTemporal.FieldByName('EmpleadoId').AsString) then
             Begin
              inter := inter + 1;
              Buscar_Combo(qrTemporal.FieldByName('ComboId').Value);

              qrCltPLan.Parameters.ParamByName('plan').Value := PlanId;
              qrCltPLan.Parameters.ParamByName('empr').Value := qrTemporal.FieldByName('EmpresaID').Value;
              qrCltPLan.Parameters.ParamByName('empl').Value := qrTemporal.FieldByName('EmpleadoID').Value;
              qrCltPLan.Parameters.ParamByName('cust').Value := qrTemporal.FieldByName('ClienteID').Value;
              qrCltPLan.Parameters.ParamByName('iden').Value := qrTemporal.FieldByName('EmpleadoID').Value;
              qrCltPLan.Parameters.ParamByName('edad').Value := qrTemporal.FieldByName('Edad').Value;
              qrCltPLan.Parameters.ParamByName('name').Value := qrTemporal.FieldByName('Nombre').Value;
              qrCltPLan.Parameters.ParamByName('dept').Value := qrTemporal.FieldByName('Departamento').Value;
              qrCltPLan.Parameters.ParamByName('dire').Value := qrTemporal.FieldByName('CargoCiudad').Value;
              qrCltPLan.Parameters.ParamByName('alia').Value := qrPlan.FieldByName('Alias').AsString;
              qrCltPLan.Parameters.ParamByName('line').Value := Buscar_Linea();
              qrCltPLan.Parameters.ParamByName('pues').Value := qrTemporal.FieldByName('CargoCiudad').Value;
              qrCltPLan.Parameters.ParamByName('sexo').Value := qrTemporal.FieldByName('Sexo').Value;
              qrCltPLan.Parameters.ParamByName('blod').Value := sangre;
              qrCltPLan.Parameters.ParamByName('orin').Value := orina;
              qrCltPLan.Parameters.ParamByName('espu').Value := False;
              qrCltPLan.Parameters.ParamByName('thro').Value := False;
              qrCltPLan.Parameters.ParamByName('nail').Value := False;
              qrCltPLan.Parameters.ParamByName('comb').Value := qrTemporal.FieldByName('ComboId').Value;
              qrCltPLan.Parameters.ParamByName('mues').Value := CrearMuestraNo;
              qrCltPLan.Parameters.ParamByName('esta').Value := 'A';
              qrCltPLan.Parameters.ParamByName('sucu').Value := qrTemporal.FieldByName('Sucursal').Value;
              qrCltPLan.Parameters.ParamByName('paco').Value := qrPlan.FieldByName('PacienteCiaId').AsString;
              qrCltPLan.Parameters.ParamByName('toma').Value := False;
              qrCltPLan.Parameters.ParamByName('gene').Value := False;
              qrCltPLan.Parameters.ParamByName('impr').Value := False;
              qrCltPLan.Parameters.ParamByName('imp2').Value := qrPlan.FieldByName('TipoImpresion').AsString;
//              qrTemporal.FieldByName('Filler1').Value;
//              qrTemporal.FieldByName('Filler2').Value;
              qrCltPLan.ExecSQL;

              qrTemporal.Next;
             End
           Else
             Begin
              outer := outer + 1;
              qrTemporal.Next;
            End;
          End;

        DM.Info('Registros en la Tabla Temporal: ( ' + IntToStr(total) + ' ).' + #13 + #13 +
                'Pacientes Cargados al Plan Anual: ( ' + IntToStr(inter) + ' ).' + #13 + #13 +
                'Pacientes Registrados Anteriorment: <' + IntToStr(outer) + '> ' + #13 + #13 +
                'El Proceso Fue Concluido Exitosamente.!!!');
        BuscarData(PlanId);
       End;
   End;
end;


procedure TfrmDatosClientesPlanes.Buscar_Combo(combo: string);
Var
  qrprueba : TADOQuery;
  qrCombos : TADOQuery;
begin
 orina := False;
 sangre := False;
// orina := True;
// sangre := True;

 qrCombos := DM.NewQuery;

 qrCombos.Close;
 qrCombos.SQL.Text := 'SELECT * FROM PTCombosPruebas '+
                      'WHERE ComboId = '+ #39 + combo + #39 +
                      'ORDER BY linea ';
 qrCombos.Open;

 If (qrCombos.RecordCount > 0) then
   Begin
     qrCombos.First;
     While Not qrCombos.Eof Do
      Begin
        qrprueba := DM.find('SELECT * FROM PTPrueba WHERE PruebaID = :pru', qrCombos.FieldByName('PruebaID').AsString);

        if (qrprueba.FieldByName('Orina').AsInteger = 1) then
          orina := True;

        if (qrprueba.FieldByName('Sangre').AsInteger = 1) then
          sangre := True;

        qrCombos.Next;
      end;

     FreeAndNil(qrCombos);
     FreeAndNil(qrprueba);
   end
 Else
   Raise exception.CreateFmt('El Grupo de Pruebas ('+ combo +') NO Tiene Pruebas Registrada.', []);
end;



//Insertando las Ordenes de Trabajo al Punto de Venta.
procedure TfrmDatosClientesPlanes.Insertar_Ordenes;
Var
  total : Integer;
begin
 If DM.Mensaje('Desea Generar las Ordenes de Trabajo?',mb_yesno) = id_yes Then
   Begin
     qrCltPLan := DM.NewQuery;
     qrTemporal := DM.NewQuery;

     qrTemporal.Close;
     qrTemporal.SQL.Text := 'SELECT * FROM PTClientesPlanesTemporal ORDER BY EmpleadoId ';
     qrTemporal.Open;

     //Insertando los Datos de los Clientes
     qrCltPLan.Close;
     qrCltPLan.SQL.Text := 'INSERT INTO PTClientesPlanes '+
                           '(PlanId, EmpresaID, EmpleadoID, ClienteID, Identificacion, Edad, '+
                           'Nombre, Departamento, Direccion, Alias, Linea, Cargo, Sangre, Sexo, Orina, '+
                           'Esputo, Garganta, Nail, ComboId, MuestraId, Estatus, Sucursal, PacienteCiaId, '+
                           'Tomado, Generado, Impreso, TipoImpresion) VALUES (:plan, :empr, :empl, :cust, '+
                           ':iden, :edad, :name, :dept, :dire, :alia, :line, :pues, :blod, :sexo, :orin, '+
                           ':espu, :thro, :nail, :comb, :mues, :esta, :sucu, :paco, :toma, :gene, :impr, imp2)';

     If (qrTemporal.RecordCount = 0) Then
       Raise exception.CreateFmt('NO Existen Clientes Cargados en la Tabla Temporal.', [])
     Else
       Begin
         total := qrTemporal.RecordCount;
         qrTemporal.First;
         While Not qrTemporal.Eof do
          Begin
           If Not Buscar_Cliente(PlanId, qrTemporal.FieldByName('ClienteId').AsString,
                                 qrTemporal.FieldByName('EmpleadoId').AsString) then
            Begin
              Buscar_Combo(qrTemporal.FieldByName('ComboId').Value);

              qrCltPLan.Parameters.ParamByName('plan').Value := PlanId;
              qrCltPLan.Parameters.ParamByName('empr').Value := qrTemporal.FieldByName('EmpresaID').Value;
              qrCltPLan.Parameters.ParamByName('empl').Value := qrTemporal.FieldByName('EmpleadoID').Value;
              qrCltPLan.Parameters.ParamByName('cust').Value := qrTemporal.FieldByName('ClienteID').Value;
              qrCltPLan.Parameters.ParamByName('iden').Value := qrTemporal.FieldByName('EmpleadoID').Value;
              qrCltPLan.Parameters.ParamByName('edad').Value := qrTemporal.FieldByName('Edad').Value;
              qrCltPLan.Parameters.ParamByName('name').Value := qrTemporal.FieldByName('Nombre').Value;
              qrCltPLan.Parameters.ParamByName('dept').Value := qrTemporal.FieldByName('Departamento').Value;
              qrCltPLan.Parameters.ParamByName('dire').Value := qrTemporal.FieldByName('CargoCiudad').Value;
              qrCltPLan.Parameters.ParamByName('alia').Value := qrPlan.FieldByName('Alias').AsString;
              qrCltPLan.Parameters.ParamByName('line').Value := Buscar_Linea();
              qrCltPLan.Parameters.ParamByName('pues').Value := qrTemporal.FieldByName('CargoCiudad').Value;
              qrCltPLan.Parameters.ParamByName('sexo').Value := qrTemporal.FieldByName('Sexo').Value;
              qrCltPLan.Parameters.ParamByName('blod').Value := sangre;
              qrCltPLan.Parameters.ParamByName('orin').Value := orina;
              qrCltPLan.Parameters.ParamByName('espu').Value := False;
              qrCltPLan.Parameters.ParamByName('thro').Value := False;
              qrCltPLan.Parameters.ParamByName('nail').Value := False;
              qrCltPLan.Parameters.ParamByName('comb').Value := qrTemporal.FieldByName('ComboId').Value;
              qrCltPLan.Parameters.ParamByName('mues').Value := CrearMuestraNo;
              qrCltPLan.Parameters.ParamByName('esta').Value := 'A';
              qrCltPLan.Parameters.ParamByName('sucu').Value := qrTemporal.FieldByName('Sucursal').Value;
              qrCltPLan.Parameters.ParamByName('paco').Value := qrPlan.FieldByName('PacienteCiaId').AsString;
              qrCltPLan.Parameters.ParamByName('toma').Value := False;
              qrCltPLan.Parameters.ParamByName('gene').Value := False;
              qrCltPLan.Parameters.ParamByName('impr').Value := False;
              qrCltPLan.Parameters.ParamByName('imp2').Value := qrPlan.FieldByName('TipoImpresion').AsString;
//              qrTemporal.FieldByName('Filler1').Value;
//              qrTemporal.FieldByName('Filler2').Value;
              qrCltPLan.ExecSQL;
            End;

           qrTemporal.Next;
          End;

        BuscarData(PlanId);
       End;
   End;
end;


procedure TfrmDatosClientesPlanes.ppDetailBand1BeforePrint(Sender: TObject);
begin
  LbNumero.Caption := '';

  If (Imprimir = 'EMPLEADO') Then
    LbNumero.Caption := qrClienteReporteEmpleadoID.Value;

  If (Imprimir = 'CEDULA') Then
    LbNumero.Caption := qrClienteReporteIdentificacion.Value;
end;

//Exportando Las Ordenes de Trabajo a un Archivo de Texto.
procedure TfrmDatosClientesPlanes.Export_Loaded_Old;
Var
  idx: Integer;
  texto: TextFile;
  seleccion : String;
begin
 If DM.Mensaje('Desea Exportar el Archivo de Toma de las Ordenes de Trabajo?',mb_yesno) = id_yes Then
   Begin
     qrTemporal := DM.NewQuery;

     qrTemporal.Close;
     qrTemporal.SQL.Text := 'SELECT * FROM PTClientesPlanes '+
                            'WHERE PlanID = :plan '+
                            'ORDER BY EmpleadoId ';
     qrTemporal.Parameters.ParamByName('plan').Value := PlanId;
     qrTemporal.Open;

//     qrTemporal := DM.find('SELECT * FROM PTClientesPlanes WHERE PlanID = :plan', PlanId);

     If (qrTemporal.RecordCount = 0) Then
       Raise exception.CreateFmt('NO Existen Clientes Cargados Dentro de Este Plan, Por Favor Verifique.', [])
     Else
       Begin
         qrTemporal.First;
         idx := qrTemporal.RecordCount;

         //Preparando la Barra de Progreso.
         Barra1.Visible := True;
         Barra1.Max := idx;
         Barra1.Position := 0;
         Barra1.Refresh;

         //Preparando Archivo de Exportacion.
         DM.Info('Preparando La Exportacion de Archivo de Texto.!!!');
         SaveDialog1.FileName := 'C:\Archivo.txt';
         If Not SaveDialog1.Execute Then abort;
         AssignFile(texto, SaveDialog1.FileName);
         ReWrite(texto);

         While Not qrTemporal.Eof do
          Begin
            seleccion := '';
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
            seleccion := Copy(DM.Rellenar(qrTemporal.FieldByName('EmpresaID').AsString,10,' ','D'), 1, 10) +
                         Copy(DM.Rellenar(qrTemporal.FieldByName('Departamento').AsString,40,' ','D'), 1, 40) +
                         '0000' + //CONTADOR
                         Copy(DM.Rellenar(qrTemporal.FieldByName('EmpleadoID').AsString,6,' ','D'), 1, 6) +
                         Copy(DM.Rellenar(qrTemporal.FieldByName('Nombre').AsString,30,' ','D'), 1, 30) +
                         Copy(DM.Rellenar(qrTemporal.FieldByName('Edad').AsString,2,' ','D'), 1, 2) +
                         Copy(DM.Rellenar(qrTemporal.FieldByName('Sexo').AsString,1,' ','D'), 1, 1) +
                         Copy(DM.Rellenar(qrTemporal.FieldByName('MuestraId').AsString,8,' ','D'), 1, 8);

                         //Campo Para Indicar Si Se Tomo La Muestra Sanguinea.
                         If ( qrTemporal.FieldByName('FechaSangre').AsString = '' ) Or
                            ( qrTemporal.FieldByName('FechaSangre').IsNull ) Then
                           seleccion := seleccion + '0'
                         Else
                           seleccion := seleccion + '1';

                         //Campo Para Indicar Si Se Tomo La Muestra de Orina.
                         If ( qrTemporal.FieldByName('FechaOrina').AsString = '' ) Or
                            ( qrTemporal.FieldByName('FechaOrina').IsNull ) Then
                           seleccion := seleccion + '0'
                         Else
                           seleccion := seleccion + '1';

                         //Campo Para Indicar Si Se Tomara Una Muestra Sanguinea.
                         If (qrTemporal.FieldByName('Sangre').Value = False Or
                             qrTemporal.FieldByName('Sangre').IsNull ) Then
                           seleccion := seleccion + '0'
                         Else
                           seleccion := seleccion + '1';

                         //Campo Para Indicar Si Se Tomara Una Muestra de Orina.
                         If (qrTemporal.FieldByName('Orina').Value = False Or
                             qrTemporal.FieldByName('Orina').IsNull ) Then
                           seleccion := seleccion + '0'
                         Else
                           seleccion := seleccion + '1';
{
// OJO - MIENTRAS TANTO PARA PODER EJECUTAR LAS PRUEBAS DEL PROCESO DE PLAN CIA.
                         '1' + //Indica Si Se Tomara Sangre.
                         '1' + //Indica Si Se Tomara Orina.
                         '1' + //SANGRE
                         '1' + //ORINA
// OJO - MIENTRAS TANTO PARA PODER EJECUTAR LAS PRUEBAS DEL PROCESO DE PLAN CIA.
}
                         seleccion := seleccion +
                         Copy(DM.Rellenar(qrTemporal.FieldByName('FechaSangre').AsString,8,' ','D'), 1, 8) +
                         Copy(DM.Rellenar(qrTemporal.FieldByName('FechaOrina').AsString,8,' ','D'), 1, 8) +
                         '0' + //ESPUTO
                         '0' + //GARGANTA
                         '0' + //UÑA

//                         Copy(DM.Rellenar(qrTemporal.FieldByName('Cargo').AsString,3,' ','D'), 1, 3) +
//                         Copy(DM.Rellenar(qrTemporal.FieldByName('Cargo').AsString,20,' ','D'), 1, 20) +

                         Copy(DM.Rellenar(qrTemporal.FieldByName('Sucursal').AsString,3,' ','D'), 1, 3) +
                         Copy(DM.Rellenar(qrTemporal.FieldByName('Sucursal').AsString,20,' ','D'), 1, 20) +

                         '  ' + //2 ESPACIOS EL BLANCO
                         Copy(DM.Rellenar(qrTemporal.FieldByName('ClienteID').AsString,6,' ','D'), 1, 6);
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

            Writeln(texto, seleccion);

            Barra1.Position := Barra1.Position + 1;
            Barra1.Refresh;

            qrTemporal.Next;
          End;

        CloseFile(texto);
        Barra1.Visible := False;
        DM.Info('Se han Procesado: (' + IntToStr(idx) + ') Empleados.');
       End;
   End;
end;


//Exportando Las Ordenes de Trabajo a un Archivo de Texto.
procedure TfrmDatosClientesPlanes.Export_Loaded_New;
Var
  idx: Integer;
  texto: TextFile;
  seleccion : String;
begin
{
 If DM.Mensaje('Desea Exportar el Archivo de Toma de las Ordenes de Trabajo?',mb_yesno) = id_yes Then
   Begin
     qrTemporal := DM.NewQuery;

     qrTemporal.Close;
     qrTemporal.SQL.Text := 'SELECT * FROM PTClientesPlanes '+
                            'WHERE PlanID = :plan '+
                            'ORDER BY EmpleadoId ';
     qrTemporal.Parameters.ParamByName('plan').Value := PlanId;
     qrTemporal.Open;

//     qrTemporal := DM.find('SELECT * FROM PTClientesPlanes WHERE PlanID = :plan', PlanId);

     If (qrTemporal.RecordCount = 0) Then
       Raise exception.CreateFmt('NO Existen Clientes Cargados Dentro de Este Plan, Por Favor Verifique.', [])
     Else
       Begin
         qrTemporal.First;
         idx := qrTemporal.RecordCount;

         //Preparando la Barra de Progreso.
         Barra1.Visible := True;
         Barra1.Max := idx;
         Barra1.Position := 0;
         Barra1.Refresh;

         //Preparando Archivo de Exportacion.
         DM.Info('Preparando La Exportacion de Archivo de Texto.!!!');
         SaveDialog1.FileName := 'C:\Archivo.txt';
         If Not SaveDialog1.Execute Then abort;
         AssignFile(texto, SaveDialog1.FileName);
         ReWrite(texto);

         While Not qrTemporal.Eof do
          Begin
            seleccion := '';
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
            seleccion := Copy(DM.Rellenar(qrTemporal.FieldByName('EmpresaID').AsString,10,' ','D'), 1, 10) +
                         Copy(DM.Rellenar(qrTemporal.FieldByName('Departamento').AsString,40,' ','D'), 1, 40) +
                         '0000' + //CONTADOR
                         Copy(DM.Rellenar(qrTemporal.FieldByName('EmpleadoID').AsString,6,' ','D'), 1, 6) +
                         Copy(DM.Rellenar(qrTemporal.FieldByName('Nombre').AsString,30,' ','D'), 1, 30) +
                         Copy(DM.Rellenar(qrTemporal.FieldByName('Edad').AsString,2,' ','D'), 1, 2) +
                         Copy(DM.Rellenar(qrTemporal.FieldByName('Sexo').AsString,1,' ','D'), 1, 1) +
                         Copy(DM.Rellenar(qrTemporal.FieldByName('MuestraId').AsString,8,' ','D'), 1, 8);

                         //Campo Para Indicar Si Se Tomara Una Muestra Sanguinea.
                         If (qrTemporal.FieldByName('Sangre').Value = False Or
                             qrTemporal.FieldByName('Sangre').IsNull ) Then
                           seleccion := seleccion + '0'
                         Else
                           seleccion := seleccion + '1';

                         //Campo Para Indicar Si Se Tomara Una Muestra de Orina.
                         If (qrTemporal.FieldByName('Orina').Value = False Or
                             qrTemporal.FieldByName('Orina').IsNull ) Then
                           seleccion := seleccion + '0'
                         Else
                           seleccion := seleccion + '1';

                         //Campo Para Indicar Si Se Tomo La Muestra Sanguinea.
                         If ( qrTemporal.FieldByName('FechaSangre').AsString = '' ) Or
                            ( qrTemporal.FieldByName('FechaSangre').IsNull ) Then
                           seleccion := seleccion + '0'
                         Else
                           seleccion := seleccion + '1';

                         //Campo Para Indicar Si Se Tomo La Muestra de Orina.
                         If ( qrTemporal.FieldByName('FechaOrina').AsString = '' ) Or
                            ( qrTemporal.FieldByName('FechaOrina').IsNull ) Then
                           seleccion := seleccion + '0'
                         Else
                           seleccion := seleccion + '1';

                         seleccion := seleccion +
                         Copy(DM.Rellenar(qrTemporal.FieldByName('FechaSangre').AsString,8,' ','D'), 1, 8) +
                         Copy(DM.Rellenar(qrTemporal.FieldByName('FechaOrina').AsString,8,' ','D'), 1, 8) +
                         '0' + //ESPUTO
                         '0' + //GARGANTA
                         '0' + //UÑA

//                         Copy(DM.Rellenar(qrTemporal.FieldByName('Cargo').AsString,3,' ','D'), 1, 3) +
//                         Copy(DM.Rellenar(qrTemporal.FieldByName('Cargo').AsString,20,' ','D'), 1, 20) +

                         Copy(DM.Rellenar(qrTemporal.FieldByName('Sucursal').AsString,3,' ','D'), 1, 3) +
                         Copy(DM.Rellenar(qrTemporal.FieldByName('Sucursal').AsString,20,' ','D'), 1, 20) +

                         '  ' + //2 ESPACIOS EL BLANCO
                         Copy(DM.Rellenar(qrTemporal.FieldByName('ClienteID').AsString,6,' ','D'), 1, 6);
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

            Writeln(texto, seleccion);

            Barra1.Position := Barra1.Position + 1;
            Barra1.Refresh;

            qrTemporal.Next;
          End;

        CloseFile(texto);
        Barra1.Visible := False;
        DM.Info('Se han Procesado: (' + IntToStr(idx) + ') Empleados.');
       End;
   End;
}
end;


//Cargando las Variables de los Campos a Actualizar.
procedure TfrmDatosClientesPlanes.Actu_Toma_Texto(valor: string);
Var
  qact : TADOQuery;
begin
 If (valor <> '') Then
   Begin
     //Cargando Los Valores de las Variables.
     _empleadoid :=  Copy(valor, 55, 6);
     _muestraNo  :=  Copy(valor, 94, 8);
{
     _sangre     :=  Copy(valor, 102, 1); //Campo Para Indicar Si Se Tomo La Muestra Sanguinea.
     _orina      :=  Copy(valor, 103, 1); //Campo Para Indicar Si Se Tomo La Muestra de Orina.
     _sangre     :=  Copy(valor, 104, 1); //Campo Para Indicar Si Se Tomo La Muestra Sanguinea.
     _orina      :=  Copy(valor, 105, 1); //Campo Para Indicar Si Se Tomo La Muestra de Orina.
}
     _sangre     :=  Copy(valor, 102, 1); //Campo Para Indicar Si Se Tomo La Muestra Sanguinea.
     _orina      :=  Copy(valor, 103, 1); //Campo Para Indicar Si Se Tomo La Muestra de Orina.
     _esputo     :=  Copy(valor, 122, 1);
     _garganta   :=  Copy(valor, 123, 1);
     _nail       :=  Copy(valor, 124, 1);

     qact := DM.NewQuery;

     If (_nail = '1') Then
       Begin
         //Actalizando el Estatus de las Tomas. (UÑA)
         qact.Close;
         qact.SQL.Clear;
         qact.SQL.Text := ' UPDATE PTClientesPlanes SET '+
                          ' Nail = :01, FechaNail = :02 '+
                          ' WHERE PlanID = :plan '+
                          ' AND MuestraId = :mues '+
                          ' AND EmpleadoId = :empl ';
         qact.Parameters.ParamByName('01').Value := True;
         qact.Parameters.ParamByName('02').Value := DM.SystemDate;
         qact.Parameters.ParamByName('plan').Value := PlanId;
         qact.Parameters.ParamByName('mues').Value := _muestraNo;
         qact.Parameters.ParamByName('empl').Value := _empleadoid;
         qact.ExecSQL;
       End;
////////////////////////////////////////////////////////////////////////////////
     If (_orina = '1') Then
       Begin
         //Actalizando el Estatus de las Tomas. (ORINA)
         qact.Close;
         qact.SQL.Clear;
         qact.SQL.Text := ' UPDATE PTClientesPlanes SET '+
                          ' Orina = :01, FechaOrina = :02 '+
                          ' WHERE PlanID = :plan '+
                          ' AND MuestraId = :mues '+
                          ' AND EmpleadoId = :empl ';
         qact.Parameters.ParamByName('01').Value := True;
         qact.Parameters.ParamByName('02').Value := DM.SystemDate;
         qact.Parameters.ParamByName('plan').Value := PlanId;
         qact.Parameters.ParamByName('mues').Value := _muestraNo;
         qact.Parameters.ParamByName('empl').Value := _empleadoid;
         qact.ExecSQL;
       End;
////////////////////////////////////////////////////////////////////////////////
     If (_esputo = '1') Then
       Begin
         //Actalizando el Estatus de las Tomas. (ESPUTO)
         qact.Close;
         qact.SQL.Clear;
         qact.SQL.Text := ' UPDATE PTClientesPlanes SET '+
                          ' Esputo = :01, FechaEsputo = :02 '+
                          ' WHERE PlanID = :plan '+
                          ' AND MuestraId = :mues '+
                          ' AND EmpleadoId = :empl ';
         qact.Parameters.ParamByName('01').Value := True;
         qact.Parameters.ParamByName('02').Value := DM.SystemDate;
         qact.Parameters.ParamByName('plan').Value := PlanId;
         qact.Parameters.ParamByName('mues').Value := _muestraNo;
         qact.Parameters.ParamByName('empl').Value := _empleadoid;
         qact.ExecSQL;
       End;
////////////////////////////////////////////////////////////////////////////////
     If (_sangre = '1') Then
       Begin
         //Actalizando el Estatus de las Tomas. (SANGRE)
         qact.Close;
         qact.SQL.Clear;
         qact.SQL.Text := ' UPDATE PTClientesPlanes SET '+
                          ' Sangre = :01, FechaSangre = :02 '+
                          ' WHERE PlanID = :plan '+
                          ' AND MuestraId = :mues '+
                          ' AND EmpleadoId = :empl ';
         qact.Parameters.ParamByName('01').Value := True;
         qact.Parameters.ParamByName('02').Value := DM.SystemDate;
         qact.Parameters.ParamByName('plan').Value := PlanId;
         qact.Parameters.ParamByName('mues').Value := _muestraNo;
         qact.Parameters.ParamByName('empl').Value := _empleadoid;
         qact.ExecSQL;
       End;
////////////////////////////////////////////////////////////////////////////////
     If (_garganta = '1') Then
       Begin
         //Actalizando el Estatus de las Tomas. (GARGANTA)
         qact.Close;
         qact.SQL.Clear;
         qact.SQL.Text := ' UPDATE PTClientesPlanes SET '+
                          ' Garganta = :01, FechaGarganta = :02 '+
                          ' WHERE PlanID = :plan '+
                          ' AND MuestraId = :mues '+
                          ' AND EmpleadoId = :empl ';
         qact.Parameters.ParamByName('01').Value := True;
         qact.Parameters.ParamByName('02').Value := DM.SystemDate;
         qact.Parameters.ParamByName('plan').Value := PlanId;
         qact.Parameters.ParamByName('mues').Value := _muestraNo;
         qact.Parameters.ParamByName('empl').Value := _empleadoid;
         qact.ExecSQL;
       End;

     FreeAndNil(qact);
   End;
End;



//Actualizando el Estatus de las Tomas Externas. (Archivo de Texto).
procedure TfrmDatosClientesPlanes.Actu_Toma_Externa;
Var
  idx: Integer;
  texto: TextFile;
  seleccion : String;
begin
 If DM.Mensaje('Desea Actualizar Los Datos de la Toma de las Muestras?',mb_yesno) = id_yes Then
   Begin
    If Not OpenDialog.Execute then
      Raise exception.CreateFmt('Se Ha Cancelado La Opcion de Abrir Archivo.', [])
    Else
     Begin
       AssignFile(texto, OpenDialog.FileName);
       FileMode := fmOpenRead;
       Reset(texto);

       //Preparando la Barra de Progreso.
       Barra1.Visible := True;
       Barra1.Max := 1000;
       Barra1.Position := 1;
       Barra1.Refresh;
       idx := 0;

       //Leyendo el Archivo de Texto.
       While Not Eof(texto) Do
        Begin
          ReadLn(texto, seleccion);

          //Cargando las Variables de los Campos a Actualizar.
          Actu_Toma_Texto(seleccion);

          idx := idx + 1;
          Barra1.Position := Barra1.Position + 1;
          Barra1.Refresh;

          Next;
        End;

       CloseFile(texto);
       Barra1.Visible := False;
       DM.Info('Se han Procesado: (' + IntToStr(idx) + ') Tomas de Muestra.');
      End;
   End;

End;



END.
