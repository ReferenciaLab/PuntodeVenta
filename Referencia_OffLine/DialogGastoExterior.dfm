object frmDialogGastoExterior: TfrmDialogGastoExterior
  Left = 0
  Top = 0
  Caption = 'Registrar Gastos de Envio al Exterior'
  ClientHeight = 111
  ClientWidth = 357
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 357
    Height = 111
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmAppActions.lnfWeb
    object BtAceptar: TcxButton
      Left = 209
      Top = 70
      Width = 137
      Height = 27
      Caption = 'Aceptar'
      ModalResult = 1
      TabOrder = 1
      OnClick = BtAceptarClick
    end
    object EdValor: TcxCurrencyEdit
      Left = 137
      Top = 36
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = 'RD$,0.00;(RD$,0.00)'
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 0
      Width = 125
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Group1: TdxLayoutGroup
        Caption = 'Registrar Gastos de Envio al Exterior (RD$)'
        object dxLayoutControl1Item2: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Gastos de Envio (RD$)'
          Control = EdValor
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Group2: TdxLayoutGroup
        AutoAligns = [aaVertical]
        AlignHorz = ahRight
        Caption = 'Botones'
        ShowCaption = False
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Item4: TdxLayoutItem
          Caption = 'cxButton1'
          ShowCaption = False
          Control = BtAceptar
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
end
