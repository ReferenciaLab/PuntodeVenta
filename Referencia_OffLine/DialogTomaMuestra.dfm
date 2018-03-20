inherited frmDialogTomaMuestra: TfrmDialogTomaMuestra
  Caption = 'Procesar la Toma de Muestra.'
  ClientHeight = 107
  ClientWidth = 270
  ExplicitWidth = 276
  ExplicitHeight = 135
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcDialog: TdxLayoutControl
    Width = 270
    Height = 107
    ExplicitWidth = 270
    ExplicitHeight = 107
    inherited btCancelar: TcxButton
      Top = 71
      TabOrder = 2
      ExplicitTop = 71
    end
    inherited btAceptar: TcxButton
      Top = 71
      TabOrder = 1
      ExplicitTop = 71
    end
    object edFactura: TcxTextEdit [2]
      Left = 86
      Top = 36
      Properties.CharCase = ecUpperCase
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    inherited lcDialogGroup_Root: TdxLayoutGroup
      inherited lcDialogGroup1: TdxLayoutGroup
        Caption = 'Muestra No.'
        object lcDialogItem2: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Muestra No.'
          Control = edFactura
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
end
