unit ConsultaModule;

interface
                         
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomModule, JvComponent, JvFormPlacement, dxLayoutControl,
  cxControls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd,
  dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSCore, dxPScxGridLnk, cxGridCustomPopupMenu, cxGridPopupMenu,
  cxGridBandedTableView, cxGridDBBandedTableView,
  cxPropertiesStore, JvExControls, JvEnterTab, dxPScxCommon, ADODB,
  StdActns, ActnList, Menus, JvStringHolder, cxFilterControl,
  cxDBFilterControl, JvSpeedButton, StdCtrls, RzLabel, RzBckgnd, ExtCtrls,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxButtons, PymeConst, JvComponentBase, cxLookAndFeelPainters, ABSMain, cxintl;

type
  TfrmConsultaModule = class(TfrmCustomModule)
    lcDatos: TdxLayoutControl;
    Group_Root: TdxLayoutGroup;
    lgConsulta : TdxLayoutGroup;
    SaveDialog: TSaveDialog;
    dsDatos: TDataSource;
    grConsulta: TcxGrid;
    tvConsulta: TcxGridDBTableView;
    lvConsulta: TcxGridLevel;
    lcDatosItem1: TdxLayoutItem;
    cxGridPopupMenu: TcxGridPopupMenu;
    dxPrintGrid: TdxComponentPrinter;
    dxPrintGridLink: TdxGridReportLink;
    qryHelper: TADOQuery;
    strView: TJvStrHolder;
    qrDefaultView: TADOQuery;
    lcBotonesGroup_Root1: TdxLayoutGroup;
    lcBotones: TdxLayoutControl;
    lgParametros: TdxLayoutGroup;
    deHasta: TcxDateEdit;
    liDeHasta: TdxLayoutItem;
    deDesde: TcxDateEdit;
    liDeDesde: TdxLayoutItem;
    btBuscar: TcxButton;
    liBtBuscar: TdxLayoutItem;
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
    cxStyle14: TcxStyle;
    btFechas: TcxButton;
    liBtFechas: TdxLayoutItem;
    pmFechas: TPopupMenu;
    MesActual1: TMenuItem;
    AoalaFecha1: TMenuItem;
    rimestreActual1: TMenuItem;
    AlaFecha1: TMenuItem;
    Hoy1: TMenuItem;
    qrVistas: TABSQuery;
    qrVistasTipo: TIntegerField;
    qrVistasFormName: TStringField;
    qrVistasViewName: TStringField;
    qrVistasSavedView: TMemoField;
    qrVistasDefault: TBooleanField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tvConsultaDataControllerFilterGetValueList(
      Sender: TcxFilterCriteria; AItemIndex: Integer;
      AValueList: TcxDataFilterValueList);
    procedure tvConsultaDataControllerSortingChanged(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MesActual1Click(Sender: TObject);
    procedure rimestreActual1Click(Sender: TObject);
    procedure AoalaFecha1Click(Sender: TObject);
    procedure AlaFecha1Click(Sender: TObject);
    procedure Hoy1Click(Sender: TObject);
  private
    { Private declarations }
    AStoreKey : String;
    procedure ActionPrintNotification( Action : TBasicAction );
    procedure ActionExportNotification( Action : TBasicAction );
    procedure ActionFirstNotification( Action : TBasicAction );
    procedure ActionPriorNotification( Action : TBasicAction );
    procedure ActionNextNotification( Action : TBasicAction );
    procedure ActionLastNotification( Action : TBasicAction );
    procedure ActionFilterNotification( Action : TBasicAction );
    procedure ACtionClearFilterNotification( Action : TBasicAction );
    procedure ActionViewsNotififacion( Action : TBasicAction );
    procedure ActionGroupPanelNotification( Action : TBasicAction );
    procedure ActionGridCustomizeNotification( Action : TBasicAction );
    procedure ActionGridShowFooterNotification( Action : TBasicAction );
    procedure ActionGridFullExpandNotification( Action : TBasicAction );
    procedure ActionGridFullCollapseNotification(Action: TBasicAction);
    procedure ActionGridAutoFitNotification(Action : TBasicAction);
//    procedure DoFakeAction(Action : TBasicAction);
    function GetSQLCondition(AView: TcxGridDBTableView;
      AAddFilter: Boolean): string;
  protected
    procedure RegisterActions; override;
    procedure DoExport; virtual;
    procedure DoFilter; virtual;
    procedure DoClearFilter; virtual;
    procedure DoFirst; virtual;
    procedure DoPrior; virtual;
    procedure DoNext; virtual;
    procedure DoLast; virtual;
    procedure DoViews; virtual;
    procedure SetDefaultView ; virtual;
    procedure DoGridCustomize; virtual;
    procedure DoShowGroupPanel; virtual;
    procedure DoGridShowFooter; virtual;
    procedure DoGridFullExpand; virtual;
    procedure DoGridFullCollapse; virtual;
    procedure DoGridAutoFit; virtual;
  public
    { Public declarations }
    RestoreSettings : Boolean;
    procedure DoPrint; virtual;
    procedure UpdateActionsState; override;
  end;

var
  frmConsultaModule: TfrmConsultaModule;

implementation

uses cxExportGrid4Link, ActionsDM, DataModule, cxDBLookupComboBox,
  DialogFormViews, DialogFilter, DateUtils, jclDateTime, Main;

{$R *.dfm}

{ TfrmConsultaModule }

procedure TfrmConsultaModule.ACtionClearFilterNotification(
  Action: TBasicAction);
begin
  DoClearFilter;
end;

procedure TfrmConsultaModule.ActionExportNotification(
  Action: TBasicAction);
begin
  DoExport;
end;

procedure TfrmConsultaModule.ActionFilterNotification(
  Action: TBasicAction);
begin
  DoFilter;
end;

procedure TfrmConsultaModule.ActionFirstNotification(Action: TBasicAction);
begin
  DoFirst;
end;

procedure TfrmConsultaModule.ActionLastNotification(Action: TBasicAction);
begin
  DoLast;
end;

procedure TfrmConsultaModule.ActionNextNotification(Action: TBasicAction);
begin
  DoNext;
end;

procedure TfrmConsultaModule.ActionPrintNotification(Action: TBasicAction);
begin
  DoPrint;
end;

procedure TfrmConsultaModule.ActionPriorNotification(Action: TBasicAction);
begin
  DoPrior;
end;

procedure TfrmConsultaModule.DoClearFilter;
begin
  if (grConsulta.ActiveView is TcxGridDbTableView) then begin
    (grConsulta.ActiveView as TcxGridDbTableView).DataController.Filter.Clear;
    (grConsulta.ActiveView as TcxGridDbTableView).DataController.UpdateItems(False);
  end;
  if (grConsulta.ActiveView is TcxGridDBBandedTableView) then begin
    (grConsulta.ActiveView as TcxGridDBBandedTableView).DataController.Filter.Clear;
    (grConsulta.ActiveView as TcxGridDBBandedTableView).DataController.UpdateItems(False);
  end;
end;

procedure TfrmConsultaModule.DoExport;
var
  fExt : String;
begin
  if SaveDialog.Execute then begin
    fExt := ExtractFileExt(SaveDialog.FileName);
    if fExt = '.XLS' then
      ExportGrid4ToExcel(saveDialog.FileName,grConsulta);
    if fExt = '.HTM' then
      ExportGrid4ToHTML(saveDialog.FileName,grConsulta);
    if fExt = '.XML' then
      ExportGrid4ToXML(saveDialog.FileName,grConsulta);
    if fExt = '.TXT' then
      ExportGrid4ToText(saveDialog.FileName,grConsulta);
  end;
end;

procedure TfrmConsultaModule.DoFilter;
var
  sFilter : String;
begin
  if (grConsulta.ActiveView is TcxGridDbTableView) then
    (grConsulta.ActiveView as TcxGridDbTableView).Filtering.RunCustomizeDialog;
  if (grConsulta.ActiveView is TcxGridDBBandedTableView) then
    (grConsulta.ActiveView as TcxGridDBBandedTableView).Filtering.RunCustomizeDialog;
  (*
  With TfrmDialogFilter.Create(Self) do begin
    sFilter := GetFilterCondicion(dsDatos.DataSet);
    if sFilter <> '' then begin
      if (grConsulta.ActiveView is TcxGridDbTableView) then begin
        (grConsulta.ActiveView as TcxGridDbTableView).DataController.Filter.FilterText := sFilter;
        (grConsulta.ActiveView as TcxGridDbTableView).DataController.Filter.Active := True;
      end;
      if (grConsulta.ActiveView is TcxGridDBBandedTableView) then begin
        (grConsulta.ActiveView as TcxGridDBBandedTableView).DataController.Filter.FilterText := sFilter;
        (grConsulta.ActiveView as TcxGridDBBandedTableView).DataController.Filter.Active := True;
      end;
    end;
  end;
  *)
end;

procedure TfrmConsultaModule.DoFirst;
begin
  lvConsulta.GridView.DataController.GotoFirst;
end;

procedure TfrmConsultaModule.DoLast;
begin
  lvConsulta.GridView.DataController.GotoLast;
end;

procedure TfrmConsultaModule.DoNext;
begin
  lvConsulta.GridView.DataController.GotoNext;
end;

procedure TfrmConsultaModule.DoPrint;
begin
  //dxPrintGridLink.ReportTitle.Text := Caption;
  dxPrintGridLink.PrinterPage.PageHeader.LeftTitle.Add( DM.TituloEmpresa );
  dxPrintGridLink.PrinterPage.PageHeader.LeftTitle.Add(Caption);
  dxPrintGridLink.PrinterPage.PageHeader.LeftTitle.Add('');
  dxPrintGrid.CurrentLink := dxPrintGridLink;
  dxPrintGrid.Preview(True);
end;

procedure TfrmConsultaModule.DoPrior;
begin
  lvConsulta.GridView.DataController.GotoPrev;
end;

procedure TfrmConsultaModule.RegisterActions;
begin
  inherited;
  RegisterAction(dmAppActions.actPrintPreview, ActionPrintNotification);
  RegisterAction(dmAppActions.actExportar, ActionExportNotification);
  RegisterAction(dmAppActions.actFiltrar, ActionFilterNotification);
  RegisterAction(dmAppActions.actLimpiarFiltro, ActionClearFilterNotification);
  RegisterAction(dmAppActions.actVistas, ActionViewsNotififacion);
  RegisterAction(dmAppActions.actGridCustomize, ActionGridCustomizeNotification);
  RegisterAction(dmAppActions.actGroupPanel, ActionGroupPanelNotification);
  RegisterAction(dmAppActions.actGridShowFooter, ActionGridShowFooterNotification);
  RegisterAction(dmAppActions.actGridFullExpand, ActionGridFullExpandNotification);
  RegisterAction(dmAppActions.actGridFullCollapse, ActionGridFullCollapseNotification);
  RegisterAction(dmAppActions.actGridAutoAdjust, ActionGridAutoFitNotification);
  //
  RegisterAction(dmAppActions.actFirst, ActionFirstNotification);
  RegisterAction(dmAppActions.actPrior, ActionPriorNotification);
  RegisterAction(dmAppActions.actNext, ActionNextNotification);
  RegisterAction(dmAppActions.actLast, ActionLastNotification);
end;

procedure TfrmConsultaModule.FormCreate(Sender: TObject);
begin
  inherited;
  //
  lcDatos.LookAndFeel := dmAppActions.lnfWeb;
  lcBotones.LookAndFeel := dmAppActions.lnfButtonGroup;
  //
  lcBotones.Visible := ( lcBotones.Items.Count > 0 );
    //lgParametros.Visible := ( lgParametros.VisibleCount > 0 );
  deDesde.Date := StartOfTheMonth(Date);
  deHasta.Date := EndOfTheMonth(Date);
  //
  AStoreKey := 'Software\PYME Accounting\Contabilidad\' + Name;
  RestoreSettings := True;
  SetMandatoryItems;
  SetDefaultView;
end;

procedure TfrmConsultaModule.FormDestroy(Sender: TObject);
begin
  inherited;
//  If RestoreSettings then
//    grConsulta.ActiveView.StoreToRegistry(AStoreKey,True,[gsoUseFilter,gsoUseSummary]);
end;

procedure TfrmConsultaModule.FormShow(Sender: TObject);
begin
  inherited;
//  If RestoreSettings then
//    grConsulta.ActiveView.RestoreFromRegistry(AStoreKey,False,False,[gsoUseFilter,gsoUseSummary]);
end;

procedure TfrmConsultaModule.tvConsultaDataControllerFilterGetValueList(
  Sender: TcxFilterCriteria; AItemIndex: Integer;
  AValueList: TcxDataFilterValueList);
var
  AColumn: TcxGridDBColumn;
  ADataSet: TDataSet;
  AProperties: TcxLookupComboBoxProperties;
  AValue: Variant;
  AIsLookupColumn: Boolean;
begin
  ADataSet := TcxGridDBTableView(grConsulta.FocusedView).DataController.DataSet;
  AColumn := TcxGridDBTableView(grConsulta.FocusedView).Columns[AItemIndex];
  AIsLookupColumn := AColumn.PropertiesClass = TcxLookupComboBoxProperties;
  try
    Screen.Cursor := crHourGlass;
    qryHelper.SQL.Clear;
    qryHelper.SQL.Add(
      'Select DISTINCT ' + AColumn.DataBinding.FieldName + ' From ' +
      GetTableNameByDataSet(ADataSet));
    qryHelper.SQL.Add(
      GetSQLCondition(TcxGridDBTableView(grConsulta.FocusedView), False));
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

function TfrmConsultaModule.GetSQLCondition(
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

procedure TfrmConsultaModule.tvConsultaDataControllerSortingChanged(
  Sender: TObject);
  procedure SortClone;
    var
      AColumn: TcxGridDBColumn;
      AFieldName: string;
      I: Integer;
  begin
    with tvConsulta.DataController.GridView do
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
    with tvConsulta.DataController.GridView do
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
    AGridView := tvConsulta.DataController.GridView;
    SortPattern;
    (*
    if AGridView.IsMaster or AGridView.IsPattern then
      SortPattern
    else
      SortClone;
    *)    
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmConsultaModule.ActionViewsNotififacion(Action: TBasicAction);
begin
  doViews;

end;

procedure TfrmConsultaModule.DoViews;
begin
  frmDlgFormViews := TfrmDlgFormViews.Create(Self);
  frmDlgFormViews.ManageViews( Name, Caption, grConsulta );
end;

procedure TfrmConsultaModule.ActionGridCustomizeNotification(
  Action: TBasicAction);
begin
  DoGridCustomize;
end;

procedure TfrmConsultaModule.ActionGroupPanelNotification(
  Action: TBasicAction);
begin
  DoShowGroupPanel;
end;

procedure TfrmConsultaModule.DoGridCustomize;
begin
  if ( grConsulta.ActiveView is TcxGridDBTableView ) then
    ( grConsulta.ActiveView as TcxGridDBTableView ).Controller.Customization := not ( grConsulta.ActiveView as TcxGridDBTableView ).Controller.Customization;
  if ( grConsulta.ActiveView is TcxGridDBBandedTableView ) then
    ( grConsulta.ActiveView as TcxGridDBBandedTableView ).Controller.Customization := not ( grConsulta.ActiveView as TcxGridDBBandedTableView ).Controller.Customization;
end;

procedure TfrmConsultaModule.DoShowGroupPanel;
begin
  if ( grConsulta.ActiveView is TcxGridDBTableView ) then
    ( grConsulta.ActiveView as TcxGridDBTableView ).OptionsView.GroupByBox := not ( grConsulta.ActiveView as TcxGridDBTableView ).OptionsView.GroupByBox;
  if ( grConsulta.ActiveView is TcxGridDBBandedTableView ) then
    ( grConsulta.ActiveView as TcxGridDBBandedTableView ).OptionsView.GroupByBox := not ( grConsulta.ActiveView as TcxGridDBBandedTableView ).OptionsView.GroupByBox;
end;

procedure TfrmConsultaModule.SetDefaultView;
begin
  qrVistas.Close;
  qrVistas.ParamByName('pForm').Value := Self.Name;
  qrVistas.ParamByName('pTipo').Value := 1;
  qrVistas.Open;
  //
  qrDefaultView.Close;
  qrDefaultView.Parameters.ParamByName('pUser').Value := DM.CurRol;// CurUser;
  qrDefaultView.Parameters.ParamByName('pForm').Value := Self.Name;
  qrDefaultView.Open;
  if ( qrDefaultView.RecordCount > 0 ) and ( qrVistas.Locate('ViewName', qrDefaultView.FieldByName('ViewName').Value,[]) ) then begin
    try
      if FileExists( Name + '_' + qrDefaultView.FieldByName('ViewName').Value + '.pvw' ) then
          DeleteFile( Name + '_' + qrDefaultView.FieldByName('ViewName').Value + '.pvw' );
      strView.Strings.Clear;
      strView.Strings.Text := qrVistas.FieldByName('SavedView').Value;
      strView.Strings.SaveToFile( Name + '_' + qrDefaultView.FieldByName('ViewName').Value + '.pvw' );
      grConsulta.ActiveView.RestoreFromIniFile(Name + '_' + qrDefaultView.FieldByName('ViewName').Text + '.pvw',False,False,[gsoUseFilter,gsoUseSummary]);
      if FileExists( Name + '_' + qrDefaultView.FieldByName('ViewName').Value + '.pvw' ) then
        DeleteFile( Name + '_' + qrDefaultView.FieldByName('ViewName').Value + '.pvw' );
    except
      DM.Warning(SNoSePudoRestaurar);//, mtError, [mbOK], 0);
      raise;
    end;
  end;
end;

procedure TfrmConsultaModule.ActionGridShowFooterNotification(
  Action: TBasicAction);
begin
  DoGridShowFooter;
end;

procedure TfrmConsultaModule.DoGridShowFooter;
begin
  if ( grConsulta.ActiveView is TcxGridDBTableView ) then
    ( grConsulta.ActiveView as TcxGridDBTableView ).OptionsView.Footer := not ( grConsulta.ActiveView as TcxGridDBTableView ).OptionsView.Footer;

  if ( grConsulta.ActiveView is TcxGridDBBandedTableView ) then
    ( grConsulta.ActiveView as TcxGridDBBandedTableView ).OptionsView.Footer := not ( grConsulta.ActiveView as TcxGridDBBandedTableView ).OptionsView.Footer;
end;

procedure TfrmConsultaModule.ActionGridFullExpandNotification(Action: TBasicAction);
begin
  DoGridFullExpand;
end;

procedure TfrmConsultaModule.ActionGridFullCollapseNotification(Action: TBasicAction);
begin
  DoGridFullCollapse;
end;

procedure TfrmConsultaModule.DoGridFullExpand;
begin
  if ( grConsulta.ActiveView is TcxGridDBTableView ) then
    ( grConsulta.ActiveView as TcxGridDBTableView ).DataController.Groups.FullExpand;

  if ( grConsulta.ActiveView is TcxGridDBBandedTableView ) then
    ( grConsulta.ActiveView as TcxGridDBBandedTableView ).DataController.Groups.FullExpand;
end;

procedure TfrmConsultaModule.DoGridFullCollapse;
begin
  if ( grConsulta.ActiveView is TcxGridDBTableView ) then
    ( grConsulta.ActiveView as TcxGridDBTableView ).DataController.Groups.FullCollapse;

  if ( grConsulta.ActiveView is TcxGridDBBandedTableView ) then
    ( grConsulta.ActiveView as TcxGridDBBandedTableView ).DataController.Groups.FullCollapse;
end;

procedure TfrmConsultaModule.ActionGridAutoFitNotification(
  Action: TBasicAction);
begin
  DoGridAutoFit;
end;

procedure TfrmConsultaModule.DoGridAutoFit;
begin
  if ( grConsulta.ActiveView is TcxGridDBTableView ) then begin
    ( grConsulta.ActiveView as TcxGridDBTableView ).OptionsView.ColumnAutoWidth := False;
    ( grConsulta.ActiveView as TcxGridDBTableView ).OptionsView.ColumnAutoWidth := True;
  end;

  if ( grConsulta.ActiveView is TcxGridDBBandedTableView ) then begin
    ( grConsulta.ActiveView as TcxGridDBBandedTableView ).OptionsView.ColumnAutoWidth := False;
    ( grConsulta.ActiveView as TcxGridDBBandedTableView ).OptionsView.ColumnAutoWidth := True;
  end;
end;

procedure TfrmConsultaModule.UpdateActionsState;
var
  I: Integer;
begin
  inherited;
  dmAppActions.actPrintPreview.Enabled := True;
  dmAppActions.actExportar.Enabled := True;
  dmAppActions.actFiltrar.Enabled := True;
  dmAppActions.actLimpiarFiltro.Enabled := True;
  dmAppActions.actVistas.Enabled := True;
  dmAppActions.actGridCustomize.Enabled := True;
  dmAppActions.actGroupPanel.Enabled := True;
  dmAppActions.actGridShowFooter.Enabled := True;
  dmAppActions.actGridFullExpand.Enabled := True;
  dmAppActions.actGridFullCollapse.Enabled := True;
  dmAppActions.actGridAutoAdjust.Enabled := True;
  //
  dmAppActions.actFirst.Enabled := True;
  dmAppActions.actPrior.Enabled := True;
  dmAppActions.actNext.Enabled := True;
  dmAppActions.actLast.Enabled := True;
//  for I := 0 to lgBotones.Count - 1 do begin    // Iterate
//    TdxLayoutItem( lgBotones.Items[i] ).Visible := TdxLayoutItem( lgBotones.Items[i] ).Control.Visible;
//  end;    // for
end;

procedure TfrmConsultaModule.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if ( Key = VK_ESCAPE ) and (Shift = []) then
    frmMain.tsVentanasTabClose(Self, frmMain.tsVentanas.TabIndex );
end;

procedure TfrmConsultaModule.MesActual1Click(Sender: TObject);
begin
  inherited;
  deDesde.Date := StartOfTheMonth(Date);
  deHasta.Date := EndOfTheMonth(Date);
  btBuscar.Click;
  grConsulta.SetFocus;
end;

procedure TfrmConsultaModule.rimestreActual1Click(Sender: TObject);
begin
  inherited;
  deDesde.Date := StartOfTheMonth(Date - 90);
  deHasta.Date := EndOfTheMonth(Date);
  btBuscar.Click;
  grConsulta.SetFocus;
end;

procedure TfrmConsultaModule.AoalaFecha1Click(Sender: TObject);
begin
  inherited;
  deDesde.Date := StartOfTheYear(Date);
  deHasta.Date := EndOfTheMonth(Date);
  btBuscar.Click;
  grConsulta.SetFocus;
end;

procedure TfrmConsultaModule.AlaFecha1Click(Sender: TObject);
begin
  inherited;
  deDesde.Date := EncodeDate(1980,1,1);
  deHasta.Date := EndOfTheMonth(Date);
  btBuscar.Click;
  grConsulta.SetFocus;
end;

procedure TfrmConsultaModule.Hoy1Click(Sender: TObject);
begin
  inherited;
  deDesde.Date := DM.SystemDate;
  deHasta.Date := DM.SystemDate;
  btBuscar.Click;
  grConsulta.SetFocus;
end;

end.
