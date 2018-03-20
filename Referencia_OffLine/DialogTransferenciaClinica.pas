unit DialogTransferenciaClinica;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DialogModule, Menus, cxLookAndFeelPainters, dxLayoutControl,
  StdCtrls, cxButtons, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxCurrencyEdit, db, cxintl, cxGraphics, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox;

type
  TfrmDialogTransferenciaClinica = class(TfrmDialogModule)
    edPoliza: TcxTextEdit;
    lcDialogItem2: TdxLayoutItem;
    CbDoctor: TcxExtLookupComboBox;
    lcDialogItem1: TdxLayoutItem;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Run;
  end;

var
  frmDialogTransferenciaClinica: TfrmDialogTransferenciaClinica;

implementation

uses Main, DataModule;

{$R *.dfm}

procedure TfrmDialogTransferenciaClinica.Run;
begin
 DM.qrParametro.Close;
 DM.qrParametro.Open;

 EdPoliza.Text := '';
 CbDoctor.Text := '';

 showmodal;
 If ModalResult = mrOk Then
   Begin
     frmMain.frmTransferencia._doctor := UpperCase(CbDoctor.Text);
     frmMain.frmTransferencia._poliza := UpperCase(EdPoliza.Text);
   end;
end;


end.
