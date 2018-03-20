unit DatosGastosVariosTrans;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DatosModule, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, Menus, cxLookAndFeelPainters, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, ABSMain, JvStringHolder, StdActns,
  ActnList, ADODB, cxGridCustomPopupMenu, cxGridPopupMenu, dxPSContainerLnk,
  dxPSdxLCLnk, dxPSCore, dxPScxCommon, dxPScxGridLnk, JvComponentBase,
  JvFormPlacement, ExtCtrls, dxLayoutControl, StdCtrls, cxButtons, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, JvExControls, JvComponent,
  JvEnterTab, cxCheckBox, cxDBEdit, cxDropDownEdit, cxCalendar, cxCurrencyEdit,
  cxDBLookupComboBox, cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox,
  cxContainer, cxTextEdit, cxMaskEdit, cxImageComboBox, cxintl;

type
  TfrmDatosGastosVariosTrans = class(TfrmDatosModule)
    qrGastosVariosTrans: TADOQuery;
    lcDatosGroup4: TdxLayoutGroup;
    EdValor: TcxDBCurrencyEdit;
    lcDatosItem2: TdxLayoutItem;
    qrGastosVariosTransValor: TBCDField;
    qrGastosVariosTransRefrecid: TLargeintField;
    tvDatosGastoVarioID: TcxGridDBColumn;
    tvDatosValor: TcxGridDBColumn;
    qrGastosVariosTransGastoVarioID: TStringField;
    qrGastosVariosTransGenerada: TBooleanField;
    CbGastoVario: TcxDBExtLookupComboBox;
    lcDatosItem1: TdxLayoutItem;
    procedure qrGastosVariosTransAfterPost(DataSet: TDataSet);
    procedure qrGastosVariosTransNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  protected
    procedure DoInsert; override;
    procedure DoEdit; override;
    procedure DoDelete; override;
  public
    { Public declarations }
    procedure SetRefrecid(_refrecid : string);
  end;

var
  frmDatosGastosVariosTrans: TfrmDatosGastosVariosTrans;
  refrecid                 : Integer;
  SoloConsulta             : Boolean;

implementation

Uses DataModule,Main,PuntoVenta;

{$R *.dfm}

procedure TfrmDatosGastosVariosTrans.DoInsert;
begin
  if SoloConsulta then
   DM.Info('Esta factura ya ha sido abonada o pagada y NO Puede agregarsele Mas Gastos Varios.')
  else
  inherited;

end;

procedure TfrmDatosGastosVariosTrans.DoEdit;
begin
  if SoloConsulta then
   DM.Info('Esta factura ya ha sido abonada o pagada y NO Pueden ser modificados Sus Gastos Varios.')
  else
  inherited;

end;

procedure TfrmDatosGastosVariosTrans.DoDelete;
begin
  if SoloConsulta then
   DM.Info('Esta factura ya ha sido abonada o pagada y NO pueden ser eliminados Sus Gastos Varios.')
  else
  inherited;

end;


procedure TfrmDatosGastosVariosTrans.qrGastosVariosTransAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  frmMain.frmTmp.ActTotales;
end;

procedure TfrmDatosGastosVariosTrans.qrGastosVariosTransNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  qrGastosVariosTransRefrecid.Value := refrecid;
end;

procedure TfrmDatosGastosVariosTrans.SetRefrecid(_refrecid: string);
var
 qfind : TADOQuery;
begin
 refrecid := strtoint(_refrecid);
 qfind  := DM.NewQuery;

 qfind.Close;
 qfind.SQL.Text := 'Select * from PTEntradaPaciente Where recid = :recid';
 qfind.Parameters[0].Value := refrecid;
 qfind.Open;

 if (qfind.FieldByName('TotalPagado').AsFloat > 1) Then
   SoloConsulta := True
 else
   SoloConsulta := False;

 qrGastosVariosTrans.Close;
 qrGastosVariosTrans.SQL.Text := 'SELECT * FROM PTGastosVarioTrans Where refrecid = :recid';
 qrGastosVariosTrans.Parameters[0].Value := refrecid;
 qrGastosVariosTrans.Open;

 DM.qrGastosVarios.close;
 DM.qrGastosVarios.Open;
end;

end.
