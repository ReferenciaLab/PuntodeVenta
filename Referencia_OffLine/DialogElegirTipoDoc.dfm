inherited frmDialogElegirTipoDoc: TfrmDialogElegirTipoDoc
  Caption = 'Tipo de Formulario a Crear'
  ClientHeight = 137
  ClientWidth = 330
  ExplicitWidth = 336
  ExplicitHeight = 166
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcDialog: TdxLayoutControl
    Width = 330
    Height = 137
    ExplicitWidth = 330
    ExplicitHeight = 201
    inherited btCancelar: TcxButton
      Top = 101
      TabOrder = 2
      ExplicitTop = 101
    end
    inherited btAceptar: TcxButton
      Top = 101
      TabOrder = 1
      ExplicitTop = 101
    end
    object rgTipoDoc: TcxRadioGroup [2]
      Left = 11
      Top = 11
      Caption = 'Seleccione'
      ItemIndex = 0
      Properties.Items = <
        item
          Caption = 'Cooperativa'
          Value = '-100'
        end
        item
          Caption = 'Prestamos'
          Value = '-200'
        end>
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      TabOrder = 0
      Height = 113
      Width = 284
    end
    inherited lcDialogGroup_Root: TdxLayoutGroup
      inherited lcDialogGroup1: TdxLayoutGroup
        Caption = 'Seleccione'
        ShowCaption = False
        ShowBorder = False
        object lcDialogItem1: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avClient
          Caption = 'cxRadioGroup1'
          ShowCaption = False
          Control = rgTipoDoc
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
end
