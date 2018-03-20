unit DatosMoneda;
                                     
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DatosModule, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, cxGridCustomPopupMenu, cxGridPopupMenu,
  dxPSContainerLnk, dxPSdxLCLnk, dxPSCore, dxPScxGridLnk, JvComponent,
  JvFormPlacement, dxLayoutControl, {dxCore,}  cxMRUEdit,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxDBEdit, ADODB, cxCalc,
  cxLookAndFeelPainters, StdCtrls, cxButtons, dxPScxCommon, JvStringHolder,
  Menus, StdActns, ActnList, JvExControls, JvEnterTab, ExtCtrls, ABSMain,
  JvComponentBase;

type
  TfrmDatosMoneda = class(TfrmDatosModule)
    qrMonedas: TADOQuery;
    tvDatosMoneadaID: TcxGridDBColumn;
    tvDatosDescripcion: TcxGridDBColumn;
    tvDatosSimbolo: TcxGridDBColumn;
    tvDatosCuentaBeneficio: TcxGridDBColumn;
    tvDatosCuentaPerdida: TcxGridDBColumn;
    lcDatosGroup1: TdxLayoutGroup;
    cxDBTextEdit1: TcxDBTextEdit;
    lcDatosItem1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    lcDatosItem2: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    lcDatosItem3: TdxLayoutItem;
    btTasas: TcxButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    qrMonedasMoneadaID: TStringField;
    qrMonedasDescripcion: TStringField;
    qrMonedasSimbolo: TStringField;
    qrMonedasCuentaBeneficio: TStringField;
    qrMonedasCuentaPerdida: TStringField;
    procedure btTasasClick(Sender: TObject);
    procedure dsDatosStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDatosMoneda: TfrmDatosMoneda;

implementation

uses OpcionesTasas, Main, OpcionesModule, DataModule;

{$R *.dfm}

procedure TfrmDatosMoneda.btTasasClick(Sender: TObject);
var
  frm: TCustomForm;
begin
  inherited;
  try
    LockWindowUpdate(frmMain.Handle);
    With frmMain do begin
      frm := TfrmOpcionesTasas.Create(Self);
      TfrmOpcionesTasas(frm).ShowMoneda( qrMonedasMoneadaID.Text );
      ShowForm(frm);
    end;
  finally
    LockWindowUpdate(0);
  end;
end;

procedure TfrmDatosMoneda.dsDatosStateChange(Sender: TObject);
begin
  inherited;
  btTasas.Enabled := ( ( not qrMonedas.IsEmpty ) and ( qrMonedas.State = dsBrowse ) );
end;



end.
