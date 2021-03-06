unit DialogImpCobro2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, StdCtrls, cxButtons, cxTextEdit, dxLayoutControl,
  cxContainer, cxMaskEdit, cxDropDownEdit, ADODB,pptypes;

type
  TfrmDialogImpCobro2 = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dbDatos: TcxGridDBTableView;
    lvDatos: TcxGridLevel;
    cgDatos: TcxGrid;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    btcancelar: TcxButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    btaceptar: TcxButton;
    dxLayoutControl1Item6: TdxLayoutItem;
    dsDatos: TDataSource;
    qrCobros: TADOQuery;
    qrCobrosCobroID: TStringField;
    qrCobrosTurnoID: TStringField;
    qrCobrosEntradaID: TStringField;
    qrCobrosSucursalID: TStringField;
    mon: TDateTimeField;
    qrCobrosHora: TStringField;
    qrCobrosPacienteID: TStringField;
    qrCobrosPacientePrincipalID: TStringField;
    qrCobrosUsuarioID: TStringField;
    qrCobrosTotalCobrado: TBCDField;
    qrCobrosTotalFactura: TBCDField;
    qrCobrosTotalPagado: TBCDField;
    qrCobrosPendienteFactura: TBCDField;
    qrCobrosPendienteCobro: TBCDField;
    qrCobrosReciboNo: TStringField;
    qrCobrosClienteID: TStringField;
    qrCobrosAplicado: TBooleanField;
    dbDatosFecha: TcxGridDBColumn;
    dbDatosHora: TcxGridDBColumn;
    dbDatosUsuarioID: TcxGridDBColumn;
    dbDatosTotalCobrado: TcxGridDBColumn;
    dbDatosTotalFactura: TcxGridDBColumn;
    dbDatosTotalPagado: TcxGridDBColumn;
    dbDatosPendienteFactura: TcxGridDBColumn;
    dbDatosPendienteCobro: TcxGridDBColumn;
    dbDatosReciboNo: TcxGridDBColumn;
    qrCobrosMonedaID: TStringField;
    dbDatosColumn1: TcxGridDBColumn;
    qrCobrosTipoDoc: TStringField;
    qrCobrosConcepto: TStringField;
    qrCobrosCUADREGLOBAL: TStringField;
    qrCobrosCUADREUSUARIO: TStringField;
    qrCobrosSecuencia: TAutoIncField;
    qrCobrosSINPRFILTER: TIntegerField;
    qrCobrosRecId: TLargeintField;
    qrCobrosrefRecid: TLargeintField;
    procedure cgDatosExit(Sender: TObject);
    procedure cgDatosEnter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Run(recid : Int64);
  end;

var
  frmDialogImpCobro2: TfrmDialogImpCobro2;
  AdentroGrid : Boolean;

implementation
 uses ActionsDM,DataModule,PuntoVenta,Main;
{$R *.dfm}

procedure TfrmDialogImpCobro2.cgDatosEnter(Sender: TObject);
begin
 AdentroGrid := True;
end;

procedure TfrmDialogImpCobro2.cgDatosExit(Sender: TObject);
begin
 AdentroGrid := False;
end;

procedure TfrmDialogImpCobro2.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = Vk_Down) and (not AdentroGrid) then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);
  if (key = 13) then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);
  if (key = Vk_Up) and (not AdentroGrid) then
     PostMessage(Handle, Wm_NextDlgCtl, 1, 0);
  if (key = 27) then
  begin
   Close;
  end;
end;

procedure TfrmDialogImpCobro2.Run(recid : int64);
begin
 qrCobros.close;
 qrCobros.parameters[0].value := recid;
 qrCobros.open;

 showmodal;
 if ModalResult = mrOk then
   begin
    if qrCobros.RecordCount > 0 then
      begin
        DM.qrCobroTemp.Close;
        DM.qrCobroTemp.Parameters[0].Value := qrCobrosCobroID.Value;
        DM.qrCobroTemp.Open;

        DM.qrCobroDetalle.Close;
        DM.qrCobroDetalle.Parameters[0].Value := qrCobrosCobroID.Value;
        DM.qrCobroDetalle.Open;

        DM.ppImpReciboTemp.DeviceType := dtScreen;
        DM.ppImpReciboTemp.Print;
      end;
   end;
end;


end.

