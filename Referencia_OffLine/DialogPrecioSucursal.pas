unit DialogPrecioSucursal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DialogModule, Menus, cxLookAndFeelPainters, dxLayoutControl,
  StdCtrls, cxButtons, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxCurrencyEdit, cxDBEdit, DB, ADODB, cxCheckBox, cxintl;

type
  TfrmDialogPrecioSucursal = class(TfrmDialogModule)
    qrPrecioSucursal: TADOQuery;
    dsDatos: TDataSource;
    qrPrecioSucursalPruebaID: TStringField;
    qrPrecioSucursalPrecio: TBCDField;
    qrPrecioSucursalSucursalId: TStringField;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    lcDialogItem1: TdxLayoutItem;
    qrPrecioSucursalPrecioDolares: TBCDField;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    lcDialogItem2: TdxLayoutItem;
    qrPrecioSucursalActivo: TBooleanField;
    cxDBCheckBox1: TcxDBCheckBox;
    lcDialogItem3: TdxLayoutItem;
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure Run(_prueba : string);
  end;

var
  frmDialogPrecioSucursal: TfrmDialogPrecioSucursal;

implementation
 uses DataModule;
{$R *.dfm}

procedure TfrmDialogPrecioSucursal.Run(_prueba: string);
begin
 qrPrecioSucursal.Close;
 qrPrecioSucursal.Parameters[0].Value := _prueba;
 qrPrecioSucursal.Parameters[1].Value := DM.CurSucursal;
 qrPrecioSucursal.Open;

 qrPrecioSucursal.Edit;
 qrPrecioSucursalSucursalId.Value := DM.CurSucursal;
 qrPrecioSucursalPruebaId.Value := _prueba;

 showmodal;

 if (modalResult = mrok) then
     qrPrecioSucursal.Post;
end;


end.
