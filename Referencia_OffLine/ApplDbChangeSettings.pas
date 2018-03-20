unit ApplDbChangeSettings;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, JvExControls, JvComponent, JvAnimatedImage,
  JvGIFCtrl, ExtCtrls;

type
  TfrmApplDBChangeSettings = class(TForm)
    lblCaption: TLabel;
    pbProgress: TProgressBar;
    jvAnimator: TJvGIFAnimator;
    Shape1: TShape;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmApplDBChangeSettings: TfrmApplDBChangeSettings;

implementation

{$R *.dfm}

procedure TfrmApplDBChangeSettings.FormCreate(Sender: TObject);
begin
  jvAnimator.Animate := True;
end;

end.
