unit RecurrentModule;

interface               

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomModule, Menus, StdActns, ActnList, JvComponent,
  JvFormPlacement, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxLayoutControl, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxCheckBox, cxContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, JvExControls,
  JvEnterTab, JvSpeedButton, StdCtrls, RzLabel, RzBckgnd, ExtCtrls, PymeConst,
  JvComponentBase;

type
  TfrmRecurrentModule = class(TfrmCustomModule)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    lcBotonesGroup_Root: TdxLayoutGroup;
    lcBotones: TdxLayoutControl;
    lgBotones: TdxLayoutGroup;
    tvMemory: TcxGridDBTableView;
    grMemoryLevel1: TcxGridLevel;
    grMemory: TcxGrid;
    dxLayoutControl1Item1: TdxLayoutItem;
    dsDatos: TDataSource;
    cxGridStyles: TcxStyleRepository;
    stGrDatos: TcxStyle;
    stGrEdit: TcxStyle;
    dxLayoutControl1Group1: TdxLayoutGroup;
    deFecha: TcxDateEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure RegisterActions; override;
    procedure UpdateActionsState; override;
    procedure ActionFirstNotification( Action : TBasicAction );
    procedure ActionPriorNotification( Action : TBasicAction );
    procedure ActionNextNotification( Action : TBasicAction );
    procedure ActionLastNotification( Action : TBasicAction );
    procedure ActionSelectallNotification( Action : TBasicAction );
    procedure ActionPostNotification( Action : TBasicAction );
    procedure ActionDeleteNotification( Action : TBasicAction );
    procedure DoFirst; virtual;
    procedure DoPrior; virtual;
    procedure DoNext; virtual;
    procedure DoLast; virtual;
    procedure DoSelectAll; virtual;
    procedure DoPost; virtual;
    procedure DoDelete; virtual;
  public
    { Public declarations }
  end;

var
  frmRecurrentModule: TfrmRecurrentModule;

implementation

uses DataModule, ActionsDM;

{$R *.dfm}

procedure TfrmRecurrentModule.ActionDeleteNotification(
  Action: TBasicAction);
begin
  DoDelete;
end;

procedure TfrmRecurrentModule.ActionFirstNotification(
  Action: TBasicAction);
begin
  DoFirst;
end;

procedure TfrmRecurrentModule.ActionLastNotification(Action: TBasicAction);
begin
  DoLast;
end;

procedure TfrmRecurrentModule.ActionNextNotification(Action: TBasicAction);
begin
  DoNext;
end;

procedure TfrmRecurrentModule.ActionPostNotification(Action: TBasicAction);
begin
  DoPost;
end;

procedure TfrmRecurrentModule.ActionPriorNotification(
  Action: TBasicAction);
begin
  DoPrior;
end;

procedure TfrmRecurrentModule.ActionSelectallNotification(
  Action: TBasicAction);
begin
  DoSelectAll;
end;

procedure TfrmRecurrentModule.DoDelete;
begin
  if MessageDlg(SSeguroQueDeseaEli3, mtConfirmation, [mbYes,mbNo], 0) = mrYes then begin
    dsDatos.DataSet.Edit;
    dsDatos.DataSet.FieldByName('Memorizado').Value := 0;
    dsDatos.DataSet.Post;
    dsDatos.DataSet.Close;
    dsDatos.DataSet.Open;
  end;
end;

procedure TfrmRecurrentModule.DoFirst;
begin
  grMemory.ActiveView.DataController.GotoFirst;
end;

procedure TfrmRecurrentModule.DoLast;
begin
  grMemory.ActiveView.DataController.GotoLast;
end;

procedure TfrmRecurrentModule.DoNext;
begin
  grMemory.ActiveView.DataController.GotoNext;
end;

procedure TfrmRecurrentModule.DoPost;
begin
  //
end;

procedure TfrmRecurrentModule.DoPrior;
begin
  grMemory.ActiveView.DataController.GotoPrev;
end;

procedure TfrmRecurrentModule.DoSelectAll;
begin
  grMemory.ActiveView.DataController.SelectAll;
end;

procedure TfrmRecurrentModule.FormCreate(Sender: TObject);
begin
  inherited;
  deFecha.Date := Date;
  lcBotones.Visible := True; //( lgBotones.VisibleCount > 0 );
  if Assigned( dsDatos.DataSet ) then begin
    dsDatos.DataSet.Close;
    dsDatos.DataSet.Open;
  end;
end;

procedure TfrmRecurrentModule.RegisterActions;
begin
  inherited;
  RegisterAction(dmAppActions.actFirst, ActionFirstNotification);
  RegisterAction(dmAppActions.actPrior, ActionPriorNotification);
  RegisterAction(dmAppActions.actNext, ActionNextNotification);
  RegisterAction(dmAppActions.actLast, ActionLastNotification);
  RegisterAction(dmAppActions.actSelectAll, ActionSelectAllNotification);
  RegisterAction(dmAppActions.actPostear,ActionPostNotification);
  RegisterAction(dmAppActions.actBorrar,ActionDeleteNotification);
end;

procedure TfrmRecurrentModule.UpdateActionsState;
begin
  inherited;
  dmAppActions.actPostear.Enabled := ( not dsDatos.DataSet.IsEmpty );
end;

end.
