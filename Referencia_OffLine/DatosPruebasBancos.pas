unit DatosPruebasBancos;

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
  JvEnterTab;

type
  TfrmDatosPruebasBanco = class(TfrmDatosModule)
    qrPruebas: TADOQuery;
    qrPruebasPruebaID: TStringField;
    qrPruebasalias: TStringField;
    qrPruebasDescripcion: TStringField;
    cxButton1: TcxButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    tvDatosPruebaID: TcxGridDBColumn;
    tvDatosalias: TcxGridDBColumn;
    tvDatosDescripcion: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDatosPruebasBanco: TfrmDatosPruebasBanco;

implementation
uses main, DataModule;

{$R *.dfm}

procedure TfrmDatosPruebasBanco.cxButton1Click(Sender: TObject);
begin
  inherited;

  //if (qrPruebas.State = dsInsert) or (qrPruebas.State = dsEdit) then
    frmMain.LanzaVentana(-6000)
  //else
  //Raise exception.CreateFmt('El Mantenimiento NO Esta En Edicion.', []);

end;

procedure TfrmDatosPruebasBanco.FormCreate(Sender: TObject);
begin
  inherited;

  DM.qrPruebasBanco.Close;
  DM.qrPruebasBanco.Open;

end;

end.
