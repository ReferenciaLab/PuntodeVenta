unit DatosFormaPago;

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
  JvEnterTab, cxMaskEdit, cxSpinEdit, cxDBEdit, cxContainer, cxTextEdit, cxintl;

type
  TfrmDatosFormaPago = class(TfrmDatosModule)
    qrFormaDePago: TADOQuery;
    qrFormaDePagoFormaDePagoID: TStringField;
    qrFormaDePagoOrden: TIntegerField;
    qrFormaDePagoDescripcion: TStringField;
    tvDatosFormaDePagoID: TcxGridDBColumn;
    tvDatosDescripcion: TcxGridDBColumn;
    lcDatosGroup1: TdxLayoutGroup;
    cxDBTextEdit1: TcxDBTextEdit;
    lcDatosItem1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    lcDatosItem2: TdxLayoutItem;
    cxDBSpinEdit1: TcxDBSpinEdit;
    lcDatosItem3: TdxLayoutItem;
    qrFormaDePagoRECID: TLargeintField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDatosFormaPago: TfrmDatosFormaPago;

implementation

{$R *.dfm}

end.
