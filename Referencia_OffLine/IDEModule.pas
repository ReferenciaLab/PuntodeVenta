unit IDEModule;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomModule, cxPC, dxLayoutControl, dxNavBar, cxControls,
  Menus, StdActns, ActnList, JvComponent, JvFormPlacement, ExtCtrls,
  JvExControls, JvEnterTab, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, DB,
  ADODB, ImgList, dxNavBarCollns, dxNavBarBase, cxInplaceContainer, cxTL,
  cxDBTL, cxTLData, RzGroupBar, QImport2Wizard, QExport3Dialog, PymeConst,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxImageComboBox, cxMaskEdit, JvComponentBase, ABSMain,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxintl;

type
  TfrmIDEModule = class(TfrmCustomModule)
    lcIDEGroup_Root: TdxLayoutGroup;
    lcIDE: TdxLayoutControl;
    lcIDEGroup2: TdxLayoutGroup;
    pcObjectos: TcxPageControl;
    lcIDEItem2: TdxLayoutItem;
    ilObjetos: TImageList;
    tsTablas: TcxTabSheet;
    tsConsultas: TcxTabSheet;
    tsFormularios: TcxTabSheet;
    tsReportes: TcxTabSheet;
    tsDocumentos : TcxTabSheet;
    dsTablas: TDataSource;
    tvTablas: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    tvTablasTableName: TcxGridDBColumn;
    tvTablasTableAlias: TcxGridDBColumn;
    tvConsulta: TcxDBTreeList;
    dsVistas: TDataSource;
    ilFolders: TImageList;
    cxDBTreeList1ModuleID: TcxDBTreeListColumn;
    cxDBTreeList1ID: TcxDBTreeListColumn;
    cxDBTreeList1Name: TcxDBTreeListColumn;
    cxDBTreeList1ParentID: TcxDBTreeListColumn;
    cxDBTreeList1ItemType: TcxDBTreeListColumn;
    tvConsultasRecId: TcxDBTreeListColumn;
    dsReportes: TDataSource;
    cxDBTreeList2: TcxDBTreeList;
    cxDBTreeListColumn1: TcxDBTreeListColumn;
    cxDBTreeListColumn2: TcxDBTreeListColumn;
    cxDBTreeListColumn3: TcxDBTreeListColumn;
    cxDBTreeListColumn4: TcxDBTreeListColumn;
    cxDBTreeListColumn5: TcxDBTreeListColumn;
    tvReportesRecId: TcxDBTreeListColumn;
    dsUserScripts: TDataSource;
    tsUserScripts: TcxTabSheet;
    cxGrid2: TcxGrid;
    tvUserScripts: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    tvUserScriptsProcesoId: TcxGridDBColumn;
    tvUserScriptsDescripcion: TcxGridDBColumn;
    dsUserForms: TDataSource;
    cxGrid3: TcxGrid;
    tvUserForms: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    tvUserFormsUserId: TcxGridDBColumn;
    tvUserFormsFormName: TcxGridDBColumn;
    tvUserFormsViewName: TcxGridDBColumn;
    tvUserFormsTipo: TcxGridDBColumn;
    qImport: TQImport2Wizard;
    qrImport: TADOQuery;
    pmTablas: TPopupMenu;
    Disear1: TMenuItem;
    Importar1: TMenuItem;
    Exportar1: TMenuItem;
    N1: TMenuItem;
    qExport: TQExport3Dialog;
    qrTablas: TABSTable;
    qrTablasTableName: TStringField;
    qrTablasTableAlias: TStringField;
    qrVistas: TABSQuery;
    qrVistasModuleID: TIntegerField;
    qrVistasID: TIntegerField;
    qrVistasName: TStringField;
    qrVistasParentID: TIntegerField;
    qrVistasItemType: TIntegerField;
    qrVistasRecId: TIntegerField;
    qrVista: TABSQuery;
    qrVistaFolderId: TIntegerField;
    qrVistaName: TStringField;
    qrVistaSize: TIntegerField;
    qrVistaItemType: TIntegerField;
    qrVistaModified: TDateTimeField;
    qrVistaDeleted: TDateTimeField;
    qrVistaReportName: TStringField;
    qrVistaSqlText: TMemoField;
    qrReportes: TABSQuery;
    qrReportesModuleID: TIntegerField;
    qrReportesName: TStringField;
    qrReportesParentID: TIntegerField;
    qrReportesItemType: TIntegerField;
    qrUserScripts: TABSQuery;
    qrUserScriptsProcesoId: TStringField;
    qrUserScriptsDescripcion: TStringField;
    qrUserScriptsScript: TMemoField;
    qrUserForms: TABSQuery;
    qrUserFormsTipo: TIntegerField;
    qrUserFormsFormName: TStringField;
    qrUserFormsViewName: TStringField;
    qrUserFormsSavedView: TMemoField;
    qrVistaItemId: TAutoIncField;
    qrReportesID: TIntegerField;
    qrReportesRecId: TIntegerField;
    qrDocumentos: TABSQuery;
    dsDocumentos: TDataSource;
    cxGridPopupMenu1: TcxGridPopupMenu;
    cxGrid4: TcxGrid;
    tvDocumentos: TcxGridDBTableView;
    tvDocumentosFolderId: TcxGridDBColumn;
    tvDocumentosName: TcxGridDBColumn;
    cxGrid4Level1: TcxGridLevel;
    qrDocumentosItemId: TAutoIncField;
    qrDocumentosFolderId: TIntegerField;
    qrDocumentosName: TStringField;
    qrDocumentosSize: TIntegerField;
    qrDocumentosItemType: TIntegerField;
    qrDocumentosModified: TDateTimeField;
    qrDocumentosDeleted: TDateTimeField;
    qrDocumentosReportName: TStringField;
    qrDocumentosSqlText: TMemoField;
    qrHijas: TABSQuery;
    qrDelFolder: TABSQuery;
    qrAddFolder: TABSQuery;
    miSincronizar: TMenuItem;
    qrFields: TABSTable;
    qrFieldsTableName: TStringField;
    qrFieldsFieldName: TStringField;
    qrFieldsFieldAlias: TStringField;
    qrFieldsSelectable: TStringField;
    qrFieldsSearchable: TStringField;
    qrFieldsSortable: TStringField;
    qrFieldsDataType: TStringField;
    qrFieldsAutoSearch: TStringField;
    qrFieldsMandatory: TStringField;
    cmdALTER: TADOCommand;
    qrFieldsFieldSize: TSmallintField;
    procedure miSincronizarClick(Sender: TObject);
    procedure qrDocumentosAfterOpen(DataSet: TDataSet);
    procedure tvDocumentosCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure oiTablasClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tvTablasCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure pcObjectosChange(Sender: TObject);
    procedure tvConsultaNodeChanged(Sender: TObject;
      ANode: TcxTreeListNode; AColumn: TcxTreeListColumn);
    procedure cxDBTreeList2NodeChanged(Sender: TObject;
      ANode: TcxTreeListNode; AColumn: TcxTreeListColumn);
    procedure tvUserScriptsCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxDBTreeList2DblClick(Sender: TObject);
    procedure tvUserFormsCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure tvConsultaDblClick(Sender: TObject);
    procedure Disear1Click(Sender: TObject);
    procedure Importar1Click(Sender: TObject);
    procedure Exportar1Click(Sender: TObject);
  protected
    procedure RegisterActions; override;
  private
    RutaReportes: string;
    { Private declarations }
    procedure ShowSqlBuilder;
    procedure DoDelete;
    procedure DoInsert;
    procedure DoEdit;
    procedure DoDesign;
    procedure DoTreeAdd; virtual;
    procedure DoTreeDel; virtual;
    procedure DoRefresh;
    procedure DoExecute;
    procedure DoFormDesign;
    procedure EjecutaConsulta;//Created with Castalia Extract Method Refactoring
    procedure EjecutaTabla;//Created with Castalia Extract Method Refactoring
    procedure EjecutaReporte;
    procedure DoAgregaDocumento;
    procedure DoAgregaReporte;
  public
    { Public declarations }
    procedure ActionRefreshNotification( Action : TBasicAction );
    procedure ActionTreeAddNotification( Action : TBasicAction );
    procedure ActionTreeDelNotification( Action : TBasicAction );
    procedure ActionInsertNotification( Action : TBasicAction );
    procedure ActionEditNotification( Action : TBasicAction );
    procedure ActionDeleteNotification( Action : TBasicAction );
    procedure ActionDesignNotification( Action : TBasicAction );
    procedure ActionExecuteNotification( Action : TBasicAction );
    procedure UpdateActionsState; override;
  end;

