inherited frmDialogRegistrarDeptoSalida: TfrmDialogRegistrarDeptoSalida
  Caption = 'Registrando las Pruebas (SALIDA).'
  ClientHeight = 338
  ClientWidth = 299
  KeyPreview = True
  OnKeyDown = FormKeyDown
  ExplicitWidth = 305
  ExplicitHeight = 370
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcDialog: TdxLayoutControl
    Width = 299
    Height = 338
    ExplicitWidth = 299
    ExplicitHeight = 338
    inherited btCancelar: TcxButton
      Left = 152
      Top = 302
      Width = 135
      TabOrder = 7
      ExplicitLeft = 152
      ExplicitTop = 302
      ExplicitWidth = 135
    end
    inherited btAceptar: TcxButton
      Top = 302
      Width = 135
      Caption = 'F9 = Aceptar'
      Default = False
      TabOrder = 6
      ExplicitTop = 302
      ExplicitWidth = 135
    end
    object edfecha: TcxDateEdit [2]
      Left = 98
      Top = 240
      TabStop = False
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Color = clAqua
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 4
      Width = 145
    end
    object edhora: TcxTimeEdit [3]
      Left = 98
      Top = 267
      TabStop = False
      EditValue = 0.000000000000000000
      Properties.ReadOnly = True
      Properties.TimeFormat = tfHourMin
      Properties.Use24HourFormat = False
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Color = clAqua
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      TabOrder = 5
      Width = 145
    end
    object EdUsuario: TcxTextEdit [4]
      Left = 98
      Top = 36
      Properties.CharCase = ecUpperCase
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 0
      Width = 145
    end
    object EdClave: TcxTextEdit [5]
      Left = 98
      Top = 63
      Properties.CharCase = ecUpperCase
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 1
      Width = 145
    end
    object CbDepto: TcxExtLookupComboBox [6]
      Left = 98
      Top = 181
      TabStop = False
      RepositoryItem = DM.elcDepartamento
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Color = clAqua
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 3
      Width = 145
    end
    object EdNumero: TcxTextEdit [7]
      Left = 98
      Top = 122
      Properties.CharCase = ecUpperCase
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 2
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
          Caption = 'Clave'
          Control = EdClave
          ControlOptions.ShowBorder = False
        end
      end
      object lcDialogGroup5: TdxLayoutGroup [1]
        Caption = 'Numero de Muestra'
        object lcDialogItem7: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Muestra Num.:'
          Control = EdNumero
          ControlOptions.ShowBorder = False
        end
      end
      object lcDialogGroup4: TdxLayoutGroup [2]
        Caption = 'Departamento'
        object lcDialogItem6: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Departamento'
          Control = CbDepto
          ControlOptions.ShowBorder = False
        end
      end
      inherited lcDialogGroup1: TdxLayoutGroup
        object lcDialogItem2: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Fecha Entrada'
          Control = edfecha
          ControlOptions.ShowBorder = False
        end
        object lcDialogItem3: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Hora Entrada'
          Control = edhora
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
end
