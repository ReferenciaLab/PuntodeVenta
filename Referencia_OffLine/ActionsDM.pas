unit ActionsDM;

interface

uses
  SysUtils, Classes, DBActns, ActnList, ImgList, Controls,
  dxLayoutLookAndFeels, Windows, StdActns, JvComponent, JvAppStorage,
  JvAppXMLStorage, cxStyles, cxClasses, cxGridBandedTableView,
  cxGridTableView, {cxTL,} dxPSEngn, Atexto, cxGridCardView, JvActions;

type
  TdmAppActions = class(TDataModule)
    ilDatos: TImageList;
    alDatos: TActionList;
    actExportar: TAction;
    actFiltrar: TAction;
    actLimpiarFiltro: TAction;
    actFirst: TDataSetFirst;
    actPrior: TDataSetPrior;
    actNext: TDataSetNext;
    actLast: TDataSetLast;
    actClose: TAction;
    actAgregar: TAction;
    actModificar: TAction;
    actBorrar: TAction;
    actGrabar: TAction;
    actCancelar: TAction;
    actToggleView: TAction;
    actRegresar: TAction;
    actIrA: TAction;
    actPrintPreview: TAction;
    lnfStyles: TdxLayoutLookAndFeelList;
    lnfWeb: TdxLayoutWebLookAndFeel;
    lnfWebBold : TdxLayoutWebLookAndFeel;
    actNewFiscalYear: TAction;
    actDelFiscalYear: TAction;
    alStandard: TActionList;
    WindowClose1: TWindowClose;
    WindowCascade1: TWindowCascade;
    WindowTileHorizontal1: TWindowTileHorizontal;
    WindowTileVertical1: TWindowTileVertical;
    lnfNoBorder: TdxLayoutWebLookAndFeel;
    lnfButtonGroup: TdxLayoutWebLookAndFeel;
    GridStyles: TcxStyleRepository;
    GridBandedTableViewStyleSheetDevExpress: TcxGridBandedTableViewStyleSheet;
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
    cxStyle15: TcxStyle;
    cxStyle16: TcxStyle;
    cxStyle17: TcxStyle;
    cxStyle18: TcxStyle;
    cxStyle19: TcxStyle;
    cxStyle20: TcxStyle;
    cxStyle21: TcxStyle;
    cxStyle22: TcxStyle;
    cxStyle23: TcxStyle;
    cxStyle24: TcxStyle;
    cxStyle25: TcxStyle;
    cxStyle26: TcxStyle;
    cxStyle27: TcxStyle;
    cxStyle28: TcxStyle;
    cxStyle29: TcxStyle;
    dxPSEngineController: TdxPSEngineController;
    actDesign: TAction;
    actNewFolder: TAction;
    actDelFolder: TAction;
    actVistas: TAction;
    actPostear: TAction;
    actValidar: TAction;
    GridCardViewStyleSheetDevExpress: TcxGridCardViewStyleSheet;
    cxStyle30: TcxStyle;
    cxStyle31: TcxStyle;
    cxStyle32: TcxStyle;
    cxStyle33: TcxStyle;
    cxStyle34: TcxStyle;
    cxStyle35: TcxStyle;
    cxStyle36: TcxStyle;
    cxStyle37: TcxStyle;
    cxStyle38: TcxStyle;
    cxStyle39: TcxStyle;
    GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet;
    cxStyle40: TcxStyle;
    cxStyle41: TcxStyle;
    cxStyle42: TcxStyle;
    cxStyle43: TcxStyle;
    cxStyle44: TcxStyle;
    cxStyle45: TcxStyle;
    cxStyle46: TcxStyle;
    cxStyle47: TcxStyle;
    cxStyle48: TcxStyle;
    cxStyle49: TcxStyle;
    cxStyle50: TcxStyle;
    cxStyle51: TcxStyle;
    cxStyle52: TcxStyle;
    cxStyle53: TcxStyle;
    actGroupPanel: TAction;
    actGridCustomize: TAction;
    actGridShowFooter: TAction;
    actGridFullExpand: TAction;
    actGridFullCollapse: TAction;
    actGridAutoAdjust: TAction;
    actSelectAll: TAction;
    actUnSelectAll: TAction;
    actExecute: TAction;
    actSysDoc: TAction;
    cxStyle54: TcxStyle;
    actImprimir: TAction;
    actSendMail: TAction;
    cxStyle55: TcxStyle;
    cxStyleVerde: TcxStyle;
    procedure DataModuleCreate(Sender: TObject);
    procedure alDatosExecute(Action: TBasicAction; var Handled: Boolean);
  private
    { Private declarations }
    procedure DoFakeAction(Sender : TObject);
    procedure FakeActions;
    function GetActionCount: Integer;
    function GetAction(Index: Integer): TBasicAction;
  public
    { Public declarations }
    constructor Create(AOwner : TComponent) ; override;
    property ActionCount : Integer read GetActionCount;
    property Actions[Index : Integer] : TBasicAction read GetAction;
    procedure CleanUpActions;
  end;

var
  dmAppActions: TdmAppActions;

function AppActions : TdmAppActions;
procedure SetStatusText( sText : String );

implementation

uses Forms, Main, CustomModule, ShellApi, DataModule;

{$R *.dfm}

function AppActions : TdmAppActions;
begin
  if(dmAppActions = nil) then
    dmAppActions := TdmAppActions.Create(Application);
  Result := dmAppActions;
end;

{ TdmAppActions }

constructor TdmAppActions.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FakeActions;
end;

procedure TdmAppActions.DoFakeAction(Sender: TObject);
begin
  // Do Nothing
end;

procedure TdmAppActions.FakeActions;
var
  I : Integer;
begin
  for I := 0 to alDatos.ActionCount - 1 do
    alDatos.Actions[I].OnExecute := DoFakeAction;
end;

function TdmAppActions.GetAction(Index: Integer): TBasicAction;
begin
  Result := alDatos.Actions[Index];
end;

function TdmAppActions.GetActionCount: Integer;
begin
  Result := alDatos.ActionCount;
end;

procedure TdmAppActions.DataModuleCreate(Sender: TObject);
begin
  CleanUpActions;
  dxPSEngineController.UseNativeLookAndFeel := ( DM.CurInterface <> 0  );
  dxPSEngineController.Activate;
end;                                   

procedure TDMAppActions.CleanUpActions;
var
  I : Integer;
begin
  for I := 0 to alDatos.ActionCount - 1 do
    TAction(alDatos.Actions[I]).Visible := False;
end;

procedure TdmAppActions.alDatosExecute(Action: TBasicAction;
  var Handled: Boolean);
begin
  if frmMain.lmdForms.FormCount > 0 then
    ( frmMain.lmdForms.ActiveForm as TfrmCustomModule ).ExecuteAction(Action);
end;

procedure SetStatusText(sText: String);
begin
  frmMain.spTexto.Caption := sText;
  frmMain.Update;
end;

end.
