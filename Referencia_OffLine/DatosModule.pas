unit DatosModule;
                      
interface               

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomModule, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, dxLayoutControl, cxMRUEdit, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  cxGridCustomPopupMenu, cxGridPopupMenu, dxPSContainerLnk, dxPSdxLCLnk,
  dxPSCore, dxPScxGridLnk, JvComponent, JvFormPlacement,
  cxDBExtLookupComboBox, cxNavigator, cxDBNavigator, cxListBox, cxDBEdit,
  cxGroupBox, cxRadioGroup, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxBlobEdit, cxImage, cxCurrencyEdit, cxButtonEdit,cxTimeEdit,
  cxHyperLinkEdit, cxCalc, cxSpinEdit, cxImageComboBox, cxCheckBox,
  cxCalendar, cxMemo, StdCtrls, cxGridBandedTableView, cxGridDBBandedTableView,
  dxNavBarCollns, dxNavBarBase, ExtCtrls, dxNavBar, GradientLabel, RzPanel,
  RzSplit, dxPScxCommon, ADODB, cxDBData, StdActns, ActnList, Menus,
  JvStringHolder, cxLookAndFeelPainters, cxButtons, JvExControls,
  JvEnterTab, JvSpeedButton, RzLabel, RzBckgnd, cxPC, PymeConst,
  JvComponentBase, ABSMain, cxintl;

