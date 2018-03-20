object frmDatosClientesParametros2: TfrmDatosClientesParametros2
  Left = 0
  Top = 0
  Caption = 'Parametrizaci'#243'n de Clientes'
  ClientHeight = 163
  ClientWidth = 267
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesigned
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl2: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 267
    Height = 163
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = True
    ParentFont = False
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmAppActions.lnfWeb
    ExplicitWidth = 332
    ExplicitHeight = 511
    object cxDBCheckBox2: TcxDBCheckBox
      Left = 105
      Top = 36
      DataBinding.DataField = 'SiempreInternet'
      DataBinding.DataSource = frmDatosClientes.dsDatos
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBCheckBox12: TcxDBCheckBox
      Left = 105
      Top = 63
      DataBinding.DataField = 'SiempreImprimir'
      DataBinding.DataSource = frmDatosClientes.dsDatos
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object cxDBCheckBox13: TcxDBCheckBox
      Left = 105
      Top = 90
      DataBinding.DataField = 'EnviarFax'
      DataBinding.DataSource = frmDatosClientes.dsDatos
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object cxButton1: TcxButton
      Left = 71
      Top = 124
      Width = 125
      Height = 25
      Caption = 'Aceptar'
      ModalResult = 1
      TabOrder = 3
    end
    object dxLayoutGroup3: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object LgSeguros: TdxLayoutGroup
        AutoAligns = []
        Caption = 'Parametros Generales de Pacientes'
        object dxLayoutControl2Item5: TdxLayoutItem
          Caption = 'Siempre Internet'
          Control = cxDBCheckBox2
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl2Item6: TdxLayoutItem
          Caption = 'Siempre Imprimir'
          Control = cxDBCheckBox12
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl2Item7: TdxLayoutItem
          Caption = 'Enviar Fax'
          Control = cxDBCheckBox13
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl2Item11: TdxLayoutItem
        AutoAligns = [aaVertical]
        AlignHorz = ahCenter
        Caption = 'cxButton1'
        ShowCaption = False
        Control = cxButton1
        ControlOptions.ShowBorder = False
      end
    end
  end
end
