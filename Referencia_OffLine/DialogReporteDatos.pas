unit DialogReporteDatos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DialogModule, cxLookAndFeelPainters, dxLayoutControl, StdCtrls,
  cxButtons, cxControls, cxMaskEdit, cxButtonEdit, cxDBEdit, cxContainer,
  cxEdit, cxTextEdit, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxImageComboBox, cxMemo, cxBlobEdit,
  cxSpinEdit, ADODB, cxDropDownEdit, ImgList, Menus, ABSMain, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox;

type
  TfrmDialogReporteDatos = class(TfrmDialogModule)
    cxDBTextEdit1: TcxDBTextEdit;
    lcDialogItem3: TdxLayoutItem;
    beFileName: TcxDBButtonEdit;
    liReport: TdxLayoutItem;
    OpenDlg: TOpenDialog;
    lcDialogGroup3: TdxLayoutGroup;
    tvRepParam: TcxGridDBTableView;
    grRepParamLevel: TcxGridLevel;
    grRepParam: TcxGrid;
    lcDialogItem5: TdxLayoutItem;
    dsRepParam: TDataSource;
    tvRepParamName: TcxGridDBColumn;
    tvRepParamCaption: TcxGridDBColumn;
    tvRepParamItemType: TcxGridDBColumn;
    tvRepParamDefault: TcxGridDBColumn;
    tvRepParamDBColumn1: TcxGridDBColumn;
    cxDBImageComboBox1: TcxDBImageComboBox;
    lcDialogItem6: TdxLayoutItem;
    ilPermisos: TImageList;
    beSqlText: TcxDBBlobEdit;
    liQuery: TdxLayoutItem;
    dsItem: TDataSource;
    lcDialogGroup4: TdxLayoutGroup;
    qrItem: TABSQuery;
    qrItemFolderId: TIntegerField;
    qrItemName: TStringField;
    qrItemSize: TIntegerField;
    qrItemItemType: TIntegerField;
    qrItemModified: TDateTimeField;
    qrItemDeleted: TDateTimeField;
    qrItemReportName: TStringField;
    qrItemSqlText: TMemoField;
    tblRepParam: TABSTable;
    tblRepParamCaption: TStringField;
    tblRepParamItemType: TIntegerField;
    tblRepParamDefault: TStringField;
    tblRepParamLastValue: TStringField;
    tblRepParamValuesList: TMemoField;
    tblRepParamName: TIntegerField;
    tblRepParamItemId: TIntegerField;
    qrItemItemId: TAutoIncField;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    liFolder: TdxLayoutItem;
    qrFolders: TABSQuery;
    dsFoldres: TDataSource;
    procedure beFileNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure tblRepParamNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure grRepParamEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDialogReporteDatos: TfrmDialogReporteDatos;

implementation

uses RepExplorer, DataModule, ADOInt;

{$R *.dfm}

procedure TfrmDialogReporteDatos.beFileNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if OpenDlg.Execute then begin
    tblRepParam.MasterSource.DataSet.FieldByName('ReportName').Value := ExtractFileName( OpenDlg.FileName );
  end;
end;

procedure TfrmDialogReporteDatos.tblRepParamNewRecord(DataSet: TDataSet);
begin
  inherited;
  tblRepParamItemId.Value := tblRepParam.MasterSource.DataSet.FieldByName('ItemId').Value;
end;

procedure TfrmDialogReporteDatos.FormCreate(Sender: TObject);
begin
  inherited;
  qrFolders.Close;
  qrFolders.Open;
  tblRepParam.Close;
  tblRepParam.Open;
end;

procedure TfrmDialogReporteDatos.grRepParamEnter(Sender: TObject);
begin
  inherited;
  if qrItem.State = dsInsert then begin
    qrItem.Post;
    qrItem.Edit;
  end;
end;

end.
