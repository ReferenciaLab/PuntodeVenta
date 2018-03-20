unit dxTopPanel;

interface

uses
  Windows, Controls, dxBar, ExtCtrls, cxLookAndFeels, cxLookAndFeelPainters,
  dxOffice11, Classes, Graphics, ImgList, Messages;

type
  TdxFrameTopPanel = class(TCustomControl, IcxLookAndFeelNotificationListener)
  private
    FImages: TImageList;
    FImageIndex: Integer;

    procedure DrawOffice11;
    procedure DrawStandard;
    function TextRect: TRect;
    function ImageRect: TRect;
    procedure DrawCaption;
    procedure DrawImage;

    procedure SetImages(Value: TImageList);
    procedure SetImageIndex(Value: Integer);
    procedure WMEraseBkgnd(var Message: TWmEraseBkgnd); message WM_ERASEBKGND;
  protected
    procedure Paint; override;
    // IcxLookAndFeelNotificationListener
    function GetObject: TObject;
    procedure MasterLookAndFeelChanged(Sender: TcxLookAndFeel; AChangedValues: TcxLookAndFeelValues);
    procedure MasterLookAndFeelDestroying(Sender: TcxLookAndFeel);
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;

    property Caption;
    property Font;
    property Images: TImageList read FImages write SetImages;
    property ImageIndex: Integer read FImageIndex write SetImageIndex;
  end;

implementation

{ TdxFrameTopPanel }

constructor TdxFrameTopPanel.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  RootLookAndFeel.AddChangeListener(self);
  dxOffice11.CreateOffice11Colors;
end;

destructor TdxFrameTopPanel.Destroy;
begin
  dxOffice11.ReleaseOffice11Colors;
  RootLookAndFeel.RemoveChangeListener(self);
  inherited Destroy;
end;

procedure TdxFrameTopPanel.SetImages(Value: TImageList);
begin
  if(FImages <> Value) then
  begin
    FImages := Value;
    if(HandleAllocated) then
      Invalidate;
  end;
end;

procedure TdxFrameTopPanel.SetImageIndex(Value: Integer);
begin
  if(FImageIndex <> Value) then
  begin
    FImageIndex := Value;
    if(HandleAllocated) then
      Invalidate;
  end;
end;

procedure TdxFrameTopPanel.DrawOffice11;
begin
  FillGradientRect(Canvas.Handle, ClientRect, dxOffice11NavPaneHeaderColor1, dxOffice11NavPaneHeaderColor2, False);
  FrameRectByColor(Canvas.Handle, ClientRect, dxOffice11NavPaneHeaderColor1);
(*
  FillGradientRect(Canvas.Handle, ClientRect, dxOffice11BarMarkColors1[1], dxOffice11BarMarkColors2[1], False);
  FrameRectByColor(Canvas.Handle, ClientRect, dxOffice11BarMarkColors2[1]);
*)
  //FrameRectByColor(Canvas.Handle, BoundsRect, dxOffice11BarMarkColors2[1]);
  DrawCaption;
  DrawImage;
end;

procedure TdxFrameTopPanel.DrawStandard;
begin
  FillGradientRect(Canvas.Handle, ClientRect, dxOffice11NavPaneHeaderColor1, dxOffice11NavPaneHeaderColor2, False);
  FrameRectByColor(Canvas.Handle, ClientRect, dxOffice11NavPaneHeaderColor1);
  //FillGradientRect(Canvas.Handle, ClientRect, clBtnShadow, clBtnShadow, False);
  //FrameRectByColor(Canvas.Handle, ClientRect, clBlack);
  //FrameRectByColor(Canvas.Handle, BoundsRect, clBlack);
  DrawCaption;
  DrawImage;
end;

function TdxFrameTopPanel.TextRect: TRect;
var
  Y, AHeight: Integer;
  AImageRect: TRect;
begin
  Canvas.Font.Assign(Font);
  AHeight := Canvas.TextHeight(Caption);
  Y := (Height - AHeight) div 2;
  Result := ClientRect;
  Result.Left := 10; Result.Top := Y;
  AImageRect := ImageRect;
  if(AImageRect.Right > AImageRect.Left) then
    Result.Right := AImageRect.Left;
  Dec(Result.Right, 10);
end;

function TdxFrameTopPanel.ImageRect: TRect;
begin
  Result := Rect(0, 0, 0, 0);
  if(Images = nil) or (ImageIndex < 0) then exit;
  Result := ClientRect;
  Result.Top := (ClientHeight - Images.Height) div 2;
  Result.Left := ClientWidth - Images.Width - 10;
end;

procedure TdxFrameTopPanel.DrawCaption;
var
  APrevBkMode: Integer;
  r: TRect;
begin
  r := TextRect;
  if(r.Right > r.Left + 10) then
  begin
    Canvas.Font.Assign(Font);
    APrevBkMode := SetBkMode(Canvas.Handle, TRANSPARENT);
    DrawText(Canvas.Handle, PChar(Caption), Length(Caption), r, DT_END_ELLIPSIS);
    SetBkMode(Canvas.Handle, APrevBkMode);
  end;
end;

procedure TdxFrameTopPanel.DrawImage;
var
  r: TRect;
begin
  if(Images = nil) or (ImageIndex < 0) then exit;
  r := ImageRect;
  Images.Draw(Canvas, r.Left, r.Top, ImageIndex);
end;


function TdxFrameTopPanel.GetObject: TObject;
begin
  Result := self;
end;

procedure TdxFrameTopPanel.MasterLookAndFeelChanged(Sender: TcxLookAndFeel;
  AChangedValues: TcxLookAndFeelValues);
begin
  Invalidate;
end;

procedure TdxFrameTopPanel.MasterLookAndFeelDestroying(Sender: TcxLookAndFeel);
begin
  //TODO
end;

procedure TdxFrameTopPanel.Paint;
begin
   if(RootLookAndFeel.ActiveStyle in [lfsNative, lfsOffice11]) then
     DrawOffice11
   else DrawStandard;
end;

procedure TdxFrameTopPanel.WMEraseBkgnd(var Message: TWmEraseBkgnd);
begin
  Message.Result := 1;
end;

end.
