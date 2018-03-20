object DMReports: TDMReports
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 550
  Width = 953
  object ppDesigner: TppDesigner
    Caption = 'Dise'#241'ador de Reportes'
    DataSettings.DatabaseName = 'DataBase'
    DataSettings.SessionType = 'ADOSession'
    DataSettings.AllowEditSQL = True
    DataSettings.CollationType = ctANSI
    DataSettings.DatabaseType = dtMSSQLServer
    DataSettings.DataDictionary = ppDataDictionary
    DataSettings.GuidCollationType = gcString
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqSQL2
    Position = poScreenCenter
    Report = ppReport
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 344
    Top = 20
  end
  object ppReport: TppReport
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.DatabaseSettings.DataPipeline = plReport
    Template.DatabaseSettings.NameField = 'Name'
    Template.DatabaseSettings.TemplateField = 'SqlText'
    Template.SaveTo = stDatabase
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.Enabled = True
    EmailSettings.PreviewInEmailClient = False
    EmailSettings.ShowEmailDialog = True
    ModalPreview = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    TextSearchSettings.DefaultString = '<EncontrarTexto>'
    TextSearchSettings.Enabled = True
    Left = 420
    Top = 16
    Version = '10.04'
    mmColumnWidth = 0
    object ppHeaderBand7: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 24077
      mmPrintPosition = 0
      object ppVariable10: TppVariable
        UserName = 'Variable10'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        BlankWhenZero = False
        CalcOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Name = 'Tahoma'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5080
        mmLeft = 1323
        mmTop = 2646
        mmWidth = 143669
        BandType = 0
      end
      object ppLabel89: TppLabel
        UserName = 'Label89'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Name = 'Tahoma'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5334
        mmLeft = 1323
        mmTop = 9525
        mmWidth = 143669
        BandType = 0
      end
      object ppLine38: TppLine
        UserName = 'Line38'
        Anchors = [atLeft, atBottom]
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Color = clTeal
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 529
        mmTop = 22489
        mmWidth = 202407
        BandType = 0
      end
    end
    object ppDetailBand6: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
    end
    object ppFooterBand7: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
      object ppSystemVariable15: TppSystemVariable
        UserName = 'SystemVariable15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 1323
        mmTop = 794
        mmWidth = 43656
        BandType = 8
      end
      object ppSystemVariable16: TppSystemVariable
        UserName = 'SystemVariable16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 182659
        mmTop = 529
        mmWidth = 19219
        BandType = 8
      end
      object ppLine39: TppLine
        UserName = 'Line39'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 529
        mmTop = 0
        mmWidth = 202407
        BandType = 8
      end
    end
    object raCodeModule8: TraCodeModule
      ProgramStream = {
        01060F5472614576656E7448616E646C65720B50726F6772616D4E616D650610
        5661726961626C6531304F6E43616C630B50726F6772616D54797065070B7474
        50726F63656475726506536F75726365066D70726F6365647572652056617269
        61626C6531304F6E43616C63287661722056616C75653A2056617269616E7429
        3B0D0A626567696E0D0A0D0A202056616C7565203A3D205265706F72742E5061
        72616D65746572735B277265705469746C65275D3B0D0A0D0A656E643B0D0A0D
        436F6D706F6E656E744E616D65060A5661726961626C653130094576656E744E
        616D6506064F6E43616C63074576656E74494402210000}
    end
    object ppParameterList8: TppParameterList
      object repTitle: TppParameter
        DataType = dtString
        Value = 'Compa'#241'ia ABC'
      end
      object repSubTitle: TppParameter
        DataType = dtString
        Value = 'Compa'#241'ia ABC'
      end
      object repParameter1: TppParameter
        DataType = dtString
        Value = ''
      end
      object repParameter2: TppParameter
        DataType = dtString
        Value = ''
      end
      object repParameter3: TppParameter
        DataType = dtString
        Value = ''
      end
    end
  end
  object ppDataDictionary: TppDataDictionary
    AllowManualJoins = True
    AutoJoin = True
    BuilderSettings.DatabaseName = 'DataBase'
    BuilderSettings.SessionType = 'ADOSession'
    FieldFieldNames.AutoSearch = 'AutoSearch'
    FieldFieldNames.DataType = 'DataType'
    FieldFieldNames.FieldName = 'FieldName'
    FieldFieldNames.FieldAlias = 'FieldAlias'
    FieldFieldNames.Mandatory = 'Mandatory'
    FieldFieldNames.Searchable = 'Searchable'
    FieldFieldNames.Selectable = 'Selectable'
    FieldFieldNames.Sortable = 'Sortable'
    FieldFieldNames.TableName = 'TableName'
    FieldPipeline = plRbFields
    JoinFieldNames.TableName1 = 'TableName1'
    JoinFieldNames.TableName2 = 'TableName2'
    JoinFieldNames.JoinType = 'JoinType'
    JoinFieldNames.FieldNames1 = 'FieldNames1'
    JoinFieldNames.FieldNames2 = 'FieldNames2'
    JoinFieldNames.Operators = 'Operators'
    JoinPipeline = plRbJoin
    TableFieldNames.TableName = 'TableName'
    TableFieldNames.TableAlias = 'TableAlias'
    TablePipeline = plRbTables
    UserName = 'DataDictionary'
    Left = 616
    Top = 184
  end
  object dsRbTables: TDataSource
    AutoEdit = False
    DataSet = taRbTables
    Left = 108
    Top = 28
  end
  object dsRbFields: TDataSource
    AutoEdit = False
    DataSet = taRbFields
    Left = 92
    Top = 84
  end
  object dsRbJoin: TDataSource
    AutoEdit = False
    DataSet = taRbJoin
    Left = 244
    Top = 80
  end
  object plRbTables: TppDBPipeline
    DataSource = dsRbTables
    UserName = 'plRbTables'
    Left = 156
    Top = 28
  end
  object plRbFields: TppDBPipeline
    DataSource = dsRbFields
    UserName = 'plRbFields'
    Left = 52
    Top = 84
  end
  object plRbJoin: TppDBPipeline
    DataSource = dsRbJoin
    UserName = 'plRbJoin'
    Left = 196
    Top = 80
  end
  object taRbTables: TABSTable
    CurrentVersion = '5.04 '
    DatabaseName = 'PymeCoop'
    InMemory = False
    ReadOnly = False
    IndexName = 'rbTable0'
    TableName = 'SysRbTable'
    Exclusive = False
    Left = 212
    Top = 32
  end
  object taRbFields: TABSTable
    CurrentVersion = '5.04 '
    DatabaseName = 'PymeCoop'
    InMemory = False
    ReadOnly = False
    IndexName = 'rbField0'
    TableName = 'SysRbField'
    Exclusive = False
    Left = 48
    Top = 32
  end
  object taRbJoin: TABSTable
    CurrentVersion = '5.04 '
    DatabaseName = 'PymeCoop'
    InMemory = False
    ReadOnly = False
    TableName = 'SysRbJoin'
    Exclusive = False
    Left = 156
    Top = 80
  end
  object dsReport: TDataSource
    DataSet = tblReport
    Left = 536
    Top = 8
  end
  object plReport: TppDBPipeline
    DataSource = dsReport
    UserName = 'plReport'
    Left = 276
    Top = 16
  end
  object tblReport: TABSTable
    CurrentVersion = '5.04 '
    DatabaseName = 'PymeCoop'
    InMemory = False
    ReadOnly = False
    Filter = 'ItemType = 1'
    Filtered = True
    OnNewRecord = tblReportNewRecord
    StoreDefs = True
    IndexDefs = <
      item
        Name = 'PK_SysRbItem'
        Fields = 'ItemId;FolderId'
        Options = [ixUnique]
      end
      item
        Name = 'ixFolderIdItemTypeName'
        Fields = 'FolderId;ItemType;Name'
      end>
    IndexFieldNames = 'FolderId'
    FieldDefs = <
      item
        Name = 'ItemId'
        DataType = ftAutoInc
      end
      item
        Name = 'FolderId'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'Name'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Size'
        DataType = ftInteger
      end
      item
        Name = 'ItemType'
        DataType = ftInteger
      end
      item
        Name = 'Modified'
        DataType = ftDateTime
      end
      item
        Name = 'Deleted'
        DataType = ftDateTime
      end
      item
        Name = 'ReportName'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'SqlText'
        DataType = ftMemo
      end>
    TableName = 'SysRbItem'
    Exclusive = False
    MasterFields = 'FolderId'
    Left = 476
    Top = 8
    object tblReportItemId: TAutoIncField
      FieldName = 'ItemId'
    end
    object tblReportFolderId: TIntegerField
      FieldName = 'FolderId'
      Required = True
    end
    object tblReportName: TStringField
      FieldName = 'Name'
      Size = 60
    end
    object tblReportSize: TIntegerField
      FieldName = 'Size'
    end
    object tblReportItemType: TIntegerField
      FieldName = 'ItemType'
    end
    object tblReportModified: TDateTimeField
      FieldName = 'Modified'
    end
    object tblReportDeleted: TDateTimeField
      FieldName = 'Deleted'
    end
    object tblReportReportName: TStringField
      FieldName = 'ReportName'
      Size = 150
    end
    object tblReportSqlText: TMemoField
      FieldName = 'SqlText'
      BlobType = ftMemo
    end
  end
  object ExtraOptions: TExtraOptions
    About = 'TExtraDevices 2.6'
    HTML.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    HTML.BackLink = '&lt&lt'
    HTML.ForwardLink = '&gt&gt'
    HTML.ShowLinks = True
    HTML.UseTextFileName = False
    HTML.ZoomableImages = False
    HTML.Visible = True
    HTML.PixelFormat = pf8bit
    HTML.SingleFileOutput = False
    XHTML.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    XHTML.BackLink = '&lt&lt'
    XHTML.ForwardLink = '&gt&gt'
    XHTML.ShowLinks = True
    XHTML.UseTextFileName = False
    XHTML.ZoomableImages = False
    XHTML.Visible = True
    XHTML.PixelFormat = pf8bit
    XHTML.SingleFileOutput = False
    RTF.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    RTF.Visible = True
    RTF.RichTextAsImage = False
    RTF.UseTextBox = True
    Lotus.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    Lotus.Visible = True
    Lotus.ColSpacing = 16934
    Quattro.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    Quattro.Visible = False
    Quattro.ColSpacing = 16934
    Excel.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    Excel.Visible = True
    Excel.ColSpacing = 16934
    Excel.RowSizing = False
    Excel.AutoConvertToNumber = True
    Graphic.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    Graphic.PixelFormat = pf8bit
    Graphic.UseTextFileName = False
    Graphic.Visible = True
    Graphic.PixelsPerInch = 96
    Graphic.GrayScale = False
    PDF.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    PDF.FastCompression = False
    PDF.CompressImages = True
    PDF.ScaleImages = True
    PDF.Visible = False
    PDF.RichTextAsImage = False
    PDF.PixelFormat = pf24bit
    PDF.PixelsPerInch = 96
    PDF.Permissions = [ppPrint, ppModify, ppCopy, ppModifyAnnot]
    PDF.AutoEmbedFonts = True
    DotMatrix.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    DotMatrix.Visible = True
    DotMatrix.CharsPerInch = cs10CPI
    DotMatrix.LinesPerInch = ls6LPI
    DotMatrix.Port = 'LPT1'
    DotMatrix.ContinousPaper = False
    Left = 472
    Top = 228
  end
end
