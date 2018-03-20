inherited frmDialogEstadoParam: TfrmDialogEstadoParam
  Caption = '<Estado Financiero>'
  ClientHeight = 191
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcDialog: TdxLayoutControl
    Height = 191
    inherited btCancelar: TcxButton
      Top = 155
      TabOrder = 5
    end
    inherited btAceptar: TcxButton
      Top = 155
      TabOrder = 4
    end
    object cePar1: TcxCurrencyEdit [2]
      Left = 85
      Top = 36
      Width = 121
      Height = 21
      Enabled = False
      Properties.Alignment.Horz = taRightJustify
      Style.BorderColor = clBlue
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 0
    end
    object cePar2: TcxCurrencyEdit [3]
      Left = 85
      Top = 63
      Width = 121
      Height = 21
      Enabled = False
      Properties.Alignment.Horz = taRightJustify
      Style.BorderColor = clBlue
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 1
    end
    object cePar3: TcxCurrencyEdit [4]
      Left = 85
      Top = 90
      Width = 121
      Height = 21
      Enabled = False
      Properties.Alignment.Horz = taRightJustify
      Style.BorderColor = clBlue
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 2
    end
    object cePar4: TcxCurrencyEdit [5]
      Left = 85
      Top = 117
      Width = 121
      Height = 21
      Enabled = False
      Properties.Alignment.Horz = taRightJustify
      Style.BorderColor = clBlue
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 3
    end
    inherited lcDialogGroup_Root: TdxLayoutGroup
      inherited lcDialogGroup1: TdxLayoutGroup
        Caption = 'Par'#225'metros del Estado'
        object liPar1: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Par'#225'metro 1'
          Control = cePar1
          ControlOptions.ShowBorder = False
        end
        object liPar2: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Par'#225'metro 2'
          Control = cePar2
          ControlOptions.ShowBorder = False
        end
        object liPar3: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Par'#225'metro 3'
          Control = cePar3
          ControlOptions.ShowBorder = False
        end
        object liPar4: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Par'#225'metro 4'
          Control = cePar4
          ControlOptions.ShowBorder = False
        end
      end
      inherited lcDialogGroup2: TdxLayoutGroup
        inherited liBtAceptar: TdxLayoutItem
          Visible = False
        end
      end
    end
  end
  object qrEstado: TADOQuery
    Connection = DM.DataBase
    Parameters = <
      item
        Name = 'pEstado'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      ' FROM CgEstados'
      'WHERE EstadoID = :pEstado')
    Left = 260
    Top = 64
    object qrEstadoEstadoID: TStringField
      FieldName = 'EstadoID'
      Size = 10
    end
    object qrEstadoDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 30
    end
    object qrEstadoTitulo: TStringField
      FieldName = 'Titulo'
      Size = 50
    end
    object qrEstadoSubTitulo: TStringField
      FieldName = 'SubTitulo'
      Size = 50
    end
    object qrEstadoColumna1: TStringField
      FieldName = 'Columna1'
      Size = 25
    end
    object qrEstadoColumna2: TStringField
      FieldName = 'Columna2'
      Size = 25
    end
    object qrEstadoColumna3: TStringField
      FieldName = 'Columna3'
      Size = 25
    end
    object qrEstadoColumna4: TStringField
      FieldName = 'Columna4'
      Size = 25
    end
    object qrEstadoTipoDeEstado: TSmallintField
      FieldName = 'TipoDeEstado'
    end
  end
end
