unit SetupWizard;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvWizard, JvWizardRouteMapNodes, JvExControls,
  JvComponent, cxTextEdit, cxControls, cxContainer, cxEdit, cxMaskEdit,
  cxSpinEdit, cxCheckBox, DB, ADODB, PymeConst;

type
  TfrmSetupWizard = class(TForm)
    JvWizard: TJvWizard;
    JvWizardWelcomePage1: TJvWizardWelcomePage;
    wpActivation: TJvWizardInteriorPage;
    JvWizardRouteMapNodes1: TJvWizardRouteMapNodes;
    Label1: TLabel;
    Label2: TLabel;
    wpAnoFiscal: TJvWizardInteriorPage;
    Label4: TLabel;
    seAno: TcxSpinEdit;
    edNombre: TcxTextEdit;
    Label5: TLabel;
    seMes: TcxSpinEdit;
    wpDocumento: TJvWizardInteriorPage;
    Label6: TLabel;
    Label7: TLabel;
    edTipoDoc: TcxTextEdit;
    edNombreDoc: TcxTextEdit;
    cbAutoNum: TcxCheckBox;
    JvWizardInteriorPage1: TJvWizardInteriorPage;
    qrPeriodos: TADOQuery;
    qrPeriodosAnoFiscal: TSmallintField;
    qrPeriodosNumero: TSmallintField;
    qrPeriodosNombre: TStringField;
    qrPeriodosTipo: TSmallintField;
    qrPeriodosDesde: TDateField;
    qrPeriodosHasta: TDateField;
    qrPeriodosEstatus: TSmallintField;
    qrTipoDoc: TADOQuery;
    qrTipoDocTipoDocumento: TStringField;
    qrTipoDocDescripcion: TStringField;
    qrTipoDocTipo: TSmallintField;
    qrTipoDocAutoNumerar: TBooleanField;
    qrTipoDocUltimoNumero: TLargeintField;
    procedure wpActivationNextButtonClick(Sender: TObject;
      var Stop: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure JvWizardFinishButtonClick(Sender: TObject);
  private
    procedure DoNewYear;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSetupWizard: TfrmSetupWizard;

implementation

uses DataModule, DateUtils;

{$R *.dfm}

procedure TfrmSetupWizard.wpActivationNextButtonClick(Sender: TObject;
  var Stop: Boolean);
begin
  with DM do begin
    IsActivated := True; //( edSerial.Text = HashString(edNombre.Text) );
    if IsActivated then begin
      qrParam.Close;
      qrParam.Open;
      qrParam.Edit;
      qrParamTituloEmpresa.Text := edNombre.Text;
      qrParam.Post;
    end else begin
      MessageDlg(SEsteNumeroDeSerie, mtWarning, [mbOK], 0);
      Stop := True;
    end;
  end;
end;

procedure TfrmSetupWizard.FormCreate(Sender: TObject);
begin
  DM.qrParam.close;
  DM.qrParam.Open;
  edNombre.Text := DM.qrParamTituloEmpresa.Text;
  seAno.Value := YearOf(Date);
end;

procedure TfrmSetupWizard.JvWizardFinishButtonClick(Sender: TObject);
begin
  try
    DM.DataBase.BeginTrans;
    qrPeriodos.Close;
    qrPeriodos.Open;
    //
    DoNewYear;
    //
    qrTipoDoc.Close;
    qrTipoDoc.Parameters.ParamByName('pTipo').Value := edTipoDoc.Text;
    qrTipoDoc.Open;
    if qrTipoDoc.Eof then begin
      qrTipoDoc.Insert;
      qrTipoDocTipoDocumento.Text := edTipoDoc.Text;
      qrTipoDocTipo.Value := 0;
      qrTipoDocDescripcion.Text := edNombreDoc.Text;
      qrTipoDocAutoNumerar.Value := cbAutoNum.Checked;
      qrTipoDocUltimoNumero.Value := 0;
      qrTipoDoc.Post;
    end else begin
      qrTipoDoc.Edit;
      qrTipoDocTipo.Value := 0;
      qrTipoDocDescripcion.Text := edNombreDoc.Text;
      qrTipoDocAutoNumerar.Value := cbAutoNum.Checked;
      qrTipoDoc.Post;
    end;
    //
    DM.qrCgParam.Close;
    DM.qrCgParam.Open;
    DM.qrCgParam.Edit;
    DM.qrCgParamMesCierre.Value := seMes.Value;
    DM.qrCgParamAnoFiscalBalance.Value := seAno.Value;
    DM.qrCgParamTipoDocumento.Text := edTipoDoc.Text;
    DM.qrCgParamAprobarCheques.Value := False;
    DM.qrCgParam.Post;
    //
    DM.qrCcParametros.Close;
    DM.qrCcParametros.Open;
    if DM.qrCcParametros.RecordCount = 0 then begin
      DM.qrCcParametros.Edit;
      DM.qrCcParametrosAutoNumerar.Value := True;
      DM.qrCcParametrosUltCliente.Value := 0;
      DM.qrCcParametrosUltDiario.Value := 0;
      DM.qrCcParametros.Post;
    end;
    //
    DM.qrCpParametros.Close;
    DM.qrCpParametros.Open;
    if DM.qrCpParametros.RecordCount = 0 then begin
      DM.qrCpParametros.Edit;
      DM.qrCpParametrosAutoNumerar.Value := False;
      DM.qrCpParametrosUtlSuplidor.Value := 0;
      DM.qrCpParametrosUltDiario.Value := 0;
      DM.qrCpParametros.Post;
    end;
    DM.DataBase.CommitTrans;
    Close
  Except
    DM.DataBase.RollbackTrans;
    raise;
    Close;
  end;
  //
end;

procedure TfrmSetupWizard.DoNewYear;
var
  iYear : Integer;
  i     : Integer;
  iMesI : Integer;
  aMes  : TStringList;
  dLast : TDateTime;
begin
  inherited;
  //
  aMes := TStringList.Create;
  aMes.Add(SEnero);
  aMes.Add(SFebrero);
  aMes.Add(SMarzo);
  aMes.Add(SAbril);
  aMes.Add(SMayo);
  aMes.Add(SJunio);
  aMes.Add(SJulio);
  aMes.Add(SAgosto);
  aMes.Add(SSeptiembre);
  aMes.Add(SOctubre);
  aMes.Add(SNoviembre);
  aMes.Add(SDiciembre);
  //
  iYear := seAno.Value;
  //
  if seMes.Value = 12 then
    iMesI := 1
  else
    iMesI := seMes.Value + 1;
  //
  qrPeriodos.Append;
  qrPeriodosAnoFiscal.Value := iYear;
  qrPeriodosDesde.Value := EncodeDate(iYear,iMesI,1);
  qrPeriodosHasta.Value := EncodeDate(iYear,iMesI,1); // EndOfTheMonth(qrPeriodosDesde.Value);
  qrPeriodosTipo.Value  := 0; // Apertura
  qrPeriodosEstatus.Value := 1; // Detenido
  qrPeriodosNumero.Value := 0;
  qrPeriodosNombre.Text := SBalanceIncial;
  qrPeriodos.Post;
  //
  for i := 1 to 12 do begin
    qrPeriodos.Append;
    qrPeriodosAnoFiscal.Value := iYear;
    qrPeriodosDesde.Value := EncodeDate(iYear,iMesI,1);
    qrPeriodosHasta.Value := EndOfTheMonth(qrPeriodosDesde.Value);
    qrPeriodosTipo.Value  := 1; // Normal
    qrPeriodosEstatus.Value := 0; // Abierto
    qrPeriodosNumero.Value := i;
    qrPeriodosNombre.Text := aMes.Strings[iMesI-1];
    qrPeriodos.Post;
    iMesI := iMesI + 1;
    dLast := qrPeriodosHasta.Value;
    if iMesI > 12 then iMesI := 1;
  end;
  //
  qrPeriodos.Append;
  qrPeriodosAnoFiscal.Value := iYear;
  qrPeriodosDesde.Value := dLast; //EncodeDate(iYear,iMesI,1);
  qrPeriodosHasta.Value := dLast; //EndOfTheMonth(qrPeriodosDesde.Value);
  qrPeriodosTipo.Value  := 2; // Cierre
  qrPeriodosEstatus.Value := 1; // Detenido
  qrPeriodosNumero.Value := 13;
  qrPeriodosNombre.Text := SFinDeAno;
  qrPeriodos.Post;
end;

end.
