object frmImpresionDetVentas: TfrmImpresionDetVentas
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Impresion Detallado de Ventas Mensuales'
  ClientHeight = 185
  ClientWidth = 467
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
    Width = 467
    Height = 185
    Align = alClient
    TabOrder = 0
    LookAndFeel = dmAppActions.lnfWeb
    object btaceptarcuadre: TcxButton
      Left = 23
      Top = 129
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
      TabOrder = 3
    end
    object btcancelarcuadre: TcxButton
      Left = 240
      Top = 129
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
      TabOrder = 4
    end
    object FechaIni: TcxDateEdit
      Left = 88
      Top = 36
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 0
      Width = 121
    end
    object FechaFin: TcxDateEdit
      Left = 319
      Top = 36
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 1
      Width = 121
    end
    object RgImpresion: TcxRadioGroup
      Left = 11
      Top = 70
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
      TabOrder = 2
      Transparent = True
      Height = 40
      Width = 441
    end
    object dxLayoutGroup2: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl3Group14: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        ShowBorder = False
        object GrupoParametros: TdxLayoutGroup
          Caption = 'Parametros Cuadre'
          ShowCaption = False
          ShowBorder = False
          object GrupoToma: TdxLayoutGroup
            Caption = 'Filtrar por Rango de Fecha '
            LayoutDirection = ldHorizontal
            object dxLayoutControl3Item2: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'Fecha Inicial'
              Control = FechaIni
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl3Item33: TdxLayoutItem
              AutoAligns = [aaVertical]
              AlignHorz = ahRight
              Caption = 'Fecha Final'
              Control = FechaFin
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
        object GroupSaldo: TdxLayoutGroup
          Caption = 'Saldo Final en Caja'
          ShowCaption = False
          LayoutDirection = ldHorizontal
          ShowBorder = False
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
  object ppListadoDetVentas: TppReport
    AutoStop = False
    DataPipeline = ppReporteDetVentas
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
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 1
    Top = 2
    Version = '10.04'
    mmColumnWidth = 0
    DataPipelineName = 'ppReporteDetVentas'
    object ppHeaderBand16: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 26458
      mmPrintPosition = 0
      object ppDBText215: TppDBText
        UserName = 'DBText159'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Empresa'
        DataPipeline = DM.ppParametro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppParametro'
        mmHeight = 5821
        mmLeft = 2116
        mmTop = 2381
        mmWidth = 86254
        BandType = 0
      end
      object ppLabel238: TppLabel
        UserName = 'Label153'
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
        mmHeight = 4233
        mmLeft = 165365
        mmTop = 7938
        mmWidth = 13335
        BandType = 0
      end
      object ppSystemVariable23: TppSystemVariable
        UserName = 'SystemVariable8'
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
        mmHeight = 5821
        mmLeft = 179123
        mmTop = 7938
        mmWidth = 17463
        BandType = 0
      end
      object ppSystemVariable24: TppSystemVariable
        UserName = 'SystemVariable9'
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
        mmLeft = 179123
        mmTop = 2381
        mmWidth = 5842
        BandType = 0
      end
      object ppLabel239: TppLabel
        UserName = 'Label154'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Pagina:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 165629
        mmTop = 2381
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel241: TppLabel
        UserName = 'Label161'
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
        mmHeight = 4233
        mmLeft = 165629
        mmTop = 13494
        mmWidth = 12965
        BandType = 0
      end
      object ppSystemVariable25: TppSystemVariable
        UserName = 'SystemVariable10'
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
        mmHeight = 4233
        mmLeft = 179123
        mmTop = 13494
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel246: TppLabel
        UserName = 'Label185'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Laboratorio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        mmHeight = 3810
        mmLeft = 2646
        mmTop = 21696
        mmWidth = 19579
        BandType = 0
      end
      object ppLabel250: TppLabel
        UserName = 'Label192'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Nombre del Cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 91281
        mmTop = 21697
        mmWidth = 56092
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Facturado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 155575
        mmTop = 21696
        mmWidth = 16140
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Label6'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 2117
        mmTop = 8467
        mmWidth = 85990
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Label7'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 1852
        mmTop = 13758
        mmWidth = 85990
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Total Pagado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 178330
        mmTop = 21960
        mmWidth = 21431
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Nombre del Paciente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        mmHeight = 3810
        mmLeft = 24871
        mmTop = 21697
        mmWidth = 62177
        BandType = 0
      end
    end
    object ppDetailBand21: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText218: TppDBText
        UserName = 'DBText163'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Muestrano'
        DataPipeline = ppReporteDetVentas
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppReporteDetVentas'
        mmHeight = 3440
        mmLeft = 2910
        mmTop = 529
        mmWidth = 19315
        BandType = 4
      end
      object ppDBText223: TppDBText
        UserName = 'DBText168'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'NombrePaciente'
        DataPipeline = ppReporteDetVentas
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppReporteDetVentas'
        mmHeight = 3440
        mmLeft = 25135
        mmTop = 529
        mmWidth = 61648
        BandType = 4
      end
      object ppDBText226: TppDBText
        UserName = 'LbNeto'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Neto'
        DataPipeline = ppReporteDetVentas
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppReporteDetVentas'
        mmHeight = 3440
        mmLeft = 155575
        mmTop = 529
        mmWidth = 16933
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TotalPagado'
        DataPipeline = ppReporteDetVentas
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppReporteDetVentas'
        mmHeight = 3440
        mmLeft = 181769
        mmTop = 0
        mmWidth = 14817
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ClienteNombre'
        DataPipeline = ppReporteDetVentas
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppReporteDetVentas'
        mmHeight = 3440
        mmLeft = 91281
        mmTop = 529
        mmWidth = 56092
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 8731
      mmPrintPosition = 0
      object ppLabel257: TppLabel
        UserName = 'Label175'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Total General :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 35719
        mmTop = 2910
        mmWidth = 40746
        BandType = 7
      end
      object ppDBCalc37: TppDBCalc
        UserName = 'DBCalc28'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'EntradaID'
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
        mmHeight = 3440
        mmLeft = 80169
        mmTop = 3175
        mmWidth = 14552
        BandType = 7
      end
      object ppDBCalc39: TppDBCalc
        UserName = 'DBCalc39'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Neto'
        DataPipeline = ppReporteDetVentas
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppReporteDetVentas'
        mmHeight = 3440
        mmLeft = 154517
        mmTop = 3175
        mmWidth = 18256
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TotalPagado'
        DataPipeline = ppReporteDetVentas
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppReporteDetVentas'
        mmHeight = 3440
        mmLeft = 181505
        mmTop = 3175
        mmWidth = 15346
        BandType = 7
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object qrReporte: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        '  select Distinct e.Fecha,e.EntradaId ,e.Muestrano as Muestrano,' +
        ' e.Pacienteid,e.NombrePaciente ,e.userid as UsuarioID, '
      '    (Select Empresa from PtParametro) as TituloEmpresa,'
      '    s.Nombre,isnull(d.Descripcion,'#39#39') as Descripcion,'
      
        '   e.Neto,e.Tasa,e.Subtotal,e.GastosVarios as TotalEnvio,e.Total' +
        'Pagado,'
      '    isnull(d.Comentario ,'#39#39') as Analisis'
      
        '  from ptentradapaciente e Left outer join ptentradapacientedeta' +
        'lle d '
      '  on d.refrecid = e.recid '
      '  Inner Join ptsucursal s  '
      '  on e.SucursalID=s.SucursalID '
      '  Where e.factexterior='#39'1'#39'  '
      '  and e.fecha between '#39'20091001'#39' and '#39'20091031'#39
      '  and e.Dataareaid='#39'ldr'#39
      'and isnull(d.Comentario ,'#39#39')<> '#39#39)
    Left = 40
  end
  object dsReporte: TDataSource
    DataSet = qrReporte
    Left = 75
  end
  object JvReporte: TJvMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'Fecha'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'EntradaID'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Muestrano'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NombrePaciente'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'Descuento'
        DataType = ftCurrency
      end
      item
        Name = 'TotalPagado'
        DataType = ftCurrency
      end
      item
        Name = 'GrupoDescuentoTotal'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Neto'
        DataType = ftCurrency
      end
      item
        Name = 'Bruto'
        DataType = ftCurrency
      end
      item
        Name = 'ClienteNombre'
        DataType = ftString
        Size = 80
      end>
    Left = 160
    object JvReporteFecha: TStringField
      FieldName = 'Fecha'
      Size = 10
    end
    object JvReporteEntradaID: TStringField
      FieldName = 'EntradaID'
    end
    object JvReporteMuestrano: TStringField
      FieldName = 'Muestrano'
    end
    object JvReporteNombrePaciente: TStringField
      FieldName = 'NombrePaciente'
      Size = 80
    end
    object JvReporteDescuento: TCurrencyField
      FieldName = 'Descuento'
    end
    object JvReporteTotalPagado: TCurrencyField
      FieldName = 'TotalPagado'
    end
    object JvReporteGrupoDescuentoTotal: TStringField
      FieldName = 'GrupoDescuentoTotal'
    end
    object JvReporteNeto: TCurrencyField
      FieldName = 'Neto'
    end
    object JvReporteBruto: TCurrencyField
      FieldName = 'Bruto'
    end
    object JvReporteClienteNombre: TStringField
      FieldName = 'ClienteNombre'
      Size = 80
    end
  end
  object dsReporteJ: TDataSource
    DataSet = JvReporte
    Left = 208
  end
  object ppReporteDetVentas: TppDBPipeline
    DataSource = dsReporteJ
    UserName = 'ppReporteDetVentas'
    Left = 115
    object ppReporteDetVentasppField1: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 10
      DisplayWidth = 10
      Position = 0
    end
    object ppReporteDetVentasppField2: TppField
      FieldAlias = 'EntradaID'
      FieldName = 'EntradaID'
      FieldLength = 20
      DisplayWidth = 20
      Position = 1
    end
    object ppReporteDetVentasppField3: TppField
      FieldAlias = 'Muestrano'
      FieldName = 'Muestrano'
      FieldLength = 20
      DisplayWidth = 20
      Position = 2
    end
    object ppReporteDetVentasppField4: TppField
      FieldAlias = 'NombrePaciente'
      FieldName = 'NombrePaciente'
      FieldLength = 80
      DisplayWidth = 80
      Position = 3
    end
    object ppReporteDetVentasppField5: TppField
      FieldAlias = 'Descuento'
      FieldName = 'Descuento'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 4
    end
    object ppReporteDetVentasppField6: TppField
      FieldAlias = 'TotalPagado'
      FieldName = 'TotalPagado'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 5
    end
    object ppReporteDetVentasppField7: TppField
      FieldAlias = 'GrupoDescuentoTotal'
      FieldName = 'GrupoDescuentoTotal'
      FieldLength = 20
      DisplayWidth = 20
      Position = 6
    end
    object ppReporteDetVentasppField8: TppField
      FieldAlias = 'Neto'
      FieldName = 'Neto'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 7
    end
    object ppReporteDetVentasppField9: TppField
      FieldAlias = 'Bruto'
      FieldName = 'Bruto'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 8
    end
    object ppReporteDetVentasppField10: TppField
      FieldAlias = 'ClienteNombre'
      FieldName = 'ClienteNombre'
      FieldLength = 80
      DisplayWidth = 80
      Position = 9
    end
  end
end
