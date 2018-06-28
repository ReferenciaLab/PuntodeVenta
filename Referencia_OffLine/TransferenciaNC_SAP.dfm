inherited frmTransferenciaNC_SAP: TfrmTransferenciaNC_SAP
  Caption = 'Detalles Nota de Cr'#233'dito'
  ClientHeight = 588
  ClientWidth = 970
  KeyPreview = True
  OnClose = nil
  OnPaint = nil
  OnShow = FormShow
  ExplicitTop = -57
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
            Width = 780
            Height = 250
            PopupMenu = MenuPedido
            TabOrder = 1
            LookAndFeel.Kind = lfUltraFlat
            LookAndFeel.NativeStyle = True
            object cxGrid1DBTableView1: TcxGridDBTableView
              OnKeyUp = cxGrid1DBTableView1KeyUp
              NavigatorButtons.ConfirmDelete = False
              OnCellClick = cxGrid1DBTableView1CellClick
              DataController.DataSource = dsPedido
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
                Caption = 'Sel.'
                DataBinding.FieldName = 'Seleccionar'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.DisplayUnchecked = '0'
                Properties.DisplayGrayed = '0'
                HeaderAlignmentHorz = taCenter
                Styles.Content = dmAppActions.cxStyle52
                Styles.Footer = dmAppActions.cxStyle52
                Width = 46
              end
              object cxGrid1DBTableView1Fecha: TcxGridDBColumn
                DataBinding.FieldName = 'Fecha'
                PropertiesClassName = 'TcxDateEditProperties'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 89
              end
              object cxGrid1DBTableView1Muestrano: TcxGridDBColumn
                DataBinding.FieldName = 'Muestrano'
                HeaderAlignmentHorz = taCenter
                Width = 79
              end
              object cxGrid1DBTableView1Nombre_Paciente: TcxGridDBColumn
                DataBinding.FieldName = 'NombrePaciente'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 173
              end
              object cxGrid1DBTableView1Cuenta_Cliente: TcxGridDBColumn
                Caption = 'Cliente'
                DataBinding.FieldName = 'ClienteID'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 60
              end
              object cxGrid1DBTableView1Nombre: TcxGridDBColumn
                Caption = 'Nombre Cliente'
                DataBinding.FieldName = 'NombreCliente'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 139
              end
              object cxGrid1DBTableView1Tipo_Nota: TcxGridDBColumn
                Caption = 'Tipo Pedido'
                DataBinding.FieldName = 'Tipo_Pedido'
                PropertiesClassName = 'TcxComboBoxProperties'
                Properties.Items.Strings = (
                  'Nota de Credito'
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
                  'Enviado'
                  'Recibido'
                  'Aprobado'
                  'Rechazado')
                HeaderAlignmentHorz = taCenter
                Width = 52
              end
              object cxGrid1DBTableView1MonedaID: TcxGridDBColumn
                DataBinding.FieldName = 'MonedaID'
                PropertiesClassName = 'TcxComboBoxProperties'
                Properties.Items.Strings = (
                  'RD'
                  'US')
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 67
              end
              object cxGrid1DBTableView1GrupoID: TcxGridDBColumn
                DataBinding.FieldName = 'GrupoID'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 61
              end
              object cxGrid1DBTableView1Comentario: TcxGridDBColumn
                DataBinding.FieldName = 'Comentario'
                PropertiesClassName = 'TcxRichEditProperties'
                Visible = False
                HeaderAlignmentHorz = taCenter
                Width = 175
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
            TabOrder = 4
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
              object cxGrid2DBTableView2Seleccionar: TcxGridDBColumn
                Caption = 'Sel.'
                DataBinding.FieldName = 'Seleccionar'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.DisplayUnchecked = '0'
                Properties.DisplayGrayed = '0'
                HeaderAlignmentHorz = taCenter
              end
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
          object CheckAll: TcxCheckBox
            Left = 23
            Top = 338
            Caption = 'Selecciona Todo'
            Properties.OnChange = CheckAllPropertiesChange
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 2
            Width = 111
          end
          object NoCheckAll: TcxCheckBox
            Left = 140
            Top = 338
            Caption = 'Elimina Selecci'#243'n'
            Properties.OnChange = NoCheckAllPropertiesChange
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 3
            Width = 121
          end
          object dxLayoutControl2Group_Root: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutControl2Group1: TdxLayoutGroup
              Caption = 'Filtro'
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
                object dxLayoutControl2Group5: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object dxLayoutControl2Item2: TdxLayoutItem
                    Caption = 'New Item'
                    ShowCaption = False
                    Control = CheckAll
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutControl2Item1: TdxLayoutItem
                    Caption = 'New Item'
                    ShowCaption = False
                    Control = NoCheckAll
                    ControlOptions.ShowBorder = False
                  end
                end
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
    Left = 214
    Top = 66
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
      Width = 383
      Height = 24
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
    Left = 231
    Top = 66
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
    Left = 231
    Top = 66
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
    Left = 288
    Top = 272
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
    object JvMemoryData1Numero_Factura: TIntegerField
      FieldName = 'Numero_Factura'
    end
    object JvMemoryData1Fecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object JvMemoryData1SucursalID: TStringField
      FieldName = 'SucursalID'
      Size = 5
    end
    object JvMemoryData1Monto: TCurrencyField
      FieldName = 'Monto'
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
    object JvMemoryData2Seleccion: TBooleanField
      FieldName = 'Seleccion'
    end
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
      '       Select Seleccionar,Fecha,ClienteID,NombreCliente,'
      #9#9#9'  Case Estado When '#39'T'#39' Then '#39'Abierta'#39
      '              When '#39'P'#39' Then '#39'Pre-Factura'#39
      '              When '#39'F'#39' Then '#39'Facturadas'#39
      '              When '#39'C'#39' Then '#39'Canceladas'#39' end As Estado,'
      #9#9#9'  MonedaID,Fecha_Desde,'
      
        '        Fecha_Hasta,ClienteID_Gen,GrupoID_Gen,Comentario,Muestra' +
        'no,RecID as ID,GrupoID,NombrePaciente,Num_Factura,U_Numero'
      '         '
      '              From NotaCredito'
      '       WHERE Estado = '#39'T'#39)
    Left = 352
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
    object qrPedidoMuestrano: TStringField
      FieldName = 'Muestrano'
      ReadOnly = True
    end
    object qrPedidoID: TLargeintField
      FieldName = 'ID'
    end
    object qrPedidoGrupoID: TStringField
      FieldName = 'GrupoID'
      Size = 10
    end
    object qrPedidoNombrePaciente: TStringField
      FieldName = 'NombrePaciente'
      Size = 80
    end
    object qrPedidoNum_Factura: TIntegerField
      FieldName = 'Num_Factura'
    end
    object qrPedidoFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object qrPedidoSucursalID: TStringField
      FieldName = 'SucursalID'
      Size = 5
    end
    object qrPedidoMonto: TCurrencyField
      FieldName = 'Monto'
    end
    object qrPedidoU_Numero: TStringField
      FieldName = 'U_Numero'
      Size = 35
    end
  end
  object qrPedidoDetalle: TADOQuery
    Connection = DM.DBSAP
    CursorType = ctStatic
    OnCalcFields = qrPedidoDetalleCalcFields
    CommandTimeout = 100000
    Parameters = <>
    SQL.Strings = (
      'Select * from dbo.NotaCreditoDetalle'
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
    object qrPedidoDetalleSeleccionar: TBooleanField
      FieldName = 'Seleccionar'
    end
  end
  object MenuFunciones: TPopupMenu
    Left = 872
    Top = 104
    object CargarNotadeCredito1: TMenuItem
      Caption = 'Cargar Nota de Cr'#233'dito'
      OnClick = CargarNotadeCredito1Click
    end
    object TransferirNotadeCreditoSAP1: TMenuItem
      Caption = 'Transferir Nota de Cr'#233'dito a SAP'
      OnClick = TransferirNotadeCreditoSAP1Click
    end
    object BorrarNotadeCredito1: TMenuItem
      Caption = 'Borrar Nota de Cr'#233'dito'
      OnClick = BorrarNotadeCredito1Click
    end
  end
  object MenuPedido: TPopupMenu
    Left = 912
    Top = 112
    object AadirNotaCredito1: TMenuItem
      Caption = 'A'#241'adir Nota Cr'#233'dito'
      OnClick = AadirNotaCredito1Click
    end
    object BorrarNotaCredito2: TMenuItem
      Caption = 'Borrar Nota Cr'#233'dito'
      OnClick = BorrarNotaCredito2Click
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
    Left = 928
    Top = 176
    object Factura: TMenuItem
      Caption = 'Nota de Cr'#233'dito'
    end
  end
  object MenuConsultas: TPopupMenu
    Left = 832
    Top = 144
    object DetalleFacturacion: TMenuItem
      Caption = 'Detalle de Nota de Cr'#233'dito'
      OnClick = DetalleFacturacionClick
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
      '              From NotaCredito'
      '       WHERE Estado = '#39'T'#39)
    Left = 240
    Top = 273
    object qrPedido_HeadID: TGuidField
      FieldName = 'ID'
      FixedChar = True
      Size = 38
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
  object dsPedido: TDataSource
    DataSet = qrPedido
    Left = 380
    Top = 279
  end
  object qrPed: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    CommandTimeout = 100000
    Parameters = <>
    Left = 432
    Top = 289
  end
  object ppRptNotaCredito: TppReport
    AutoStop = False
    DataPipeline = ppReporteNotaC
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
    DataPipelineName = 'ppReporteNotaC'
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
        mmTop = 13229
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
        Caption = 'Notas de Cr'#233'dito POS-SAP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 2117
        mmTop = 19844
        mmWidth = 85990
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
      object ppLabel242: TppLabel
        UserName = 'Label173'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Suc'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 1852
        mmTop = 34396
        mmWidth = 11906
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
        mmLeft = 15081
        mmTop = 34660
        mmWidth = 13494
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
        mmLeft = 35190
        mmTop = 34660
        mmWidth = 26988
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cuenta Cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 66146
        mmTop = 34661
        mmWidth = 23453
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
        mmHeight = 3810
        mmLeft = 93663
        mmTop = 34131
        mmWidth = 53975
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 152136
        mmTop = 34396
        mmWidth = 57150
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Monto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 213255
        mmTop = 34131
        mmWidth = 26723
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Divisa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 245798
        mmTop = 34131
        mmWidth = 15081
        BandType = 0
      end
    end
    object ppDetailBand21: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppDBText219: TppDBText
        UserName = 'DBText164'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SucursalID'
        DataPipeline = ppReporteNotaC
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppReporteNotaC'
        mmHeight = 3429
        mmLeft = 2381
        mmTop = 794
        mmWidth = 10054
        BandType = 4
      end
      object ppDBText218: TppDBText
        UserName = 'DBText163'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Fecha'
        DataPipeline = ppReporteNotaC
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppReporteNotaC'
        mmHeight = 3440
        mmLeft = 15610
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
        DataPipeline = ppReporteNotaC
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppReporteNotaC'
        mmHeight = 3440
        mmLeft = 36248
        mmTop = 794
        mmWidth = 24077
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ClienteID'
        DataPipeline = ppReporteNotaC
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppReporteNotaC'
        mmHeight = 3429
        mmLeft = 66411
        mmTop = 794
        mmWidth = 22490
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'NombrePaciente'
        DataPipeline = ppReporteNotaC
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppReporteNotaC'
        mmHeight = 3439
        mmLeft = 92869
        mmTop = 794
        mmWidth = 55827
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'NombreCliente'
        DataPipeline = ppReporteNotaC
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppReporteNotaC'
        mmHeight = 3440
        mmLeft = 151607
        mmTop = 794
        mmWidth = 58738
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Monto'
        DataPipeline = ppReporteNotaC
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppReporteNotaC'
        mmHeight = 3429
        mmLeft = 213784
        mmTop = 1058
        mmWidth = 26988
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MonedaID'
        DataPipeline = ppReporteNotaC
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppReporteNotaC'
        mmHeight = 3440
        mmLeft = 248180
        mmTop = 1058
        mmWidth = 11377
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
        mmWidth = 6350
        BandType = 7
      end
    end
  end
  object ppReporteNotaC: TppDBPipeline
    DataSource = dsPedido
    UserName = 'ppReporteNotaC'
    Left = 171
    Top = 200
    object ppReporteNotaCppField1: TppField
      FieldAlias = 'ClienteID'
      FieldName = 'ClienteID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppReporteNotaCppField2: TppField
      FieldAlias = 'MonedaID'
      FieldName = 'MonedaID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppReporteNotaCppField3: TppField
      FieldAlias = 'Estado'
      FieldName = 'Estado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppReporteNotaCppField4: TppField
      FieldAlias = 'NombreCliente'
      FieldName = 'NombreCliente'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppReporteNotaCppField5: TppField
      FieldAlias = 'ClienteID_Gen'
      FieldName = 'ClienteID_Gen'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppReporteNotaCppField6: TppField
      FieldAlias = 'GrupoID_Gen'
      FieldName = 'GrupoID_Gen'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppReporteNotaCppField7: TppField
      FieldAlias = 'Fecha_Desde'
      FieldName = 'Fecha_Desde'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppReporteNotaCppField8: TppField
      FieldAlias = 'Fecha_Hasta'
      FieldName = 'Fecha_Hasta'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppReporteNotaCppField9: TppField
      FieldAlias = 'Comentario'
      FieldName = 'Comentario'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppReporteNotaCppField10: TppField
      FieldAlias = 'Seleccionar'
      FieldName = 'Seleccionar'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppReporteNotaCppField11: TppField
      FieldAlias = 'Muestrano'
      FieldName = 'Muestrano'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppReporteNotaCppField12: TppField
      FieldAlias = 'ID'
      FieldName = 'ID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppReporteNotaCppField13: TppField
      FieldAlias = 'GrupoID'
      FieldName = 'GrupoID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppReporteNotaCppField14: TppField
      FieldAlias = 'NombrePaciente'
      FieldName = 'NombrePaciente'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppReporteNotaCppField15: TppField
      FieldAlias = 'Num_Factura'
      FieldName = 'Num_Factura'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppReporteNotaCppField16: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppReporteNotaCppField17: TppField
      FieldAlias = 'SucursalID'
      FieldName = 'SucursalID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppReporteNotaCppField18: TppField
      FieldAlias = 'Monto'
      FieldName = 'Monto'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppReporteNotaCppField19: TppField
      FieldAlias = 'U_Numero'
      FieldName = 'U_Numero'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
  end
end