type
  TfrmDatosModule = class(TfrmCustomModule)
    dsDatos: TDataSource;
    dxPrintGrid: TdxComponentPrinter;
    dxPrintGridLink: TdxGridReportLink;
    dxPrintGridDatos: TdxLayoutControlReportLink;
    cxGridPopupMenu: TcxGridPopupMenu;
    cxGridStyles: TcxStyleRepository;
    stGrDatos: TcxStyle;
    stGrEdit: TcxStyle;
    SaveDialog: TSaveDialog;
    dxLayoutControl1: TdxLayoutControl;
    pcDatos: TcxPageControl;
    tsMain: TcxTabSheet;
    lcGrid: TdxLayoutControl;
    dgDatos: TcxGrid;
    tvDatos: TcxGridDBTableView;
    lvDatos: TcxGridLevel;
    btBuscar: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    lcGrupoBuscar: TdxLayoutGroup;
    lcGridItem4: TdxLayoutItem;
    lcGridGroup2: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    tsDatos: TcxTabSheet;
    lcDatos: TdxLayoutControl;
    Group_Root: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    lgDatos: TdxLayoutGroup;
    liDatos: TdxLayoutItem;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    lgBotones: TdxLayoutGroup;
    qryHelper: TADOQuery;
    qrDefaultView: TADOQuery;
    strView: TJvStrHolder;
    strTableNames: TJvStrHolder;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    qrUserFields: TABSQuery;
    qrUserFieldsTableName: TStringField;
    qrUserFieldsFieldName: TStringField;
    qrUserFieldsFieldAlias: TStringField;
    qrUserFieldsSelectable: TStringField;
    qrUserFieldsSearchable: TStringField;
    qrUserFieldsSortable: TStringField;
    qrUserFieldsDataType: TStringField;
    qrUserFieldsAutoSearch: TStringField;
    qrUserFieldsMandatory: TStringField;
    qrVistas: TABSQuery;
    qrVistasTipo: TIntegerField;
    qrVistasFormName: TStringField;
    qrVistasViewName: TStringField;
    qrVistasSavedView: TMemoField;
    qrVistasDefault: TBooleanField;
    procedure FormCreate(Sender: TObject);
    procedure dsDatosStateChange(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tvDatosDataControllerFilterChanged(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure tvDatosDataControllerFilterGetValueList(
      Sender: TcxFilterCriteria; AItemIndex: Integer;
      AValueList: TcxDataFilterValueList);
    procedure tvDatosDataControllerSortingChanged(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure dxPrintGridStartGenerateReport(Sender: TObject;
      AReportLink: TBasedxReportLink);
    procedure dxPrintGridGenerateReportProgress(Sender: TObject;
      AReportLink: TBasedxReportLink; APercentDone: Double);
    procedure dxPrintGridEndGenerateReport(Sender: TObject;
      AReportLink: TBasedxReportLink);
    procedure lcDatosCustomization(Sender: TObject);
    procedure tvDatosCustomization(Sender: TObject);
  private
    { Private declarations }
    ShouldToggle  : Boolean;
    AStoreKey     : String;
    //
    procedure DoFakeAction(Action : TBasicAction);

    procedure SetReadOnlyToNoEdit;
    procedure SetComponentReadOnly( thisComponent : TComponent; bFlag : Boolean );
    procedure UnSetReadOnlyToNoEdit;
    procedure LookUpsContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure UserFieldsClick(Sender : TObject);
    function GetSQLCondition(AView: TcxGridDBTableView;
      AAddFilter: Boolean): string;
  protected
    SecLevel      : Integer;
    NoDataSetOpen : Boolean;
    //
    function  GetTableId : String; override;
    function  GetRecordId : String ; override;
    procedure RegisterActions; override;
    procedure DoToggleView; virtual;
    procedure DoSysDoc; virtual;
    procedure DoPrint; virtual;
    procedure DoExport; virtual;
    procedure DoFilter; virtual;
    procedure DoClearFilter; virtual;
    procedure DoInsert; virtual;
    procedure DoEdit; virtual;
    procedure DoDelete; virtual;
    procedure DoPost; virtual;
    procedure DoCancel; virtual;
    procedure DoFirst; virtual;
    procedure DoPrior; virtual;
    procedure DoNext; virtual;
    procedure DoLast; virtual;
    procedure DoDesign; virtual;
    procedure DoViews; virtual;
    procedure DoGridCustomize; virtual;
    procedure DoShowGroupPanel; virtual;
    procedure DoGridShowFooter; virtual;
    procedure DoGridFullExpand; virtual;
    procedure DoGridFullCollapse; virtual;
    procedure DoGridAutoFit; virtual;
    procedure CreateUserFields; virtual;
    function  CanAdd : Boolean;
    function  CanEdit : Boolean;
    function  CanDelete : Boolean;
    function  CanNavigate : Boolean;
    procedure SetDefaultView ; virtual;
    procedure LoadFormLayOut; virtual;
    procedure SetColorTo(iColor: TColor);
  public
    { Public declarations }
    procedure ActionToggleViewNotification( Action : TBasicAction );
    procedure ActionPrintNotification( Action : TBasicAction );
    procedure ActionExportNotification( Action : TBasicAction );
    procedure ActionPostNotification( Action : TBasicAction );
    procedure ActionCancelNotification( Action : TBasicAction );
    procedure ActionInsertNotification( Action : TBasicAction );
    procedure ActionEditNotification( Action : TBasicAction );
    procedure ActionDeleteNotification( Action : TBasicAction );
    procedure ActionFirstNotification( Action : TBasicAction );
    procedure ActionPriorNotification( Action : TBasicAction );
    procedure ActionNextNotification( Action : TBasicAction );
    procedure ActionLastNotification( Action : TBasicAction );
    procedure ActionFilterNotification( Action : TBasicAction );
    procedure ACtionClearFilterNotification( Action : TBasicAction );
    procedure ActionDesignNotification( Action : TBasicAction );
    procedure ActionViewsNotififacion( Action : TBasicAction );
    procedure ActionGroupPanelNotification( Action : TBasicAction );
    procedure ActionGridCustomizeNotification( Action : TBasicAction );
    procedure ActionGridShowFooterNotification( Action : TBasicAction );
    procedure ActionGridFullExpandNotification( Action : TBasicAction );
    procedure ActionGridFullCollapseNotification(Action: TBasicAction);
    procedure ActionGridAutoFitNotification(Action : TBasicAction);
    procedure ActionSysDocNotification(Action : TBasicAction );
    //
    procedure UpdateActionsState; override;
    procedure UpdateActionsVisibility; override;
    procedure SetSecurity( iLevel : Integer ); override;
  end;

const
  PODERBORRAR  = 0;
  PODEREDITAR  = 1;
  PODERAGREGAR = 2;
  PODERVER     = 3;

var
  frmDatosModule: TfrmDatosModule;


implementation

uses ActionsDM, cxExportGrid4Link, DataModule, Main, DialogFormViews,
  TypInfo, StrUtils, DialogUserFields, SysDocManager;

{$R *.dfm}

{ TfrmDatosModule }

procedure TfrmDatosModule.DoFakeAction(Action: TBasicAction);
begin
  //
end;

procedure TfrmDatosModule.RegisterActions;
begin
  inherited;
  RegisterAction(dmAppActions.actToggleView, ActionToggleViewNotification);
  RegisterAction(dmAppActions.actGrabar, ActionPostNotification);
  RegisterAction(dmAppActions.actCancelar, ActionCancelNotification);
  RegisterAction(dmAppActions.actPrintPreview, ActionPrintNotification);
  RegisterAction(dmAppActions.actExportar, ActionExportNotification);
  RegisterAction(dmAppActions.actFiltrar, ActionFilterNotification);
  RegisterAction(dmAppActions.actLimpiarFiltro, ActionClearFilterNotification);
  RegisterAction(dmAppActions.actVistas, ActionViewsNotififacion);
  //
  if CanAdd then RegisterAction(dmAppActions.actAgregar, ActionInsertNotification);
  if CanEdit then RegisterAction(dmAppActions.actModificar, ActionEditNotification);
  if CanDelete then RegisterAction(dmAppActions.actBorrar, ActionDeleteNotification);
  if CanNavigate then begin
    RegisterAction(dmAppActions.actFirst, ActionFirstNotification);
    RegisterAction(dmAppActions.actPrior, ActionPriorNotification);
    RegisterAction(dmAppActions.actNext, ActionNextNotification);
    RegisterAction(dmAppActions.actLast, ActionLastNotification);
  end;
  //
  RegisterAction(dmAppActions.actGridCustomize, ActionGridCustomizeNotification);
  RegisterAction(dmAppActions.actGroupPanel, ActionGroupPanelNotification);
  RegisterAction(dmAppActions.actGridShowFooter, ActionGridShowFooterNotification);
  RegisterAction(dmAppActions.actGridFullExpand, ActionGridFullExpandNotification);
  RegisterAction(dmAppActions.actGridFullCollapse, ActionGridFullCollapseNotification);
  RegisterAction(dmAppActions.actGridAutoAdjust, ActionGridAutoFitNotification);
  //
  RegisterAction(dmAppActions.actDesign, ActionDesignNotification);
  if tvDatos.DataController.KeyFieldNames <> '' then RegisterAction(dmAppActions.actSysDoc, ActionSysDocNotification);
end;

procedure TfrmDatosModule.FormCreate(Sender: TObject);
var
  I: Integer;
begin
  inherited;
  //
  dxLayoutControl1.LookAndFeel := dmAppActions.lnfNoBorder;
  lcGrid.LookAndFeel := dmAppActions.lnfWeb;
  lgBotones.LookAndFeel := dmAppActions.lnfButtonGroup;
  lcDatos.LookAndFeel := dmAppActions.lnfWeb;
  //dgDatos.LookAndFeel.NativeStyle := True;
  //
  pcDatos.HideTabs := True;
  if Assigned( dsDatos.DataSet ) then begin
    dsDatos.DataSet.Close;
    if strTableNames.Strings.Count = 0 then
      strTableNames.Strings.Add( GetTableNameByDataSet( dsDatos.DataSet ) );
    CreateUserFields;
    if not NoDataSetOpen then dsDatos.DataSet.Open;
  end;
  pcDatos.ActivePage := tsMain;
  lgBotones.Visible := ( lgBotones.VisibleCount > 0 );
  lgBotones.ShowBorder := lgBotones.Visible;
  //
  AStoreKey := 'Software\PYME Accounting\Contabilidad\' + Name;
    //dgDatos.ActiveView.RestoreFromRegistry(AStoreKey,False,False,[gsoUseFilter,gsoUseSummary]);
  tvDatos.DataController.Filter.Options := [];
  //
  LoadFormLayout;
  SetMandatoryItems;
  SetDefaultView;
  //
  //SetColorTo(dm.ColorConsulta);
end;

function TfrmDatosModule.CanAdd: Boolean;
begin
  Result := True;
end;

function TfrmDatosModule.CanDelete: Boolean;
begin
  Result := True;
end;

function TfrmDatosModule.CanEdit: Boolean;
begin
  Result := True;
end;

function TfrmDatosModule.CanNavigate: Boolean;
begin
  Result := True;
end;

procedure TfrmDatosModule.ActionPrintNotification(Action: TBasicAction);
begin
  DoPrint;
end;

procedure TfrmDatosModule.DoPrint;
begin
  if pcDatos.ActivePage = tsMain then begin
    dxPrintGridLink.ReportTitle.Text := '';
    dxPrintGridLink.PrinterPage.PageHeader.LeftTitle.Add( DM.TituloEmpresa );
    dxPrintGridLink.PrinterPage.PageHeader.LeftTitle.Add(Caption);
    dxPrintGridLink.PrinterPage.PageHeader.LeftTitle.Add('');
    dxPrintGrid.CurrentLink := dxPrintGridLink
  end else begin
    dxPrintGridDatos.ReportTitle.Text := Caption;
    dxPrintGrid.CurrentLink := dxPrintGridDatos;
  end;
  dxPrintGrid.Preview(True);
end;

procedure TfrmDatosModule.ActionCancelNotification(Action: TBasicAction);
begin
  doCancel;
end;

procedure TfrmDatosModule.ActionDeleteNotification(Action: TBasicAction);
begin
  doDelete;
end;

procedure TfrmDatosModule.ActionEditNotification(Action: TBasicAction);
begin
  doEdit;
end;

procedure TfrmDatosModule.ActionExportNotification(Action: TBasicAction);
begin
  doExport;
end;

procedure TfrmDatosModule.ActionInsertNotification(Action: TBasicAction);
begin
  doInsert;
end;

procedure TfrmDatosModule.ActionPostNotification(Action: TBasicAction);
begin
  doPost;
end;

procedure TfrmDatosModule.DoCancel;
begin
  if dsDatos.DataSet.Modified then begin
    Beep;
    if MessageDlg(SHayCambiosRealizad, mtConfirmation, [mbYes,mbNo], 0) = mrNo then
      Exit;
  end;
  dsDatos.DataSet.Cancel;
  UnSetReadOnlyToNoEdit;
end;

procedure TfrmDatosModule.DoDelete;
begin
  SetColorTo(dm.ColorBorra);
  try
    if MessageDlg(SSeguroQueDeseaEli, mtConfirmation, [mbYes,mbNo], 0) = mrYes then
      tvDatos.DataController.DeleteFocused;
  finally
    SetColorTo(dm.ColorConsulta);
  end;
end;

procedure TfrmDatosModule.DoEdit;
begin
  SetReadOnlyToNoEdit;
  SetColorTo(dm.ColorModifica);
  dsDatos.DataSet.Edit;
end;

procedure TfrmDatosModule.DoInsert;
begin
  if dsDatos.State in [dsEdit,dsInsert] then DoPost;
  SetColorTo(dm.ColorAgrega);
  dsDatos.DataSet.Insert;
end;

procedure TfrmDatosModule.DoPost;
begin
  if ValidateRecord( dsDatos.DataSet ) then
   begin
    dsDatos.DataSet.Post;
    UnSetReadOnlyToNoEdit;
   end;
end;

procedure TfrmDatosModule.DoExport;
var
  fExt : String;
begin
  if SaveDialog.Execute then begin
    fExt := ExtractFileExt(SaveDialog.FileName);
    if fExt = '.XLS' then
      ExportGrid4ToExcel(saveDialog.FileName,dgDatos);
    if fExt = '.HTM' then
      ExportGrid4ToHTML(saveDialog.FileName,dgDatos);
    if fExt = '.XML' then
      ExportGrid4ToXML(saveDialog.FileName,dgDatos);
    if fExt = '.TXT' then
      ExportGrid4ToText(saveDialog.FileName,dgDatos);
  end;
end;

procedure TfrmDatosModule.ActionFirstNotification(Action: TBasicAction);
begin
  DoFirst;
end;

procedure TfrmDatosModule.ActionLastNotification(Action: TBasicAction);
begin
  DoLast;
end;

procedure TfrmDatosModule.ActionNextNotification(Action: TBasicAction);
begin
  DoNext;
end;

procedure TfrmDatosModule.ActionPriorNotification(Action: TBasicAction);
begin
  DoPrior;
end;

procedure TfrmDatosModule.DoFirst;
begin
  if pcDatos.ActivePage = tsMain then
    tvDatos.DataController.GotoFirst
  else
    tvDatos.DataController.GotoFirst; //dsDatos.DataSet.First;
end;

procedure TfrmDatosModule.DoLast;
begin
  if pcDatos.ActivePage = tsMain then
    tvDatos.DataController.GotoLast
  else
    tvDatos.DataController.GotoLast; //dsDatos.DataSet.Last;
end;

procedure TfrmDatosModule.DoNext;
begin
  if pcDatos.ActivePage = tsMain then
    tvDatos.DataController.GotoNext
  else
    tvDatos.DataController.GotoNext; //dsDatos.DataSet.Next;
end;

procedure TfrmDatosModule.DoPrior;
begin
  if pcDatos.ActivePage = tsMain then
    tvDatos.DataController.GotoPrev
  else
    tvDatos.DataController.GotoPrev; //dsDatos.DataSet.Prior;
end;

procedure TfrmDatosModule.ACtionClearFilterNotification(
  Action: TBasicAction);
begin
  doClearFilter;
end;

procedure TfrmDatosModule.ActionFilterNotification(Action: TBasicAction);
begin
  doFilter;
end;

procedure TfrmDatosModule.DoClearFilter;
begin
  tvDatos.DataController.Filter.Clear;
  dsDatos.DataSet.Close;
  dsDatos.DataSet.Open;
  //tvDatos.DataController.UpdateItems(False);
end;

procedure TfrmDatosModule.DoFilter;
begin
  tvDatos.Filtering.RunCustomizeDialog;
end;

procedure TfrmDatosModule.UpdateActionsState;
var
  bEdit : Boolean;
  bBrowse : Boolean;
  I       : Integer;
begin
  inherited;
  bEdit := dsDatos.State in [dsEdit,dsInsert];
  bBrowse := not bEdit;
  //
  dmAppActions.actAgregar.Enabled := ( bBrowse or bEdit );
  //
  dmAppActions.actToggleView.Enabled := bBrowse;
  dmAppActions.actExportar.Enabled := bBrowse;
  dmAppActions.actFiltrar.Enabled := bBrowse;
  dmAppActions.actLimpiarFiltro.Enabled := bBrowse;
  dmAppActions.actPrintPreview.Enabled := bBrowse;
  dmAppActions.actModificar.Enabled := bBrowse;
  dmAppActions.actBorrar.Enabled := bBrowse;
  //
  dmAppActions.actFirst.Enabled := bBrowse;
  dmAppActions.actPrior.Enabled := bBrowse;
  dmAppActions.actNext.Enabled := bBrowse;
  dmAppActions.actLast.Enabled := bBrowse;
  dmAppActions.actVistas.Enabled := bBrowse;
  //
  dmAppActions.actGrabar.Enabled := bEdit;
  dmAppActions.actCancelar.Enabled := bEdit;
  //
  dmAppActions.actGridCustomize.Enabled := ( pcDatos.ActivePage = tsMain );
  dmAppActions.actGridShowFooter.Enabled := ( pcDatos.ActivePage = tsMain );
  dmAppActions.actGridFullExpand.Enabled := ( pcDatos.ActivePage = tsMain );
  dmAppActions.actGridFullCollapse.Enabled := ( pcDatos.ActivePage = tsMain );
  dmAppActions.actGridAutoAdjust.Enabled := ( pcDatos.ActivePage = tsMain );
  dmAppActions.actGroupPanel.Enabled := ( pcDatos.ActivePage = tsMain );
  //
end;

procedure TfrmDatosModule.dsDatosStateChange(Sender: TObject);
begin
  inherited;

  if dsDatos.State in [dsEdit,dsInsert] then begin
    ShouldToggle := ( pcDatos.ActivePage = tsMain );
    pcDatos.ActivePage := tsDatos
  end else begin
    SetColorTo(dm.ColorConsulta);
    if ShouldToggle then
      pcDatos.ActivePage := tsMain;
  end;
end;

procedure TfrmDatosModule.ActionToggleViewNotification(
  Action: TBasicAction);
begin
  DoToggleView;
end;

procedure TfrmDatosModule.DoToggleView;
begin
  if pcDatos.ActivePage = tsMain then begin
    pcDatos.ActivePage := tsDatos
  end else begin
    pcDatos.ActivePage := tsMain;
  end;
end;

procedure TfrmDatosModule.SetColorTo(iColor: TColor);
var
  i : Integer;
  oColor : TColor;
begin
  //SetComponentsColor(iColor);
  stGrEdit.Color := iColor;

  oColor := DM.ColorConsulta;
  for i := 0 to ComponentCount -1 do begin
    if ( Components[i] is TcxDbMaskEdit ) then begin
      if ( Components[i] as TcxDbMaskEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbMaskEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbMaskEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbComboBox ) then begin
      if ( Components[i] as TcxDbComboBox ).Properties.ReadOnly then
        ( Components[i] as TcxDbComboBox ).Style.Color := oColor
      else
        ( Components[i] as TcxDbComboBox ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbButtonEdit ) then begin
      if ( Components[i] as TcxDbButtonEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbButtonEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbButtonEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDBMRUEdit ) then begin
      if ( Components[i] as TcxDBMRUEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDBMRUEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDBMRUEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbTextEdit ) then begin
      if ( Components[i] as TcxDbTextEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbTextEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbTextEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbLookupComboBox ) then begin
      if ( Components[i] as TcxDbLookupComboBox ).Properties.ReadOnly then
        ( Components[i] as TcxDbLookupComboBox ).Style.Color := oColor
      else
        ( Components[i] as TcxDbLookupComboBox ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDBExtLookupComboBox ) then begin
      if ( Components[i] as TcxDBExtLookupComboBox ).Properties.ReadOnly then
        ( Components[i] as TcxDBExtLookupComboBox ).Style.Color := oColor
      else
        ( Components[i] as TcxDBExtLookupComboBox ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbCheckBox ) then begin
      if ( Components[i] as TcxDbCheckBox ).Properties.ReadOnly then
        ( Components[i] as TcxDbCheckBox ).Style.Color := oColor
      else
        ( Components[i] as TcxDbCheckBox ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbLookupComboBox ) then begin
      if ( Components[i] as TcxDbLookupComboBox ).Properties.ReadOnly then
        ( Components[i] as TcxDbLookupComboBox ).Style.Color := oColor
      else
        ( Components[i] as TcxDbLookupComboBox ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbImageComboBox ) then begin
      if ( Components[i] as TcxDbImageComboBox ).Properties.ReadOnly then
        ( Components[i] as TcxDbImageComboBox ).Style.Color := oColor
      else
        ( Components[i] as TcxDbImageComboBox ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbCalcEdit ) then begin
      if ( Components[i] as TcxDbCalcEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbCalcEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbCalcEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbSpinEdit ) then begin
      if ( Components[i] as TcxDbSpinEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbSpinEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbSpinEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbCurrencyEdit ) then begin
      if ( Components[i] as TcxDbCurrencyEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbCurrencyEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbCurrencyEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbTimeEdit ) then begin
      if ( Components[i] as TcxDbTimeEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbTimeEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbTimeEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbMemo ) then begin
      if ( Components[i] as TcxDbMemo ).Properties.ReadOnly then
        ( Components[i] as TcxDbMemo ).Style.Color := oColor
      else
        ( Components[i] as TcxDbMemo ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbHyperLinkEdit ) then begin
      if ( Components[i] as TcxDbHyperLinkEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbHyperLinkEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbHyperLinkEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbDateEdit ) then begin
      if ( Components[i] as TcxDbDateEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbDateEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbDateEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxMaskEdit ) then begin
      if ( Components[i] as TcxMaskEdit ).Properties.ReadOnly then
        ( Components[i] as TcxMaskEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxMaskEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxSpinEdit ) then begin
      if ( Components[i] as TcxSpinEdit ).Properties.ReadOnly then
        ( Components[i] as TcxSpinEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxSpinEdit ).Style.Color := iColor;
    end;
    //
  end;

end;

procedure TfrmDatosModule.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if ( dsDatos.State = dsBrowse ) and ( pcDatos.ActivePage = tsDatos ) then begin
    if ( Key = VK_HOME ) and ( Shift =  [ssCtrl] ) then doFirst;
    if ( Key = VK_END ) and ( Shift = [ssCtrl] ) then doLast;
    if ( Key = VK_NEXT ) and ( Shift = [ssCtrl] ) then doNext; //and ( Shift = [ssCtrl] ) then doNext;
    if ( Key = VK_PRIOR ) and ( Shift = [ssCtrl] ) then DoPrior; //and ( Shift = [ssCtrl] ) then doPrior;
  end;
  if ( ( Key = VK_ESCAPE ) and ( Shift = []) ) then begin
    if dsDatos.State in [dsEdit,dsInsert] then begin
      if ( ActiveControl is TcxCustomDropDownEdit ) then begin
        if ( ActiveControl as TcxCustomDropDownEdit ).HasPopupWindow then begin
          inherited;
          Exit;
        end;
      end;
      DoCancel;
      if not ( dsDatos.State in [dsEdit,dsInsert] ) then
        UpdateActionsState;
    end else begin
      frmMain.tsVentanasTabClose(Self, frmMain.tsVentanas.TabIndex );
    end;
  end;
  inherited;
end;

procedure TfrmDatosModule.SetReadOnlyToNoEdit;
var
  i : Integer;
begin
  for i := 0 to ComponentCount - 1 do begin
    if Components[i].Tag = 99 then
      SetComponentReadOnly( Components[i], True );
  end;
end;

procedure TfrmDatosModule.SetComponentReadOnly(thisComponent: TComponent; bFlag : Boolean);
var
  i : Integer;
  oColor : TColor;
begin
  oColor := DM.ColorConsulta;
    if ( thisComponent is TcxDbMaskEdit ) then begin
      ( thisComponent as TcxDbMaskEdit ).Enabled := (not bFlag); // .Properties.ReadOnly := bFlag;
    end;
    if ( thisComponent is TcxDbTextEdit ) then begin
      ( thisComponent as TcxDbTextEdit ).Enabled := (not bFlag); // .Properties.ReadOnly := bFlag;
    end;
    if ( thisComponent is TcxDbLookupComboBox ) then begin
      ( thisComponent as TcxDbLookupComboBox ).Enabled := (not bFlag); // .Properties.ReadOnly := bFlag;
    end;
    if ( thisComponent is TcxDBExtLookupComboBox ) then begin
      ( thisComponent as TcxDBExtLookupComboBox ).Enabled := (not bFlag); // .Properties.ReadOnly := bFlag;
    end;
    if ( thisComponent is TcxDbCheckBox ) then begin
      ( thisComponent as TcxDbCheckBox ).Enabled := (not bFlag); // .Properties.ReadOnly := bFlag;
    end;
    if ( thisComponent is TcxDbLookupComboBox ) then begin
      ( thisComponent as TcxDbLookupComboBox ).Enabled := (not bFlag); // .Properties.ReadOnly := bFlag;
    end;
    if ( thisComponent is TcxDbImageComboBox ) then begin
      ( thisComponent as TcxDbImageComboBox ).Enabled := (not bFlag); // .Properties.ReadOnly := bFlag;
    end;
    if ( thisComponent is TcxDbCalcEdit ) then begin
      ( thisComponent as TcxDbCalcEdit ).Enabled := (not bFlag); // .Properties.ReadOnly := bFlag;
    end;
    if ( thisComponent is TcxDbSpinEdit ) then begin
      ( thisComponent as TcxDbSpinEdit ).Enabled := (not bFlag); // .Properties.ReadOnly := bFlag;
    end;
    if ( thisComponent is TcxDbCurrencyEdit ) then begin
      ( thisComponent as TcxDbCurrencyEdit ).Enabled := (not bFlag); // .Properties.ReadOnly := bFlag;
    end;
    if ( thisComponent is TcxDbTimeEdit ) then begin
      ( thisComponent as TcxDbTimeEdit ).Enabled := (not bFlag); // .Properties.ReadOnly := bFlag;
    end;
    if ( thisComponent is TcxDbMemo ) then begin
      ( thisComponent as TcxDbMemo ).Enabled := (not bFlag); // .Properties.ReadOnly := bFlag;
    end;
    if ( thisComponent is TcxDbHyperLinkEdit ) then begin
      ( thisComponent as TcxDbHyperLinkEdit ).Enabled := (not bFlag); // .Properties.ReadOnly := bFlag;
    end;
    if ( thisComponent is TcxDbDateEdit ) then begin
      ( thisComponent as TcxDbDateEdit ).Enabled := (not bFlag); // .Properties.ReadOnly := bFlag;
    end;
end;

procedure TfrmDatosModule.UnSetReadOnlyToNoEdit;
var
  i : Integer;
begin
  for i := 0 to ComponentCount - 1 do begin
    if Components[i].Tag = 99 then
      SetComponentReadOnly( Components[i], False );
  end;
end;

procedure TfrmDatosModule.tvDatosDataControllerFilterChanged(
  Sender: TObject);
begin
  inherited;
  doFirst;
end;

procedure TfrmDatosModule.SetSecurity(iLevel: Integer);
begin
  inherited;
  case iLevel of
    PODERVER:Begin
                UnRegisterAction( dmAppActions.actAgregar );
                UnRegisterAction( dmAppActions.actModificar );
                UnRegisterAction( dmAppActions.actBorrar );
                UnRegisterAction( dmAppActions.actGrabar );
                UnRegisterAction( dmAppActions.actCancelar );
             End;
    PODERAGREGAR:Begin
                UnRegisterAction( dmAppActions.actModificar );
                UnRegisterAction( dmAppActions.actBorrar );
             End;
    PODEREDITAR:Begin
                UnRegisterAction( dmAppActions.actBorrar );
             End;
  end;
  SecLevel := iLevel;
  if SecLevel <> PODERBORRAR then begin
    if IsActionSupported( dmAppActions.actPostear ) then
      UnRegisterAction( dmAppActions.actPostear );
  end;
  UpdateActionsVisibility;
end;

procedure TfrmDatosModule.FormDestroy(Sender: TObject);
var
  fld : TField;
begin
  inherited;
  if strTableNames.Strings.Count > 0 then begin
    dsDatos.DataSet.Close;
    qrUserFields.Close;
    qrUserFields.ParamByName('pTabla').Value := strTableNames.Strings[0];
    qrUserFields.Open;
    qrUserFields.First;
    while not qrUserFields.Eof do begin
      FreeAndNil(fld);
      fld := dsDatos.DataSet.FindField(qrUserFieldsFieldName.Text);
//      fld := dsDatos.DataSet.Fields.FieldByName(qrUserFieldsFieldName.Text);
      if Assigned(fld) then begin
        fld.DataSet := nil;
        dsDatos.Dataset.Fields.Remove(fld);
      end;
      qrUserFields.Next;
    end;
  end;
end;

procedure TfrmDatosModule.ActionDesignNotification(Action: TBasicAction);
begin
  DoDesign;
end;

procedure TfrmDatosModule.DoDesign;
begin
  if pcDatos.ActivePage = tsMain then
    tvDatos.Controller.Customization := True;
  if pcDatos.ActivePage = tsDatos then
    lcDatos.Customization := True;
end;

procedure TfrmDatosModule.ActionViewsNotififacion(Action: TBasicAction);
begin
  doViews;
end;

procedure TfrmDatosModule.DoViews;
begin
  // - Manage Views
  frmDlgFormViews := TfrmDlgFormViews.Create(Self);
  if pcDatos.ActivePage = tsMain then
    frmDlgFormViews.ManageViews( Name, Caption, dgDatos )
  else
    frmDlgFormViews.ManageLayOut( Name, Caption, lcDatos );
end;

procedure TfrmDatosModule.tvDatosDataControllerFilterGetValueList(
  Sender: TcxFilterCriteria; AItemIndex: Integer;
  AValueList: TcxDataFilterValueList);
var
  AColumn: TcxGridDBColumn;
  ADataSet: TDataSet;
  AProperties: TcxLookupComboBoxProperties;
  AValue: Variant;
  AIsLookupColumn: Boolean;
begin
  ADataSet := TcxGridDBTableView(dgDatos.FocusedView).DataController.DataSet;
  AColumn := TcxGridDBTableView(dgDatos.FocusedView).Columns[AItemIndex];
  AIsLookupColumn := AColumn.PropertiesClass = TcxLookupComboBoxProperties;
  try
    Screen.Cursor := crHourGlass;
    qryHelper.SQL.Clear;
    qryHelper.SQL.Add(
      'Select DISTINCT ' + AColumn.DataBinding.FieldName + ' From ' +
      GetTableNameByDataSet(ADataSet));
    qryHelper.SQL.Add(
      GetSQLCondition(TcxGridDBTableView(dgDatos.FocusedView), False));
    qryHelper.Open;
    qryHelper.First;
    while not qryHelper.Eof do
    begin
      AValue := qryHelper.Fields[0].Value;
      if AIsLookupColumn then
      begin
        AProperties := TcxLookupComboBoxProperties(AColumn.GetProperties);
        ADataSet := AProperties.ListSource.DataSet;
        AValue := ADataSet.Lookup(
          AProperties.KeyFieldNames,AValue, AProperties.ListFieldNames);
      end;
      if VarIsNull(AValue) then Exit;
      AValueList.Add(fviValue, qryHelper.Fields[0].Value, AValue, False);
      qryHelper.Next;
    end;
    qryHelper.Close;
  finally
    Screen.Cursor := crDefault;
  end;
end;

function TfrmDatosModule.GetSQLCondition(
  AView: TcxGridDBTableView; AAddFilter: Boolean): string;
var
  AFieldName, AMasterKeyFieldName: string;
  AMasterGridView: TcxGridDBTableView;
  AMasterDataSet: TDataSet;
  AMasterKeyValue: Variant;
  AStr: string;
begin
  Result := '';
  AStr := 'where ';
  //  ADataController := AView.DataController;
  if AView.IsDetail then
  begin
    AStr := ' and ';
    AFieldName := AView.DataController.DetailKeyFieldNames;
    AMasterKeyFieldName := AView.DataController.MasterKeyFieldNames;
    AMasterGridView := TcxGridDBTableView(AView.MasterGridView);
    AMasterDataSet := AMasterGridView.DataController.DataSet;
    AMasterKeyValue := AMasterDataSet.FindField(AMasterKeyFieldName).Value;
    Result := 'where ' + AFieldName + ' = ' + VarToStr(AMasterKeyValue);
  end;
  if AAddFilter and not AView.DataController.Filter.IsEmpty and AView.DataController.Filter.Active then
  begin
    Result := Result + AStr + AView.DataController.Filter.FilterText;
  end;
end;


procedure TfrmDatosModule.tvDatosDataControllerSortingChanged(
  Sender: TObject);

  procedure SortClone;
    var
      AColumn: TcxGridDBColumn;
      AFieldName: string;
      I: Integer;
  begin
    with tvDatos.DataController.GridView do
    begin
      if not PatternGridView.IsPattern then Exit;
      try
        BeginUpdate;
        TcxGridDBTableView(PatternGridView).BeginUpdate;
        TcxGridDBTableView(PatternGridView).DataController.ClearSorting(False);
        for I := 0 to SortedItemCount - 1 do
        begin
          AFieldName := TcxGridDBColumn(SortedItems[I]).DataBinding.FieldName;
          AColumn :=
            TcxGridDBTableView(PatternGridView).GetColumnByFieldName(AFieldName);
          if AColumn.SortOrder <> SortedItems[I].SortOrder then
           AColumn.SortOrder := SortedItems[I].SortOrder;
        end;
      finally
        TcxGridDBTableView(PatternGridView).EndUpdate;
        EndUpdate;
      end;
    end;

  end;

  procedure ApplySortToQuery(AQuery: TAdoQuery; ASortArray: array of string);
  var
    I: Integer;
    ASortString: string;
  begin
    ASortString := '';
    for I := 0 to High(ASortArray) do
      ASortString := ASortString + ASortArray[I];
    System.Delete(ASortString, Length(ASortString)-1, 2);
    try
      AQuery.DisableControls;
      AQuery.Close;
      if ASortString <> '' then ASortString := ' order by ' + ASortString;
      if Pos('order by', AQuery.SQL.Text) <> 0 then
        AQuery.SQL.Text := Copy( AQuery.Sql.Text, 1, Pos('order by', AQuery.SQL.Text) - 1);
      AQuery.SQL.Add(ASortString);
    finally
      AQuery.Open;
      AQuery.EnableControls;
    end;
  end;

  procedure SortPattern;
  var
    I: Integer;
    AOrder, AFieldName: string;
    ASortArray: array of string;
  begin
    with tvDatos.DataController.GridView do
    try
      BeginUpdate;
      SetLength(ASortArray, SortedItemCount);
      for I := 0 to SortedItemCount - 1 do
      begin
        AFieldName := TcxGridDBColumn(SortedItems[I]).DataBinding.FieldName;
        if SortedItems[I].SortOrder = soAscending then
          AOrder := ' ASC, '
        else
          AOrder := ' DESC, ';
        ASortArray[SortedItems[I].SortIndex] := AFieldName + AOrder;
      end;
      ApplySortToQuery(
        TAdoQuery(dsDatos.DataSet), ASortArray);
    finally
      EndUpdate;
    end;
  end;
var
 AGridView: TcxCustomGridTableView;
begin
  try
    Screen.Cursor := crHourGlass;
    AGridView := tvDatos.DataController.GridView;
    SortPattern;

    if AGridView.IsMaster or AGridView.IsPattern then
      SortPattern
    else
      SortClone;

  finally
    Screen.Cursor := crDefault;
  end;
end;


procedure TfrmDatosModule.LookUpsContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin

end;

procedure TfrmDatosModule.SetDefaultView;
var
  grCol : TcxGridDbColumn;
  curField : TField;
  i : Integer;
begin
  qrVistas.Close;
  qrVistas.ParamByName('pForm').Value := Self.Name;
  qrVistas.ParamByName('pTipo').Value := 1;
  qrVistas.Open;
  //
  qrDefaultView.Close;
  qrDefaultView.Parameters.ParamByName('pUser').Value := DM.CurRol; // CurUser;
  qrDefaultView.Parameters.ParamByName('pForm').Value := Self.Name;
  qrDefaultView.Parameters.ParamByName('pTipo').Value := 1;
  qrDefaultView.Open;
  if ( qrDefaultView.RecordCount > 0 ) and ( qrVistas.Locate('ViewName', qrDefaultView.FieldByName('ViewName').Value,[]) ) then begin
    try
      if FileExists( Name + '_' + qrDefaultView.FieldByName('ViewName').Value + '.pvw' ) then
          DeleteFile( Name + '_' + qrDefaultView.FieldByName('ViewName').Value + '.pvw' );
      strView.Strings.Clear;
      strView.Strings.Text := qrVistas.FieldByName('SavedView').Value;
      strView.Strings.SaveToFile( Name + '_' + qrDefaultView.FieldByName('ViewName').Value + '.pvw' );
      dgDatos.ActiveView.RestoreFromIniFile(Name + '_' + qrDefaultView.FieldByName('ViewName').Text + '.pvw',False,False,[gsoUseFilter,gsoUseSummary]);
      if FileExists( Name + '_' + qrDefaultView.FieldByName('ViewName').Value + '.pvw' ) then
        DeleteFile( Name + '_' + qrDefaultView.FieldByName('ViewName').Value + '.pvw' );
    except
      DM.Warning(SNoSePudoRestaurar);//, mtError, [mbOK], 0);
      raise;
    end;
  end;
  (*
  for i := 0 to tvDatos.DataController.DataSource.DataSet.FieldCount-1 do begin
    curField := tvDatos.DataController.DataSource.DataSet.Fields[i];
    grCol := tvDatos.GetColumnByFieldName( curField.FieldName );
    if not Assigned(grCol) then begin
      grCol := tvDatos.CreateColumn;
      grCol.DataBinding.FieldName := curField.FieldName;
      grCol.Caption := curField.DisplayLabel;
      grCol.Visible := False;
    end;
  end;
  *)
end;

procedure TfrmDatosModule.ActionGridAutoFitNotification(
  Action: TBasicAction);
begin
  DoGridAutoFit;
end;

procedure TfrmDatosModule.ActionGridCustomizeNotification(
  Action: TBasicAction);
begin
  DoGridCustomize;
end;

procedure TfrmDatosModule.ActionGridFullCollapseNotification(
  Action: TBasicAction);
begin
  DoGridFullCollapse;
end;

procedure TfrmDatosModule.ActionGridFullExpandNotification(
  Action: TBasicAction);
begin
  DoGridFullExpand;
end;

procedure TfrmDatosModule.ActionGridShowFooterNotification(
  Action: TBasicAction);
begin
  DoGridShowFooter;
end;

procedure TfrmDatosModule.ActionGroupPanelNotification(
  Action: TBasicAction);
begin
  DoShowGroupPanel;
end;

procedure TfrmDatosModule.DoGridAutoFit;
begin
  if ( dgDatos.ActiveView is TcxGridDBTableView ) then begin
    ( dgDatos.ActiveView as TcxGridDBTableView ).OptionsView.ColumnAutoWidth := False;
    ( dgDatos.ActiveView as TcxGridDBTableView ).OptionsView.ColumnAutoWidth := True;
  end;

  if ( dgDatos.ActiveView is TcxGridDBBandedTableView ) then begin
    ( dgDatos.ActiveView as TcxGridDBBandedTableView ).OptionsView.ColumnAutoWidth := False;
    ( dgDatos.ActiveView as TcxGridDBBandedTableView ).OptionsView.ColumnAutoWidth := True;
  end;
end;

procedure TfrmDatosModule.DoGridCustomize;
begin
  if ( dgDatos.ActiveView is TcxGridDBTableView ) then
    ( dgDatos.ActiveView as TcxGridDBTableView ).Controller.Customization := not ( dgDatos.ActiveView as TcxGridDBTableView ).Controller.Customization;
  if ( dgDatos.ActiveView is TcxGridDBBandedTableView ) then
    ( dgDatos.ActiveView as TcxGridDBBandedTableView ).Controller.Customization := not ( dgDatos.ActiveView as TcxGridDBBandedTableView ).Controller.Customization;
end;

procedure TfrmDatosModule.DoGridFullCollapse;
begin
  if ( dgDatos.ActiveView is TcxGridDBTableView ) then
    ( dgDatos.ActiveView as TcxGridDBTableView ).DataController.Groups.FullCollapse;

  if ( dgDatos.ActiveView is TcxGridDBBandedTableView ) then
    ( dgDatos.ActiveView as TcxGridDBBandedTableView ).DataController.Groups.FullCollapse;
end;

procedure TfrmDatosModule.DoGridFullExpand;
begin
  if ( dgDatos.ActiveView is TcxGridDBTableView ) then
    ( dgDatos.ActiveView as TcxGridDBTableView ).DataController.Groups.FullExpand;

  if ( dgDatos.ActiveView is TcxGridDBBandedTableView ) then
    ( dgDatos.ActiveView as TcxGridDBBandedTableView ).DataController.Groups.FullExpand;
end;

procedure TfrmDatosModule.DoGridShowFooter;
begin
  if ( dgDatos.ActiveView is TcxGridDBTableView ) then
    ( dgDatos.ActiveView as TcxGridDBTableView ).OptionsView.Footer := not ( dgDatos.ActiveView as TcxGridDBTableView ).OptionsView.Footer;

  if ( dgDatos.ActiveView is TcxGridDBBandedTableView ) then
    ( dgDatos.ActiveView as TcxGridDBBandedTableView ).OptionsView.Footer := not ( dgDatos.ActiveView as TcxGridDBBandedTableView ).OptionsView.Footer;
end;

procedure TfrmDatosModule.DoShowGroupPanel;
begin
  if ( dgDatos.ActiveView is TcxGridDBTableView ) then
    ( dgDatos.ActiveView as TcxGridDBTableView ).OptionsView.GroupByBox := not ( dgDatos.ActiveView as TcxGridDBTableView ).OptionsView.GroupByBox;
  if ( dgDatos.ActiveView is TcxGridDBBandedTableView ) then
    ( dgDatos.ActiveView as TcxGridDBBandedTableView ).OptionsView.GroupByBox := not ( dgDatos.ActiveView as TcxGridDBBandedTableView ).OptionsView.GroupByBox;
end;

procedure TfrmDatosModule.CreateUserFields;
var
  i : Integer;
  strEdit : TcxDBTextEdit;
  dteEdit : TcxDBDateEdit;
  intEdit : TcxDBSpinEdit;
  curEdit : TcxDBCurrencyEdit;
  memEdit : TcxDBMemo;
  bolEdit : TcxDBCheckBox;
  fld : TField;
  li : TdxLayoutItem;
  bt : TcxButton;
  tipo : Integer;
begin
  if strTableNames.Strings.Count > 0 then begin
    qrUserFields.Close;
    qrUserFields.ParamByName('pTabla').Value := strTableNames.Strings[0];
    qrUserFields.Open;
    (*
    if qrUserFields.RecordCount > 0 then begin
      bt := TcxButton.Create(Self);
      bt.Caption := 'Otros';
      bt.OnClick := UserFieldsClick;
      li := lgBotones.CreateItemForControl(bt);
      li.Caption := '';
    end;
    *)
    while not qrUserFields.Eof do begin
      if LeftStr(qrUserFieldsFieldName.Text,4) <> 'USR_' then begin
        qrUserFields.Next;
        Continue;
      end;
      // Create Fields
      if qrUserFieldsDataType.Text = 'dtString' then Tipo := 1;
      if qrUserFieldsDataType.Text = 'dtInteger' then Tipo := 2;
      if qrUserFieldsDataType.Text = 'dtDouble' then Tipo := 3;
      if qrUserFieldsDataType.Text = 'dtDateTime' then Tipo := 4;
      if qrUserFieldsDataType.Text = 'dtMemo' then tipo := 5;
      if qrUserFieldsDataType.Text = 'dtBoolean' then Tipo := 6;
      case Tipo of
        1:Begin
            fld := TStringField.Create(Self);
            //fld.Size := qrUserFields.Value;
          End;
        2:fld := TIntegerField.Create(Self);
        3:fld := TCurrencyField.Create(Self);
        4:fld := TDateTimeField.Create(Self);
        5:fld := TMemoField.Create(Self);
        6:fld := TBooleanField.Create(Self);
      end;
      fld.FieldName := qrUserFieldsFieldName.Text;
      fld.Name := dsDatos.DataSet.Name + fld.FieldName;
      fld.DisplayLabel := qrUserFieldsFieldAlias.Value;
      fld.FieldKind := fkData;
      fld.Required := ( qrUserFieldsMandatory.Value = 'T' );
      fld.DataSet := dsDatos.DataSet;
      dsDatos.DataSet.Fields.Add(fld);
      // Create Layout Item
      case Tipo of
        1:Begin
            strEdit := TcxDbTextEdit.Create(Self);
            strEdit.DataBinding.DataSource := dsDatos;
            strEdit.DataBinding.DataField := qrUserFieldsFieldName.Text;
            li := lcDatos.CreateItemForControl(strEdit);
            li.Caption := qrUserFieldsFieldAlias.Text;
          End;
        2:Begin
            intEdit := TcxDbSpinEdit.Create(Self);
            intEdit.DataBinding.DataSource := dsDatos;
            intEdit.DataBinding.DataField := qrUserFieldsFieldName.Text;
            li := lcDatos.CreateItemForControl(intEdit);
            li.Caption := qrUserFieldsFieldAlias.Text;
          End;
        3:Begin
            curEdit := TcxDBCurrencyEdit.Create(Self);
            curEdit.DataBinding.DataSource := dsDatos;
            curEdit.DataBinding.DataField := qrUserFieldsFieldName.Text;
            li := lcDatos.CreateItemForControl(curEdit);
            li.Caption := qrUserFieldsFieldAlias.Text;
          End;
        4:Begin
            dteEdit := TcxDBDateEdit.Create(Self);
            dteEdit.DataBinding.DataSource := dsDatos;
            dteEdit.DataBinding.DataField := qrUserFieldsFieldName.Text;
            li := lcDatos.CreateItemForControl(dteEdit);
            li.Caption := qrUserFieldsFieldAlias.Text;
          End;
        5:Begin
            memEdit := TcxDBMemo.Create(Self);
            memEdit.DataBinding.DataSource := dsDatos;
            memEdit.DataBinding.DataField := qrUserFieldsFieldName.Text;
            li := lcDatos.CreateItemForControl(memEdit);
            li.Caption := qrUserFieldsFieldAlias.Text;
          End;
        6:Begin
            bolEdit := TcxDBCheckBox.Create(Self);
            bolEdit.DataBinding.DataSource := dsDatos;
            bolEdit.DataBinding.DataField := qrUserFieldsFieldName.Text;
            bolEdit.Properties.Alignment := taLeftJustify;
            bolEdit.Properties.Caption := '';
            bolEdit.Width := 25;
            li := lcDatos.CreateItemForControl(bolEdit);
            li.Caption := qrUserFieldsFieldAlias.Text;
          End;
      end;
      li.Name := 'li' + qrUserFieldsFieldName.Text;
      li.Control.Name := 'ec' + qrUserFieldsFieldName.Text;
      qrUserFields.Next;
    end;
  end;
end;

procedure TfrmDatosModule.UserFieldsClick(Sender: TObject);
begin
  if ( not dsDatos.DataSet.IsEmpty ) and ( not ( dsDatos.DataSet.State in [dsEdit,dsInsert] ) ) then begin
    With TfrmDialogUserFields.Create(Self) do
      ShowUserFields( strTableNames.Strings[0], dsDatos.DataSet.GetBookmark, dsEdit );
  end;
end;

procedure TfrmDatosModule.LoadFormLayOut;
var
  grCol : TcxGridDbColumn;
  curField : TField;
  i : Integer;
  FileName : String;
begin
  qrVistas.Close;
  qrVistas.ParamByName('pForm').Value := Self.Name;
  qrVistas.ParamByName('pTipo').Value := 2;
  qrVistas.Open;

  qrDefaultView.Close;
  qrDefaultView.Parameters.ParamByName('pUser').Value := DM.CurRol;
  qrDefaultView.Parameters.ParamByName('pForm').Value := Self.Name;
  qrDefaultView.Parameters.ParamByName('pTipo').Value := 2;
  qrDefaultView.Open;

  if ( qrDefaultView.RecordCount > 0 ) and ( qrVistas.Locate('ViewName', qrDefaultView.FieldByName('ViewName').Value,[]) ) then begin
    try
      FileName := ExtractFilePath( ParamStr(0) ) + Name + '_' + qrDefaultView.FieldByName('ViewName').Value + '.pvw';
      if FileExists( FileName ) then
          DeleteFile( FileName );
      strView.Strings.Clear;
      strView.Strings.Text := qrVistas.FieldByName('SavedView').Value;
      strView.Strings.SaveToFile( FileName );
      lcDatos.LoadFromIniFile( FileName );
      if FileExists( FileName ) then
        DeleteFile( FileName );
    except
      DM.Warning(SNoSePudoRestaurar1);//, mtError, [mbOK], 0);
      raise;
    end;
  end;
end;

procedure TfrmDatosModule.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
  if dsDatos.State in [dsEdit,dsInsert] then begin
    DoCancel;
  end;
end;

procedure TfrmDatosModule.DoSysDoc;
var
  iX : Integer;
begin
  try
    LockWindowUpdate(frmMain.Handle);
    with frmMain do begin
      iX := lmdForms.AddForm(TfrmSysDocManager.Create(Self),True);
      TfrmSysDocManager( lmdForms.Forms[iX] ).ShowSysDocs(GetTableId, GetRecordId);
      lmdForms.ActiveFormIndex := iX;
    end;
  finally
    LockWindowUpdate(0);
  end;
end;

procedure TfrmDatosModule.ActionSysDocNotification(Action: TBasicAction);
begin
  DoSysDoc;
end;

function TfrmDatosModule.GetTableId: String;
begin
  Result := GetTableNameByDataSet(dsDatos.DataSet);
end;

function TfrmDatosModule.GetRecordId: String;
begin
  Result := '';
  if Not VarIsNull(tvDatos.DataController.GetKeyFieldsValues) then
    Result := tvDatos.DataController.GetKeyFieldsValues;
end;

procedure TfrmDatosModule.dxPrintGridStartGenerateReport(Sender: TObject;
  AReportLink: TBasedxReportLink);
begin
  inherited;
  frmMain.pbStatusBar.TotalParts := 100;
end;

procedure TfrmDatosModule.dxPrintGridGenerateReportProgress(
  Sender: TObject; AReportLink: TBasedxReportLink; APercentDone: Double);
begin
  inherited;
  frmMain.pbStatusBar.Percent := Trunc(APercentDone);
end;

procedure TfrmDatosModule.dxPrintGridEndGenerateReport(Sender: TObject;
  AReportLink: TBasedxReportLink);
begin
  inherited;
  frmMain.pbStatusBar.TotalParts := 0;
end;

procedure TfrmDatosModule.UpdateActionsVisibility;
var
  I: Integer;
begin
  inherited;
  for I := 0 to lgBotones.Count - 1 do begin    // Iterate
    TdxLayoutItem( lgBotones.Items[i] ).Visible := TdxLayoutItem( lgBotones.Items[i] ).Control.Visible;
  end;    // for
end;

procedure TfrmDatosModule.lcDatosCustomization(Sender: TObject);
begin
  inherited;
//  frmMain.dxDockSiteRight.Visible := lcDatos.Customization;
//  if not frmMain.dxDockSiteRight.Visible then
//    frmMain.cxObjectInspector.InspectedObject := nil;
end;

procedure TfrmDatosModule.tvDatosCustomization(Sender: TObject);
begin
  inherited;
//  frmMain.dxDockSiteRight.Visible := tvDatos.Controller.Customization;
//  if not frmMain.dxDockSiteRight.Visible then
//    frmMain.cxObjectInspector.InspectedObject := nil;
end;

end.
