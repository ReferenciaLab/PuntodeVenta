unit DatosProyectos;

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
  JvEnterTab, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBExtLookupComboBox, cxContainer, cxTextEdit, cxDBEdit, cxintl;

type
  TfrmDatosProyectos = class(TfrmDatosModule)
    qrProyectos: TADOQuery;
    tvDatosProyectoID: TcxGridDBColumn;
    tvDatosDescripcion: TcxGridDBColumn;
    tvDatosClienteID: TcxGridDBColumn;
    lcDatosGroup1: TdxLayoutGroup;
    cxDBTextEdit1: TcxDBTextEdit;
    lcDatosItem1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    lcDatosItem2: TdxLayoutItem;
    cxDBExtLookupComboBox1: TcxDBExtLookupComboBox;
    lcDatosItem3: TdxLayoutItem;
    tvDatosColumn1: TcxGridDBColumn;
    qrProyectosProyectoID: TStringField;
    qrProyectosDescripcion: TStringField;
    qrProyectosClienteID: TStringField;
    qrProyectosEstatus: TIntegerField;
    qrProyectosCodigoAxapta: TStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDatosProyectos: TfrmDatosProyectos;

implementation
uses DataModule;
{$R *.dfm}

procedure TfrmDatosProyectos.FormCreate(Sender: TObject);
begin
  inherited;
  DM.qrClientes.Close;
  DM.qrClientes.Open;
end;

end.
