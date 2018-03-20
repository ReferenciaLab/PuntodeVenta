object frmDialogCobEspecial: TfrmDialogCobEspecial
  Left = 0
  Top = 0
  Caption = 'Cobertura Especial'
  ClientHeight = 133
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
    Height = 133
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmAppActions.lnfWeb
    object cxButton1: TcxButton
      Left = 271
      Top = 97
      Width = 75
      Height = 25
      Caption = 'Aceptar'
      ModalResult = 1
      TabOrder = 2
    end
    object edcoberturavalor: TcxDBCurrencyEdit
      Left = 100
      Top = 36
      DataBinding.DataField = 'CoberturaEspecial'
      DataBinding.DataSource = frmPuntoVenta.dsEntradaPacienteDetalle
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBCheckBox2: TcxDBCheckBox
      Left = 100
      Top = 63
      DataBinding.DataField = 'CoberturaExpPorc'
      DataBinding.DataSource = frmPuntoVenta.dsEntradaPaciente
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Group1: TdxLayoutGroup
        Caption = 'Cobertura Especial'
        object dxLayoutControl1Item6: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Cobertura'
          Control = edcoberturavalor
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item7: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Cobertura en %'
          Control = cxDBCheckBox2
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
      end
    end
  end
end
