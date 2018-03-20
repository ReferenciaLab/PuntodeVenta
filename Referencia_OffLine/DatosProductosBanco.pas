unit DatosProductosBanco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DatosModule, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, Menus, cxLookAndFeelPainters, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxContainer, cxTextEdit, cxDBEdit, ABSMain, JvStringHolder,
  StdActns, ActnList, ADODB, cxGridCustomPopupMenu, cxGridPopupMenu,
  dxPSContainerLnk, dxPSdxLCLnk, dxPSCore, dxPScxCommon, dxPScxGridLnk,
  JvComponentBase, JvFormPlacement, ExtCtrls, dxLayoutControl, StdCtrls,
  cxButtons, cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid, cxPC,
  JvExControls, JvComponent, JvEnterTab;

type
  TfrmDatosBSProductos = class(TfrmDatosModule)
    qrProductos: TADOQuery;
    qrProductosProductoID: TWideStringField;
    qrProductosProductoDes: TWideStringField;
    lcDatosGroup1: TdxLayoutGroup;
    cxDBTextEdit1: TcxDBTextEdit;
    lcGridItem1: TdxLayoutItem;
    lcDatosItem1: TdxLayoutItem;
    lcDatosItem2: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    lcGridItem2: TdxLayoutItem;
    tvDatosProductoID: TcxGridDBColumn;
    tvDatosProductoDes: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDatosBSProductos: TfrmDatosBSProductos;

implementation

{$R *.dfm}

end.
