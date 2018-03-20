object frmGeneracionArchivo607: TfrmGeneracionArchivo607
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Generaci'#243'n Archivo 607'
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
      OnExit = FechaIniExit
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
  object ppReporte607: TppReport
    AutoStop = False
    DataPipeline = ppReporteArc607
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter (8.5" x 11")'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 0
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    AllowPrintToArchive = True
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'TextFile'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 201
    Top = 65530
    Version = '10.04'
    mmColumnWidth = 0
    DataPipelineName = 'ppReporteArc607'
    object ppDetailBand21: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppDBText223: TppDBText
        UserName = 'DBText168'
        CharWrap = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Detalle'
        DataPipeline = ppReporteArc607
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppReporteArc607'
        mmHeight = 4572
        mmLeft = 2540
        mmTop = 0
        mmWidth = 201084
        BandType = 4
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
    Left = 232
    Top = 65528
  end
  object dsReporte: TDataSource
    DataSet = qrReporte
    Left = 267
    Top = 65528
  end
  object JvReporte: TJvMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'Detalle'
        DataType = ftString
        Size = 200
      end>
    Left = 344
    Top = 65528
    object JvReporteDetalle: TStringField
      FieldName = 'Detalle'
      Size = 200
    end
  end
  object dsReporteJ: TDataSource
    DataSet = JvReporte
    Left = 384
    Top = 65528
  end
  object ppReporteArc607: TppDBPipeline
    DataSource = dsReporteJ
    UserName = 'ppReporteArc607'
    Left = 307
    Top = 65528
    object ppReporteArc607ppField1: TppField
      FieldAlias = 'Detalle'
      FieldName = 'Detalle'
      FieldLength = 200
      DisplayWidth = 200
      Position = 0
    end
  end
end
