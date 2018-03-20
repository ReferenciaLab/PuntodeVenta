unit DlgInfoLog;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons, ExtCtrls;

type
  TfrmDlgInfoLog = class(TForm)
    lbInfoLog: TListBox;
    Button1: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDlgInfoLog: TfrmDlgInfoLog;

implementation

{$R *.dfm}

end.