var
  frmIDEModule: TfrmIDEModule;

implementation

uses ActionsDM, DataModule, Main, DialogReporteDatos, ReportsDM,
  InformeModule, DialogFormViews, DialogFormViewRol,
  QueryBuilderModule, DateUtils, DialogElegirTipoDoc, StrUtils;

{$R *.dfm}

procedure TfrmIDEModule.oiTablasClick(Sender: TObject);
begin
  inherited;
  case (Sender AS TRzGroupItem).Tag of    //
    1:Begin
        qrTablas.Close;
        qrTablas.Open;
        pcObjectos.ActivePage := tsTablas;
      End ;
    2:Begin
        qrVistas.Close;
        qrVistas.Open;
        pcObjectos.ActivePage := tsConsultas;
      End ;
    3:Begin
        qrUserForms.Close;
        qrUserForms.Open;
        pcObjectos.ActivePage := tsFormularios;
      End ;
    4:Begin
        qrReportes.Close;
        qrReportes.Open;
        pcObjectos.ActivePage := tsReportes;
      End ;
    5:Begin
        qrUserScripts.Close;
        qrUserScripts.Open;
        pcObjectos.ActivePage := tsUserScripts;
      End ;
  end;    // case
end;

procedure TfrmIDEModule.FormCreate(Sender: TObject);
begin
  inherited;
  qrTablas.Close;
  qrTablas.Open;
  pcObjectos.ActivePage := tsTablas;
  RutaReportes := DM.DataBase.Execute('Select TOP 1 RutaReportes from SysParametros').Fields[0].Value;
