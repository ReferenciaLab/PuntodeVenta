inherited frmDialogAutorizaFacturaPend: TfrmDialogAutorizaFacturaPend
  Caption = 'Autoriza Factura Pendiente.'
  ClientHeight = 143
  ClientWidth = 303
  KeyPreview = True
  OnKeyDown = FormKeyDown
  ExplicitWidth = 309
  ExplicitHeight = 175
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcDialog: TdxLayoutControl
    Width = 303
    Height = 143
    FocusOnClick = False
    ParentBackground = False
    AutoControlAlignment = False
    AutoControlTabOrders = False
    ExplicitWidth = 303
    ExplicitHeight = 143
    inherited btCancelar: TcxButton
      Left = 152
      Top = 107
      Width = 135
      TabOrder = 3
      ExplicitLeft = 152
      ExplicitTop = 107
      ExplicitWidth = 135
    end
    inherited btAceptar: TcxButton
      Top = 107
      Width = 135
      Caption = 'F9 = Aceptar'
      Default = False
      TabOrder = 2
      ExplicitTop = 107
      ExplicitWidth = 135
    end
    object EdUsuario: TcxTextEdit [2]
      Left = 64
      Top = 36
      Properties.CharCase = ecUpperCase
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 0
      Width = 145
    end
    object EdClave: TcxTextEdit [3]
      Left = 64
      Top = 63
      Properties.CharCase = ecUpperCase
      Properties.EchoMode = eemPassword
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 1
      Width = 145
    end
    inherited lcDialogGroup_Root: TdxLayoutGroup
      object lcDialogGroup3: TdxLayoutGroup [0]
        Caption = 'Usuario y Clave'
        object lcDialogItem4: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Usuario'
          Control = EdUsuario
          ControlOptions.ShowBorder = False
        end
        object lcDialogItem5: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Clave   '
          Control = EdClave
          ControlOptions.ShowBorder = False
        end
      end
      inherited lcDialogGroup1: TdxLayoutGroup
        Caption = ''
        ShowCaption = False
        Visible = False
        ShowBorder = False
        UseIndent = False
      end
    end
  end
end
