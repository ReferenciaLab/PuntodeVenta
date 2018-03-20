unit DialogEstadoParam;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DialogModule, DB, ADODB, cxContainer, cxEdit, cxTextEdit,
  cxCurrencyEdit, dxLayoutControl, StdCtrls, cxButtons, cxControls; 

type
  TfrmDialogEstadoParam = class(TfrmDialogModule)
    cePar1: TcxCurrencyEdit;
    liPar1: TdxLayoutItem;
    cePar2: TcxCurrencyEdit;
    liPar2: TdxLayoutItem;
    cePar3: TcxCurrencyEdit;
    liPar3: TdxLayoutItem;
    cePar4: TcxCurrencyEdit;
    liPar4: TdxLayoutItem;
    qrEstado: TADOQuery;
    qrEstadoEstadoID: TStringField;
    qrEstadoDescripcion: TStringField;
    qrEstadoTitulo: TStringField;
    qrEstadoSubTitulo: TStringField;
    qrEstadoColumna1: TStringField;
    qrEstadoColumna2: TStringField;
    qrEstadoColumna3: TStringField;
    qrEstadoColumna4: TStringField;
    qrEstadoTipoDeEstado: TSmallintField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure GetParametros( Estado : String );
  end;

var
  frmDialogEstadoParam: TfrmDialogEstadoParam;

implementation

uses DataModule;

{$R *.dfm}

{ TfrmDialogModule1 }

procedure TfrmDialogEstadoParam.GetParametros(Estado: String);
begin
  qrEstado.Close;
  qrEstado.Parameters.ParamByName('pEstado').Value := Estado;
  qrEstado.Open;
  //
  Caption := qrEstadoTitulo.Text;
  //
  cePar1.Value := 0;
  cePar2.Value := 0;
  cePar3.Value := 0;
  cePar4.Value := 0;
  //
  if qrEstadoColumna1.Text <> '' then begin
    liPar1.Caption := qrEstadoColumna1.Text;
    cePar1.Enabled := True;
  end;
  if qrEstadoColumna2.Text <> '' then begin
    liPar2.Caption := qrEstadoColumna2.Text;
    cePar2.Enabled := True;
  end;
  if qrEstadoColumna3.Text <> '' then begin
    liPar3.Caption := qrEstadoColumna3.Text;
    cePar3.Enabled := True;
  end;
  if qrEstadoColumna4.Text <> '' then begin
    liPar4.Caption := qrEstadoColumna4.Text;
    cePar4.Enabled := True;
  end;
  //
  ShowModal;
end;

end.