end;

procedure TfrmIDEModule.tvTablasCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  DoDesign;
end;

procedure TfrmIDEModule.RegisterActions;
begin
  inherited;
  RegisterAction(dmAppActions.actAgregar, ActionInsertNotification);
  RegisterAction(dmAppActions.actModificar, ActionEditNotification);
  RegisterAction(dmAppActions.actBorrar, ActionDeleteNotification);
  RegisterAction(dmAppActions.actDesign, ActionDesignNotification);
  RegisterAction(dmAppActions.actNewFolder, ActionTreeAddNotification);
  RegisterAction(dmAppActions.actExecute, ActionExecuteNotification);
  RegisterAction(dmAppActions.actLimpiarFiltro, ActionRefreshNotification);
end;

procedure TfrmIDEModule.ActionDeleteNotification(Action: TBasicAction);
begin
  case pcObjectos.ActivePageIndex of    //
    0,2,4,5: DoDelete;
    1:Begin
        if qrVistasItemType.Value = 3 then Exit;
        if qrVistasItemType.Value = 1 then
          DoTreeDel
        else
          DoDelete;
      End ;
    3:Begin
        if qrReportesItemType.Value = 3 then Exit;
        if qrReportesItemType.Value = 1 then
          DoTreeDel
        else
          DoDelete;
      End;
  end;    // case
end;

procedure TfrmIDEModule.ActionDesignNotification(Action: TBasicAction);
begin
  DoDesign;
end;

procedure TfrmIDEModule.ActionEditNotification(Action: TBasicAction);
begin
  DoEdit;
end;

procedure TfrmIDEModule.ActionInsertNotification(Action: TBasicAction);
begin
  DoInsert;
end;

procedure TfrmIDEModule.DoAgregaDocumento;
var
  iFolder : Integer;
begin
  iFolder := (TfrmDialogElegirTipoDoc.Create(Self)).GetTipoDoc;
  if iFolder <> 0 then begin
    DMReports.SetReport(iFolder,'');
    DMReports.ppDesigner.ShowModal;
    qrDocumentos.Close;
    qrDocumentos.Open;
  end;
end;

procedure TfrmIDEModule.DoAgregaReporte;
var
  iFolder : Integer;
begin
  if qrReportesItemType.Value = 1 then
    iFolder := qrReportesRecID.Value
  else
    iFolder := qrReportesParentID.Value;
  if iFolder <> 0 then begin
    DMReports.SetReport(iFolder,'');
    if FileExists(DM.SysApplFolder + '\ReportTemplate.rtm') then begin
      DMReports.ppReport.Template.FileName := DM.SysApplFolder + '\ReportTemplate.rtm';
      DMReports.ppReport.Template.LoadFromFile;
    end;
    DMReports.ppDesigner.ShowModal;
    qrReportes.Refresh;
  end;
end;

