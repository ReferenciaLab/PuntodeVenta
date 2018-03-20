unit DatosCombos;

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
  TfrmDatosCombos = class(TfrmDatosModule)
    qrCombos: TADOQuery;
    tvDatosComboID: TcxGridDBColumn;
    tvDatosDescripcion: TcxGridDBColumn;
    tvDatosEstatus: TcxGridDBColumn;
    tvDatosPrecioDolares: TcxGridDBColumn;
    tvDatosPrecio: TcxGridDBColumn;
    tvDatosPruebas: TcxGridDBColumn;
    lcDatosGroup1: TdxLayoutGroup;
    edCombo: TcxDBTextEdit;
    lcDatosItem1: TdxLayoutItem;
    EdDescripcion: TcxDBTextEdit;
    lcDatosItem2: TdxLayoutItem;
    EdPrecioRd: TcxDBCurrencyEdit;
    lcDatosItem4: TdxLayoutItem;
    cxDBCheckBox2: TcxDBCheckBox;
    lcDatosItem6: TdxLayoutItem;
    EdPrecioUs: TcxDBCurrencyEdit;
    lcDatosItem7: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    EdCosto: TcxDBCurrencyEdit;
    lcDatosItem8: TdxLayoutItem;
    EdPruebas: TcxDBMaskEdit;
    lcDatosItem3: TdxLayoutItem;
    qrCombosComboID: TStringField;
    qrCombosDescripcion: TStringField;
    qrCombosPrecio: TBCDField;
    qrCombosPrecioDolares: TBCDField;
    qrCombosCosto: TBCDField;
    qrCombosEstatus: TBooleanField;
    qrCombosPruebas: TSmallintField;
    procedure cxButton1Click(Sender: TObject);
    procedure qrCombosNewRecord(DataSet: TDataSet);
    procedure qrCombosBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDatosCombos: TfrmDatosCombos;

implementation

uses DataModule,Main;

{$R *.dfm}

procedure TfrmDatosCombos.cxButton1Click(Sender: TObject);
begin
  inherited;
  frmMain.LanzaConsulta(-8004, qrCombosComboID.Value);
end;


procedure TfrmDatosCombos.FormCreate(Sender: TObject);
begin
  inherited;
  DM.qrParametro.close;
  DM.qrParametro.open;

  EdCosto.Properties.ReadOnly := True;
  EdPruebas.Properties.ReadOnly := True;
  EdPrecioRd.Properties.ReadOnly := True;
  EdPrecioUs.Properties.ReadOnly := True;
  EdCombo.Properties.ReadOnly := DM.qrParametroAutoNumerarCombos.Value;
end;


procedure TfrmDatosCombos.qrCombosBeforePost(DataSet: TDataSet);
begin
  inherited;
  If (qrCombos.State = dsInsert) Or
     (qrCombos.State = dsEdit) Then
    If (qrCombosComboID.IsNull) Or
       (qrCombosComboID.Value = '')Then
      AutoKeyField := 'ComboID';

  DM.qrParametro.close;
  DM.qrParametro.open;

  if (qrCombos.State = dsInsert) and (DM.qrParametroAutoNumerarCombos.Value) then
  begin
   qrCombosComboID.Value := 'C'+formatfloat('00',strtofloat(DM.CurSucursal)) + '-' +
                            formatfloat('00000000',DM.qrParametroSecuenciaCombos.asfloat);
   DM.qrParametro.edit;
   DM.qrParametroSecuenciaCombos.Value := DM.qrParametroSecuenciaCombos.Value + 1;
   DM.qrParametro.Post;
  end;
end;


procedure TfrmDatosCombos.qrCombosNewRecord(DataSet: TDataSet);
begin
  inherited;
  qrCombosEstatus.Value := True;
  qrCombosPruebas.Value := 0;
  qrCombosCosto.Value := 0;
  qrCombosPrecio.Value := 0;
  qrCombosPrecioDolares.Value := 0;
end;


end.
