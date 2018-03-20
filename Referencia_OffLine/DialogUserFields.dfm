inherited frmDialogUserFields: TfrmDialogUserFields
  Caption = 'Campos de Usuario'
  ClientHeight = 269
  ClientWidth = 458
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcDialog: TdxLayoutControl
    Width = 458
    Height = 269
    ExplicitWidth = 458
    ExplicitHeight = 269
    inherited btCancelar: TcxButton
      Top = 233
      OnClick = btCancelarClick
      ExplicitTop = 233
    end
    inherited btAceptar: TcxButton
      Top = 233
      OnClick = btAceptarClick
      ExplicitTop = 233
    end
    inherited lcDialogGroup_Root: TdxLayoutGroup
      inherited lcDialogGroup1: TdxLayoutGroup
        Caption = 'Campos de Usuario'
      end
    end
  end
  object qrTabla: TADOQuery
    Connection = DM.DataBase
    Parameters = <>
    Left = 112
    Top = 28
  end
  object dsTabla: TDataSource
    AutoEdit = False
    DataSet = qrTabla
    Left = 188
    Top = 32
  end
  object qrUserFields: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'pTabla'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      '   FROM SysUserFields'
      'WHERE Tabla = :pTabla;')
    Left = 312
    Top = 40
    object qrUserFieldsTabla: TStringField
      FieldName = 'Tabla'
      Size = 50
    end
    object qrUserFieldsNombre: TStringField
      FieldName = 'Nombre'
    end
    object qrUserFieldsAlias: TStringField
      FieldName = 'Alias'
    end
    object qrUserFieldsTipo: TIntegerField
      FieldName = 'Tipo'
    end
    object qrUserFieldsLongitud: TIntegerField
      FieldName = 'Longitud'
    end
    object qrUserFieldsRequerido: TBooleanField
      FieldName = 'Requerido'
    end
    object qrUserFieldsSecuencia: TIntegerField
      FieldName = 'Secuencia'
    end
  end
end