procedure TfrmIDEModule.DoDelete;
begin
  case pcObjectos.ActivePageIndex of    //
    0:Begin
      End ;
    1:Begin
        if ( not qrVistas.IsEmpty ) and ( MessageDlg(SSeguroQueDeseaEli6, mtConfirmation, [mbYes,mbNo], 0) = mrYes ) then begin
          qrVista.Close;
          qrVista.ParamByName('pItem').Value := qrVistasRecId.Value;
          qrVista.Open;
          qrVista.Delete;
          qrVistas.Close;
          qrVistas.Open;
        end;
      End ;
    2:Begin
        if ( not qrUserForms.IsEmpty ) and ( MessageDlg(SSeguroQueDeseaEli7, mtConfirmation, [mbYes,mbNo], 0) = mrYes ) then begin
          qrUserForms.Delete;
        end;
      End ;
    3:Begin
        if ( not qrReportes.IsEmpty ) and ( MessageDlg(SSeguroQueDeseaEli4, mtConfirmation, [mbYes,mbNo], 0) = mrYes ) then begin
          qrVista.Close;
          qrVista.ParamByName('pItem').Value := qrReportesRecId.Value;
          qrVista.Open;
          qrVista.Delete;
          qrReportes.Close;
          qrReportes.Open;
        end;
      End ;
    4:Begin
        if ( not qrDocumentos.IsEmpty ) and ( MessageDlg(SSeguroQueDeseaEli9, mtConfirmation, [mbYes,mbNo], 0) = mrYes ) then begin
          qrDocumentos.Delete;
        end;
      End;
    5:Begin
        if ( not qrUserScripts.IsEmpty ) and ( MessageDlg(SSeguroQueDeseaEli8, mtConfirmation, [mbYes,mbNo], 0) = mrYes ) then begin
          qrUserScripts.Delete;
        end;
      End ;
  end;    // case
end;

procedure TfrmIDEModule.DoDesign;
begin
  case pcObjectos.ActivePageIndex of //
    0:Begin
        frmMain.LanzaConsulta(-1040, tvTablasTableName.EditValue);
      End ;
    1:Begin
        ShowSqlBuilder;
      End ;
    2:Begin
        DoFormDesign;
      End ;
    3:Begin
        if qrReportesItemType.Value = 1 then Exit;
        qrVista.Close;
        qrVista.ParamByName('pItem').Value := qrReportesRecId.Value;
        qrVista.Open;
        if qrVistaSqlText.AsString <> '' then begin
          DMReports.SetReport( qrVistaFolderId.Value, qrVistaName.Text );
        end else begin
          DMReports.SetReport( qrVistaFolderId.Value, '' );
        end;
        DMReports.ppDesigner.ShowModal;
      End ;
    4:Begin
        if qrDocumentosName.Text <> '' then begin
          if qrDocumentosSqlText.AsString <> '' then begin
            DMReports.SetReport( qrDocumentosFolderId.Value, qrDocumentosName.Text );
          end else begin
            DMReports.SetReport( qrDocumentosFolderId.Value, '' );
          end;
          DMReports.ppDesigner.ShowModal;
          qrDocumentos.Close;
          qrDocumentos.Open;
        end;
      end;
    5:Begin
        frmMain.LanzaConsulta(-9999, qrUserScriptsProcesoId.AsString);
      End ;
  end;    // case
end;

procedure TfrmIDEModule.DoEdit;
var
  NewFolder: Integer;
begin
  case pcObjectos.ActivePageIndex of    //
    0:Begin
        qrTablas.Edit;
      End ;
    1:Begin
        if qrVistasItemType.Value <> 2 then Exit;
        With TfrmDialogReporteDatos.Create(Self) do begin
          liFolder.Visible := True;
          qrItem.Close;
          qrItem.ParamByName('pItem').Value := qrVistasRecId.Value;
          qrItem.Open;
          qrItem.Edit;
          liReport.Visible := False;
          ShowModal;
          if ModalResult = mrOk then
            qrItem.Post
          else
            qrItem.Cancel;
          NewFolder := qrItemFolderId.Value;
        End;
        if NewFolder <> qrVistasParentID.Value then
          DoRefresh;
      End ;
    2:Begin
        DoDesign;
      End ;
    3:Begin
        if qrReportesItemType.Value <> 2 then Exit;
        With TfrmDialogReporteDatos.Create(Self) do begin
          liQuery.Visible := False;
          liFolder.Visible := True;
          qrItem.Close;
          qrItem.ParamByName('pItem').Value := qrReportesRecId.Value;
          qrItem.Open;
          qrItem.Edit;
          ShowModal;
          if ModalResult = mrOk then
            qrItem.Post
          else
            qrItem.Cancel;
          NewFolder := qrItemFolderId.Value;
        End;
        if NewFolder <> qrVistasParentID.Value then
          DoRefresh;
      End ;
    4:Begin
        DoDesign;
      End;
    5:Begin
        qrUserScripts.Edit;
      End ;
  end;    // case
