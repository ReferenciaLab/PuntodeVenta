unit DatosClientesParametros2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxLayoutControl, cxControls, cxTextEdit, cxDBEdit, cxContainer,
  cxEdit, cxCheckBox, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons,
  dbTables,db, cxCurrencyEdit, cxGraphics, cxImageComboBox, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit, cxSpinEdit,
  cxDBExtLookupComboBox;

type
  TfrmDatosClientesParametros2 = class(TForm)
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutGroup3: TdxLayoutGroup;
    LgSeguros: TdxLayoutGroup;
    cxDBCheckBox2: TcxDBCheckBox;
    dxLayoutControl2Item5: TdxLayoutItem;
    cxDBCheckBox12: TcxDBCheckBox;
    dxLayoutControl2Item6: TdxLayoutItem;
    cxDBCheckBox13: TcxDBCheckBox;
    dxLayoutControl2Item7: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutControl2Item11: TdxLayoutItem;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Run;
  end;

var
  frmDatosClientesParametros2: TfrmDatosClientesParametros2;

implementation

uses ActionsDM, DataModule, Main, DatosClientes;

{$R *.dfm}

procedure TfrmDatosClientesParametros2.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = Vk_Down) then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);
  if (key = 13) then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);
  if (key = Vk_Up) then
     PostMessage(Handle, Wm_NextDlgCtl, 1, 0);
  if (key = 27) then
  begin
   Close;
  end;
end;

procedure TfrmDatosClientesParametros2.Run;
begin
 showmodal;
end;


END. 
