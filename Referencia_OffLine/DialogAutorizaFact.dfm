object frmDialogAutorizacion: TfrmDialogAutorizacion
  Left = 0
  Top = 0
  Caption = 'Autorizaci'#243'n Consulta e Impresi'#243'n'
  ClientHeight = 109
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
    Height = 109
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmAppActions.lnfWeb
    object BtAceptar: TcxButton
      Left = 271
      Top = 70
      Width = 75
      Height = 25
      Caption = 'Aceptar'
      ModalResult = 1
      TabOrder = 1
      OnClick = BtAceptarClick
    end
    object edValor: TcxTextEdit
      Left = 96
      Top = 36
      Properties.CharCase = ecUpperCase
      Properties.EchoMode = eemPassword
      Properties.MaxLength = 20
      Properties.PasswordChar = '*'
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 0
      Width = 237
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Group1: TdxLayoutGroup
        Caption = 'Autorizaci'#243'n'
        object dxLayoutControl1Item1: TdxLayoutItem
          Caption = 'Digite la Clave'
          Control = edValor
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
