unit DialogConsultaClientesPlanes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DialogConsulta, cxGraphics, Menus, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, ADODB,
  dxLayoutControl, cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,
  StdCtrls, cxButtons, cxTextEdit, cxContainer, cxMaskEdit, cxDropDownEdit,
  DialogCobro, cxintl;

type
  TfrmDialogConsultaClientesPlanes = class(TfrmDialogConsulta)
    qrClientes: TADOQuery;
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
    qrClientesComboId: TStringField;
    qrClientesMuestraId: TStringField;
    qrClientesEstatus: TStringField;
    qrClientesCargo: TStringField;
    qrClientesSexo: TStringField;
    qrClientesEdad: TIntegerField;
    qrClientesSucursal: TStringField;
    qrClientesPacienteCiaId: TStringField;
    qrClientesTomado: TBooleanField;
    qrClientesImpreso: TBooleanField;
    qrClientesGenerado: TBooleanField;
    qrClientesTipoImpresion: TStringField;
    qrClientesSangre: TBooleanField;
    qrClientesOrina: TBooleanField;
    qrClientesEsputo: TBooleanField;
    qrClientesGarganta: TBooleanField;
    qrClientesNail: TBooleanField;
    qrClientesFechaNail: TDateTimeField;
    qrClientesFechaSangre: TDateTimeField;
    qrClientesFechaOrina: TDateTimeField;
    qrClientesFechaEsputo: TDateTimeField;
    qrClientesFechaGarganta: TDateTimeField;
    dbDatosPlanId: TcxGridDBColumn;
    dbDatosEmpresaID: TcxGridDBColumn;
    dbDatosEmpleadoID: TcxGridDBColumn;
    dbDatosNombre: TcxGridDBColumn;
    dbDatosDepartamento: TcxGridDBColumn;
    dbDatosComboId: TcxGridDBColumn;
    dbDatosMuestraId: TcxGridDBColumn;
    dbDatosSexo: TcxGridDBColumn;
    dbDatosEdad: TcxGridDBColumn;
    dbDatosSucursal: TcxGridDBColumn;
    dbDatosFechaSangre: TcxGridDBColumn;
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
  frmDialogConsultaClientesPlanes: TfrmDialogConsultaClientesPlanes;
  adentrogrid : Boolean;

implementation

uses DataModule,PuntoVenta,Main;

{$R *.dfm}

procedure TfrmDialogConsultaClientesPlanes.Run;
Var
 qfind : TADOQuery;
begin
  showmodal;
  if ModalResult = mrOk then
    Begin
     FrmMain.frmPlanCliente.qrClientes.Locate('MuestraId', qrClientes.FieldByName('MuestraId').AsString, []);
     FrmMain.frmPlanCliente.qrClientes.Refresh;
   end;
end;


procedure TfrmDialogConsultaClientesPlanes.BuscarData;
var
 sqlString : String;
begin
 qrClientes.Close;
 qrClientes.Open;

 sqlString := ' SELECT * FROM PTClientesPlanes WHERE PlanId = ' + #39 + FrmMain.frmPlanCliente.PlanId + #39;

 If edbuscar.Text <> '' then
  Begin
    Case edbuscarpor.ItemIndex of
     0 : sqlString := sqlString + ' AND EmpleadoID LIKE ' + #39 + '%' + edbuscar.Text + '%' + #39;
     1 : sqlString := sqlString + ' AND Nombre LIKE ' + #39 + '%' + edbuscar.Text + '%' + #39;
     2 : sqlString := sqlString + ' AND Departamento LIKE ' + #39 + '%' + edbuscar.Text + '%' + #39;
     3 : sqlString := sqlString + ' AND ComboId LIKE ' + #39 + '%' + edbuscar.Text + '%' + #39;
     4 : sqlString := sqlString + ' AND MuestraId LIKE ' + #39 + '%' + edbuscar.Text + '%' + #39;
     5 : sqlString := sqlString + ' AND Sucursal LIKE ' + #39 + '%' + edbuscar.Text + '%' + #39;
     6 : sqlString := sqlString + ' AND FechaSangre LIKE ' + #39 + '%' + edbuscar.Text + '%' + #39;
    End;
  End;

// sqlString := sqlString + ' ORDER BY Sucursal, MuestraId ';
 sqlString := sqlString + ' ORDER BY MuestraId ';

 qrClientes.Close;
 qrClientes.SQL.Text := sqlString;
 qrClientes.Open;
end;


procedure TfrmDialogConsultaClientesPlanes.cgDatosEnter(Sender: TObject);
begin
  inherited;
  adentrogrid := true;
end;


procedure TfrmDialogConsultaClientesPlanes.cgDatosExit(Sender: TObject);
begin
  inherited;
  adentrogrid := false;
end;


procedure TfrmDialogConsultaClientesPlanes.edbuscarPropertiesChange(Sender: TObject);
begin
  inherited;
  BuscarData;
end;


procedure TfrmDialogConsultaClientesPlanes.FormCreate(Sender: TObject);
begin
  inherited;
  BuscarData;
end;


procedure TfrmDialogConsultaClientesPlanes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = Vk_Down) and (not AdentroGrid) then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);

  if (key = 13) and (not AdentroGrid) then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);

  if (key = 13) and (AdentroGrid) then
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
end;


procedure TfrmDialogConsultaClientesPlanes.FormShow(Sender: TObject);
begin
  inherited;
  edbuscar.SetFocus;
end;


end.
