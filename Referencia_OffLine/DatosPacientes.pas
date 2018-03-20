unit DatosPacientes;

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
  JvEnterTab, cxMemo, cxDBEdit, cxDropDownEdit, cxCalendar, cxImageComboBox,
  cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox, cxContainer,
  cxTextEdit, cxCheckBox, cxintl;

type
  TfrmDatosPacientes = class(TfrmDatosModule)
    qrPacientes: TADOQuery;
    qrPacientesPacienteID: TStringField;
    qrPacientesPacientePrincipalID: TStringField;
    qrPacientesTipoIdentificacion: TIntegerField;
    qrPacientesIdentificacion: TStringField;
    qrPacientesNombre: TStringField;
    qrPacientesDireccion: TMemoField;
    qrPacientesTelefono: TStringField;
    qrPacientesTelefono2: TStringField;
    qrPacientesFax: TStringField;
    qrPacienteseMail: TStringField;
    qrPacientesPreferenciaResultado: TIntegerField;
    qrPacientesSeguroID: TStringField;
    qrPacientesPolizaSeguro: TStringField;
    qrPacientesFechaNacimiento: TDateTimeField;
    qrPacientesSexo: TIntegerField;
    qrPacientesCodigoAxapta: TStringField;
    tvDatosPacienteID: TcxGridDBColumn;
    tvDatosIdentificacion: TcxGridDBColumn;
    tvDatosNombre: TcxGridDBColumn;
    tvDatosTelefono: TcxGridDBColumn;
    tvDatosSeguroID: TcxGridDBColumn;
    tvDatosCodigoAxapta: TcxGridDBColumn;
    lcDatosGroup1: TdxLayoutGroup;
    lcDatosGroup2: TdxLayoutGroup;
    edpaciente: TcxDBTextEdit;
    lcDatosItem1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    lcDatosItem2: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    lcDatosItem3: TdxLayoutItem;
    cxDBExtLookupComboBox1: TcxDBExtLookupComboBox;
    lcDatosItem4: TdxLayoutItem;
    cxDBImageComboBox1: TcxDBImageComboBox;
    lcDatosItem5: TdxLayoutItem;
    cxDBImageComboBox2: TcxDBImageComboBox;
    lcDatosItem6: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    lcDatosItem7: TdxLayoutItem;
    cxDBMemo1: TcxDBMemo;
    lcDatosItem8: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    lcDatosItem9: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    lcDatosItem10: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    lcDatosItem11: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    lcDatosItem12: TdxLayoutItem;
    lcDatosGroup3: TdxLayoutGroup;
    cxDBExtLookupComboBox2: TcxDBExtLookupComboBox;
    lcDatosItem13: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    lcDatosItem14: TdxLayoutItem;
    cxDBExtLookupComboBox3: TcxDBExtLookupComboBox;
    lcDatosItem15: TdxLayoutItem;
    qrPacientesCiudadId: TStringField;
    cxDBCheckBox1: TcxDBCheckBox;
    lcDatosItem16: TdxLayoutItem;
    qrPacientesPublicarInternet: TBooleanField;
    procedure qrPacientesNewRecord(DataSet: TDataSet);
    procedure qrPacientesBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDatosPacientes: TfrmDatosPacientes;

implementation
uses DataModule;
{$R *.dfm}

procedure TfrmDatosPacientes.FormCreate(Sender: TObject);
begin
  inherited;
  DM.qrPacientes.Close;
  DM.qrPacientes.Open;

  DM.qrClientes.Close;
  DM.qrClientes.Open;

  DM.qrParametro.close;
  DM.qrParametro.open;

  DM.qrCiudad.close;
  DM.qrCiudad.open;

  edpaciente.Properties.ReadOnly := DM.qrParametroAutoNumerarPacientes.Value;
end;

procedure TfrmDatosPacientes.qrPacientesBeforePost(DataSet: TDataSet);
begin
  inherited;
  If (qrPacientes.State = dsInsert) Or
     (qrPacientes.State = dsEdit) Then
    If (qrPacientesPacienteID.IsNull) Or
       (qrPacientesPacienteID.Value = '')Then
      AutoKeyField := 'PacienteID';

  DM.qrParametro.close;
  DM.qrParametro.open;

  if (qrPacientes.State = dsInsert) and (DM.qrParametroAutoNumerarPacientes.Value) then
  begin
   qrPacientesPacienteID.Value := formatfloat('00',strtofloat(DM.CurSucursal)) + '-' +'C'+
                                 formatfloat('0000000',DM.qrParametroSecuenciaPaciente.asfloat);
   DM.qrParametro.edit;
   DM.qrParametroSecuenciaPaciente.Value := DM.qrParametroSecuenciaPaciente.Value + 1;
   DM.qrParametro.Post;
  end;
end;

procedure TfrmDatosPacientes.qrPacientesNewRecord(DataSet: TDataSet);
begin
  inherited;
  qrPacientesPreferenciaResultado.value := 0;
  qrPacientesSexo.Value := 0;
  qrPacientesPublicarInternet.Value := false;
end;

end.
