unit OpcionesModule;

interface                                            

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomModule, dxLayoutControl, cxControls, JvComponent,
  JvFormPlacement, DB, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, JvExControls, JvEnterTab, Menus, StdActns,
  ActnList, JvSpeedButton, StdCtrls, RzLabel, RzBckgnd, ExtCtrls,
  JvComponentBase, cxintl;

type
  TfrmOpcionesModule = class(TfrmCustomModule)
    dsDatos: TDataSource;
    lcDatos: TdxLayoutControl;
    Group_Root: TdxLayoutGroup;
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure ActionPostNotification( Action : TBasicAction );
    procedure ActionCancelNotification( Action : TBasicAction );
    procedure ActionEditNotification( Action : TBasicAction );
  protected
    procedure RegisterActions; override;
  public
    { Public declarations }
    procedure doInmediateEdit; virtual;
    procedure doPost; virtual;
    procedure doCancel; virtual;
    procedure doEdit; virtual;
    procedure UpdateActionsState; override;
    procedure SetSecurity( iLevel : Integer ); override;
  end;

const
  PODERBORRAR  = 0;
  PODEREDITAR  = 1;
  PODERAGREGAR = 2;
  PODERVER     = 3;

var
  frmOpcionesModule: TfrmOpcionesModule;

implementation

uses ActionsDM, DataModule, Main;

{$R *.dfm}

procedure TfrmOpcionesModule.RegisterActions;
begin
  inherited;
  RegisterAction(dmAppActions.actModificar, ActionEditNotification);
  RegisterAction(dmAppActions.actGrabar, ActionPostNotification);
  RegisterAction(dmAppActions.actCancelar, ActionCancelNotification);
end;

procedure TfrmOpcionesModule.FormCreate(Sender: TObject);
begin
  inherited;
  lcDatos.LookAndFeel := dmAppActions.lnfWeb;
  doInmediateEdit;
end;

procedure TfrmOpcionesModule.ActionCancelNotification(
  Action: TBasicAction);
begin
  doCancel;
end;

procedure TfrmOpcionesModule.ActionEditNotification(Action: TBasicAction);
begin
  DoEdit;
end;

procedure TfrmOpcionesModule.ActionPostNotification(Action: TBasicAction);
begin
  doPost;
end;

procedure TfrmOpcionesModule.doCancel;
begin
  if( dsDatos.State in [dsEdit,dsInsert] ) then
    dsDatos.DataSet.Cancel;
//  frmMain.dxBarCloseWindowClick(Self);
end;

procedure TfrmOpcionesModule.doEdit;
begin
  dsDatos.DataSet.Edit;
end;

procedure TfrmOpcionesModule.doPost;
begin
  if( dsDatos.State in [dsEdit,dsInsert] ) then begin
    if ValidateRecord(dsDatos.DataSet) then
      dsDatos.DataSet.Post;
  end;
//  frmMain.dxBarCloseWindowClick(Self);
end;

procedure TfrmOpcionesModule.UpdateActionsState;
begin
  inherited;
  dmAppActions.actModificar.Enabled := ( (dsDatos.DataSet.Active) and (dsDatos.DataSet.State = dsBrowse ) );
  dmAppActions.actGrabar.Enabled := (dsDatos.DataSet.State in [dsEdit,dsInsert]);
  dmAppActions.actCancelar.Enabled := (dsDatos.DataSet.State in [dsEdit,dsInsert]);
end;

procedure TfrmOpcionesModule.SetSecurity(iLevel: Integer);
begin
  inherited;
  case iLevel of
    PODERVER:Begin
                UnRegisterAction( dmAppActions.actGrabar );
                UnRegisterAction( dmAppActions.actCancelar );
                if dsDatos.DataSet.State in [ dsEdit,dsInsert ] then
                  dsDatos.DataSet.Cancel;
             End;
  end;
  UpdateActionsVisibility;
end;

procedure TfrmOpcionesModule.doInmediateEdit;
begin
  if Assigned(dsDatos.DataSet) then begin
    dsDatos.DataSet.Close;
    dsDatos.DataSet.Open;
//    if dsDatos.DataSet.IsEmpty then
//      dsDatos.DataSet.Append
//    else
//      dsDatos.DataSet.Edit;
  end;
end;

procedure TfrmOpcionesModule.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
  if dsDatos.State in [dsEdit,dsInsert] then begin
    DoPost;
  end;
end;

procedure TfrmOpcionesModule.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if ( ( Key = VK_ESCAPE ) and ( Shift = []) ) then begin
    if dsDatos.State in [dsEdit,dsInsert] then begin
      dsDatos.DataSet.Cancel;
      if not ( dsDatos.State in [dsEdit,dsInsert] ) then
        UpdateActionsState;
    end else begin
      frmMain.tsVentanasTabClose(Self, frmMain.tsVentanas.TabIndex );
    end;
  end;
end;

end.
