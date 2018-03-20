unit ReportExplorer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OpcionesModule, cxInplaceContainer, cxTL, cxDBTL, ImgList, DB,
  ADODB, dxLayoutControl, cxTLData, Menus, StdActns, ActnList, JvComponent,
  JvFormPlacement, JvSpeedButton, StdCtrls, RzLabel, RzBckgnd, ExtCtrls,
  cxControls, JvExControls, JvEnterTab, cxContainer, cxEdit, cxTextEdit,
  cxDBEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxCalendar,
  cxEditRepositoryItems, cxDBEditRepository, ppTypes, ppComm,
  ppRelatv, ppProd, ppClass, ppReport,ppPDFDevice, PymeConst, cxGraphics,
  cxCustomData, cxStyles, cxMaskEdit, cxFilter, cxData, cxDataStorage, cxDBData,
  JvComponentBase, ABSMain, CustomModule, Modules, cxintl;

type
  TfrmReportExplorer = class(TfrmOpcionesModule)
    lgReportes: TdxLayoutGroup;
    tlRepExplorer: TcxDBTreeList;
    lcDatosItem1: TdxLayoutItem;
    ilFolders: TImageList;
    cxDBTreeList1ModuleID: TcxDBTreeListColumn;
    cxDBTreeList1ID: TcxDBTreeListColumn;
    cxDBTreeList1Name1: TcxDBTreeListColumn;
    cxDBTreeList1ParentID: TcxDBTreeListColumn;
    cxDBTreeList1ItemType: TcxDBTreeListColumn;
    tlRepExplorerRecId: TcxDBTreeListColumn;
    lgParametros: TdxLayoutGroup;
    grParametros: TcxGrid;
    tvParametros: TcxGridDBTableView;
    tvParametrosCaption: TcxGridDBColumn;
    tvParametrosLastValue: TcxGridDBColumn;
    tvParametrosType: TcxGridDBColumn;
    grParametrosLevel1: TcxGridLevel;
    lcDatosItem2: TdxLayoutItem;
    dsRepParam: TDataSource;
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
    qrUserLastValue: TADOQuery;
    qrUserLastValueUserID: TStringField;
    qrUserLastValueFolderId: TLargeintField;
    qrUserLastValueItemId: TLargeintField;
    qrUserLastValueLastValue: TStringField;
    sqlUpdUserChoice: TADOQuery;
    sqlAddUserChoice: TADOQuery;
    qrFolders: TABSQuery;
    qrFoldersModuleID: TSmallintField;
    qrFoldersName: TStringField;
    qrFoldersParentID: TIntegerField;
    qrFoldersItemType: TIntegerField;
    qrItem: TABSQuery;
    qrItemFolderId: TIntegerField;
    qrItemName: TStringField;
    qrItemSize: TIntegerField;
    qrItemItemType: TIntegerField;
    qrItemModified: TDateTimeField;
    qrItemDeleted: TDateTimeField;
    qrItemReportName: TStringField;
    qrItemSqlText: TMemoField;
    qrItemItemId: TAutoIncField;
    qrRepParam: TABSTable;
    qrRepParamItemId: TIntegerField;
    qrRepParamName: TIntegerField;
    qrRepParamCaption: TStringField;
    qrRepParamItemType: TIntegerField;
    qrRepParamDefault: TStringField;
    qrRepParamLastValue: TStringField;
    qrRepParamValuesList: TMemoField;
    qrFoldersID: TIntegerField;
    qrFoldersRecId: TIntegerField;
    sqlDelUserChoice: TADOQuery;
    procedure qrFoldersAfterScroll(DataSet: TDataSet);
    procedure qrFoldersAfterOpen(DataSet: TDataSet);
    procedure tlRepExplorerFocusedNodeChanged(Sender: TObject;
      APrevFocusedNode, AFocusedNode: TcxTreeListNode);
    procedure tvParametrosFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure tvParametrosLastValueGetProperties(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AProperties: TcxCustomEditProperties);
    procedure tlRepExplorerDblClick(Sender: TObject);
    procedure qrUserLastValueBeforeOpen(DataSet: TDataSet);
    procedure qrRepParamAfterOpen(DataSet: TDataSet);
    procedure qrRepParamAfterPost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    EsReporte: boolean;
    RutaReportes: String;
    DebeGrabar: boolean;
    CurModulo: Integer;
    ModoDialog : boolean;
    { Private declarations }
    procedure RegisterActions; override;
    procedure UpdateActionsState; override;
    procedure DoPrint; virtual;
    procedure DoInsert; virtual;
    procedure DoEdit; virtual;
    procedure DoDelete; virtual;
    procedure DoTreeAdd; virtual;
    procedure DoTreeDel; virtual;
    procedure DoToPrinter; virtual;
    procedure DoSendMail; virtual;
    procedure DoDesign; virtual;
    procedure GrabaSeleccionUsuario;
    procedure CargaSeleccionUsuario;
  public
    { Public declarations }
    procedure doInmediateEdit; override;
    procedure ShowModulo(Modulo: Integer ; _EsReporte : boolean = True);
    procedure ActionTreeAddNotification( Action : TBasicAction );
    procedure ActionTreeDelNotification( Action : TBasicAction );
    procedure ActionPrintNotification( Action : TBasicAction );
    procedure ActionInsertNotification( Action : TBasicAction );
    procedure ActionEditNotification( Action : TBasicAction );
    procedure ActionDeleteNotification( Action : TBasicAction );
    procedure ActionToPrinterNotification( Action : TBasicAction);
    procedure ActionSendMailNotification( Action : TBasicAction );
    procedure ActionDesignNotification( Action : TBasicAction );
    procedure SetSecurity( iLevel : Integer );
    procedure LanzaReporte( ItemId : Int64 );
  end;

