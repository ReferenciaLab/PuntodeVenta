unit DatosPruebas_Backup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DatosModule, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, Menus, cxLookAndFeelPainters, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, ABSMain, JvStringHolder, StdActns,
  ActnList, ADODB, cxGridCustomPopupMenu, cxGridPopupMenu, dxPSContainerLnk,
  dxPSdxLCLnk, dxPSCore, dxPScxCommon, dxPScxGridLnk, JvComponentBase, DBCtrls,
  JvFormPlacement, ExtCtrls, dxLayoutControl, StdCtrls, cxButtons, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView, cxImageComboBox,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, JvExControls, JvComponent,
  JvEnterTab, cxCheckBox, cxDBEdit, cxCurrencyEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox, cxContainer, cxTextEdit,
  cxGroupBox, cxRadioGroup;

type
  TfrmDatosPruebas_Backup = class(TfrmDatosModule)
    qrPruebas: TADOQuery;
    qrPruebasPruebaID: TStringField;
    qrPruebasAlias: TStringField;
    qrPruebasDescripcion: TStringField;
    qrPruebasEstatus: TIntegerField;
    qrPruebasGrupoPruebaID: TStringField;
    qrPruebasDepartamento: TStringField;
    qrPruebasPrecio: TBCDField;
    qrPruebasPermiteCambioPrecio: TBooleanField;
    qrPruebasCodigoAxapta: TStringField;
    tvDatosPruebaID: TcxGridDBColumn;
    tvDatosDescripcion: TcxGridDBColumn;
    tvDatosEstatus: TcxGridDBColumn;
    tvDatosGrupoPruebaID: TcxGridDBColumn;
    tvDatosPrecio: TcxGridDBColumn;
    tvDatosCodigoAxapta: TcxGridDBColumn;
    lcDatosGroup1: TdxLayoutGroup;
    edprueba: TcxDBTextEdit;
    lcDatosItem1: TdxLayoutItem;
    EdDescripcion: TcxDBTextEdit;
    lcDatosItem2: TdxLayoutItem;
    cxDBExtLookupComboBox1: TcxDBExtLookupComboBox;
    lcDatosItem3: TdxLayoutItem;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    lcDatosItem4: TdxLayoutItem;
    cxDBCheckBox1: TcxDBCheckBox;
    lcDatosItem5: TdxLayoutItem;
    cxDBCheckBox2: TcxDBCheckBox;
    lcDatosItem6: TdxLayoutItem;
    qrPruebasPrecioDolares: TBCDField;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    lcDatosItem7: TdxLayoutItem;
    btSucursal: TcxButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    qrPruebasCosto: TBCDField;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    lcDatosItem8: TdxLayoutItem;
    qrPruebasExterior: TBooleanField;
    cxDBCheckBox3: TcxDBCheckBox;
    lcDatosItem9: TdxLayoutItem;
    BtPruebas: TcxButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    qrPruebasFacturarCabecera: TBooleanField;
    qrPruebasPruebas: TIntegerField;
    cxDBCheckBox4: TcxDBCheckBox;
    lcDatosItem10: TdxLayoutItem;
    qrPruebasTipo: TStringField;
    cxDBImageComboBox1: TcxDBImageComboBox;
    lcDatosItem12: TdxLayoutItem;
    btAseguradora: TcxButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    EdAlias: TcxDBTextEdit;
    lcDatosItem11: TdxLayoutItem;
    qrPruebasOrina: TBooleanField;
    qrPruebasSangre: TBooleanField;
    cxDBCheckBox5: TcxDBCheckBox;
    lcDatosItem13: TdxLayoutItem;
    cxDBCheckBox6: TcxDBCheckBox;
    lcDatosItem14: TdxLayoutItem;
    procedure btAseguradoraClick(Sender: TObject);
    procedure BtPruebasClick(Sender: TObject);
    procedure btSucursalClick(Sender: TObject);
    procedure qrPruebasNewRecord(DataSet: TDataSet);
    procedure qrPruebasBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDatosPruebas_Backup: TfrmDatosPruebas_Backup;

implementation
uses DataModule,Main;
{$R *.dfm}

procedure TfrmDatosPruebas_Backup.BtPruebasClick(Sender: TObject);
begin
  inherited;
  If (qrPruebas.State = dsInsert) or (qrPruebas.State = dsEdit) then
    Raise exception.CreateFmt('El Mantenimiento Esta En Edicion. Debe Grabar Antes de Agregar las Pruebas', [])
  Else
    If (qrPruebasTipo.Value = 'C') Then
      frmMain.LanzaConsulta(-8004, qrPruebasPruebaId.Value)
    Else
      Raise exception.CreateFmt('Esta Prueba NO Es Un Combo. NO Puede Registrar Detalle.', [])
end;

procedure TfrmDatosPruebas_Backup.btSucursalClick(Sender: TObject);
begin
  inherited;
   frmMain.LanzaConsulta(-7985, qrPruebasPruebaId.Value);
end;

procedure TfrmDatosPruebas_Backup.btAseguradoraClick(Sender: TObject);
begin
  inherited;
  If (qrPruebas.State = dsInsert) or (qrPruebas.State = dsEdit) then
    Raise exception.CreateFmt('Debe Grabar Antes de Agregar los Codigos CUP de Esta Prueba', [])
  Else
    frmMain.LanzaConsulta(-8007, qrPruebasPruebaId.Value);
end;

procedure TfrmDatosPruebas_Backup.FormCreate(Sender: TObject);
begin
  inherited;
  DM.qrGrupoPrueba.Close;
  DM.qrGrupoPrueba.Open;

  DM.qrParametro.close;
  DM.qrParametro.open;

  edprueba.Properties.ReadOnly := DM.qrParametroAutoNumerarPruebas.Value;
end;

procedure TfrmDatosPruebas_Backup.qrPruebasBeforePost(DataSet: TDataSet);
begin
  inherited;
  If (qrPruebas.State = dsInsert) Or
     (qrPruebas.State = dsEdit) Then
    If (qrPruebasPruebaID.IsNull) Or
       (qrPruebasPruebaID.Value = '')Then
      AutoKeyField := 'PruebaID';

  DM.qrParametro.close;
  DM.qrParametro.open;

  if (qrPruebas.State = dsInsert) and (DM.qrParametroAutoNumerarPruebas.Value) then
  begin
   qrPruebasPruebaID.Value := formatfloat('00',strtofloat(DM.CurSucursal)) + '-' +
                              formatfloat('000000',DM.qrParametroSecuenciaPruebas.asfloat);
   DM.qrParametro.edit;
   DM.qrParametroSecuenciaPruebas.Value := DM.qrParametroSecuenciaPruebas.Value + 1;
   DM.qrParametro.Post;
  end;
end;

procedure TfrmDatosPruebas_Backup.qrPruebasNewRecord(DataSet: TDataSet);
begin
  inherited;
  qrPruebasEstatus.Value := 1;
  qrPruebasCosto.Value := 0;
  qrPruebasPruebas.Value := 0;
  qrPruebasPrecio.Value := 0;
  qrPruebasPrecioDolares.Value := 0;
  qrPruebasTipo.Value := 'S';
  qrPruebasExterior.Value := False;
  qrPruebasOrina.Value := False;
  qrPruebasSangre.Value := True;
  qrPruebasFacturarCabecera.Value := False;
  qrPruebasPermiteCambioPrecio.Value := False;

  qrPruebasCosto.ReadOnly := True;
  qrPruebasPrecio.ReadOnly := True;
  qrPruebasPrecioDolares.ReadOnly := True;
end;

end.
