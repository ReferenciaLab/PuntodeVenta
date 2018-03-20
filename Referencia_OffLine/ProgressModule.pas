unit ProgressModule;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomModule, Menus, StdActns, ActnList, JvComponent,
  JvFormPlacement, JvExControls, JvEnterTab, ComCtrls, RzPrgres, RzStatus,
  ExtCtrls;

type
  TfrmProgressModule = class(TForm)
    aviProgress: TAnimate;
    spTexto: TRzStatusPane;
    pbStatusBar: TRzProgressBar;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure InitProgress( Texto : String ; Parts : Integer );
    procedure NextStep( Texto : String );
  end;

var
  frmProgressModule: TfrmProgressModule;

implementation

{$R *.dfm}

procedure TfrmProgressModule.FormCreate(Sender: TObject);
var
  FileName : String;
begin
  inherited;
  FileName := ExtractFilePath(ParamStr(0)) + '\include\104.avi';
  If FileExists(FileName) then begin
    aviProgress.CommonAVI := aviNone;
    aviProgress.FileName := FileName;
  end else begin
    aviProgress.CommonAVI := aviCopyFiles;
  end;
end;

procedure TfrmProgressModule.InitProgress(Texto: String ; Parts : Integer);
begin
  spTexto.Caption := Texto;
  pbStatusBar.TotalParts := Parts;
  pbStatusBar.PartsComplete := 0;
  aviProgress.Open := True;
  aviProgress.Active := True;
  Update;
end;

procedure TfrmProgressModule.NextStep(Texto: String);
begin
  pbStatusBar.IncPartsByOne;
  spTexto.Caption := Texto;
  aviProgress.Update;
  Update;
  Application.ProcessMessages;
end;

procedure TfrmProgressModule.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