var
  frmReportExplorer: TfrmReportExplorer;

implementation

uses DataModule, ActionsDM, DialogReporteDatos, ConsultaExplorador,
  ReportsDM, Main, InformeModule, DialogEnviarCorreo,
  JvActions, QueryBuilderModule;

{$R *.dfm}

procedure TfrmReportExplorer.ActionDeleteNotification(
  Action: TBasicAction);
begin
  DoDelete;
end;

procedure TfrmReportExplorer.ActionEditNotification(Action: TBasicAction);
begin
  DoEdit;
end;

procedure TfrmReportExplorer.ActionInsertNotification(
  Action: TBasicAction);
begin
  DoInsert;
end;

procedure TfrmReportExplorer.ActionPrintNotification(Action: TBasicAction);
begin
  DoPrint;
end;

procedure TfrmReportExplorer.ActionTreeAddNotification(
  Action: TBasicAction);
begin
  DoTreeAdd;
end;

procedure TfrmReportExplorer.ActionTreeDelNotification(
  Action: TBasicAction);
begin
  DoTreeDel;
end;

procedure TfrmReportExplorer.DoDelete;
begin
  if MessageDlg(SSeguroQueDeseaEli4, mtConfirmation, [mbYes,mbNo], 0) = mrYes then begin
     DM.DataBase.Execute('DELETE FROM SysRbItem Where ItemId = ' + qrFoldersRecId.AsString);
     qrFolders.Close;
     qrFolders.Open;
  end;
end;

procedure TfrmReportExplorer.DoEdit;
begin
  With TfrmDialogReporteDatos.Create(Self) do begin
    qrItem.Close;
    qrItem.ParamByName('pItem').Value := qrFoldersRecId.Value;
    qrItem.Open;
    qrItem.Edit;
    if not EsReporte then
      liReport.Visible := False
    else
      liQuery.Visible := False;
    ShowModal;
    if ModalResult = mrOk then
      qrItem.Post
    else
      qrItem.Cancel;
  End;
  qrFolders.Close;
  qrFolders.Open;
  tlRepExplorer.DataController.UpdateItems(False);
