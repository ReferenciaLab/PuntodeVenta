inherited frmDialogPrecioSucursal: TfrmDialogPrecioSucursal
  Caption = 'Precio Sucursal'
  ClientHeight = 168
  ClientWidth = 253
  ExplicitWidth = 259
  ExplicitHeight = 200
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcDialog: TdxLayoutControl
    Width = 253
    Height = 168
    ExplicitWidth = 253
    ExplicitHeight = 168
    inherited btCancelar: TcxButton
      Top = 132
      TabOrder = 4
      ExplicitTop = 132
    end
    inherited btAceptar: TcxButton
      Top = 132
      TabOrder = 3
      ExplicitTop = 132
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit [2]
      Left = 83
      Top = 36
      DataBinding.DataField = 'Precio'
      DataBinding.DataSource = dsDatos
      Properties.DisplayFormat = '0.00;(0.00)'
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit [3]
      Left = 83
      Top = 63
      DataBinding.DataField = 'PrecioDolares'
      DataBinding.DataSource = dsDatos
      Properties.DisplayFormat = '0.00;(0.00)'
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object cxDBCheckBox1: TcxDBCheckBox [4]
      Left = 83
      Top = 90
      DataBinding.DataField = 'Activo'
      DataBinding.DataSource = dsDatos
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    inherited lcDialogGroup_Root: TdxLayoutGroup
      inherited lcDialogGroup1: TdxLayoutGroup
        object lcDialogItem1: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Precio RD$'
          Control = cxDBCurrencyEdit1
          ControlOptions.ShowBorder = False
        end
        object lcDialogItem2: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Precio US$'
          Control = cxDBCurrencyEdit2
          ControlOptions.ShowBorder = False
        end
        object lcDialogItem3: TdxLayoutItem
          Caption = 'Activo'
          Control = cxDBCheckBox1
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object qrPrecioSucursal: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'pru'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'suc'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'Select *  from PTPrecioAlternativo'
      'Where PruebaId = :pru'
      '    and SucursalId = :suc')
    Left = 128
    Top = 88
    object qrPrecioSucursalPruebaID: TStringField
      FieldName = 'PruebaID'
    end
    object qrPrecioSucursalPrecio: TBCDField
      FieldName = 'Precio'
      Precision = 19
    end
    object qrPrecioSucursalSucursalId: TStringField
      FieldName = 'SucursalId'
      Size = 10
    end
    object qrPrecioSucursalPrecioDolares: TBCDField
      FieldName = 'PrecioDolares'
      Precision = 19
    end
    object qrPrecioSucursalActivo: TBooleanField
      FieldName = 'Activo'
    end
  end
  object dsDatos: TDataSource
    AutoEdit = False
    DataSet = qrPrecioSucursal
    Left = 180
    Top = 87
  end
end
