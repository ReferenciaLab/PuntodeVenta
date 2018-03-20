inherited frmDialogDescUsuarioOld: TfrmDialogDescUsuarioOld
  Caption = 'Descuentos Permitidos al Usuario'
  ClientHeight = 107
  ClientWidth = 270
  ExplicitWidth = 276
  ExplicitHeight = 139
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
    object eddescuento: TcxCurrencyEdit [2]
      Left = 91
      Top = 36
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    inherited lcDialogGroup_Root: TdxLayoutGroup
      inherited lcDialogGroup1: TdxLayoutGroup
        Caption = 'Descuento'
        object lcDialogItem1: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Descuento %'
          Control = eddescuento
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
end
