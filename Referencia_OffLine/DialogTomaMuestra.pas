unit DialogTomaMuestra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DialogModule, Menus, cxLookAndFeelPainters, dxLayoutControl,
  StdCtrls, cxButtons, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxCurrencyEdit, db, ADODB, cxintl;

type
  TfrmDialogTomaMuestra = class(TfrmDialogModule)
    edFactura: TcxTextEdit;
    lcDialogItem2: TdxLayoutItem;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Run;
  end;

var
  frmDialogTomaMuestra: TfrmDialogTomaMuestra;

implementation

uses Main, DataModule;

{$R *.dfm}

procedure TfrmDialogTomaMuestra.Run;
Var
 qfind  : TADOQuery;
begin
 EdFactura.Text := '';
 showmodal;
 If ModalResult = mrOk Then
   Begin
     If (EdFactura.Text <> '') Then
       Begin
         qfind := DM.Find('SELECT * FROM PTEntradaPaciente WHERE MuestraNo = :reg', EdFactura.Text);

         if (qfind.RecordCount > 0) then
           Begin
            frmMain.frmTmpMuestra.muestranumber := EdFactura.Text;
            frmMain.frmTmpMuestra.recid := qfind.FieldByName('Recid').Value;;
            frmMain.frmTmpMuestra.BuscarDatos;
           end
         Else
           Raise exception.CreateFmt('El Numero de Muestra: ('+ EdFactura.Text +') NO Existe.', []);

         FreeAndNil(qfind);
       end
     Else
       Raise exception.CreateFmt('Debe Registrar el Numero de Laboratorio Para Realizar la Toma de Muestra.', []);
   end;
end;


end.

