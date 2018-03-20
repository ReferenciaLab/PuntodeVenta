unit DatosGrupoClientesFac;

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
  JvEnterTab, cxContainer, cxTextEdit, cxDBEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxDropDownEdit, cxImageComboBox, cxCheckBox,
  cxCurrencyEdit, cxMaskEdit, cxSpinEdit, cxMemo, cxintl, cxDBExtLookupComboBox;

type
  TfrmDatosGrupoClientesFac = class(TfrmDatosModule)
    qrGrupoClientes: TADOQuery;
    lcDatosGroup1: TdxLayoutGroup;
    cxDBTextEdit1: TcxDBTextEdit;
    lcDatosItem1: TdxLayoutItem;
    qrGrupoClientesClienteID: TStringField;
    qrGrupoClientesGrupoID: TStringField;
    qrGrupoClientesPeriodo: TStringField;
    qrGrupoClientesEstatus: TStringField;
    qrGrupoClientesGrupoIDFac: TStringField;
    cxDBComboBox1: TcxDBComboBox;
    lcGridItem1: TdxLayoutItem;
    lcDatosItem3: TdxLayoutItem;
    lcDatosItem5: TdxLayoutItem;
    lcDatosGroup2: TdxLayoutGroup;
    lcDatosItem2: TdxLayoutItem;
    lcDatosGroup3: TdxLayoutGroup;
    lcDatosItem4: TdxLayoutItem;
    lcDatosGroup4: TdxLayoutGroup;
    CbClienteID: TcxDBExtLookupComboBox;
    CbGrupoID: TcxDBExtLookupComboBox;
    cboPeriodo: TcxDBComboBox;
    cboEstatus: TcxDBComboBox;
    tvDatosClienteID: TcxGridDBColumn;
    tvDatosGrupoID: TcxGridDBColumn;
    tvDatosPeriodo: TcxGridDBColumn;
    tvDatosEstatus: TcxGridDBColumn;
    tvDatosGrupoIDFac: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDatosGrupoClientesFac: TfrmDatosGrupoClientesFac;

implementation

uses DataModule;

{$R *.dfm}

end.