end;

procedure TfrmReportExplorer.doInmediateEdit;
begin
  //inherited;
  // - Do Nothing
end;

procedure TfrmReportExplorer.DoInsert;
begin
  With TfrmDialogReporteDatos.Create(Self) do begin
    qrItem.Close;
    qrItem.ParamByName('pItem').Value := -1;
    qrItem.Open;
    qrItem.Append;
    if qrFoldersItemType.Value = 2 then
       qrItemFolderId.Value := Trunc(qrFoldersParentID.Value)
    else
       qrItemFolderId.Value := Trunc(qrFoldersRecID.Value);
    if not EsReporte then begin
      qrItemName.Text := SNuevaConsulta;
      liReport.Visible := False
    end else begin
      qrItemName.Text := SNuevoReporte;
      liQuery.Visible := False;
    end;
    ShowModal;
    if ModalResult = mrOk then
      qrItem.Post
    else
      qrItem.Cancel;
  end;
  qrFolders.Close;
  qrFolders.Open;
end;

procedure TfrmReportExplorer.DoPrint;
var
  i : Integer;
  _dt : TFieldType;
  iX: Integer;
begin
  if not ModoDialog then begin
    qrItem.Close;
    qrItem.ParamByName('pItem').Value := qrFoldersRecId.Value;
    qrItem.Open;
  end;

  if qrItemReportName.Text <> '' then begin

    if qrRepParam.State in [dsEdit,dsInsert] then
      qrRepParam.Post;

    GrabaSeleccionUsuario;

    With DMReports do begin
