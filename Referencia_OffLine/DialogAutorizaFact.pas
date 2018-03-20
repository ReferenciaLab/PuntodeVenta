unit DialogAutorizaFact;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxLayoutControl, cxControls, cxTextEdit, cxDBEdit, cxContainer,
  cxEdit, cxCheckBox, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons,
  dbTables,db, cxCurrencyEdit;

type
  TfrmDialogAutorizacion = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    BtAceptar: TcxButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    edValor: TcxTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    procedure BtAceptarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Run;
  end;

var
  frmDialogAutorizacion: TfrmDialogAutorizacion;

implementation

uses ActionsDM, DataModule, Main, PuntoVenta, PuntoVentaMod;

{$R *.dfm}


procedure TfrmDialogAutorizacion.FormKeyDown(Sender: TObject; var Key: Word;
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


procedure TfrmDialogAutorizacion.Run;
begin
  showmodal;
end;


procedure TfrmDialogAutorizacion.BtAceptarClick(Sender: TObject);
begin
 Tiene_Balance :=0;
 If (Length(Edvalor.Text) > 1) then
   Begin
     If Factura_st = 'I' then
     Begin
       if Edvalor.Text = FormatDateTime('yyyymmdd', DM.SystemDate)+'REFERENCIA' then
       begin
         Tiene_Balance :=1;
       end;
     end
     else
     If Factura_st = 'M' then
     Begin
       if Edvalor.Text = FormatDateTime('yyyymmdd', DM.SystemDate)+'REFERENCIA' then
       begin
         Tiene_Balance :=1;
       end;
     end
     else
     If Factura_st = 'F' then
     Begin
       if Edvalor.Text = FormatDateTime('yyyymmdd', DM.SystemDate)+'REFERENCIA' then
       begin
         Tiene_Balance :=1;
       end;
     end
   end
 Else
   DM.Error('El Valor Registrado Esta en Cero. Por Favor Verifique.!!!');
end;
end.
