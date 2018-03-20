inherited frmConsultaPagosClientes: TfrmConsultaPagosClientes
  Caption = 'Consulta Cobros Clientes'
  ClientHeight = 544
  ClientWidth = 975
  KeyPreview = True
  Scaled = False
  OnClose = nil
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  ExplicitTop = -136
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
        ExplicitWidth = 975
        ExplicitHeight = 418
        object dxLayoutControl2: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 289
          Height = 193
          Align = alClient
          TabOrder = 0
          AutoContentSizes = [acsWidth, acsHeight]
          LookAndFeel = dmAppActions.lnfWeb
          ExplicitWidth = 975
          ExplicitHeight = 418
          object edbuscarpor: TcxComboBox
            Left = 80
            Top = 36
            Properties.DropDownListStyle = lsEditFixedList
            Properties.DropDownSizeable = True
            Properties.Items.Strings = (
              'UsuarioID'
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
            Width = 929
            Height = 305
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
              DataController.DataSource = dsPagos
              DataController.DetailKeyFieldNames = 'Cobroid'
              DataController.Filter.PercentWildcard = '*'
              DataController.Filter.Active = True
              DataController.Filter.AutoDataSetFilter = True
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Kind = skCount
                  Column = cxGridDBTableView1SucursalID
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                  Column = cxGridDBTableView1Monto
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
              object cxGridDBTableView1SucursalID: TcxGridDBColumn
                Caption = 'SucursalID'
                DataBinding.FieldName = 'SucursalId'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 74
              end
              object cxGridDBTableView1Fecha: TcxGridDBColumn
                DataBinding.FieldName = 'Fecha'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 70
              end
              object cxGridDBTableView1Hora: TcxGridDBColumn
                DataBinding.FieldName = 'Hora'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 63
              end
              object cxGridDBTableView1NombreCliente: TcxGridDBColumn
                DataBinding.FieldName = 'NombreCliente'
                HeaderAlignmentHorz = taCenter
                MinWidth = 70
                Width = 347
              end
              object cxGridDBTableView1Usuario: TcxGridDBColumn
                DataBinding.FieldName = 'UsuarioID'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 114
              end
              object cxGridDBTableView1Recibo: TcxGridDBColumn
                Caption = 'Recibo'
                DataBinding.FieldName = 'ReciboNo'
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Width = 118
              end
              object cxGridDBTableView1Monto: TcxGridDBColumn
                DataBinding.FieldName = 'Monto'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 129
              end
            end
            object GridTransaccionesDBTableView1: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = dsPagosDetalle
              DataController.DetailKeyFieldNames = 'muestrano'
              DataController.MasterKeyFieldNames = 'Muestrano'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skCount
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
                end
                item
                  Format = '##,##0.00'
                  Kind = skSum
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
            end
            object cxGridDBTableView2: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = dsPagosDetalle
              DataController.DetailKeyFieldNames = 'Cobroid'
              DataController.MasterKeyFieldNames = 'Cobroid'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
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
              Styles.Background = stGrDatos
              Styles.Content = stGrDatos
              object cxGridDBTableView2Cobroid: TcxGridDBColumn
                DataBinding.FieldName = 'Cobroid'
                Options.Editing = False
              end
              object cxGridDBTableView2Forma_Pago: TcxGridDBColumn
                DataBinding.FieldName = 'Forma_Pago'
                Options.Editing = False
              end
              object cxGridDBTableView2Monto: TcxGridDBColumn
                DataBinding.FieldName = 'Monto'
                Options.Editing = False
              end
              object cxGridDBTableView2CuadreUsuario: TcxGridDBColumn
                DataBinding.FieldName = 'CuadreUsuario'
                Options.Editing = False
              end
              object cxGridDBTableView2CuadreGlobal: TcxGridDBColumn
                DataBinding.FieldName = 'CuadreGlobal'
                Options.Editing = False
              end
              object cxGridDBTableView2Devuelta: TcxGridDBColumn
                DataBinding.FieldName = 'Devuelta'
                Options.Editing = False
              end
              object cxGridDBTableView2BancoID: TcxGridDBColumn
                DataBinding.FieldName = 'BancoID'
                Options.Editing = False
              end
              object cxGridDBTableView2Numero_Referencia: TcxGridDBColumn
                DataBinding.FieldName = 'Numero_Referencia'
                Options.Editing = False
              end
              object cxGridDBTableView2Numero_Aprobacion: TcxGridDBColumn
                DataBinding.FieldName = 'Numero_Aprobacion'
                Options.Editing = False
              end
            end
            object cxGridLevel1: TcxGridLevel
              GridView = cxGridDBTableView1
              object cxGridDetallePagos: TcxGridLevel
                GridView = cxGridDBTableView2
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
      OnClick = BtImprimirClick
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
    Top = 160
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
      Caption = 'Detalle Pagos Clientes'
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
  object qrPagos: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select top 0 SucursalId,Fecha,Hora,UsuarioID,TotalCobrado Monto,' +
        'ReciboNo,e.Nombre As NombreCliente,c.CobroID from ptcobro c inne' +
        'r join ptcobrodetalle d '
      
        '           '#39' on c.cobroid=d.cobroid inner join PtCliente e On c.' +
        'ClienteID=e.CLIENTEID where d.FormadePagoID IN ('#39'PGE'#39#39','#39'PGT'#39','#39'PG' +
        'K'#39','#39'PGD'#39')')
    Left = 424
    Top = 160
    object qrPagosSucursalId: TStringField
      FieldName = 'SucursalId'
      Size = 10
    end
    object qrPagosFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object qrPagosHora: TStringField
      FieldName = 'Hora'
    end
    object qrPagosUsuarioID: TStringField
      FieldName = 'UsuarioID'
      Size = 10
    end
    object qrPagosMonto: TBCDField
      FieldName = 'Monto'
      DisplayFormat = '##,##0.00'
      Precision = 19
    end
    object qrPagosReciboNo: TStringField
      FieldName = 'ReciboNo'
    end
    object qrPagosNombreCliente: TStringField
      FieldName = 'NombreCliente'
      Size = 100
    end
    object qrPagosCobroid: TStringField
      FieldName = 'Cobroid'
    end
  end
  object dsPagos: TDataSource
    DataSet = qrPagos
    Left = 496
    Top = 160
  end
  object dsPagosDetalle: TDataSource
    DataSet = qrPagosDetalle
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
  object qrImpCobro: TADOQuery
    Active = True
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'Select s.Nombre as Nombre_Sucursal,c.Concepto as Responsable,c.C' +
        'lienteID,e.Nombre as Nombre_Cliente,'
      'c.UsuarioID,c.MonedaID,c.ReciboNo,d.FormaDePagoID as Forma_Pago,'
      '(Case d.FormaDePagoID when '#39'PGE'#39' Then '#39'Pago en Efectivo (RD$)'#39
      '                      when '#39'PGD'#39' Then '#39'Tarjeta de D'#233'bito'#39
      #9#9#9#9#9'  when '#39'PGT'#39' Then '#39'Tarjeta de Cr'#233'dito'#39
      #9#9#9#9#9'  when '#39'PGK'#39' Then '#39'Cheques'#39
      #9#9#9#9#9'  when '#39'PGU'#39' Then '#39'Pago en Efectivo (US$)'#39
      
        'End) As Descripcion,d.Monto,(Select Isnull(Sum(Monto),0) From Pt' +
        'cobrodetalle Where CobroID='#39'0103343124'#39') As Total,'
      
        '(Select Serial from PtSeriales Where Grupo_ID='#39'97'#39') As Numero_Se' +
        'rial,(Select Fecha_Emision from PtSeriales Where Grupo_ID='#39'97'#39') ' +
        'As Fecha_Emision,'
      
        '(Select Fecha_Revision from PtSeriales Where Grupo_ID='#39'97'#39') As F' +
        'echa_Revision'
      'From ptcobro c inner join ptcliente e on c.clienteid=e.ClienteID'
      
        'inner join ptSucursal s on c.SucursalID=s.SucursalID inner join ' +
        'PTCobroDetalle d on c.CobroID=d.CobroID'
      'WHERE c.cobroid='#39'0103343124'#39)
    Left = 392
    object qrImpCobroNombre_Sucursal: TStringField
      FieldName = 'Nombre_Sucursal'
      Size = 50
    end
    object qrImpCobroResponsable: TStringField
      FieldName = 'Responsable'
      Size = 50
    end
    object qrImpCobroClienteID: TStringField
      FieldName = 'ClienteID'
      Size = 10
    end
    object qrImpCobroNombre_Cliente: TStringField
      FieldName = 'Nombre_Cliente'
      Size = 80
    end
    object qrImpCobroUsuarioID: TStringField
      FieldName = 'UsuarioID'
      Size = 10
    end
    object qrImpCobroMonedaID: TStringField
      FieldName = 'MonedaID'
      Size = 3
    end
    object qrImpCobroReciboNo: TStringField
      FieldName = 'ReciboNo'
    end
    object qrImpCobroForma_Pago: TStringField
      FieldName = 'Forma_Pago'
      Size = 10
    end
    object qrImpCobroDescripcion: TStringField
      FieldName = 'Descripcion'
      ReadOnly = True
      Size = 22
    end
    object qrImpCobroMonto: TBCDField
      FieldName = 'Monto'
      Precision = 19
    end
    object qrImpCobroTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      Precision = 19
    end
    object qrImpCobroNumero_Serial: TStringField
      FieldName = 'Numero_Serial'
      ReadOnly = True
    end
    object qrImpCobroFecha_Emision: TDateTimeField
      FieldName = 'Fecha_Emision'
      ReadOnly = True
    end
    object qrImpCobroFecha_Revision: TDateTimeField
      FieldName = 'Fecha_Revision'
      ReadOnly = True
    end
  end
  object dsCobros: TDataSource
    DataSet = qrImpCobro
    Left = 424
  end
  object ppImpCobroCliente: TppReport
    AutoStop = False
    DataPipeline = ppCobroCliente
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
    AllowPrintToArchive = True
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PDFSettings.OpenPDFFile = True
    SavePrinterSetup = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 69
    Top = 191
    Version = '10.04'
    mmColumnWidth = 203200
    DataPipelineName = 'ppCobroCliente'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 84402
      mmPrintPosition = 0
      object ppDBText26: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TituloEmpresa'
        DataPipeline = DM.ppParam
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppParam'
        mmHeight = 5842
        mmLeft = 2117
        mmTop = 13494
        mmWidth = 86254
        BandType = 0
      end
      object ppDBText28: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Telefono'
        DataPipeline = DM.ppParam
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppParam'
        mmHeight = 4233
        mmLeft = 11906
        mmTop = 25665
        mmWidth = 31221
        BandType = 0
      end
      object ppDBText29: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Fax'
        DataPipeline = DM.ppParam
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppParam'
        mmHeight = 4233
        mmLeft = 52652
        mmTop = 25665
        mmWidth = 35719
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Tel..:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 2117
        mmTop = 25665
        mmWidth = 8255
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fax:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 44979
        mmTop = 25665
        mmWidth = 7144
        BandType = 0
      end
      object ppDBText31: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Responsable'
        DataPipeline = ppCobroCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppCobroCliente'
        mmHeight = 3969
        mmLeft = 25665
        mmTop = 35454
        mmWidth = 115094
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Responsable      :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 2381
        mmTop = 35454
        mmWidth = 21696
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cliente         :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 2381
        mmTop = 40481
        mmWidth = 23019
        BandType = 0
      end
      object ppDBText33: TppDBText
        UserName = 'DBText14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ClienteID'
        DataPipeline = ppCobroCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppCobroCliente'
        mmHeight = 3969
        mmLeft = 25929
        mmTop = 40481
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText34: TppDBText
        UserName = 'DBText15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Nombre_Cliente'
        DataPipeline = ppCobroCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppCobroCliente'
        mmHeight = 3969
        mmLeft = 43921
        mmTop = 40481
        mmWidth = 96838
        BandType = 0
      end
      object ppShape2: TppShape
        UserName = 'Shape1'
        mmHeight = 6615
        mmLeft = 529
        mmTop = 75142
        mmWidth = 198967
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Tipo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 4233
        mmTop = 76729
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Descripci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 23813
        mmTop = 76729
        mmWidth = 20108
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label15'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Monto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 120915
        mmTop = 76729
        mmWidth = 21696
        BandType = 0
      end
      object ppLabel227: TppLabel
        UserName = 'Label227'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'RNC:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 2381
        mmTop = 30692
        mmWidth = 8805
        BandType = 0
      end
      object ppDBText134: TppDBText
        UserName = 'DBText134'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'RNC'
        DataPipeline = DM.ppParam
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppParam'
        mmHeight = 4233
        mmLeft = 11906
        mmTop = 30692
        mmWidth = 31221
        BandType = 0
      end
      object ppLabel233: TppLabel
        UserName = 'Label233'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 167746
        mmTop = 76994
        mmWidth = 28310
        BandType = 0
      end
      object ppLabel234: TppLabel
        UserName = 'Label234'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fecha Impresion :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4022
        mmLeft = 151077
        mmTop = 13494
        mmWidth = 28046
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 179917
        mmTop = 13494
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel235: TppLabel
        UserName = 'Label235'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Pagina No. :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4022
        mmLeft = 165100
        mmTop = 17992
        mmWidth = 28575
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4022
        mmLeft = 194469
        mmTop = 17727
        mmWidth = 3175
        BandType = 0
      end
      object ppLabel236: TppLabel
        UserName = 'lbtipodoc1'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'RECIBO NO.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4995
        mmLeft = 150813
        mmTop = 23283
        mmWidth = 46831
        BandType = 0
      end
      object ppDBText137: TppDBText
        UserName = 'DBText137'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ReciboNo'
        DataPipeline = ppCobroCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppCobroCliente'
        mmHeight = 4868
        mmLeft = 150813
        mmTop = 29633
        mmWidth = 46831
        BandType = 0
      end
      object ppLabel90: TppLabel
        UserName = 'Label2401'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Centro  :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4995
        mmLeft = 2381
        mmTop = 20108
        mmWidth = 17441
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Usuario        :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 2381
        mmTop = 45244
        mmWidth = 23019
        BandType = 0
      end
      object ppDBText1: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'UsuarioID'
        DataPipeline = ppCobroCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppCobroCliente'
        mmHeight = 3969
        mmLeft = 25929
        mmTop = 45773
        mmWidth = 114829
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2402'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'RECIBO DE PAGO CLIENTES A CREDITO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4995
        mmLeft = 59383
        mmTop = 59002
        mmWidth = 86519
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Moneda       :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 2381
        mmTop = 50006
        mmWidth = 23019
        BandType = 0
      end
      object ppDBText2: TppDBText
        UserName = 'DBText7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'MonedaID'
        DataPipeline = ppCobroCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppCobroCliente'
        mmHeight = 3969
        mmLeft = 26194
        mmTop = 50536
        mmWidth = 114829
        BandType = 0
      end
      object ppDBText3: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Nombre_Sucursal'
        DataPipeline = ppCobroCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppCobroCliente'
        mmHeight = 5027
        mmLeft = 20902
        mmTop = 19844
        mmWidth = 67469
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppDBText39: TppDBText
        UserName = 'DBText12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Forma_Pago'
        DataPipeline = ppCobroCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppCobroCliente'
        mmHeight = 3969
        mmLeft = 3440
        mmTop = 0
        mmWidth = 18256
        BandType = 4
      end
      object ppDBText40: TppDBText
        UserName = 'DBText13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Descripcion'
        DataPipeline = ppCobroCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppCobroCliente'
        mmHeight = 3969
        mmLeft = 23813
        mmTop = 0
        mmWidth = 92075
        BandType = 4
      end
      object ppDBText41: TppDBText
        UserName = 'DBText16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Monto'
        DataPipeline = ppCobroCliente
        DisplayFormat = '##,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppCobroCliente'
        mmHeight = 4022
        mmLeft = 120386
        mmTop = 0
        mmWidth = 21960
        BandType = 4
      end
      object ppDBText136: TppDBText
        UserName = 'DBText136'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Monto'
        DataPipeline = ppCobroCliente
        DisplayFormat = '##,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppCobroCliente'
        mmHeight = 3969
        mmLeft = 168275
        mmTop = 0
        mmWidth = 29369
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 30692
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 143140
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 53711
        mmTop = 59267
        mmWidth = 92869
        BandType = 7
      end
      object ppLabel4: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Recibido Conforme'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4995
        mmLeft = 80608
        mmTop = 59531
        mmWidth = 39074
        BandType = 7
      end
      object ppLabel259: TppLabel
        UserName = 'Label2501'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Serial :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 1852
        mmTop = 126471
        mmWidth = 11113
        BandType = 7
      end
      object ppLabel260: TppLabel
        UserName = 'Label260'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Fecha de Emisi'#243'n :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 1588
        mmTop = 130969
        mmWidth = 29898
        BandType = 7
      end
      object ppLabel261: TppLabel
        UserName = 'Label261'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Fecha de Revisi'#243'n :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 1852
        mmTop = 135467
        mmWidth = 29898
        BandType = 7
      end
      object ppDBText147: TppDBText
        UserName = 'DBText147'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Numero_Serial'
        DataPipeline = ppCobroCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppCobroCliente'
        mmHeight = 3969
        mmLeft = 13758
        mmTop = 126736
        mmWidth = 36248
        BandType = 7
      end
      object ppDBText148: TppDBText
        UserName = 'DBText148'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Fecha_Emision'
        DataPipeline = ppCobroCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppCobroCliente'
        mmHeight = 3969
        mmLeft = 32015
        mmTop = 130969
        mmWidth = 17992
        BandType = 7
      end
      object ppDBText149: TppDBText
        UserName = 'DBText149'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Fecha_Revision'
        DataPipeline = ppCobroCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppCobroCliente'
        mmHeight = 3969
        mmLeft = 32015
        mmTop = 135467
        mmWidth = 17992
        BandType = 7
      end
      object ppLabel231: TppLabel
        UserName = 'Label231'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total a Pagar :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 150284
        mmTop = 2381
        mmWidth = 29898
        BandType = 7
      end
      object ppDBText48: TppDBText
        UserName = 'DBText10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Total'
        DataPipeline = ppCobroCliente
        DisplayFormat = '##,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppCobroCliente'
        mmHeight = 3969
        mmLeft = 180446
        mmTop = 2381
        mmWidth = 17198
        BandType = 7
      end
    end
  end
  object ppCobroCliente: TppDBPipeline
    DataSource = dsCobros
    UserName = 'ppImpCobroCliente'
    Left = 123
    Top = 192
    object ppCobroClienteppField1: TppField
      FieldAlias = 'Nombre_Sucursal'
      FieldName = 'Nombre_Sucursal'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppCobroClienteppField2: TppField
      FieldAlias = 'Responsable'
      FieldName = 'Responsable'
      FieldLength = 50
      DisplayWidth = 50
      Position = 1
    end
    object ppCobroClienteppField3: TppField
      FieldAlias = 'ClienteID'
      FieldName = 'ClienteID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 2
    end
    object ppCobroClienteppField4: TppField
      FieldAlias = 'Nombre_Cliente'
      FieldName = 'Nombre_Cliente'
      FieldLength = 80
      DisplayWidth = 80
      Position = 3
    end
    object ppCobroClienteppField5: TppField
      FieldAlias = 'UsuarioID'
      FieldName = 'UsuarioID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 4
    end
    object ppCobroClienteppField6: TppField
      FieldAlias = 'MonedaID'
      FieldName = 'MonedaID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 5
    end
    object ppCobroClienteppField7: TppField
      FieldAlias = 'ReciboNo'
      FieldName = 'ReciboNo'
      FieldLength = 20
      DisplayWidth = 20
      Position = 6
    end
    object ppCobroClienteppField8: TppField
      FieldAlias = 'Forma_Pago'
      FieldName = 'Forma_Pago'
      FieldLength = 10
      DisplayWidth = 10
      Position = 7
    end
    object ppCobroClienteppField9: TppField
      FieldAlias = 'Descripcion'
      FieldName = 'Descripcion'
      FieldLength = 22
      DisplayWidth = 22
      Position = 8
    end
    object ppCobroClienteppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'Monto'
      FieldName = 'Monto'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 9
    end
    object ppCobroClienteppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'Total'
      FieldName = 'Total'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 10
    end
    object ppCobroClienteppField12: TppField
      FieldAlias = 'Numero_Serial'
      FieldName = 'Numero_Serial'
      FieldLength = 20
      DisplayWidth = 20
      Position = 11
    end
    object ppCobroClienteppField13: TppField
      FieldAlias = 'Fecha_Emision'
      FieldName = 'Fecha_Emision'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 12
    end
    object ppCobroClienteppField14: TppField
      FieldAlias = 'Fecha_Revision'
      FieldName = 'Fecha_Revision'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 13
    end
  end
  object qrPagosDetalle: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'Select Cobroid,f.Descripcion as Forma_Pago,Monto,CuadreUsuario,C' +
        'uadreGlobal,Devuelta,BancoID,Numero_Referencia,'
      
        'Numero_Aprobacion from ptcobrodetalle d inner join PtFormadePago' +
        ' f on d.FormaDePagoID=f.FormadePagoID'
      'where d.CobroID='#39'0103343124'#39
      '')
    Left = 424
    Top = 200
    object qrPagosDetalleCobroid: TStringField
      FieldName = 'Cobroid'
    end
    object qrPagosDetalleForma_Pago: TStringField
      FieldName = 'Forma_Pago'
      Size = 50
    end
    object qrPagosDetalleMonto: TBCDField
      FieldName = 'Monto'
      DisplayFormat = '#,###,###.00'
      EditFormat = '#,###,###.00'
      Precision = 19
    end
    object qrPagosDetalleCuadreUsuario: TStringField
      FieldName = 'CuadreUsuario'
    end
    object qrPagosDetalleCuadreGlobal: TStringField
      FieldName = 'CuadreGlobal'
    end
    object qrPagosDetalleDevuelta: TBCDField
      FieldName = 'Devuelta'
      Precision = 19
    end
    object qrPagosDetalleBancoID: TStringField
      FieldName = 'BancoID'
    end
    object qrPagosDetalleNumero_Referencia: TStringField
      FieldName = 'Numero_Referencia'
    end
    object qrPagosDetalleNumero_Aprobacion: TStringField
      FieldName = 'Numero_Aprobacion'
    end
  end
end
