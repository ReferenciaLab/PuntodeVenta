object frmProgressModule: TfrmProgressModule
  Left = 430
  Top = 225
  Width = 303
  Height = 181
  Caption = 'Procesando...'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object spTexto: TRzStatusPane
    Left = 8
    Top = 88
    Width = 273
  end
  object pbStatusBar: TRzProgressBar
    Left = 8
    Top = 120
    Width = 273
    BorderOuter = fsFlatRounded
    BorderWidth = 0
    InteriorOffset = 0
    PartsComplete = 0
    Percent = 0
    ShowPercent = False
    TotalParts = 0
  end
  object aviProgress: TAnimate
    Left = 8
    Top = 12
    Width = 272
    Height = 60
    AutoSize = False
    CommonAVI = aviCopyFile
    StopFrame = 20
  end
end