end;

procedure TfrmIDEModule.DoInsert;
var
  bRefresh: Boolean;
  iItem: Integer;
begin
  case pcObjectos.ActivePageIndex of    //
    0:Begin
      End ;
    1:Begin
        if qrVistasItemType.Value = 3 then Exit;
        With TfrmDialogReporteDatos.Create(Self) do begin
          qrItem.Close;
          qrItem.ParamByName('pItem').Value := -1;
          qrItem.Open;
          qrItem.Append;
          if qrVistasItemType.Value = 2 then
             qrItemFolderId.Value := qrVistasParentID.Value
          else
             qrItemFolderId.Value := qrVistasRecID.Value;
          qrItemItemType.Value := 2; // Consulta
          qrItemName.Text := SNuevaConsulta;
          qrItemSize.Value := 3;
          liReport.Visible := False;
          ShowModal;
          if ModalResult = mrOk then begin
            bRefresh := True;
            qrItem.Post;
            iItem := qrItemItemId.Value;
          end else begin
            bRefresh := False;
            qrItem.Cancel;
            iItem := 0;
          end;
        end;
        if bRefresh then begin
          qrVistas.Refresh;
          qrVistas.Locate('RecId', iItem, []);
          tvConsulta.DataController.UpdateItems(False);
        end;
//        qrVistas.Close;
//        qrVistas.Open;
      End ;
    2:Begin
      End ;
    3:Begin
        if qrReportesItemType.Value = 3 then Exit;
        DoAgregaReporte;
//        With TfrmDialogReporteDatos.Create(Self) do begin
//          qrItem.Close;
//          qrItem.ParamByName('pItem').Value := -1;
//          qrItem.Open;
//          qrItem.Append;
//          if qrReportesItemType.Value = 2 then
//             qrItemFolderId.Value := qrReportesParentID.Value
//          else
//             qrItemFolderId.Value := qrReportesRecID.Value;
//          qrItemItemType.Value := 1; // Reporte
//          qrItemName.Text := SNuevoReporte;
//          qrItemSize.Value := 3;
//          liQuery.Visible := False;
//          ShowModal;
//          if ModalResult = mrOk then
//            qrItem.Post
//          else
//            qrItem.Cancel;
//        end;
//        qrReportes.Close;
//        qrReportes.Open;
      End ;
    4:Begin
        DoAgregaDocumento;
      End;
    5:Begin
        qrUserScripts.Append;
      End ;
  end;    // case
end;

procedure TfrmIDEModule.UpdateActionsState;
begin
  inherited;
  dmAppActions.actModificar.Enabled := True;
  dmAppActions.actAgregar.Enabled := not ( ( pcObjectos.ActivePage = tsTablas ) or ( pcObjectos.ActivePage = tsFormularios  ) );
  dmAppActions.actBorrar.Enabled := not ( ( pcObjectos.ActivePage = tsTablas ) or ( pcObjectos.ActivePage = tsFormularios  ));
  dmAppActions.actNewFolder.Enabled :=  ( (pcObjectos.ActivePage = tsConsultas) or (pcObjectos.ActivePage = tsReportes) );
  dmAppActions.actExecute.Enabled := ( (pcObjectos.ActivePage = tsTablas) or (pcObjectos.ActivePage = tsConsultas) or (pcObjectos.ActivePage = tsReportes)  );
end;

procedure TfrmIDEModule.pcObjectosChange(Sender: TObject);
begin
  inherited;
  case pcObjectos.ActivePageIndex of    //
    0:Begin
        qrTablas.Close;
        qrTablas.Open;
      End ;
    1:Begin
        qrVistas.Close;
        qrVistas.Open;
      End ;
    2:Begin
        qrUserForms.Close;
        qrUserForms.Open;
      End ;
    3:Begin
        qrReportes.Close;
        qrReportes.Open;
      End ;
    4:Begin
        qrDocumentos.Close;
        qrDocumentos.Open;
      end;
    5:Begin
        qrUserScripts.Close;
        qrUserScripts.Open;
      End ;
  end;    // case
  UpdateActionsState;
end;

procedure TfrmIDEModule.qrDocumentosAfterOpen(DataSet: TDataSet);
begin
  inherited;
  tvDocumentos.DataController.Groups.FullExpand;