//      if RutaReportes <> '' then
//        ppReport.Template.FileName := RutaReportes + '\' + qrItemReportName.Text
//      else
//        ppReport.Template.FileName := qrItemReportName.Text;
//      ppReport.Template.LoadFromFile;
      DMReports.SetReport( qrItemFolderId.Value, qrItemName.Text );
      if ppReport.AutoSearchFieldCount > 0 then begin
        try
          qrRepParam.DisableControls;
          qrRepParam.First;
          while not qrRepParam.Eof do begin
            i := qrRepParamName.AsInteger - 1;
            if ( i >= 0 )  and ( i <= ppReport.AutoSearchFieldCount ) then begin
              if qrRepParamLastValue.Text = '' then
                ppReport.AutoSearchFields[i].ShowAllValues := True
              else
                ppReport.AutoSearchFields[i].SearchExpression := qrRepParamLastValue.Text;
            end;
            if (i < 0 ) then begin
              ppReport.Parameters.Add( 'repParameter' + IntToStr( abs(i) - 1 ), qrRepParamLastValue.Text );
            end;
            qrRepParam.Next;
          end;
        finally
          qrRepParam.EnableControls;
        end;
      end;
      DMReports.ppReport.DeviceType := 'Screen';
      DMReports.ppReport.ShowAutoSearchDialog := False;
      DMReports.ppReport.AllowPrintToFile := True;
      DMReports.ppReport.PrintReport;
    End;
  end else begin
    if qrItemSqlText.AsString <> '' then begin
      try
        if qrRepParam.State in [dsEdit,dsInsert] then
          qrRepParam.Post;
        LockWindowUpdate(frmMain.Handle);
        //with TfrmConsultaExplorador.Create(Self) do begin
        With frmMain do begin
          iX := lmdForms.AddForm(TfrmInformeModule.Create(Self),True);
          With TfrmInformeModule( lmdForms.Forms[iX] ) do begin
            tvConsulta.ClearItems;
            qrConsulta.Close;
            qrConsulta.SQL.Text := qrItemSqlText.AsString;
            try
              qrRepParam.DisableControls;
              qrRepParam.First;
              while not qrRepParam.Eof do begin
                i := qrRepParamName.AsInteger - 1;
                if i >= 0 then begin
                  qrConsulta.Parameters[i].Value := qrRepParamLastValue.Text;
                end;
                qrRepParam.Next;
              end;
            finally
              qrRepParam.EnableControls;
            end;
            qrConsulta.Open;
            tvConsulta.DataController.CreateAllItems;
            for I := 0 to qrConsulta.Fields.Count - 1 do begin    // Iterate
              if qrConsulta.Fields[i].DataType = ftFloat then begin
                ( qrConsulta.Fields[i] As TFloatField ).DisplayFormat := '#,##0.00';
                With tvConsulta.GetColumnByFieldName(qrConsulta.Fields[i].FieldName) do begin
                  Summary.FooterFormat := '#,##0.00';
                  Summary.FooterKind := skSum;
                  Summary.GroupFooterFormat := '#,##0.00';
                  Summary.GroupFooterKind := skSum;
                end;
              end;
              if qrConsulta.Fields[i].DataType = ftCurrency then begin
                ( qrConsulta.Fields[i] As TCurrencyField ).DisplayFormat := '#,##0.00';
                With tvConsulta.GetColumnByFieldName(qrConsulta.Fields[i].FieldName) do begin
                  Summary.FooterFormat := '#,##0.00';
                  Summary.FooterKind := skSum;
                  Summary.GroupFooterFormat := '#,##0.00';
                  Summary.GroupFooterKind := skSum;
                end;
              end;
              if qrConsulta.Fields[i].DataType = ftBCD then begin
                ( qrConsulta.Fields[i] As TBCDField ).DisplayFormat := '#,##0.00';
                With tvConsulta.GetColumnByFieldName(qrConsulta.Fields[i].FieldName) do begin
                  Summary.FooterFormat := '#,##0.00';
                  Summary.FooterKind := skSum;
                  Summary.GroupFooterFormat := '#,##0.00';
                  Summary.GroupFooterKind := skSum;
                end;
              end;
            end;    // for
            SetCaption(qrItemName.Text);
            Show;
          end;
          lmdForms.ActiveFormIndex := iX;
        end;    // with
      finally // wrap up
        LockWindowUpdate(0);
      end;    // try/finally
    end;
  end;
end;

procedure TfrmReportExplorer.DoTreeAdd;
var
  FolderName: string;
