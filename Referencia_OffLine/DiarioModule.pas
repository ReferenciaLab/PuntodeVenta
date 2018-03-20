unit DiarioModule;

interface         

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DatosModule, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, cxGridCustomPopupMenu, cxGridPopupMenu,
  dxPSContainerLnk, dxPSdxLCLnk, dxPSCore, dxPScxGridLnk, JvComponent,
  JvFormPlacement, dxLayoutControl, {dxCore,}  cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, StdCtrls,
  GradientLabel, ADODB, dxPScxCommon, StdActns, ActnList, Menus,
  JvStringHolder, cxLookAndFeelPainters, cxButtons, JvExControls,
  JvEnterTab, JvSpeedButton, RzLabel, RzBckgnd, ExtCtrls, RzBorder,
  RzButton, ABSMain, JvComponentBase;

type
  TfrmDiarioModule = class(TfrmDatosModule)
    btValidar: TcxButton;
    liBtValidar: TdxLayoutItem;
    btPostear: TcxButton;
    liBtPostear: TdxLayoutItem;
    liValidatePostSeparator: TdxLayoutItem;
    RzSeparator1: TRzSeparator;
  private
    { Private declarations }
  protected
    procedure RegisterActions; override;
    procedure DoPostTrans; virtual;
    procedure DoValidate; virtual;
  public
    { Public declarations }
    procedure ActionPostNotification( Actions : TBasicAction );
    procedure ActionValidateNotification( Actions : TBasicAction );
    procedure UpdateActionsState ; override;
  end;

const
  PODERBORRAR  = 0;
  PODEREDITAR  = 1;
  PODERAGREGAR = 2;
  PODERVER     = 3;

var
  frmDiarioModule: TfrmDiarioModule;

implementation

uses CustomModule, ActionsDM;

{$R *.dfm}

{ TfrmDiarioModule }

procedure TfrmDiarioModule.ActionPostNotification(Actions: TBasicAction);
begin
  doPostTrans;
end;

procedure TfrmDiarioModule.ActionValidateNotification(
  Actions: TBasicAction);
begin
  doValidate;
end;

procedure TfrmDiarioModule.DoPostTrans;
begin
  inherited;
  //
end;

procedure TfrmDiarioModule.DoValidate;
begin
  inherited;
  //
end;

procedure TfrmDiarioModule.RegisterActions;
begin
  inherited;
  RegisterAction(dmAppActions.actPostear,ActionPostNotification);
  RegisterAction(dmAppActions.actValidar,ActionValidateNotification);
end;

procedure TfrmDiarioModule.UpdateActionsState;
var
  bEdit : Boolean;
  bBrowse : Boolean;
begin
  inherited;

  bEdit := dsDatos.State in [dsEdit,dsInsert];
  bBrowse := not bEdit;
  //
  dmAppActions.actPostear.Enabled := ( bEdit ) or ( ( not dsDatos.DataSet.IsEmpty ) and ( dsDatos.DataSet.FieldByName('Posteado').AsBoolean = False ) );
  dmAppActions.actValidar.Enabled := ( bEdit ) or ( ( not dsDatos.DataSet.IsEmpty ) and ( dsDatos.DataSet.FieldByName('Posteado').AsBoolean = False ) );
end;

end.