end;

procedure TfrmIDEModule.ActionTreeAddNotification(Action: TBasicAction);
begin
  DoTreeAdd;
end;

procedure TfrmIDEModule.ActionTreeDelNotification(Action: TBasicAction);
begin
  DoTreeDel;
end;

procedure TfrmIDEModule.DoTreeAdd;
var
  FolderName: string;
begin
  if pcObjectos.ActivePage = tsConsultas then begin
    FolderName := SNuevoFolder;
    If InputQuery(SNuevoFolder1,SNombreDelFolder,FolderName) then begin
      if qrVistasItemType.Value = 2 then begin
        qrAddFolder.UnPrepare;
        qrAddFolder.ParamByName('pModule').Value := qrVistasModuleID.AsString;
        qrAddFolder.ParamByName('pName').Value := FolderName;
        qrAddFolder.ParamByName('pParent').Value := qrVistasParentID.AsString;
        qrAddFolder.ExecSQL;
      end else begin
        qrAddFolder.UnPrepare;
        qrAddFolder.ParamByName('pModule').Value := qrVistasModuleID.AsString;
        qrAddFolder.ParamByName('pName').Value := FolderName;
        qrAddFolder.ParamByName('pParent').Value := qrVistasRecID.AsString;
        qrAddFolder.ExecSQL;
      end;
      qrVistas.Close;
      qrVistas.Open;
    end;
  end;
  if pcObjectos.ActivePage = tsReportes then begin
    FolderName := SNuevoFolder;
    If InputQuery(SNuevoFolder1,SNombreDelFolder,FolderName) then begin
      if qrReportesItemType.Value = 2 then begin
        qrAddFolder.UnPrepare;
        qrAddFolder.ParamByName('pModule').Value := qrReportesModuleID.AsString;
        qrAddFolder.ParamByName('pName').Value := FolderName;
        qrAddFolder.ParamByName('pParent').Value := qrReportesParentID.AsString;
        qrAddFolder.ExecSQL;
      end else begin
        qrAddFolder.UnPrepare;
        qrAddFolder.ParamByName('pModule').Value := qrReportesModuleID.AsString;
        qrAddFolder.ParamByName('pName').Value := FolderName;
        qrAddFolder.ParamByName('pParent').Value := qrReportesRecID.AsString;
        qrAddFolder.ExecSQL;
      end;
      qrReportes.Close;
      qrReportes.Open;
    end;
  end;
end;

procedure TfrmIDEModule.DoTreeDel;
  Function EstaVacio( iFolder : Integer ) : boolean;
  begin
    qrHijas.Close;
    qrHijas.ParamByName('pFolder').Value := iFolder;
    qrHijas.Open;
    Result := qrHijas.IsEmpty;
  end;
  Procedure DelFolder( iFolder : Integer );
  begin
    qrDelFolder.UnPrepare;
    qrDelFolder.ParamByName('pFolder').Value := iFolder;
    qrDelFolder.ExecSQL;
  end;
begin
  if pcObjectos.ActivePage = tsConsultas then begin
    if qrVistasParentID.AsString = '' then begin
      DM.Warning(SNoPuedeEliminarLa);
      Abort;
    end;
    if not EstaVacio(qrVistasRecID.Value) then begin
      DM.Warning(SEstaCarpetaNoEsta);
      Abort;
    end;
    if MessageDlg(SDeseaBorrarEstaCa, mtConfirmation, [mbYes,mbNo], 0) = mrYes then begin
      DelFolder(qrReportesRecID.Value);
      qrVistas.Close;
      qrVistas.Open;
    end;
  end;
  if pcObjectos.ActivePage = tsReportes then begin
    if qrReportesParentID.AsString = '' then begin
      DM.Warning(SNoPuedeEliminarLa);
      Abort;
    end;
    if not EstaVacio(qrVistasRecID.Value) then begin
      DM.Warning(SEstaCarpetaNoEsta);
      Abort;
    end;
    if MessageDlg(SDeseaBorrarEstaCa, mtConfirmation, [mbYes,mbNo], 0) = mrYes then begin
      DelFolder(qrReportesRecID.Value);
      qrReportes.Close;
      qrReportes.Open;
    end;
  end;
end;

procedure TfrmIDEModule.tvConsultaNodeChanged(Sender: TObject;
  ANode: TcxTreeListNode; AColumn: TcxTreeListColumn);
begin
  inherited;
  qrVistas.Locate('RecId',tvConsultasRecId.EditValue,[]);
