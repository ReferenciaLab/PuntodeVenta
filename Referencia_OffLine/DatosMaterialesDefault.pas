unit DatosMaterialesDefault;

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
  TfrmDatosMaterialesDefault = class(TfrmDatosModule)
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
    cxDBTextEdit4: TcxDBTextEdit;
    lcDatosItem4: TdxLayoutItem;
    tvDatosColumn1: TcxGridDBColumn;
    cxDBExtLookupComboBox1: TcxDBExtLookupComboBox;
    lcDatosItem1: TdxLayoutItem;
    cxDBExtLookupComboBox2: TcxDBExtLookupComboBox;
    lcDatosItem3: TdxLayoutItem;
    qrMaterialesPruebaMuestraId: TIntegerField;
    procedure qrMaterialesPruebaAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  frmDatosMaterialesDefault: TfrmDatosMaterialesDefault;
  pruebaid  : string;

implementation
 uses DataModule;
{$R *.dfm}

procedure TfrmDatosMaterialesDefault.qrMaterialesPruebaAfterInsert(
  DataSet: TDataSet);
begin
  inherited;

  qrMaterialesPruebaPruebaid.Value := pruebaid;
end;



procedure TfrmDatosMaterialesDefault.FormCreate(Sender: TObject);
begin
  inherited;
  pruebaid := 'Default';

  qrMaterialesPrueba.Close;
  qrMaterialesPrueba.Parameters[0].Value := pruebaid;
  qrMaterialesPrueba.Open;

  DM.qrMateriales.Close;
  DM.qrMateriales.Open;

  DM.qrMuestras.Close;
  DM.qrMuestras.Open;
end;

end.
