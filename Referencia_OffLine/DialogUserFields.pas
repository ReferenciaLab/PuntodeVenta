unit DialogUserFields;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DialogModule, cxLookAndFeelPainters, dxLayoutControl, StdCtrls,
  cxButtons, cxControls, DB, ADODB, cxMemo, cxDBEdit, cxDropDownEdit,
  cxCalendar, cxCurrencyEdit, cxMaskEdit, cxSpinEdit, cxContainer, cxEdit,
  cxTextEdit, Menus, cxintl;

type
  TfrmDialogUserFields = class(TfrmDialogModule)
    qrTabla: TADOQuery;
    dsTabla: TDataSource;
    qrUserFields: TADOQuery;
    qrUserFieldsTabla: TStringField;
    qrUserFieldsNombre: TStringField;
    qrUserFieldsAlias: TStringField;
    qrUserFieldsTipo: TIntegerField;
    qrUserFieldsLongitud: TIntegerField;
    qrUserFieldsRequerido: TBooleanField;
    qrUserFieldsSecuencia: TIntegerField;
    procedure btAceptarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ShowUserFields( Tabla : String; BookMark : TBookmark; State : TDataSetState );
  end;

var
  frmDialogUserFields: TfrmDialogUserFields;

implementation

uses DataModule, StrUtils;

{$R *.dfm}

{ TfrmDialogUserFields }

procedure TfrmDialogUserFields.ShowUserFields(Tabla: String;
  BookMark: TBookmark; State: TDataSetState);
var
  i  : Integer;
  li : TdxLayoutItem;
  strEdit : TcxDBTextEdit;
  dteEdit : TcxDBDateEdit;
  intEdit : TcxDBSpinEdit;
  curEdit : TcxDBCurrencyEdit;
  memEdit : TcxDBMemo;
begin
  qrTabla.Close;
  qrTabla.SQL.Text := 'SELECT * FROM ' + Tabla;
  qrTabla.Open;
  //
  qrUserFields.Close;
  qrUserFields.Parameters.ParamByName('pTabla').Value := Tabla;
  qrUserFields.Open;
  while not qrUserFields.Eof do begin
    case qrUserFieldsTipo.Value of
      1:Begin
          strEdit := TcxDbTextEdit.Create(Self);
          strEdit.DataBinding.DataSource := dsTabla;
          strEdit.DataBinding.DataField := qrUserFieldsNombre.Text;
          li := lcDialogGroup1.CreateItemForControl(strEdit);
          li.Caption := qrUserFieldsAlias.Text;
        End;
      2:Begin
          intEdit := TcxDbSpinEdit.Create(Self);
          intEdit.DataBinding.DataSource := dsTabla;
          intEdit.DataBinding.DataField := qrUserFieldsNombre.Text;
          li := lcDialogGroup1.CreateItemForControl(intEdit);
          li.Caption := qrUserFieldsAlias.Text;
        End;
      3:Begin
          curEdit := TcxDBCurrencyEdit.Create(Self);
          curEdit.DataBinding.DataSource := dsTabla;
          curEdit.DataBinding.DataField := qrUserFieldsNombre.Text;
          li := lcDialogGroup1.CreateItemForControl(curEdit);
          li.Caption := qrUserFieldsAlias.Text;
        End;
      4:Begin
          dteEdit := TcxDBDateEdit.Create(Self);
          dteEdit.DataBinding.DataSource := dsTabla;
          dteEdit.DataBinding.DataField := qrUserFieldsNombre.Text;
          li := lcDialogGroup1.CreateItemForControl(dteEdit);
          li.Caption := qrUserFieldsAlias.Text;
        End;
      5:Begin
          memEdit := TcxDBMemo.Create(Self);
          memEdit.DataBinding.DataSource := dsTabla;
          memEdit.DataBinding.DataField := qrUserFieldsNombre.Text;
          li := lcDialogGroup1.CreateItemForControl(memEdit);
          li.Caption := qrUserFieldsAlias.Text;
        End;
    end;
    qrUserFields.Next;
  end;
  qrTabla.GotoBookmark(BookMark);
  qrTabla.FreeBookmark(BookMark);
  SetComponentsColor(DM.ColorModifica);
  qrTabla.Edit;
  //
  ShowModal;
end;


procedure TfrmDialogUserFields.btAceptarClick(Sender: TObject);
begin
  qrTabla.Post;
  inherited;
end;


procedure TfrmDialogUserFields.btCancelarClick(Sender: TObject);
begin
  qrTabla.Cancel;
  inherited;
end;


end.



