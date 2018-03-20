inherited frmVerificaCuadre_VTA: TfrmVerificaCuadre_VTA
  Caption = 'Verifica Cuadre Caja Punto de Venta'
  ClientHeight = 696
  ClientWidth = 986
  KeyPreview = True
  Scaled = False
  OnClose = nil
  OnPaint = nil
  OnShow = FormShow
  ExplicitWidth = 1002
  ExplicitHeight = 734
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCaption: TPanel
    Width = 986
    Height = 3
    ExplicitWidth = 986
    ExplicitHeight = 3
  end
  object dxLayoutControl1: TdxLayoutControl [2]
    Left = 0
    Top = 3
    Width = 986
    Height = 693
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmAppActions.lnfNoBorder
    DesignSize = (
      986
      693)
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
          DesignSize = (
            289
            193)
          object cxGrid1: TcxGrid
            Left = 23
            Top = 98
            Width = 450
            Height = 137
            Anchors = []
            TabOrder = 2
            LookAndFeel.Kind = lfUltraFlat
            LookAndFeel.NativeStyle = True
            object cxGrid1DBTableView1: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              OnCellClick = cxGrid1DBTableView1CellClick
              DataController.DataSource = dsDatos
              DataController.Filter.Active = True
              DataController.KeyFieldNames = 'Fecha'
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
                end
                item
                  Kind = skCount
                  Position = spFooter
                  Column = cxGrid1DBTableView1Fecha
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
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsData.Deleting = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.ColumnAutoWidth = True
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              object cxGrid1DBTableView1Fecha: TcxGridDBColumn
                DataBinding.FieldName = 'Fecha'
                HeaderAlignmentHorz = taCenter
                Width = 82
              end
              object cxGrid1DBTableView1Numero_Transaccion: TcxGridDBColumn
                Caption = 'Numero Transaccion'
                DataBinding.FieldName = 'Numero_Transaccion'
                HeaderAlignmentHorz = taCenter
                Width = 137
              end
              object cxGrid1DBTableView1CuadreTotal: TcxGridDBColumn
                Caption = 'Cuadre Total'
                DataBinding.FieldName = 'CuadreTotal'
                HeaderAlignmentHorz = taCenter
                Width = 122
              end
              object cxGrid1DBTableView1Estado: TcxGridDBColumn
                Caption = 'Contabilizado'
                DataBinding.FieldName = 'Estado'
                HeaderAlignmentHorz = taCenter
                Width = 107
              end
            end
            object cxGrid1Level1: TcxGridLevel
              GridView = cxGrid1DBTableView1
            end
          end
          object cxGrid2: TcxGrid
            Left = 23
            Top = 273
            Width = 833
            Height = 206
            PopupMenu = MenuCuadres
            TabOrder = 3
            LookAndFeel.Kind = lfUltraFlat
            LookAndFeel.NativeStyle = True
            object cxGrid2DBTableView2: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              NavigatorButtons.Insert.Enabled = False
              OnCellClick = cxGrid2DBTableView2CellClick
              DataController.DataSource = dsPagos
              DataController.KeyFieldNames = 'ID'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skCount
                  Column = cxGrid2DBTableView2SucursalID
                end
                item
                  Format = '###,###,##0.00'
                  Kind = skSum
                  Column = cxGrid2DBTableView2Monto_EFE
                end
                item
                  Format = '###,###,##0.00'
                  Kind = skSum
                  Column = cxGrid2DBTableView2Monto_TC
                end
                item
                  Format = '###,###,##0.00'
                  Kind = skSum
                end
                item
                  Format = '###,###,##0.00'
                  Kind = skSum
                  Column = cxGrid2DBTableView2Monto_CK
                end
                item
                  Format = '###,###,##0.00'
                  Kind = skSum
                end
                item
                  Format = '###,###,##0.00'
                  Kind = skSum
                  Column = cxGrid2DBTableView2Monto_DON
                end
                item
                  Format = '###,###,##0.00'
                  Kind = skSum
                  Column = cxGrid2DBTableView2Monto_FSOB
                end
                item
                  Format = '###,###,##0.00'
                  Kind = skSum
                  Column = cxGrid2DBTableView2Total
                end
                item
                  Format = '###,###,##0.00'
                  Kind = skSum
                  Column = cxGrid2DBTableView2Monto_COMP
                end
                item
                  Format = '###,###,##0.00'
                  Kind = skSum
                  Column = cxGrid2DBTableView2Column1
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsData.Deleting = False
              OptionsData.Inserting = False
              OptionsView.ColumnAutoWidth = True
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              object cxGrid2DBTableView2SucursalID: TcxGridDBColumn
                Caption = 'Suc.'
                DataBinding.FieldName = 'SucursalID'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Styles.Content = dmAppActions.cxStyle54
                Styles.Footer = dmAppActions.cxStyle54
                Width = 40
              end
              object cxGrid2DBTableView2Monto_EFE: TcxGridDBColumn
                Caption = 'EFE'
                DataBinding.FieldName = 'Monto_EFE'
                HeaderAlignmentHorz = taCenter
                Styles.Content = dmAppActions.cxStyle52
                Styles.Footer = dmAppActions.cxStyle52
                Width = 54
              end
              object cxGrid2DBTableView2Monto_TC: TcxGridDBColumn
                Caption = 'TC'
                DataBinding.FieldName = 'Monto_TC'
                HeaderAlignmentHorz = taCenter
                Styles.Content = dmAppActions.cxStyle52
                Styles.Footer = dmAppActions.cxStyle52
                Width = 54
              end
              object cxGrid2DBTableView2Monto_CK: TcxGridDBColumn
                Caption = 'CK'
                DataBinding.FieldName = 'Monto_CK'
                HeaderAlignmentHorz = taCenter
                Styles.Content = dmAppActions.cxStyle52
                Styles.Footer = dmAppActions.cxStyle52
                Width = 48
              end
              object cxGrid2DBTableView2Column1: TcxGridDBColumn
                Caption = 'TB'
                DataBinding.FieldName = 'Monto_TB'
                HeaderAlignmentHorz = taCenter
                Styles.Content = dmAppActions.cxStyle52
                Styles.Footer = dmAppActions.cxStyle52
                Width = 45
              end
              object cxGrid2DBTableView2Monto_DON: TcxGridDBColumn
                Caption = 'Don.'
                DataBinding.FieldName = 'Monto_DON'
                HeaderAlignmentHorz = taCenter
                Styles.Content = dmAppActions.cxStyle52
                Styles.OnGetContentStyle = cxGrid2DBTableView2Monto_DONStylesGetContentStyle
                Styles.Footer = dmAppActions.cxStyle52
                Width = 50
              end
              object cxGrid2DBTableView2Monto_FSOB: TcxGridDBColumn
                Caption = 'Sob.'
                DataBinding.FieldName = 'Monto_FSOB'
                HeaderAlignmentHorz = taCenter
                Styles.Content = dmAppActions.cxStyle52
                Styles.OnGetContentStyle = cxGrid2DBTableView2Monto_FSOBStylesGetContentStyle
                Styles.Footer = dmAppActions.cxStyle52
                Width = 50
              end
              object cxGrid2DBTableView2Monto_COMP: TcxGridDBColumn
                Caption = 'Compl.'
                DataBinding.FieldName = 'Monto_COMP'
                HeaderAlignmentHorz = taCenter
                Styles.Content = dmAppActions.cxStyle52
                Styles.OnGetContentStyle = cxGrid2DBTableView2Monto_COMPStylesGetContentStyle
                Styles.Footer = dmAppActions.cxStyle52
                Width = 50
              end
              object cxGrid2DBTableView2Total: TcxGridDBColumn
                DataBinding.FieldName = 'Total'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Styles.Content = dmAppActions.cxStyle54
                Styles.Footer = dmAppActions.cxStyle54
                Width = 70
              end
              object cxGrid2DBTableView2Cuadre_Referencia: TcxGridDBColumn
                Caption = 'Cuadre'
                DataBinding.FieldName = 'Cuadre_Referencia'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Styles.Content = dmAppActions.cxStyle54
                Styles.Footer = dmAppActions.cxStyle54
                Width = 93
              end
              object cxGrid2DBTableView2TurnoID: TcxGridDBColumn
                Caption = 'Turno'
                DataBinding.FieldName = 'TurnoID'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Styles.Content = dmAppActions.cxStyle54
                Styles.Footer = dmAppActions.cxStyle54
                Width = 43
              end
              object cxGrid2DBTableView2Banco: TcxGridDBColumn
                Caption = 'Banco'
                DataBinding.FieldName = 'Banco_Deposito'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Styles.Content = dmAppActions.cxStyle54
                Styles.Footer = dmAppActions.cxStyle54
                Width = 68
              end
              object cxGrid2DBTableView2Fecha_Deposito: TcxGridDBColumn
                Caption = 'Fecha Dep.'
                DataBinding.FieldName = 'Fecha_deposito'
                HeaderAlignmentHorz = taCenter
                Styles.Content = dmAppActions.cxStyle52
                Styles.Footer = dmAppActions.cxStyle52
                Width = 76
              end
              object cxGrid2DBTableView2Cuenta_Banco: TcxGridDBColumn
                Caption = 'Cuenta'
                DataBinding.FieldName = 'Cuenta_Banco'
                HeaderAlignmentHorz = taCenter
                Styles.Content = dmAppActions.cxStyle52
                Styles.Footer = dmAppActions.cxStyle52
                Width = 77
              end
              object cxGrid2DBTableView2Fecha: TcxGridDBColumn
                DataBinding.FieldName = 'Fecha'
                Visible = False
              end
            end
            object cxGrid2Level1: TcxGridLevel
              GridView = cxGrid2DBTableView2
            end
          end
          object cboEstado: TcxComboBox
            Left = 63
            Top = 36
            Properties.Items.Strings = (
              'Todo'
              'Abierto'
              'Registrado')
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
          object spCargaCuadre: TLMDSimplePanel
            Left = 301
            Top = 66
            Width = 260
            Height = 200
            Bevel.StyleInner = bvFrameLowered
            Bevel.StyleOuter = bvFrameRaised
            Bevel.BorderWidth = 8
            Bevel.BorderInnerWidth = 2
            Bevel.LightColor = 12582911
            Bevel.Mode = bmCustom
            Bevel.StandardStyle = lsLowered
            Color = clMenuBar
            TabOrder = 5
            Visible = False
            object LMDLabel2: TLMDLabel
              Left = 11
              Top = 12
              Width = 239
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
              Caption = 'Cargar Cuadre de Caja POS'
            end
            object btCancelar: TLMDButton
              Left = 137
              Top = 134
              Width = 71
              Height = 36
              Caption = '&Cancelar'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              PopupMenu = MenuFunciones
              TabOrder = 0
              OnClick = btCancelarClick
              ButtonLayout.AlignText2Glyph = taBottom
              ButtonLayout.Spacing = 0
              ListIndex = 15
              NumGlyphs = 2
            end
            object btAceptar: TLMDButton
              Left = 51
              Top = 134
              Width = 71
              Height = 36
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
            object dtFechaCarga: TcxDateEdit
              Left = 110
              Top = 65
              TabOrder = 2
              Width = 98
            end
            object cxLabel1: TcxLabel
              Left = 57
              Top = 67
              Caption = 'Fecha :'
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
            end
          end
          object ckUsuario: TcxCheckBox
            Left = 219
            Top = 36
            Anchors = [akLeft]
            Caption = 'Mostrar s'#243'lo creados por el usuario'
            ParentFont = False
            Properties.Alignment = taRightJustify
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 1
            OnClick = ckUsuarioClick
            Width = 260
          end
          object cxGrid3: TcxGrid
            Left = 23
            Top = 517
            Width = 842
            Height = 206
            PopupMenu = MenuPagos
            TabOrder = 4
            LookAndFeel.Kind = lfUltraFlat
            LookAndFeel.NativeStyle = True
            object cxGridDBTableView1: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              NavigatorButtons.Insert.Enabled = False
              DataController.DataSource = dsPagosDetalle
              DataController.KeyFieldNames = 'COBROID;FORMADEPAGOID'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skCount
                end
                item
                  Format = '###,###,##0.00'
                  Kind = skSum
                end
                item
                  Format = '###,###,##0.00'
                  Kind = skSum
                end
                item
                  Format = '###,###,##0.00'
                  Kind = skSum
                end
                item
                  Format = '###,###,##0.00'
                  Kind = skSum
                end
                item
                  Format = '###,###,##0.00'
                  Kind = skSum
                end
                item
                  Format = '###,###,##0.00'
                  Kind = skSum
                end
                item
                  Format = '###,###,##0.00'
                  Kind = skSum
                end
                item
                  Format = '###,###,##0.00'
                  Kind = skSum
                end
                item
                  Kind = skCount
                end
                item
                  Format = '###,###,##0.00'
                  Kind = skSum
                  Column = cxGridDBTableView1Monto
                end
                item
                  Kind = skCount
                  Column = cxGridDBTableView1UsuarioID
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsData.Deleting = False
              OptionsData.Inserting = False
              OptionsView.ColumnAutoWidth = True
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              Styles.OnGetContentStyle = cxGridDBTableView1StylesGetContentStyle
              object cxGridDBTableView1UsuarioID: TcxGridDBColumn
                Caption = 'Usuario'
                DataBinding.FieldName = 'UsuarioID'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Styles.Content = dmAppActions.cxStyle54
                Styles.Footer = dmAppActions.cxStyle54
                Width = 68
              end
              object cxGridDBTableView1FormaDePagoID: TcxGridDBColumn
                Caption = 'F/Pago'
                DataBinding.FieldName = 'FormaDePagoID'
                PropertiesClassName = 'TcxComboBoxProperties'
                Properties.Items.Strings = (
                  'EFE'
                  'TC'
                  'TD'
                  'CK')
                HeaderAlignmentHorz = taCenter
                Styles.Content = dmAppActions.cxStyle52
                Styles.Footer = dmAppActions.cxStyle52
                Width = 62
              end
              object cxGridDBTableView1MonedaID: TcxGridDBColumn
                Caption = 'Moneda'
                DataBinding.FieldName = 'MonedaID'
                PropertiesClassName = 'TcxComboBoxProperties'
                Properties.Items.Strings = (
                  'RD'
                  'US')
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Styles.Content = dmAppActions.cxStyle54
                Styles.Footer = dmAppActions.cxStyle54
                Width = 60
              end
              object cxGridDBTableView1Monto: TcxGridDBColumn
                DataBinding.FieldName = 'Monto'
                HeaderAlignmentHorz = taCenter
                Styles.Content = dmAppActions.cxStyle52
                Styles.Footer = dmAppActions.cxStyle52
                Width = 87
              end
              object cxGridDBTableView1Cuadre_Referencia: TcxGridDBColumn
                Caption = 'Cuadre'
                DataBinding.FieldName = 'Cuadre_Referencia'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Styles.Content = dmAppActions.cxStyle54
                Width = 107
              end
              object cxGridDBTableView1Numero_Referencia: TcxGridDBColumn
                Caption = 'Num. Referencia'
                DataBinding.FieldName = 'Numero_Referencia'
                HeaderAlignmentHorz = taCenter
                Styles.Content = dmAppActions.cxStyle52
                Width = 106
              end
              object cxGridDBTableView1Numero_Aprobacion: TcxGridDBColumn
                Caption = 'Num. Aprobacion'
                DataBinding.FieldName = 'Numero_Aprobacion'
                HeaderAlignmentHorz = taCenter
                Styles.Content = dmAppActions.cxStyle52
                Width = 102
              end
              object cxGridDBTableView1Fecha_Vencimiento: TcxGridDBColumn
                Caption = 'Fecha Venc.'
                DataBinding.FieldName = 'Fecha_Vencimiento'
                PropertiesClassName = 'TcxDateEditProperties'
                HeaderAlignmentHorz = taCenter
                Styles.Content = dmAppActions.cxStyle52
                Width = 89
              end
              object cxGridDBTableView1Banco_Cheque: TcxGridDBColumn
                Caption = 'Banco Cheque'
                DataBinding.FieldName = 'Banco_Cheque'
                HeaderAlignmentHorz = taCenter
                Styles.Content = dmAppActions.cxStyle52
                Width = 150
              end
            end
            object cxGridLevel1: TcxGridLevel
              GridView = cxGridDBTableView1
            end
          end
          object dxLayoutControl2Group_Root: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutControl2Group1: TdxLayoutGroup
              Caption = 'Filtro'
              LayoutDirection = ldHorizontal
              object dxLayoutControl2Item12: TdxLayoutItem
                Caption = 'Mostrar'
                Control = cboEstado
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl2Item1: TdxLayoutItem
                AutoAligns = []
                Caption = 'ckUsuario'
                ShowCaption = False
                Control = ckUsuario
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutControl2Group2: TdxLayoutGroup
              Caption = 'Visi'#243'n General'
              LayoutDirection = ldHorizontal
              object dxLayoutControl2Item4: TdxLayoutItem
                AutoAligns = []
                AlignVert = avClient
                Caption = 'cxGrid1'
                ShowCaption = False
                Control = cxGrid1
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutControl2Group3: TdxLayoutGroup
              Caption = 'Sucursales'
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
            object dxLayoutControl2Group5: TdxLayoutGroup
              Caption = 'Detalle de Pagos'
              object dxLayoutControl2Item2: TdxLayoutItem
                Control = cxGrid3
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
      end
    end
    object BtTransferir: TcxButton
      Left = 908
      Top = 7
      Width = 66
      Height = 25
      Hint = 'Funciones'
      Caption = '&Funciones'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      DropDownMenu = MenuFunciones
      Kind = cxbkDropDown
    end
    object btEliminar: TcxButton
      Left = 908
      Top = 38
      Width = 66
      Height = 25
      Hint = 'Transferir Ordenes de Ventas a SAP'
      Anchors = []
      Caption = '&Imprimir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
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
        object dxLayoutControl1Item4: TdxLayoutItem
          Caption = 'cxButton3'
          ShowCaption = False
          Control = BtTransferir
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item2: TdxLayoutItem
          Caption = 'New Item'
          ShowCaption = False
          Control = btEliminar
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object spMensaje: TLMDSimplePanel [3]
    Left = 189
    Top = 69
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
  object spCuadre: TLMDSimplePanel [4]
    Left = 209
    Top = 69
    Width = 418
    Height = 273
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
      Caption = 'Crea Cuadre'
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
      OnClick = btCancelCClick
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
      OnClick = btAceptaSerClick
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
      Properties.OnEditValueChanged = cbExtSucursalPropertiesEditValueChanged
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
      Properties.OnEditValueChanged = cbExtBancoPropertiesEditValueChanged
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
  end
  inherited formStorage: TJvFormStorage
    Left = 862
    Top = 109
  end
  inherited alEdit: TActionList
    Left = 862
    Top = 78
  end
  inherited pmCustom: TPopupMenu
    Left = 913
    Top = 78
  end
  inherited cxIntl1: TcxIntl
    Left = 888
    Top = 148
  end
  object cxGridStyles: TcxStyleRepository
    Left = 913
    Top = 109
    object stGrDatos: TcxStyle
      AssignedValues = [svColor]
      Color = clInfoBk
    end
    object stGrEdit: TcxStyle
    end
  end
  object dsDatos: TDataSource
    DataSet = JvMemoryData1
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
    Left = 168
    Top = 312
    object JvMemoryData1Fecha: TDateField
      FieldName = 'Fecha'
    end
    object JvMemoryData1Numero_Transaccion: TStringField
      FieldName = 'Numero_Transaccion'
      Size = 35
    end
    object JvMemoryData1CuadreTotal: TCurrencyField
      FieldName = 'CuadreTotal'
    end
    object JvMemoryData1Estado: TBooleanField
      FieldName = 'Estado'
    end
  end
  object dsPagos: TDataSource
    DataSet = qrPagos
    Left = 404
    Top = 327
  end
  object qrPagosHead: TADOQuery
    Connection = DM.DBSAP
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from dbo.Pagos_Head'
      '')
    Left = 208
    Top = 313
    object qrPagosHeadFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object qrPagosHeadNumero_Diario: TStringField
      FieldName = 'Numero_Diario'
      Size = 35
    end
    object qrPagosHeadCuadre_Total: TBCDField
      FieldName = 'Cuadre_Total'
      Precision = 18
      Size = 2
    end
    object qrPagosHeadEstado: TBooleanField
      FieldName = 'Estado'
    end
  end
  object qrPagos: TADOQuery
    Connection = DM.DBSAP
    CursorType = ctStatic
    OnCalcFields = qrPagosCalcFields
    Parameters = <>
    SQL.Strings = (
      'Select ID, Fecha, SucursalID, IsNull(Monto_EFE,0) As Monto_EFE,'
      'Isnull(Monto_TC,0) As Monto_TC, Isnull(Monto_TD,0) As Monto_TD,'
      ' Isnull(Monto_CK,0) As Monto_CK, Isnull(Monto_US,0) As Monto_US,'
      
        'Isnull(Monto_DON,0) As Monto_DON, Isnull(Monto_FSOB,0) As Monto_' +
        'FSOB,'
      
        'Isnull(Monto_COMP,0) As Monto_COMP, Cuadre_Referencia, TurnoID, ' +
        'Cuenta_Banco,Banco_Deposito,ID,'
      'Isnull(Monto_TB,0) As Monto_TB, Fecha_deposito from dbo.Pagos'
      '')
    Left = 376
    Top = 305
    object qrPagosID: TGuidField
      FieldName = 'ID'
      FixedChar = True
      Size = 38
    end
    object qrPagosFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object qrPagosSucursalID: TStringField
      FieldName = 'SucursalID'
      Size = 10
    end
    object qrPagosMonto_EFE: TBCDField
      FieldName = 'Monto_EFE'
      OnValidate = qrPagosMonto_EFEValidate
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qrPagosMonto_TC: TBCDField
      FieldName = 'Monto_TC'
      OnValidate = qrPagosMonto_TCValidate
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qrPagosMonto_TD: TBCDField
      FieldName = 'Monto_TD'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qrPagosMonto_CK: TBCDField
      FieldName = 'Monto_CK'
      OnValidate = qrPagosMonto_CKValidate
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qrPagosMonto_US: TBCDField
      FieldName = 'Monto_US'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qrPagosMonto_DON: TBCDField
      FieldName = 'Monto_DON'
      OnValidate = qrPagosMonto_DONValidate
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qrPagosMonto_FSOB: TBCDField
      FieldName = 'Monto_FSOB'
      OnValidate = qrPagosMonto_FSOBValidate
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qrPagosMonto_COMP: TBCDField
      FieldName = 'Monto_COMP'
      OnValidate = qrPagosMonto_COMPValidate
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qrPagosTotal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Total'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Calculated = True
    end
    object qrPagosCuadre_Referencia: TStringField
      FieldName = 'Cuadre_Referencia'
    end
    object qrPagosTurnoID: TIntegerField
      FieldName = 'TurnoID'
    end
    object qrPagosCuenta_Banco: TStringField
      FieldName = 'Cuenta_Banco'
      Size = 25
    end
    object qrPagosBanco_Deposito: TStringField
      FieldName = 'Banco_Deposito'
      Size = 100
    end
    object qrPagosFecha_deposito: TDateTimeField
      FieldName = 'Fecha_deposito'
      OnValidate = qrPagosFecha_depositoValidate
    end
    object qrPagosMonto_TB: TBCDField
      FieldName = 'Monto_TB'
      Precision = 18
      Size = 2
    end
  end
  object MenuFunciones: TPopupMenu
    Left = 936
    Top = 152
    object CargarCuadredeCaja1: TMenuItem
      Caption = 'Cargar Cuadre de Caja'
      OnClick = CargarCuadredeCaja1Click
    end
    object PostearCuadre1: TMenuItem
      Caption = 'Postear Cuadre'
      OnClick = PostearCuadre1Click
    end
    object BorrarCuadre1: TMenuItem
      Caption = 'Borrar Cuadre'
      OnClick = BorrarCuadre1Click
    end
  end
  object qrPagosDetalle: TADOQuery
    Connection = DM.DBSAP
    CursorType = ctStatic
    OnCalcFields = qrPagosCalcFields
    Parameters = <>
    SQL.Strings = (
      
        'Select CobroID,IDRef,TipoDoc,UsuarioID,FormaDePagoID,MonedaID,Is' +
        'Null(Monto,0) As Monto,'
      
        ' Cuadre_Referencia,Numero_Referencia, Numero_Aprobacion,Fecha_Ve' +
        'ncimiento,'
      'Banco_Cheque'
      'from dbo.PagosDetalle'
      ''
      '')
    Left = 288
    Top = 561
    object qrPagosDetalleFormaDePagoID: TStringField
      FieldName = 'FormaDePagoID'
      Size = 10
    end
    object qrPagosDetalleMonedaID: TStringField
      FieldName = 'MonedaID'
      ReadOnly = True
      Size = 3
    end
    object qrPagosDetalleMonto: TBCDField
      FieldName = 'Monto'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object qrPagosDetalleCuadre_Referencia: TStringField
      FieldName = 'Cuadre_Referencia'
      ReadOnly = True
    end
    object qrPagosDetalleNumero_Referencia: TStringField
      FieldName = 'Numero_Referencia'
    end
    object qrPagosDetalleNumero_Aprobacion: TStringField
      FieldName = 'Numero_Aprobacion'
    end
    object qrPagosDetalleFecha_Vencimiento: TDateTimeField
      FieldName = 'Fecha_Vencimiento'
    end
    object qrPagosDetalleBanco_Cheque: TStringField
      FieldName = 'Banco_Cheque'
      Size = 25
    end
    object qrPagosDetalleUsuarioID: TStringField
      FieldName = 'UsuarioID'
      Size = 10
    end
    object qrPagosDetalleIDRef: TGuidField
      FieldName = 'IDRef'
      ReadOnly = True
      FixedChar = True
      Size = 38
    end
    object qrPagosDetalleTipoDoc: TStringField
      FieldName = 'TipoDoc'
      ReadOnly = True
      Size = 2
    end
    object qrPagosDetalleCobroID: TStringField
      FieldName = 'CobroID'
    end
  end
  object dsPagosDetalle: TDataSource
    DataSet = qrPagosDetalle
    Left = 324
    Top = 559
  end
  object MenuCuadres: TPopupMenu
    Left = 296
    Top = 304
    object EliminaCuadre1: TMenuItem
      Caption = 'Eliminar Cuadre'
      OnClick = EliminaCuadre1Click
    end
    object InsertaCuadre1: TMenuItem
      Caption = 'Inserta Cuadre'
      OnClick = InsertaCuadre1Click
    end
  end
  object MenuPagos: TPopupMenu
    Left = 280
    Top = 432
    object MenuPago1: TMenuItem
      Caption = 'Eliminar Pago '
      OnClick = MenuPago1Click
    end
  end
end
