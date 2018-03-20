unit ConsultaExplorador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ConsultaModule, JvStringHolder, Menus, StdActns, ActnList,
  JvComponent, JvFormPlacement, DB, ADODB, dxPSCore, dxPScxCommon,
  dxPScxGridLnk, cxGridCustomPopupMenu, cxGridPopupMenu, dxLayoutControl,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  JvExControls, JvEnterTab, cxStyles, ExtCtrls, StdCtrls, cxButtons,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData,
  cxLookAndFeelPainters, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, ABSMain,
  JvComponentBase, cxintl;

type
  TfrmConsultaExplorador = class(TfrmConsultaModule)
    qrConsulta: TADOQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaExplorador: TfrmConsultaExplorador;


implementation

uses DataModule;

{$R *.dfm}

{ TfrmConsultaExplorador }

end.
