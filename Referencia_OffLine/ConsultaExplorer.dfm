inherited frmConsultaExplorer: TfrmConsultaExplorer
  Left = 429
  Top = 208
  Caption = 'Explorador de Consultas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcDatos: TdxLayoutControl
    object cxGrid1: TcxGrid [0]
      Left = 303
      Top = 36
      Width = 250
      Height = 200
      TabOrder = 2
      object tvResult: TcxGridDBTableView
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        NavigatorButtons.ConfirmDelete = False
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = tvResult
      end
    end
    object rmButton: TRzMenuButton [1]
      Left = 23
      Top = 36
      Width = 170
      Caption = '< M'#243'dulo >'
      Color = 15791348
      HighlightColor = 16026986
      HotTrack = True
      HotTrackColor = 3983359
      TabOrder = 0
      TextStyle = tsRecessed
      DropDownMenu = pmModulo
    end
    object cxGrid2: TcxGrid [2]
      Left = 23
      Top = 67
      Width = 250
      Height = 200
      TabOrder = 1
      object tvQuerires: TcxGridDBTableView
        DataController.DataSource = dsDatos
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        NavigatorButtons.ConfirmDelete = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object tvQueriresName: TcxGridDBColumn
          DataBinding.FieldName = 'Name'
        end
      end
      object cxGrid2Level1: TcxGridLevel
        GridView = tvQuerires
      end
    end
    inherited Group_Root: TdxLayoutGroup
      LayoutDirection = ldHorizontal
      object lcDatosGroup1: TdxLayoutGroup
        Caption = 'Consultas'
        object lcDatosItem2: TdxLayoutItem
          Caption = 'RzMenuButton1'
          ShowCaption = False
          Control = rmButton
          ControlOptions.ShowBorder = False
        end
        object lcDatosItem3: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avClient
          Control = cxGrid2
          ControlOptions.ShowBorder = False
        end
      end
      object lcDatosGroup2: TdxLayoutGroup
        AutoAligns = [aaVertical]
        AlignHorz = ahClient
        Caption = 'Resultado'
        object lcDatosItem1: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avClient
          Control = cxGrid1
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  inherited pmCustom: TPopupMenu
    Left = 328
    Top = 92
  end
  inherited dsDatos: TDataSource
    DataSet = qrQueries
  end
  object qrQueries: TADOQuery
    Active = True
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      '  FROM SysQueries')
    Left = 248
    Top = 120
  end
  object pmModulo: TPopupMenu
    Left = 152
    Top = 92
    object miContabilidad: TMenuItem
      Caption = 'Contabilidad'
      Checked = True
      GroupIndex = 10
      RadioItem = True
      OnClick = miModuloClick
    end
    object miBanco: TMenuItem
      Caption = 'Banco'
      GroupIndex = 10
      RadioItem = True
      OnClick = miModuloClick
    end
    object miCxc: TMenuItem
      Caption = 'Cuentas por Cobrar'
      GroupIndex = 10
      RadioItem = True
      OnClick = miModuloClick
    end
    object miCxp: TMenuItem
      Caption = 'Cuentas por Pagar'
      GroupIndex = 10
      RadioItem = True
      OnClick = miModuloClick
    end
  end
  object dsResult: TDataSource
    Left = 480
    Top = 168
  end
  object qrResult: TADOQuery
    Connection = DM.DataBase
    Parameters = <>
    Left = 464
    Top = 112
  end
end
