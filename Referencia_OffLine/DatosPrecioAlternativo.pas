unit DatosPrecioAlternativo;

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
  cxGroupBox, cxRadioGroup, DBCtrls, cxImageComboBox, cxSpinEdit, cxintl,
  cxDBLookupComboBox;

type
  TfrmDatosPreciosAlt = class(TfrmDatosModule)
    qrPrecioAlternativo: TADOQuery;
    lcDatosGroup1: TdxLayoutGroup;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    lcDatosItem4: TdxLayoutItem;
    cxDBCheckBox2: TcxDBCheckBox;
    lcDatosItem6: TdxLayoutItem;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    lcDatosItem7: TdxLayoutItem;
    CbTipoPrueba: TcxDBImageComboBox;
    lcDatosTipos: TdxLayoutItem;
    cxDBExtLookupComboBox4: TcxDBExtLookupComboBox;
    lcDatosItem14: TdxLayoutItem;
    qrPrecioAlternativoPruebaID: TStringField;
    qrPrecioAlternativoPrecio: TBCDField;
    qrPrecioAlternativoSucursalId: TStringField;
    qrPrecioAlternativoPrecioDolares: TBCDField;
    qrPrecioAlternativoActivo: TBooleanField;
    qrPrecioAlternativoDataareaid: TStringField;
    tvDatosPruebaID: TcxGridDBColumn;
    tvDatosPrecio: TcxGridDBColumn;
    tvDatosSucursalId: TcxGridDBColumn;
    tvDatosPrecioDolares: TcxGridDBColumn;
    tvDatosActivo: TcxGridDBColumn;
    tvDatosDataareaid: TcxGridDBColumn;
    tvDatosRecid: TcxGridDBColumn;
    tvDatosDescripcion: TcxGridDBColumn;
    qrPrecioAlternativorecid: TLargeintField;
    procedure qrPrecioAlternativoBeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qrPrecioAlternativoAfterPost(DataSet: TDataSet);
    procedure qrPrecioAlternativoAfterScroll(DataSet: TDataSet);
    procedure qrPrecioAlternativoTIPOChange(Sender: TField);
    procedure qrPrecioAlternativoGRUPOPRUEBAIDChange(Sender: TField);
    procedure qrPrecioAlternativoBeforeInsert(DataSet: TDataSet);
    procedure qrPrecioAlternativoNewRecord(DataSet: TDataSet);
    Function  BuscaProximoRecId : Int64;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    Procedure Inicio;
    Procedure Refrescar;
    Procedure Actu_Pruebas;
    { Public declarations }
  end;

var
  frmDatosPreciosAlt: TfrmDatosPreciosAlt;

implementation

uses DataModule, Main;

{$R *.dfm}

procedure TfrmDatosPreciosAlt.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  With DM.qrPruebas, sql do
  begin
    Close;
    Clear;
    Text :='SELECT * FROM PTPrueba Where DataAreaId = '+#39+DM.CurEmpresa+#39
  end;
end;

procedure TfrmDatosPreciosAlt.FormCreate(Sender: TObject);
begin
  inherited;
  With DM.qrPruebas, sql do
  begin
    Close;
    Clear;
    Text :='SELECT * FROM PTPrueba Where Estatus > '+#39+'0'+#39+' And DataAreaId = '+#39+DM.CurEmpresa+#39+' Order by Descripcion ';
    Open;
  end;
end;


procedure TfrmDatosPreciosAlt.qrPrecioAlternativoGRUPOPRUEBAIDChange(Sender: TField);
begin
  inherited;
  Refrescar;
end;

procedure TfrmDatosPreciosAlt.qrPrecioAlternativoNewRecord(DataSet: TDataSet);
Var RecId: Int64;
begin
end;


procedure TfrmDatosPreciosAlt.qrPrecioAlternativoTIPOChange(Sender: TField);
begin
  inherited;
  Refrescar;
end;


procedure TfrmDatosPreciosAlt.qrPrecioAlternativoAfterPost(DataSet: TDataSet);
begin
  inherited;
  qrPrecioAlternativo.Refresh;
end;


procedure TfrmDatosPreciosAlt.qrPrecioAlternativoAfterScroll(DataSet: TDataSet);
begin
  inherited;
  Refrescar;
end;


procedure TfrmDatosPreciosAlt.qrPrecioAlternativoBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  inicio;
end;


procedure TfrmDatosPreciosAlt.qrPrecioAlternativoBeforePost(DataSet: TDataSet);
begin
  inherited;
    If (qrPrecioAlternativo.State = dsInsert) then
    begin
     qrPrecioAlternativoRecid.Value := BuscaProximoRecId;
     qrPrecioAlternativoDataareaid.Value := 'ldr';
     if Trim(qrPrecioAlternativoPrecioDolares.Text) = EmptyStr then
        qrPrecioAlternativoPrecioDolares.Value := 0;
    end;
end;

procedure TfrmDatosPreciosAlt.Refrescar;
begin
end;


procedure TfrmDatosPreciosAlt.Inicio;
begin
  inherited;
end;


procedure TfrmDatosPreciosAlt.Actu_Pruebas;
begin
end;


Function TfrmDatosPreciosAlt.BuscaProximoRecId : Int64;
Var
 qinter  : TAdoQuery;
begin
  qinter := DM.NewQuery;
  qinter.Close;
  qinter.SQL.Text := ' Select isnull(Max(RecId)+1,0) as Recid from ptPrecioAlternativo Order by Recid';
  qinter.Open;
  if (qinter.RecordCount > 0) then
    result := qinter.FieldByName('Recid').Value
  else
    result := 0;
  FreeAndNil(qinter);
End;


END.
