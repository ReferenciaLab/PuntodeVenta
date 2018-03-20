unit DialogConfiguracionDD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DialogModule, dxLayoutControl, StdCtrls, cxButtons, cxControls,
  DB, ADODB, cxGridLevel, cxClasses, cxGridCustomView, 
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid;

type
  TfrmDialogConfiguracionDD = class(TfrmDialogModule)
    lcDialogGroup3: TdxLayoutGroup;
    lcDialogGroup4: TdxLayoutGroup;
    lcDialogGroup5: TdxLayoutGroup;
    grIngresosDBTableView1: TcxGridDBTableView;
    grIngresosLevel1: TcxGridLevel;
    grIngresos: TcxGrid;
    lcDialogItem3: TdxLayoutItem;
    grGastosDBTableView1: TcxGridDBTableView;
    grGastosLevel1: TcxGridLevel;
    grGastos: TcxGrid;
    lcDialogItem4: TdxLayoutItem;
    grBalanceDBTableView1: TcxGridDBTableView;
    grBalanceLevel1: TcxGridLevel;
    grBalance: TcxGrid;
    lcDialogItem5: TdxLayoutItem;
    qrIngreso: TADOQuery;
    dsControl: TDataSource;
    dsEgresos: TDataSource;
    dsIngreso: TDataSource;
    qrEgresos: TADOQuery;
    qrControl: TADOQuery;
    grIngresosDBTableView1TipoCuenta: TcxGridDBColumn;
    grIngresosDBTableView1CuentaContable: TcxGridDBColumn;
    grGastosDBTableView1TipoCuenta: TcxGridDBColumn;
    grGastosDBTableView1CuentaContable: TcxGridDBColumn;
    grBalanceDBTableView1TipoCuenta: TcxGridDBColumn;
    grBalanceDBTableView1CuentaContable: TcxGridDBColumn;
    qrIngresoTipoCuenta: TIntegerField;
    qrIngresoCuentaContable: TStringField;
    qrEgresosTipoCuenta: TIntegerField;
    qrEgresosCuentaContable: TStringField;
    qrControlTipoCuenta: TIntegerField;
    qrControlCuentaContable: TStringField;
    lcDialogGroup7: TdxLayoutGroup;
    lcDialogGroup9: TdxLayoutGroup;
    lcDialogGroup8: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutGroup9: TdxLayoutGroup;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    cxGrid4: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    dxLayoutControl1Item1: TdxLayoutItem;
    qrFlujo: TADOQuery;
    dsFlujo: TDataSource;
    qrFlujoTipoCuenta: TIntegerField;
    qrFlujoCuentaContable: TStringField;
    procedure qrControlNewRecord(DataSet: TDataSet);
    procedure qrEgresosNewRecord(DataSet: TDataSet);
    procedure qrIngresoNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure qrFlujoNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ShowGyP;
    procedure ShowBalance;
  end;

var
  frmDialogConfiguracionDD: TfrmDialogConfiguracionDD;

implementation

uses DataModule;

{$R *.dfm}

procedure TfrmDialogConfiguracionDD.qrControlNewRecord(DataSet: TDataSet);
begin
  inherited;
  qrControlTipoCuenta.Value := 4;
end;

procedure TfrmDialogConfiguracionDD.qrEgresosNewRecord(DataSet: TDataSet);
begin
  inherited;
  qrEgresosTipoCuenta.Value := 2;
end;

procedure TfrmDialogConfiguracionDD.qrIngresoNewRecord(DataSet: TDataSet);
begin
  inherited;
  qrIngresoTipoCuenta.Value := 1;
end;

procedure TfrmDialogConfiguracionDD.ShowBalance;
begin
  Showmodal;
end;

procedure TfrmDialogConfiguracionDD.ShowGyP;
begin
  ShowModal;
end;

procedure TfrmDialogConfiguracionDD.FormCreate(Sender: TObject);
begin
  inherited;
  DM.qrCuentas.Close;
  DM.qrCuentas.Open;
  DM.qrCuentaEntrada.Close;
  DM.qrCuentaEntrada.Open;
  qrIngreso.Close;
  qrIngreso.Open;
  qrEgresos.Close;
  qrEgresos.Open;
  qrControl.Close;
  qrControl.Open;
  qrFlujo.Close;
  qrFlujo.Open;
end;

procedure TfrmDialogConfiguracionDD.qrFlujoNewRecord(DataSet: TDataSet);
begin
  inherited;
  qrFlujoTipoCuenta.Value := 5;
end;

end.