end;

procedure TfrmIDEModule.tvDocumentosCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  DoDesign;
end;

procedure TfrmIDEModule.cxDBTreeList2NodeChanged(Sender: TObject;
  ANode: TcxTreeListNode; AColumn: TcxTreeListColumn);
begin
  inherited;
  qrReportes.Locate('RecId',tvReportesRecId.EditValue,[]);
end;

procedure TfrmIDEModule.ActionExecuteNotification(Action: TBasicAction);
begin
  DoExecute;
end;

//Created with Castalia Extract Method Refactoring
procedure TfrmIDEModule.EjecutaConsulta;
var
  I: Integer;
begin
  try
    LockWindowUpdate(frmMain.Handle);
    //with TfrmConsultaExplorador.Create(Self) do begin
    With TfrmInformeModule.Create(Self) do begin
      tvConsulta.ClearItems;
      qrVista.Close;
      qrVista.ParamByName('pItem').Value := qrVistasRecId.Value;
      qrVista.Open;
      qrConsulta.Close;
      qrConsulta.SQL.Text := qrVistaSqlText.AsString;
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
      SetCaption(qrVistasName.Text);
      Show;
    end;    // with
  finally // wrap up
    LockWindowUpdate(0);
  end;    // try/finally
end;

procedure TfrmIDEModule.DoExecute;
begin
  case pcObjectos.ActivePageIndex of    //
    0:Begin
        EjecutaTabla();//Created with Castalia Extract Method Refactoring
      End ;
    1:Begin
        EjecutaConsulta();//Created with Castalia Extract Method Refactoring
      End ;
    2:Begin
        if ( not qrUserForms.IsEmpty ) and ( MessageDlg(SSeguroQueDeseaEli7, mtConfirmation, [mbYes,mbNo], 0) = mrYes ) then begin
          qrUserForms.Delete;
        end;
      End ;
    3:Begin
        EjecutaReporte();
      End ;
    4:Begin
        if ( not qrUserScripts.IsEmpty ) and ( MessageDlg(SSeguroQueDeseaEli8, mtConfirmation, [mbYes,mbNo], 0) = mrYes ) then begin
          qrUserScripts.Delete;
        end;
      End ;
  end;    // case
end;

procedure TfrmIDEModule.EjecutaTabla;
var
  I: Integer;
begin
  try
    LockWindowUpdate(frmMain.Handle);
    //with TfrmConsultaExplorador.Create(Self) do begin
    With TfrmInformeModule.Create(Self) do begin
      tvConsulta.ClearItems;
      qrConsulta.Close;
      qrConsulta.SQL.Text := 'Select * from ' + qrTablasTableName.Text;
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
      SetCaption(qrTablasTableAlias.Text);
      //Show;
      frmMain.ShowForm(Self,True);
    end;    // with
  finally // wrap up
    LockWindowUpdate(0);
  end;    // try/finally
end;

procedure TfrmIDEModule.EjecutaReporte;
var
  i: Integer;
begin
  qrVista.Close;
  qrVista.ParamByName('pItem').Value := qrReportesRecId.Value;
  qrVista.Open;
  With DMReports do begin
    DMReports.SetReport( qrVistaFolderId.Value, qrVistaName.Text );
    if ppReport.AutoSearchFieldCount > 0 then begin
      for I := 0 to ppReport.AutoSearchFieldCount - 1 do begin    // Iterate
        ppReport.AutoSearchFields[i].ShowAllValues := True;
      end;    // for
    end;
    DMReports.ppReport.DeviceType := 'Screen';
    DMReports.ppReport.ShowAutoSearchDialog := False;
    DMReports.ppReport.AllowPrintToFile := True;
    DMReports.ppReport.PrintReport;
  End;
end;

procedure TfrmIDEModule.tvUserScriptsCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  DoDesign;
end;

procedure TfrmIDEModule.cxDBTreeList2DblClick(Sender: TObject);
begin
  inherited;
  DoDesign;
end;

procedure TfrmIDEModule.tvUserFormsCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  DoDesign;
end;

procedure TfrmIDEModule.tvConsultaDblClick(Sender: TObject);
begin
  inherited;
  DoDesign;
end;

procedure TfrmIDEModule.ActionRefreshNotification(Action: TBasicAction);
begin
  DoRefresh;
end;

