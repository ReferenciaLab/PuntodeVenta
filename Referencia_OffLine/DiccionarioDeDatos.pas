unit DiccionarioDeDatos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomModule, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, dxLayoutControl,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, ADODB, Menus, StdActns,
  ActnList, JvComponent, JvFormPlacement, cxSpinEdit, cxDropDownEdit,
  cxImageComboBox, cxTextEdit, cxContainer, cxMaskEdit,
  cxLookAndFeelPainters, StdCtrls, cxButtons, JvExControls, JvEnterTab,
  JvSpeedButton, RzLabel, RzBckgnd, ExtCtrls, PymeConst, JvComponentBase,
  ABSMain;

type
  TfrmDiccionarioDeDatos = class(TfrmCustomModule)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dsRbTables: TDataSource;
    dsRbFields: TDataSource;
    lgTablas: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    grTablas: TcxGrid;
    tvTablas: TcxGridDBTableView;
    tvTablasTableName: TcxGridDBColumn;
    tvTablasTableAlias: TcxGridDBColumn;
    grTablasLevel1: TcxGridLevel;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    grCampos: TcxGrid;
    tvCampos: TcxGridDBTableView;
    tvCamposTableName: TcxGridDBColumn;
    tvCamposFieldName: TcxGridDBColumn;
    tvCamposFieldAlias: TcxGridDBColumn;
    tvCamposSelectable: TcxGridDBColumn;
    tvCamposSearchable: TcxGridDBColumn;
    tvCamposSortable: TcxGridDBColumn;
    tvCamposDataType: TcxGridDBColumn;
    tvCamposAutoSearch: TcxGridDBColumn;
    tvCamposMandatory: TcxGridDBColumn;
    grCamposLevel1: TcxGridLevel;
    dxLayoutControl1Item2: TdxLayoutItem;
    edNombre: TcxMaskEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    edAlias: TcxTextEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    edTipo: TcxImageComboBox;
    dxLayoutControl1Item5: TdxLayoutItem;
    edAncho: TcxSpinEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    btAddField: TcxButton;
    dxLayoutControl1Item7: TdxLayoutItem;
    cmdALTER: TADOCommand;
    taRbTables: TABSTable;
    taRbFields: TABSTable;
    taRbFieldsTableName: TStringField;
    taRbFieldsFieldName: TStringField;
    taRbFieldsFieldAlias: TStringField;
    taRbFieldsSelectable: TStringField;
    taRbFieldsSearchable: TStringField;
    taRbFieldsSortable: TStringField;
    taRbFieldsDataType: TStringField;
    taRbFieldsAutoSearch: TStringField;
    taRbFieldsMandatory: TStringField;
    taRbFieldsFieldSize: TSmallintField;
    procedure taRbFieldsBeforeDelete(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure btAddFieldClick(Sender: TObject);
  private
    { Private declarations }
    procedure ClearFields;
  public
    { Public declarations }
    procedure ShowTabla( TableName : String );
  end;

var
  frmDiccionarioDeDatos: TfrmDiccionarioDeDatos;

implementation

uses ReportsDM, DataModule, ActionsDM, StrUtils;

{$R *.dfm}

procedure TfrmDiccionarioDeDatos.taRbFieldsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if LeftStr(taRbFields.FieldByName('FieldName').AsString,4) <> 'USR_' then begin
    Beep;
    DM.Error(SNoSePuedeEliminar);
    Abort;
  end;

  if MessageDlg(SSeguroQueDeseaEli2+#13+#10+''+#13+#10+SNOTATodosLosDato, mtConfirmation, [mbYes,mbNo], 0) = mrNo then
    Abort;

  cmdAlter.CommandText := 'ALTER TABLE ' + taRbFields.FieldByName('TableName').AsString +
                          ' DROP COLUMN ' + taRbFields.FieldByName('FieldName').AsString;
  cmdAlter.Execute;
end;

procedure TfrmDiccionarioDeDatos.FormCreate(Sender: TObject);
begin
  inherited;
  taRbTables.Close;
  taRbTables.Open;
  taRbFields.Close;
  taRbFields.Open;
  //
  ClearFields;
end;

procedure TfrmDiccionarioDeDatos.ClearFields;
begin
  edNombre.Text := 'USR_';
  edAlias.Text := '';
  edTipo.EditValue := 1;
  edAncho.Value := 1;
end;

procedure TfrmDiccionarioDeDatos.btAddFieldClick(Sender: TObject);
var
  TableName : String;
  sTipo : String;
begin
  inherited;
  TableName := taRbTables.FieldByName('TableName').AsString;
  case edTipo.EditValue of
    1:Begin
        sTipo := 'dtString';
        cmdAlter.CommandText := 'ALTER TABLE ' + TableName + ' ADD ' + edNombre.Text +
                                   ' VARCHAR( ' + edAncho.EditText + ') NULL';
      End;
    2:Begin
        sTipo := 'dtInteger';
        cmdAlter.CommandText := 'ALTER TABLE ' + TableName + ' ADD ' + edNombre.Text +
                                   ' INT NULL';
      End;
    3:Begin
        sTipo := 'dtDouble';
        cmdAlter.CommandText := 'ALTER TABLE ' + TableName + ' ADD ' + edNombre.Text +
                                   ' MONEY NULL';
      End;
    4:Begin
        sTipo := 'dtDateTime';
        cmdAlter.CommandText := 'ALTER TABLE ' + TableName + ' ADD ' + edNombre.Text +
                                   ' DATETIME NULL';
      End;
    5:Begin
        sTipo := 'dtMemo';
        cmdAlter.CommandText := 'ALTER TABLE ' + TableName + ' ADD ' + edNombre.Text +
                                   ' TEXT  NULL';
      End;
    6:Begin
        sTipo := 'dtBoolean';
        cmdAlter.CommandText := 'ALTER TABLE ' + TableName + ' ADD ' + edNombre.Text +
                                   ' BIT NULL';
      End;
  end;
  cmdAlter.Execute;
  taRbFields.Append;
  taRbFieldsTableName.Text := TableName;
  taRbFieldsFieldName.Text := edNombre.Text;
  taRbFieldsFieldAlias.Text := edAlias.Text;
  taRbFieldsSelectable.Text := 'T';
  taRbFieldsSearchable.Text := 'T';
  taRbFieldsSortable.Text := 'T';
  taRbFieldsAutoSearch.Text := 'T';
  taRbFieldsDataType.Text := sTipo;
  taRbFieldsFieldSize.Value := edAncho.EditValue;
  taRbFields.Post;
  //DMReports.ppDataDictionary.AppendFieldRecord( TableName, edNombre.Text, edAlias.Text, 'T', 'T', 'T', 'T', sTipo);
  ClearFields;
  taRbFields.Close;
  taRbFields.Open;
end;

procedure TfrmDiccionarioDeDatos.ShowTabla(TableName: String);
begin
  taRbTables.Locate('TableName',TableName,[]);
  lgTablas.Visible := False;
  Caption := Caption + ' - ' + TableName;
end;

end.
