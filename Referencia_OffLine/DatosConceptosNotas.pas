unit DatosConceptosNotas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DatosModule, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, Menus, cxLookAndFeelPainters, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, ABSMain, JvStringHolder, StdActns, ActnList, ADODB,
  cxGridCustomPopupMenu, cxGridPopupMenu, dxPSContainerLnk, dxPSdxLCLnk,
  dxPSCore, dxPScxCommon, dxPScxGridLnk, JvComponentBase, JvFormPlacement,
  ExtCtrls, dxLayoutControl, StdCtrls, cxButtons, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxPC, JvExControls, JvComponent,
  JvEnterTab, cxContainer, cxTextEdit, cxDBEdit, cxintl;

type
  TfrmDatosConceptosNotas = class(TfrmDatosModule)
    qrConceptoNotas: TADOQuery;
    tvDatosConceptoId: TcxGridDBColumn;
    tvDatosDescripcion: TcxGridDBColumn;
    lcDatosGroup1: TdxLayoutGroup;
    cxDBTextEdit1: TcxDBTextEdit;
    lcDatosItem1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    lcDatosItem2: TdxLayoutItem;
    qrConceptoNotasConceptoId: TStringField;
    qrConceptoNotasDescripcion: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDatosConceptosNotas: TfrmDatosConceptosNotas;

implementation

uses DataModule;

{$R *.dfm}

end.
