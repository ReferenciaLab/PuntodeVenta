unit ConsultaExplorer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OpcionesModule, DB, Menus, StdActns, ActnList, JvComponent,
  JvFormPlacement, dxLayoutControl, cxControls, JvExControls, JvEnterTab,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, ADODB, StdCtrls, RzLstBox,
  RzDBList, RzButton;

type
  TfrmConsultaExplorer = class(TfrmOpcionesModule)
    lcDatosGroup1: TdxLayoutGroup;
    lcDatosGroup2: TdxLayoutGroup;
    tvResult: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    lcDatosItem1: TdxLayoutItem;
    rmButton: TRzMenuButton;
    lcDatosItem2: TdxLayoutItem;
    qrQueries: TADOQuery;
    pmModulo: TPopupMenu;
    miContabilidad: TMenuItem;
    miBanco: TMenuItem;
    miCxc: TMenuItem;
    miCxp: TMenuItem;
    tvQuerires: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    lcDatosItem3: TdxLayoutItem;
    tvQueriresName: TcxGridDBColumn;
    dsResult: TDataSource;
    qrResult: TADOQuery;
    procedure FormCreate(Sender: TObject);
    procedure miModuloClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaExplorer: TfrmConsultaExplorer;

implementation

uses DataModule;

{$R *.dfm}

procedure TfrmConsultaExplorer.FormCreate(Sender: TObject);
begin
  inherited;
  rmButton.Caption := 'Contabilidad';
  miContabilidad.Checked := True;
  qrQueries.Close;
  qrQueries.Open;
end;

procedure TfrmConsultaExplorer.miModuloClick(Sender: TObject);
begin
  inherited;
  ( Sender as TMenuItem ).Checked := True;
  rmButton.Caption := ( Sender as TMenuItem ).Caption;
end;

end.
