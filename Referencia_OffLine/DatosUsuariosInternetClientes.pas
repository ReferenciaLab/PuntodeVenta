unit DatosUsuariosInternetClientes;

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
  JvEnterTab, cxCheckBox, cxDBEdit, cxCurrencyEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox, cxContainer, cxTextEdit,
  cxImageComboBox, cxintl;

type
  TfrmDatosUsuariosInternetClientes = class(TfrmDatosModule)
    qrUsuariosInternet: TADOQuery;
    lcDatosGroup1: TdxLayoutGroup;
    lcDatosItem1: TdxLayoutItem;
    EdNombre: TcxDBTextEdit;
    lcDatosItem2: TdxLayoutItem;
    EdClienteId: TcxDBTextEdit;
    lcDatosItem10: TdxLayoutItem;
    CbTipo: TcxDBImageComboBox;
    lcDatosItem5: TdxLayoutItem;
    qrUsuariosInternetUsuarioInternet: TStringField;
    qrUsuariosInternetClaveInternet: TStringField;
    qrUsuariosInternetNombre: TStringField;
    qrUsuariosInternetIdentificacion: TStringField;
    qrUsuariosInternetClienteId: TStringField;
    qrUsuariosInternetTipo: TStringField;
    qrUsuariosInternetActualizado: TStringField;
    EdUserId: TcxDBTextEdit;
    lcDatosItem3: TdxLayoutItem;
    EdCedula: TcxDBTextEdit;
    lcDatosItem4: TdxLayoutItem;
    EdClave: TcxDBTextEdit;
    tvDatosClienteId: TcxGridDBColumn;
    tvDatosUsuarioInternet: TcxGridDBColumn;
    tvDatosClaveInternet: TcxGridDBColumn;
    tvDatosNombre: TcxGridDBColumn;
    tvDatosIdentificacion: TcxGridDBColumn;
    tvDatosTipo: TcxGridDBColumn;
    qrUsuariosInternetDATAAREAID: TStringField;
    qrUsuariosInternetRECID: TLargeintField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    Procedure BuscarData(codigo: string);
    { Public declarations }
  end;

var
  frmDatosUsuariosInternetClientes: TfrmDatosUsuariosInternetClientes;

implementation

uses DataModule, Main;

{$R *.dfm}

procedure TfrmDatosUsuariosInternetClientes.BuscarData(codigo: string);
begin
 qrUsuariosInternet.Close;
 qrUsuariosInternet.Parameters[0].Value := codigo;
 qrUsuariosInternet.Open;
end;

procedure TfrmDatosUsuariosInternetClientes.FormCreate(Sender: TObject);
begin
  inherited;
  EdClienteId.Properties.ReadOnly := True;
  EdNombre.Properties.ReadOnly := True;
  EdUserId.Properties.ReadOnly := True;
//  EdCedula.Properties.ReadOnly := True;
  EdClave.Properties.ReadOnly := True;
  CbTipo.Properties.ReadOnly := True;
//  CbEstatus.Properties.ReadOnly := True;
end;

end.

