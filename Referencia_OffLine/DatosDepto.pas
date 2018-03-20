unit DatosDepto;

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
  cxGrid, cxPC, JvExControls, JvComponent, JvEnterTab, cxintl;

type
  TfrmDatosDepto = class(TfrmDatosModule)
    qrDepartamento: TADOQuery;
    lcDatosGroup1: TdxLayoutGroup;
    cxDBTextEdit1: TcxDBTextEdit;
    lcDatosItem1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    lcDatosItem2: TdxLayoutItem;
    tvDatosDepid: TcxGridDBColumn;
    tvDatosDescripcion: TcxGridDBColumn;
    qrDepartamentoDEPID: TStringField;
    qrDepartamentoDESCRIPCION: TStringField;
    qrDepartamentoDATAAREAID: TStringField;
    qrDepartamentoRECID: TLargeintField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDatosDepto: TfrmDatosDepto;

implementation

{$R *.dfm}

end.
