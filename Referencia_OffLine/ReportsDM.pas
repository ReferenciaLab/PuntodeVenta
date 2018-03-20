unit ReportsDM;

interface

{$DEFINE DADE}            {remove the 'x' to enable DADE}
{x$DEFINE BDE}             {remove the 'x' to enable Borland Database Engine (BDE) }
{$DEFINE ADO}            {remove the 'x' to enable ADO}
{x$DEFINE IBExpress}      {remove the 'x' to enable Interbase Express}
{$DEFINE CrossTab}        {remove the 'x' to enable CrossTab}
{$DEFINE RAP}            {remove the 'x' to enable RAP}
{$DEFINE CheckBox}       {remove the 'x' to enable CheckBox}
{x$DEFINE TeeChart}       {remove the 'x' to enable standard TeeChart}
{x$DEFINE UseDesignPath}  {remove the 'x' to use the design-time settings of Database object on this form}

uses

{$IFDEF DADE}
  daIDE,
{$ENDIF}

{$IFDEF BDE}
  daDBBDE,
{$ENDIF}

{$IFDEF ADO}
  daADO,
{$ENDIF}

{$IFDEF IBExpress}
  daIBExpress,
{$ENDIF}

{$IFDEF CrossTab}
  ppCTDsgn,
{$ENDIF}

{$IFDEF RAP}
  raIDE,
{$ENDIF}

{$IFDEF CheckBox}
  myChkBox,
{$ENDIF}

{$IFDEF TeeChart}
  ppChrtUI,
{$ENDIF}

  SysUtils, Classes, DB, ADODB, ppDsgnDB, ppParameter, ppEndUsr, ppDB,
  ppDBPipe, daDataModule, ppModule, raCodMod, ppBands, ppVar, ppMemo,
  ppClass, ppCtrls, ppStrtch, ppPrnabl, ppCache, ppComm, ppRelatv, ppProd,
  ppReport,
  Graphics, daDataView, daQueryDataView, PymeConst, dxmdaset, ABSMain,
  ppFormWrapper, ppRptExp, TXComp;
  {daDbISAM, TXComp,}

type
  TDMReports = class(TDataModule)
    ppDesigner: TppDesigner;
    ppReport: TppReport;
    ppDataDictionary: TppDataDictionary;
    dsRbTables: TDataSource;
    dsRbFields: TDataSource;
    dsRbJoin: TDataSource;
    plRbTables: TppDBPipeline;
    plRbFields: TppDBPipeline;
    plRbJoin: TppDBPipeline;
    ppHeaderBand7: TppHeaderBand;
    ppVariable10: TppVariable;
    ppLabel89: TppLabel;
    ppLine38: TppLine;
    ppDetailBand6: TppDetailBand;
    ppFooterBand7: TppFooterBand;
    ppSystemVariable15: TppSystemVariable;
    ppSystemVariable16: TppSystemVariable;
    ppLine39: TppLine;
    raCodeModule8: TraCodeModule;
    ppParameterList8: TppParameterList;
    repTitle: TppParameter;
    repSubTitle: TppParameter;
    repParameter1: TppParameter;
    repParameter2: TppParameter;
    repParameter3: TppParameter;
    taRbTables: TABSTable;
    taRbFields: TABSTable;
    taRbJoin: TABSTable;
    dsReport: TDataSource;
    plReport: TppDBPipeline;
    tblReport: TABSTable;
    tblReportItemId: TAutoIncField;
    tblReportFolderId: TIntegerField;
    tblReportName: TStringField;
    tblReportSize: TIntegerField;
    tblReportItemType: TIntegerField;
    tblReportModified: TDateTimeField;
    tblReportDeleted: TDateTimeField;
    tblReportReportName: TStringField;
    tblReportSqlText: TMemoField;
    ExtraOptions: TExtraOptions;
    procedure tblReportNewRecord(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    CurReportFolder: Integer;
    { Private declarations }
    function  TituloEmpresa : String;
    function  SubTituloEmpresa : String;
    procedure SetReportParameters;
  public
    { Public declarations }
    CurEstadoTitulo : String;
    CurEstadoTipo   : Integer;
    CurEstadoMoneda : String;
    TipoConciliacion : Integer;

    procedure SetReport( iFolder : Integer; sName : String = '');
    procedure SetReportTitles;
    procedure ImprimeDocumento(sTipo: String;modulo : int64; iNumero: Int64);
  end;


var
  DMReports: TDMReports;

implementation

uses DataModule, ppTypes, Dialogs;

{$R *.dfm}


procedure TDMReports.SetReport(iFolder: Integer; sName: String = '');
begin

  if not tblReport.Active then
    tblReport.Open;

  tblReport.Filtered := False;
  tblReport.Filter := 'ItemType = 1 and FolderID = ' + IntToStr(iFolder);
  tblReport.Filtered := True;

  ppReport.Template.New;

  if sName <> '' then begin
    ppReport.Template.DatabaseSettings.Name := sName;
    ppReport.Template.LoadFromDatabase;
    SetReportParameters;
  end;

  CurReportFolder := iFolder;

end;

procedure TDMReports.SetReportParameters;
begin
  ppReport.Parameters.Clear;
  ppReport.Parameters.Add('repTitle', DM.TituloEmpresa);
  ppReport.Parameters.Add('repSubTitle', DM.SubTituloEmpresa);
  ppReport.Parameters.Add('repRnc', DM.RncEmpresa);
  ppReport.Parameters.Add('repTelefono', DM.TelefonoEmprea);
  ppReport.Parameters.Add('repFax',DM.FaxEmpresa);
  ppReport.Parameters.Add('repDireccion', DM.DireciconEmpresa);
  ppReport.Parameters.Add('repMail',DM.eMailEmpresa);
  ppReport.Parameters.Add('repWebSite', DM.urlEmpresa);
end;

procedure TDMReports.SetReportTitles;
begin
//
end;

function TDMReports.SubTituloEmpresa: String;
begin
  Result := DM.SubTituloEmpresa;
end;

procedure TDMReports.tblReportNewRecord(DataSet: TDataSet);
begin
  If CurReportFolder <> 0 then begin
    tblReportFolderId.Value := CurReportFolder;
    tblReportItemType.Value := 1;
    tblReportReportName.Text := 'Reporte';
    tblReportSize.Value := 3;
  End;
end;

function TDMReports.TituloEmpresa: String;
begin
  Result := DM.TituloEmpresa;
end;

procedure TDMReports.DataModuleCreate(Sender: TObject);
begin

  TipoConciliacion := 1;
end;

procedure TDMReports.ImprimeDocumento(sTipo: String;modulo : int64; iNumero: Int64);
var
  sReporte : String;
begin

  sReporte := sTipo;
  if sReporte = '' then begin
    DM.Warning(SNoSeHaEspecificad);
    Exit;
  end;
  SetReport(modulo,sReporte);
//  ppReport.Template.FileName := sReporte;
//  ppReport.Template.LoadFromFile;
  SetReportParameters;
  if ppReport.AutoSearchFieldCount > 0 then begin
    ppReport.AutoSearchFields[0].ShowAllValues := False;
    ppReport.AutoSearchFields[0].SearchExpression := IntToStr(iNumero);
  end;
  ppReport.DeviceType := 'Screen';
  ppReport.ShowAutoSearchDialog := False;
  ppReport.AllowPrintToFile := True;
  ppReport.PrintReport;
end;



end.
