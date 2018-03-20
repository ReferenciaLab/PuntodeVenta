unit InformeModule;

interface                                  

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ConsultaModule, cxStyles, JvStringHolder, Menus, StdActns,
  ActnList, JvComponent, JvFormPlacement, DB, ADODB, dxPSCore,
  dxPScxCommon, dxPScxGridLnk, cxGridCustomPopupMenu, cxGridPopupMenu,
  JvSpeedButton, StdCtrls, RzLabel, RzBckgnd, ExtCtrls, dxLayoutControl,
  cxButtons, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  JvExControls, JvEnterTab, cxMemo, cxRichEdit, cxGraphics, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxDBData, cxLookAndFeelPainters, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, ABSMain, JvComponentBase;

type
  TfrmInformeModule = class(TfrmConsultaModule)
    qrConsulta: TADOQuery;
    cxStyle15: TcxStyle;
    reHeader: TcxRichEdit;
    lcDatosItem2: TdxLayoutItem;
    procedure tvConsultaCustomDrawColumnHeader(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
      var ADone: Boolean);
    procedure qrConsultaAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SetCaption( Titulo : String );
  end;

var
  frmInformeModule: TfrmInformeModule;

implementation

uses DataModule, Main, ActionsDM;

{$R *.dfm}

{ TfrmInformeModule }

procedure TfrmInformeModule.SetCaption(Titulo: String);
var
  I : Integer;
begin
  Caption := titulo;
  reHeader.Lines.Clear;
  reHeader.SelAttributes.Name := tvConsulta.Styles.ContentEven.Font.Name;
  reHeader.SelAttributes.Size := 12;
  reHeader.SelAttributes.Style := [fsBold];
  reHeader.SelAttributes.Color := clBlue;
  reHeader.Lines.Add(DM.TituloEmpresa);
  reHeader.SelAttributes.Size := 10;
  reHeader.SelAttributes.Style := [];
  reHeader.SelAttributes.Color := clBlack;
  reHeader.Lines.Add(titulo);
  for I := 0 to frmMain.tsVentanas.AdvTabs.Count - 1 do begin
    if frmMain.tsVentanas.AdvTabs.Items[i].AObject = Self then begin
      frmMain.tsVentanas.AdvTabs.Items[i].Caption := Caption;
      break;
    end;
  end;
end;

procedure TfrmInformeModule.tvConsultaCustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  inherited;
  //
end;

procedure TfrmInformeModule.qrConsultaAfterOpen(DataSet: TDataSet);
begin
  inherited;
  tvConsulta.DataController.Groups.FullExpand;
end;

end.