procedure TfrmIDEModule.DoRefresh;
begin
  case pcObjectos.ActivePageIndex of    //
    0:Begin
        qrTablas.Close;
        qrTablas.Open;
      End ;
    1:Begin
        qrVistas.Close;
        qrVistas.Open;
      End ;
    2:Begin
        qrUserForms.Close;
        qrUserForms.Open;
      End ;
    3:Begin
        qrReportes.Close;
        qrReportes.Open;
      End ;
    4:Begin
        qrUserScripts.Close;
        qrUserScripts.Open;
      End ;
  end;    // case
end;

procedure TfrmIDEModule.DoFormDesign;
var
  frmDlgFormViews: TfrmDialogFormViewRol;
begin
  frmDlgFormViews := TfrmDialogFormViewRol.Create(Self);
  frmDlgFormViews.ShowForm( qrUserFormsFormName.Text, qrUserFormsViewName.Value, qrUserFormsTipo.Value);
end;

procedure TfrmIDEModule.Disear1Click(Sender: TObject);
begin
  inherited;
  DoDesign;
end;

procedure TfrmIDEModule.Importar1Click(Sender: TObject);
begin
  inherited;
  qrImport.Close;
  qrImport.SQL.Text := 'Select * from ' + qrTablasTableName.Text;
  qrImport.Open;
  qImport.Execute;
end;

procedure TfrmIDEModule.miSincronizarClick(Sender: TObject);
var
  TableName : String;
begin
  inherited;
  //
  try
    Screen.Cursor := crHourGlass;
    TableName := qrTablasTableName.Text;
    qrImport.Close;
    qrImport.SQL.Text := 'Select * from ' + TableName;
    qrImport.Open;
    //
    qrFields.Close;
    qrFields.Open;
    qrFields.First;
    while not qrFields.Eof do begin
      if LeftStr( qrFieldsFieldName.Text, 4 ) = 'USR_' then begin
        if qrImport.FindField(qrFieldsFieldName.Text) = nil then begin
          if qrFieldsDataType.Text = 'dtString' then begin
            cmdAlter.CommandText := 'ALTER TABLE ' + TableName + ' ADD ' + qrFieldsFieldName.Text +
                                       ' VARCHAR( ' + qrFieldsFieldSize.Text + ') NULL';
          End;
          if qrFieldsDataType.Text = 'dtInteger' then begin
            cmdAlter.CommandText := 'ALTER TABLE ' + TableName + ' ADD ' + qrFieldsFieldName.Text +
                                       ' INT NULL';
          End;
          if qrFieldsDataType.Text = 'dtDouble' then begin
            cmdAlter.CommandText := 'ALTER TABLE ' + TableName + ' ADD ' + qrFieldsFieldName.Text +
                                       ' MONEY NULL';
          End;
          if qrFieldsDataType.Text = 'dtDateTime' then begin
            cmdAlter.CommandText := 'ALTER TABLE ' + TableName + ' ADD ' + qrFieldsFieldName.Text +
                                       ' DATETIME NULL';
          End;
          if qrFieldsDataType.Text = 'dtMemo' then begin
            cmdAlter.CommandText := 'ALTER TABLE ' + TableName + ' ADD ' + qrFieldsFieldName.Text +
                                       ' TEXT  NULL';
          End;
          if qrFieldsDataType.Text = 'dtBoolean' then begin
            cmdAlter.CommandText := 'ALTER TABLE ' + TableName + ' ADD ' + qrFieldsFieldName.Text +
                                       ' BIT NULL';
          End;
          cmdAlter.Execute;
        end;
      end;
      qrFields.Next;
    end;

    //
    DM.Info(SProcesoCompletado);
  finally
    Screen.Cursor := crDefault;
  end;

end;

procedure TfrmIDEModule.Exportar1Click(Sender: TObject);
begin
  inherited;
  qrImport.Close;
  qrImport.SQL.Text := 'Select * from ' + qrTablasTableName.Text;
  qrImport.Open;
  qExport.Execute;

end;

procedure TfrmIDEModule.ShowSqlBuilder;
begin
  qrVista.Close;
  qrVista.ParamByName('pItem').Value := qrVistasRecId.Value;
  qrVista.Open;
  with TfrmQueryBuilderModule.Create(Self) do begin
    ShowSQl( qrVistaSqlText.AsString );
    if MessageDlg(SGrabarCambiosConsulta, mtConfirmation, [mbYes,mbNo], 0) = mrYes then begin
      qrVista.Edit;
      qrVistaSqlText.AsString := QueryBuilder.SQL;
      qrVista.Post;
    end;
  end;    // with
end;

end.
