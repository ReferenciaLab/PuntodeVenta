{********************************************************}
{*   Active Query Builder Component Suite               *}
{*                                                      *}
{*   Copyright (C) 2005 Active Database Software        *}
{*   All rights reserved.                               *}
{*                                                      *}
{********************************************************}

unit QueryBuilderModule;

{$DEFINE FREE}
{-$DEFINE SYNEDIT}

interface

uses
  Windows, Classes, Graphics, Forms, Controls, StdCtrls,
  ExtCtrls, ToolWin, ComCtrls, acQBBase, DB, ADODB, SysUtils,
  DBCtrls, Grids, DBGrids, ImgList, Dialogs,
  acSQL92SynProvider, acSQLBuilderPlainText, acQBADOMetaProvider,

  {**********************************************************}
  {* Please note that to compile this demo application with *}
  {* Free Edition of Active Query Builder you should define *}
  {* FREE conditional symbol in 'aqbdemo.inc' file.         *}
  {**********************************************************}

  {$IFNDEF FREE}
  acMYSQLSynProvider, acMSSQLSynProvider, acPGSQLSynProvider,
  acSQLiteSynProvider, acIBSynProvider, acOracleSynProvider,
  {$ENDIF}

  {$IFDEF SYNEDIT}
  SynMemo, SynEdit, SynEditHighlighter, SynHighlighterSQL,
  {$ENDIF}

  acAST, DBTables, acQBBDEMetaProvider, Buttons, CustomModule, Menus,
  StdActns, ActnList, JvComponent, JvFormPlacement, JvExControls,
  JvEnterTab, cxPC, cxControls, AdvMemo, AdvmSQLS;

