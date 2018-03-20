object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Imporataci'#243'n Reportes a Diccionario'
  ClientHeight = 228
  ClientWidth = 403
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lblEstatus: TLabel
    Left = 8
    Top = 56
    Width = 108
    Height = 13
    Caption = 'Listo para procesar....'
  end
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 389
    Height = 25
    Caption = 'Importar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object ListBox1: TListBox
    Left = 8
    Top = 84
    Width = 389
    Height = 138
    ItemHeight = 13
    TabOrder = 1
  end
  object XPManifest1: TXPManifest
    Left = 348
    Top = 12
  end
  object taReportes: TABSTable
    CurrentVersion = '5.04 '
    DatabaseName = 'Database'
    InMemory = False
    ReadOnly = False
    IndexFieldNames = 'ItemId;FolderId'
    TableName = 'SysRbItem'
    Exclusive = False
    Left = 236
    Top = 24
    object taReportesFolderId: TIntegerField
      FieldName = 'FolderId'
      Required = True
    end
    object taReportesName: TStringField
      FieldName = 'Name'
      Size = 60
    end
    object taReportesSize: TIntegerField
      FieldName = 'Size'
    end
    object taReportesItemType: TIntegerField
      FieldName = 'ItemType'
    end
    object taReportesModified: TDateTimeField
      FieldName = 'Modified'
    end
    object taReportesDeleted: TDateTimeField
      FieldName = 'Deleted'
    end
    object taReportesReportName: TStringField
      FieldName = 'ReportName'
      Size = 150
    end
    object taReportesSqlText: TMemoField
      FieldName = 'SqlText'
      BlobType = ftMemo
    end
    object taReportesItemId: TAutoIncField
      FieldName = 'ItemId'
    end
  end
  object DataBase: TABSDatabase
    CurrentVersion = '5.04 '
    DatabaseFileName = 'C:\MyProjects\Pyme2006\ApplShare\PymeAccounting.abs'
    DatabaseName = 'Database'
    Exclusive = False
    Password = 'pymesol2171'
    MaxConnections = 500
    MultiUser = False
    SessionName = 'Default'
    Left = 136
    Top = 12
  end
  object ppReport: TppReport
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
    Template.DatabaseSettings.DataPipeline = ppReprotes
    Template.DatabaseSettings.NameField = 'Name'
    Template.DatabaseSettings.TemplateField = 'SqlText'
    Template.SaveTo = stDatabase
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<EncontrarTexto>'
    TextSearchSettings.Enabled = True
    Left = 324
    Top = 112
    Version = '10.0'
    mmColumnWidth = 0
  end
  object dsReportes: TDataSource
    DataSet = taReporteUpd
    Left = 212
    Top = 132
  end
  object ppReprotes: TppDBPipeline
    DataSource = dsReportes
    UserName = 'Reprotes'
    Left = 48
    Top = 132
    object ppReprotesppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'FolderId'
      FieldName = 'FolderId'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object ppReprotesppField2: TppField
      FieldAlias = 'Name'
      FieldName = 'Name'
      FieldLength = 60
      DisplayWidth = 60
      Position = 1
    end
    object ppReprotesppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'Size'
      FieldName = 'Size'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object ppReprotesppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'ItemType'
      FieldName = 'ItemType'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object ppReprotesppField5: TppField
      FieldAlias = 'Modified'
      FieldName = 'Modified'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 4
    end
    object ppReprotesppField6: TppField
      FieldAlias = 'Deleted'
      FieldName = 'Deleted'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 5
    end
    object ppReprotesppField7: TppField
      FieldAlias = 'ReportName'
      FieldName = 'ReportName'
      FieldLength = 150
      DisplayWidth = 150
      Position = 6
    end
    object ppReprotesppField8: TppField
      FieldAlias = 'SqlText'
      FieldName = 'SqlText'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppReprotesppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'ItemId'
      FieldName = 'ItemId'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 8
    end
  end
  object taReporteUpd: TABSTable
    CurrentVersion = '5.04 '
    DatabaseName = 'Database'
    InMemory = False
    ReadOnly = False
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
    IndexFieldNames = 'ItemId;FolderId'
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
    Left = 136
    Top = 120
    object IntegerField1: TIntegerField
      FieldName = 'FolderId'
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'Name'
      Size = 60
    end
    object IntegerField2: TIntegerField
      FieldName = 'Size'
    end
    object IntegerField3: TIntegerField
      FieldName = 'ItemType'
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'Modified'
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'Deleted'
    end
    object StringField2: TStringField
      FieldName = 'ReportName'
      Size = 150
    end
    object MemoField1: TMemoField
      FieldName = 'SqlText'
      BlobType = ftMemo
    end
    object taReporteUpdItemId: TAutoIncField
      FieldName = 'ItemId'
    end
  end
end
