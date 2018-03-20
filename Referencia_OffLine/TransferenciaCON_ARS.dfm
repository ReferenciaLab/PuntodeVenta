inherited frmTransferenciaCON_ARS: TfrmTransferenciaCON_ARS
  ActiveControl = cxPageControl1
  Caption = 'Detalle Conciliaci'#243'n ARS'
  ClientHeight = 588
  ClientWidth = 970
  KeyPreview = True
  OnClose = nil
  OnPaint = nil
  OnShow = FormShow
  ExplicitWidth = 986
  ExplicitHeight = 626
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCaption: TPanel
    Width = 970
    Height = 3
    ExplicitWidth = 970
    ExplicitHeight = 3
  end
  object dxLayoutControl1: TdxLayoutControl [2]
    Left = 0
    Top = 3
    Width = 970
    Height = 585
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
          object cxGrid1: TcxGrid
            Left = 23
            Top = 77
            Width = 781
            Height = 250
            PopupMenu = MenuPedido
            TabOrder = 1
            LookAndFeel.Kind = lfUltraFlat
            LookAndFeel.NativeStyle = True
            object cxGrid1DBTableView1: TcxGridDBTableView
              OnKeyUp = cxGrid1DBTableView1KeyUp
              NavigatorButtons.ConfirmDelete = False
              OnCellClick = cxGrid1DBTableView1CellClick
              DataController.DataSource = dsConciliacionHead
              DataController.Filter.Active = True
              DataController.KeyFieldNames = 'ID'
              DataController.Summary.DefaultGroupSummaryItems = <
                item
                  Format = '###,###,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '###,###,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '###,###,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '###,###,##0.00'
                  Kind = skSum
                  Position = spFooter
                end>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '###,###,##0.00'
                  Kind = skSum
                  FieldName = 'BRUTO'
                end
                item
                  Format = '###,###,##0.00'
                  Kind = skSum
                  FieldName = 'DESCUENTO'
                end
                item
                  Format = '###,###,##0.00'
                  Kind = skSum
                  FieldName = 'SUBTOTAL'
                end
                item
                  Format = '###,###,##0.00'
                  Kind = skSum
                  FieldName = 'NETO'
                end
                item
                  Kind = skCount
                  Column = cxGrid1DBTableView1Seleccionar
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.FocusCellOnTab = True
              OptionsData.Appending = True
              OptionsData.DeletingConfirmation = False
              OptionsView.ColumnAutoWidth = True
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              object cxGrid1DBTableView1Seleccionar: TcxGridDBColumn
                Caption = 'Selecci'#243'n'
                DataBinding.FieldName = 'Seleccionar'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.DisplayUnchecked = '0'
                Properties.DisplayGrayed = '0'
                HeaderAlignmentHorz = taCenter
                Styles.Content = dmAppActions.cxStyle52
                Styles.Footer = dmAppActions.cxStyle52
                Width = 71
              end
              object cxGrid1DBTableView1Fecha: TcxGridDBColumn
                DataBinding.FieldName = 'Fecha'
                PropertiesClassName = 'TcxComboBoxProperties'
                Properties.Items.Strings = (
                  'RD'
                  'US')
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 59
              end
              object cxGrid1DBTableView1Cuenta_Cliente: TcxGridDBColumn
                Caption = 'Grupo Ars'
                DataBinding.FieldName = 'GrupoArs'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 72
              end
              object cxGrid1DBTableView1Nombre: TcxGridDBColumn
                Caption = 'Nombre Cliente'
                DataBinding.FieldName = 'NombreCliente'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 167
              end
              object cxGrid1DBTableView1NombreArchivo: TcxGridDBColumn
                Caption = 'Nombre Archivo'
                DataBinding.FieldName = 'NombreArchivo'
                PropertiesClassName = 'TcxComboBoxProperties'
                Properties.Items.Strings = (
                  'Pedido de Ventas'
                  'Diario'
                  'Suscripcion'
                  'Pedido Devuelto'
                  'Articulos Requeridos')
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 133
              end
              object cxGrid1DBTableView1Estado: TcxGridDBColumn
                DataBinding.FieldName = 'Estado'
                PropertiesClassName = 'TcxComboBoxProperties'
                Properties.Items.Strings = (
                  'Abierto'
                  'Pre-Factura'
                  'Facturado'
                  'Cancelado')
                HeaderAlignmentHorz = taCenter
                Width = 63
              end
              object cxGrid1DBTableView1Comentario: TcxGridDBColumn
                DataBinding.FieldName = 'Comentario'
                HeaderAlignmentHorz = taCenter
                Width = 139
              end
            end
            object cxGrid1Level1: TcxGridLevel
              GridView = cxGrid1DBTableView1
            end
          end
          object cxGrid2: TcxGrid
            Left = 23
            Top = 365
            Width = 784
            Height = 202
            PopupMenu = MenuArticulo
            TabOrder = 2
            LookAndFeel.Kind = lfUltraFlat
            LookAndFeel.NativeStyle = True
            object cxGrid2DBTableView2: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              NavigatorButtons.Insert.Enabled = False
              DataController.DataSource = dsConciliacion
              DataController.KeyFieldNames = 'ID;Num_Aprobacion'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '###,###'
                  Kind = skCount
                end
                item
                  Format = '###,###,##0.00'
                  Kind = skSum
                end
                item
                  Format = '###'
                end
                item
                  Format = '###,###,##0.00'
                  Kind = skSum
                  Column = cxGrid2DBTableView2Monto_Reclamdo
                end
                item
                  Format = '###,###,##0.00'
                  Kind = skSum
                  Column = cxGrid2DBTableView2Monto_Aprobado
                end
                item
                  Format = '###,###,##0.00'
                  Kind = skSum
                  Column = cxGrid2DBTableView2Diferencia
                end
                item
                  Kind = skCount
                end
                item
                  Format = '###,###'
                  Kind = skCount
                  Column = cxGrid2DBTableView2ClienteID
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsData.Appending = True
              OptionsData.DeletingConfirmation = False
              OptionsView.ColumnAutoWidth = True
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              object cxGrid2DBTableView2ClienteID: TcxGridDBColumn
                DataBinding.FieldName = 'ClienteID'
                HeaderAlignmentHorz = taCenter
                Width = 70
              end
              object cxGrid2DBTableView2Num_Factura: TcxGridDBColumn
                Caption = 'Factura'
                DataBinding.FieldName = 'Num_Fact'
                HeaderAlignmentHorz = taCenter
                Width = 59
              end
              object cxGrid2DBTableView2Fecha: TcxGridDBColumn
                DataBinding.FieldName = 'Fecha'
                HeaderAlignmentHorz = taCenter
                Width = 55
              end
              object cxGrid2DBTableView2Muestrano: TcxGridDBColumn
                Caption = 'Entrada'
                DataBinding.FieldName = 'Muestrano'
                HeaderAlignmentHorz = taCenter
                Width = 67
              end
              object cxGrid2DBTableView2NombrePaciente: TcxGridDBColumn
                Caption = 'Nombre Paciente'
                DataBinding.FieldName = 'NombrePaciente'
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                MinWidth = 80
                Width = 143
              end
              object cxGrid2DBTableView2PolizaID: TcxGridDBColumn
                Caption = 'Afiliado'
                DataBinding.FieldName = 'PolizaID'
                HeaderAlignmentHorz = taCenter
                Width = 56
              end
              object cxGrid2DBTableView2Num_Aprobacion: TcxGridDBColumn
                Caption = 'No. Aprob.'
                DataBinding.FieldName = 'Num_Aprobacion'
                HeaderAlignmentHorz = taCenter
                MinWidth = 30
                Width = 86
              end
              object cxGrid2DBTableView2Monto_Reclamdo: TcxGridDBColumn
                Caption = 'Reclamado'
                DataBinding.FieldName = 'Monto_Reclamdo'
                HeaderAlignmentHorz = taCenter
                Styles.Content = dmAppActions.cxStyle52
                Styles.Footer = dmAppActions.cxStyle52
                Width = 71
              end
              object cxGrid2DBTableView2Monto_Aprobado: TcxGridDBColumn
                Caption = 'Aprobado'
                DataBinding.FieldName = 'Monto_Aprobado'
                Styles.Content = dmAppActions.cxStyle52
                Styles.Footer = dmAppActions.cxStyle52
                Width = 73
              end
              object cxGrid2DBTableView2Diferencia: TcxGridDBColumn
                Caption = 'Dif.'
                DataBinding.FieldName = 'Diferencia'
                HeaderAlignmentHorz = taRightJustify
                Styles.Content = dmAppActions.cxStyle52
                Styles.Footer = dmAppActions.cxStyle52
                Width = 55
              end
              object cxGrid2DBTableView2ID: TcxGridDBColumn
                DataBinding.FieldName = 'ID'
                Visible = False
                Width = 20
              end
              object cxGrid2DBTableView2Estatus: TcxGridDBColumn
                Caption = 'Est.'
                DataBinding.FieldName = 'Estatus'
                PropertiesClassName = 'TcxComboBoxProperties'
                Properties.Items.Strings = (
                  'Incompleto'
                  'No Encontrado')
                HeaderAlignmentHorz = taRightJustify
                Width = 43
              end
              object cxGrid2DBTableView2RecID: TcxGridDBColumn
                DataBinding.FieldName = 'RecID'
                Visible = False
                Width = 20
              end
            end
            object cxGrid2Level1: TcxGridLevel
              GridView = cxGrid2DBTableView2
            end
          end
          object cboEstado: TcxComboBox
            Left = 61
            Top = 36
            Properties.Items.Strings = (
              ''
              'Abierta'
              'Posteada'
              '')
            Properties.MaxLength = 0
            Properties.OEMConvert = True
            Properties.OnChange = cboEstadoPropertiesChange
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 0
            Width = 150
          end
          object dxLayoutControl2Group_Root: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutControl2Group1: TdxLayoutGroup
              Caption = 'Filtro'
              LayoutDirection = ldHorizontal
              object dxLayoutControl2Item12: TdxLayoutItem
                Caption = 'Estado'
                Control = cboEstado
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutControl2Group2: TdxLayoutGroup
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              Caption = 'Lineas'
              ShowCaption = False
              object dxLayoutControl2Item4: TdxLayoutItem
                AutoAligns = [aaHorizontal]
                AlignVert = avClient
                Caption = 'cxGrid1'
                ShowCaption = False
                Control = cxGrid1
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutControl2Group3: TdxLayoutGroup
              Caption = 'Reclamaciones'
              LayoutDirection = ldHorizontal
              object dxLayoutControl2Group4: TdxLayoutGroup
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                Caption = 'Comentario'
                ShowCaption = False
                ShowBorder = False
                object dxLayoutControl2Item9: TdxLayoutItem
                  Control = cxGrid2
                  ControlOptions.ShowBorder = False
                end
              end
            end
          end
        end
      end
    end
    object BtFunciones: TcxButton
      Left = 838
      Top = 69
      Width = 120
      Height = 25
      Hint = 'Funciones'
      Caption = 'F8 = &Funciones'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      DropDownMenu = MenuFunciones
      Kind = cxbkDropDown
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = True
    end
    object btProforma: TcxButton
      Left = 838
      Top = 7
      Width = 120
      Height = 25
      Hint = 'Transferir Ordenes de Ventas a SAP'
      Caption = 'F6 = &Proforma'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      DropDownMenu = MenuProforma
      Kind = cxbkDropDown
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = True
    end
    object btConsulta: TcxButton
      Left = 838
      Top = 38
      Width = 120
      Height = 25
      Hint = 'Transferir Ordenes de Ventas a SAP'
      Caption = 'F7 = &Consulta'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      DropDownMenu = MenuConsultas
      Kind = cxbkDropDown
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
      end
      object dxLayoutControl1Group2: TdxLayoutGroup
        AutoAligns = []
        AlignHorz = ahRight
        AlignVert = avClient
        Caption = 'dgBotones'
        LookAndFeel = dmAppActions.lnfButtonGroup
        ShowCaption = False
        object dxLayoutControl1Item5: TdxLayoutItem
          Caption = 'New Item'
          ShowCaption = False
          Control = btProforma
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item3: TdxLayoutItem
          Caption = 'New Item'
          ShowCaption = False
          Control = btConsulta
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item4: TdxLayoutItem
          Caption = 'cxButton3'
          ShowCaption = False
          Control = BtFunciones
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object spMensaje: TLMDSimplePanel [3]
    Left = 203
    Top = 125
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
    TabOrder = 2
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
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Layout = tlCenter
      ExplicitWidth = 383
      ExplicitHeight = 24
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
  object spCliente: TLMDSimplePanel [4]
    Left = 212
    Top = 106
    Width = 432
    Height = 210
    Bevel.StyleInner = bvFrameLowered
    Bevel.StyleOuter = bvFrameRaised
    Bevel.BorderWidth = 8
    Bevel.BorderInnerWidth = 2
    Bevel.LightColor = 12582911
    Bevel.Mode = bmCustom
    Bevel.StandardStyle = lsLowered
    Color = clMenuBar
    TabOrder = 3
    Visible = False
    object LMDLabel2: TLMDLabel
      Left = 11
      Top = 12
      Width = 411
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
      Caption = 'Crea Pedido de Venta'
    end
    object btCancelar: TLMDButton
      Left = 333
      Top = 145
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
      OnClick = btCancelarClick
      ButtonLayout.AlignText2Glyph = taBottom
      ButtonLayout.Spacing = 0
      ListIndex = 15
      NumGlyphs = 2
    end
    object btAceptar: TLMDButton
      Left = 247
      Top = 145
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
      OnClick = btAceptarClick
      ButtonLayout.AlignText2Glyph = taBottom
      ButtonLayout.Spacing = 0
      ListIndex = 15
      NumGlyphs = 2
    end
    object txtNombreCliente: TcxTextEdit
      Left = 98
      Top = 94
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      TabOrder = 2
      Width = 317
    end
    object cxLabel4: TcxLabel
      Left = 16
      Top = 73
      Caption = 'ClienteID'
    end
    object cxLabel5: TcxLabel
      Left = 15
      Top = 96
      Caption = 'Nombre Cliente'
    end
    object cxLabel1: TcxLabel
      Left = 16
      Top = 50
      Caption = 'Buscar Cliente'
    end
    object cbExtCliente: TcxExtLookupComboBox
      Left = 97
      Top = 45
      RepositoryItem = DM.elcCliente
      Properties.CharCase = ecUpperCase
      Properties.View = DM.vwClientes
      Properties.KeyFieldNames = 'ClienteID'
      Properties.ListFieldItem = DM.vwClientesNombre
      Properties.OnChange = cbExtClientePropertiesChange
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 6
      Width = 318
    end
    object cxLabel2: TcxLabel
      Left = 16
      Top = 122
      Caption = 'Moneda '
    end
    object txtMonedaID: TcxTextEdit
      Left = 98
      Top = 118
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      TabOrder = 8
      Width = 46
    end
    object txtClienteID: TcxTextEdit
      Left = 98
      Top = 70
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      StyleDisabled.BorderColor = clBtnShadow
      StyleDisabled.TextColor = clBtnShadow
      TabOrder = 9
      Width = 104
    end
    object cxLabel3: TcxLabel
      Left = 16
      Top = 146
      Caption = 'Fecha Desde '
    end
    object cxLabel6: TcxLabel
      Left = 15
      Top = 169
      Caption = 'Fecha Hasta  '
    end
    object FechaIni: TcxDateEdit
      Left = 98
      Top = 142
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 12
      Width = 121
    end
    object FechaFin: TcxDateEdit
      Left = 98
      Top = 165
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 13
      Width = 121
    end
  end
  object spServicio: TLMDSimplePanel [5]
    Left = 212
    Top = 106
    Width = 432
    Height = 210
    Bevel.StyleInner = bvFrameLowered
    Bevel.StyleOuter = bvFrameRaised
    Bevel.BorderWidth = 8
    Bevel.BorderInnerWidth = 2
    Bevel.LightColor = 12582911
    Bevel.Mode = bmCustom
    Bevel.StandardStyle = lsLowered
    Color = clMenuBar
    TabOrder = 4
    Visible = False
    object LMDLabel1: TLMDLabel
      Left = 11
      Top = 12
      Width = 411
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
      Caption = 'Crea Servicio'
    end
    object btCancelSer: TLMDButton
      Left = 333
      Top = 145
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
      OnClick = btCancelSerClick
      ButtonLayout.AlignText2Glyph = taBottom
      ButtonLayout.Spacing = 0
      ListIndex = 15
      NumGlyphs = 2
    end
    object btAceptaSer: TLMDButton
      Left = 247
      Top = 145
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
    object txtNombreServicio: TcxTextEdit
      Left = 98
      Top = 91
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      TabOrder = 2
      Width = 317
    end
    object cxLabel7: TcxLabel
      Left = 16
      Top = 73
      Caption = 'ServicioID'
    end
    object cxLabel8: TcxLabel
      Left = 16
      Top = 96
      Caption = 'Nombre Servicio'
    end
    object cxLabel9: TcxLabel
      Left = 16
      Top = 50
      Caption = 'Buscar Servicio'
    end
    object cbExtServicio: TcxExtLookupComboBox
      Left = 97
      Top = 46
      RepositoryItem = DM.elcPruebas
      Properties.CharCase = ecUpperCase
      Properties.View = DM.vwClientes
      Properties.KeyFieldNames = 'ClienteID'
      Properties.ListFieldItem = DM.vwClientesNombre
      Properties.OnChange = cbExtServicioPropertiesChange
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 6
      Width = 318
    end
    object cxLabel10: TcxLabel
      Left = 16
      Top = 119
      Caption = 'Moneda '
    end
    object txtServicioID: TcxTextEdit
      Left = 98
      Top = 69
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      StyleDisabled.BorderColor = clBtnShadow
      StyleDisabled.TextColor = clBtnShadow
      TabOrder = 8
      Width = 90
    end
    object cxLabel11: TcxLabel
      Left = 16
      Top = 168
      Caption = 'Monto'
    end
    object cxMonto: TcxMaskEdit
      Left = 99
      Top = 164
      Properties.MaxLength = 0
      TabOrder = 10
      Width = 89
    end
    object cboMonedaID: TcxComboBox
      Left = 99
      Top = 116
      Properties.Items.Strings = (
        'RD'
        'US')
      TabOrder = 11
      Width = 89
    end
    object cxLabel12: TcxLabel
      Left = 16
      Top = 143
      Caption = 'Cantidad'
    end
    object spCantidad: TcxSpinEdit
      Left = 99
      Top = 141
      Properties.MinValue = 1.000000000000000000
      TabOrder = 13
      Value = 1
      Width = 89
    end
  end
  inherited formStorage: TJvFormStorage
    Left = 862
    Top = 181
  end
  inherited alEdit: TActionList
    Left = 886
    Top = 166
  end
  inherited pmCustom: TPopupMenu
    Left = 929
    Top = 150
  end
  inherited cxIntl1: TcxIntl
    Left = 896
    Top = 276
  end
  object cxGridStyles: TcxStyleRepository
    Left = 913
    Top = 189
    object stGrDatos: TcxStyle
      AssignedValues = [svColor]
      Color = clInfoBk
    end
    object stGrEdit: TcxStyle
    end
  end
  object dsDatos: TDataSource
    DataSet = qrConciliacion
    Left = 252
    Top = 311
  end
  object JvMemoryData1: TJvMemoryData
    FieldDefs = <
      item
        Name = 'Seleccion'
        DataType = ftBoolean
      end
      item
        Name = 'PruebaID'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Descripcion'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'Precio'
        DataType = ftCurrency
      end
      item
        Name = 'PrecioDolares'
        DataType = ftCurrency
      end>
    Left = 320
    Top = 296
    object JvMemoryData1Seleccionar: TBooleanField
      FieldName = 'Seleccionar'
    end
    object JvMemoryData1Pedido_Venta: TStringField
      Alignment = taCenter
      FieldName = 'Pedido_Venta'
      Size = 25
    end
    object JvMemoryData1Cuenta_Cliente: TStringField
      Alignment = taCenter
      FieldName = 'Cuenta_Cliente'
      Size = 10
    end
    object JvMemoryData1Nombre: TStringField
      FieldName = 'Nombre'
      Size = 80
    end
    object JvMemoryData1Tipo_Pedido: TStringField
      Alignment = taCenter
      FieldName = 'Tipo_Pedido'
      Size = 50
    end
    object JvMemoryData1Estado: TStringField
      Alignment = taCenter
      FieldName = 'Estado'
    end
    object JvMemoryData1MonedaID: TStringField
      Alignment = taCenter
      FieldName = 'MonedaID'
      Size = 5
    end
    object JvMemoryData1GrupoID_Gen: TStringField
      FieldName = 'GrupoID_Gen'
      Size = 10
    end
    object JvMemoryData1ClienteID_Gen: TStringField
      FieldName = 'ClienteID_Gen'
      Size = 10
    end
    object JvMemoryData1Fecha_Inicio: TDateTimeField
      FieldName = 'Fecha_Inicio'
    end
    object JvMemoryData1Fecha_Fin: TDateTimeField
      FieldName = 'Fecha_Fin'
    end
    object JvMemoryData1Comentario: TStringField
      FieldName = 'Comentario'
      Size = 100
    end
    object JvMemoryData1RecID: TLargeintField
      FieldName = 'RecID'
    end
  end
  object JvMemoryData2: TJvMemoryData
    FieldDefs = <
      item
        Name = 'Seleccion'
        DataType = ftBoolean
      end
      item
        Name = 'PruebaID'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Descripcion'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'Precio'
        DataType = ftCurrency
      end
      item
        Name = 'PrecioDolares'
        DataType = ftCurrency
      end>
    Left = 176
    Top = 440
    object JvMemoryData2PruebaID: TStringField
      FieldName = 'PruebaID'
    end
    object JvMemoryData2SucursalID: TStringField
      FieldName = 'SucursalID'
      Size = 10
    end
    object JvMemoryData2Cantidad: TIntegerField
      FieldName = 'Cantidad'
    end
    object JvMemoryData2Unidad: TStringField
      FieldName = 'Unidad'
      Size = 10
    end
    object JvMemoryData2Precio_Unitario: TCurrencyField
      FieldName = 'Precio_Unitario'
    end
    object JvMemoryData2Descuento: TCurrencyField
      FieldName = 'Descuento'
    end
    object JvMemoryData2Porcentaje_Desc: TCurrencyField
      FieldName = 'Porcentaje_Desc'
    end
    object JvMemoryData2Neto: TCurrencyField
      FieldName = 'Neto'
    end
    object JvMemoryData2Descripcion: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
    object JvMemoryData2Muestrano: TStringField
      FieldName = 'Muestrano'
    end
    object JvMemoryData2Nota_Debito: TBooleanField
      FieldName = 'Nota_Debito'
    end
    object JvMemoryData2RecID: TLargeintField
      FieldName = 'RecID'
    end
  end
  object qrConciliacion: TADOQuery
    Connection = DM.DBSAP
    CursorType = ctStatic
    OnCalcFields = qrConciliacionCalcFields
    CommandTimeout = 100000
    Parameters = <>
    SQL.Strings = (
      
        ' Select  Distinct c.Fecha,c.Muestrano, c.NombrePaciente, c.Poliz' +
        'aID,'
      ' Num_Aprobacion, Monto_Reclamdo, Monto_Aprobado, Diferencia, ID,'
      'Case Estatus When '#39'A'#39' Then '#39'Abierta'#39
      '          When '#39'P'#39' Then '#39'Posteada'#39
      
        '          end As Estatus,c.RecID,c.ClienteID,o.DocNum as Num_Fac' +
        't'
      
        '          From dbo.ConciliacionArs c left join dbo.PedidoVenta p' +
        ' on'
      #9#9'  c.ClienteID=p.ClienteID And c.Num_Aprobacion=p.AprobacionNo'
      #9#9'  Left Join LAB_REFERENCIA.dbo.OINV o On'
      
        #9#9'  p.ClienteID COLLATE SQL_Latin1_General_CP850_CI_AS=o.CardCod' +
        'e And p.U_Numero COLLATE SQL_Latin1_General_CP850_CI_AS=o.U_PedN' +
        'um'
      'WHERE Estatus = '#39'Abierta'#39
      '       Order by Fecha')
    Left = 224
    Top = 401
    object qrConciliacionFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object qrConciliacionMuestrano: TStringField
      FieldName = 'Muestrano'
    end
    object qrConciliacionNombrePaciente: TStringField
      FieldName = 'NombrePaciente'
      Size = 80
    end
    object qrConciliacionPolizaID: TStringField
      FieldName = 'PolizaID'
      Size = 80
    end
    object qrConciliacionNum_Aprobacion: TStringField
      FieldName = 'Num_Aprobacion'
    end
    object qrConciliacionMonto_Reclamdo: TBCDField
      FieldName = 'Monto_Reclamdo'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrConciliacionMonto_Aprobado: TBCDField
      FieldName = 'Monto_Aprobado'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrConciliacionDiferencia: TBCDField
      FieldName = 'Diferencia'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrConciliacionID: TGuidField
      FieldName = 'ID'
      FixedChar = True
      Size = 38
    end
    object qrConciliacionEstatus: TStringField
      FieldName = 'Estatus'
      ReadOnly = True
      Size = 8
    end
    object qrConciliacionRecID: TLargeintField
      FieldName = 'RecID'
    end
    object qrConciliacionNombreCliente: TStringField
      FieldKind = fkCalculated
      FieldName = 'NombreCliente'
      Size = 100
      Calculated = True
    end
    object qrConciliacionDesc_Estado: TStringField
      FieldKind = fkCalculated
      FieldName = 'Desc_Estado'
      Size = 50
      Calculated = True
    end
    object qrConciliacionComentario: TStringField
      FieldKind = fkCalculated
      FieldName = 'Comentario'
      Size = 100
      Calculated = True
    end
    object qrConciliacionClienteID: TStringField
      FieldName = 'ClienteID'
    end
    object qrConciliacionNum_Fact: TIntegerField
      FieldName = 'Num_Fact'
    end
  end
  object MenuFunciones: TPopupMenu
    Left = 872
    Top = 104
    object CargarPedidodeVenta1: TMenuItem
      Caption = 'Cargar Conciliaci'#243'n'
      OnClick = CargarPedidodeVenta1Click
    end
    object TransferirPedidoSAP1: TMenuItem
      Caption = 'Postear Conciliaci'#243'n'
      OnClick = TransferirPedidoSAP1Click
    end
    object BorrarPedido1: TMenuItem
      Caption = 'Borrar Conciliaci'#243'n'
      OnClick = BorrarPedido1Click
    end
  end
  object MenuPedido: TPopupMenu
    Left = 912
    Top = 112
    object AadirPedido1: TMenuItem
      Caption = 'A'#241'adir Conciliacion Manual'
      OnClick = AadirPedido1Click
    end
    object BorrarPedido2: TMenuItem
      Caption = 'Borrar Conciliaci'#243'n'
      OnClick = BorrarPedido2Click
    end
    object MarcarTodosRegistros1: TMenuItem
      Caption = 'Marcar Todos Registros'
      OnClick = MarcarTodosRegistros1Click
    end
    object DesmarcarTodosRegistros1: TMenuItem
      Caption = 'Desmarcar Todos Registros'
      OnClick = DesmarcarTodosRegistros1Click
    end
    object ImprimirConciliacion1: TMenuItem
      Caption = 'Imprimir Conciliacion'
      OnClick = ImprimirConciliacion1Click
    end
  end
  object MenuArticulo: TPopupMenu
    Left = 832
    Top = 112
    object EliminarReclamacion1: TMenuItem
      Caption = 'Eliminar Reclamaci'#243'n'
      OnClick = EliminarReclamacion1Click
    end
  end
  object MenuProforma: TPopupMenu
    Left = 928
    Top = 176
    object Factura: TMenuItem
      Caption = 'Factura'
    end
  end
  object MenuConsultas: TPopupMenu
    Left = 832
    Top = 144
    object DetalleFacturacion: TMenuItem
      Caption = 'Detalle de Facturaci'#243'n'
    end
    object ImprimirDetalleTodos1: TMenuItem
      Caption = 'Imprimir Detalle Todos'
    end
  end
  object qrConciliacion_Head: TADOQuery
    Connection = DM.DBSAP
    CursorType = ctStatic
    CommandTimeout = 100000
    Parameters = <>
    SQL.Strings = (
      '       Select ID, GrupoArs, NombreCliente,  Fecha, Comentario,'
      '        Seleccionar, NombreArchivo,'
      '       Case Estado When '#39'A'#39' Then '#39'Abierta'#39
      '       When '#39'P'#39' Then '#39'Posteado'#39' end As Estado'
      '        From ConciliacionArs_Head'
      '       WHERE Estado = '#39'A'#39)
    Left = 240
    Top = 273
    object qrConciliacion_HeadID: TGuidField
      FieldName = 'ID'
      FixedChar = True
      Size = 38
    end
    object qrConciliacion_HeadNombreCliente: TStringField
      FieldName = 'NombreCliente'
      Size = 100
    end
    object qrConciliacion_HeadFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object qrConciliacion_HeadComentario: TStringField
      FieldName = 'Comentario'
      Size = 100
    end
    object qrConciliacion_HeadSeleccionar: TBooleanField
      FieldName = 'Seleccionar'
    end
    object qrConciliacion_HeadEstado: TStringField
      FieldName = 'Estado'
      ReadOnly = True
      Size = 8
    end
    object qrConciliacion_HeadNombreArchivo: TStringField
      FieldName = 'NombreArchivo'
      Size = 100
    end
    object qrConciliacion_HeadGrupoArs: TStringField
      FieldName = 'GrupoArs'
    end
  end
  object dsConciliacionHead: TDataSource
    DataSet = qrConciliacion_Head
    Left = 284
    Top = 271
  end
  object qrConc: TADOQuery
    Connection = DM.DBSAP
    CursorType = ctStatic
    CommandTimeout = 1000000
    Parameters = <>
    Left = 432
    Top = 289
  end
  object qrConcL: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    CommandTimeout = 1000000
    Parameters = <>
    Left = 480
    Top = 289
  end
  object dsConciliacion: TDataSource
    DataSet = qrConciliacion
    Left = 276
    Top = 415
  end
  object ppRptConciliacionArs: TppReport
    AutoStop = False
    DataPipeline = ppRepConciliacionARS
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Letter (8.5" x 11")'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 279401
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
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 65
    Top = 202
    Version = '10.04'
    mmColumnWidth = 0
    DataPipelineName = 'ppRepConciliacionARS'
    object ppHeaderBand16: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 39423
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
      object ppLabel237: TppLabel
        UserName = 'Label152'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Listado de Conciliacion de ARS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 2117
        mmTop = 8731
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
        mmHeight = 4191
        mmLeft = 204259
        mmTop = 15875
        mmWidth = 13293
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
        mmLeft = 219340
        mmTop = 15875
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
        mmLeft = 219340
        mmTop = 11113
        mmWidth = 5842
        BandType = 0
      end
      object ppLabel239: TppLabel
        UserName = 'Label154'
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
        mmLeft = 203994
        mmTop = 11113
        mmWidth = 13674
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
        mmHeight = 4191
        mmLeft = 204259
        mmTop = 20373
        mmWidth = 13081
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
        mmHeight = 4191
        mmLeft = 219340
        mmTop = 20373
        mmWidth = 14055
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        Brush.Color = cl3DDkShadow
        mmHeight = 11906
        mmLeft = 265
        mmTop = 26723
        mmWidth = 264055
        BandType = 0
      end
      object ppLabel246: TppLabel
        UserName = 'Label185'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Fecha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 56621
        mmTop = 34660
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel250: TppLabel
        UserName = 'Label192'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'No. Laboratorio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 76465
        mmTop = 34660
        mmWidth = 26194
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Paciente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 105304
        mmTop = 34131
        mmWidth = 42863
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Num. Aprob.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 151342
        mmTop = 34396
        mmWidth = 19897
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Aprobado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 194998
        mmTop = 34396
        mmWidth = 16669
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Diferencia'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 214842
        mmTop = 34396
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Reclamado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 173567
        mmTop = 34396
        mmWidth = 18521
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Estatus'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 237332
        mmTop = 34660
        mmWidth = 21696
        BandType = 0
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NombreCliente'
        DataPipeline = ppRepConciliacionARS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppRepConciliacionARS'
        mmHeight = 5821
        mmLeft = 2117
        mmTop = 14288
        mmWidth = 188119
        BandType = 0
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Comentario'
        DataPipeline = ppRepConciliacionARS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppRepConciliacionARS'
        mmHeight = 5821
        mmLeft = 2117
        mmTop = 20373
        mmWidth = 188119
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ClienteID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 4233
        mmTop = 34660
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Factura'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 29369
        mmTop = 34661
        mmWidth = 17463
        BandType = 0
      end
    end
    object ppDetailBand21: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppDBText218: TppDBText
        UserName = 'DBText163'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Fecha'
        DataPipeline = ppRepConciliacionARS
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppRepConciliacionARS'
        mmHeight = 3440
        mmLeft = 55563
        mmTop = 794
        mmWidth = 16404
        BandType = 4
      end
      object ppDBText223: TppDBText
        UserName = 'DBText168'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Muestrano'
        DataPipeline = ppRepConciliacionARS
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppRepConciliacionARS'
        mmHeight = 3440
        mmLeft = 77258
        mmTop = 794
        mmWidth = 23019
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'NombrePaciente'
        DataPipeline = ppRepConciliacionARS
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppRepConciliacionARS'
        mmHeight = 3440
        mmLeft = 104511
        mmTop = 794
        mmWidth = 44450
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Num_Aprobacion'
        DataPipeline = ppRepConciliacionARS
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppRepConciliacionARS'
        mmHeight = 3440
        mmLeft = 151871
        mmTop = 794
        mmWidth = 19579
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Monto_Aprobado'
        DataPipeline = ppRepConciliacionARS
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppRepConciliacionARS'
        mmHeight = 3440
        mmLeft = 194469
        mmTop = 794
        mmWidth = 17727
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Monto_Reclamdo'
        DataPipeline = ppRepConciliacionARS
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppRepConciliacionARS'
        mmHeight = 3429
        mmLeft = 173567
        mmTop = 794
        mmWidth = 17727
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Diferencia'
        DataPipeline = ppRepConciliacionARS
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppRepConciliacionARS'
        mmHeight = 3440
        mmLeft = 214313
        mmTop = 794
        mmWidth = 17727
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Desc_Estado'
        DataPipeline = ppRepConciliacionARS
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppRepConciliacionARS'
        mmHeight = 3429
        mmLeft = 235215
        mmTop = 794
        mmWidth = 28046
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ClienteID'
        DataPipeline = ppRepConciliacionARS
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppRepConciliacionARS'
        mmHeight = 3440
        mmLeft = 5292
        mmTop = 795
        mmWidth = 16404
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Num_Fact'
        DataPipeline = ppRepConciliacionARS
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppRepConciliacionARS'
        mmHeight = 3440
        mmLeft = 30163
        mmTop = 794
        mmWidth = 21167
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
        Caption = 'Total Registros :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 1852
        mmTop = 2910
        mmWidth = 26723
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
        mmLeft = 30692
        mmTop = 2910
        mmWidth = 16404
        BandType = 7
      end
    end
  end
  object ppRepConciliacionARS: TppDBPipeline
    DataSource = dsConciliacion
    UserName = 'ppRepConciliacionARS'
    Left = 171
    Top = 200
    object ppRepConciliacionARSppField1: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 0
      Position = 0
    end
    object ppRepConciliacionARSppField2: TppField
      FieldAlias = 'Muestrano'
      FieldName = 'Muestrano'
      FieldLength = 20
      DisplayWidth = 20
      Position = 1
    end
    object ppRepConciliacionARSppField3: TppField
      FieldAlias = 'NombrePaciente'
      FieldName = 'NombrePaciente'
      FieldLength = 80
      DisplayWidth = 80
      Position = 2
    end
    object ppRepConciliacionARSppField4: TppField
      FieldAlias = 'PolizaID'
      FieldName = 'PolizaID'
      FieldLength = 80
      DisplayWidth = 80
      Position = 3
    end
    object ppRepConciliacionARSppField5: TppField
      FieldAlias = 'Num_Aprobacion'
      FieldName = 'Num_Aprobacion'
      FieldLength = 20
      DisplayWidth = 20
      Position = 4
    end
    object ppRepConciliacionARSppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'Monto_Reclamdo'
      FieldName = 'Monto_Reclamdo'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 29
      Position = 5
    end
    object ppRepConciliacionARSppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'Monto_Aprobado'
      FieldName = 'Monto_Aprobado'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 29
      Position = 6
    end
    object ppRepConciliacionARSppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'Diferencia'
      FieldName = 'Diferencia'
      FieldLength = 12
      DataType = dtDouble
      DisplayWidth = 29
      Position = 7
    end
    object ppRepConciliacionARSppField9: TppField
      FieldAlias = 'ID'
      FieldName = 'ID'
      FieldLength = 38
      DataType = dtGUID
      DisplayWidth = 38
      Position = 8
    end
    object ppRepConciliacionARSppField10: TppField
      FieldAlias = 'Estatus'
      FieldName = 'Estatus'
      FieldLength = 8
      DisplayWidth = 8
      Position = 9
    end
    object ppRepConciliacionARSppField11: TppField
      FieldAlias = 'RecID'
      FieldName = 'RecID'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 10
    end
    object ppRepConciliacionARSppField12: TppField
      FieldAlias = 'NombreCliente'
      FieldName = 'NombreCliente'
      FieldLength = 100
      DisplayWidth = 100
      Position = 11
    end
    object ppRepConciliacionARSppField13: TppField
      FieldAlias = 'Desc_Estado'
      FieldName = 'Desc_Estado'
      FieldLength = 50
      DisplayWidth = 50
      Position = 12
    end
    object ppRepConciliacionARSppField14: TppField
      FieldAlias = 'Comentario'
      FieldName = 'Comentario'
      FieldLength = 100
      DisplayWidth = 100
      Position = 13
    end
    object ppRepConciliacionARSppField15: TppField
      FieldAlias = 'ClienteID'
      FieldName = 'ClienteID'
      FieldLength = 20
      DisplayWidth = 20
      Position = 14
    end
    object ppRepConciliacionARSppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'Num_Fact'
      FieldName = 'Num_Fact'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 15
    end
  end
end
