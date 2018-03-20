unit RepParamModule;

interface                                   

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomModule, JvComponent, JvFormPlacement, dxBar,
  dxLayoutControl, cxControls, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxCalendar, DB, cxCheckBox, JvStringHolder,
  cxImageComboBox, ADODB, Menus, StdActns, ActnList, JvExControls,
  JvEnterTab, JvSpeedButton, StdCtrls, RzLabel, RzBckgnd, ExtCtrls, PymeConst,
  JvComponentBase, cxGraphics;

type
  TfrmRepParamModule = class(TfrmCustomModule)
    lcParamGroup_Root: TdxLayoutGroup;
    lcParam: TdxLayoutControl;
    dxBarManager: TdxBarManager;
    btPreview: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    lgFechas: TdxLayoutGroup;
    lgDiarios: TdxLayoutGroup;
    lgNumeros: TdxLayoutGroup;
    lgCuentas: TdxLayoutGroup;
    deHasta: TcxDateEdit;
    lideHasta: TdxLayoutItem;
    deDesde: TcxDateEdit;
    lideDesde: TdxLayoutItem;
    lcdiDesde: TcxLookupComboBox;
    lcParamItem1: TdxLayoutItem;
    lcdiHasta: TcxLookupComboBox;
    lcParamItem2: TdxLayoutItem;
    cbPosteo: TcxComboBox;
    lcParamItem3: TdxLayoutItem;
    lcParamGroup2: TdxLayoutGroup;
    lcTipoD: TcxLookupComboBox;
    lcParamItem4: TdxLayoutItem;
    lcParamGroup1: TdxLayoutGroup;
    lcNumDesde: TcxLookupComboBox;
    liNumDesde: TdxLayoutItem;
    lcNumHasta: TcxLookupComboBox;
    liNumHasta: TdxLayoutItem;
    lcCuentaDesde: TcxLookupComboBox;
    lcParamItem7: TdxLayoutItem;
    lcCuentaHasta: TcxLookupComboBox;
    lcParamItem8: TdxLayoutItem;
    qrDiarios: TADOQuery;
    qrTipoDocumento: TADOQuery;
    lgRangos: TdxLayoutGroup;
    qrTransacciones: TADOQuery;
    qrCuentas: TADOQuery;
    dsDiarios: TDataSource;
    dsTipoDocumento: TDataSource;
    dsTransacciones: TDataSource;
    dsCuentas: TDataSource;
    cbNoTrans: TcxCheckBox;
    liNoTrans: TdxLayoutItem;
    lcParamGroup3: TdxLayoutGroup;
    lgBalances: TdxLayoutGroup;
    lcAnoFiscal: TcxLookupComboBox;
    lcParamItem5: TdxLayoutItem;
    cbHastaPeriodo: TcxComboBox;
    lcParamItem6: TdxLayoutItem;
    qrAnos: TADOQuery;
    dsAnos: TDataSource;
    strDebitos: TJvStrHolder;
    strCreditos: TJvStrHolder;
    cbControl: TcxCheckBox;
    liCuentaControl: TdxLayoutItem;
    lcParamGroup4: TdxLayoutGroup;
    qrEstados: TADOQuery;
    dsEstados: TDataSource;
    lcEstado: TcxLookupComboBox;
    liEstado: TdxLayoutItem;
    cbAcumulado: TcxCheckBox;
    lcAcumulado: TdxLayoutItem;
    cbDimensiones: TcxImageComboBox;
    lcParamItem11: TdxLayoutItem;
    lcDimension: TcxLookupComboBox;
    lcParamItem12: TdxLayoutItem;
    qrDimensiones: TADOQuery;
    dsDimensiones: TDataSource;
    lgDimensiones: TdxLayoutGroup;
    cbTipoEstado: TcxImageComboBox;
    lcTipoEstado: TdxLayoutItem;
    lcParamGroup6: TdxLayoutGroup;
    lcParamGroup5: TdxLayoutGroup;
    qrProyectos: TADOQuery;
    dsProyectos: TDataSource;
    lgProyecto: TdxLayoutGroup;
    lcProyecto: TcxLookupComboBox;
    lcParamItem9: TdxLayoutItem;
    lcMoneda: TcxLookupComboBox;
    liMoneda: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure btPreviewClick(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure cbDimensionesPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    iCurReport : Integer;
    bPreview : Boolean;
    procedure SetReportQuery;
    procedure RunDiarioGeneral;
    procedure RunMayorGeneral;
    procedure RunMayorResumido;
    procedure RunBalComp;
    procedure RunEstadoFinanciero;
    procedure InitMeses;
  public
    { Public declarations }
    procedure ShowReport( iReport : Integer );
  end;

var
  frmRepParamModule: TfrmRepParamModule;

implementation

uses ActionsDM, ReportsDM, DataModule, Main, DateUtils, ClassLedgerBalance,
  StrUtils, PreviewModule;

{$R *.dfm}

procedure TfrmRepParamModule.FormCreate(Sender: TObject);
begin
  inherited;
  qrProyectos.Close;
  qrProyectos.Open;
  //
  qrDiarios.Close;
  qrDiarios.Open;
  //
  qrDimensiones.Close;
  qrDimensiones.Parameters.ParamByName('pTipo').Value := 0;
  qrDimensiones.Open;
  //
  qrTipoDocumento.Close;
  qrTipoDocumento.Open;
  //
  qrTransacciones.Close;
  qrTransacciones.Open;
  //
  qrCuentas.Close;
  qrCuentas.Open;
  //
  qrAnos.Close;
  qrAnos.Open;
  //
  qrEstados.Close;
  qrEstados.Open;
  //
  DM.qrMonedas.Close;
  DM.qrMonedas.Open;
end;

procedure TfrmRepParamModule.SetReportQuery;
begin
  case iCurReport of
    1710:RunDiarioGeneral;
    1720:RunMayorGeneral;
    1730:RunMayorResumido;
    1740:RunBalComp;
    1750:RunEstadoFinanciero;
  end;
end;

procedure TfrmRepParamModule.ShowReport(iReport: Integer);
begin
  iCurReport :=  iReport;
  lgBalances.Visible := False;
  lgDimensiones.Visible := False;
  liCuentaControl.Visible := False;
  lcTipoEstado.Visible := False;
  lcAcumulado.Visible := False;
  case iCurReport of
    1710:Begin
          Caption := Caption + SDiarioGeneral;
          lgNumeros.Visible  := False;
          deDesde.Date       := Date;
          deHasta.Date       := Date;
          cbPosteo.ItemIndex := 0;
         End;
    1720:Begin
          Caption := Caption + SMayorGeneralDet;
          lgDiarios.Visible  := False;
          lgDimensiones.Visible := True;
          liNumDesde.Visible := True;
          liNumHasta.Visible := True;
          liNoTrans.Visible  := False;
          deDesde.Date       := Date;
          deHasta.Date       := Date;
         End;
    1730:Begin
          Caption := Caption + SMayorGeneralRes;
          lgDimensiones.Visible := True;
          lgDiarios.Visible  := False;
          liNumDesde.Visible := False;
          liNumHasta.Visible := False;
          liNoTrans.Visible  := True;
          deDesde.Date       := Date;
          deHasta.Date       := Date;
          cbNoTrans.Checked  := True;
         End;
    1740:Begin
           Caption := Caption + SBalanceDeCompro;
           lgBalances.Visible := True;
           liEstado.Visible := False;
           liCuentaControl.Visible := True;
           lgFechas.Visible := False;
           lgDiarios.Visible := False;
           lgNumeros.Visible := False;
           lgProyecto.Visible := False;
           DM.qrCgParam.Close;
           DM.qrCgParam.Open;
           lcAnoFiscal.Text := DM.qrCgParamAnoFiscalBalance.AsString;
           InitMeses;
         End;
    1750:Begin
           Caption := Caption + SEstadosFinancier;
           lgBalances.Visible := True;
           lgDimensiones.Visible := True;
           lgCuentas.Visible := False;
           liEstado.Visible := True;
           liCuentaControl.Visible := True;
           lgProyecto.Visible := False;
           lgFechas.Visible := False;
           lgDiarios.Visible := False;
           lgNumeros.Visible := False;
           DM.qrCgParam.Close;
           DM.qrCgParam.Open;
           lcAnoFiscal.Text := DM.qrCgParamAnoFiscalBalance.AsString;
           lcTipoEstado.Visible := True;
           lcAcumulado.Visible := True;
           InitMeses;
         End;
  end;
  if WindowState = wsNormal then Height := lgRangos.ViewInfo.Bounds.Bottom + 100;
  Show;
end;

procedure TfrmRepParamModule.btPreviewClick(Sender: TObject);
begin
  inherited;
  bPreview := True;
  SetReportQuery;
end;

procedure TfrmRepParamModule.dxBarButton1Click(Sender: TObject);
begin
  inherited;
  bPreview := False;
  SetReportQuery;
end;

procedure TfrmRepParamModule.RunDiarioGeneral;
var
  sqlWhere : String;
  sqlOrder : String;
  ParamStr : String;
begin
  With DMReports do begin
    qrDiarioGeneral.Close;
    qrDiarioGeneral.SQL.Text := 'SELECT h.*, t.Descripcion As NombreDocumento, d.*, ' +
                                '       c.Nombre + ' + #39 + ' / ' + #39 + ' + d.Descripcion As NombreCuenta ' +
                                '  FROM CgDiario h ' +
                                ' INNER JOIN  CgTiposDocumento t ' +
                                '    ON h.TipoDocumento = t.TipoDocumento ' +
                                ' INNER JOIN CgDiarioDetalle d ' +
                                '    ON h.DiarioID = d.DiarioID ' +
                                ' INNER JOIN CgCuentas c ' +
                                '    ON d.CuentaContable = c.CuentaContable ';
    sqlOrder := ' ORDER BY h.Fecha, h.TipoDocumento, h.DiarioID, h.Numero, d.Secuencia';

    sqlWhere := ' WHERE h.Fecha >= :pDesde AND h.Fecha <= :pHasta ';
    ParamStr := SDel + deDesde.Text + SAl + deHasta.Text;
    // Proyecto
    if lcProyecto.Text <> '' then begin
      sqlWhere := sqlWhere + ' AND h.ProyectoID = ' + #39 + lcProyecto.Text + #39;
      ParamStr := ParamStr + SProyecto + lcProyecto.Text;
    end;
    // Posteado
    case cbPosteo.ItemIndex of
      1:Begin
          sqlWhere := sqlWhere + ' AND h.Posteado = 1 ';
          ParamStr  := ParamStr + SSoloPosteados;
        End;
      2:Begin
          sqlWhere := sqlWhere + ' AND h.Posteado = 0 ';
          ParamStr  := ParamStr + SSoloSinPostear;
        End;
    end;
    // Tipo Documento
    if lcTipoD.Text <> '' then begin
      sqlWhere := sqlWhere + ' AND h.TipoDocumento = ' + #39 + lcTipoD.Text + #39;
      ParamStr := ParamStr + STipoDocumento1 + lcTipoD.Text;
    end;
    // Diarios
    if lcDiDesde.Text <> '' then begin
      sqlWhere := sqlWhere + ' AND h.DiarioID >= ' + lcDiDesde.Text ;
      ParamStr := ParamStr + SDesdeDiario + lcDiDesde.Text;
    end;
    if lcDiHasta.Text <> '' then begin
      sqlWhere := sqlWhere + ' AND h.DiarioID <= ' + lcDiHasta.Text ;
      ParamStr := ParamStr + SHastaDiario + lcDiHasta.Text;
    end;
    // Cuentas
    if lcCuentaDesde.Text <> '' then begin
      sqlWhere := sqlWhere + ' AND d.CuentaContable >= ' + #39 + lcCuentaDesde.Text + #39;
      ParamStr := ParamStr + SDesdeCuenta + lcCuentaDesde.Text;
    end;
    if lcCuentaHasta.Text <> '' then begin
      sqlWhere := sqlWhere + ' AND d.CuentaContable <= ' + #39 + lcCuentaHasta.Text + #39;
      ParamStr := ParamStr + SHastaCuenta + lcCuentaHasta.Text;
    end;
    //
    qrDiarioGeneral.SQL.Text := qrDiarioGeneral.SQL.Text + sqlWhere + sqlOrder;
    qrDiarioGeneral.Parameters.ParamByName('pDesde').Value := deDesde.Date;
    qrDiarioGeneral.Parameters.ParamByName('pHasta').Value := deHasta.Date;
    qrDiarioGeneral.Open;
    //
    paramDiarioGeneral.Lines.Text := paramStr;
    if bPreview then begin
      repDiarioGeneral.DeviceType := 'Screen';
      repDiarioGeneral.ShowAutoSearchDialog := False;
      repDiarioGeneral.Print;
      (*
      With TfrmPreviewModule.Create(Self) do begin
        Caption := 'Vista Preeliminar - Diario General';
        ppViewer.Report := repDiarioGeneral;
        repDiarioGeneral.PrintToDevices;
        Show;
        //
      End;
      *)
    end else begin
      repDiarioGeneral.DeviceType := 'Printer';
      repDiarioGeneral.PrintReport;
    end;
  end;
end;

procedure TfrmRepParamModule.RunMayorGeneral;
var
  sqlWhere : String;
  sqlOrder : String;
  ParamStr : String;
begin
  With DMReports do begin
    qrBalInicial.Close;
    qrBalInicial.SQL.Text := 'SELECT CuentaContable, Sum(Monto) AS Balance FROM CgTransacciones ' +
                             ' WHERE Fecha < :pFecha ';
    if cbDimensiones.EditValue = 1 then begin
      qrBalInicial.SQL.Text := qrBalInicial.SQL.Text + ' AND Dimension1 = ' + #39 + lcDimension.Text + #39;
    end;
    if cbDimensiones.EditValue = 2 then begin
      qrBalInicial.SQL.Text := qrBalInicial.SQL.Text + ' AND Dimension2 = ' + #39 + lcDimension.Text + #39;
    end;
    if lcProyecto.Text <> '' then begin
      qrBalInicial.SQL.Text := qrBalInicial.SQL.Text + ' AND ProyectoID = ' + #39 + lcProyecto.Text + #39;
    end;
    qrBalInicial.SQL.Text := qrBalInicial.SQL.Text + ' GROUP BY CuentaContable ';
    qrBalInicial.Parameters.ParamByName('pFecha').Value := deDesde.Date;
    qrBalInicial.Open;
    //
    qrMayorGeneral.Close;
    qrMayorGeneral.SQL.Text :=  'SELECT t.*, c.Nombre, c.AceptaEntrada, c.Origen, b.ChequeNum, b.DepositoNum, ' +
                                '        cc.NumeroDocumento as DocumentoCc, cp.NumeroDocumento as DocumentoCp ' +
                                '   FROM CgTransacciones t JOIN CgCuentas c ' +
                                '     ON t.CuentaContable = c.CuentaContable ' +
                                ' LEFT OUTER JOIN BcDiario b ON t.DiarioID = b.DiarioID ' +
                                ' LEFT OUTER JOIN CcDiario cc ON t.DiarioID = cc.DiarioID ' +
                                ' LEFT OUTER JOIN CpDiario cp ON t.DiarioID = cp.DiarioID ';
    sqlOrder := ' ORDER BY t.CuentaContable, t.Fecha';

    sqlWhere := ' WHERE t.Fecha >= :pDesde AND t.Fecha <= :pHasta ';
    ParamStr := SDel + deDesde.Text + SAl + deHasta.Text;
    if lcProyecto.Text <> '' then begin
      sqlWhere := sqlWhere + ' AND t.ProyectoID = ' + #39 + lcProyecto.Text + #39;
      ParamStr := ParamStr + SProyecto + lcProyecto.Text;
    end;
    // Asientos
    if lcNumDesde.Text <> '' then begin
      sqlWhere := sqlWhere + ' AND t.Numero >= ' + #39 + lcNumDesde.Text + #39 ;
      ParamStr := ParamStr + ', Desde Número: ' + lcNumDesde.Text;
    end;
    if lcNumHasta.Text <> '' then begin
      sqlWhere := sqlWhere + ' AND t.Numero <= ' + #39 + lcNumHasta.Text  + #39;
      ParamStr := ParamStr + ', Hasta Número: ' + lcNumHasta.Text;
    end;
    // Cuentas
    if lcCuentaDesde.Text <> '' then begin
      sqlWhere := sqlWhere + ' AND t.CuentaContable >= ' + #39 + lcCuentaDesde.Text + #39;
      ParamStr := ParamStr + SDesdeCuenta + lcCuentaDesde.Text;
    end;
    if lcCuentaHasta.Text <> '' then begin
      sqlWhere := sqlWhere + ' AND t.CuentaContable <= ' + #39 + lcCuentaHasta.Text + #39;
      ParamStr := ParamStr + SHastaCuenta + lcCuentaHasta.Text;
    end;
    if cbDimensiones.EditValue = 1 then begin
      sqlWhere := sqlWhere + ' AND t.Dimension1 = ' + #39 + lcDimension.Text + #39;
      ParamStr := ParamStr + SCentroDeCosto + lcDimension.Text;
    end;
    if cbDimensiones.EditValue = 2 then begin
      sqlWhere := sqlWhere + ' AND t.Dimension2 = ' + #39 + lcDimension.Text + #39;
      ParamStr := ParamStr + SDepartamento + lcDimension.Text;
    end;
    //
    qrMayorGeneral.SQL.Text := qrMayorGeneral.SQL.Text + sqlWhere + sqlOrder;
    qrMayorGeneral.Parameters.ParamByName('pDesde').Value := deDesde.Date;
    qrMayorGeneral.Parameters.ParamByName('pHasta').Value := deHasta.Date;
    qrMayorGeneral.Open;
    //
    paramMayorGeneralD.Lines.Text := paramStr;
    if bPreview then begin
      repMayorGeneral.DeviceType := 'Screen';
      repMayorGeneral.ShowAutoSearchDialog := False;
      repMayorGeneral.PrintReport;
      (*
      With TfrmPreviewModule.Create(Self) do begin
        Caption := 'Vista Preeliminar - Mayor General';
        ppViewer.Report := repMayorGeneral;
        repMayorGeneral.PrintToDevices;
        Show;
        //
      End;
      *)
    end else begin
      repMayorGeneral.DeviceType := 'Printer';
      repMayorGeneral.PrintReport;
    end;
  end;
end;

procedure TfrmRepParamModule.RunMayorResumido;
var
  sqlWhere : String;
  sqlOrder : String;
  ParamStr : String;
begin
  With DMReports do begin
    qrBalInicial.Close;
    qrBalInicial.Close;
    qrBalInicial.SQL.Text := 'SELECT CuentaContable, Sum(Monto) AS Balance FROM CgTransacciones ' +
                             ' WHERE Fecha < :pFecha ';
    if cbDimensiones.EditValue = 1 then begin
      qrBalInicial.SQL.Text := qrBalInicial.SQL.Text + ' AND Dimension1 = ' + #39 + lcDimension.Text + #39;
    end;
    if cbDimensiones.EditValue = 2 then begin
      qrBalInicial.SQL.Text := qrBalInicial.SQL.Text + ' AND Dimension2 = ' + #39 + lcDimension.Text + #39;
    end;
    if lcProyecto.Text <> '' then begin
      qrBalInicial.SQL.Text := qrBalInicial.SQL.Text + ' AND ProyectoID = ' + #39 + lcProyecto.Text + #39;
    end;
    qrBalInicial.SQL.Text := qrBalInicial.SQL.Text + ' GROUP BY CuentaContable ';
    qrBalInicial.Parameters.ParamByName('pFecha').Value := deDesde.Date;
    qrBalInicial.Open;
    //
    qrMayorGeneral.Close;
    qrMayorGeneral.SQL.Text :=  'SELECT c.CuentaContable, c.Nombre, c.AceptaEntrada, c.Origen, t.*' +
                                '   FROM CgCuentas c LEFT OUTER JOIN CgTransacciones t  ' +
                                '     ON c.CuentaContable = t.CuentaContable';
    sqlOrder := ' ORDER BY c.CuentaContable ';

    sqlWhere := ' WHERE c.AceptaEntrada = 1 ';
    if cbNoTrans.Checked then begin
      sqlWhere := sqlWhere + ' AND ( t.Fecha IS NULL or ( t.Fecha >= :pDesde  AND t.Fecha <= :pHasta ) ) ';
      ParamStr := STodasLasCuentasD + deDesde.Text + SAl + deHasta.Text;
    end else begin
      sqlWhere := sqlWhere + ' AND t.Fecha >= :pDesde  AND t.Fecha <= :pHasta ';
      ParamStr := SCuentasConMovimien + deDesde.Text + SAl + deHasta.Text;
    end;
    // Proyecto
    if lcProyecto.Text <> '' then begin
      sqlWhere := sqlWhere + ' AND t.ProyectoID = ' + #39 + lcProyecto.Text + #39;
      ParamStr := ParamStr + SProyecto + lcProyecto.Text;
    end;
    // Cuentas
    if lcCuentaDesde.Text <> '' then begin
      sqlWhere := sqlWhere + ' AND t.CuentaContable >= ' + #39 + lcCuentaDesde.Text + #39;
      ParamStr := ParamStr + SDesdeCuenta + lcCuentaDesde.Text;
    end;
    if lcCuentaHasta.Text <> '' then begin
      sqlWhere := sqlWhere + ' AND t.CuentaContable <= ' + #39 + lcCuentaHasta.Text + #39;
      ParamStr := ParamStr + SHastaCuenta + lcCuentaHasta.Text;
    end;
    //
    if cbDimensiones.EditValue = 1 then begin
      sqlWhere := sqlWhere + ' AND t.Dimension1 = ' + #39 + lcDimension.Text + #39;
      ParamStr := ParamStr + SCentroDeCosto + lcDimension.Text;
    end;
    if cbDimensiones.EditValue = 2 then begin
      sqlWhere := sqlWhere + ' AND t.Dimension2 = ' + #39 + lcDimension.Text + #39;
      ParamStr := ParamStr + SDepartamento + lcDimension.Text;
    end;
    //
    qrMayorGeneral.SQL.Text := qrMayorGeneral.SQL.Text + sqlWhere + sqlOrder;
    qrMayorGeneral.Parameters.ParamByName('pDesde').Value := deDesde.Date;
    qrMayorGeneral.Parameters.ParamByName('pHasta').Value := deHasta.Date;
    qrMayorGeneral.Open;
    //
    paramMayorGeneralR.Lines.Text := paramStr;
    if bPreview then begin
      repMayorResumido.DeviceType := 'Screen';
      repMayorResumido.ShowAutoSearchDialog := False;
      repMayorResumido.PrintReport;
      (*
      With TfrmPreviewModule.Create(Self) do begin
        Caption := 'Vista Preeliminar - Mayor General Resumido';
        ppViewer.Report := repMayorResumido;
        repMayorResumido.PrintToDevices;
        Show;
        //
      End;
      *)
    end else begin
      repMayorResumido.DeviceType := 'Printer';
      repMayorResumido.PrintReport;
    end;
  end;
end;


procedure TfrmRepParamModule.InitMeses;
var
  sMes : TStringList;
  iMes, iFactor : Integer;
begin

  sMes    := TStringList.Create;

  sMes.Add(SEnero);
  sMes.Add(SFebrero);
  sMes.Add(SMarzo);
  sMes.Add(SAbril);
  sMes.Add(SMayo);
  sMes.Add(SJunio);
  sMes.Add(SJulio);
  sMes.Add(SAgosto);
  sMes.Add(SSeptiembre);
  sMes.Add(SOctubre);
  sMes.Add(SNoviembre);
  sMes.Add(SDiciembre);

  DM.qrCgParam.Close;
  DM.qrCgParam.Open;

  if DM.qrCgParamMesCierre.Value = 12 then
    iMes := 1
  else
    iMes := DM.qrCgParamMesCierre.Value + 1;

  cbHastaPeriodo.Properties.Items.Clear;

  for iFactor := 1 to 12 do begin
    cbHastaPeriodo.Properties.Items.Add(sMes.Strings[iMes-1]);
    iMes := iMes + 1;
    if iMes > 12 then iMes := 1;
  end;

  cbHastaPeriodo.Properties.Items.Add(SCierreDeAno);
  cbHastaPeriodo.ItemIndex := cbHastaPeriodo.Properties.Items.IndexOf(sMes.Strings[MonthOf(Date)-1]);
end;

procedure TfrmRepParamModule.RunBalComp;
var
  iY, iX : Integer;
  sqlBal   : String;
  sqlWhere : String;
  sqlFrom  : String;
  sqlOrder : String;
  paramStr : String;
begin
  With DMReports do begin
    //
    paramStr := SAnoFiscal + lcAnoFiscal.Text + SAlMesDe + cbHastaPeriodo.Text;
    //
    qrBalComp.Close;
    qrBalComp.SQL.Text :=  'SELECT c.CuentaContable, c.Origen, c.Nombre, c.AceptaEntrada, ';
    // Crear Balance Iinicial
    iY := cbHastaPeriodo.ItemIndex; // Equivalente al mes anterior
    sqlBal := 'CASE WHEN b.Cuenta IS NULL THEN 0 ELSE ( b.Mes00_Debito ';
    for iX := 1 to iY do begin
       sqlBal := sqlBal + ' + ' + strDebitos.Strings.Strings[iX]
    end;
    sqlBal := sqlBal + ') - ( b.Mes00_Credito ';
    for iX := 1 to iY do begin
       sqlBal := sqlBal + ' + ' + strCreditos.Strings.Strings[iX];
    end;
    sqlBal := sqlBal + ') END As BalIni, ';
    // Valores Actuales
    iY := cbHastaPeriodo.ItemIndex + 1; // Equivalente al mes seleccionado
    sqlBal := sqlBal + ' CASE WHEN b.Cuenta IS NULL THEN 0 ELSE ' + strDebitos.Strings.Strings[iY] + ' END As Debitos, ';
    sqlBal := sqlBal + ' CASE WHEN b.Cuenta IS NULL THEN 0 ELSE ' + strCreditos.Strings.Strings[iY] + ' END As Creditos, ';
    sqlBal := sqlBal + ' CASE WHEN b.Cuenta IS NULL THEN 0 ELSE ' + strDebitos.Strings.Strings[iY] + ' - ' +
                                                          strCreditos.Strings.Strings[iY] + ' END As Diferencia, ';
    // Balance Final
    sqlBal := sqlBal + 'CASE WHEN b.Cuenta IS NULL THEN 0 ELSE ( b.Mes00_Debito + ';
    for iX := 1 to iY do begin
      if iX < iY then
        sqlBal := sqlBal + strDebitos.Strings.Strings[iX] + ' + '
      else
        sqlBal := sqlBal + strDebitos.Strings.Strings[iX];
    end;
    sqlBal := sqlBal + ') - ( b.Mes00_Credito + ';
    for iX := 1 to iY do begin
      if iX < iY then
        sqlBal := sqlBal + strCreditos.Strings.Strings[iX] + ' + '
      else
        sqlBal := sqlBal + strCreditos.Strings.Strings[iX];
    end;
    sqlBal := sqlBal + ')  END As BalFin ';

    if lcProyecto.Text = '' then
      sqlFrom  := ' FROM CgCuentas c LEFT OUTER JOIN CgBalances b ON c.CuentaContable = b.Cuenta '
    else
      sqlFrom  := ' FROM CgCuentas c LEFT OUTER JOIN CgBalancesProyecto b ON c.CuentaContable = b.Cuenta ';

    sqlOrder := ' ORDER BY c.CuentaContable ';

    if cbControl.Checked then begin
      paramStr := paramStr + STodasLasCuentas;
      sqlWhere := ' WHERE b.AnoFiscal = ' + lcAnoFiscal.Text;
    end else begin
      paramStr := paramStr + SCuentasDeDetalle;
      sqlWhere := ' WHERE c.AceptaEntrada = 1 AND b.AnoFiscal = ' + lcAnoFiscal.Text;
    end;
    // Proyecto
    if lcProyecto.Text <> '' then begin
      sqlWhere := sqlWhere + ' AND b.ProyectoID = ' + #39 + lcProyecto.Text + #39;
      ParamStr := ParamStr + SProyecto + lcProyecto.Text;
    end;
    // Cuentas
    if lcCuentaDesde.Text <> '' then begin
      sqlWhere := sqlWhere + ' AND c.CuentaContable >= ' + #39 + lcCuentaDesde.Text + #39;
      ParamStr := ParamStr + SDesdeCuenta + lcCuentaDesde.Text;
    end;
    if lcCuentaHasta.Text <> '' then begin
      sqlWhere := sqlWhere + ' AND c.CuentaContable <= ' + #39 + lcCuentaHasta.Text + #39;
      ParamStr := ParamStr + SHastaCuenta + lcCuentaHasta.Text;
    end;
    //
    qrBalComp.Close;
    qrBalComp.SQL.Text := qrBalComp.SQL.Text + sqlBal + sqlFrom + sqlWhere + sqlOrder;
    qrBalComp.Open;
    //
    paramBalComp.Lines.Text := paramStr;
    if bPreview then begin
      repBalComp.DeviceType := 'Screen';
      repBalComp.ShowAutoSearchDialog := False;
      repBalComp.PrintReport;
      (*
      With TfrmPreviewModule.Create(Self) do begin
        Caption := 'Vista Preeliminar - Balance de Comprobación';
        ppViewer.Report := repBalComp;
        repBalComp.PrintToDevices;
        Show;
        //
      End;
      *)
    end else begin
      repBalComp.DeviceType := 'Printer';
      repBalComp.PrintReport;
    end;
  end;
end;

procedure TfrmRepParamModule.RunEstadoFinanciero;
var
  lBal  : TCgLedgerBalance;
  sDimText : String;
  strAno: String;
begin
  //
  lBal := TCgLedgerBalance.Create( StrToInt(lcAnoFiscal.Text), cbHastaPeriodo.ItemIndex + 1 );
  if cbDimensiones.EditValue = 0 then begin
    lBal.RunEstado(lcEstado.Text, cbAcumulado.Checked, cbTipoEstado.EditValue );
    sDimText := '';
  end else begin
    case cbDimensiones.EditValue of
      1,2:Begin
            lBal.RunEstadoDim( lcEstado.Text, cbDimensiones.EditValue, lcDimension.Text, cbAcumulado.Checked, cbTipoEstado.EditValue );
            qrDimensiones.Locate('Dimension',lcDimension.Text,[]);
          End;
        3:Begin
            lBal.RunEstadoProyecto( lcEstado.Text, lcDimension.Text, cbAcumulado.Checked, cbTipoEstado.EditValue );
            qrProyectos.Locate('ProyectoID',lcDimension.Text,[]);
          End;
    end;

    case cbDimensiones.EditValue of
      1:sDimText := SCentroDeCosto + qrDimensiones.FieldByName('Descripcion').Text;
      2:sDimText := SDepartamento + qrDimensiones.FieldByName('Descripcion').Text;
      3:sDimText := SProyecto + qrProyectos.FieldByName('Descripcion').Text;
    end;
  end;
  //
  if not DM.qrCgParam.Active then
    DM.qrCgParam.Open;
  if DM.qrCgParamMesCierre.Value <> 12 then
    strAno := lcAnoFiscal.Text + '-' + IntToStr( StrToInt( lcAnoFiscal.Text ) + 1 )
  else
    strAno := lcAnoFiscal.Text;
  if cbAcumulado.Checked then
    DMReports.CurEstadoTitulo := SA + cbHastaPeriodo.Text + ' ' + SDel1 + strAno + sDimText
  else
    DMReports.CurEstadoTitulo := SPara + cbHastaPeriodo.Text + ' ' + SDel1 + strAno + sDimText;
  DMReports.CurEstadoTipo := cbTipoEstado.EditValue;
  DMReports.CurEstadoMoneda := lcMoneda.Text;
  //
  DMReports.qrEstado.Close;
  DMReports.qrEstado.Parameters.ParamByName('pEstado').Value := lcEstado.Text;
  DMReports.qrEstado.Open;
  if bPreview then begin
    DMReports.repEstado.DeviceType := 'Screen';
    DMReports.repEstado.ShowAutoSearchDialog := False;
    DMReports.repEstado.PrintReport;
    (*
    With TfrmPreviewModule.Create(Self) do begin
      Caption := 'Vista Preeliminar - Estado Financiero'  ;
      ppViewer.Report := DMReports.repEstado;
      DMReports.repEstado.PrintToDevices;
      Show;
      //
    End;
    *)
  end else begin
    DMReports.repEstado.DeviceType := 'Printer';
    DMReports.repEstado.PrintReport;
  end;
end;

procedure TfrmRepParamModule.cbDimensionesPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  lcDimension.Text := '';
  lcDimension.Enabled := ( cbDimensiones.EditValue > 0 );
  //
  if ( lcDimension.Enabled ) then begin
    case cbDimensiones.EditValue of
    1,2:Begin
          lcDimension.Properties.ListSource := dsDimensiones;
          lcDimension.Properties.KeyFieldNames := 'Dimension';
          lcDimension.Properties.ListFieldNames := 'Dimension;Descripcion';
          qrDimensiones.Close;
          qrDimensiones.Parameters.ParamByName('pTipo').Value := cbDimensiones.EditValue;
          qrDimensiones.Open;
        End;
      3:Begin
          lcDimension.Properties.ListSource := dsProyectos;
          lcDimension.Properties.KeyFieldNames := 'ProyectoID';
          lcDimension.Properties.ListFieldNames := 'ProyectoID;Descripcion';
          lcDimension.Properties.ListColumns.Items[0].Caption := 'Proyecto';
        End;
    end;    
  end;
end;

end.
