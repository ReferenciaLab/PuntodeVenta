unit DatosClientesParametros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxLayoutControl, cxControls, cxTextEdit, cxDBEdit, cxContainer,
  cxEdit, cxCheckBox, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons,
  dbTables,db, cxCurrencyEdit, cxGraphics, cxImageComboBox, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit, cxSpinEdit,
  cxDBExtLookupComboBox;

type
  TfrmDatosClientesParametros = class(TForm)
    dxLayoutControl2: TdxLayoutControl;
    CbPruebas: TcxDBSpinEdit;
    CbCoberturaPorc: TcxDBCurrencyEdit;
    cxDBCheckBox4: TcxDBCheckBox;
    cxDBCheckBox6: TcxDBCheckBox;
    dxLayoutGroup3: TdxLayoutGroup;
    LgSeguros: TdxLayoutGroup;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    CbMoneda: TcxDBLookupComboBox;
    dxLayoutControl2Item1: TdxLayoutItem;
    CbQuienPaga: TcxDBImageComboBox;
    dxLayoutControl2Item2: TdxLayoutItem;
    CbEntregaResultados: TcxDBImageComboBox;
    dxLayoutControl2Item3: TdxLayoutItem;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutControl2Item4: TdxLayoutItem;
    cxDBCheckBox2: TcxDBCheckBox;
    dxLayoutControl2Item5: TdxLayoutItem;
    cxDBCheckBox12: TcxDBCheckBox;
    dxLayoutControl2Item6: TdxLayoutItem;
    cxDBCheckBox13: TcxDBCheckBox;
    dxLayoutControl2Item7: TdxLayoutItem;
    cxDBCheckBox14: TcxDBCheckBox;
    dxLayoutControl2Item8: TdxLayoutItem;
    cxDBCheckBox15: TcxDBCheckBox;
    dxLayoutControl2Item9: TdxLayoutItem;
    cxDBCheckBox16: TcxDBCheckBox;
    dxLayoutControl2Item10: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutControl2Item11: TdxLayoutItem;
    CbPacienteCia: TcxDBExtLookupComboBox;
    dxLayoutControl2Item13: TdxLayoutItem;
    cxDBCheckBox3: TcxDBCheckBox;
    dxLayoutControl2Item14: TdxLayoutItem;
    EdGrupoPrecio: TcxDBTextEdit;
    dxLayoutControl2Item15: TdxLayoutItem;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Run;
  end;

var
  frmDatosClientesParametros: TfrmDatosClientesParametros;

implementation

uses ActionsDM, DataModule, Main, DatosClientes;

{$R *.dfm}


procedure TfrmDatosClientesParametros.FormKeyDown(Sender: TObject; var Key: Word;
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


procedure TfrmDatosClientesParametros.Run;
begin
 showmodal;
end;


END. 
