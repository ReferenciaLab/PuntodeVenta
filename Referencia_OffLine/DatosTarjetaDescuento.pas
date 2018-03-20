unit DatosTarjetaDescuento;

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
  JvEnterTab, cxMaskEdit, cxSpinEdit, cxDBEdit, cxContainer, cxTextEdit,
  cxCheckBox, cxintl;

type
  TfrmDatosTarjetaDescuento = class(TfrmDatosModule)
    qrTarjetaDescuento: TADOQuery;
    tvDatosTarjetaID: TcxGridDBColumn;
    tvDatosDescripcion: TcxGridDBColumn;
    lcDatosGroup1: TdxLayoutGroup;
    EdTarjetaId: TcxDBTextEdit;
    lcDatosItem1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    lcDatosItem2: TdxLayoutItem;
    cxDBSpinEdit1: TcxDBSpinEdit;
    lcDatosItem3: TdxLayoutItem;
    qrTarjetaDescuentoTarjetaID: TStringField;
    qrTarjetaDescuentoDescripcion: TStringField;
    qrTarjetaDescuentoDigitos: TSmallintField;
    qrTarjetaDescuentoContacto: TStringField;
    qrTarjetaDescuentoTelefono: TStringField;
    qrTarjetaDescuentoInterno: TBooleanField;
    qrTarjetaDescuentoFactorPuntos: TBCDField;
    qrTarjetaDescuentoDescuento: TBCDField;
    qrTarjetaDescuentoBono: TBooleanField;
    tvDatosDigitos: TcxGridDBColumn;
    cxDBCheckBox1: TcxDBCheckBox;
    lcDatosItem4: TdxLayoutItem;
    cxDBCheckBox2: TcxDBCheckBox;
    lcDatosItem5: TdxLayoutItem;
    qrTarjetaDescuentoNumeroUnico: TBooleanField;
    qrTarjetaDescuentoNumeroObligatorio: TBooleanField;
    tvDatosNumeroUnico: TcxGridDBColumn;
    tvDatosNumeroObligatorio: TcxGridDBColumn;
    cxDBCheckBox3: TcxDBCheckBox;
    lcDatosItem6: TdxLayoutItem;
    BtBonos: TcxButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    procedure qrTarjetaDescuentoAfterPost(DataSet: TDataSet);
    procedure BtBonosClick(Sender: TObject);
    procedure qrTarjetaDescuentoNewRecord(DataSet: TDataSet);
    procedure qrTarjetaDescuentoBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDatosTarjetaDescuento: TfrmDatosTarjetaDescuento;

implementation

uses DataModule, Main;

{$R *.dfm}

procedure TfrmDatosTarjetaDescuento.BtBonosClick(Sender: TObject);
begin
  inherited;
  If (qrTarjetaDescuento.State = dsInsert) or (qrTarjetaDescuento.State = dsEdit) then
    Raise exception.CreateFmt('El Mantenimiento Esta En Edicion. Debe Grabar Antes de Agregar Los Bonos', [])
  Else
    If (qrTarjetaDescuentoBono.Value = True) Then
      frmMain.LanzaConsulta(-8009, qrTarjetaDescuentoTarjetaID.Value)
    Else
      Raise exception.CreateFmt('Esta Tarjeta NO Es Un Bono Interno. NO Puede Registrar Detalle.', [])
end;

procedure TfrmDatosTarjetaDescuento.FormCreate(Sender: TObject);
begin
  inherited;
  DM.qrParametro.close;
  DM.qrParametro.open;

  EdTarjetaId.Properties.ReadOnly := DM.qrParametroAutoNumerarTarjetas.Value;
end;

procedure TfrmDatosTarjetaDescuento.qrTarjetaDescuentoAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  qrTarjetaDescuento.Refresh;
end;

procedure TfrmDatosTarjetaDescuento.qrTarjetaDescuentoBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  If (qrTarjetaDescuento.State = dsInsert) Or
     (qrTarjetaDescuento.State = dsEdit) Then
    If (qrTarjetaDescuentoTarjetaID.IsNull) Or
       (qrTarjetaDescuentoTarjetaID.Value = '')Then
      AutoKeyField := 'TarjetaID';

  DM.qrParametro.close;
  DM.qrParametro.open;

  if (qrTarjetaDescuento.State = dsInsert) and (DM.qrParametroAutoNumerarTarjetas.Value) then
  begin
//   qrTarjetaDescuentoTarjetaID.Value := formatfloat('00',strtofloat(DM.CurSucursal)) + '-' +
   qrTarjetaDescuentoTarjetaID.Value := Copy(DM.CurSucursal, 1, 2) + '-' +
                                        formatfloat('0000',DM.qrParametroSecuenciaTarjetas.asfloat);
   DM.qrParametro.edit;
   DM.qrParametroSecuenciaTarjetas.Value := DM.qrParametroSecuenciaTarjetas.Value + 1;
   DM.qrParametro.Post;
  end;
end;

procedure TfrmDatosTarjetaDescuento.qrTarjetaDescuentoNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  qrTarjetaDescuentoBono.Value := False;
  qrTarjetaDescuentoNumeroUnico.Value := False;
  qrTarjetaDescuentoNumeroObligatorio.Value := False;
end;

end.
