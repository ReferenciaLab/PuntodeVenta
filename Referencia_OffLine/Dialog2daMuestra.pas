unit Dialog2daMuestra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DialogModule, Menus, cxLookAndFeelPainters, dxLayoutControl,
  StdCtrls, cxButtons, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxCurrencyEdit, db, cxintl;

type
  TfrmDialog2daMuestra = class(TfrmDialogModule)
    edFactura: TcxTextEdit;
    lcDialogItem2: TdxLayoutItem;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Run;
  end;

var
  frmDialog2daMuestra: TfrmDialog2daMuestra;

implementation

uses Main, DataModule;

{$R *.dfm}

procedure TfrmDialog2daMuestra.Run;
begin
 DM.qrParametro.Close;
 DM.qrParametro.Open;

 EdFactura.Text := '';
 showmodal;
 If ModalResult = mrOk Then
   Begin
     If (EdFactura.Text <> '') Then
       Begin
          if Factura_St = 'I' then
          begin
              if (frmMain.frmTmp.qrEntradaPaciente.State <> dsedit) and
                (frmMain.frmTmp.qrEntradaPaciente.State <> dsinsert) then
                frmMain.frmTmp.qrEntradaPaciente.Edit;
                frmMain.frmTmp.Docto_Ant := UpperCase(EdFactura.Text);
              end
          else
          if Factura_St = 'M' then
          begin
             if (frmMain.frmTmpMod.qrEntradaPaciente.State <> dsedit) and
                (frmMain.frmTmpMod.qrEntradaPaciente.State <> dsinsert) then
                frmMain.frmTmpMod.qrEntradaPaciente.Edit;
                frmMain.frmTmpMod.Docto_Ant := UpperCase(EdFactura.Text);
             end;
          end
     Else
       Raise exception.CreateFmt('Debe Registra el Numero de la Factura Con Pruebas en 2da. Muestra.', []);
   end;
end;


end.

