unit DatosUserScripts;

interface                      

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DatosModule, DB, JvStringHolder, Menus, StdActns, ActnList,
  ADODB, cxStyles, cxGridCustomPopupMenu, cxGridPopupMenu,
  dxPSContainerLnk, dxPSdxLCLnk, dxPSCore, dxPScxCommon, dxPScxGridLnk,
  JvComponent, JvFormPlacement, dxLayoutControl, StdCtrls, cxButtons,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxPC, JvExControls, JvEnterTab, cxDBEdit, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, fs_iadortti, fs_idbctrlsrtti, fs_idbrtti,
  fs_idialogsrtti, fs_iextctrlsrtti, fs_iformsrtti, fs_igraphicsrtti,
  fs_iclassesrtti, fs_ipascal, fs_iinterpreter, ExtCtrls, fs_tree,
  fs_synmemo, AdvMemo, AdvmPS, PymeConst, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxDBData, cxLookAndFeelPainters, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, ABSMain, JvComponentBase;

type
  TfrmDatosUserScripts = class(TfrmDatosModule)
    tvDatosProcesoId: TcxGridDBColumn;
    tvDatosDescripcion: TcxGridDBColumn;
    lcDatosGroup1: TdxLayoutGroup;
    lcDatosGroup2: TdxLayoutGroup;
    cxDBMaskEdit1: TcxDBMaskEdit;
    lcDatosItem1: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    lcDatosItem2: TdxLayoutItem;
    fsScript: TfsScript;
    fsPascal1: TfsPascal;
    fsClassesRTTI1: TfsClassesRTTI;
    fsGraphicsRTTI1: TfsGraphicsRTTI;
    fsFormsRTTI1: TfsFormsRTTI;
    fsExtCtrlsRTTI1: TfsExtCtrlsRTTI;
    fsDialogsRTTI1: TfsDialogsRTTI;
    fsADORTTI1: TfsADORTTI;
    pmScript: TPopupMenu;
    Compilar1: TMenuItem;
    Ejecutar1: TMenuItem;
    N1: TMenuItem;
    Copiar1: TMenuItem;
    Cortar1: TMenuItem;
    SeleccionarTodo1: TMenuItem;
    cxbEjecutar: TcxButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    N3: TMenuItem;
    miImport: TMenuItem;
    miExport: TMenuItem;
    SaveDlg: TSaveDialog;
    OpenDlg: TOpenDialog;
    SyntaxMemo: TAdvMemo;
    lcDatosItem3: TdxLayoutItem;
    AdvPascalMemoStyler1: TAdvPascalMemoStyler;
    qrUserScripts: TABSQuery;
    qrUserScriptsProcesoId: TStringField;
    qrUserScriptsDescripcion: TStringField;
    qrUserScriptsScript: TMemoField;
    procedure dsDatosStateChange(Sender: TObject);
    procedure qrUserScriptsBeforePost(DataSet: TDataSet);
    procedure qrUserScriptsAfterScroll(DataSet: TDataSet);
    procedure Compilar1Click(Sender: TObject);
    procedure Ejecutar1Click(Sender: TObject);
    procedure miImportClick(Sender: TObject);
    procedure miExportClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure pmScriptPopup(Sender: TObject);
    procedure qrUserScriptsNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    IsDialog : Boolean;
    procedure DoPost; override;
    procedure DoCancel; override;
    procedure RegisterActions; override;
  public
    { Public declarations }
    procedure ShowScript( ProcesoID : String  );
    procedure ShowExecuteOnly;
  end;

var
  frmDatosUserScripts: TfrmDatosUserScripts;

implementation

uses DataModule, Main, CustomModule, ActionsDM;

{$R *.dfm}

procedure TfrmDatosUserScripts.dsDatosStateChange(Sender: TObject);
begin
  inherited;
  SyntaxMemo.ReadOnly := not ( dsDatos.State in [dsEdit,dsInsert]);
end;

procedure TfrmDatosUserScripts.qrUserScriptsBeforePost(DataSet: TDataSet);
begin
  inherited;
  qrUserScriptsScript.AsString := SyntaxMemo.Lines.Text;
end;

procedure TfrmDatosUserScripts.qrUserScriptsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  SyntaxMemo.Lines.Text := qrUserScriptsScript.AsString;
end;

