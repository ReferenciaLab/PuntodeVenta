inherited frmTransferenciaPOSV_SAP: TfrmTransferenciaPOSV_SAP
  Caption = 'Detalles del Pedido de Venta'
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
              DataController.DataSource = dsPedidoHead
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
                Width = 70
              end
              object cxGrid1DBTableView1Pedido_Venta: TcxGridDBColumn
                Caption = 'Pedido Ventas'
                DataBinding.FieldName = 'U_Numero'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 90
              end
              object cxGrid1DBTableView1Cuenta_Cliente: TcxGridDBColumn
                Caption = 'Cliente'
                DataBinding.FieldName = 'ClienteID'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 71
              end
              object cxGrid1DBTableView1Nombre: TcxGridDBColumn
                Caption = 'Nombre Cliente'
                DataBinding.FieldName = 'NombreCliente'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 165
              end
              object cxGrid1DBTableView1Tipo_Pedido: TcxGridDBColumn
                Caption = 'Tipo Pedido'
                DataBinding.FieldName = 'Tipo_Pedido'
                PropertiesClassName = 'TcxComboBoxProperties'
                Properties.Items.Strings = (
                  'Pedido de Ventas'
                  'Diario'
                  'Suscripcion'
                  'Pedido Devuelto'
                  'Articulos Requeridos')
                Visible = False
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 81
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
                Width = 60
              end
              object cxGrid1DBTableView1MonedaID: TcxGridDBColumn
                DataBinding.FieldName = 'MonedaID'
                PropertiesClassName = 'TcxComboBoxProperties'
                Properties.Items.Strings = (
                  'RD'
                  'US')
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 71
              end
              object cxGrid1DBTableView1GrupoID: TcxGridDBColumn
                DataBinding.FieldName = 'GrupoID'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 73
              end
              object cxGrid1DBTableView1Comentario: TcxGridDBColumn
                DataBinding.FieldName = 'Comentario'
                PropertiesClassName = 'TcxRichEditProperties'
                HeaderAlignmentHorz = taCenter
                Width = 166
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
              DataController.DataSource = dsArticulos
              DataController.KeyFieldNames = 'RecID;PruebaID'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '###,###'
                  Kind = skCount
                  Column = cxGrid2DBTableView2PruebaID
                end
                item
                  Format = '###,###,##0.00'
                  Kind = skSum
                  Column = cxGrid2DBTableView2Neto
                end
                item
                  Format = '###'
                  Column = cxGrid2DBTableView2Cantidad
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsData.Appending = True
              OptionsData.DeletingConfirmation = False
              OptionsView.ColumnAutoWidth = True
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              object cxGrid2DBTableView2PruebaID: TcxGridDBColumn
                Caption = 'C'#243'd. Art'#237'culo'
                DataBinding.FieldName = 'PruebaID'
                PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                Properties.CharCase = ecUpperCase
                Properties.View = DM.vwPruebas
                Properties.KeyFieldNames = 'PRUEBAID'
                Properties.ListFieldItem = DM.vwPruebasPruebaID
                HeaderAlignmentHorz = taCenter
                Styles.Content = dmAppActions.cxStyle52
                Styles.Footer = dmAppActions.cxStyle52
                Width = 92
              end
              object cxGrid2DBTableView2SucursalID: TcxGridDBColumn
                Caption = 'Sucursal'
                DataBinding.FieldName = 'SucursalID'
                PropertiesClassName = 'TcxExtLookupComboBoxProperties'
                Properties.CharCase = ecUpperCase
                Properties.View = DM.vwSucursal
                Properties.KeyFieldNames = 'SUCURSALID'
                Properties.ListFieldItem = DM.vwSucursalSucursalID
                HeaderAlignmentHorz = taCenter
                Width = 64
              end
              object cxGrid2DBTableView2Cantidad: TcxGridDBColumn
                Caption = 'Cant.'
                DataBinding.FieldName = 'Cantidad'
                HeaderAlignmentHorz = taCenter
                Width = 54
              end
              object cxGrid2DBTableView2Unidad: TcxGridDBColumn
                DataBinding.FieldName = 'Unidad'
                PropertiesClassName = 'TcxComboBoxProperties'
                Properties.Items.Strings = (
                  'UND')
                HeaderAlignmentHorz = taCenter
                Width = 60
              end
              object cxGrid2DBTableView2Precio_Unitario: TcxGridDBColumn
                Caption = 'P. Unitario'
                DataBinding.FieldName = 'Precio_Unitario'
                HeaderAlignmentHorz = taCenter
                Width = 85
              end
              object cxGrid2DBTableView2Descuento: TcxGridDBColumn
                Caption = 'Desc.'
                DataBinding.FieldName = 'Descuento'
                HeaderAlignmentHorz = taCenter
                Width = 55
              end
              object cxGrid2DBTableView2Porcentaje_Desc: TcxGridDBColumn
                Caption = '% Desc.'
                DataBinding.FieldName = 'Descuento_Porcentaje'
                Width = 68
              end
              object cxGrid2DBTableView2Neto: TcxGridDBColumn
                Caption = 'Importe Neto'
                DataBinding.FieldName = 'Neto'
                HeaderAlignmentHorz = taCenter
                Styles.Content = dmAppActions.cxStyle52
                Styles.Footer = dmAppActions.cxStyle52
                Width = 87
              end
              object cxGrid2DBTableView2Descripcion: TcxGridDBColumn
                Caption = 'Nombre del Art'#237'culo'
                DataBinding.FieldName = 'Descripcion'
                HeaderAlignmentHorz = taCenter
                Width = 135
              end
              object cxGrid2DBTableView2Muestrano: TcxGridDBColumn
                DataBinding.FieldName = 'Muestrano'
                HeaderAlignmentHorz = taCenter
                Width = 78
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
              'Abierto'
              'Pre-Factura'
              'Facturado'
              'Cancelado')
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
              Caption = 'Lineas'
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
    Top = 56
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
    Left = 217
    Top = 56
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
      OnClick = btAceptaSerClick
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
    DataSet = qrPedido
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
  object dsArticulos: TDataSource
    DataSet = qrPedidoDetalle
    Left = 292
    Top = 439
  end
  object qrPedido: TADOQuery
    Connection = DM.DBSAP
    CursorType = ctStatic
    CommandTimeout = 100000
    Parameters = <>
    SQL.Strings = (
      
        '       Select Seleccionar,Tipo_Pedido,U_Numero,ClienteID,NombreC' +
        'liente,'
      #9#9#9'  Case Estado When '#39'T'#39' Then '#39'Abierta'#39
      '              When '#39'P'#39' Then '#39'Pre-Factura'#39
      '              When '#39'F'#39' Then '#39'Facturadas'#39
      '              When '#39'C'#39' Then '#39'Canceladas'#39' end As Estado,'
      
        #9#9#9'  MonedaID,Fecha_Desde,Fecha_Hasta,ClienteID_Gen,GrupoID_Gen,' +
        'Comentario'
      '              From PedidoVenta '
      '       WHERE Estado = '#39'T'#39
      
        '       Group By Seleccionar,Tipo_Pedido,U_Numero,ClienteID,Nombr' +
        'eCliente,Estado,MonedaID,Fecha_Desde,'
      #9'   Fecha_Hasta,ClienteID_Gen,GrupoID_Gen,Comentario')
    Left = 360
    Top = 297
    object qrPedidoClienteID: TStringField
      FieldName = 'ClienteID'
      Size = 10
    end
    object qrPedidoMonedaID: TStringField
      FieldName = 'MonedaID'
      Size = 3
    end
    object qrPedidoEstado: TStringField
      DisplayWidth = 20
      FieldName = 'Estado'
      FixedChar = True
    end
    object qrPedidoU_Numero: TStringField
      FieldName = 'U_Numero'
      Size = 35
    end
    object qrPedidoNombreCliente: TStringField
      FieldName = 'NombreCliente'
      Size = 80
    end
    object qrPedidoClienteID_Gen: TStringField
      FieldName = 'ClienteID_Gen'
      Size = 10
    end
    object qrPedidoGrupoID_Gen: TStringField
      FieldName = 'GrupoID_Gen'
      Size = 10
    end
    object qrPedidoFecha_Desde: TDateTimeField
      FieldName = 'Fecha_Desde'
    end
    object qrPedidoFecha_Hasta: TDateTimeField
      FieldName = 'Fecha_Hasta'
    end
    object qrPedidoComentario: TStringField
      FieldName = 'Comentario'
      Size = 100
    end
    object qrPedidoSeleccionar: TBooleanField
      DefaultExpression = 'False'
      FieldName = 'Seleccionar'
    end
    object qrPedidoTipo_Pedido: TStringField
      FieldName = 'Tipo_Pedido'
    end
  end
  object qrPedidoDetalle: TADOQuery
    Connection = DM.DBSAP
    CursorType = ctStatic
    OnCalcFields = qrPedidoDetalleCalcFields
    CommandTimeout = 100000
    Parameters = <>
    SQL.Strings = (
      'Select * from dbo.PedidoVentaDetalle'
      '')
    Left = 232
    Top = 441
    object qrPedidoDetalleRecID: TLargeintField
      FieldName = 'RecID'
    end
    object qrPedidoDetallePruebaID: TStringField
      Alignment = taCenter
      FieldName = 'PruebaID'
    end
    object qrPedidoDetalleMuestrano: TStringField
      Alignment = taCenter
      FieldName = 'Muestrano'
    end
    object qrPedidoDetalleDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 80
    end
    object qrPedidoDetallePrecio: TBCDField
      FieldName = 'Precio'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrPedidoDetalleDeptoPrue: TStringField
      FieldName = 'DeptoPrue'
      Size = 15
    end
    object qrPedidoDetalleSucursalID: TStringField
      Alignment = taCenter
      FieldName = 'SucursalID'
      Size = 10
    end
    object qrPedidoDetalleCantidad: TIntegerField
      FieldName = 'Cantidad'
      DisplayFormat = '##,##0.00'
      EditFormat = '##,##0.00'
    end
    object qrPedidoDetalleUnidad: TStringField
      Alignment = taCenter
      FieldName = 'Unidad'
      Size = 10
    end
    object qrPedidoDetalleDescuento: TBCDField
      FieldName = 'Descuento'
      Precision = 18
      Size = 18
    end
    object qrPedidoDetalleDescuento_Porcentaje: TBCDField
      FieldName = 'Descuento_Porcentaje'
      Precision = 19
    end
    object qrPedidoDetallePrecio_Unitario: TFloatField
      FieldName = 'Precio_Unitario'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object qrPedidoDetalleNeto: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Neto'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Calculated = True
    end
  end
  object MenuFunciones: TPopupMenu
    Left = 872
    Top = 104
    object CargarPedidodeVenta1: TMenuItem
      Caption = 'Cargar Pedido de Venta'
      OnClick = CargarPedidodeVenta1Click
    end
    object TransferirPedidoSAP1: TMenuItem
      Caption = 'Transferir Pedido a SAP'
      OnClick = TransferirPedidoSAP1Click
    end
    object BorrarPedido1: TMenuItem
      Caption = 'Borrar Pedido'
      OnClick = BorrarPedido1Click
    end
  end
  object MenuPedido: TPopupMenu
    Left = 912
    Top = 112
    object AadirPedido1: TMenuItem
      Caption = 'A'#241'adir Pedido'
      OnClick = AadirPedido1Click
    end
    object BorrarPedido2: TMenuItem
      Caption = 'Borrar Pedido'
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
  end
  object MenuArticulo: TPopupMenu
    Left = 832
    Top = 112
    object InsertarPrueba1: TMenuItem
      Caption = 'Agregar Prueba'
      Hint = 'Agregar registro'
      ImageIndex = 0
      OnClick = InsertarPrueba1Click
    end
    object EliminarPrueba1: TMenuItem
      Caption = 'Eliminar Prueba'
      OnClick = EliminarPrueba1Click
    end
    object CancelarAgregarUsuario1: TMenuItem
      Caption = 'Cancelar Agregar Prueba'
      OnClick = CancelarAgregarUsuario1Click
    end
  end
  object MenuProforma: TPopupMenu
    Left = 912
    Top = 208
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
  object qrPedido_Head: TADOQuery
    Connection = DM.DBSAP
    CursorType = ctStatic
    CommandTimeout = 100000
    Parameters = <>
    SQL.Strings = (
      '       Select ID,U_Numero,GrupoID,ClienteID,NombreCliente,'
      
        '       Case Tipo_Pedido When '#39'P'#39' Then '#39'Pedido de Ventas'#39#9#9#9#9#9#9#9#9 +
        'When '#39'D'#39' Then '#39'Diario'#39
      #9#9'When '#39'S'#39' Then '#39'Suscripcion'#39
      #9'                When '#39'U'#39' Then '#39'Pedido Devuelto'#39
      #9#9'When '#39'A'#39' Then '#39'Articulos Requeridos'#39' end As Tipo_Pedido,'
      '       Case Estado When '#39'T'#39' Then '#39'Abierta'#39
      #9#9'When '#39'P'#39' Then '#39'Pre-Factura'#39
      #9#9'When '#39'F'#39' Then '#39'Facturadas'#39
      #9#9'When '#39'C'#39' Then '#39'Canceladas'#39' end As Estado,'
      #9#9#9' Fecha_Desde,Fecha_Hasta,Comentario,Seleccionar,MonedaID'
      '              From PedidoVenta_Head'
      '       WHERE Estado = '#39'T'#39)
    Left = 240
    Top = 273
    object qrPedido_HeadID: TGuidField
      FieldName = 'ID'
      FixedChar = True
      Size = 38
    end
    object qrPedido_HeadU_Numero: TStringField
      FieldName = 'U_Numero'
      Size = 35
    end
    object qrPedido_HeadGrupoID: TStringField
      FieldName = 'GrupoID'
      Size = 10
    end
    object qrPedido_HeadClienteID: TStringField
      FieldName = 'ClienteID'
      Size = 10
    end
    object qrPedido_HeadNombreCliente: TStringField
      FieldName = 'NombreCliente'
      Size = 80
    end
    object qrPedido_HeadTipo_Pedido: TStringField
      FieldName = 'Tipo_Pedido'
    end
    object qrPedido_HeadEstado: TStringField
      FieldName = 'Estado'
      Size = 15
    end
    object qrPedido_HeadFecha_Desde: TDateTimeField
      FieldName = 'Fecha_Desde'
    end
    object qrPedido_HeadFecha_Hasta: TDateTimeField
      FieldName = 'Fecha_Hasta'
    end
    object qrPedido_HeadComentario: TStringField
      FieldName = 'Comentario'
      Size = 100
    end
    object qrPedido_HeadSeleccionar: TBooleanField
      FieldName = 'Seleccionar'
    end
    object qrPedido_HeadMonedaID: TStringField
      FieldName = 'MonedaID'
      Size = 5
    end
  end
  object dsPedidoHead: TDataSource
    DataSet = qrPedido_Head
    Left = 284
    Top = 271
  end
  object qrPed: TADOQuery
    Connection = DM.DBSAP
    CursorType = ctStatic
    CommandTimeout = 1000000
    Parameters = <>
    Left = 432
    Top = 289
  end
  object qrPedL: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    CommandTimeout = 1000000
    Parameters = <>
    Left = 480
    Top = 289
  end
end
