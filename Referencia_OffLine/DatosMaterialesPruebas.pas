unit DatosMaterialesPruebas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DatosModule, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, Menus, cxLookAndFeelPainters, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, cxContainer, cxTextEdit, cxDBEdit,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, ABSMain,
  JvStringHolder, StdActns, ActnList, ADODB, cxGridCustomPopupMenu,
  cxGridPopupMenu, dxPSContainerLnk, dxPSdxLCLnk, dxPSCore, dxPScxCommon,
  dxPScxGridLnk, JvComponentBase, JvFormPlacement, ExtCtrls, dxLayoutControl,
  StdCtrls, cxButtons, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, cxPC, JvExControls, JvComponent, JvEnterTab, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox;

type
  TfrmDatosMaterialesPruebas = class(TfrmDatosModule)
    qrMaterialesPrueba: TADOQuery;
    tvDatosCondPaciente: TcxGridDBColumn;
    tvDatosDescripcion: TcxGridDBColumn;
    lcDatosGroup1: TdxLayoutGroup;
    cxDBTextEdit2: TcxDBTextEdit;
    lcDatosItem2: TdxLayoutItem;
    qrMaterialesPruebapruebaId: TStringField;
    qrMaterialesPruebaMaterialId: TStringField;
    qrMaterialesPruebacantidad: TBCDField;
    qrMaterialesPruebaDescripcion: TStringField;
    cxDBTextEdit3: TcxDBTextEdit;
    lcDatosItem3: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    lcDatosItem4: TdxLayoutItem;
    tvDatosCantidad: TcxGridDBColumn;
    cxDBExtLookupComboBox1: TcxDBExtLookupComboBox;
    lcDatosItem1: TdxLayoutItem;
    qrMaterialesPruebaMuestraId: TIntegerField;
    procedure qrMaterialesPruebaAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SetPruebaId(_pruebaid : string);
  end;

var
  frmDatosMaterialesPruebas: TfrmDatosMaterialesPruebas;
  pruebaid  : string;

implementation

uses DataModule;

{$R *.dfm}

procedure TfrmDatosMaterialesPruebas.qrMaterialesPruebaAfterInsert(
  DataSet: TDataSet);
begin
  inherited;

  qrMaterialesPruebaPruebaid.Value := pruebaid;
end;

procedure TfrmDatosMaterialesPruebas.SetPruebaId(_pruebaid : string);
begin
 pruebaid := _pruebaid;

 qrMaterialesPrueba.Close;
 qrMaterialesPrueba.Parameters[0].Value := pruebaid;
 qrMaterialesPrueba.Open;
end;

procedure TfrmDatosMaterialesPruebas.FormCreate(Sender: TObject);
begin
  inherited;
  DM.qrMateriales.Close;
  DM.qrMateriales.Open;
end;

end.
