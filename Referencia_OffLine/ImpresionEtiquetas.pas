unit ImpresionEtiquetas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, dxLayoutControl, StdCtrls, cxButtons,
  cxCurrencyEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxContainer, cxEdit, cxGroupBox, cxRadioGroup, cxControls,ADODB,pptypes;

type
  TfrmImpresionEtiquetas = class(TForm)
    dxLayoutControl3: TdxLayoutControl;
    btaceptarcuadre: TcxButton;
    btcancelarcuadre: TcxButton;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutControl3Group14: TdxLayoutGroup;
    GrupoParametros: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    GroupSaldo: TdxLayoutGroup;
    botonescuadre: TdxLayoutGroup;
    dxLayoutControl3Item31: TdxLayoutItem;
    dxLayoutControl3Item10: TdxLayoutItem;
    Label2: TLabel;
    GrupoEmpleados: TdxLayoutGroup;
    EdEmplFin: TcxTextEdit;
    dxLayoutControl3Item35: TdxLayoutItem;
    GroupEmpresas: TdxLayoutGroup;
    CiaIni: TcxTextEdit;
    dxLayoutControl3Item36: TdxLayoutItem;
    CiaFin: TcxTextEdit;
    dxLayoutControl3Item38: TdxLayoutItem;
    EmplIni: TcxTextEdit;
    dxLayoutControl3Item34: TdxLayoutItem;
    GrupoDepartamento: TdxLayoutGroup;
    DeptoIni: TcxTextEdit;
    dxLayoutControl3Item37: TdxLayoutItem;
    DeptoFin: TcxTextEdit;
    dxLayoutControl3Item39: TdxLayoutItem;
    GrupoLaboratorio: TdxLayoutGroup;
    LabIni: TcxTextEdit;
    dxLayoutControl3Item40: TdxLayoutItem;
    LabFin: TcxTextEdit;
    dxLayoutControl3Item41: TdxLayoutItem;
    GrupoSucursales: TdxLayoutGroup;
    GrupoCargos: TdxLayoutGroup;
    SucIni: TcxTextEdit;
    dxLayoutControl3Item42: TdxLayoutItem;
    SucFin: TcxTextEdit;
    dxLayoutControl3Item43: TdxLayoutItem;
    PosIni: TcxTextEdit;
    dxLayoutControl3Item44: TdxLayoutItem;
    PosFin: TcxTextEdit;
    dxLayoutControl3Item45: TdxLayoutItem;
    GrupoToma: TdxLayoutGroup;
    FechaIni: TcxDateEdit;
    dxLayoutControl3Item2: TdxLayoutItem;
    FechaFin: TcxDateEdit;
    dxLayoutControl3Item33: TdxLayoutItem;
    RgMuestra: TcxRadioGroup;
    RgImpresion: TcxRadioGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutControl3Group2: TdxLayoutGroup;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Run;
  end;

var
  frmImpresionEtiquetas: TfrmImpresionEtiquetas;
  Seleccion : string;

implementation

uses ActionsDM, DataModule, DatosClientesPlanes, Main;

{$R *.dfm}

procedure TfrmImpresionEtiquetas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = Vk_Down) then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);
  if (key = 13) then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);
  if (key = Vk_Up)  then
     PostMessage(Handle, Wm_NextDlgCtl, 1, 0);
  if (key = 27) then
  begin
   Close;
  end;
end;

procedure TfrmImpresionEtiquetas.Run;
begin
 showmodal;
 if ModalResult = mrOk then
 begin
  if MessageDlg('Desea Imprimir el Reporte de Etiquetas?', mtWarning, [mbYes,mbNo], 0) = mrYes then
  begin
    Seleccion := ' SELECT * FROM PTClientesPlanes WHERE PlanId = '+#39+ FrmMain.frmPlanCliente.PlanId +#39;

    If (EmplIni.Text <> '') And (EdEmplFin.Text <> '') Then
      Seleccion := Seleccion + ' AND EmpleadoID BETWEEN '+#39+ EmplIni.Text +#39+ ' AND '+#39+ EdEmplFin.Text +#39;

    If (CiaIni.Text <> '') And (CiaFin.Text <> '') Then
      Seleccion := Seleccion + ' AND EmpresaID BETWEEN '+#39+ CiaIni.Text +#39+ ' AND '+#39+ CiaFin.Text +#39;

    If (DeptoIni.Text <> '') And (DeptoFin.Text <> '') Then
      Seleccion := Seleccion + ' AND Departamento BETWEEN '+#39+ DeptoIni.Text +#39+ ' AND '+#39+ DeptoFin.Text +#39;

    If (LabIni.Text <> '') And (LabFin.Text <> '') Then
      Seleccion := Seleccion + ' AND MuestraId BETWEEN '+#39+ LabIni.Text +#39+ ' AND '+#39+ LabFin.Text +#39;

    If (SucIni.Text <> '') And (SucFin.Text <> '') Then
      Seleccion := Seleccion + ' AND Sucursal BETWEEN '+#39+ SucIni.Text +#39+ ' AND '+#39+ SucFin.Text +#39;

    If (PosIni.Text <> '') And (PosFin.Text <> '') Then
      Seleccion := Seleccion + ' AND Cargo BETWEEN '+#39+ PosIni.Text +#39+ ' AND '+#39+ PosFin.Text +#39;

    If (FechaIni.Text <> '') And (FechaFin.Text <> '') Then
      Seleccion := Seleccion + ' AND FechaSangre BETWEEN '+#39+ FechaIni.Text +#39+ ' AND '+#39+ FechaFin.Text +#39;

    If (RgMuestra.ItemIndex = 0) Then
      Seleccion := Seleccion + ' AND Tomado = 0 ';
    If (RgMuestra.ItemIndex = 1) Then
      Seleccion := Seleccion + ' AND Tomado = 1 ';

    If (RgImpresion.ItemIndex = 0) Then
      Seleccion := Seleccion + ' AND Impreso = 0 ';
    If (RgImpresion.ItemIndex = 1) Then
      Seleccion := Seleccion + ' AND Impreso = 1 ';

   FrmMain.frmPlanCliente.qrClienteReporte.Close;
   FrmMain.frmPlanCliente.qrClienteReporte.SQL.Text := Seleccion + ' ORDER BY MuestraId ';
   FrmMain.frmPlanCliente.qrClienteReporte.Open;

   If (FrmMain.frmPlanCliente.qrClienteReporte.RecordCount > 0) Then
     Begin
       FrmMain.frmPlanCliente.ppClientesPlanesReport.DeviceType := dtScreen;
       FrmMain.frmPlanCliente.ppClientesPlanesReport.Print;
     End
   Else
    Raise exception.CreateFmt('No Existes Registros Con Estas Caracteristicas.', []);

  end;
 end;
end;



end.
