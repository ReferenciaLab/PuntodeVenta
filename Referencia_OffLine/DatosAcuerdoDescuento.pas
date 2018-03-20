unit DatosAcuerdoDescuento;

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
  TfrmDatosAcuerdoDescuento = class(TfrmDatosModule)
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
    edcobertura: TcxDBCurrencyEdit;
    lcDatosItem2: TdxLayoutItem;
    qrAcuerdoPrecios: TADOQuery;
    qrAcuerdoPreciosPRECIO: TBCDField;
    qrAcuerdoPreciosPCTDESCUENTO: TBCDField;
    qrAcuerdoPreciosDESDE: TDateTimeField;
    qrAcuerdoPreciosHASTA: TDateTimeField;
    qrAcuerdoPreciosMONEDAID: TStringField;
    qrAcuerdoPreciosPRUEBARELATION: TStringField;
    qrAcuerdoPreciosCLIENTERELATION: TStringField;
    qrAcuerdoPreciosRELACION: TStringField;
    qrAcuerdoPreciosCOBERTURAVALOR: TBCDField;
    qrAcuerdoPreciosACTIVO: TIntegerField;
    qrAcuerdoPreciosCOBERTURAEXPPORC: TIntegerField;
    qrAcuerdoPreciosGASTOSVARIOS: TBCDField;
    qrAcuerdoPreciosGASTOVARIOID: TStringField;
    qrAcuerdoPreciosCOSTO: TIntegerField;
    qrAcuerdoPreciosPRUEBACODE: TIntegerField;
    qrAcuerdoPreciosCLIENTECODE: TIntegerField;
    qrAcuerdoPreciosDATAAREAID: TStringField;
    qrAcuerdoPreciosRECID: TLargeintField;
    qrAcuerdoPreciosREFRECID: TLargeintField;
    qrAcuerdoPreciosADICIONAL: TBCDField;
    procedure qrAcuerdoPreciosBeforePost(DataSet: TDataSet);
    procedure qrAcuerdoPreciosAfterScroll(DataSet: TDataSet);
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
  frmDatosAcuerdoDescuento: TfrmDatosAcuerdoDescuento;

implementation

Uses DataModule;

{$R *.dfm}


procedure TfrmDatosAcuerdoDescuento.RefrescarLabel;
begin
  If qrAcuerdoPreciosClienteCode.Value = 3 then
    Begin
      lcDatosItemTipo.Caption := 'Tarjeta de Descuento';
      lcRelacionCliente.Caption := 'Relacion Tarjeta';
    end
  Else
    Begin
      lcDatosItemTipo.Caption := 'Tipo Cliente';
      lcRelacionCliente.Caption := 'Relacion Cliente';
    end;
end;


procedure TfrmDatosAcuerdoDescuento.RefrescarCliente;
begin
  if qrAcuerdoPreciosClienteCode.Value = 3 then
  begin
   RefrescarLabel;
   elcRelacionCliente.RepositoryItem := DM.elcTarjetaDescuento;
   lcRelacionCliente.Enabled := true;
   if (qrAcuerdoPrecios.State = dsInsert) or (qrAcuerdoPrecios.State = dsEdit) then
       qrAcuerdoPreciosClienteRelation.Clear;
  end;

  if qrAcuerdoPreciosClienteCode.Value = 2 then
  begin
   RefrescarLabel;
   elcRelacionCliente.RepositoryItem := nil;
   lcRelacionCliente.Enabled := false;
   if (qrAcuerdoPrecios.State = dsInsert) or (qrAcuerdoPrecios.State = dsEdit) then
       qrAcuerdoPreciosClienteRelation.Clear;
  end;

  if qrAcuerdoPreciosClienteCode.Value = 1 then
  begin
   RefrescarLabel;
   elcRelacionCliente.RepositoryItem := DM.elcGrupoCliente;
   lcRelacionCliente.Enabled := true;
   if (qrAcuerdoPrecios.State = dsInsert) or (qrAcuerdoPrecios.State = dsEdit) then
       qrAcuerdoPreciosClienteRelation.Clear;
  end;

  if qrAcuerdoPreciosClienteCode.Value = 0 then
  begin
   RefrescarLabel;
   elcRelacionCliente.RepositoryItem := DM.elcClientes;
   lcRelacionCliente.Enabled := true;
   if (qrAcuerdoPrecios.State = dsInsert) or (qrAcuerdoPrecios.State = dsEdit) then
       qrAcuerdoPreciosClienteRelation.Clear;
  end;
end;

procedure TfrmDatosAcuerdoDescuento.FormCreate(Sender: TObject);
begin
  inherited;
  DM.qrMonedas.Close;
  DM.qrMonedas.Open;

  DM.qrGrupoCliente.Close;
  DM.qrGrupoCliente.Open;

  DM.qrClientes.Close;
  DM.qrClientes.Open;

  DM.qrTarjetasDesc.Close;
  DM.qrTarjetasDesc.Open;

  RefrescarCliente;
end;

