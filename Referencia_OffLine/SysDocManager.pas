unit SysDocManager;

interface                    

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomModule, Menus, StdActns, ActnList, JvComponent,
  JvFormPlacement, JvExControls, JvEnterTab, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, DB, ADODB, dxLayoutControl,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid, OleCtrls,
  SHDocVw, cxContainer, cxEdit, cxTextEdit, cxMemo, cxDBEdit,
  JvStringHolder, JvSpeedButton, StdCtrls, RzLabel, RzBckgnd, ExtCtrls, PymeConst,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData,
  cxImageComboBox, cxButtonEdit, JvComponentBase;

type
  TfrmSysDocManager = class(TfrmCustomModule)
    lcPrincipalGroup_Root: TdxLayoutGroup;
    lcPrincipal: TdxLayoutControl;
    lcPrincipalGroup1: TdxLayoutGroup;
    lcPrincipalGroup2: TdxLayoutGroup;
    tvSysDoc: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    lcPrincipalItem1: TdxLayoutItem;
    qrSysDoc: TADOQuery;
    dsSysDoc: TDataSource;
    tvSysDocTipo: TcxGridDBColumn;
    tvSysDocAlias: TcxGridDBColumn;
    tvSysDocArchivo: TcxGridDBColumn;
    tvSysDocNota: TcxGridDBColumn;
    qrSysDocDocId: TLargeintField;
    qrSysDocTableID: TStringField;
    qrSysDocRecordID: TStringField;
    qrSysDocTipo: TIntegerField;
    qrSysDocAlias: TStringField;
    qrSysDocArchivo: TStringField;
    qrSysDocNota: TMemoField;
    OpenDlg: TOpenDialog;
    Browser: TWebBrowser;
    lcPrincipalItem2: TdxLayoutItem;
    cxDBMemo1: TcxDBMemo;
    lcPrincipalItem3: TdxLayoutItem;
    qrDefaultView: TADOQuery;
    strView: TJvStrHolder;
    procedure qrSysDocNewRecord(DataSet: TDataSet);
    procedure tvSysDocArchivoPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure qrSysDocTipoChange(Sender: TField);
    procedure tvSysDocFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    CurTableId : String;
    CurRecId : String;
    procedure DoDesign;
    procedure DoViews;
  protected
    procedure RegisterActions; override;
    procedure LoadFormLayOut; virtual;
  public
    { Public declarations }
    Procedure ShowSysDocs( TableId : String ; RecId : String );
    procedure ActionDesignNotification( Action : TBasicAction );
    procedure ActionViewsNotification( Action : TBasicAction );
  end;

var
  frmSysDocManager: TfrmSysDocManager;

implementation

uses ActionsDM, DataModule, DialogFormViews;

{$R *.dfm}

{ TfrmSysDocManager }

procedure TfrmSysDocManager.ShowSysDocs(TableId, RecId: String);
begin
  CurTableId := TableId;
  CurRecId := RecId;
  //
  qrSysDoc.Close;
  qrSysDoc.Parameters.ParamByName('pTable').Value := CurTableId;
  qrSysDoc.Parameters.ParamByName('pRecord').Value := CurRecId;
  qrSysDoc.Open;
  //
  Caption := SGestionDeDocumento + RecId;
//  Show;
end;

procedure TfrmSysDocManager.qrSysDocNewRecord(DataSet: TDataSet);
begin
  inherited;
  qrSysDocTableID.Value := CurTableId;
  qrSysDocRecordID.Value := CurRecId;
  qrSysDocTipo.Value := 0;
end;

procedure TfrmSysDocManager.tvSysDocArchivoPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if OpenDlg.Execute then begin
    if not ( qrSysDoc.State in [dsEdit,dsInsert] ) then begin
      qrSysDoc.Edit;
      qrSysDocArchivo.Value := OpenDlg.FileName;
      qrSysDoc.Post;
    end else
      qrSysDocArchivo.Value := OpenDlg.FileName;
  end;
end;

procedure TfrmSysDocManager.qrSysDocTipoChange(Sender: TField);
begin
  inherited;
  tvSysDocArchivo.Options.Editing := ( qrSysDocTipo.Value > 0 );
  tvSysDocArchivo.Options.Focusing := tvSysDocArchivo.Options.Editing;
end;

procedure TfrmSysDocManager.tvSysDocFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  if qrSysDocArchivo.AsString <> '' then
    Browser.Navigate(tvSysDocArchivo.EditValue)
  else
    Browser.Navigate('about:blank');
end;

procedure TfrmSysDocManager.RegisterActions;
begin
  inherited;
  RegisterAction(dmAppActions.actDesign, ActionDesignNotification);
  RegisterAction(dmAppActions.actVistas, ActionViewsNotification );
end;

procedure TfrmSysDocManager.ActionDesignNotification(Action: TBasicAction);
begin
  DoDesign;
end;

procedure TfrmSysDocManager.DoDesign;
begin
  lcPrincipal.Customization := True;
end;

procedure TfrmSysDocManager.ActionViewsNotification(Action: TBasicAction);
begin
  DoViews;
end;

procedure TfrmSysDocManager.DoViews;
begin
  frmDlgFormViews := TfrmDlgFormViews.Create(Self);
  frmDlgFormViews.ManageLayOut( Name, Caption, lcPrincipal );
end;

procedure TfrmSysDocManager.LoadFormLayOut;
var
  grCol : TcxGridDbColumn;
  curField : TField;
  i : Integer;
  FileName : String;
begin
  qrDefaultView.Close;
  qrDefaultView.Parameters.ParamByName('pUser').Value := DM.CurUser;
  qrDefaultView.Parameters.ParamByName('pForm').Value := Self.Name;
  qrDefaultView.Parameters.ParamByName('pTipo').Value := 2;
  qrDefaultView.Open;
  if ( qrDefaultView.RecordCount > 0 ) then begin
    try
      FileName := ExtractFilePath( ParamStr(0) ) + Name + '_' + qrDefaultView.FieldByName('ViewName').Value + '.pvw';
      if FileExists( FileName ) then
          DeleteFile( FileName );
      strView.Strings.Clear;
      strView.Strings.Text := qrDefaultView.FieldByName('SavedView').Value;
      strView.Strings.SaveToFile( FileName );
      lcPrincipal.LoadFromIniFile( FileName );
      if FileExists( FileName ) then
        DeleteFile( FileName );
    except
      DM.Warning(SNoSePudoRestaurar1);//, mtError, [mbOK], 0);
      raise;
    end;
  end;
end;

procedure TfrmSysDocManager.FormCreate(Sender: TObject);
begin
  inherited;
  LoadFormLayOut;
end;

end.
