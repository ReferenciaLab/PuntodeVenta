unit DialogDiccionarioDatos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DialogModule, cxLookAndFeelPainters, dxLayoutControl, StdCtrls,
  cxButtons, cxControls, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxContainer, cxTextEdit,
  cxMaskEdit, ADODB, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid;

type
  TfrmDialogDiccionarioDatos = class(TfrmDialogModule)
    lcDialogGroup3: TdxLayoutGroup;
    lcDialogGroup4: TdxLayoutGroup;
    tvTablas: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    lcDialogItem3: TdxLayoutItem;
    tvTablasTableName: TcxGridDBColumn;
    tvTablasTableAlias: TcxGridDBColumn;
    lcDialogGroup5: TdxLayoutGroup;
    tvCampos: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    lcDialogItem4: TdxLayoutItem;
    tvCamposTableName: TcxGridDBColumn;
    tvCamposFieldName: TcxGridDBColumn;
    tvCamposFieldAlias: TcxGridDBColumn;
    tvCamposSelectable: TcxGridDBColumn;
    tvCamposSearchable: TcxGridDBColumn;
    tvCamposSortable: TcxGridDBColumn;
    tvCamposDataType: TcxGridDBColumn;
    tvCamposAutoSearch: TcxGridDBColumn;
    tvCamposMandatory: TcxGridDBColumn;
    taRbTables: TADOTable;
    dsRbTables: TDataSource;
    taRbFields: TADOTable;
    dsRbFields: TDataSource;
    cxMaskEdit1: TcxMaskEdit;
    lcDialogItem5: TdxLayoutItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDialogDiccionarioDatos: TfrmDialogDiccionarioDatos;

implementation

uses ReportsDM;

{$R *.dfm}

end.