procedure TfrmDatosAcuerdoDescuento.qrAcuerdoPreciosAfterScroll(DataSet: TDataSet);
begin
  inherited;
  RefrescarCliente;
end;

procedure TfrmDatosAcuerdoDescuento.qrAcuerdoPreciosBeforePost(
  DataSet: TDataSet);
begin
  inherited;
{
  DM.Info(
          '   VALORES EN LA TABLA AL MOMENTO DE GUARDAR.   ' + #13 +
          'Precio: ' + qrAcuerdoPreciosPRECIO.AsString + #13 +
          'Descuento: '+ qrAcuerdoPreciosPCTDESCUENTO.AsString + #13 +
          'Desde: ' + qrAcuerdoPreciosDESDE.AsString + #13 +
          'Hasta: ' + qrAcuerdoPreciosHASTA.AsString + #13 +
          'Moneda: ' + qrAcuerdoPreciosMONEDAID.AsString + #13 +
          'PruRel: ' + qrAcuerdoPreciosPRUEBARELATION.AsString + #13 +
          'CliRel: ' + qrAcuerdoPreciosCLIENTERELATION.AsString + #13 +
          'Relacion: ' + qrAcuerdoPreciosRELACION.AsString + #13 +
          'CobValor: ' + qrAcuerdoPreciosCOBERTURAVALOR.AsString + #13 +
          'Activo: ' + qrAcuerdoPreciosACTIVO.AsString + #13 +
          'CobExp: ' + qrAcuerdoPreciosCOBERTURAEXPPORC.AsString + #13 +
          'GasValor: ' + qrAcuerdoPreciosGASTOSVARIOS.AsString + #13 +
          'GastoId: ' + qrAcuerdoPreciosGASTOVARIOID.AsString + #13 +
          'Cost: ' + qrAcuerdoPreciosCOSTO.AsString + #13 +
          'RefId: ' + qrAcuerdoPreciosREFRECID.AsString + #13 +
          'Prueba: ' + qrAcuerdoPreciosPRUEBACODE.AsString + #13 +
          'Cliente: ' + qrAcuerdoPreciosCLIENTECODE.AsString + #13 +
          'Area: ' + qrAcuerdoPreciosDATAAREAID.AsString + #13 +
          'RecId: ' + qrAcuerdoPreciosRECID.AsString);
}
end;


procedure TfrmDatosAcuerdoDescuento.qrAcuerdoPreciosClienteCodeChange(Sender: TField);
begin
  inherited;
  RefrescarCliente;
end;


procedure TfrmDatosAcuerdoDescuento.qrAcuerdoPreciosNewRecord(DataSet: TDataSet);
begin
  inherited;
{
  qrAcuerdoPreciosREFRECID.Value:= 0;
  qrAcuerdoPreciosPRUEBACODE.Value:= 0;
  qrAcuerdoPreciosCLIENTECODE.Value:= 0;

  qrAcuerdoPreciosCOSTO.Value:= 0;
  qrAcuerdoPreciosCOBERTURAEXPPORC.Value:= 0;

  qrAcuerdoPreciosPRECIO.Value:= 0;
  qrAcuerdoPreciosPCTDESCUENTO.Value:= 0;
  qrAcuerdoPreciosCOBERTURAVALOR.Value:= 0;
  qrAcuerdoPreciosGASTOSVARIOS.Value:= 0;

  qrAcuerdoPreciosMONEDAID.Value:= '.';
  qrAcuerdoPreciosPRUEBARELATION.Value:= '.';
  qrAcuerdoPreciosCLIENTERELATION.Value:= '.';
  qrAcuerdoPreciosRELACION.Value:= '.';
  qrAcuerdoPreciosGASTOVARIOID.Value:= '.';
}
  DM.qrParametro.Close;
  DM.qrParametro.Open;

  qrAcuerdoPreciosClienteCode.Value := 2;
  qrAcuerdoPreciosPruebaCode.Value := 2;
  qrAcuerdoPreciosActivo.Value := 1;
  qrAcuerdoPreciosPctDescuento.Value := 0;
  qrAcuerdoPreciosRelacion.Value := 'D';
  qrAcuerdoPreciosGastosVarios.Value := 0;
  qrAcuerdoPreciosMonedaID.Value := DM.qrParametroMonedaID.Value;
{
  qrAcuerdoPreciosDATAAREAID.value := DM.CurEmpresa;
  qrAcuerdoPreciosRECID.value := DM.qrParametroSecuencia.Value;
  qrAcuerdoPreciosREFRECID.value := DM.qrParametroSecuencia.Value;
}
  DM.qrParametro.Edit;
  DM.qrParametroSecuencia.Value := DM.qrParametroSecuencia.Value + 1;
  DM.qrParametro.Post;
end;

procedure TfrmDatosAcuerdoDescuento.qrAcuerdoPreciosPctDescuentoValidate(
  Sender: TField);
begin
  inherited;
   if (qrAcuerdoPreciosPctDescuento.Value > 100) then
     Raise exception.CreateFmt('El porcentaje no puede ser mayor de 100',[]);
end;

end.