procedure TfrmDatosUserScripts.Compilar1Click(Sender: TObject);
begin
  inherited;
  fsScript.Clear;
  fsScript.Parent := fsGlobalUnit;
  fsScript.AddComponent(DM.DataBase);
  fsScript.AddComponent(DM.sqlCommand);
  fsScript.Lines.Clear;
  fsScript.Lines.Text := SyntaxMemo.Lines.Text;
  if fsScript.Compile then
    DM.Info(SCompilacionExitosa)
  else
    DM.Warning(fsScript.ErrorMsg);
end;

procedure TfrmDatosUserScripts.Ejecutar1Click(Sender: TObject);
begin
  inherited;
  fsScript.Clear;
  fsScript.Parent := fsGlobalUnit;
  fsScript.AddComponent(DM.DataBase);
  fsScript.AddComponent(DM.sqlCommand);
  fsScript.Lines.Text := SyntaxMemo.Lines.Text;
  if fsScript.Compile then
    fsScript.Execute
  else
    DM.Warning(fsScript.ErrorMsg);
end;

procedure TfrmDatosUserScripts.miImportClick(Sender: TObject);
begin
  inherited;
  //
  if OpenDlg.Execute then begin
    SyntaxMemo.Lines.LoadFromFile(OpenDlg.FileName);
  end;
end;

procedure TfrmDatosUserScripts.miExportClick(Sender: TObject);
begin
  inherited;
  //
  if SaveDlg.Execute then begin
    SyntaxMemo.Lines.SaveToFile(SaveDlg.FileName);
  end;
end;

procedure TfrmDatosUserScripts.FormCreate(Sender: TObject);
begin
  inherited;
  IsDialog := False;
  OpenDlg.InitialDir := ExtractFilePath(ParamStr(0));
  SaveDlg.InitialDir := ExtractFilePath(ParamStr(0));
end;

procedure TfrmDatosUserScripts.pmScriptPopup(Sender: TObject);
begin
  inherited;
  miImport.Enabled := ( qrUserScripts.State in [dsEdit,dsInsert] );
end;

procedure TfrmDatosUserScripts.qrUserScriptsNewRecord(DataSet: TDataSet);
begin
  inherited;
  SyntaxMemo.Lines.Text := '';
end;

procedure TfrmDatosUserScripts.ShowScript(ProcesoID: String);
begin
  //  UnRegisterAction(dmAppActions.actToggleView);
  //  UnRegisterAction(dmAppActions.actExportar);
  //  UnRegisterAction(dmAppActions.actFiltrar);
  //  UnRegisterAction(dmAppActions.actLimpiarFiltro);
  //  UnRegisterAction(dmAppActions.actVistas);
  //  //
  //  if CanAdd then UnRegisterAction(dmAppActions.actAgregar);
  //  if CanEdit then UnRegisterAction(dmAppActions.actModificar);
  //  if CanDelete then UnRegisterAction(dmAppActions.actBorrar);
  //  if CanNavigate then begin
  //    UnRegisterAction(dmAppActions.actFirst);
  //    UnRegisterAction(dmAppActions.actPrior);
  //    UnRegisterAction(dmAppActions.actNext);
  //    UnRegisterAction(dmAppActions.actLast);
  //  end;
  //  UnRegisterAction(dmAppActions.actGridCustomize);
  //  UnRegisterAction(dmAppActions.actGroupPanel);
  //  UnRegisterAction(dmAppActions.actGridShowFooter);
  //  UnRegisterAction(dmAppActions.actGridFullExpand);
  //  UnRegisterAction(dmAppActions.actGridFullCollapse);
  //  UnRegisterAction(dmAppActions.actGridAutoAdjust);
  //  //
  //  UnRegisterAction(dmAppActions.actDesign);
  //
  RegisterAction( dmAppActions.actGrabar, ActionPostNotification);
  RegisterAction( dmAppActions.actCancelar, ActionCancelNotification);
  IsDialog := True;
  qrUserScripts.Close;
  qrUserScripts.sql.Text := 'Select * from SysProcesos where ProcesoId = ' + #39 + ProcesoID + #39;
  qrUserScripts.Open;
  Caption := Caption + SProceso + ProcesoID;
  DoEdit;
  UpdateActionsVisibility;
  UpdateActionsState;
//  Show;
end;

procedure TfrmDatosUserScripts.DoPost;
begin
  inherited;
//  frmMain.dxBarCloseWindowClick(Self);
end;

procedure TfrmDatosUserScripts.DoCancel;
begin
  inherited;
//  frmMain.dxBarCloseWindowClick(Self);
end;

procedure TfrmDatosUserScripts.ShowExecuteOnly;
begin
  ResetActions;
end;

procedure TfrmDatosUserScripts.RegisterActions;
begin
  // inherited;
end;

end.
