unit DatosDiasProcesamiento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DatosModule, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, Menus, cxLookAndFeelPainters, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, cxContainer, cxTextEdit, cxDBEdit,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, ABSMain,
  JvStringHolder, StdActns, ActnList, ADODB, cxGridCustomPopupMenu,
  cxGridPopupMenu, dxPSContainerLnk, dxPSdxLCLnk, dxPSCore, dxPScxCommon,
  dxPScxGridLnk, JvComponentBase, JvFormPlacement, ExtCtrls, dxLayoutControl,
  StdCtrls, cxButtons, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, cxPC, JvExControls, JvComponent, JvEnterTab, cxCheckBox, cxintl;

type
  TfrmDatosDiasProcesamiento = class(TfrmDatosModule)
    qrDiasProcesamiento: TADOQuery;
    tvDatosCondPaciente: TcxGridDBColumn;
    tvDatosDescripcion: TcxGridDBColumn;
    lcDatosGroup1: TdxLayoutGroup;
    cxDBTextEdit1: TcxDBTextEdit;
    lcDatosItem1: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    lcDatosItem2: TdxLayoutItem;
    lcDatosGroup2: TdxLayoutGroup;
    cxDBCheckBox1: TcxDBCheckBox;
    lcDatosItem3: TdxLayoutItem;
    cxDBCheckBox2: TcxDBCheckBox;
    lcDatosItem4: TdxLayoutItem;
    cxDBCheckBox3: TcxDBCheckBox;
    lcDatosItem5: TdxLayoutItem;
    cxDBCheckBox4: TcxDBCheckBox;
    lcDatosItem6: TdxLayoutItem;
    cxDBCheckBox5: TcxDBCheckBox;
    lcDatosItem7: TdxLayoutItem;
    cxDBCheckBox6: TcxDBCheckBox;
    lcDatosItem8: TdxLayoutItem;
    cxDBCheckBox7: TcxDBCheckBox;
    lcDatosItem9: TdxLayoutItem;
    qrDiasProcesamientoCODDIASPROC: TStringField;
    qrDiasProcesamientoDESCRIPCION: TStringField;
    qrDiasProcesamientoLUNES: TIntegerField;
    qrDiasProcesamientoMARTES: TIntegerField;
    qrDiasProcesamientoMIERCOLES: TIntegerField;
    qrDiasProcesamientoJUEVES: TIntegerField;
    qrDiasProcesamientoVIERNES: TIntegerField;
    qrDiasProcesamientoSABADO: TIntegerField;
    qrDiasProcesamientoDOMINGO: TIntegerField;
    qrDiasProcesamientoDATAAREAID: TStringField;
    qrDiasProcesamientoRECID: TLargeintField;
    procedure qrDiasProcesamientoNewRecord(DataSet: TDataSet);
    procedure qrDiasProcesamientoAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDatosDiasProcesamiento: TfrmDatosDiasProcesamiento;

implementation

uses DataModule, Main;

{$R *.dfm}

procedure TfrmDatosDiasProcesamiento.qrDiasProcesamientoAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  qrDiasProcesamientoLunes.Value := 0;
  qrDiasProcesamientoMartes.Value := 0;
  qrDiasProcesamientoMiercoles.Value := 0;
  qrDiasProcesamientoJueves.Value := 0;
  qrDiasProcesamientoViernes.Value := 0;
  qrDiasProcesamientoSabado.Value := 0;
  qrDiasProcesamientoDomingo.Value := 0;
end;

procedure TfrmDatosDiasProcesamiento.qrDiasProcesamientoNewRecord(
  DataSet: TDataSet);
Var
   RecId : Integer;
begin
  inherited;
  DM.qrParametro.Close;
  DM.qrParametro.Open;

  RecId := DM.qrParametroSecuencia.Value;

  DM.qrParametro.Edit;
  DM.qrParametroSecuencia.Value := DM.qrParametroSecuencia.Value + 1;
  DM.qrParametro.Post;

  qrDiasProcesamientoDATAAREAID.Value := DM.CurEmpresa;
  qrDiasProcesamientoRECID.Value := RecId;
end;

end.