begin
  FolderName := SNuevoFolder;
  If InputQuery(SNuevoFolder1,SNombreDelFolder,FolderName) then begin
    if qrFoldersItemType.Value = 2 then
      DM.DataBase.Execute('INSERT INTO SysRbFolder (ModuleID, Name, ParentID) VALUES (' + IntToStr(CurModulo) +',' + #39 + FolderName + #39 + ',' + qrFoldersParentID.AsString + ')')
    else
      DM.DataBase.Execute('INSERT INTO SysRbFolder (ModuleID, Name, ParentID) VALUES (' + IntToStr(CurModulo) +',' + #39 + FolderName + #39 + ',' + qrFoldersRecID.AsString + ')');
    qrFolders.Close;
    qrFolders.Open;
  end;
end;

procedure TfrmReportExplorer.DoTreeDel;
begin
  if qrFoldersParentID.AsString = '' then begin
    DM.Warning(SNoPuedeEliminarLa);
    Abort;
  end;
  if DM.DataBase.Execute('Select TOP 1 * from SysRbItem where FolderID = ' + qrFoldersRecID.AsString).RecordCount > 0 then begin
    DM.Warning(SEstaCarpetaNoEsta);
    Abort;
  end;
  if MessageDlg(SDeseaBorrarEstaCa, mtConfirmation, [mbYes,mbNo], 0) = mrYes then begin
    DM.DataBase.Execute('DELETE SysRbFolder WHERE FolderID = ' + qrFoldersRecID.AsString);
    qrFolders.Close;
    qrFolders.Open;
  end;
end;

procedure TfrmReportExplorer.RegisterActions;
begin
  // inherited;
  RegisterAction(dmAppActions.actPrintPreview, ActionPrintNotification);
  RegisterAction(dmAppActions.actImprimir, ActionToPrinterNotification);
//  RegisterAction(dmAppActions.actSendMail, ActionSendMailNotification);
  RegisterAction(dmAppActions.actDesign, ActionDesignNotification);
  //  RegisterAction(dmAppActions.actAgregar, ActionInsertNotification );
  //  RegisterAction(dmAppActions.actModificar, ActionEditNotification );
  //  RegisterAction(dmAppActions.actBorrar, ActionDeleteNotification);
  //  RegisterAction(dmAppActions.actNewFolder, ActionTreeAddNotification);
  //  RegisterAction(dmAppActions.actDelFolder, ActionTreeDelNotification);
end;

procedure TfrmReportExplorer.SetSecurity(iLevel: Integer);
begin
//  case iLevel of
//    PODERVER:Begin
//                UnRegisterAction(dmAppActions.actAgregar);
//                UnRegisterAction(dmAppActions.actModificar);
//                UnRegisterAction(dmAppActions.actBorrar);
//                UnRegisterAction(dmAppActions.actNewFolder);
//                UnRegisterAction(dmAppActions.actDelFolder);
//             End;
//    PODERAGREGAR:Begin
//                UnRegisterAction(dmAppActions.actModificar);
//                UnRegisterAction(dmAppActions.actBorrar);
//                UnRegisterAction(dmAppActions.actDelFolder);
//             End;
//    PODEREDITAR:Begin
//                UnRegisterAction(dmAppActions.actBorrar);
//                UnRegisterAction(dmAppActions.actDelFolder);
//             End;
//  end;
end;

procedure TfrmReportExplorer.ShowModulo(Modulo: Integer ; _EsReporte : boolean = True );
begin
  EsReporte := _EsReporte;
  DebeGrabar := False;
  CurModulo := Modulo;
  qrFolders.Close;
  qrFolders.Params[0].Value := CurModulo;
  qrFolders.Params[1].Value := CurModulo;
  qrFolders.Open;
  if not EsReporte then begin
    Caption := SExploradorDeConsul;
    lgReportes.Caption := SConsutlas;
    UnRegisterAction(dmAppActions.actPrintPreview);
    UnRegisterAction(dmAppActions.actImprimir);
    UnRegisterAction(dmappActions.actSendMail);
    RegisterAction(dmAppActions.actExecute, ActionPrintNotification);
    UpdateActionsVisibility;
    UpdateActionsState;
  end else
    Caption := SExploradorDeReport;
  //
//  Show;
end;

procedure TfrmReportExplorer.qrFoldersAfterScroll(DataSet: TDataSet);
begin
  inherited;
  UpdateActionsState;
end;

procedure TfrmReportExplorer.UpdateActionsState;
var
  iType: Integer;
begin
  inherited;
  if (qrFolders.State in [dsBrowse]) then begin
    dmAppActions.actPrintPreview.Enabled := (qrFoldersItemType.Value = 2) or (ModoDialog);
    dmAppActions.actImprimir.Enabled := (qrFoldersItemType.Value = 2) or (ModoDialog);
    dmAppActions.actSendMail.Enabled := (qrFoldersItemType.Value = 2) or (ModoDialog);
    dmAppActions.actBorrar.Enabled := (qrFoldersItemType.Value = 2);
    dmAppActions.actModificar.Enabled := (qrFoldersItemType.Value = 2);
    dmAppActions.actExecute.Enabled := (qrFoldersItemType.Value = 2);
  end;
end;

procedure TfrmReportExplorer.qrFoldersAfterOpen(DataSet: TDataSet);
begin
  inherited;
  tlRepExplorer.FullExpand;
end;

procedure TfrmReportExplorer.tlRepExplorerFocusedNodeChanged(
  Sender: TObject; APrevFocusedNode, AFocusedNode: TcxTreeListNode);
begin
  inherited;
  qrRepParam.close;
  qrUserLastValue.Close;
  if qrFoldersItemType.Value = 2 then begin
    qrUserLastValue.Parameters.ParamByName('pFolder').Value := qrFoldersRecId.Value;
    qrUserLastValue.Open;
    //qrRepParam.ParamByName('pItem').Value := qrFoldersRecId.Value;
    qrRepParam.Open;
  end;
end;

procedure TfrmReportExplorer.tvParametrosFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  tvParametrosLastValue.RepositoryItem := cxTextEdit;
  tvParametrosLastValue.Properties := cxTextEdit.Properties;
end;

procedure TfrmReportExplorer.tvParametrosLastValueGetProperties(
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
         AProperties := DM.cxDateEdit.Properties; // DM.cxDateMaskEdit.Properties;
      end;
    4:Begin
         DM.cxComboBoxEdit.Properties.Items.Clear;
         DM.cxComboBoxEdit.Properties.Items.Assign( qrRepParamValuesList );
         AProperties := DM.cxComboBoxEdit.Properties;
      end;
    5:begin
        AProperties := DM.cxCheckBoxEdit.Properties;
      end;
 
  end;
end;

procedure TfrmReportExplorer.tlRepExplorerDblClick(Sender: TObject);
begin
  inherited;
  if qrFoldersItemType.Value = 2 then
    DoPrint;
end;

procedure TfrmReportExplorer.GrabaSeleccionUsuario;
var
  p : Pointer;
begin
  try
    p := qrRepParam.GetBookmark;
    qrRepParam.DisableControls;
    qrRepParam.First;
    while not qrRepParam.Eof do begin
      if qrUserLastValue.Locate('ItemId',qrRepParamName.AsInteger,[]) then begin
        sqlUpdUserChoice.Parameters.ParamByName('pFolder').Value := qrUserLastValueFolderId.Value;
        sqlUpdUserChoice.Parameters.ParamByName('pItem').Value := qrUserLastValueItemId.Value;
        sqlUpdUserChoice.Parameters.ParamByName('pUser').Value := qrUserLastValueUserID.Value;
        sqlUpdUserChoice.Parameters.ParamByName('pValue').Value := qrRepParamLastValue.Text;
        sqlUpdUserChoice.ExecSQL;
      end else begin
        sqlDelUserChoice.Parameters.ParamByName('pFolder').Value := qrRepParamItemId.Value;// qrFoldersRecId.Value;
        sqlDelUserChoice.Parameters.ParamByName('pItem').Value := qrRepParamName.AsInteger;
        sqlDelUserChoice.Parameters.ParamByName('pUser').Value := DM.CurUser;
        sqlDelUserChoice.ExecSQL;
        //
        sqlAddUserChoice.Parameters.ParamByName('pFolder').Value := qrRepParamItemId.Value;// qrFoldersRecId.Value;
        sqlAddUserChoice.Parameters.ParamByName('pItem').Value := qrRepParamName.AsInteger;
        sqlAddUserChoice.Parameters.ParamByName('pUser').Value := DM.CurUser;
        sqlAddUserChoice.Parameters.ParamByName('pValue').Value := qrRepParamLastValue.Text;
        sqlAddUserChoice.ExecSQL;
      end;
      qrRepParam.Next;
    end;    // while
  finally
    qrRepParam.GotoBookmark(p);
    qrRepParam.FreeBookmark(p);
    qrRepParam.EnableControls;
    DebeGrabar := False;
  end;
end;

procedure TfrmReportExplorer.qrUserLastValueBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  qrUserLastValue.Parameters.ParamByName('pUser').Value := DM.CurUser;
end;

procedure TfrmReportExplorer.CargaSeleccionUsuario;
var
  p : Pointer;
begin
  try
    qrRepParam.DisableControls;
    if not qrUserLastValue.Active then
      qrUserLastValue.Open;
    qrUserLastValue.First;
    while not qrUserLastValue.Eof do begin
      if qrRepParam.Locate('Name',qrUserLastValueItemId.AsString,[]) then begin
        qrRepParam.Edit;
        qrRepParamLastValue.Text := qrUserLastValueLastValue.Text;
        qrRepParam.Post;
      end;
      qrUserLastValue.Next;
    end;    // while
  finally
    qrRepParam.First;
    qrRepParam.EnableControls;
  end;
end;

procedure TfrmReportExplorer.qrRepParamAfterOpen(DataSet: TDataSet);
begin
  inherited;
  CargaSeleccionUsuario;
end;

procedure TfrmReportExplorer.qrRepParamAfterPost(DataSet: TDataSet);
begin
  inherited;
  DebeGrabar := True;
end;

procedure TfrmReportExplorer.ActionToPrinterNotification(
  Action: TBasicAction);
begin
  DoToPrinter;
end;

procedure TfrmReportExplorer.DoToPrinter;
var
  i : Integer;
  _dt : TFieldType;
begin
  if not ModoDialog then begin
    qrItem.Close;
    qrItem.ParamByName('pItem').Value := qrFoldersRecId.Value;
    qrItem.Open;
  end;

  if qrItemReportName.Text <> '' then begin

    if qrRepParam.State in [dsEdit,dsInsert] then
      qrRepParam.Post;

    GrabaSeleccionUsuario;

    With DMReports do begin
//      if RutaReportes <> '' then
//        ppReport.Template.FileName := RutaReportes + '\' + qrItemReportName.Text
//      else
//        ppReport.Template.FileName := qrItemReportName.Text;
//      ppReport.Template.LoadFromFile;
      DMReports.SetReport( qrItemFolderId.Value, qrItemName.Text );
      if ppReport.AutoSearchFieldCount > 0 then begin
        try
          qrRepParam.DisableControls;
          qrRepParam.First;
          while not qrRepParam.Eof do begin
            i := qrRepParamName.AsInteger - 1;
            if ( i >= 0 )  and ( i <= ppReport.AutoSearchFieldCount ) then begin
              if qrRepParamLastValue.Text = '' then
                ppReport.AutoSearchFields[i].ShowAllValues := True
              else
                ppReport.AutoSearchFields[i].SearchExpression := qrRepParamLastValue.Text;
            end;
            if (i < 0 ) then begin
              ppReport.Parameters.Add( 'repParameter' + IntToStr( abs(i) - 1 ), qrRepParamLastValue.Text );
            end;
            qrRepParam.Next;
          end;
        finally
          qrRepParam.EnableControls;
        end;
      end;
      DMReports.ppReport.DeviceType := 'Printer';
      DMReports.ppReport.ShowAutoSearchDialog := False;
      DMReports.ppReport.AllowPrintToFile := True;
      DMReports.ppReport.PrintReport;
    End;
  end;
end;

procedure TfrmReportExplorer.LanzaReporte(ItemId: Int64);
begin
  ModoDialog := True;
  qrItem.Close;
  qrItem.ParamByName('pItem').Value := ItemId;
  qrItem.Open;
  //
  qrRepParam.Close;
  qrRepParam.MasterSource := nil;
  qrRepParam.MasterFields := '';
  qrRepParam.Filter := 'ItemId = ' + IntToStr(ItemId);
  qrRepParam.Filtered := True;
  qrRepParam.Open;
  //
  Caption := SReporte + qrItemName.Text;
  lgReportes.Visible := False;
  lgParametros.AlignHorz := ahClient;
  qrUserLastValue.Close;
  qrUserLastValue.Parameters.ParamByName('pFolder').Value := ItemId;
  qrUserLastValue.Open;
  qrRepParam.Close;
  //qrRepParam.ParamByName('pItem').Value := ItemId;
  qrRepParam.Open;
  UpdateActionsState;
//  Show;
end;

procedure TfrmReportExplorer.FormCreate(Sender: TObject);
begin
  inherited;
  ModoDialog := False;
  RutaReportes := DM.DataBase.Execute('Select TOP 1 RutaReportes from SysParametros').Fields[0].Value;
end;

procedure TfrmReportExplorer.ActionSendMailNotification(
  Action: TBasicAction);
begin
  DoSendMail;
end;

procedure TfrmReportExplorer.DoSendMail;
var
  i: Integer;
begin
  if not ModoDialog then begin
    qrItem.Close;
    qrItem.ParamByName('pItem').Value := qrFoldersRecId.Value;
    qrItem.Open;
  end;

  if qrItemReportName.Text <> '' then begin

    if qrRepParam.State in [dsEdit,dsInsert] then
      qrRepParam.Post;

    GrabaSeleccionUsuario;

    With DMReports do begin
//      if RutaReportes <> '' then
//        ppReport.Template.FileName := RutaReportes + '\' + qrItemReportName.Text
//      else
//        ppReport.Template.FileName := qrItemReportName.Text;
//      ppReport.Template.LoadFromFile;
      DMReports.SetReport( qrItemFolderId.Value, qrItemName.Text );
      if ppReport.AutoSearchFieldCount > 0 then begin
        try
          qrRepParam.DisableControls;
          qrRepParam.First;
          while not qrRepParam.Eof do begin
            i := qrRepParamName.AsInteger - 1;
            if ( i >= 0 )  and ( i <= ppReport.AutoSearchFieldCount ) then begin
              if qrRepParamLastValue.Text = '' then
                ppReport.AutoSearchFields[i].ShowAllValues := True
              else
                ppReport.AutoSearchFields[i].SearchExpression := qrRepParamLastValue.Text;
            end;
            if (i < 0 ) then begin
              ppReport.Parameters.Add( 'repParameter' + IntToStr( abs(i) - 1 ), qrRepParamLastValue.Text );
            end;
            qrRepParam.Next;
          end;
        finally
          qrRepParam.EnableControls;
        end;
      end;
      DMReports.ppReport.DeviceType := dtPDF;
      DMReports.ppReport.EmailSettings.Subject := qrItemName.Text;
      DMReports.ppReport.ShowAutoSearchDialog := False;
      DMReports.ppReport.AllowPrintToFile := True;
      DMReports.ppReport.SendMail;
    End;
  end;
end;

procedure TfrmReportExplorer.ActionDesignNotification(
  Action: TBasicAction);
begin
  DoDesign;
end;

procedure TfrmReportExplorer.DoDesign;
begin
  qrItem.Close;
  qrItem.ParamByName('pItem').Value := Trunc(qrFoldersRecId.Value);
  qrItem.Open;
  if qrItemItemType.Value = 1 then Begin
    With DMReports do begin
//      if RutaReportes <> '' then
//        DMReports.ppReport.Template.FileName := RutaReportes + '\' + qrItemReportName.Text
//      else
//        DMReports.ppReport.Template.FileName := qrItemReportName.Text;
//      DMReports.ppReport.Template.LoadFromFile;
      DMReports.SetReport( qrItemFolderId.Value, qrItemName.Text );
      DMReports.ppDesigner.ShowModal;
    End ;
  End else begin
    with TfrmQueryBuilderModule.Create(Self) do begin
      ShowSQl( qrItemSqlText.AsString );
      if MessageDlg(SGrabarCambiosConsulta, mtConfirmation, [mbYes,mbNo], 0) = mrYes then begin
        qrItem.Edit;
        qrItemSqlText.AsString := QueryBuilder.SQL;
        qrItem.Post;
      end;
    end;    // with
  end;
    
end;

end.
