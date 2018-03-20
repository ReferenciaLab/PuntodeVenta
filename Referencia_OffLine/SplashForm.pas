unit SplashForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzBckgnd, jpeg, JvExExtCtrls, JvBaseThumbnail, JvThumbImage,
  ExtCtrls, StdCtrls;

type
  TfrmSplashForm = class(TForm)
    Panel2: TPanel;
    ProductName: TLabel;
    JvThumbImage1: TJvThumbImage;
    RzSeparator1: TRzSeparator;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSplashForm: TfrmSplashForm;

implementation

{$R *.dfm}

end.
