unit DatosGastosVarios;

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
  cxGrid, cxPC, JvExControls, JvComponent, JvEnterTab, cxCurrencyEdit, cxintl;

type
  TfrmDatosGastosVarios = class(TfrmDatosModule)
    qrGastosVarios: TADOQuery;
    lcDatosGroup1: TdxLayoutGroup;
    EdGastoId: TcxDBTextEdit;
    lcDatosItem1: TdxLayoutItem;
    EdDescripcion: TcxDBTextEdit;
    lcDatosItem2: TdxLayoutItem;
    qrGastosVariosGastoVarioId: TStringField;
    qrGastosVariosDescripcion: TStringField;
    tvDatosGastoVarioId: TcxGridDBColumn;
    tvDatosDescripcion: TcxGridDBColumn;
    lcDatosItem3: TdxLayoutItem;
    EdValor: TcxDBCurrencyEdit;
    qrGastosVariosValor: TBCDField;
    tvDatosValor: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDatosGastosVarios: TfrmDatosGastosVarios;

implementation

{$R *.dfm}

end.
