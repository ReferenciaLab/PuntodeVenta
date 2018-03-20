object frmImpresionAcuerdo: TfrmImpresionAcuerdo
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Reporte Acuerdos Comerciales'
  ClientHeight = 419
  ClientWidth = 479
  Color = clBtnFace
  DefaultMonitor = dmDesktop
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 373
    Top = 233
    Width = 65
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '0'
    Color = 16311249
    ParentColor = False
  end
  object dxLayoutControl3: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 479
    Height = 419
    Align = alClient
    TabOrder = 0
    LookAndFeel = dmAppActions.lnfWeb
    object btaceptarcuadre: TcxButton
      Left = 23
      Top = 306
      Width = 200
      Height = 22
      Caption = 'Aceptar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ModalResult = 1
      ParentFont = False
      TabOrder = 5
    end
    object btcancelarcuadre: TcxButton
      Left = 240
      Top = 306
      Width = 200
      Height = 22
      Caption = 'Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ModalResult = 2
      ParentFont = False
      TabOrder = 6
    end
    object RgImpresion: TcxRadioGroup
      Left = 11
      Top = 247
      HelpType = htKeyword
      Caption = 'Impresi'#243'n'
      ItemIndex = 0
      Properties.Columns = 2
      Properties.DefaultValue = 'V'
      Properties.Items = <
        item
          Caption = 'Vista Preliminar'
          Value = 'V'
        end
        item
          Caption = 'Printer'
          Value = 'P'
        end>
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Shadow = False
      Style.TextColor = clWindowText
      TabOrder = 4
      Transparent = True
      Height = 46
      Width = 441
    end
    object CbOrdenar: TcxComboBox
      Left = 105
      Top = 213
      Properties.CharCase = ecUpperCase
      Properties.Items.Strings = (
        'DESCRIPCION'
        'PRUEBAID'
        ''
        '')
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 3
      Text = 'DESCRIPCION'
      Width = 127
    end
    object cboReporte: TcxComboBox
      Left = 105
      Top = 36
      Properties.CharCase = ecUpperCase
      Properties.Items.Strings = (
        'GRUPO'
        'CLIENTE')
      Properties.OEMConvert = True
      Properties.OnChange = cboReportePropertiesChange
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 0
      Width = 299
    end
    object cbExtPrueba: TcxExtLookupComboBox
      Left = 105
      Top = 95
      RepositoryItem = DM.elcPruebas
      Properties.CharCase = ecUpperCase
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 1
      Width = 299
    end
    object cbExtCliente: TcxExtLookupComboBox
      Left = 105
      Top = 154
      Properties.CharCase = ecUpperCase
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 2
      Width = 335
    end
    object dxLayoutGroup2: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object GrupoParametros: TdxLayoutGroup
        Caption = 'Parametros Cuadre'
        ShowCaption = False
        ShowBorder = False
        object GrupoLaboratorio: TdxLayoutGroup
          Caption = 'Filtrar Tipo de Reporte'
          LayoutDirection = ldHorizontal
          object dxLayoutControl3Item3: TdxLayoutItem
            Caption = 'Reporte'
            Control = cboReporte
            ControlOptions.ShowBorder = False
          end
        end
        object GrupoSucursales: TdxLayoutGroup
          Caption = 'Filtrar Prueba'
          LayoutDirection = ldHorizontal
          object dxLayoutControl3Item42: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'Prueba'
            Control = cbExtPrueba
            ControlOptions.ShowBorder = False
          end
        end
        object GrupoCategoria: TdxLayoutGroup
          Caption = 'Filtrar Cliente'
          object dxLayoutControl3Item4: TdxLayoutItem
            Caption = 'Relaci'#243'n Cliente'
            Control = cbExtCliente
            ControlOptions.ShowBorder = False
          end
        end
        object dxLayoutControl3Group2: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object GrupoOrdenar: TdxLayoutGroup
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Caption = 'Ordernar El Listado por :'
            object dxLayoutControl3Item1: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'Ordenar por'
              Control = CbOrdenar
              ControlOptions.ShowBorder = False
            end
          end
          object dxLayoutItem2: TdxLayoutItem
            AutoAligns = []
            AlignHorz = ahRight
            Caption = 'cxRadioGroup1'
            ShowCaption = False
            Control = RgImpresion
            ControlOptions.ShowBorder = False
          end
        end
      end
      object botonescuadre: TdxLayoutGroup
        AutoAligns = [aaVertical]
        AlignHorz = ahClient
        Caption = 'botonescuadre'
        ShowCaption = False
        LayoutDirection = ldHorizontal
        object dxLayoutControl3Item31: TdxLayoutItem
          Caption = 'New Item'
          ShowCaption = False
          Control = btaceptarcuadre
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl3Item10: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
          Caption = 'New Item'
          ShowCaption = False
          Control = btcancelarcuadre
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object qrReporte: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT PRUEBARELATION AS PRUEBA,P.DESCRIPCION,C.CODIGOCUPID AS C' +
        'ODIGO_CUP,DESDE,HASTA,A.PRECIO FROM PTACUERDOCOMERCIAL A INNER J' +
        'OIN PTPRUEBA P'
      
        'ON A.PRUEBARELATION=P.PRUEBAID INNER JOIN PTCODIGOCUP C ON C.PRU' +
        'EBAID=A.PRUEBARELATION'
      'WHERE A.CLIENTERELATION='#39'64'#39)
    Left = 40
    object qrReportePRUEBA: TStringField
      FieldName = 'PRUEBA'
    end
    object qrReporteDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 80
    end
    object qrReporteCODIGO_CUP: TStringField
      FieldName = 'CODIGO_CUP'
    end
    object qrReporteDESDE: TDateTimeField
      FieldName = 'DESDE'
    end
    object qrReporteHASTA: TDateTimeField
      FieldName = 'HASTA'
    end
    object qrReportePRECIO: TBCDField
      FieldName = 'PRECIO'
      Precision = 28
      Size = 12
    end
  end
  object dsReporte: TDataSource
    DataSet = qrReporte
    Left = 75
  end
  object JvReporte: TJvMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'Prueba'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Descripcion'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Codigo_Cup'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Fecha_Desde'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Fecha_Hasta'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Precio'
        DataType = ftCurrency
      end>
    Left = 160
    object JvReportePrueba: TStringField
      FieldName = 'Prueba'
      Size = 10
    end
    object JvReporteDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
    object JvReporteCodigo_Cup: TStringField
      FieldName = 'Codigo_Cup'
    end
    object JvReporteFecha_Desde: TStringField
      DisplayWidth = 10
      FieldName = 'Fecha_Desde'
      Size = 10
    end
    object JvReporteFecha_Hasta: TStringField
      DisplayWidth = 10
      FieldName = 'Fecha_Hasta'
      Size = 10
    end
    object JvReportePrecio: TCurrencyField
      FieldName = 'Precio'
    end
  end
  object dsReporteJ: TDataSource
    DataSet = JvReporte
    Left = 208
  end
  object ppReporteAcuerdo: TppDBPipeline
    DataSource = dsReporteJ
    UserName = 'ppReporteAcuerdo'
    Left = 115
    object ppReporteAcuerdoppField1: TppField
      FieldAlias = 'Prueba'
      FieldName = 'Prueba'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppReporteAcuerdoppField2: TppField
      FieldAlias = 'Descripcion'
      FieldName = 'Descripcion'
      FieldLength = 50
      DisplayWidth = 50
      Position = 1
    end
    object ppReporteAcuerdoppField3: TppField
      FieldAlias = 'Codigo_Cup'
      FieldName = 'Codigo_Cup'
      FieldLength = 20
      DisplayWidth = 20
      Position = 2
    end
    object ppReporteAcuerdoppField4: TppField
      FieldAlias = 'Fecha_Desde'
      FieldName = 'Fecha_Desde'
      FieldLength = 10
      DisplayWidth = 10
      Position = 3
    end
    object ppReporteAcuerdoppField5: TppField
      FieldAlias = 'Fecha_Hasta'
      FieldName = 'Fecha_Hasta'
      FieldLength = 10
      DisplayWidth = 10
      Position = 4
    end
    object ppReporteAcuerdoppField6: TppField
      FieldAlias = 'Precio'
      FieldName = 'Precio'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 5
    end
  end
  object ppImpConSeguro: TppReport
    AutoStop = False
    DataPipeline = ppReporteAcuerdo
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter (8.5" x 11")'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    AllowPrintToArchive = True
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    SavePrinterSetup = True
    ShowAutoSearchDialog = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 263
    Top = 65530
    Version = '10.04'
    mmColumnWidth = 0
    DataPipelineName = 'ppReporteAcuerdo'
    object ppHeaderBand14: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 38100
      mmPrintPosition = 0
      object ppDBText185: TppDBText
        UserName = 'DBText159'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Empresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 5842
        mmLeft = 2116
        mmTop = 0
        mmWidth = 85990
        BandType = 0
      end
      object ppLabel170: TppLabel
        UserName = 'Label152'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Prueba     :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4995
        mmLeft = 1588
        mmTop = 12435
        mmWidth = 21759
        BandType = 0
      end
      object ppLabel171: TppLabel
        UserName = 'Label171'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Prueba'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 529
        mmTop = 32808
        mmWidth = 23019
        BandType = 0
      end
      object ppLabel177: TppLabel
        UserName = 'Label177'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Descripci'#243'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 27252
        mmTop = 32808
        mmWidth = 58208
        BandType = 0
      end
      object ppLabel195: TppLabel
        UserName = 'Label1902'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'C'#243'digo Cup'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 89694
        mmTop = 32808
        mmWidth = 23813
        BandType = 0
      end
      object ppLabel199: TppLabel
        UserName = 'Label199'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Desde'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 118004
        mmTop = 32808
        mmWidth = 22754
        BandType = 0
      end
      object ppLabel200: TppLabel
        UserName = 'Label200'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Hasta'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 145786
        mmTop = 33073
        mmWidth = 20638
        BandType = 0
      end
      object ppLabel203: TppLabel
        UserName = 'Label203'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Precio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3810
        mmLeft = 173302
        mmTop = 32808
        mmWidth = 18785
        BandType = 0
      end
      object ppLabel206: TppLabel
        UserName = 'Label206'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Fecha  :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 170392
        mmTop = 7938
        mmWidth = 13293
        BandType = 0
      end
      object ppSystemVariable14: TppSystemVariable
        UserName = 'SystemVariable14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 184150
        mmTop = 7938
        mmWidth = 17526
        BandType = 0
      end
      object ppSystemVariable15: TppSystemVariable
        UserName = 'SystemVariable15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageNo
        DisplayFormat = '000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 183886
        mmTop = 3175
        mmWidth = 5842
        BandType = 0
      end
      object ppLabel207: TppLabel
        UserName = 'Label207'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Pagina :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 170392
        mmTop = 3175
        mmWidth = 13674
        BandType = 0
      end
      object ppLabel208: TppLabel
        UserName = 'Label208'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Hora    :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 170392
        mmTop = 12435
        mmWidth = 13081
        BandType = 0
      end
      object ppSystemVariable16: TppSystemVariable
        UserName = 'SystemVariable101'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtTime
        DisplayFormat = 'HH:MM:SS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 184415
        mmTop = 12435
        mmWidth = 14055
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Label38'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4498
        mmLeft = 24077
        mmTop = 12435
        mmWidth = 64029
        BandType = 0
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Label39'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 1852
        mmTop = 6615
        mmWidth = 86254
        BandType = 0
      end
      object ppLabel127: TppLabel
        UserName = 'Label127'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cliente     :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4995
        mmLeft = 1852
        mmTop = 17198
        mmWidth = 21505
        BandType = 0
      end
      object ppLabel128: TppLabel
        UserName = 'Label128'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Label128'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4498
        mmLeft = 24342
        mmTop = 17463
        mmWidth = 63765
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 794
        mmTop = 31485
        mmWidth = 201084
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 1058
        mmTop = 37042
        mmWidth = 201084
        BandType = 0
      end
    end
    object ppDetailBand19: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText188: TppDBText
        UserName = 'DBText163'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Descripcion'
        DataPipeline = ppReporteAcuerdo
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppReporteAcuerdo'
        mmHeight = 3440
        mmLeft = 27517
        mmTop = 265
        mmWidth = 57679
        BandType = 4
      end
      object ppDBText189: TppDBText
        UserName = 'DBText164'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Prueba'
        DataPipeline = ppReporteAcuerdo
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppReporteAcuerdo'
        mmHeight = 3440
        mmLeft = 794
        mmTop = 265
        mmWidth = 23019
        BandType = 4
      end
      object ppDBText194: TppDBText
        UserName = 'LbBruto'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Fecha_Hasta'
        DataPipeline = ppReporteAcuerdo
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppReporteAcuerdo'
        mmHeight = 3387
        mmLeft = 146579
        mmTop = 381
        mmWidth = 19579
        BandType = 4
      end
      object ppDBText197: TppDBText
        UserName = 'LbCober'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Precio'
        DataPipeline = ppReporteAcuerdo
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppReporteAcuerdo'
        mmHeight = 3387
        mmLeft = 173832
        mmTop = 381
        mmWidth = 18256
        BandType = 4
      end
      object ppDBText193: TppDBText
        UserName = 'DBText193'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Fecha_Desde'
        DataPipeline = ppReporteAcuerdo
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppReporteAcuerdo'
        mmHeight = 3387
        mmLeft = 118798
        mmTop = 265
        mmWidth = 21960
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Codigo_Cup'
        DataPipeline = ppReporteAcuerdo
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppReporteAcuerdo'
        mmHeight = 3429
        mmLeft = 89959
        mmTop = 0
        mmWidth = 22490
        BandType = 4
      end
    end
    object ppFooterBand3: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 7673
      mmPrintPosition = 0
      object ppDBCalc35: TppDBCalc
        UserName = 'DBCalc28'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Prueba'
        DataPipeline = ppReporteAcuerdo
        DisplayFormat = '###,###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppReporteAcuerdo'
        mmHeight = 3387
        mmLeft = 180975
        mmTop = 2116
        mmWidth = 12171
        BandType = 8
      end
      object ppLabel178: TppLabel
        UserName = 'Label175'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cantidad de Pruebas :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3429
        mmLeft = 147902
        mmTop = 2116
        mmWidth = 31242
        BandType = 8
      end
    end
  end
  object ExtraOptions1: TExtraOptions
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
    Quattro.Visible = True
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
    PDF.Visible = True
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
    Left = 184
    Top = 65528
  end
  object ppImpSinSeguro: TppReport
    AutoStop = False
    DataPipeline = ppReporteAcuerdo
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter (8.5" x 11")'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    AllowPrintToArchive = True
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    SavePrinterSetup = True
    ShowAutoSearchDialog = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 311
    Top = 65530
    Version = '10.04'
    mmColumnWidth = 0
    DataPipelineName = 'ppReporteAcuerdo'
    object ppHeaderBand5: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 38100
      mmPrintPosition = 0
      object ppDBText40: TppDBText
        UserName = 'DBText159'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Empresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 5842
        mmLeft = 2116
        mmTop = 265
        mmWidth = 86254
        BandType = 0
      end
      object ppLabel71: TppLabel
        UserName = 'Label152'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Prueba    :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4995
        mmLeft = 2116
        mmTop = 11906
        mmWidth = 20574
        BandType = 0
      end
      object ppLabel76: TppLabel
        UserName = 'Label171'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Prueba'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 2117
        mmTop = 32015
        mmWidth = 24077
        BandType = 0
      end
      object ppLabel77: TppLabel
        UserName = 'Label172'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Descripci'#243'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 29633
        mmTop = 32015
        mmWidth = 85461
        BandType = 0
      end
      object ppLabel80: TppLabel
        UserName = 'Label1902'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Desde'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 118269
        mmTop = 32015
        mmWidth = 22225
        BandType = 0
      end
      object ppLabel81: TppLabel
        UserName = 'Label199'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Hasta'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 143669
        mmTop = 32279
        mmWidth = 20902
        BandType = 0
      end
      object ppLabel88: TppLabel
        UserName = 'Label206'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Fecha  :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 166159
        mmTop = 7938
        mmWidth = 13293
        BandType = 0
      end
      object ppSystemVariable13: TppSystemVariable
        UserName = 'SystemVariable14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 179917
        mmTop = 7938
        mmWidth = 17526
        BandType = 0
      end
      object ppSystemVariable17: TppSystemVariable
        UserName = 'SystemVariable15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageNo
        DisplayFormat = '000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 179652
        mmTop = 3175
        mmWidth = 5842
        BandType = 0
      end
      object ppLabel89: TppLabel
        UserName = 'Label207'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Pagina :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 166159
        mmTop = 3175
        mmWidth = 13674
        BandType = 0
      end
      object ppLabel90: TppLabel
        UserName = 'Label208'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Hora    :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 166159
        mmTop = 12435
        mmWidth = 13081
        BandType = 0
      end
      object ppSystemVariable18: TppSystemVariable
        UserName = 'SystemVariable101'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtTime
        DisplayFormat = 'HH:MM:SS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 180182
        mmTop = 12435
        mmWidth = 14055
        BandType = 0
      end
      object ppLabel84: TppLabel
        UserName = 'Label84'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Label84'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4498
        mmLeft = 23283
        mmTop = 11906
        mmWidth = 65088
        BandType = 0
      end
      object ppLabel85: TppLabel
        UserName = 'Label85'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Label85'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 1852
        mmTop = 6350
        mmWidth = 86519
        BandType = 0
      end
      object ppLabel133: TppLabel
        UserName = 'Label133'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cliente    :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4995
        mmLeft = 2117
        mmTop = 16404
        mmWidth = 20320
        BandType = 0
      end
      object ppLabel134: TppLabel
        UserName = 'Label134'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Label134'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4995
        mmLeft = 23019
        mmTop = 16669
        mmWidth = 65352
        BandType = 0
      end
      object ppLabel121: TppLabel
        UserName = 'Label121'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Precio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3810
        mmLeft = 169069
        mmTop = 32015
        mmWidth = 25135
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 1588
        mmTop = 30956
        mmWidth = 201613
        BandType = 0
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 2646
        mmTop = 35983
        mmWidth = 200819
        BandType = 0
      end
    end
    object ppDetailBand5: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText42: TppDBText
        UserName = 'DBText163'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Descripcion'
        DataPipeline = ppReporteAcuerdo
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppReporteAcuerdo'
        mmHeight = 3387
        mmLeft = 29104
        mmTop = 381
        mmWidth = 86254
        BandType = 4
      end
      object ppDBText43: TppDBText
        UserName = 'DBText164'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Prueba'
        DataPipeline = ppReporteAcuerdo
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppReporteAcuerdo'
        mmHeight = 3387
        mmLeft = 2910
        mmTop = 381
        mmWidth = 22754
        BandType = 4
      end
      object ppDBText46: TppDBText
        UserName = 'LbBruto'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Fecha_Hasta'
        DataPipeline = ppReporteAcuerdo
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppReporteAcuerdo'
        mmHeight = 3387
        mmLeft = 144198
        mmTop = 381
        mmWidth = 20638
        BandType = 4
      end
      object ppDBText52: TppDBText
        UserName = 'DBText193'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Fecha_Desde'
        DataPipeline = ppReporteAcuerdo
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppReporteAcuerdo'
        mmHeight = 3387
        mmLeft = 118004
        mmTop = 265
        mmWidth = 22860
        BandType = 4
      end
      object ppDBText67: TppDBText
        UserName = 'LbPend2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Precio'
        DataPipeline = ppReporteAcuerdo
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppReporteAcuerdo'
        mmHeight = 3440
        mmLeft = 169334
        mmTop = 265
        mmWidth = 24871
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 7673
      mmPrintPosition = 0
      object ppDBCalc28: TppDBCalc
        UserName = 'DBCalc28'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Prueba'
        DataPipeline = ppReporteAcuerdo
        DisplayFormat = '###,###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppReporteAcuerdo'
        mmHeight = 3387
        mmLeft = 183357
        mmTop = 2116
        mmWidth = 12171
        BandType = 8
      end
      object ppLabel95: TppLabel
        UserName = 'Label175'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Total de Pruebas :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3429
        mmLeft = 156104
        mmTop = 2116
        mmWidth = 25739
        BandType = 8
      end
    end
  end
end
