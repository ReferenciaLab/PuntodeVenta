inherited frmDialogEnviarCorreo: TfrmDialogEnviarCorreo
  Left = 417
  Top = 182
  Caption = 'Envio de Correo'
  ClientHeight = 340
  ClientWidth = 517
  OldCreateOrder = True
  ExplicitWidth = 523
  ExplicitHeight = 372
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcDialog: TdxLayoutControl
    Width = 517
    Height = 340
    ExplicitWidth = 517
    ExplicitHeight = 340
    inherited btCancelar: TcxButton
      Top = 304
      TabOrder = 5
      ExplicitTop = 304
    end
    inherited btAceptar: TcxButton
      Top = 304
      Caption = 'Enviar'
      TabOrder = 4
      ExplicitTop = 304
    end
    object edRecipientes: TcxPopupEdit [2]
      Left = 76
      Top = 36
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 0
      Width = 121
    end
    object edConcepto: TcxTextEdit [3]
      Left = 76
      Top = 63
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object rgFormato: TcxRadioGroup [4]
      Left = 23
      Top = 90
      Properties.Columns = 4
      Properties.Items = <
        item
          Caption = 'PDF'
        end
        item
          Caption = 'Excel'
        end
        item
          Caption = 'HTML'
        end
        item
          Caption = 'Documento RTF'
        end>
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      TabOrder = 2
      Height = 39
      Width = 471
    end
    object txtContenido: TcxMemo [5]
      Left = 76
      Top = 135
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 3
      Height = 156
      Width = 418
    end
    inherited lcDialogGroup_Root: TdxLayoutGroup
      inherited lcDialogGroup1: TdxLayoutGroup
        object lcDialogGroup3: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object lcDialogItem1: TdxLayoutItem
            Caption = 'A'
            Control = edRecipientes
            ControlOptions.ShowBorder = False
          end
          object lcDialogItem2: TdxLayoutItem
            Caption = 'Concepto'
            Control = edConcepto
            ControlOptions.ShowBorder = False
          end
          object lcDialogItem3: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Control = rgFormato
            ControlOptions.ShowBorder = False
          end
        end
        object lcDialogItem4: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avClient
          Caption = 'Contenido'
          Control = txtContenido
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object alTo: TActionList
    Left = 316
    Top = 204
    object JvSendMailAction: TJvSendMailAction
      Category = 'JVCL'
      Caption = 'Enviar'
      MailOptions.FindOptions = [foFifo]
      MailOptions.HtmlBody = False
      MailOptions.LogonOptions = [loLogonUI]
    end
  end
end
