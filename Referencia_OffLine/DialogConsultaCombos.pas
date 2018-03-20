unit DialogConsultaCombos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DialogConsulta, cxGraphics, Menus, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, ADODB,
  dxLayoutControl, cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,
  StdCtrls, cxButtons, cxTextEdit, cxContainer, cxMaskEdit, cxDropDownEdit,
  cxintl;

type
  TfrmDialogConsultaCombos = class(TfrmDialogConsulta)
    dbDatosPruebaID: TcxGridDBColumn;
    dbDatosDescripcion: TcxGridDBColumn;
    dbDatosPrecio: TcxGridDBColumn;
    dbDatosPrecioDolares: TcxGridDBColumn;
    qrPruebas: TADOQuery;
    qrPruebasPRUEBAID: TStringField;
    qrPruebasALIAS: TStringField;
    qrPruebasDESCRIPCION: TStringField;
    qrPruebasESTATUS: TIntegerField;
    qrPruebasGRUPOPRUEBAID: TStringField;
    qrPruebasDEPARTAMENTO: TStringField;
    qrPruebasPRECIO: TBCDField;
    qrPruebasPERMITECAMBIOPRECIO: TIntegerField;
    qrPruebasCODIGOAXAPTA: TStringField;
    qrPruebasPRECIODOLARES: TBCDField;
    qrPruebasCOSTO: TBCDField;
    qrPruebasEXTERIOR: TIntegerField;
    qrPruebasFACTURARCABECERA: TIntegerField;
    qrPruebasPRUEBAS: TIntegerField;
    qrPruebasTIPO: TStringField;
    qrPruebasORINA: TIntegerField;
    qrPruebasSANGRE: TIntegerField;
    qrPruebasCONDPACIENTE: TStringField;
    qrPruebasCONDMUESTRA: TStringField;
    qrPruebasCODDIAPROC: TStringField;
    qrPruebasDIASRESULTADO: TIntegerField;
    qrPruebasUNIDAD: TStringField;
    qrPruebasABREVIACION: TStringField;
    qrPruebasMEDIO: TIntegerField;
    qrPruebasCOLOR: TIntegerField;
    qrPruebasDEPID: TStringField;
    qrPruebasTIPOAS400: TStringField;
    qrPruebasCODIGOIDAS400: TStringField;
    qrPruebasMEDIOAS400: TStringField;
    qrPruebasNOPROCESAR: TIntegerField;
    qrPruebasCOMENTARIONOPROCESAR: TStringField;
    qrPruebasDATAAREAID: TStringField;
    qrPruebasTIPOMUESTRA: TStringField;
    qrPruebasPlanId: TStringField;
    qrPruebasCodigoId: TStringField;
    qrPruebasPruebaID_1: TStringField;
    qrPruebasClienteID: TStringField;
    qrPruebasDescripcion_1: TStringField;
    qrPruebasNombreCliente: TStringField;
    qrPruebasEstatus_1: TBooleanField;
    qrPruebasLinea: TIntegerField;
    qrPruebasRECID: TLargeintField;
    procedure cgDatosExit(Sender: TObject);
    procedure cgDatosEnter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure edbuscarPropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BuscarData;
    function  Buscar_Linea: Integer;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Run;
  end;

var
  frmDialogConsultaCombos: TfrmDialogConsultaCombos;
  adentrogrid : Boolean;

implementation

uses DataModule, Main;

{$R *.dfm}

procedure TfrmDialogConsultaCombos.Run;
Var
 qfind : TADOQuery;
begin
 showmodal;
 if ModalResult = mrOk then
  begin
   If (qrPruebasTipo.Value <> 'C') Then
    Raise exception.CreateFmt('Esta Prueba NO Es Un Grupo de Pruebas (Combo).', [])
   Else
    Begin
     frmMain.frmPlanCombo.qrPlanesCombosPruebaID.Value := qrPruebasPruebaID.Value;
     frmMain.frmPlanCombo.qrPlanesCombosDescripcion.Value := qrPruebasDescripcion.Value;
     frmMain.frmPlanCombo.qrPlanesCombosLinea.Value := Buscar_Linea();
    End;
  end;
end;

procedure TfrmDialogConsultaCombos.cgDatosEnter(Sender: TObject);
begin
  inherited;
  adentrogrid := true;
end;

procedure TfrmDialogConsultaCombos.cgDatosExit(Sender: TObject);
begin
  inherited;
  adentrogrid := false;
end;

procedure TfrmDialogConsultaCombos.edbuscarPropertiesChange(Sender: TObject);
begin
  inherited;
  BuscarData;
end;

procedure TfrmDialogConsultaCombos.FormCreate(Sender: TObject);
begin
  inherited;
  qrPruebas.Close;
  qrPruebas.Open;

  edbuscarpor.ItemIndex := 1;
  BuscarData;
end;

procedure TfrmDialogConsultaCombos.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmDialogConsultaCombos.FormShow(Sender: TObject);
begin
  inherited;
  edbuscar.SetFocus;
end;


procedure TfrmDialogConsultaCombos.BuscarData;
var
 sqlString : String;
begin
 sqlString := 'SELECT * FROM PTPrueba WHERE Tipo LIKE ' + #39 + '%C%' + #39;

 if edbuscar.Text <> '' then begin
   case edbuscarpor.ItemIndex of
     0 : sqlString := sqlString + ' AND PruebaID LIKE '+#39+'%'+edbuscar.Text+'%'+#39;
     1 : sqlString := sqlString + ' AND Descripcion LIKE '+#39+'%'+edbuscar.Text+'%'+#39;
   end;
 end;

 qrPruebas.Close;
 qrPruebas.SQL.Text := sqlString;
 qrPruebas.Open;
end;


function TfrmDialogConsultaCombos.Buscar_Linea: Integer;
Var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;

 qfind.Close;
 qfind.SQL.Text := 'SELECT MAX(linea) FROM PTPlanesCombos ';
 qfind.Open;

 result := qfind.Fields[0].AsInteger + 1;

 FreeAndNil(qfind);
end;

end.
