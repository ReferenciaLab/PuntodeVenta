unit r2dMain;

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

  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, XPMan, ABSMain, DB, ppComm, ppRelatv, ppProd, ppClass,
  ppReport, ppDB, ppDBPipe;

type
  TfrmMain = class(TForm)
    Button1: TButton;
    XPManifest1: TXPManifest;
    lblEstatus: TLabel;
    taReportes: TABSTable;
    DataBase: TABSDatabase;
    taReportesFolderId: TIntegerField;
    taReportesName: TStringField;
    taReportesSize: TIntegerField;
    taReportesItemType: TIntegerField;
    taReportesModified: TDateTimeField;
    taReportesDeleted: TDateTimeField;
    taReportesReportName: TStringField;
    taReportesSqlText: TMemoField;
    ppReport: TppReport;
    dsReportes: TDataSource;
    ppReprotes: TppDBPipeline;
    ListBox1: TListBox;
    taReporteUpd: TABSTable;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    DateTimeField1: TDateTimeField;
    DateTimeField2: TDateTimeField;
    StringField2: TStringField;
    MemoField1: TMemoField;
    taReportesItemId: TAutoIncField;
    taReporteUpdItemId: TAutoIncField;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.Button1Click(Sender: TObject);
begin
  ListBox1.Items.Clear;
  //
  taReporteUpd.Close;
  taReporteUpd.Open;
  taReportes.Close;
  taReportes.Open;
  //
  taReportes.First;
  while not taReportes.Eof do begin
    if taReportesReportName.Text <> '' then begin
      lblEstatus.Caption := taReportesReportName.Text;
      taReporteUpd.Locate('ItemId',taReportesItemId.Value,[]);
      if FileExists(taReportesReportName.Text) then begin
        ppReport.Template.FileName := taReportesReportName.Text;
        ppReport.Template.LoadFromFile;
        lblEstatus.Caption := lblEstatus.Caption + '...Cargado';
        ppReport.Template.DatabaseSettings.Name := taReportesName.Text;
        ppReport.Template.SaveToDatabase;
        lblEstatus.Caption := lblEstatus.Caption + '...Grabado';
      end else begin
        lblEstatus.Caption := taReportesReportName.Text;
        taReportes.Delete;
        lblEstatus.Caption := lblEstatus.Caption + '...Borrado';
      end;
      //
      ListBox1.Items.Add(lblEstatus.Caption);
      Update;
    end;
    //
    taReportes.Next;
  end;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  DataBase.Connected := False;
  DataBase.DatabaseFileName := ExtractFilepath(ParamStr(0)) + '\PymeAccounting.abs';
  DataBase.Connected := True;
end;

end.
