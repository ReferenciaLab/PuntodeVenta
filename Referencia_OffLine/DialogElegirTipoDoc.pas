unit DialogElegirTipoDoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DialogModule, Menus, cxLookAndFeelPainters, cxContainer, cxEdit,
  cxGroupBox, cxRadioGroup, dxLayoutControl, StdCtrls, cxButtons, cxControls;

type
  TfrmDialogElegirTipoDoc = class(TfrmDialogModule)
    rgTipoDoc: TcxRadioGroup;
    lcDialogItem1: TdxLayoutItem;
  private
    { Private declarations }
  public
    { Public declarations }
    Function GetTipoDoc : Integer;
  end;

var
  frmDialogElegirTipoDoc: TfrmDialogElegirTipoDoc;

implementation

{$R *.dfm}

{ TfrmDialogElegirTipoDoc }

function TfrmDialogElegirTipoDoc.GetTipoDoc: Integer;
begin
  Result := 0;
  ShowModal;
  if ModalResult = mrOk then begin
    case rgTipoDoc.ItemIndex of
      0:Result := -100; // Cooperativa
      1:Result := -200; // Prestamo

    end;
  end;
end;

end.
