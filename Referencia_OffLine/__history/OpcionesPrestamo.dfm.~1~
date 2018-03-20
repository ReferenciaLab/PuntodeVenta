inherited frmOpcionesPrestamo: TfrmOpcionesPrestamo
  Caption = 'Opciones Prestamos'
  ExplicitHeight = 399
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcDatos: TdxLayoutControl
    object cxDBImageComboBox1: TcxDBImageComboBox [0]
      Left = 171
      Top = 36
      DataBinding.DataField = 'PeriodoPago'
      DataBinding.DataSource = dsDatos
      Properties.Items = <
        item
          Description = 'Diario'
          ImageIndex = 0
          Value = 'D'
        end
        item
          Description = 'Semanal'
          Value = 'S'
        end
        item
          Description = 'Quincenal'
          Value = 'Q'
        end
        item
          Description = 'Mensual'
          Value = 'M'
        end>
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 0
      Width = 121
    end
    object cxDBImageComboBox2: TcxDBImageComboBox [1]
      Left = 171
      Top = 63
      DataBinding.DataField = 'TipoCalculo'
      DataBinding.DataSource = dsDatos
      Properties.Items = <
        item
          Description = 'Simple'
          ImageIndex = 0
          Value = 'S'
        end
        item
          Description = 'Compuesto'
          Value = 'C'
        end>
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 1
      Width = 121
    end
    object cxDBCalcEdit1: TcxDBCalcEdit [2]
      Left = 171
      Top = 90
      DataBinding.DataField = 'TasaMora'
      DataBinding.DataSource = dsDatos
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 2
      Width = 121
    end
    object cxDBSpinEdit1: TcxDBSpinEdit [3]
      Left = 171
      Top = 176
      DataBinding.DataField = 'UltSolicitud'
      DataBinding.DataSource = dsDatos
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      TabOrder = 4
      Width = 121
    end
    object cxDBSpinEdit2: TcxDBSpinEdit [4]
      Left = 171
      Top = 203
      DataBinding.DataField = 'UltPrestamo'
      DataBinding.DataSource = dsDatos
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      TabOrder = 5
      Width = 121
    end
    object cxDBSpinEdit3: TcxDBSpinEdit [5]
      Left = 171
      Top = 230
      DataBinding.DataField = 'UltRecibo'
      DataBinding.DataSource = dsDatos
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      TabOrder = 6
      Width = 121
    end
    object cxDBSpinEdit4: TcxDBSpinEdit [6]
      Left = 171
      Top = 257
      DataBinding.DataField = 'UltNotaCredito'
      DataBinding.DataSource = dsDatos
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      TabOrder = 7
      Width = 121
    end
    object cxDBSpinEdit5: TcxDBSpinEdit [7]
      Left = 171
      Top = 284
      DataBinding.DataField = 'UltNotaDebito'
      DataBinding.DataSource = dsDatos
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      TabOrder = 8
      Width = 121
    end
    object cxDBSpinEdit6: TcxDBSpinEdit [8]
      Left = 171
      Top = 117
      DataBinding.DataField = 'DiasGracia'
      DataBinding.DataSource = dsDatos
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      TabOrder = 3
      Width = 121
    end
    inherited Group_Root: TdxLayoutGroup
      object lcDatosGroup1: TdxLayoutGroup
        Caption = 'Valores por Defecto'
        object lcDatosItem1: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Periodo de Pago'
          Control = cxDBImageComboBox1
          ControlOptions.ShowBorder = False
        end
        object lcDatosItem2: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Tipo de Calculo'
          Control = cxDBImageComboBox2
          ControlOptions.ShowBorder = False
        end
        object lcDatosItem3: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Mora'
          Control = cxDBCalcEdit1
          ControlOptions.ShowBorder = False
        end
        object lcDatosItem9: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Dias de Gracia'
          Control = cxDBSpinEdit6
          ControlOptions.ShowBorder = False
        end
      end
      object lcDatosGroup2: TdxLayoutGroup
        Caption = 'Secuencias'
        object lcDatosItem4: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Ultima Solicitud'
          Control = cxDBSpinEdit1
          ControlOptions.ShowBorder = False
        end
        object lcDatosItem5: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Ultimo Prestamo'
          Control = cxDBSpinEdit2
          ControlOptions.ShowBorder = False
        end
        object lcDatosItem6: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Ultimo Recibo'
          Control = cxDBSpinEdit3
          ControlOptions.ShowBorder = False
        end
        object lcDatosItem7: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Ultima Nota de Credito'
          Control = cxDBSpinEdit4
          ControlOptions.ShowBorder = False
        end
        object lcDatosItem8: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Ultima Cancelacion de Recibo'
          Control = cxDBSpinEdit5
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  inherited dsDatos: TDataSource
    DataSet = qrPreParametros
  end
  object qrPreParametros: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      '    FROM CoopPreParametros')
    Left = 338
    Top = 68
    object qrPreParametrosPeriodoPago: TStringField
      FieldName = 'PeriodoPago'
      FixedChar = True
      Size = 1
    end
    object qrPreParametrosTipoCalculo: TStringField
      FieldName = 'TipoCalculo'
      FixedChar = True
      Size = 1
    end
    object qrPreParametrosTasaMora: TBCDField
      FieldName = 'TasaMora'
      Precision = 19
    end
    object qrPreParametrosUltSolicitud: TIntegerField
      FieldName = 'UltSolicitud'
    end
    object qrPreParametrosUltPrestamo: TIntegerField
      FieldName = 'UltPrestamo'
    end
    object qrPreParametrosUltRecibo: TIntegerField
      FieldName = 'UltRecibo'
    end
    object qrPreParametrosUltNotaDebito: TIntegerField
      FieldName = 'UltNotaDebito'
    end
    object qrPreParametrosUltNotaCredito: TIntegerField
      FieldName = 'UltNotaCredito'
    end
    object qrPreParametrosDiasGracia: TIntegerField
      FieldName = 'DiasGracia'
    end
  end
end
