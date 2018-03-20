inherited frmConsultaWServices: TfrmConsultaWServices
  Caption = 'Consulta Entradas Web-Services'
  ClientHeight = 544
  ClientWidth = 975
  KeyPreview = True
  Scaled = False
  OnClose = nil
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  ExplicitWidth = 991
  ExplicitHeight = 582
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCaption: TPanel
    Width = 975
    Height = 41
    ExplicitWidth = 975
    ExplicitHeight = 41
  end
  object dxLayoutControl1: TdxLayoutControl [2]
    Left = 0
    Top = 41
    Width = 975
    Height = 503
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmAppActions.lnfNoBorder
    object cxPageControl1: TcxPageControl
      Left = 0
      Top = 0
      Width = 289
      Height = 193
      ActivePage = cxTabSheet1
      HideTabs = True
      TabOrder = 0
      ClientRectBottom = 193
      ClientRectRight = 289
      ClientRectTop = 0
      object cxTabSheet1: TcxTabSheet
        Caption = 'cxTabSheet1'
        ImageIndex = 0
        object dxLayoutControl2: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 289
          Height = 193
          Align = alClient
          TabOrder = 0
          AutoContentSizes = [acsWidth, acsHeight]
          LookAndFeel = dmAppActions.lnfWeb
          object edbuscarpor: TcxComboBox
            Left = 80
            Top = 36
            Properties.DropDownListStyle = lsEditFixedList
            Properties.DropDownSizeable = True
            Properties.Items.Strings = (
              'Laboratorio No.'
              'N'#250'm. Afiliado'
              'Nombre del Paciente'
              'N'#250'm. Cliente'
              'Nombre del Cliente'
              'Telefono'
              'Usuario del D'#237'a'
              'Sucursal del D'#237'a'
              'Rango de Fecha')
            Properties.OnChange = edbuscarporPropertiesChange
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 0
            OnExit = edbuscarporExit
            Width = 121
          end
          object edbuscar: TcxTextEdit
            Left = 239
            Top = 36
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 1
            OnExit = edbuscarExit
            Width = 293
          end
          object dtFechaIni: TcxDateEdit
            Left = 580
            Top = 36
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 2
            Width = 79
          end
          object dtFechaFin: TcxDateEdit
            Left = 693
            Top = 36
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 3
            Width = 79
          end
          object GridTransacciones: TcxGrid
            Left = 23
            Top = 95
            Width = 933
            Height = 139
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            LookAndFeel.NativeStyle = True
            object cxGridDBTableView1: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              NavigatorButtons.Insert.Visible = False
              NavigatorButtons.Delete.Visible = False
              NavigatorButtons.Edit.Visible = False
              NavigatorButtons.Post.Visible = False
              NavigatorButtons.Cancel.Visible = False
              DataController.DataModeController.SmartRefresh = True
              DataController.DataSource = dsReclamo
              DataController.DetailKeyFieldNames = 'Muestrano'
              DataController.Filter.PercentWildcard = '*'
              DataController.Filter.Active = True
              DataController.Filter.AutoDataSetFilter = True
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '##,##0.00'
                  Kind = skSum
                  Column = cxGridDBTableView1Montoars
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                  Column = cxGridDBTableView1Montoafiliado
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                  Column = cxGridDBTableView1Monto
                end
                item
                  Kind = skCount
                  Column = cxGridDBTableView1Muestrano
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.IncSearch = True
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsSelection.MultiSelect = True
              OptionsView.ColumnAutoWidth = True
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              OptionsView.NewItemRowInfoText = 'Click here to add a new row'
              Styles.Background = stGrDatos
              Styles.Content = stGrDatos
              object cxGridDBTableView1Muestrano: TcxGridDBColumn
                DataBinding.FieldName = 'Muestrano'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 72
              end
              object cxGridDBTableView1Afiliado: TcxGridDBColumn
                DataBinding.FieldName = 'Afiliado'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 72
              end
              object cxGridDBTableView1NombrePaciente: TcxGridDBColumn
                Caption = 'Nombre Paciente'
                DataBinding.FieldName = 'NOMBREPACIENTE'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 157
              end
              object cxGridDBTableView1NombreCliente: TcxGridDBColumn
                Caption = 'Nombre Cliente'
                DataBinding.FieldName = 'CLIENTENOMBRE'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 147
              end
              object cxGridDBTableView1TipoPlan: TcxGridDBColumn
                Caption = 'Plan'
                DataBinding.FieldName = 'TipoPlan'
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 65
              end
              object cxGridDBTableView1Fecha: TcxGridDBColumn
                DataBinding.FieldName = 'Fecha'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 58
              end
              object cxGridDBTableView1Monto: TcxGridDBColumn
                DataBinding.FieldName = 'Monto'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 56
              end
              object cxGridDBTableView1Montoafiliado: TcxGridDBColumn
                Caption = 'Afiliado'
                DataBinding.FieldName = 'Montoafiliado'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 57
              end
              object cxGridDBTableView1Montoars: TcxGridDBColumn
                Caption = 'M.Ars'
                DataBinding.FieldName = 'Montoars'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 55
              end
              object cxGridDBTableView1Numero: TcxGridDBColumn
                DataBinding.FieldName = 'Numero'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 60
              end
              object cxGridDBTableView1Estatus: TcxGridDBColumn
                Caption = 'Estado'
                DataBinding.FieldName = 'Estatus'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 48
              end
              object cxGridDBTableView1UserID: TcxGridDBColumn
                DataBinding.FieldName = 'UserID'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 46
              end
            end
            object GridTransaccionesDBTableView1: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = dsReclamoDetalle
              DataController.DetailKeyFieldNames = 'muestrano'
              DataController.MasterKeyFieldNames = 'Muestrano'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skCount
                  Column = GridTransaccionesDBTableView1Muestrano
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                  Column = GridTransaccionesDBTableView1Monto
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                  Column = GridTransaccionesDBTableView1Montoafiliado
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                  Column = GridTransaccionesDBTableView1Montoars
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.IncSearch = True
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsSelection.MultiSelect = True
              OptionsView.ColumnAutoWidth = True
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              Styles.Background = dmAppActions.cxStyle8
              Styles.Content = dmAppActions.cxStyle8
              object GridTransaccionesDBTableView1Muestrano: TcxGridDBColumn
                DataBinding.FieldName = 'Muestrano'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 130
              end
              object GridTransaccionesDBTableView1Cobertura: TcxGridDBColumn
                DataBinding.FieldName = 'Cobertura'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 130
              end
              object GridTransaccionesDBTableView1Secuencia: TcxGridDBColumn
                Caption = 'Sec.'
                DataBinding.FieldName = 'Secuencia'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 50
              end
              object GridTransaccionesDBTableView1Detalles: TcxGridDBColumn
                Caption = 'Descripci'#243'n'
                DataBinding.FieldName = 'Detalles'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 450
              end
              object GridTransaccionesDBTableView1Monto: TcxGridDBColumn
                DataBinding.FieldName = 'Monto'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
              end
              object GridTransaccionesDBTableView1Montoafiliado: TcxGridDBColumn
                Caption = 'Afiliado'
                DataBinding.FieldName = 'Montoafiliado'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
              end
              object GridTransaccionesDBTableView1Montoars: TcxGridDBColumn
                Caption = 'Ars'
                DataBinding.FieldName = 'Montoars'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
              end
            end
            object cxGridLevel1: TcxGridLevel
              GridView = cxGridDBTableView1
              object GridPruebas: TcxGridLevel
                GridView = GridTransaccionesDBTableView1
              end
            end
          end
          object dxLayoutControl2Group_Root: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutControl2Group1: TdxLayoutGroup
              Caption = 'Par'#225'metros'
              LayoutDirection = ldHorizontal
              object dxLayoutControl2Item3: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Buscar Por'
                Control = edbuscarpor
                ControlOptions.AutoAlignment = False
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl2Item1: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Texto'
                Control = edbuscar
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl2Item2: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'F. Inicio'
                Control = dtFechaIni
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl2Item10: TdxLayoutItem
                Caption = 'F.Fin'
                Control = dtFechaFin
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutControl2Group2: TdxLayoutGroup
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              Caption = 'Entradas'
              object dxLayoutControl2Item4: TdxLayoutItem
                AutoAligns = [aaHorizontal]
                AlignVert = avClient
                Control = GridTransacciones
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
      end
    end
    object BtImprimir: TcxButton
      Left = 863
      Top = 425
      Width = 100
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 1
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = True
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      object dxLayoutControl1Group1: TdxLayoutGroup
        AutoAligns = []
        AlignHorz = ahClient
        AlignVert = avClient
        Caption = 'dgDatos'
        ShowCaption = False
        ShowBorder = False
        object dxLayoutControl1Item1: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avClient
          Caption = 'cxPageControl1'
          ShowCaption = False
          Control = cxPageControl1
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Group2: TdxLayoutGroup
          AutoAligns = []
          AlignHorz = ahRight
          AlignVert = avClient
          Caption = 'dgBotones'
          LookAndFeel = dmAppActions.lnfButtonGroup
          ShowCaption = False
          object dxLayoutControl1Item2: TdxLayoutItem
            Caption = 'cxButton1'
            ShowCaption = False
            Control = BtImprimir
            ControlOptions.ShowBorder = False
          end
        end
      end
    end
  end
  object spDetalle: TLMDSimplePanel [3]
    Left = 239
    Top = 41
    Width = 532
    Height = 314
    Bevel.StyleInner = bvFrameLowered
    Bevel.StyleOuter = bvFrameRaised
    Bevel.BorderWidth = 8
    Bevel.BorderInnerWidth = 2
    Bevel.LightColor = 12582911
    Bevel.Mode = bmCustom
    Bevel.StandardStyle = lsLowered
    Color = clMenuBar
    TabOrder = 2
    Visible = False
    object LMDLabel1: TLMDLabel
      Left = 11
      Top = 12
      Width = 397
      Height = 19
      Bevel.StyleInner = bvShadow
      Bevel.StyleOuter = bvShadow
      Bevel.WidthOuter = 2
      Bevel.LightColor = clBlack
      Bevel.Mode = bmCustom
      FontFX.LightColor = clSilver
      FontFX.ShadowColor = clBlack
      FontFX.Tracing = 1
      Alignment = agCenter
      AutoSize = False
      Color = clActiveCaption
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Options = []
      ParentColor = False
      ParentFont = False
      Transparent = False
      Caption = 'Detalle Web-Service desde Ars'
    end
    object btCancelC: TLMDButton
      Left = 319
      Top = 207
      Width = 80
      Height = 41
      Caption = '&Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      ButtonLayout.AlignText2Glyph = taBottom
      ButtonLayout.Spacing = 0
      ListIndex = 15
      NumGlyphs = 2
    end
    object btAceptaSer: TLMDButton
      Left = 225
      Top = 207
      Width = 80
      Height = 41
      Caption = '&Aceptar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      ButtonLayout.AlignText2Glyph = taBottom
      ButtonLayout.Spacing = 0
      ListIndex = 15
      NumGlyphs = 2
    end
    object E: TcxLabel
      Left = 17
      Top = 73
      Caption = 'Efectivo'
    end
    object cxLabel8: TcxLabel
      Left = 202
      Top = 73
      Caption = 'Tarjeta Credito'
    end
    object cxLabel9: TcxLabel
      Left = 17
      Top = 50
      Caption = 'Sucursal'
    end
    object cbExtSucursal: TcxExtLookupComboBox
      Left = 72
      Top = 46
      RepositoryItem = DM.elcSucursal
      Properties.CharCase = ecUpperCase
      Properties.View = DM.vwSucursal
      Properties.KeyFieldNames = 'SUCURSALID'
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 5
      Width = 327
    end
    object cxLabel10: TcxLabel
      Left = 17
      Top = 100
      Caption = 'Cheque'
    end
    object cxLabel11: TcxLabel
      Left = 19
      Top = 178
      Caption = 'Banco'
    end
    object cxMontoEFE: TcxMaskEdit
      Left = 73
      Top = 71
      Properties.MaxLength = 0
      TabOrder = 8
      Text = '0'
      Width = 109
    end
    object cxMontoTC: TcxMaskEdit
      Left = 284
      Top = 69
      Properties.MaxLength = 0
      TabOrder = 9
      Text = '0'
      Width = 117
    end
    object cxMontoCK: TcxMaskEdit
      Left = 73
      Top = 96
      Properties.MaxLength = 0
      TabOrder = 10
      Text = '0'
      Width = 109
    end
    object cxLabel2: TcxLabel
      Left = 203
      Top = 154
      Caption = 'N'#250'm. Cuadre'
    end
    object spTurno: TcxSpinEdit
      Left = 74
      Top = 151
      Properties.MinValue = 1.000000000000000000
      TabOrder = 12
      Value = 1
      Width = 109
    end
    object cxLabel3: TcxLabel
      Left = 17
      Top = 152
      Caption = 'Turno'
    end
    object txtCuadre: TcxTextEdit
      Left = 284
      Top = 150
      Properties.CharCase = ecUpperCase
      TabOrder = 14
      Width = 117
    end
    object cxLabel4: TcxLabel
      Left = 202
      Top = 180
      Caption = 'Fecha Dep'#243'sito'
    end
    object dtFechaDep: TcxDateEdit
      Left = 284
      Top = 176
      TabOrder = 16
      Width = 117
    end
    object cbExtBanco: TcxExtLookupComboBox
      Left = 72
      Top = 176
      RepositoryItem = DM.elcBanco
      Properties.CharCase = ecUpperCase
      Properties.View = DM.vwBanco
      Properties.KeyFieldNames = 'BankCode'
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 17
      Width = 124
    end
    object cxLabel5: TcxLabel
      Left = 203
      Top = 100
      Caption = 'Donaci'#243'n'
    end
    object cxMontoDON: TcxMaskEdit
      Left = 284
      Top = 96
      Properties.MaxLength = 0
      TabOrder = 19
      Text = '0'
      Width = 117
    end
    object cxMontoFS: TcxMaskEdit
      Left = 74
      Top = 123
      Properties.MaskKind = emkRegExpr
      Properties.MaxLength = 0
      TabOrder = 20
      Text = '0'
      Width = 109
    end
    object cxLabel6: TcxLabel
      Left = 17
      Top = 128
      Caption = 'Falt./Sob.'
    end
    object cxMontoCDEP: TcxMaskEdit
      Left = 284
      Top = 123
      Properties.MaxLength = 0
      TabOrder = 22
      Text = '0'
      Width = 117
    end
    object cxLabel7: TcxLabel
      Left = 202
      Top = 127
      Caption = 'Comp. Dep.'
    end
    object cxLabel12: TcxLabel
      Left = 17
      Top = 204
      Caption = 'Bco. Cta.'
    end
    object txtCuentaBanco: TcxTextEdit
      Left = 72
      Top = 200
      Properties.CharCase = ecUpperCase
      TabOrder = 25
      Width = 117
    end
    object cxGrid2: TcxGrid
      Left = 92
      Top = 123
      Width = 424
      Height = 114
      TabOrder = 26
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = True
      object cxGrid2DBTableView2: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.Insert.Enabled = False
        NavigatorButtons.Edit.Enabled = False
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
      end
      object cxGrid2Level1: TcxGridLevel
        GridView = cxGrid2DBTableView2
      end
    end
  end
  inherited formStorage: TJvFormStorage
    Left = 160
    Top = 196
  end
  inherited alEdit: TActionList
    Left = 161
    Top = 156
  end
  inherited pmCustom: TPopupMenu
    Left = 236
    Top = 156
  end
  object qrReclamo: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    OnCalcFields = qrReclamoCalcFields
    Parameters = <>
    SQL.Strings = (
      'Select  top 0 *  from PtReclamo r lef Join PtEntradaPaciente e '
      'On r.Muestrano=e.Muestrano'
      '')
    Left = 424
    Top = 160
    object qrReclamoReclamoid: TLargeintField
      FieldName = 'Reclamoid'
    end
    object qrReclamoMuestrano: TStringField
      FieldName = 'Muestrano'
    end
    object qrReclamoAfiliado: TStringField
      FieldName = 'Afiliado'
      Size = 25
    end
    object qrReclamoTipoPlan: TStringField
      FieldName = 'TipoPlan'
      Size = 50
    end
    object qrReclamoFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object qrReclamoMonto: TBCDField
      FieldName = 'Monto'
      Precision = 18
      Size = 0
    end
    object qrReclamoMontoafiliado: TFloatField
      FieldName = 'Montoafiliado'
    end
    object qrReclamoMontoars: TFloatField
      FieldName = 'Montoars'
    end
    object qrReclamoNumero: TIntegerField
      FieldName = 'Numero'
    end
    object qrReclamoNumerosession: TIntegerField
      FieldName = 'Numerosession'
    end
    object qrReclamoWebID: TIntegerField
      FieldName = 'WebID'
    end
    object qrReclamoBenVal: TIntegerField
      FieldName = 'BenVal'
    end
    object qrReclamoUserID: TStringField
      FieldName = 'UserID'
      Size = 10
    end
    object qrReclamoNombrePaciente: TStringField
      FieldName = 'NombrePaciente'
      Size = 80
    end
    object qrReclamoClienteNombre: TStringField
      FieldName = 'ClienteNombre'
      Size = 80
    end
    object qrReclamoEstado: TWordField
      FieldName = 'Estado'
    end
    object qrReclamoEstatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'Estatus'
      Calculated = True
    end
  end
  object dsReclamo: TDataSource
    DataSet = qrReclamo
    Left = 496
    Top = 160
  end
  object qrReclamoDetalle: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Filtered = True
    Parameters = <>
    SQL.Strings = (
      'Select * from PTReclamoDetalle'
      '')
    Left = 424
    Top = 193
    object qrReclamoDetalleReclamoid: TLargeintField
      FieldName = 'Reclamoid'
    end
    object qrReclamoDetalleMuestrano: TStringField
      FieldName = 'Muestrano'
    end
    object qrReclamoDetalleCobertura: TStringField
      FieldName = 'Cobertura'
    end
    object qrReclamoDetalleSecuencia: TIntegerField
      FieldName = 'Secuencia'
    end
    object qrReclamoDetalleDetalles: TStringField
      FieldName = 'Detalles'
      Size = 255
    end
    object qrReclamoDetalleMonto: TFloatField
      FieldName = 'Monto'
    end
    object qrReclamoDetalleMontoafiliado: TFloatField
      FieldName = 'Montoafiliado'
    end
    object qrReclamoDetalleMontoars: TFloatField
      FieldName = 'Montoars'
    end
  end
  object dsReclamoDetalle: TDataSource
    DataSet = qrReclamoDetalle
    Left = 496
    Top = 193
  end
  object cxGridStyles: TcxStyleRepository
    Left = 237
    Top = 196
    object stGrDatos: TcxStyle
      AssignedValues = [svColor]
      Color = clInfoBk
    end
    object stGrEdit: TcxStyle
    end
  end
end
