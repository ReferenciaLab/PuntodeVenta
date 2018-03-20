unit DialogEnviarCorreo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DialogModule, dxLayoutControl, StdCtrls, cxButtons, cxControls,
  cxMemo, cxGroupBox, cxRadioGroup, cxTextEdit, cxContainer, cxEdit,
  cxMaskEdit, cxDropDownEdit, ActnList, JvActions, Menus, cxLookAndFeelPainters,
  cxintl;

type
  TfrmDialogEnviarCorreo = class(TfrmDialogModule)
    edRecipientes: TcxPopupEdit;
    lcDialogItem1: TdxLayoutItem;
    edConcepto: TcxTextEdit;
    lcDialogItem2: TdxLayoutItem;
    rgFormato: TcxRadioGroup;
    lcDialogItem3: TdxLayoutItem;
    txtContenido: TcxMemo;
    lcDialogItem4: TdxLayoutItem;
    lcDialogGroup3: TdxLayoutGroup;
    alTo: TActionList;
    JvSendMailAction: TJvSendMailAction;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SendReport( ReportName : String ; ReportFile : String );
  end;

var
  frmDialogEnviarCorreo: TfrmDialogEnviarCorreo;

implementation

uses DataModule;

{$R *.dfm}

{ TfrmDialogEnviarCorreo }

procedure TfrmDialogEnviarCorreo.SendReport(ReportName,
  ReportFile: String);
begin
  edConcepto.Text := ReportName;
  rgFormato.ItemIndex := 0;
  txtContenido.Lines.Add( DM.TituloEmpresa );
  txtContenido.Lines.Add( DM.SubTituloEmpresa );
  txtContenido.Lines.Add('');
  txtContenido.Lines.Add('------------------------------------');
  txtContenido.Lines.Add('Envio Reporte: ' + ReportName);
//  txtContenido.Lines.Add('Fecha y Hora' + TimeToStr(Now));
  txtContenido.Lines.Add('Fecha y Hora' + TimeToStr(DM.Buscar_Fecha_Y_Hora));
  ShowModal;
end;

end.