type
  TfrmQueryBuilderModule = class(TForm)
    acADOMetadataProvider: TacADOMetadataProvider;
    acSQLBuilderPlainText: TacSQLBuilderPlainText;
    panelBuilder: TPanel;
    splVertical: TSplitter;
    panelBuilderLeft: TPanel;
    panelGrid: TPanel;
    panelGridTop: TPanel;
    DataSource: TDataSource;
    ADOQuery: TADOQuery;
    Grid: TDBGrid;
    DBNavigator: TDBNavigator;
    Bevel2: TBevel;
    imgObjects16: TImageList;
    treeObjects: TTreeView;
    imgObjects32: TImageList;
    acSql92SyntaxProvider: TacSQL92SyntaxProvider;
    pcDatos: TcxPageControl;
    tsDesign: TcxTabSheet;
    QueryBuilder: TacQueryBuilder;
    pnlBottom: TPanel;
    splHorizontal: TSplitter;
    tsResultado: TcxTabSheet;
    DBGrid1: TDBGrid;
    ImageList: TImageList;
    ActionList: TActionList;
    acFileNew: TAction;
    acFileOpen: TAction;
    acFileClose: TWindowClose;
    acFileSave: TAction;
    acFileSaveAs: TAction;
    acFileExit: TAction;
    acEditCut: TEditCut;
    acEditCopy: TEditCopy;
    acEditPaste: TEditPaste;
    acWindowCascade: TWindowCascade;
    acWindowTileHorizontal: TWindowTileHorizontal;
    acWindowTileVertical: TWindowTileVertical;
    acWindowMinimizeAll: TWindowMinimizeAll;
    acWindowArrangeAll: TWindowArrange;
    acHelpAbout: TAction;
    acEditSelectAll: TEditSelectAll;
    acQueryBuild: TAction;
    acQueryRun: TAction;
    acVisualSetup: TAction;
    ToolBar: TToolBar;
    tbNew: TToolButton;
    tbOpen: TToolButton;
    tbSave: TToolButton;
    tsbN1: TToolButton;
    tbCut: TToolButton;
    tbCopy: TToolButton;
    tbPaste: TToolButton;
    tbsN2: TToolButton;
    tbBuildQuery: TToolButton;
    tbRunQuery: TToolButton;
    MainMenu: TMainMenu;
    miFile: TMenuItem;
    miFileNewItem: TMenuItem;
    miFileOpenItem: TMenuItem;
    miFileSaveItem: TMenuItem;
    N1: TMenuItem;
    miFileExitItem: TMenuItem;
    miEdit: TMenuItem;
    miCutItem: TMenuItem;
    miCopyItem: TMenuItem;
    miPasteItem: TMenuItem;
    N2: TMenuItem;
    miSelectAll: TMenuItem;
    miQuery: TMenuItem;
    miQueryBuild: TMenuItem;
    miQueryRun: TMenuItem;
    OpenDialog: TOpenDialog;
    SaveDialog: TSaveDialog;
    editSql: TAdvMemo;
    AdvSQLMemoStyler1: TAdvSQLMemoStyler;
    procedure QueryBuilderDragOver(Sender, Source: TObject;
      X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure QueryBuilderDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure acSQLBuilderPlainTextSQLUpdated(Sender: TObject);
    procedure editSQLExit(Sender: TObject);
    procedure editSQLChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure listTablesDblClick(Sender: TObject);
    procedure cbMSVersionChange(Sender: TObject);
    procedure edMyVersionChange(Sender: TObject);
    procedure QueryBuilderSQLError(Sender: TObject;
      ASQL, AError, AErrToken: String; AErrTokenPos: TacPos);
    procedure sbShowQueryTreeClick(Sender: TObject);
    procedure cbOracleVersionChange(Sender: TObject);
    procedure acQueryRunExecute(Sender: TObject);
    procedure acQueryBuildExecute(Sender: TObject);
    procedure acFileNewExecute(Sender: TObject);
    procedure acFileOpenExecute(Sender: TObject);
    procedure acFileSaveExecute(Sender: TObject);
    procedure acFileExitExecute(Sender: TObject);
  private
    { Private declarations }
    fSQLChanged: Boolean;
    fEditorChanged: Boolean;
    fRun: Boolean;
    fSyntaxProvider: TacBaseSyntaxProvider;
    procedure SetRun(const Value: Boolean);
    procedure SetEditorChanged(const Value: Boolean);
  public
    { Public declarations }
    ConnType: Integer;
    property IsRun: Boolean read fRun write SetRun;
    property EditorChanged: Boolean read fEditorChanged write SetEditorChanged;
    procedure ReloadObjectsTree;
    procedure ShowSQl(sql : String);
  end;

var
  frmQueryBuilderModule : TfrmQueryBuilderModule;

implementation

uses DataModule, Main;

{$R *.dfm}


procedure TfrmQueryBuilderModule.FormCreate(Sender: TObject);
begin
  IsRun := False;
  fSQLChanged := False;
  fEditorChanged := False;

  with editSQL do
  begin
    Parent := pnlBottom;
    Align := alClient;
    OnExit := editSQLExit;
    OnChange := editSQLChange;
  end;
  ReloadObjectsTree;
end;

procedure TfrmQueryBuilderModule.QueryBuilderDragOver(Sender, Source: TObject;
  X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := (Source = treeObjects) and
    (treeObjects.Selected.ImageIndex < 2);
end;

procedure TfrmQueryBuilderModule.QueryBuilderDragDrop(Sender, Source: TObject;
  X, Y: Integer);
var
  ds: TacDataSource;
  usq: TacUnionSubQuery;
  dbobj: TSQLDatabaseObject;
begin
  usq := Sender as TacUnionSubQuery;
  usq.BeginUpdate;
  try
    dbobj := TSQLDatabaseObject(treeObjects.Selected.Data);
    if dbobj <> nil then
    begin
      ds := usq.AddObjectAt(dbobj.QualifiedName, Point(x, y));
      try
        if ds is TacDataSourceObject then
        begin
          usq.AddFKLinksForObject(TacDataSourceObject(ds))
        end
      except;
      end;
    end;
  finally
    usq.EndUpdate;
  end;
end;

procedure TfrmQueryBuilderModule.listTablesDblClick(Sender: TObject);
var
  ds: TacDataSource;
  usq: TacUnionSubQuery;
  objName: string;
begin
  if treeObjects.Selected.ImageIndex = 2 then
  begin
    Exit
  end;

  usq := QueryBuilder.ActiveSubQuery.ActiveUnionSubquery;
  usq.BeginUpdate;
  try
    objName := treeObjects.Selected.Text;
    ds := usq.AddObject(objName);
    try
      if ds is TacDataSourceObject then
      begin
        usq.AddFKLinksForObject(TacDataSourceObject(ds))
      end;
    except;
    end;
  finally
    usq.EndUpdate;
  end;
end;

procedure TfrmQueryBuilderModule.acSQLBuilderPlainTextSQLUpdated(Sender: TObject);
begin
  if not Assigned(editSQL) then
  begin
    Exit
  end;
  editSQL.Lines.Text := acSQLBuilderPlainText.SQL;
  EditorChanged := True;
end;

procedure TfrmQueryBuilderModule.editSQLExit(Sender: TObject);
begin
  if fSQLChanged then
  begin
    QueryBuilder.SQL := editSQL.Lines.Text;
    fSQLChanged := False;
  end;
end;

procedure TfrmQueryBuilderModule.editSQLChange(Sender: TObject);
begin
  fSQLChanged := True;
  EditorChanged := True;
  acFileSave.Enabled := (editSQL.Lines.Text <> '');
end;

procedure TfrmQueryBuilderModule.SetRun(const Value: Boolean);
begin
  fRun := Value;
  if Value then
  begin
    case ConnType of
      0:
      begin
        DataSource.DataSet := ADOQuery;
        ADOQuery.SQL.Assign(editSQL.Lines);
        ADOQuery.Prepared := True;
        if ADOQuery.Prepared then
        begin
          ADOQuery.Open;
          panelGrid.BringToFront;
        end;
      end;
    end
  end
  else
  begin
    if ADOQuery.Active then
    begin
      ADOQuery.Close
    end;
    panelBuilder.BringToFront;
  end;
end;

procedure TfrmQueryBuilderModule.SetEditorChanged(const Value: Boolean);
begin
  fEditorChanged := Value;
end;

procedure TfrmQueryBuilderModule.cbMSVersionChange(Sender: TObject);
begin
  {$IFNDEF FREE}
  if fSyntaxProvider is TacMSSQLSyntaxProvider then
  begin
    with fSyntaxProvider as TacMSSQLSyntaxProvider do
    begin

      case cbMSVersion.ItemIndex of
        0:
        begin
          ServerVersion := svMSSQL7
        end;
        1:
        begin
          ServerVersion := svMSSQL2000
        end;
        2:
        begin
          ServerVersion := svMSSQL2005
        end;
      end;
    end
  end;
  {$ENDIF}
end;

procedure TfrmQueryBuilderModule.cbOracleVersionChange(Sender: TObject);
begin
  {$IFNDEF FREE}
  if fSyntaxProvider is TacOracleSyntaxProvider then
  begin
    with fSyntaxProvider as TacOracleSyntaxProvider do
    begin

      case cbOracleVersion.ItemIndex of
        0:
        begin
          ServerVersion := svOracle7
        end;
        1:
        begin
          ServerVersion := svOracle8
        end;
        2:
        begin
          ServerVersion := svOracle9
        end;
        3:
        begin
          ServerVersion := svOracle10
        end;
      end;
    end
  end;
  {$ENDIF}
end;

procedure TfrmQueryBuilderModule.edMyVersionChange(Sender: TObject);
begin
  {$IFNDEF FREE}
  if fSyntaxProvider is TacMySQLSyntaxProvider then
  begin
    with fSyntaxProvider as TacMySQLSyntaxProvider do
    begin

      ServerVersion := edMyVersion.Text;
      edMyVersion.Text := ServerVersion;
    end
  end
  {$ENDIF}
end;

procedure TfrmQueryBuilderModule.QueryBuilderSQLError(Sender: TObject;
  ASQL, AError, AErrToken: String; AErrTokenPos: TacPos);
begin
  ShowMessage(AError);
  editSQL.SelStart := AErrTokenPos.pos + 1;
  editSQL.SetFocus;
end;

procedure TfrmQueryBuilderModule.sbShowQueryTreeClick(Sender: TObject);
begin
  //QueryBuilder.TreeOptions.TreeVisible := sbShowQueryTree.Down;
end;

procedure TfrmQueryBuilderModule.ReloadObjectsTree;
var
  DBObjects: TStringList;
  FolderNode: TTreeNode;
  i: Integer;
begin
  treeObjects.Items.BeginUpdate;
  try
    treeObjects.Items.Clear;

    QueryBuilder.RefreshMetadata;
    DBObjects := TStringList.Create;
    try

      // adding tables
      DBObjects.Sorted := True;
      QueryBuilder.GetTableNames(DBObjects);
      FolderNode := treeObjects.Items.Add(nil, 'Tables');
      FolderNode.ImageIndex := 3;
      FolderNode.SelectedIndex := 3;
      for i := 0 to DBObjects.Count - 1 do
      begin
        with treeObjects.Items.AddChild(FolderNode, DBObjects[i]) do
        begin
          ImageIndex := 0;
          SelectedIndex := 0;
          Data := DBObjects.Objects[i];
        end
      end;
      FolderNode.Expand(False);

      // adding views
      DBObjects.Clear;
      QueryBuilder.GetViewNames(DBObjects);
      FolderNode := treeObjects.Items.Add(nil, 'Views');
      FolderNode.ImageIndex := 3;
      FolderNode.SelectedIndex := 3;
      for i := 0 to DBObjects.Count - 1 do
      begin
        with treeObjects.Items.AddChild(FolderNode, DBObjects[i]) do
        begin
          ImageIndex := 1;
          SelectedIndex := 1;
          Data := DBObjects.Objects[i];
        end
      end;
      FolderNode.Expand(False);

      // adding procedures
      DBObjects.Clear;
      QueryBuilder.GetProcedureNames(DBObjects);
      FolderNode := treeObjects.Items.Add(nil, 'Procedures');
      FolderNode.ImageIndex := 3;
      FolderNode.SelectedIndex := 3;
      for i := 0 to DBObjects.Count - 1 do
      begin
        with treeObjects.Items.AddChild(FolderNode, DBObjects[i]) do
        begin
          ImageIndex := 2;
          SelectedIndex := 2;
          Data := DBObjects.Objects[i];
        end
      end;
      FolderNode.Expand(False);

    finally
      DBObjects.Free;
    end;
  finally
    treeObjects.Items.EndUpdate;
  end;
end;

procedure TfrmQueryBuilderModule.ShowSQl(sql: String);
begin
  QueryBuilder.SQL := sql;
  ShowModal;
end;

procedure TfrmQueryBuilderModule.acQueryRunExecute(Sender: TObject);
begin
  pcDatos.ActivePage := tsResultado;
  ADOQuery.Close;
  ADOQuery.SQL.Text := QueryBuilder.SQL;
  ADOQuery.Open;
end;

procedure TfrmQueryBuilderModule.acQueryBuildExecute(Sender: TObject);
begin
  ADOQuery.Close;
  pcDatos.ActivePage := tsDesign;
end;

procedure TfrmQueryBuilderModule.acFileNewExecute(Sender: TObject);
begin
  if pcDatos.ActivePage = tsResultado then
    pcDatos.ActivePage := tsDesign;
  QueryBuilder.SQL := '';
  editSQL.Lines.Text := '';
end;

procedure TfrmQueryBuilderModule.acFileOpenExecute(Sender: TObject);
begin
  if OpenDialog.Execute then begin
    if pcDatos.ActivePage = tsResultado then
      pcDatos.ActivePage := tsDesign;
    editSQL.Lines.LoadFromFile(OpenDialog.FileName);
    editSQLChange(Sender);
  end;
end;

procedure TfrmQueryBuilderModule.acFileSaveExecute(Sender: TObject);
begin
  if SaveDialog.Execute then
    editSQL.Lines.SaveToFile(SaveDialog.FileName);
end;

procedure TfrmQueryBuilderModule.acFileExitExecute(Sender: TObject);
begin
  Close;
end;

end.
