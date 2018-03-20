object frmConfirmarCobertura: TfrmConfirmarCobertura
  Left = 0
  Top = 0
  Caption = 'Confirmaci'#243'n de Cobertura'
  ClientHeight = 217
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
    Height = 217
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmAppActions.lnfWeb
    object cxDBCheckBox1: TcxDBCheckBox
      Left = 100
      Top = 90
      DataBinding.DataField = 'CoberturaConfirmada'
      DataBinding.DataSource = frmPuntoVenta.dsEntradaPaciente
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 100
      Top = 117
      DataBinding.DataField = 'AprobacionNo'
      DataBinding.DataSource = frmPuntoVenta.dsEntradaPaciente
      Properties.CharCase = ecUpperCase
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 3
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 100
      Top = 144
      DataBinding.DataField = 'APROBACIONPOR'
      DataBinding.DataSource = frmPuntoVenta.dsEntradaPaciente
      Properties.CharCase = ecUpperCase
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 4
      Width = 170
    end
    object cxButton1: TcxButton
      Left = 190
      Top = 178
      Width = 75
      Height = 25
      Caption = 'Aceptar'
      ModalResult = 1
      TabOrder = 5
    end
    object cxButton2: TcxButton
      Left = 271
      Top = 178
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      ModalResult = 2
      TabOrder = 6
    end
    object edcoberturavalor: TcxDBCurrencyEdit
      Left = 100
      Top = 36
      DataBinding.DataField = 'CoberturaValor'
      DataBinding.DataSource = frmPuntoVenta.dsEntradaPaciente
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 0
      OnExit = edcoberturavalorExit
      Width = 121
    end
    object cxDBCheckBox2: TcxDBCheckBox
      Left = 100
      Top = 63
      DataBinding.DataField = 'CoberturaExpPorc'
      DataBinding.DataSource = frmPuntoVenta.dsEntradaPaciente
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 1
      OnExit = edcoberturavalorExit
      Width = 121
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Group1: TdxLayoutGroup
        Caption = 'Confirmacion'
        object dxLayoutControl1Item6: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Cobertura'
          Control = edcoberturavalor
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item7: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Cobertura en %'
          Visible = False
          Control = cxDBCheckBox2
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item1: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Confirmada'
          Control = cxDBCheckBox1
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item2: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Aprobacion No'
          Control = cxDBTextEdit1
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item3: TdxLayoutItem
          Caption = 'Aprobada Por'
          Control = cxDBTextEdit2
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
          Control = cxButton1
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item5: TdxLayoutItem
          Caption = 'cxButton2'
          ShowCaption = False
          Control = cxButton2
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
end
