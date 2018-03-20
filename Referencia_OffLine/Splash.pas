unit Splash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, JvGradient, JvWaitingGradient, JvExControls,
  JvComponent, JvGIF, RzBckgnd, PymeConst;

type
  TfrmSplash = class(TForm)
    Shape1: TShape;
    ProductName: TLabel;
    imgKey: TImage;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edUsuario: TEdit;
    edClave: TEdit;
    btnOk: TButton;
    btnCancel: TButton;
    RzSeparator1: TRzSeparator;
    Image1: TImage;
    procedure btnOkClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSplash: TfrmSplash;

implementation

uses DataModule;

{$R *.dfm}

procedure TfrmSplash.btnOkClick(Sender: TObject);
begin
  if DM.CheckUser(edUsuario.Text, edClave.Text) then begin
    DM.IsLogged := True;
    Close;
  end
  else
    ShowMessage(SUsuarioClaveNoE);
end;

procedure TfrmSplash.btnCancelClick(Sender: TObject);
begin
  DM.IsLogged := False;
end;

procedure TfrmSplash.FormCreate(Sender: TObject);
begin
  ProductName.Caption := Application.Title;
end;

end.
