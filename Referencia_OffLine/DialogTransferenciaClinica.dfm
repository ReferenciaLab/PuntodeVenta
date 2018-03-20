inherited frmDialogTransferenciaClinica: TfrmDialogTransferenciaClinica
  Caption = 'Datos Adicionales de la Transferencia'
  ClientHeight = 149
  ClientWidth = 340
  ExplicitWidth = 346
  ExplicitHeight = 181
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcDialog: TdxLayoutControl
    Width = 340
    Height = 149
    ExplicitWidth = 340
    ExplicitHeight = 149
    inherited btCancelar: TcxButton
      Top = 113
      TabOrder = 3
      ExplicitTop = 113
    end
    inherited btAceptar: TcxButton
      Top = 113
      TabOrder = 2
      ExplicitTop = 113
    end
    object edPoliza: TcxTextEdit [2]
      Left = 126
      Top = 63
      Properties.CharCase = ecUpperCase
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 1
      Width = 191
    end
    object CbDoctor: TcxExtLookupComboBox [3]
      Left = 126
      Top = 36
      RepositoryItem = DM.elcDoctores
      Properties.CharCase = ecUpperCase
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 0
      Width = 190
    end
    inherited lcDialogGroup_Root: TdxLayoutGroup
      inherited lcDialogGroup1: TdxLayoutGroup
        Caption = 'Registro No.'
        object lcDialogItem1: TdxLayoutItem
          Caption = 'Doctor Responsable'
          Control = CbDoctor
          ControlOptions.ShowBorder = False
        end
        object lcDialogItem2: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Afiliado o Referencia'
          Control = edPoliza
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  inherited cxIntl1: TcxIntl
    Left = 275
    Top = 113
  end
end
