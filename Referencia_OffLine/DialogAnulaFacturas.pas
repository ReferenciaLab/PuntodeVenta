unit DialogAnulaFacturas;

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
  TfrmDialogAnulaFacturas = class(TfrmDialogConsulta)
    dbDatosTotalPagado: TcxGridDBColumn;
    dbDatosTotalPendiente: TcxGridDBColumn;
    dbDatosEntradaID: TcxGridDBColumn;
    dbDatosFecha: TcxGridDBColumn;
    dbDatosPacienteID: TcxGridDBColumn;
    dbDatosClienteID: TcxGridDBColumn;
    dbDatosNeto: TcxGridDBColumn;
    dbDatosNombrePaciente: TcxGridDBColumn;
    dbDatosClienteNombre: TcxGridDBColumn;
    dbDatosMonedaID: TcxGridDBColumn;
    dbDatosTelefonos: TcxGridDBColumn;
    dbDatosHold: TcxGridDBColumn;
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
  frmDialogAnulaFacturas: TfrmDialogAnulaFacturas;
  adentrogrid : Boolean;

implementation

uses DataModule,PuntoVenta,Main;

{$R *.dfm}

procedure TfrmDialogAnulaFacturas.Run;
Var
 qfind : TADOQuery;
begin
 showmodal;
 if ModalResult = mrOk then
 begin
  If (frmMain.Exis_Vta = True) then
    Begin
      frmMain.frmTmp._recorId := DM.qrEntradaPacienteConsRecid.Value;
      frmMain.frmTmp.check_balance := False;
      frmMain.frmTmp.BuscarDatos;
      frmMain.frmTmp.RefrescarInterface;
    end;

  If (frmMain.Exis_Cap = True) then
    Begin
      frmMain.frmCap._recorId := DM.qrEntradaPacienteConsRecid.Value;
      frmMain.frmCap.BuscarDatos;
      frmMain.frmCap.RefrescarInterface;
    end;

  If (frmMain.Exis_Lab = True) then
    Begin
      frmMain.frmLab._recorId := DM.qrEntradaPacienteConsRecid.Value;
      frmMain.frmLab.BuscarDatos;
      frmMain.frmLab.RefrescarInterface;
    end;

  If (frmMain.Exis_Adm = True) then
    Begin
      frmMain.frmAdmin._recorId := DM.qrEntradaPacienteConsRecid.Value;
      frmMain.frmAdmin.BuscarDatos;
      frmMain.frmAdmin.RefrescarInterface;
    end;

  If (frmMain.Exis_Muestra = True) then
    Begin
      frmMain.frmTmpMuestra.recid := DM.qrEntradaPacienteConsRecid.Value;
      frmMain.frmTmpMuestra.BuscarDatos;
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


procedure TfrmDialogAnulaFacturas.BuscarData;
var
 sqlString : String;
begin
 DM.qrParametro.close;
 DM.qrParametro.open;
                                                                
 sqlString := 'SELECT * FROM PTEntradaPaciente WHERE RecId IS NOT NULL ';

 If (frmMain.Exis_Cap = True) then
   sqlString := sqlString + ' AND EntradaID LIKE '+ #39 + '%CAP%' + #39;
// Else
//   sqlString := sqlString + ' AND EntradaID NOT LIKE '+ #39 + '%CAP%' + #39;

 If (frmMain.Exis_Lab = True) then
   sqlString := sqlString + ' AND Origen LIKE '+ #39 + '%' + DM.qrParametroGrupoLab.Value + '%' + #39;

 If (frmMain.Exis_Muestra = True) then
   sqlString := sqlString + ' AND Hold NOT LIKE '+ #39 + '%1%' + #39;
{
 if edbuscar.Text <> '' then begin
   case edbuscarpor.ItemIndex of
     0 : sqlString := sqlString + ' where EntradaID like '+#39+'%'+edbuscar.Text+'%'+#39;
     1 : sqlString := sqlString + ' where PacienteID like '+#39+'%'+edbuscar.Text+'%'+#39;
     2 : sqlString := sqlString + ' where NombrePaciente like '+#39+'%'+'%'+edbuscar.Text+'%'+#39;
     3 : sqlString := sqlString + ' where ClienteID like '+#39+'%'+edbuscar.Text+'%'+#39;
     4 : sqlString := sqlString + ' where ClienteNombre like '+#39+'%'+edbuscar.Text+'%'+#39;
     5 : sqlString := sqlString + ' where Telefonos like '+#39+'%'+edbuscar.Text+'%'+#39;
   end;
}
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

 DM.qrEntradaPacienteCons.Close;
 DM.qrEntradaPacienteCons.SQL.Text := sqlString + ' Order by fecha desc, horaentrada desc, EntradaID';
 DM.qrEntradaPacienteCons.Open;
end;


procedure TfrmDialogAnulaFacturas.cgDatosEnter(Sender: TObject);
begin
  inherited;
  adentrogrid := true;
end;


procedure TfrmDialogAnulaFacturas.cgDatosExit(Sender: TObject);
begin
  inherited;
  adentrogrid := false;
end;


procedure TfrmDialogAnulaFacturas.edbuscarPropertiesChange(Sender: TObject);
begin
  inherited;
  BuscarData;
end;


procedure TfrmDialogAnulaFacturas.FormCreate(Sender: TObject);
var
 sqlString : String;
begin
  inherited;
 sqlString := 'SELECT * FROM PTEntradaPaciente WHERE RecId IS NOT NULL ';

 If (frmMain.Exis_Cap = True) then
   sqlString := sqlString + ' AND EntradaID LIKE '+ #39 + '%CAP%' + #39;
// Else
//   sqlString := sqlString + ' AND EntradaID NOT LIKE '+ #39 + '%CAP%' + #39;

 If (frmMain.Exis_Lab = True) then
   sqlString := sqlString + ' AND Origen LIKE '+ #39 + '%' + DM.qrParametroGrupoLab.Value + '%' + #39;

 If (frmMain.Exis_Muestra = True) then
   sqlString := sqlString + ' AND Hold NOT LIKE '+ #39 + '%1%' + #39;
//   sqlString := sqlString + ' AND Hold <> 1';

   sqlString := sqlString + ' ORDER BY fecha DESC, horaentrada DESC, EntradaID DESC';

  DM.qrEntradaPacienteCons.Close;
//  DM.qrEntradaPacienteCons.SQL.Text := 'SELECT * FROM PTEntradaPaciente ORDER BY fecha DESC, horaentrada DESC, EntradaID DESC';
  DM.qrEntradaPacienteCons.SQL.Text := sqlString;
  DM.qrEntradaPacienteCons.Open;

//  edbuscarpor.ItemIndex := 5;

  If (frmMain.Exis_Vta = True) then
    edbuscarpor.ItemIndex := 5
  Else
    edbuscarpor.ItemIndex := 2;
end;


procedure TfrmDialogAnulaFacturas.FormKeyDown(Sender: TObject; var Key: Word;
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


procedure TfrmDialogAnulaFacturas.FormShow(Sender: TObject);
begin
  inherited;
  edbuscar.SetFocus;
end;


end.
