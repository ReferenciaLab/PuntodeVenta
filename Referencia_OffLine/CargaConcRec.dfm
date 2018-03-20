object frmCargaConcRec: TfrmCargaConcRec
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Validaci'#243'n Archivo de Pagos ARS (Cobros)'
  ClientHeight = 357
  ClientWidth = 788
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
    Width = 788
    Height = 357
    Align = alClient
    TabOrder = 0
    LookAndFeel = dmAppActions.lnfWeb
    object btaceptarcuadre: TcxButton
      Left = 23
      Top = 110
      Width = 200
      Height = 22
      Caption = 'Aceptar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = btaceptarcuadreClick
    end
    object btcancelarcuadre: TcxButton
      Left = 548
      Top = 110
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
    object cbExtGrupoArs: TcxExtLookupComboBox
      Left = 91
      Top = 36
      RepositoryItem = DM.elcGrupoClienteArs
      Properties.CharCase = ecUpperCase
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 0
      Width = 299
    end
    object cboShellArchivo: TcxShellComboBox
      Left = 91
      Top = 63
      Properties.Root.BrowseFolder = bfCustomPath
      Properties.Root.CustomPath = 'C:\ConciliacionArs'
      Properties.ShowFullPath = sfpAlways
      Properties.ViewOptions = [scvoShowFiles]
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 2
      OnClick = cboShellArchivoClick
      Width = 299
    end
    object cxGrid1: TcxGrid
      Left = 11
      Top = 145
      Width = 749
      Height = 200
      TabOrder = 7
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsCSV
        DataController.KeyFieldNames = 'No.Autorizacion+No.Afiliacion'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxGrid1DBTableView1NoAutorizacion: TcxGridDBColumn
          DataBinding.FieldName = 'No.Autorizacion'
          Width = 108
        end
        object cxGrid1DBTableView1Paciente: TcxGridDBColumn
          DataBinding.FieldName = 'Paciente'
          Width = 240
        end
        object cxGrid1DBTableView1Fecha: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha'
          Width = 81
        end
        object cxGrid1DBTableView1NoAfiliacion: TcxGridDBColumn
          DataBinding.FieldName = 'No.Afiliacion'
          Width = 111
        end
        object cxGrid1DBTableView1MontoReclamo: TcxGridDBColumn
          DataBinding.FieldName = 'Monto Reclamo'
          Width = 96
        end
        object cxGrid1DBTableView1MontoPagado: TcxGridDBColumn
          DataBinding.FieldName = 'MontoPagado'
          Width = 105
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object chkHumano: TcxCheckBox
      Left = 582
      Top = 36
      Caption = 'Humano Completo'
      ParentColor = False
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Color = 16311249
      Style.HotTrack = False
      TabOrder = 4
      Width = 121
    end
    object dtFechaInicio: TcxDateEdit
      Left = 459
      Top = 36
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 1
      Width = 117
    end
    object dtFechaFin: TcxDateEdit
      Left = 459
      Top = 63
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 3
      Width = 117
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
          object GrupoSucursales: TdxLayoutGroup
            Caption = 'Grupo Ars'
            LayoutDirection = ldHorizontal
            object dxLayoutControl3Group1: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              ShowBorder = False
              object dxLayoutControl3Group3: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl3Item1: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Grupo de Ars'
                  Control = cbExtGrupoArs
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl3Item5: TdxLayoutItem
                  Caption = 'Fecha Inicio'
                  Control = dtFechaInicio
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl3Group2: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl3Item2: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Archivo .CSV'
                  Control = cboShellArchivo
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl3Item6: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Fecha Fin'
                  Control = dtFechaFin
                  ControlOptions.ShowBorder = False
                end
              end
            end
            object dxLayoutControl3Item4: TdxLayoutItem
              Caption = 'New Item'
              ShowCaption = False
              Control = chkHumano
              ControlOptions.ShowBorder = False
            end
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
      object dxLayoutControl3Item3: TdxLayoutItem
        Control = cxGrid1
        ControlOptions.ShowBorder = False
      end
    end
  end
  object spMensaje: TLMDSimplePanel
    Left = 159
    Top = 90
    Width = 458
    Height = 133
    Bevel.StyleInner = bvFrameLowered
    Bevel.StyleOuter = bvFrameRaised
    Bevel.BorderWidth = 8
    Bevel.BorderInnerWidth = 2
    Bevel.LightColor = 12582911
    Bevel.Mode = bmCustom
    Bevel.StandardStyle = lsLowered
    Color = 10210492
    TabOrder = 1
    Visible = False
    object Shape1: TShape
      Left = 17
      Top = 35
      Width = 424
      Height = 40
      Brush.Color = 14743027
      Shape = stRoundRect
    end
    object Label1: TLabel
      Left = 14
      Top = 14
      Width = 430
      Height = 81
      Align = alClient
      Alignment = taCenter
      Caption = 'PROCESANDO POR FAVOR ESPERE...'
      Font.Charset = ANSI_CHARSET
      Font.Color = 3766914
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Layout = tlCenter
      ExplicitWidth = 296
      ExplicitHeight = 19
    end
    object Panel1: TPanel
      Left = 14
      Top = 95
      Width = 430
      Height = 24
      Align = alBottom
      Color = 11392730
      TabOrder = 0
    end
  end
  object ProgressBar1: TProgressBar
    Left = 288
    Top = -8
    Width = 150
    Height = 17
    TabOrder = 2
  end
  object qconsulta: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    CommandTimeout = 1200
    Parameters = <>
    Left = 228
    Top = 128
  end
  object qrVerificaCliente: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    CommandTimeout = 1200
    Parameters = <>
    Left = 268
    Top = 128
  end
  object qrVerificaCFiscal: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    CommandTimeout = 1200
    Parameters = <>
    Left = 180
    Top = 128
  end
  object cxShellBrowserDialog1: TcxShellBrowserDialog
    LookAndFeel.NativeStyle = True
    Root.BrowseFolder = bfCustomPath
    Left = 16
    Top = 56
  end
  object dxDockingManager1: TdxDockingManager
    Color = clBtnFace
    DefaultHorizContainerSiteProperties.Dockable = True
    DefaultHorizContainerSiteProperties.ImageIndex = -1
    DefaultVertContainerSiteProperties.Dockable = True
    DefaultVertContainerSiteProperties.ImageIndex = -1
    DefaultTabContainerSiteProperties.Dockable = True
    DefaultTabContainerSiteProperties.ImageIndex = -1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [doActivateAfterDocking, doDblClickDocking, doFloatingOnTop, doTabContainerHasCaption, doTabContainerCanAutoHide, doSideContainerCanClose, doSideContainerCanAutoHide, doTabContainerCanInSideContainer]
    ViewStyle = vsNET
    Left = 96
    Top = 65528
  end
  object OpenDialog1: TOpenDialog
    Filter = '*.csv|*.csv|*.*|*.*'
    Options = [ofHideReadOnly, ofFileMustExist, ofEnableSizing]
    Left = 248
    Top = 65528
  end
  object JvCsvDataSet1: TJvCsvDataSet
    FileName = 'C:\ConciliacionARS\Ars Futuro Mes de Octubre 2014.csv'
    Changed = False
    CsvFieldDef = 
      'NO.AUTORIZACION,PACIENTE,FECHA,NO.AFILIACION,MONTO RECLAMO,MONTO' +
      'PAGADO'
    CsvKeyDef = 'NO.AUTORIZACION'
    CsvUniqueKeys = True
    ExtendedHeaderInfo = False
    CaseInsensitive = False
    AutoBackupCount = 0
    StoreDefs = True
    Left = 328
    object JvCsvDataSet1NoAutorizacion: TStringField
      FieldName = 'No.Autorizacion'
      Size = 80
    end
    object JvCsvDataSet1Paciente: TStringField
      FieldName = 'Paciente'
      Size = 80
    end
    object JvCsvDataSet1Fecha: TStringField
      FieldName = 'Fecha'
      Size = 80
    end
    object JvCsvDataSet1NoAfiliacion: TStringField
      FieldName = 'No.Afiliacion'
      Size = 80
    end
    object JvCsvDataSet1MontoReclamo: TStringField
      FieldName = 'Monto Reclamo'
      Size = 80
    end
    object JvCsvDataSet1MontoPagado: TStringField
      FieldName = 'MontoPagado'
      Size = 80
    end
  end
  object dsCSV: TDataSource
    DataSet = JvCsvDataSet1
    Left = 260
    Top = 215
  end
  object qInsert: TADOQuery
    Connection = DM.DBSAP
    CursorType = ctStatic
    CommandTimeout = 1200
    Parameters = <
      item
        Name = '0'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        DataType = ftDateTime
        Value = Null
      end
      item
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        DataType = ftFloat
        Value = Null
      end
      item
        DataType = ftFloat
        Value = Null
      end
      item
        DataType = ftFloat
        Value = Null
      end
      item
        DataType = ftString
        Size = -1
        Value = Null
      end>
    Left = 404
    Top = 120
  end
  object qFind: TADOQuery
    Connection = DM.DBSAP
    CursorType = ctStatic
    CommandTimeout = 1200
    Parameters = <>
    Left = 332
    Top = 104
  end
end
