unit DatosPlanesAnuales;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DatosModule, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, Menus, cxLookAndFeelPainters, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, ABSMain, JvStringHolder, StdActns,
  ActnList, ADODB, cxGridCustomPopupMenu, cxGridPopupMenu, dxPSContainerLnk,
  dxPSdxLCLnk, dxPSCore, dxPScxCommon, dxPScxGridLnk, JvComponentBase, DBCtrls,
  JvFormPlacement, ExtCtrls, dxLayoutControl, StdCtrls, cxButtons, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView, cxImageComboBox,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, JvExControls, JvComponent,
  JvEnterTab, cxCheckBox, cxDBEdit, cxCurrencyEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox, cxContainer, cxTextEdit,
  cxGroupBox, cxRadioGroup, cxCalendar, cxintl;

type
  TfrmDatosPlanesAnuales = class(TfrmDatosModule)
    qrPlanesEmpresa: TADOQuery;
    tvDatosNombre: TcxGridDBColumn;
    tvDatosEstatus: TcxGridDBColumn;
    tvDatosPacientes: TcxGridDBColumn;
    lcDatosGroup1: TdxLayoutGroup;
    edplanid: TcxDBTextEdit;
    lcDatosItem1: TdxLayoutItem;
    EdDescripcion: TcxDBTextEdit;
    lcDatosItem2: TdxLayoutItem;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    lcDatosItem4: TdxLayoutItem;
    cxDBCheckBox2: TcxDBCheckBox;
    lcDatosItem6: TdxLayoutItem;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    lcDatosItem7: TdxLayoutItem;
    BtCombos: TcxButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    btEmpleados: TcxButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    EdAlias: TcxDBTextEdit;
    lcDatosItem11: TdxLayoutItem;
    EdFecha: TcxDBDateEdit;
    lcDatosItem13: TdxLayoutItem;
    BtClientes: TcxButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    EdEmpresa: TcxDBTextEdit;
    lcDatosItem14: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    lcDatosItem3: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    lcDatosItem8: TdxLayoutItem;
    lcDatosGroup2: TdxLayoutGroup;
    cxDBTextEdit3: TcxDBTextEdit;
    lcDatosItem9: TdxLayoutItem;
    qrPlanesEmpresaPlanId: TStringField;
    qrPlanesEmpresaClienteID: TStringField;
    qrPlanesEmpresaCodigoAxapta: TStringField;
    qrPlanesEmpresaIdentificacion: TStringField;
    qrPlanesEmpresaNombre: TStringField;
    qrPlanesEmpresaTelefono: TStringField;
    qrPlanesEmpresaTelefono2: TStringField;
    qrPlanesEmpresaFax: TStringField;
    qrPlanesEmpresaDireccion: TMemoField;
    qrPlanesEmpresaCiudadID: TStringField;
    qrPlanesEmpresaemail: TStringField;
    qrPlanesEmpresaTotalPacientes: TIntegerField;
    qrPlanesEmpresaAdicionales: TIntegerField;
    qrPlanesEmpresaEstatus: TBooleanField;
    qrPlanesEmpresaFecha: TDateTimeField;
    qrPlanesEmpresaFechaInicial: TDateTimeField;
    qrPlanesEmpresaFechaFinal: TDateTimeField;
    qrPlanesEmpresaMuestraActual: TIntegerField;
    qrPlanesEmpresaMuestraInicial: TIntegerField;
    qrPlanesEmpresaMuestraFinal: TIntegerField;
    qrPlanesEmpresaAlias: TStringField;
    cxDBTextEdit4: TcxDBTextEdit;
    lcDatosItem5: TdxLayoutItem;
    qrPlanesEmpresaPacienteCiaId: TStringField;
    cxDBTextEdit5: TcxDBTextEdit;
    lcDatosItem10: TdxLayoutItem;
    cxDBComboBox1: TcxDBComboBox;
    lcDatosItem12: TdxLayoutItem;
    qrPlanesEmpresaTipoImpresion: TStringField;
    procedure qrPlanesEmpresaAfterPost(DataSet: TDataSet);
    procedure BtClientesClick(Sender: TObject);
    procedure btEmpleadosClick(Sender: TObject);
    procedure BtCombosClick(Sender: TObject);
    procedure qrPlanesEmpresaNewRecord(DataSet: TDataSet);
    procedure qrPlanesEmpresaBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    PlanId    :   String;
    Procedure Reservar_Muestras;
    { Public declarations }
  end;

var
  frmDatosPlanesAnuales: TfrmDatosPlanesAnuales;

implementation

uses DataModule,Main;

{$R *.dfm}

procedure TfrmDatosPlanesAnuales.BtClientesClick(Sender: TObject);
begin
  inherited;
  if (qrPlanesEmpresa.State = dsInsert) or (qrPlanesEmpresa.State = dsEdit) then
    Begin
      frmMain.LanzaVentana(-8012);
    end
  else
    Raise exception.CreateFmt('El Mantenimiento NO Esta En Edicion.', []);
end;

procedure TfrmDatosPlanesAnuales.BtCombosClick(Sender: TObject);
begin
  inherited;
  If (qrPlanesEmpresa.State = dsInsert) or (qrPlanesEmpresa.State = dsEdit) then
    Raise exception.CreateFmt('Debe Grabar Antes de Agregar Los Grupos Pruebas de Este Chequeo Anual', [])
  Else
    frmMain.LanzaConsulta(-8013, qrPlanesEmpresaPlanId.Value);
end;

procedure TfrmDatosPlanesAnuales.btEmpleadosClick(Sender: TObject);
begin
  inherited;
  If (qrPlanesEmpresa.State = dsInsert) or (qrPlanesEmpresa.State = dsEdit) then
    Raise exception.CreateFmt('Debe Grabar Antes de Agregar los Pacientes de Este Chequeo Anual', [])
  Else
    frmMain.LanzaConsulta(-8015, qrPlanesEmpresaPlanId.Value)
