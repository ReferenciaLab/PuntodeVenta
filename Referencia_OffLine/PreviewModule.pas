unit PreviewModule;
                                       
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomModule, JvComponent, JvFormPlacement, ExtCtrls, ppViewr,
  dxBar, dxBarExtItems, Menus, StdActns, ActnList, JvExControls, JvEnterTab;

type
  TfrmPreviewModule = class(TfrmCustomModule)
    ppViewer: TppViewer;
    dxBarManager: TdxBarManager;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    edPageNo: TdxBarEdit;
    sePageNo: TdxBarSpinEdit;
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure sePageNoCurChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPreviewModule: TfrmPreviewModule;

implementation

uses ppTypes, Math;

{$R *.dfm}

procedure TfrmPreviewModule.dxBarButton1Click(Sender: TObject);
begin
  inherited;
  ppViewer.Print;
end;

procedure TfrmPreviewModule.dxBarButton2Click(Sender: TObject);
begin
  inherited;
  ppViewer.ZoomSetting := zsWholePage;
end;

procedure TfrmPreviewModule.dxBarButton3Click(Sender: TObject);
begin
  inherited;
  ppViewer.ZoomSetting := zsPageWidth;
end;

procedure TfrmPreviewModule.dxBarButton4Click(Sender: TObject);
begin
  inherited;
  ppViewer.ZoomSetting := zs100Percent;
end;

procedure TfrmPreviewModule.dxBarButton5Click(Sender: TObject);
begin
  inherited;
  ppViewer.ZoomPercentage := Max( ppViewer.ZoomPercentage + 10, 100 );
end;

procedure TfrmPreviewModule.dxBarButton6Click(Sender: TObject);
begin
  inherited;
  ppViewer.ZoomPercentage := Min( ppViewer.ZoomPercentage - 10, 30 );
end;

procedure TfrmPreviewModule.dxBarButton7Click(Sender: TObject);
begin
  inherited;
  ppViewer.FirstPage;
end;

procedure TfrmPreviewModule.dxBarButton8Click(Sender: TObject);
begin
  inherited;
  ppViewer.PriorPage;
end;

procedure TfrmPreviewModule.dxBarButton9Click(Sender: TObject);
begin
  inherited;
  ppViewer.NextPage;
end;

procedure TfrmPreviewModule.dxBarButton10Click(Sender: TObject);
begin
  inherited;
  ppViewer.LastPage;
end;

procedure TfrmPreviewModule.sePageNoCurChange(Sender: TObject);
begin
  inherited;
  ppViewer.GotoPage( sePageNo.IntCurValue );
end;

end.
