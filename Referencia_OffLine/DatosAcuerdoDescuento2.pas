unit DatosAcuerdoDescuento2;

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
  cxContainer, cxTextEdit, cxMaskEdit, cxImageComboBox, cxDBEditRepository,
  cxExtEditRepositoryItems, cxEditRepositoryItems;

type
  TfrmDatosAcuerdoDescuento2 = class(TfrmDatosModule)
    qrAcuerdoPrecios: TADOQuery;
    qrAcuerdoPreciosPrecio: TBCDField;
    qrAcuerdoPreciosPctDescuento: TBCDField;
    qrAcuerdoPreciosDesde: TDateTimeField;
    qrAcuerdoPreciosHasta: TDateTimeField;
    qrAcuerdoPreciosMonedaID: TStringField;
    qrAcuerdoPreciosPruebaCode: TStringField;
    qrAcuerdoPreciosPruebaRelation: TStringField;
    qrAcuerdoPreciosClienteCode: TStringField;
    qrAcuerdoPreciosClienteRelation: TStringField;
    qrAcuerdoPreciosActivo: TBooleanField;
    qrAcuerdoPreciosRelacion: TStringField;
    tvDatosPrecio: TcxGridDBColumn;
    tvDatosDesde: TcxGridDBColumn;
    tvDatosHasta: TcxGridDBColumn;
    tvDatosClienteCode: TcxGridDBColumn;
    tvDatosClienteRelation: TcxGridDBColumn;
    tvDatosActivo: TcxGridDBColumn;
    lcDatosGroup3: TdxLayoutGroup;
    lcDatosGroup4: TdxLayoutGroup;
    cxDBImageComboBox2: TcxDBImageComboBox;
    lcDatosItemTipo: TdxLayoutItem;
    elcRelacionCliente: TcxDBExtLookupComboBox;
    lcRelacionCliente: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    lcDatosItem7: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    lcDatosItem8: TdxLayoutItem;
    cxDBCheckBox1: TcxDBCheckBox;
    lcDatosItem9: TdxLayoutItem;
    qrAcuerdoPreciosrecid: TLargeintField;
    qrAcuerdoPreciosCoberturaValor: TBCDField;
    qrAcuerdoPreciosCoberturaExpPorc: TBooleanField;
    edcobertura: TcxDBCurrencyEdit;
    lcDatosItem2: TdxLayoutItem;
    procedure qrAcuerdoPreciosPctDescuentoValidate(Sender: TField);
    procedure qrAcuerdoPreciosClienteCodeChange(Sender: TField);
    procedure qrAcuerdoPreciosNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure RefrescarCliente;
    procedure RefrescarLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDatosAcuerdoDescuento2: TfrmDatosAcuerdoDescuento2;

implementation

Uses DataModule;

{$R *.dfm}



procedure TfrmDatosAcuerdoDescuento2.RefrescarLabel;
begin
  If qrAcuerdoPreciosClienteCode.Value = '3' then
    lcDatosItemTipo.Caption := 'Tarjeta de Descuento'
  Else
    lcDatosItemTipo.Caption := 'Tipo Cliente';
end;



procedure TfrmDatosAcuerdoDescuento2.RefrescarCliente;
begin
  if qrAcuerdoPreciosClienteCode.Value = '0' then
  begin
   RefrescarLabel;
   elcRelacionCliente.RepositoryItem := nil;
   lcRelacionCliente.Enabled := false;
   if (qrAcuerdoPrecios.State = dsInsert) or (qrAcuerdoPrecios.State = dsEdit) then
       qrAcuerdoPreciosClienteRelation.Clear;
  end;

  if qrAcuerdoPreciosClienteCode.Value = '1' then
  begin
   RefrescarLabel;
   elcRelacionCliente.RepositoryItem := DM.elcGrupoCliente;
   lcRelacionCliente.Enabled := true;
   if (qrAcuerdoPrecios.State = dsInsert) or (qrAcuerdoPrecios.State = dsEdit) then
       qrAcuerdoPreciosClienteRelation.Clear;
  end;

  if qrAcuerdoPreciosClienteCode.Value = '2' then
  begin
   RefrescarLabel;
   elcRelacionCliente.RepositoryItem := DM.elcClientes;
   lcRelacionCliente.Enabled := true;
   if (qrAcuerdoPrecios.State = dsInsert) or (qrAcuerdoPrecios.State = dsEdit) then
       qrAcuerdoPreciosClienteRelation.Clear;
  end;

  if qrAcuerdoPreciosClienteCode.Value = '3' then
  begin
   RefrescarLabel;
   elcRelacionCliente.RepositoryItem := DM.elcTarjetaDescuento;
   lcRelacionCliente.Enabled := true;
   if (qrAcuerdoPrecios.State = dsInsert) or (qrAcuerdoPrecios.State = dsEdit) then
       qrAcuerdoPreciosClienteRelation.Clear;
  end;
end;

procedure TfrmDatosAcuerdoDescuento2.FormCreate(Sender: TObject);
begin
  inherited;
  DM.qrMonedas.Close;
  DM.qrMonedas.Open;

  DM.qrGrupoCliente.Close;
  DM.qrGrupoCliente.Open;

  DM.qrClientes.Close;
  DM.qrClientes.Open;


  RefrescarCliente;

end;

procedure TfrmDatosAcuerdoDescuento2.qrAcuerdoPreciosClienteCodeChange(
  Sender: TField);
begin
  inherited;
  RefrescarCliente;
end;

procedure TfrmDatosAcuerdoDescuento2.qrAcuerdoPreciosNewRecord(DataSet: TDataSet);
begin
  inherited;
  DM.qrParametro.Close;
  DM.qrParametro.Open;

  qrAcuerdoPreciosClienteCode.Value := '0';
  qrAcuerdoPreciosPruebaCode.Value := '0';
  qrAcuerdoPreciosActivo.Value := True;
  qrAcuerdoPreciosRecid.value := DM.qrParametroSecuencia.Value;
  qrAcuerdoPreciosPctDescuento.Value := 0;
  qrAcuerdoPreciosRelacion.Value := 'D';
  qrAcuerdoPreciosRecid.value := DM.qrParametroSecuencia.Value;

  DM.qrParametro.Edit;
  DM.qrParametroSecuencia.Value := DM.qrParametroSecuencia.Value + 1;
  DM.qrParametro.Post;
end;

procedure TfrmDatosAcuerdoDescuento2.qrAcuerdoPreciosPctDescuentoValidate(
  Sender: TField);
begin
  inherited;
  if (qrAcuerdoPreciosPctDescuento.Value >= 100) then
     raise exception.CreateFmt('El pordentaje no puede ser mayor de 100',[]);
end;

end.
