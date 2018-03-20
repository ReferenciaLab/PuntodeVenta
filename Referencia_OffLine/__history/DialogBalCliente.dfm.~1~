object frmDialogBalCliente: TfrmDialogBalCliente
  Left = 0
  Top = 0
  Caption = 'Balance de Cliente'
  ClientHeight = 268
  ClientWidth = 309
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 309
    Height = 268
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmAppActions.lnfWeb
    object cgDatos: TcxGrid
      Left = 11
      Top = 11
      Width = 637
      Height = 200
      TabOrder = 0
      OnEnter = cgDatosEnter
      OnExit = cgDatosExit
      object dbDatos: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsDatos
        DataController.KeyFieldNames = 'monedaid'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '##,###,##0.00'
            Kind = skSum
            Column = dbDatosValorRD
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnSorting = False
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object dbDatosmonedaid: TcxGridDBColumn
          Caption = 'Moneda'
          DataBinding.FieldName = 'monedaid'
          Width = 68
        end
        object dbDatosValor: TcxGridDBColumn
          DataBinding.FieldName = 'Valor'
          Width = 103
        end
        object dbDatosValorRD: TcxGridDBColumn
          Caption = 'Valor RD$'
          DataBinding.FieldName = 'ValorRD'
          Width = 102
        end
      end
      object lvDatos: TcxGridLevel
        GridView = dbDatos
      end
    end
    object btaceptar: TcxButton
      Left = 223
      Top = 232
      Width = 75
      Height = 25
      Caption = 'Aceptar'
      ModalResult = 1
      TabOrder = 1
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Item4: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'cxGrid1'
        ShowCaption = False
        Control = cgDatos
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl1Group2: TdxLayoutGroup
        AutoAligns = []
        AlignHorz = ahRight
        AlignVert = avBottom
        Caption = 'Botones'
        ShowCaption = False
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Item6: TdxLayoutItem
          Caption = 'cxButton2'
          ShowCaption = False
          Control = btaceptar
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dsDatos: TDataSource
    DataSet = qrBalCliente
    Left = 148
    Top = 56
  end
  object qrBalCliente: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'cli'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'SELECT monedaid, SUM(valor) as Valor, '
      'SUM(valorMST) ValorRD FROM PTClienteTransacciones'
      'WHERE ClienteId = :cli'
      'group by monedaid')
    Left = 88
    Top = 56
    object qrBalClientemonedaid: TStringField
      FieldName = 'monedaid'
      Size = 3
    end
    object qrBalClienteValor: TBCDField
      FieldName = 'Valor'
      ReadOnly = True
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
    object qrBalClienteValorRD: TBCDField
      FieldName = 'ValorRD'
      ReadOnly = True
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
  end
end
