unit OpcionesTasas;

interface                   

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OpcionesModule, DB, JvComponent, JvFormPlacement,
  dxLayoutControl, cxControls, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, cxCurrencyEdit, cxCalc, ADODB, Menus, StdActns,
  ActnList, JvExControls, JvEnterTab, ExtCtrls, PymeConst, JvComponentBase,
  cxintl;

type
  TfrmOpcionesTasas = class(TfrmOpcionesModule)
    qrTasas: TADOQuery;
    qrTasasFecha: TDateField;
    qrTasasMonedaID: TStringField;
    qrTasasTasa: TFloatField;
    lcDatosGroup1: TdxLayoutGroup;
    tvTasas: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    lcDatosItem1: TdxLayoutItem;
    tvTasasFecha: TcxGridDBColumn;
    tvTasasTasa: TcxGridDBColumn;
    qrTasasDATAAREAID: TStringField;
    qrTasasRECID: TLargeintField;
    procedure qrTasasNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    CurMoneda : String;
  public
    { Public declarations }
    procedure ShowMoneda( Moneda : String );
    procedure doInmediateEdit; override;
  protected
    procedure RegisterActions; override;  
  end;

var
  frmOpcionesTasas: TfrmOpcionesTasas;

implementation

uses DataModule;

{$R *.dfm}

{ TfrmOpcionesTasas }

procedure TfrmOpcionesTasas.RegisterActions;
begin
  // inherited;
  // Vacio
end;

procedure TfrmOpcionesTasas.ShowMoneda(Moneda: String);
begin
  CurMoneda := Moneda;
  qrTasas.Close;
  qrTasas.Parameters.ParamByName('pMoneda').Value := Moneda;
  qrTasas.Open;
  Caption := STasasDeCambio + Moneda;
  Show;
end;

procedure TfrmOpcionesTasas.qrTasasNewRecord(DataSet: TDataSet);
begin
  inherited;
  qrTasasMonedaID.Text    := CurMoneda;
  qrTasasFecha.Value      := Date;
  qrTasasDataAreaID.Value := 'ldr';
  qrTasasRecID.Value      := dm.Get_Secuencia_Id;
end;

procedure TfrmOpcionesTasas.doInmediateEdit;
begin
  //inherited;

end;

end.