end;

procedure TfrmDatosPlanesAnuales.FormCreate(Sender: TObject);
begin
  inherited;
  DM.qrParametro.close;
  DM.qrParametro.open;

  edplanid.Properties.ReadOnly := DM.qrParametroAutoNumerarPlanes.Value;
end;


procedure TfrmDatosPlanesAnuales.qrPlanesEmpresaBeforePost(DataSet: TDataSet);
begin
  inherited;
  If (qrPlanesEmpresa.State = dsInsert) Or
     (qrPlanesEmpresa.State = dsEdit) Then
    Begin
      If (qrPlanesEmpresaTotalPacientes.IsNull) Or
         (qrPlanesEmpresaTotalPacientes.Value = 0) Or
         (qrPlanesEmpresaAdicionales.IsNull) Or
         (qrPlanesEmpresaAdicionales.Value = 0) Then
        Raise exception.CreateFmt('Debe Registrar la Cantidad de CHEQUEOS y ADICIONALES', []);

      If (qrPlanesEmpresaPlanId.IsNull) Or
         (qrPlanesEmpresaPlanId.Value = '')Then
        AutoKeyField := 'PlanId';

      AutoKeyField := 'TipoImpresion';
    End;

  DM.qrParametro.close;
  DM.qrParametro.open;

  if (qrPlanesEmpresa.State = dsInsert) and (DM.qrParametroAutoNumerarPruebas.Value) then
  begin
   qrPlanesEmpresaPlanId.Value := formatfloat('00',strtofloat(DM.CurSucursal)) + '-' +
                                  formatfloat('000000',DM.qrParametroSecuenciaPlanes.asfloat);

   PlanId := qrPlanesEmpresaPlanId.Value;

   DM.qrParametro.edit;
   DM.qrParametroSecuenciaPlanes.Value := DM.qrParametroSecuenciaPlanes.Value + 1;
   DM.qrParametro.Post;
  end;
end;


procedure TfrmDatosPlanesAnuales.qrPlanesEmpresaAfterPost(DataSet: TDataSet);
begin
  inherited;
   //Reservando los Numeros de Muestra.
   Reservar_Muestras;
end;

//Reservarndo los Numeros de Muestra.
procedure TfrmDatosPlanesAnuales.Reservar_Muestras;
Var                              
 docto  : String;
 Ini    : Integer;
 Fin    : Integer;
 qSecu  : TADOQuery;
 qrPlan : TAdoQuery;
begin
 //Cargando Los Datos del Plan Actual.
 qrPlan := DM.find('SELECT * FROM PTPlanesEmpresa WHERE PlanID = :plan', PlanId);

 qSecu  := DM.NewQuery;

 //Buscando la Secuencia Actual de las Muestras.
 qSecu.close;
 qSecu.SQL.Text := 'SELECT * FROM PTSecuenciaDoc WHERE TipoDoc = '+ #39 + 'MT' + #39;
 qSecu.Open;

  //Guardando las Secuencias a Reservar.
  Ini := qSecu.FieldByName('Secuencia').AsInteger;
  Fin := qSecu.FieldByName('Secuencia').AsInteger +
         qrPlan.FieldByName('TotalPacientes').AsInteger +
         qrPlan.FieldByName('Adicionales').AsInteger;

 //Actualizando la Secuencia Final de las Muestras.
 qSecu.close;
 qSecu.SQL.Clear;
 qSecu.SQL.Text := ' UPDATE PTSecuenciaDoc '+
                   ' SET Secuencia = :sec '+
                   ' WHERE TipoDoc = '+ #39 + 'MT' + #39;
 qSecu.Parameters.ParamByName('sec').Value := Fin + 1;
 qSecu.ExecSQL;

  //Actualizando las Secuencias a Reservar.
 qSecu.close;
 qSecu.SQL.Clear;
 qSecu.SQL.Text := ' UPDATE PTPlanesEmpresa SET '+
                   ' MuestraActual = :actu, '+
                   ' MuestraInicial = :inic, '+
                   ' MuestraFinal = :fina '+
                   ' WHERE PlanID = :plan ';
 qSecu.Parameters.ParamByName('actu').Value := Ini;
 qSecu.Parameters.ParamByName('inic').Value := Ini;
 qSecu.Parameters.ParamByName('fina').Value := Fin;
 qSecu.Parameters.ParamByName('plan').Value := PlanId;
 qSecu.ExecSQL;

 FreeAndNil(qSecu);
 FreeAndNil(qrPlan);
end;

procedure TfrmDatosPlanesAnuales.qrPlanesEmpresaNewRecord(DataSet: TDataSet);
begin
  inherited;
  qrPlanesEmpresaFecha.Value := DM.SystemDate;
  qrPlanesEmpresaAdicionales.Value := 0;
  qrPlanesEmpresaTotalPacientes.Value := 0;
  qrPlanesEmpresaEstatus.Value := True;

  qrPlanesEmpresaClienteID.Value := '';
  qrPlanesEmpresaCodigoAxapta.Value := '';
  qrPlanesEmpresaIdentificacion.Value := '';
  qrPlanesEmpresaNombre.Value := '';
  qrPlanesEmpresaTelefono.Value := '';
  qrPlanesEmpresaTelefono2.Value := '';
  qrPlanesEmpresaFax.Value := '';
  qrPlanesEmpresaDireccion.Value := '';
  qrPlanesEmpresaCiudadID.Value := '';
  qrPlanesEmpresaAlias.Value := '';  
  qrPlanesEmpresaemail.Value := '';
  qrPlanesEmpresaTipoImpresion.Value := '';
end;

end.
