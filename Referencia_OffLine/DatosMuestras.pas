unit DatosMuestras;

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
  TfrmDatosMuestras = class(TfrmDatosModule)
    qrMuestras: TADOQuery;
    lcDatosGroup1: TdxLayoutGroup;
    cxDBTextEdit1: TcxDBTextEdit;
    lcDatosItem1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    lcDatosItem2: TdxLayoutItem;
    qrMuestrasDescripcion: TStringField;
    qrMuestrasCodigoAxapta: TStringField;
    tvDatosTipoID: TcxGridDBColumn;
    tvDatosDescripcion: TcxGridDBColumn;
    qrMuestrasTIPOID: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDatosMuestras: TfrmDatosMuestras;

implementation

{$R *.dfm}

end.
