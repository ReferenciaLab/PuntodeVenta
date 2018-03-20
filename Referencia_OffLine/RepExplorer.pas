unit RepExplorer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OpcionesModule, cxGraphics, cxCustomData, cxStyles, {cxTL,}
  dxLayoutControl, cxInplaceContainer, {cxTLData, cxDBTL,} DB, JvComponent,
  JvFormPlacement, cxControls, cxMaskEdit, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, ImgList, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, cxImageComboBox, cxMemo, cxBlobEdit, cxEditRepositoryItems,
  cxDBEditRepository, cxSpinEdit, dxmdaset, ADODB, JvExControls, JvEnterTab,
  ComCtrls, JvExComCtrls, JvDBTreeView, Menus, StdActns, ActnList,
  JvSpeedButton, StdCtrls, RzLabel, RzBckgnd, ExtCtrls, JvComponentBase;

type
  TfrmRepExplorer = class(TfrmOpcionesModule)
    lcDatosGroup1: TdxLayoutGroup;
    lcDatosGroup2: TdxLayoutGroup;
    lcDatosItem1: TdxLayoutItem;
    tvReportes: TcxGridDBTableView;
    grReportesLevel: TcxGridLevel;
    grReportes: TcxGrid;
    lcDatosItem2: TdxLayoutItem;
    dsReportes: TDataSource;
    tblFolder: TADOTable;
    tvReportesName: TcxGridDBColumn;
    ilFolders: TImageList;
    tblFolderModuleId: TSmallintField;
    tblFolderName: TStringField;
    tblFolderParentId: TIntegerField;
    tblFolderImage: TIntegerField;
    dsRepParam: TDataSource;
    lcDatosGroup3: TdxLayoutGroup;
    tvParametros: TcxGridDBTableView;
    grParametrosLevel1: TcxGridLevel;
    grParametros: TcxGrid;
    lcDatosItem3: TdxLayoutItem;
    tvParametrosCaption: TcxGridDBColumn;
    tvParametrosLastValue: TcxGridDBColumn;
    qrCuentas: TADOQuery;
    dsCuentas: TDataSource;
    qrTiposDocumento: TADOQuery;
    dsTiposDocumetno: TDataSource;
    qrProyectos: TADOQuery;
    dsProyectos: TDataSource;
    mdDimensiones: TdxMemData;
    dsTipoDimensiones: TDataSource;
    mdDimensionesTipo: TSmallintField;
    mdDimensionesNombre: TStringField;
    dsMonedas: TDataSource;
    qrMonedas: TADOQuery;
    qrGrupoBancos: TADOQuery;
    dsGrupoBancos: TDataSource;
    qrCuentaBancos: TADOQuery;
    dsCuentaBancos: TDataSource;
    tblFolderFolderId: TLargeintField;
    tvParametrosType: TcxGridDBColumn;
    cxEditRepository: TcxEditRepository;
    cxTextEdit: TcxEditRepositoryTextItem;
    cxLcCuenta: TcxEditRepositoryLookupComboBoxItem;
    cxIntEdit: TcxEditRepositorySpinItem;
    cxCalcEdit: TcxEditRepositoryCalcItem;
    cxDateEdit: TcxEditRepositoryDateItem;
    cxComboBoxEdit: TcxEditRepositoryComboBoxItem;
    cxLcTiposDocumento: TcxEditRepositoryLookupComboBoxItem;
    cxLcProyecto: TcxEditRepositoryLookupComboBoxItem;
    cxLcTipoDimension: TcxEditRepositoryLookupComboBoxItem;
    cxCheckBoxEdit: TcxEditRepositoryImageComboBoxItem;
    cxLcMoneda: TcxEditRepositoryLookupComboBoxItem;
    cxLcGrupoBancos: TcxEditRepositoryLookupComboBoxItem;
    cxLcCuentaBanco: TcxEditRepositoryLookupComboBoxItem;
    lcDatosGroup4: TdxLayoutGroup;
    tvFolders: TJvDBTreeView;
    lcDatosItem4: TdxLayoutItem;
    qrCliente: TADOQuery;
    dsCliente: TDataSource;
    tblItem: TADOQuery;
    tblItemItemId: TLargeintField;
    tblItemFolderId: TIntegerField;
    tblItemName: TStringField;
    tblItemSize: TIntegerField;
    tblItemItemType: TIntegerField;
    tblItemModified: TDateTimeField;
    tblItemDeleted: TDateTimeField;
    tblItemReportName: TStringField;
    tblItemSqlText: TMemoField;
    tblRepParam: TADOQuery;
    tblRepParamItemId2: TIntegerField;
    tblRepParamName2: TStringField;
    tblRepParamCaption2: TStringField;
    tblRepParamItemType2: TIntegerField;
    tblRepParamDefault2: TStringField;
    tblRepParamLastValue2: TStringField;
    tblRepParamValuesList2: TMemoField;
    procedure FormCreate(Sender: TObject);
    procedure tblFolderCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure tblFolderAfterScroll(DataSet: TDataSet);
    procedure tblFolderNewRecord(DataSet: TDataSet);
    procedure tblItemsNewRecord(DataSet: TDataSet);
    procedure tblFolderBeforeDelete(DataSet: TDataSet);
    procedure tvParametrosLastValueGetProperties(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AProperties: TcxCustomEditProperties);
    procedure tvParametrosFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure tblRepParamAfterPost(DataSet: TDataSet);
    procedure tblItemsAfterPost(DataSet: TDataSet);
    procedure grParametrosExit(Sender: TObject);
    procedure tvFoldersEditing(Sender: TObject; Node: TTreeNode;
      var AllowEdit: Boolean);
    procedure tblFolderAfterOpen(DataSet: TDataSet);
    procedure tblFolderAfterDelete(DataSet: TDataSet);
    procedure tblFolderAfterPost(DataSet: TDataSet);
    procedure tblItemBeforeOpen(DataSet: TDataSet);
    procedure tblItemAfterScroll(DataSet: TDataSet);
    procedure tvParametrosNavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
  private
    { Private declarations }
    CurModulo : Integer;
    CurFolder : Integer;
  protected
    procedure RegisterActions; override;
    procedure DoPrint; virtual;
    procedure DoInsert; virtual;
    procedure DoEdit; virtual;
    procedure DoDelete; virtual;
    procedure DoTreeAdd; virtual;
    procedure DoTreeDel; virtual;
  public
    { Public declarations }
    procedure ActionTreeAddNotification( Action : TBasicAction );
    procedure ActionTreeDelNotification( Action : TBasicAction );
    procedure ActionPrintNotification( Action : TBasicAction );
    procedure ActionInsertNotification( Action : TBasicAction );
    procedure ActionEditNotification( Action : TBasicAction );
    procedure ActionDeleteNotification( Action : TBasicAction );
    procedure ShowModulo( Modulo : Integer );
    procedure SetSecurity( iLevel : Integer );
  end;

