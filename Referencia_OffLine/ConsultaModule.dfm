inherited frmConsultaModule: TfrmConsultaModule
  Left = 391
  Top = 257
  HelpContext = 11000
  Caption = 'Consulta'
  ClientHeight = 378
  ClientWidth = 618
  OldCreateOrder = True
  OnKeyUp = FormKeyUp
  OnShow = FormShow
  ExplicitWidth = 626
  ExplicitHeight = 409
  PixelsPerInch = 96
  TextHeight = 13
  object lcDatos: TdxLayoutControl [1]
    Left = 0
    Top = 33
    Width = 518
    Height = 345
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = True
    ParentFont = False
    TabOrder = 2
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmAppActions.lnfWeb
    object grConsulta: TcxGrid
      Left = 11
      Top = 71
      Width = 548
      Height = 366
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      LookAndFeel.NativeStyle = True
      object tvConsulta: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsDatos
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.ImmediateEditor = False
        OptionsBehavior.IncSearch = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
      end
      object lvConsulta: TcxGridLevel
        GridView = tvConsulta
      end
    end
    object deHasta: TcxDateEdit
      Left = 229
      Top = 36
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 2
      Width = 100
    end
    object deDesde: TcxDateEdit
      Left = 90
      Top = 36
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 1
      Width = 100
    end
    object btBuscar: TcxButton
      Left = 335
      Top = 36
      Width = 75
      Height = 22
      BiDiMode = bdLeftToRight
      Caption = 'Buscar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 3
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000320B0000320B000000010000000100005A6B7300AD7B
        73004A637B00EFBD8400B58C8C00A5948C00C6948C00B59C8C00BD9C8C00F7BD
        8C00BD949400C6949400CE949400C69C9400CEAD9400F7CE9400C6A59C00CEA5
        9C00D6A59C00C6AD9C00CEAD9C00D6AD9C00F7CE9C00F7D69C004A7BA500CEAD
        A500D6B5A500DEBDA500F7D6A500DEBDAD00DEC6AD00E7C6AD00FFDEAD00FFE7
        AD00CEB5B500F7DEB500F7E7B500FFE7B500FFEFB500D6BDBD00DED6BD00E7DE
        BD00FFE7BD006B9CC600EFDEC600FFEFC600FFF7C600F7E7CE00FFF7CE00F7EF
        D600F7F7D600FFF7D600FFFFD6002184DE00F7F7DE00FFFFDE001884E700188C
        E700FFFFE700188CEF00218CEF00B5D6EF00F7F7EF00FFF7EF00FFFFEF00FFFF
        F700FF00FF004AB5FF0052B5FF0052BDFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0042020A424242
        424242424242424242422B39180B42424242424242424242424243443C180B42
        4242424242424242424242444438180B42424242424242424242424244433918
        0A424242424242424242424242444335004201101A114242424242424242453D
        05072F343434291942424242424242221A2D34343437403E0442424242424206
        231C303437404146284242424242421B210F30373A414140310D42424242421F
        20032434373A3A37321342424242421D25030F2D37373737311042424242420D
        2D2D1C162430333429424242424242421E463F0F0316252E0842424242424242
        4227312D21252314424242424242424242420E141B1B42424242}
    end
    object btFechas: TcxButton
      Left = 23
      Top = 36
      Width = 25
      Height = 22
      BiDiMode = bdLeftToRight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
      TabStop = False
      DropDownMenu = pmFechas
      Glyph.Data = {
        66030000424D6603000000000000660200002800000010000000100000000100
        08000000000000010000120B0000120B00008C0000008C00000000000000FFFF
        FF00565599007876CA007873C5007873C3009E9DAF007B75C4006D689300B4B3
        B900736E88005E5B6100BBB9BC00FF00FF008E8C8E00B6B5B600A2A1A2008E88
        880073717100FCFBFB00F5F3F20091898400A8978B005D5A58009A9795008277
        6F0078747100918D8A00A8948300BDB2A900FDF2E900BAA18A00A8938100BCAD
        A000BA977500B99B7E00BBA89600A59B910087817B00C8C0B800D6D0CA008280
        7E0087868500FFFEFD00FDF0E200F3EAE00066605900EDE0D100FCF6EF00F8F2
        EB00FFF2E100F6EBDD006B686400FCF9F500E3E0DC00FFF5E7007E7B7600D1CE
        C900FFFDF900FFFEFB00EDEAE0008D8C88007F7D7300E7E7E300FFFFFD00CCCC
        CB0064656200FEFFFF00E1E2E2008E8F94008E8F950083848A0090919700262F
        A3007880DF007880DE007B83E200303483003F439300646AD200787EDA003B3D
        62006F7191001D23BA002024B3002024B2002024B1002126B2002E317D003A3D
        9400787BD4001D20B500141477002023B1002023B00033338300404296005F61
        BC0037376500383865007779CF0041416300444460004B4B4E00353537007C7C
        7E00CACACC00FEFEFF00FBFBFC00E2E2E300E0E0E100DFDFE000DBDBDC00C6C6
        C700C5C5C600BCBCBD00B9B9BA00B3B3B400ACACAD00A8A8A900A3A3A400A2A2
        A3009F9FA0009A9A9B0082828300FEFEFE00FAFAFA00EDEDED00E9E9E900E2E2
        E200BCBCBC00BBBBBB00B9B9B900A5A5A5009090900079797900616161005B5B
        5B004C4C4C004B4B4B000D0D495B0D8B8926260D0D0D0D0D0D0D0D1961572E78
        7E363918291A170D0D0D0D20075522780101402827332F25340D0D2005552378
        43017A12683837322A0D0D1C04541F7843016A143A682D2C2A0D0D1603552478
        4301757C1068311E2A0D0D156455217843017B6869413B302A0D0D115A561D78
        6B01736868682B352A0D0D0E505609787D808182796F01132A0D0D454B5D0978
        0185837A71726D7D2A0D0D464A5D09780184757677746E012A0D0D484C5E0F78
        0187446C7F8470012A0D0D474F5352060C3E3D3C3F4286012A0D0D0D65584D4E
        59606602080A0B1B880D0D0D0D0D0D8B0D518B620D5F635C0D0D0D0D0D0D0D0D
        8B8B0D0D678A0D0D0D0D}
      Kind = cxbkDropDown
    end
    object Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object lgConsulta: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'Consulta'
        ShowCaption = False
        ShowBorder = False
        object lgParametros: TdxLayoutGroup
          Caption = 'Par'#225'metros'
          Visible = False
          LayoutDirection = ldHorizontal
          object liBtFechas: TdxLayoutItem
            Caption = 'cxButton1'
            ShowCaption = False
            Control = btFechas
            ControlOptions.ShowBorder = False
          end
          object liDeDesde: TdxLayoutItem
            Caption = 'Desde'
            Control = deDesde
            ControlOptions.ShowBorder = False
          end
          object liDeHasta: TdxLayoutItem
            Caption = 'Hasta'
            Control = deHasta
            ControlOptions.ShowBorder = False
          end
          object liBtBuscar: TdxLayoutItem
            Caption = 'New Item'
            ShowCaption = False
            Control = btBuscar
            ControlOptions.ShowBorder = False
          end
        end
        object lcDatosItem1: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avClient
          Control = grConsulta
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object lcBotones: TdxLayoutControl [2]
    Left = 518
    Top = 33
    Width = 100
    Height = 345
    Align = alRight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmAppActions.lnfButtonGroup
    object lcBotonesGroup_Root1: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
    end
  end
  inherited pnCaption: TPanel
    Width = 618
    ExplicitWidth = 618
  end
  object dsDatos: TDataSource [4]
    AutoEdit = False
    Left = 244
    Top = 143
  end
  object cxGridPopupMenu: TcxGridPopupMenu [5]
    Grid = grConsulta
    PopupMenus = <
      item
        HitTypes = [gvhtColumnHeader, gvhtColumnHeaderFilterButton, gvhtFilter, gvhtFooter, gvhtGroupFooter, gvhtGroupByBox, gvhtIndicator, gvhtRowIndicator, gvhtBand, gvhtBandHeader, gvhtRowCaption]
        Index = 0
      end>
    AlwaysFireOnPopup = True
    Left = 98
    Top = 130
  end
  object dxPrintGrid: TdxComponentPrinter [6]
    CurrentLink = dxPrintGridLink
    CustomizeDlgOptions = []
    PreviewOptions.Caption = 'Vista Preeliminar'
    PreviewOptions.VisibleOptions = [pvoPageSetup, pvoPrint, pvoPrintStyles]
    Version = 0
    Left = 260
    Top = 236
    object dxPrintGridLink: TdxGridReportLink
      Active = True
      Component = grConsulta
      PrinterPage.DMPaper = 1
      PrinterPage.Footer = 5080
      PrinterPage.Header = 2540
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 20320
      PrinterPage.PageFooter.Font.Charset = ANSI_CHARSET
      PrinterPage.PageFooter.Font.Color = clWindowText
      PrinterPage.PageFooter.Font.Height = -11
      PrinterPage.PageFooter.Font.Name = 'Trebuchet MS'
      PrinterPage.PageFooter.Font.Style = [fsBold]
      PrinterPage.PageFooter.LeftTitle.Strings = (
        '[Date & Time Printed]')
      PrinterPage.PageFooter.RightTitle.Strings = (
        'P'#225'gina No. [Page #]')
      PrinterPage.PageHeader.Font.Charset = ANSI_CHARSET
      PrinterPage.PageHeader.Font.Color = clWindowText
      PrinterPage.PageHeader.Font.Height = -15
      PrinterPage.PageHeader.Font.Name = 'Trebuchet MS'
      PrinterPage.PageHeader.Font.Style = [fsBold]
      PrinterPage.PageHeader.RightTitle.Strings = (
        '')
      PrinterPage.PageSize.X = 215900
      PrinterPage.PageSize.Y = 279400
      PrinterPage.ScaleMode = smFit
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 42291.642902476850000000
      ReportTitle.Font.Charset = DEFAULT_CHARSET
      ReportTitle.Font.Color = clWindowText
      ReportTitle.Font.Height = -19
      ReportTitle.Font.Name = 'Times New Roman'
      ReportTitle.Font.Style = [fsBold]
      ShrinkToPageWidth = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      OptionsCards.Shadow.Color = clBlack
      OptionsCharts.Transparent = True
      OptionsFormatting.UseNativeStyles = True
      OptionsRefinements.TransparentGraphics = True
      OptionsView.Caption = False
      StyleRepository = cxStyleRepository1
      Styles.BandHeader = cxStyle3
      Styles.Caption = cxStyle2
      Styles.CardCaptionRow = cxStyle9
      Styles.CardRowCaption = cxStyle10
      Styles.Content = cxStyle5
      Styles.ContentEven = cxStyle6
      Styles.ContentOdd = cxStyle7
      Styles.FilterBar = cxStyle11
      Styles.Footer = cxStyle12
      Styles.Group = cxStyle13
      Styles.Header = cxStyle4
      Styles.Preview = cxStyle8
      Styles.Selection = cxStyle14
      BuiltInReportLink = True
    end
  end
  object qryHelper: TADOQuery [7]
    Connection = DM.DataBase
    Parameters = <>
    Left = 472
    Top = 147
  end
  inherited formStorage: TJvFormStorage
    Left = 308
    Top = 150
  end
  inherited pmCustom: TPopupMenu
    Left = 492
    Top = 40
  end
  object SaveDialog: TSaveDialog
    DefaultExt = '*.xls'
    Filter = 'Excel|*.XLS|HTML|*.HTM|XML|*.XML|Texto|*.TXT'
    Options = [ofHideReadOnly, ofCreatePrompt, ofEnableSizing]
    Left = 375
    Top = 150
  end
  object strView: TJvStrHolder
    MacroChar = '|'
    Macros = <>
    Left = 440
    Top = 88
    InternalVer = 1
  end
  object qrDefaultView: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'pUser'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'pForm'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      '   FROM vw_UserDefaultView'
      'WHERE UserID = :pUser'
      '   AND FormName = :pForm')
    Left = 160
    Top = 151
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 140
    Top = 276
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clWindowText
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      TextColor = clWindowText
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      TextColor = clWindowText
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      TextColor = clWindowText
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Trebuchet MS'
      Font.Style = []
      TextColor = clWindowText
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Trebuchet MS'
      Font.Style = []
      TextColor = clWindowText
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Trebuchet MS'
      Font.Style = []
      TextColor = clWindowText
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Trebuchet MS'
      Font.Style = []
      TextColor = clBlue
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Trebuchet MS'
      Font.Style = []
      TextColor = clWindowText
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Trebuchet MS'
      Font.Style = []
      TextColor = clWindowText
    end
    object cxStyle11: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBtnShadow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Trebuchet MS'
      Font.Style = []
      TextColor = clWindowText
    end
    object cxStyle12: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Trebuchet MS'
      Font.Style = []
      TextColor = clWindowText
    end
    object cxStyle13: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      TextColor = clWindowText
    end
    object cxStyle14: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Trebuchet MS'
      Font.Style = []
      TextColor = clWindowText
    end
  end
  object pmFechas: TPopupMenu
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    Left = 40
    Top = 153
    object Hoy1: TMenuItem
      Caption = 'Hoy'
      OnClick = Hoy1Click
    end
    object MesActual1: TMenuItem
      Caption = 'Mes Actual'
      OnClick = MesActual1Click
    end
    object rimestreActual1: TMenuItem
      Caption = 'Trimestre Actual'
      OnClick = rimestreActual1Click
    end
    object AoalaFecha1: TMenuItem
      Caption = 'A'#241'o a la Fecha'
      OnClick = AoalaFecha1Click
    end
    object AlaFecha1: TMenuItem
      Caption = 'A la Fecha'
      OnClick = AlaFecha1Click
    end
  end
  object qrVistas: TABSQuery
    CurrentVersion = '5.04 '
    DatabaseName = 'Laboratorio'
    InMemory = False
    ReadOnly = False
    RequestLive = True
    SQL.Strings = (
      'SELECT *'
      '   FROM SysFormViews'
      'WHERE FormName = :pForm'
      '     AND Tipo = :pTipo')
    Left = 268
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pForm'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pTipo'
        ParamType = ptUnknown
      end>
    object qrVistasTipo: TIntegerField
      FieldName = 'Tipo'
    end
    object qrVistasFormName: TStringField
      FieldName = 'FormName'
      Size = 50
    end
    object qrVistasViewName: TStringField
      FieldName = 'ViewName'
      Size = 30
    end
    object qrVistasSavedView: TMemoField
      FieldName = 'SavedView'
      BlobType = ftMemo
    end
    object qrVistasDefault: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'Default'
      Calculated = True
    end
  end
end
