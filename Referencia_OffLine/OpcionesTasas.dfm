inherited frmOpcionesTasas: TfrmOpcionesTasas
  Left = 383
  Top = 214
  Caption = 'Tasas de Cambio'
  ClientHeight = 361
  ClientWidth = 414
  ExplicitWidth = 430
  ExplicitHeight = 399
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcDatos: TdxLayoutControl
    Width = 414
    Height = 328
    ExplicitWidth = 414
    ExplicitHeight = 328
    object cxGrid1: TcxGrid [0]
      Left = 11
      Top = 11
      Width = 250
      Height = 200
      TabOrder = 0
      object tvTasas: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.PriorPage.Visible = False
        NavigatorButtons.NextPage.Visible = False
        NavigatorButtons.SaveBookmark.Visible = False
        NavigatorButtons.GotoBookmark.Visible = False
        NavigatorButtons.Filter.Visible = False
        DataController.DataSource = dsDatos
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsData.Appending = True
        OptionsView.Navigator = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object tvTasasFecha: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha'
        end
        object tvTasasTasa: TcxGridDBColumn
          DataBinding.FieldName = 'Tasa'
          PropertiesClassName = 'TcxCalcEditProperties'
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = tvTasas
      end
    end
    inherited Group_Root: TdxLayoutGroup
      object lcDatosGroup1: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'New Group'
        ShowCaption = False
        ShowBorder = False
        object lcDatosItem1: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avClient
          Control = cxGrid1
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  inherited pnCaption: TPanel
    Width = 414
    ExplicitWidth = 414
  end
  inherited dsDatos: TDataSource
    AutoEdit = True
    DataSet = qrTasas
    Left = 196
    Top = 103
  end
  object qrTasas: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    OnNewRecord = qrTasasNewRecord
    Parameters = <
      item
        Name = 'pMoneda'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      '   FROM SysTasas'
      'WHERE MonedaID = :pMoneda ')
    Left = 252
    Top = 104
    object qrTasasFecha: TDateField
      FieldName = 'Fecha'
      Origin = 'SysTasas.Fecha'
      Required = True
    end
    object qrTasasMonedaID: TStringField
      FieldName = 'MonedaID'
      Origin = 'SysTasas.MonedaID'
      Required = True
      Size = 3
    end
    object qrTasasTasa: TFloatField
      FieldName = 'Tasa'
      Origin = 'SysTasas.Tasa'
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object qrTasasDATAAREAID: TStringField
      FieldName = 'DATAAREAID'
      Size = 3
    end
    object qrTasasRECID: TLargeintField
      FieldName = 'RECID'
    end
  end
end