const
  PODERBORRAR  = 0;
  PODEREDITAR  = 1;
  PODERAGREGAR = 2;
  PODERVER     = 3;

var
  frmRepExplorer: TfrmRepExplorer;

implementation

uses DataModule, ReportsDM, ActionsDM, PreviewModule, DialogReporteDatos,
  ConsultaExplorador, Main, CustomModule;

{$R *.dfm}

procedure TfrmRepExplorer.ActionDeleteNotification(Action: TBasicAction);
begin
  DoDelete;
end;

procedure TfrmRepExplorer.ActionEditNotification(Action: TBasicAction);
begin
  DoEdit;
end;

procedure TfrmRepExplorer.ActionInsertNotification(Action: TBasicAction);
begin
  DoInsert;
end;

procedure TfrmRepExplorer.ActionPrintNotification(Action: TBasicAction);
begin
  DoPrint;
end;

procedure TfrmRepExplorer.DoDelete;
begin
  if MessageDlg('Seguro que desea eliminar este reporte?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
     tblItem.Delete;
end;

procedure TfrmRepExplorer.DoEdit;
begin
  tblItem.Edit;
  With TfrmDialogReporteDatos.Create(Self) do begin
    qrItem.Close;
    qrItem.ParamByName('pItem').Value := tblItemItemId.Value;
    qrItem.Open;
    qrItem.Edit;
    if CurModulo = 5 then
      liReport.Visible := False
    else
      liQuery.Visible := False;
    ShowModal;
    if ModalResult = mrOk then
      qrItem.Post
    else
      qrItem.Cancel;
  end;
  tblItem.Close;
  tblItem.Open;
  tvParametros.DataController.UpdateItems(True);
end;

procedure TfrmRepExplorer.DoInsert;
begin
  With TfrmDialogReporteDatos.Create(Self) do begin
    qrItem.Close;
    qrItem.ParamByName('pItem').Value := -1;
    qrItem.Open;
    qrItem.Append;
    qrItemFolderId.Value := CurFolder;
    if CurModulo = 5 then begin
      qrItemName.Text := '<Nueva Consulta>';
      liReport.Visible := False
    end else begin
      qrItemName.Text := '<Nuevo Reporte>';
      liQuery.Visible := False;
    end;
    ShowModal;
    if ModalResult = mrOk then
      qrItem.Post
    else
      qrItem.Cancel;
  end;
  if tblItem.State in [dsEdit,dsInsert] then tblItem.Cancel;
  tblItem.Close;
  tblItem.Open;
  tblRepParam.Close;
  tblrepParam.Open;
  tvParametros.DataController.UpdateItems(True);
end;

procedure TfrmRepExplorer.DoPrint;
var
  i : Integer;
  _dt : TFieldType;
begin
  if tblItemReportName.Text <> '' then begin

    if tblRepParam.State in [dsEdit,dsInsert] then
      tblRepParam.Post;

    With DMReports do begin
      ppReport.Template.FileName := tblItemReportName.Text;
      ppReport.Template.LoadFromFile;
      ppReport.Parameters.Clear;
      ppReport.Parameters.Add('repTitle',DM.TituloEmpresa);
      ppReport.Parameters.Add('repSubTitle',DM.TituloEmpresa);
      if ppReport.AutoSearchFieldCount > 0 then begin
        try
          tblRepParam.DisableControls;
          tblRepParam.First;
          while not tblRepParam.Eof do begin
            i := tblRepParamName2.AsInteger - 1;
            if ( i >= 0 )  and ( i <= ppReport.AutoSearchFieldCount ) then begin
              if tblRepParamLastValue2.Text = '' then
                ppReport.AutoSearchFields[i].ShowAllValues := True
              else
                ppReport.AutoSearchFields[i].SearchExpression := tblRepParamLastValue2.Text;
            end;
            tblRepParam.Next;
          end;
        finally
          tblRepParam.EnableControls;
        end;
      end;

      DMReports.ppReport.DeviceType := 'Screen';
      DMReports.ppReport.ShowAutoSearchDialog := False;
      DMReports.ppReport.AllowPrintToFile := True;
      DMReports.ppReport.PrintReport;
      (*
      With TfrmPreviewModule.Create(Self) do begin
        Caption := 'Vista Preeliminar - ' + tblItemName.Text;
        ppViewer.Report := DMReports.ppReport;
        DMReports.ppReport.PrintToDevices;
        Show;
      End;
      *)
    End;
  end else begin
    if tblItemSqlText.AsString <> '' then begin
      try
        if tblRepParam.State in [dsEdit,dsInsert] then
          tblRepParam.Post;
        LockWindowUpdate(frmMain.Handle);
        with TfrmConsultaExplorador.Create(Self) do begin
          tvConsulta.ClearItems;
          qrConsulta.Close;
          qrConsulta.SQL.Text := tblItemSqlText.AsString;
          try
            tblRepParam.DisableControls;
            tblRepParam.First;
            while not tblRepParam.Eof do begin
              i := tblRepParamName2.AsInteger - 1;
              if i >= 0 then begin
                qrConsulta.Parameters[i].Value := tblRepParamLastValue2.Text;
              end;
              tblRepParam.Next;
            end;
          finally
            tblRepParam.EnableControls;
          end;
          qrConsulta.Open;
          for I := 0 to qrConsulta.Fields.Count - 1 do begin    // Iterate
            if qrConsulta.Fields[i].DataType = ftFloat then begin
              ( qrConsulta.Fields[i] As TFloatField ).DisplayFormat := '#,##0.00';
            end;
            if qrConsulta.Fields[i].DataType = ftCurrency then begin
              ( qrConsulta.Fields[i] As TCurrencyField ).DisplayFormat := '#,##0.00';
            end;
            if qrConsulta.Fields[i].DataType = ftBCD then begin
              ( qrConsulta.Fields[i] As TBCDField ).DisplayFormat := '#,##0.00';
            end;
          end;    // for
          tvConsulta.DataController.CreateAllItems;
          Caption := tblItemName.Text;
          Show;
        end;    // with
      finally // wrap up
        LockWindowUpdate(0);
      end;    // try/finally
    end;
  end;
end;

procedure TfrmRepExplorer.FormCreate(Sender: TObject);
begin
  inherited;
  tblFolder.Filter := 'ModuleID < 5';
  tblFolder.Filtered := True;
  tblFolder.Close;
  tblFolder.Open;
  //
  tblItem.Close;
  tblItem.Open;
  //
  tblRepParam.Close;
  tblRepParam.Open;
  //
  tblFolder.First;
  tblItem.First;
end;

procedure TfrmRepExplorer.RegisterActions;
begin
  //inherited;
  RegisterAction(dmAppActions.actPrintPreview, ActionPrintNotification);
  RegisterAction(dmAppActions.actAgregar, ActionInsertNotification );
  RegisterAction(dmAppActions.actModificar, ActionEditNotification );
  RegisterAction(dmAppActions.actBorrar, ActionDeleteNotification);
  RegisterAction(dmAppActions.actNewFolder, ActionTreeAddNotification);
  RegisterAction(dmAppActions.actDelFolder, ActionTreeDelNotification);
end;

procedure TfrmRepExplorer.tblFolderCalcFields(DataSet: TDataSet);
begin
  inherited;
  tblFolderImage.Value := 0;
end;

procedure TfrmRepExplorer.FormShow(Sender: TObject);
begin
  inherited;
//  dbtlGrupos.FullExpand;
end;

procedure TfrmRepExplorer.tblFolderAfterScroll(DataSet: TDataSet);
begin
  inherited;
  CurModulo := tblFolderModuleId.Value;
  CurFolder := tblFolderFolderId.Value;
  tblItem.Close;
  tblItem.Open;
end;

procedure TfrmRepExplorer.tblFolderNewRecord(DataSet: TDataSet);
begin
  inherited;
  tblFolderModuleId.Value := CurModulo;
  if CurFolder > 0 then
    tblFolderParentId.Value := CurFolder;
end;

procedure TfrmRepExplorer.tblItemsNewRecord(DataSet: TDataSet);
begin
  inherited;
  tblItemFolderId.Value := CurFolder;
  tblItemItemType.Value := 1;
  tblItemSize.Value := 3;
end;

procedure TfrmRepExplorer.tblFolderBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if tblFolderParentId.Text = '' then begin
    DM.Warning('Este es un registro del sistema y no puede ser eliminado.');//, mtWarning, [mbOK], 0);
    Abort;
  end;
end;

procedure TfrmRepExplorer.tvParametrosLastValueGetProperties(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
begin
  inherited;
  AProperties := DM.cxTextEdit.Properties;
  case ARecord.Values[2] of
    0:Begin
         AProperties := DM.cxTextEdit.Properties;
      end;
    1:Begin
         AProperties := DM.cxIntEdit.Properties;
      end;
    2:Begin
         AProperties := DM.cxCalcEdit.Properties;
      end;
    3:Begin
         AProperties := DM.cxDateEdit.Properties;
      end;
    4:Begin
         DM.cxComboBoxEdit.Properties.Items.Clear;
         DM.cxComboBoxEdit.Properties.Items.Assign( tblRepParamValuesList2 );
         AProperties := DM.cxComboBoxEdit.Properties;
      end;
    5:begin
        AProperties := DM.cxCheckBoxEdit.Properties;
      end;
 
  end;
end;

procedure TfrmRepExplorer.tvParametrosFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  tvParametrosLastValue.RepositoryItem := cxTextEdit;
  tvParametrosLastValue.Properties := cxTextEdit.Properties;
end;

procedure TfrmRepExplorer.tblRepParamAfterPost(DataSet: TDataSet);
begin
  inherited;
(*
  tvParametrosLastValue.RepositoryItem := cxTextEdit;
  tvParametrosLastValue.Properties := cxTextEdit.Properties;
  tvParametros.DataController.UpdateItems(True);
*)  
end;

procedure TfrmRepExplorer.ShowModulo(Modulo: Integer);
begin
  tblFolder.Filter := 'ModuleID = ' + IntToStr(Modulo);
  tblFolder.Filtered := True;
  tblFolder.Close;
  tblFolder.Open;
  tblFolder.First;
  tblItem.First;
  CurModulo := Modulo;
  if Modulo = 5 then begin
    Caption := 'Explorador de Consultas';
    UnRegisterAction(dmAppActions.actPrintPreview);
    RegisterAction(dmAppActions.actExecute, ActionPrintNotification);
    UpdateActionsVisibility;
    UpdateActionsState;
  end else
    Caption := 'Explorador de Reportes';
  tvReportes.DataController.GotoLast;
  tvReportes.DataController.GotoFirst;
  Show;
end;

procedure TfrmRepExplorer.ActionTreeAddNotification(Action: TBasicAction);
begin
  DoTreeAdd;
end;

procedure TfrmRepExplorer.ActionTreeDelNotification(Action: TBasicAction);
begin
  DoTreeDel;
end;

procedure TfrmRepExplorer.DoTreeAdd;
begin
  tblFolder.Insert;
  tblFolderName.Text := InputBox('Nuevo Folder','Nombre del Folder','<Nuevo Folder');
  tblFolder.Post;
end;

procedure TfrmRepExplorer.DoTreeDel;
begin
  if tblFolderParentId.AsString = '' then begin
    DM.Warning('Este es un registro del sistema y no pude ser borrado.');//, mtWarning, [mbOK], 0);
    exit;
  end;
  if ( not tblItem.IsEmpty ) and ( tblItemFolderId.Value = tblFolderFolderId.Value ) then begin
    DM.Warning('Este folder contiene reportes y no pude ser borrado.');//, mtWarning, [mbOK], 0);
    exit;
  end;
  if MessageDlg('Seguro que desea borrar este folder?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
    tblFolder.Delete;
end;

procedure TfrmRepExplorer.tblItemsAfterPost(DataSet: TDataSet);
begin
  inherited;
  tblRepParam.Close;
  tblRepParam.Open;
end;

procedure TfrmRepExplorer.grParametrosExit(Sender: TObject);
begin
  inherited;
  if tblRepParam.State in [dsEdit,dsInsert] then tblRepParam.Post;
end;

procedure TfrmRepExplorer.SetSecurity(iLevel: Integer);
begin
  case iLevel of
    PODERVER:Begin
                UnRegisterAction(dmAppActions.actAgregar);
                UnRegisterAction(dmAppActions.actModificar);
                UnRegisterAction(dmAppActions.actBorrar);
                UnRegisterAction(dmAppActions.actNewFolder);
                UnRegisterAction(dmAppActions.actDelFolder);
             End;
    PODERAGREGAR:Begin
                UnRegisterAction(dmAppActions.actModificar);
                UnRegisterAction(dmAppActions.actBorrar);
                UnRegisterAction(dmAppActions.actDelFolder);
             End;
    PODEREDITAR:Begin
                UnRegisterAction(dmAppActions.actBorrar);
                UnRegisterAction(dmAppActions.actDelFolder);
             End;
  end;
end;

procedure TfrmRepExplorer.tvFoldersEditing(Sender: TObject;
  Node: TTreeNode; var AllowEdit: Boolean);
begin
  inherited;
  AllowEdit := True;
end;

procedure TfrmRepExplorer.tblFolderAfterOpen(DataSet: TDataSet);
begin
  inherited;
  tblItem.Close;
  tblItem.Open;

end;

procedure TfrmRepExplorer.tblFolderAfterDelete(DataSet: TDataSet);
begin
  inherited;
  tblItem.Close;
  tblItem.Open;

end;

procedure TfrmRepExplorer.tblFolderAfterPost(DataSet: TDataSet);
begin
  inherited;
  tblItem.Close;
  tblItem.Open;
end;

procedure TfrmRepExplorer.tblItemBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  tblItem.Parameters.ParamByName('pFolder').Value := tblFolderFolderId.Value;
end;

procedure TfrmRepExplorer.tblItemAfterScroll(DataSet: TDataSet);
begin
  inherited;
  tblRepParam.Close;
  tblRepParam.Parameters.ParamByName('pItem').Value := tblItemItemId.Value;
  tblRepParam.Open;
end;

procedure TfrmRepExplorer.tvParametrosNavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  inherited;
  if AButtonIndex = 11 then begin
    tblRepParam.Edit;
    tblRepParamLastValue2.Value := '';
    tblRepParam.Post;
    ADone := True;
  end;
end;

end.
