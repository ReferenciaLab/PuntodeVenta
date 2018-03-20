unit DatosTarjetasCliente;

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
  cxintl;

type
  TfrmDatosTarjetasCliente = class(TfrmDatosModule)
    qrTarjetaCliente: TADOQuery;
    lcDatosGroup1: TdxLayoutGroup;
    EdCliente: TcxDBTextEdit;
    lcDatosItem10: TdxLayoutItem;
    EdTarjetaNumero: TcxDBTextEdit;
    lcDatosItem3: TdxLayoutItem;
    qrTarjetaClienteClienteId: TStringField;
    qrTarjetaClienteTarjetaID: TStringField;
    qrTarjetaClienteTarjetaNumero: TStringField;
    qrTarjetaClientePuntosTotal: TIntegerField;
    qrTarjetaClientePuntosUsados: TIntegerField;
    qrTarjetaClienteFechaLimite: TDateTimeField;
    EdTarjeta: TcxDBExtLookupComboBox;
    lcDatosItem2: TdxLayoutItem;
    tvDatosClienteId: TcxGridDBColumn;
    tvDatosTarjetaID: TcxGridDBColumn;
    tvDatosTarjetaNumero: TcxGridDBColumn;
    procedure qrTarjetaClienteAfterPost(DataSet: TDataSet);
    procedure qrTarjetaClienteNewRecord(DataSet: TDataSet);
    procedure qrTarjetaClienteBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    clienteId : String;

    procedure BuscarData(cliente: string);
    { Public declarations }
  end;

var
  frmDatosTarjetasCliente: TfrmDatosTarjetasCliente;

implementation

uses DataModule, Main;

{$R *.dfm}

procedure TfrmDatosTarjetasCliente.FormCreate(Sender: TObject);
begin
  inherited;
   DM.qrTarjetasDesc.Close;
   DM.qrTarjetasDesc.Open;
   EdCliente.Properties.ReadOnly := True;
end;

procedure TfrmDatosTarjetasCliente.qrTarjetaClienteAfterPost(DataSet: TDataSet);
begin
  inherited;
  qrTarjetaCliente.Refresh;
end;

procedure TfrmDatosTarjetasCliente.qrTarjetaClienteBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (qrTarjetaCliente.State = dsInsert) Or
     (qrTarjetaCliente.State = dsEdit) Then
   qrTarjetaClienteClienteID.Value := clienteId;
end;

procedure TfrmDatosTarjetasCliente.qrTarjetaClienteNewRecord(DataSet: TDataSet);
begin
  inherited;
  qrTarjetaClienteClienteID.Value := clienteId;
end;


procedure TfrmDatosTarjetasCliente.BuscarData(cliente: string);
begin
 qrTarjetaCliente.Close;
 qrTarjetaCliente.Parameters[0].Value := cliente;
 qrTarjetaCliente.Open;
 clienteId                            := cliente;
end;

end.

