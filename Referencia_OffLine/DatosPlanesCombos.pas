unit DatosPlanesCombos;

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
  JvEnterTab, cxCheckBox, cxDBEdit, cxCurrencyEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox, cxContainer, cxTextEdit,
  cxintl;

type
  TfrmDatosPlanesCombos = class(TfrmDatosModule)
    qrPlanesCombos: TADOQuery;
    tvDatosPlanId: TcxGridDBColumn;
    tvDatosDescripcion: TcxGridDBColumn;
    lcDatosGroup1: TdxLayoutGroup;
    EdPlan: TcxDBTextEdit;
    lcDatosItem1: TdxLayoutItem;
    EdDescripcion: TcxDBTextEdit;
    lcDatosItem2: TdxLayoutItem;
    CbEstatus: TcxDBCheckBox;
    lcDatosItem6: TdxLayoutItem;
    EdClienteId: TcxDBTextEdit;
    lcDatosItem10: TdxLayoutItem;
    btCombos: TcxButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    EdCodigo: TcxDBTextEdit;
    lcDatosItem3: TdxLayoutItem;
    EdNombre: TcxDBTextEdit;
    lcDatosItem4: TdxLayoutItem;
    tvDatosCodigoCupID: TcxGridDBColumn;
    tvDatosNombreCliente: TcxGridDBColumn;
    qrPlanesCombosPlanId: TStringField;
    qrPlanesCombosCodigoId: TStringField;
    qrPlanesCombosPruebaID: TStringField;
    qrPlanesCombosClienteID: TStringField;
    qrPlanesCombosDescripcion: TStringField;
    qrPlanesCombosNombreCliente: TStringField;
    qrPlanesCombosEstatus: TBooleanField;
    qrPlanesCombosLinea: TIntegerField;
    EdPrueba: TcxDBTextEdit;
    lcDatosItem7: TdxLayoutItem;
    tvDatosCodigoId: TcxGridDBColumn;
    procedure btCombosClick(Sender: TObject);
    procedure qrPlanesCombosNewRecord(DataSet: TDataSet);
    procedure qrPlanesCombosBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    qrPlan    :   TADOQuery;
    PlanId    :   String;
    procedure BuscarData(codigo: string);
    { Public declarations }
  end;

var
  frmDatosPlanesCombos: TfrmDatosPlanesCombos;

implementation

uses DataModule, Main;


{$R *.dfm}


procedure TfrmDatosPlanesCombos.btCombosClick(Sender: TObject);
begin
  inherited;
  if (qrPlanesCombos.State = dsInsert) or (qrPlanesCombos.State = dsEdit) then
    Begin
      frmMain.LanzaVentana(-8014);
    end
  else
    Raise exception.CreateFmt('El Mantenimiento NO Esta En Edicion.', []);
end;


procedure TfrmDatosPlanesCombos.qrPlanesCombosBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (qrPlanesCombos.State = dsInsert) or (qrPlanesCombos.State = dsEdit) then
    Begin
      qrPlanesCombosPlanId.Value := PlanId;
      If (qrPlanesCombosCodigoId.IsNull) Or
         (qrPlanesCombosCodigoId.Value = '')Then
      AutoKeyField := 'CodigoId';
    end;

  DM.qrParametro.close;
  DM.qrParametro.open;

  if (qrPlanesCombos.State = dsInsert) and (DM.qrParametroAutoNumerarPlanCombo.Value) then
  begin
   qrPlanesCombosCodigoId.Value := formatfloat('00',strtofloat(DM.CurSucursal)) + '-' +
                                   formatfloat('000000',DM.qrParametroSecuenciaPlanCombo.asfloat);
   DM.qrParametro.edit;
   DM.qrParametroSecuenciaPlanCombo.Value := DM.qrParametroSecuenciaPlanCombo.Value + 1;
   DM.qrParametro.Post;
  end;
end;


procedure TfrmDatosPlanesCombos.qrPlanesCombosNewRecord(DataSet: TDataSet);
begin
  inherited;
  btCombos.Click;
  qrPlanesCombosPlanId.Value := PlanId;
  qrPlanesCombosEstatus.Value := True;
  qrPlanesCombosClienteID.Value := qrPlan.FieldByName('ClienteID').AsString;
  qrPlanesCombosNombreCliente.Value := qrPlan.FieldByName('Nombre').AsString;
end;


procedure TfrmDatosPlanesCombos.BuscarData(codigo: string);
begin
 qrPlanesCombos.Close;
 qrPlanesCombos.Parameters[0].Value := codigo;
 qrPlanesCombos.Open;             
                             
 PlanId := codigo;
 qrPlan := DM.find('SELECT * FROM PTPlanesEmpresa WHERE PlanID = :plan', PlanId);
end;


end.

