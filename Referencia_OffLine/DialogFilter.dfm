inherited frmDialogFilter: TfrmDialogFilter
  Left = 644
  Top = 67
  Caption = 'Condici'#243'n de Filtro'
  ClientHeight = 307
  ClientWidth = 531
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcDialog: TdxLayoutControl
    Width = 531
    Height = 307
    inherited btCancelar: TcxButton
      Top = 271
      TabOrder = 2
    end
    inherited btAceptar: TcxButton
      Top = 271
      TabOrder = 1
    end
    object dbFilterControl: TcxDBFilterControl [2]
      Left = 11
      Top = 11
      Width = 300
      Height = 200
      Items = <>
      TabOrder = 0
      TabStop = True
    end
    inherited lcDialogGroup_Root: TdxLayoutGroup
      inherited lcDialogGroup1: TdxLayoutGroup
        ShowCaption = False
        ShowBorder = False
        object lcDialogItem3: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avClient
          Control = dbFilterControl
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
end
