object frmDialogFiliacion: TfrmDialogFiliacion
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Consulta de Pruebas Perfil Gen'#233'tico'
  ClientHeight = 655
  ClientWidth = 892
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 892
    Height = 655
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmAppActions.lnfWeb
    DesignSize = (
      892
      655)
    object BtAceptar: TcxButton
      Left = 508
      Top = 664
      Width = 185
      Height = 25
      Caption = 'F5 = Procesar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ModalResult = 1
      ParentFont = False
      TabOrder = 9
    end
    object BtCancelar: TcxButton
      Left = 699
      Top = 664
      Width = 176
      Height = 25
      Caption = 'Esc = Salir'
      ModalResult = 2
      TabOrder = 10
    end
    object cgSeleccion: TcxGrid
      Left = 23
      Top = 502
      Width = 840
      Height = 149
      PopupMenu = MenuSeleccion
      TabOrder = 8
      object dbSeleccion: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.First.Visible = False
        NavigatorButtons.PriorPage.Visible = False
        NavigatorButtons.Prior.Visible = False
        NavigatorButtons.Next.Visible = False
        NavigatorButtons.NextPage.Visible = False
        NavigatorButtons.Last.Visible = False
        NavigatorButtons.Insert.Visible = False
        NavigatorButtons.Edit.Visible = True
        NavigatorButtons.Refresh.Visible = True
        NavigatorButtons.SaveBookmark.Visible = False
        NavigatorButtons.GotoBookmark.Visible = False
        NavigatorButtons.Filter.Visible = False
        DataController.DataSource = dsSeleccion
        DataController.Filter.PercentWildcard = '*'
        DataController.KeyFieldNames = 'PruebaID'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
          end
          item
            Kind = skCount
            Column = dbSeleccionSeleccion
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsSelection.CellMultiSelect = True
        OptionsView.Navigator = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        OptionsView.NewItemRowInfoText = 'Click here to add a new row'
        Preview.Visible = True
        object dbSeleccionSeleccion: TcxGridDBColumn
          DataBinding.FieldName = 'Seleccion'
          Width = 40
        end
        object dbSeleccionPruebaID: TcxGridDBColumn
          DataBinding.FieldName = 'PruebaID'
          Options.Editing = False
          Width = 90
        end
        object dbSeleccionDescripcion: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
          Options.Editing = False
          Width = 200
        end
        object dbSeleccionPrecio: TcxGridDBColumn
          DataBinding.FieldName = 'Precio'
          Options.Editing = False
          Width = 90
        end
        object dbSeleccionPrecioDolares: TcxGridDBColumn
          DataBinding.FieldName = 'PrecioDolares'
          Options.Editing = False
          Width = 90
        end
        object dbSeleccionComentario: TcxGridDBColumn
          DataBinding.FieldName = 'Comentario'
          Visible = False
        end
      end
      object lvSeleccion: TcxGridLevel
        GridView = dbSeleccion
      end
    end
    object cgDatosFiliacion: TcxGrid
      Left = 23
      Top = 317
      Width = 808
      Height = 146
      PopupMenu = MenuGrid
      TabOrder = 6
      object dbDatosFiliacion: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.First.Visible = True
        NavigatorButtons.PriorPage.Visible = False
        NavigatorButtons.Prior.Visible = False
        NavigatorButtons.Next.Visible = True
        NavigatorButtons.NextPage.Visible = False
        NavigatorButtons.Last.Visible = False
        NavigatorButtons.Insert.Visible = False
        NavigatorButtons.Delete.Visible = False
        NavigatorButtons.Edit.Visible = True
        NavigatorButtons.Refresh.Visible = True
        NavigatorButtons.SaveBookmark.Visible = True
        NavigatorButtons.GotoBookmark.Visible = False
        NavigatorButtons.Filter.Visible = False
        DataController.DataSource = dsDatosFiliacion
        DataController.Filter.PercentWildcard = '*'
        DataController.KeyFieldNames = 'Secuencia'
        DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoFocusTopRowAfterSorting, dcoImmediatePost, dcoInsertOnNewItemRowFocusing]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
          end
          item
            Kind = skCount
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsData.Appending = True
        OptionsView.Navigator = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        OptionsView.NewItemRowInfoText = 'Click here to add a new row'
        Preview.Visible = True
        Styles.Background = cxStyle13
        Styles.OnGetContentStyle = dbDatosFiliacionStylesGetContentStyle
        Styles.Footer = cxStyle6
        Styles.Group = cxStyle7
        Styles.Header = cxStyle9
        object dbDatosFiliacionSecuencia: TcxGridDBColumn
          Caption = 'No.'
          DataBinding.FieldName = 'Secuencia'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Options.SortByDisplayText = isbtOff
          Options.Sorting = False
          Width = 41
        end
        object dbDatosFiliacionPruebaID: TcxGridDBColumn
          DataBinding.FieldName = 'PruebaID'
          Visible = False
          Options.Editing = False
          Options.Focusing = False
        end
        object dbDatosFiliacionNombre: TcxGridDBColumn
          DataBinding.FieldName = 'Nombre'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.CharCase = ecUpperCase
          Properties.MaxLength = 50
          Properties.ValidateOnEnter = True
          HeaderAlignmentHorz = taCenter
          Options.SortByDisplayText = isbtOff
          Options.Sorting = False
          Width = 291
        end
        object dbDatosFiliacionTipoPerfil: TcxGridDBColumn
          Caption = 'Tipo Perfil'
          DataBinding.FieldName = 'TipoPerfil'
          HeaderAlignmentHorz = taCenter
          Width = 111
        end
        object dbDatosFiliacionParentesco: TcxGridDBColumn
          DataBinding.FieldName = 'Parentesco'
          PropertiesClassName = 'TcxComboBoxProperties'
          Properties.CharCase = ecUpperCase
          Properties.DropDownListStyle = lsEditFixedList
          Properties.ImmediatePost = True
          Properties.ImmediateUpdateText = True
          Properties.OnInitPopup = dbDatosFiliacionParentescoPropertiesInitPopup
          HeaderAlignmentHorz = taCenter
          Options.SortByDisplayText = isbtOff
          Options.Sorting = False
          Width = 194
        end
        object dbDatosFiliacionFechaColeccion: TcxGridDBColumn
          Caption = 'Fecha Coleccion'
          DataBinding.FieldName = 'FechaColeccion'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.DateButtons = [btnNow, btnToday]
          HeaderAlignmentHorz = taCenter
          Options.SortByDisplayText = isbtOff
          Options.Sorting = False
          Width = 157
        end
        object dbDatosFiliacionTipoFiliacion: TcxGridDBColumn
          DataBinding.FieldName = 'TipoFiliacion'
          Visible = False
        end
        object dbDatosFiliacionCodigoIDAS400: TcxGridDBColumn
          DataBinding.FieldName = 'CodigoIDAS400'
          Visible = False
        end
      end
      object lvDatosFiliacion: TcxGridLevel
        GridView = dbDatosFiliacion
      end
    end
    object cgEntidad: TcxGrid
      Left = 23
      Top = 121
      Width = 415
      Height = 158
      TabOrder = 4
      OnEnter = cgEntidadEnter
      OnExit = cgEntidadExit
      object dbEntidad: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsFiliacionE
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '##,###,##0.00'
            Kind = skSum
          end
          item
            Kind = skCount
            Column = dbEntidadSeleccion
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnSorting = False
        OptionsData.Appending = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        OptionsView.NewItemRowInfoText = 'Click here to add a new row'
        object dbEntidadSeleccion: TcxGridDBColumn
          Caption = 'Sel.'
          DataBinding.FieldName = 'Seleccion'
          PropertiesClassName = 'TcxCheckGroupProperties'
          Properties.Items = <
            item
            end>
          Properties.OnEditValueChanged = dbEntidadSeleccionPropertiesEditValueChanged
          HeaderAlignmentHorz = taCenter
          Width = 22
        end
        object dbEntidadPruebaID: TcxGridDBColumn
          DataBinding.FieldName = 'PruebaID'
          Visible = False
          Options.Editing = False
        end
        object dbEntidadCantidad: TcxGridDBColumn
          Caption = 'Cant.'
          DataBinding.FieldName = 'Cantidad'
          Visible = False
          Options.Editing = False
          Width = 24
        end
        object dbEntidadNombre: TcxGridDBColumn
          DataBinding.FieldName = 'Nombre'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 362
        end
      end
      object dbPrueba: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsPruebasf
        DataController.DetailKeyFieldNames = 'refrecid'
        DataController.MasterKeyFieldNames = 'RecID'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsView.GroupByBox = False
        OptionsView.NewItemRowInfoText = 'Click here to add a new row'
        object dbPruebamuestrano: TcxGridDBColumn
          Caption = 'N'#250'm. Lab.'
          DataBinding.FieldName = 'muestrano'
          Width = 80
        end
        object dbPruebapruebaid: TcxGridDBColumn
          Caption = 'PruebaID'
          DataBinding.FieldName = 'pruebaid'
          Width = 80
        end
        object dbPruebacomentario: TcxGridDBColumn
          Caption = 'Paciente'
          DataBinding.FieldName = 'comentario'
          Width = 225
        end
        object dbPruebarefrecid: TcxGridDBColumn
          DataBinding.FieldName = 'refrecid'
          Visible = False
        end
      end
      object lvEntidad: TcxGridLevel
        GridView = dbEntidad
        object lvPruebas: TcxGridLevel
          GridView = dbPrueba
        end
      end
    end
    object cgAdicional: TcxGrid
      Left = 444
      Top = 121
      Width = 415
      Height = 158
      TabOrder = 5
      OnEnter = cgAdicionalEnter
      OnExit = cgAdicionalExit
      object dbAdicional: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        OnEditValueChanged = dbAdicionalEditValueChanged
        DataController.DataSource = dsFiliacionA
        DataController.KeyFieldNames = 'PruebaID'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '##,###,##0.00'
            Kind = skSum
          end
          item
            Kind = skCount
            Column = dbAdicionalSeleccion
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnSorting = False
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        OptionsView.NewItemRowInfoText = 'Click here to add a new row'
        object dbAdicionalSeleccion: TcxGridDBColumn
          Caption = 'Sel.'
          DataBinding.FieldName = 'Seleccion'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.DisplayChecked = 'True'
          Properties.DisplayUnchecked = 'False'
          Properties.OnEditValueChanged = dbAdicionalSeleccionPropertiesEditValueChanged
          HeaderAlignmentHorz = taCenter
          Width = 32
        end
        object dbAdicionalPruebaID: TcxGridDBColumn
          DataBinding.FieldName = 'PruebaID'
          Visible = False
          Options.Editing = False
        end
        object dbAdicionalCantidad: TcxGridDBColumn
          Caption = 'Cant.'
          DataBinding.FieldName = 'Secuencia'
          Visible = False
          Options.Editing = False
          Width = 24
        end
        object dbAdicionalNombre: TcxGridDBColumn
          DataBinding.FieldName = 'Nombre'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 369
        end
      end
      object lvAdicional: TcxGridLevel
        GridView = dbAdicional
      end
    end
    object btProcesar: TcxButton
      Left = 837
      Top = 317
      Width = 23
      Height = 147
      Align = alRight
      TabOrder = 7
      OnClick = btProcesarClick
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF002B934800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF002B93480031A648002B934800FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00399B610031A6480031A6480031A648002B934800FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF002B93480031A6480037B7550033A1580031A648002B934800FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003F94
        660031A6480037B755002F8D58002F8D580037B7550043A1460037B75500FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002B93
        480037B755002F8D5800FFFFFF00FFFFFF002F8D580037B755002B934800FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF002F8D5800FFFFFF00FFFFFF00FFFFFF00FFFFFF002F8D580037B755002B93
        4800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002F8D580037B7
        550037B75500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002F8D
        580031A64800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF002F8D580031A64800FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
        FF0000000000FFFFFF000000000000000000A59C9C00FFFFFF00A59C9C000000
        0000000000002F8D580031A64800FFFFFF00FFFFFF00FFFFFF0000000000FFFF
        FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFF
        FF00FFFFFF00FFFFFF002F8D580031A64800FFFFFF00FFFFFF00000000000000
        000000000000FFFFFF000000000000000000A59C9C00FFFFFF0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF002F8D580031A64800FFFFFF0000000000FFFF
        FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002F8D5800FFFFFF00A59C9C000000
        0000A59C9C00FFFFFF000000000000000000A59C9C00FFFFFF00A59C9C000000
        000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
    end
    object edbuscarpor: TcxComboBox
      Left = 80
      Top = 36
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownSizeable = True
      Properties.Items.Strings = (
        'Telefono'
        'Nombre'
        'Cedula')
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 0
      Width = 103
    end
    object edbuscar: TcxTextEdit
      Left = 221
      Top = 36
      Properties.CharCase = ecUpperCase
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 1
      OnExit = edbuscarExit
      Width = 311
    end
    object cxLabel1: TcxLabel
      Left = 598
      Top = 36
      Anchors = [akLeft, akTop, akRight, akBottom]
      AutoSize = False
      Caption = 'F9=Seleccionar Pruebas'
      ParentColor = False
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      Properties.LabelEffect = cxleCool
      Properties.LabelStyle = cxlsRaised
      Properties.ShadowedColor = clGray
      Style.Color = 16311249
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -21
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      Height = 28
      Width = 260
    end
    object btnAdd: TcxButton
      Left = 538
      Top = 36
      Width = 54
      Height = 29
      Caption = 'Inserta '#13#10'Paciente'
      TabOrder = 2
      OnClick = btnAddClick
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Group5: TdxLayoutGroup
        AutoAligns = [aaVertical]
        Caption = 'Par'#225'metros'
        LayoutDirection = ldHorizontal
        object dxLayoutControl1Item8: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Buscar Por'
          Control = edbuscarpor
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item9: TdxLayoutItem
          Caption = 'Texto'
          Control = edbuscar
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item11: TdxLayoutItem
          Caption = 'New Item'
          ShowCaption = False
          Control = btnAdd
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item10: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'New Item'
          ShowCaption = False
          Control = cxLabel1
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Group3: TdxLayoutGroup
        AutoAligns = []
        Caption = 'Seleccione Tipo de Perfil Gen'#233'tico'
        LayoutDirection = ldHorizontal
        object dxLayoutControl1Item6: TdxLayoutItem
          AutoAligns = []
          Caption = 'Perfil Genetico Principal'
          CaptionOptions.AlignHorz = taCenter
          CaptionOptions.Layout = clTop
          Control = cgEntidad
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item7: TdxLayoutItem
          AutoAligns = []
          Caption = 'Adicional'
          CaptionOptions.AlignHorz = taCenter
          CaptionOptions.Layout = clTop
          Control = cgAdicional
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Group4: TdxLayoutGroup
        AutoAligns = []
        Caption = 'Registro Datos Perfil Gen'#233'tico'
        LayoutDirection = ldHorizontal
        object dxLayoutControl1Item3: TdxLayoutItem
          Control = cgDatosFiliacion
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item1: TdxLayoutItem
          Caption = 'cxButton1'
          ShowCaption = False
          Control = btProcesar
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Group1: TdxLayoutGroup
        AutoAligns = []
        Caption = 'Pruebas Seleccionadas'
        object dxLayoutControl1Item2: TdxLayoutItem
          Control = cgSeleccion
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Group2: TdxLayoutGroup
        AutoAligns = [aaVertical]
        AlignHorz = ahRight
        Caption = 'Botones'
        ShowCaption = False
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Item4: TdxLayoutItem
          Caption = 'cxButton1'
          ShowCaption = False
          Control = BtAceptar
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item5: TdxLayoutItem
          Caption = 'cxButton2'
          ShowCaption = False
          Control = BtCancelar
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object spPerfilGenetico: TLMDSimplePanel
    Left = 221
    Top = 71
    Width = 432
    Height = 243
    Bevel.StyleInner = bvFrameLowered
    Bevel.StyleOuter = bvFrameRaised
    Bevel.BorderWidth = 8
    Bevel.BorderInnerWidth = 2
    Bevel.LightColor = 12582911
    Bevel.Mode = bmCustom
    Bevel.StandardStyle = lsLowered
    Color = clMenuBar
    TabOrder = 1
    Visible = False
    object LMDLabel2: TLMDLabel
      Left = 13
      Top = 11
      Width = 405
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
      Caption = 'Mantenimiento Pacientes Perfil Gen'#233'tico Base'
    end
    object btCancelarNCF: TLMDButton
      Left = 335
      Top = 183
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
      OnClick = btCancelarNCFClick
      ButtonLayout.AlignText2Glyph = taBottom
      ButtonLayout.Spacing = 0
      ListIndex = 15
      NumGlyphs = 2
    end
    object btAceptaPG: TLMDButton
      Left = 249
      Top = 183
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
      OnClick = btAceptaPGClick
      ButtonLayout.AlignText2Glyph = taBottom
      ButtonLayout.Spacing = 0
      ListIndex = 15
      NumGlyphs = 2
    end
    object cxLabel4: TcxLabel
      Left = 41
      Top = 67
      Caption = 'No. Doc.:'
    end
    object cxLabel5: TcxLabel
      Left = 41
      Top = 92
      Caption = 'Nombre :'
    end
    object cxLabel2: TcxLabel
      Left = 41
      Top = 42
      Caption = 'Documento:'
    end
    object cxLabel9: TcxLabel
      Left = 41
      Top = 113
      Caption = 'Sexo:'
    end
    object cxLabel10: TcxLabel
      Left = 42
      Top = 136
      Caption = 'Fecha Nac.:'
    end
    object cxLabel11: TcxLabel
      Left = 41
      Top = 163
      Caption = 'Tel'#233'fono:'
    end
    object cbExtDocumento: TcxDBExtLookupComboBox
      Left = 117
      Top = 37
      RepositoryItem = DM.elcDocumento
      DataBinding.DataField = 'Tipo_Documento'
      DataBinding.DataSource = dsDatos
      Properties.CharCase = ecUpperCase
      Properties.FocusPopup = True
      Properties.OnChange = cbExtDocumentoPropertiesChange
      Properties.OnCloseUp = cbExtDocumentoPropertiesChange
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 8
      Width = 155
    end
    object mskDocumento: TcxMaskEdit
      Left = 117
      Top = 63
      Properties.CharCase = ecUpperCase
      Properties.EditMask = '###-#######-#'
      Properties.MaxLength = 0
      TabOrder = 9
      Text = '   -       - '
      OnExit = mskDocumentoExit
      Width = 108
    end
    object txtNombre: TcxDBTextEdit
      Left = 117
      Top = 88
      DataBinding.DataField = 'Nombre'
      DataBinding.DataSource = dsDatos
      Properties.CharCase = ecUpperCase
      TabOrder = 10
      Width = 214
    end
    object cbSexo: TcxDBImageComboBox
      Left = 118
      Top = 109
      DataBinding.DataField = 'Sexo'
      DataBinding.DataSource = dsDatos
      Properties.Items = <
        item
          Description = 'FEMENINO'
          ImageIndex = 0
          Value = 0
        end
        item
          Description = 'MASCULINO'
          Value = 1
        end>
      TabOrder = 11
      Width = 111
    end
    object EdFechaBorn: TcxDBDateEdit
      Left = 117
      Top = 132
      DataBinding.DataField = 'Fecha_Nac'
      DataBinding.DataSource = dsDatos
      TabOrder = 12
      Width = 112
    end
    object mskTelResidencia: TcxDBMaskEdit
      Left = 118
      Top = 159
      DataBinding.DataField = 'Telefono'
      DataBinding.DataSource = dsDatos
      Properties.CharCase = ecUpperCase
      Properties.MaskKind = emkRegExpr
      Properties.MaxLength = 0
      TabOrder = 13
      Width = 111
    end
  end
  object qrTipoFiliacion: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    Left = 368
    Top = 32
  end
  object dsFiliacionE: TDataSource
    DataSet = mdFiliacionE
    Left = 412
    Top = 32
  end
  object mdFiliacionE: TJvMemoryData
    FieldDefs = <
      item
        Name = 'Seleccion'
        DataType = ftBoolean
      end
      item
        Name = 'PruebaID'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Nombre'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Cantidad'
        DataType = ftInteger
      end
      item
        Name = 'CodigoIDAS400'
        DataType = ftString
        Size = 8
      end>
    Left = 136
    Top = 112
    object mdFiliacionESeleccion: TBooleanField
      FieldName = 'Seleccion'
    end
    object mdFiliacionEPruebaID: TStringField
      FieldName = 'PruebaID'
      Size = 8
    end
    object mdFiliacionENombre: TStringField
      FieldName = 'Nombre'
      Size = 50
    end
    object mdFiliacionEDocumento: TStringField
      FieldName = 'Documento'
    end
    object mdFiliacionECodigoIDAS400: TStringField
      FieldName = 'CodigoIDAS400'
      Size = 8
    end
    object mdFiliacionECantidad: TIntegerField
      FieldName = 'Cantidad'
    end
    object mdFiliacionERecID: TLargeintField
      FieldName = 'RecID'
    end
  end
  object mdFiliacionA: TJvMemoryData
    FieldDefs = <
      item
        Name = 'Seleccion'
        DataType = ftBoolean
      end
      item
        Name = 'Descripcion'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'Cod_Comen'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'Secuencia'
        DataType = ftInteger
      end>
    Left = 472
    Top = 32
    object mdFiliacionASeleccion: TBooleanField
      FieldName = 'Seleccion'
    end
    object mdFiliacionAPruebaID: TStringField
      FieldName = 'PruebaID'
      Size = 8
    end
    object mdFiliacionANombre: TStringField
      FieldName = 'Nombre'
      Size = 50
    end
    object mdFiliacionACantidad: TIntegerField
      FieldName = 'Cantidad'
    end
    object mdFiliacionACodigoIDAS400: TStringField
      FieldName = 'CodigoIDAS400'
      Size = 8
    end
  end
  object dsFiliacionA: TDataSource
    DataSet = mdFiliacionA
    Left = 396
    Top = 56
  end
  object mdDatosFiliacion: TJvMemoryData
    FieldDefs = <
      item
        Name = 'Secuencia'
        DataType = ftInteger
      end
      item
        Name = 'PruebaID'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Nombre'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Parentesco'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'FechaColeccion'
        DataType = ftDate
      end>
    Left = 120
    Top = 304
    object mdDatosFiliacionSecuencia: TIntegerField
      FieldName = 'Secuencia'
    end
    object mdDatosFiliacionPruebaID: TStringField
      FieldName = 'PruebaID'
      Size = 8
    end
    object mdDatosFiliacionNombre: TStringField
      FieldName = 'Nombre'
      Size = 50
    end
    object mdDatosFiliacionTipoPerfil: TStringField
      FieldName = 'TipoPerfil'
      Size = 10
    end
    object mdDatosFiliacionParentesco: TStringField
      FieldName = 'Parentesco'
    end
    object mdDatosFiliacionFechaColeccion: TStringField
      FieldName = 'FechaColeccion'
      Size = 15
    end
    object mdDatosFiliacionTipoFiliacion: TStringField
      FieldName = 'TipoFiliacion'
      Size = 1
    end
    object mdDatosFiliacionCodigoIDAS400: TStringField
      FieldName = 'CodigoIDAS400'
      Size = 8
    end
    object mdDatosFiliacionRecID: TLargeintField
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
    Left = 312
    Top = 480
    object JvMemoryData2Seleccion: TBooleanField
      FieldName = 'Seleccion'
    end
    object JvMemoryData2PruebaID: TStringField
      FieldName = 'PruebaID'
    end
    object JvMemoryData2Descripcion: TStringField
      FieldName = 'Descripcion'
      Size = 80
    end
    object JvMemoryData2Precio: TCurrencyField
      FieldName = 'Precio'
    end
    object JvMemoryData2PrecioDolares: TCurrencyField
      FieldName = 'PrecioDolares'
    end
    object JvMemoryData2CodigoIDAS400: TStringField
      FieldName = 'CodigoIDAS400'
      Size = 10
    end
    object JvMemoryData2Comentario: TStringField
      FieldName = 'Comentario'
      Size = 100
    end
  end
  object dsSeleccion: TDataSource
    DataSet = JvMemoryData2
    Left = 364
    Top = 479
  end
  object dsDatosFiliacion: TDataSource
    DataSet = mdDatosFiliacion
    Left = 172
    Top = 303
  end
  object qrPruebas: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT PRUEBAID, ALIAS, DESCRIPCION, ESTATUS, GRUPOPRUEBAID, DEP' +
        'ARTAMENTO, PRECIO, PERMITECAMBIOPRECIO, CODIGOAXAPTA, PRECIODOLA' +
        'RES, COSTO, EXTERIOR, FACTURARCABECERA, PRUEBAS, TIPO, ORINA, SA' +
        'NGRE, CONDPACIENTE, CONDMUESTRA, CODDIAPROC, DIASRESULTADO, UNID' +
        'AD, ABREVIACION, MEDIO, COLOR, DEPID, TIPOAS400,CONVERT(VARCHAR(' +
        '10),CASE CODIGOIDAS400 WHEN NULL THEN 0 WHEN '#39#39' THEN 0 ELSE CODI' +
        'GOIDAS400 END) AS CODIGOIDAS400, MEDIOAS400, NOPROCESAR, COMENTA' +
        'RIONOPROCESAR, TIPOMUESTRA, COMENTARIO_REQ, COD_SEC_PRUEBA, DATA' +
        'AREAID, RECID'
      'FROM PTPrueba'
      'WHERE DataAreaId = '#39'ldr'#39
      'ORDER BY PruebaId')
    Left = 216
    Top = 305
    object qrPruebasPRUEBAID: TStringField
      FieldName = 'PRUEBAID'
    end
    object qrPruebasALIAS: TStringField
      FieldName = 'ALIAS'
      Size = 80
    end
    object qrPruebasDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 80
    end
    object qrPruebasESTATUS: TIntegerField
      FieldName = 'ESTATUS'
    end
    object qrPruebasGRUPOPRUEBAID: TStringField
      FieldName = 'GRUPOPRUEBAID'
      Size = 10
    end
    object qrPruebasDEPARTAMENTO: TStringField
      FieldName = 'DEPARTAMENTO'
      Size = 10
    end
    object qrPruebasPRECIO: TBCDField
      FieldName = 'PRECIO'
      Precision = 28
      Size = 12
    end
    object qrPruebasPERMITECAMBIOPRECIO: TIntegerField
      FieldName = 'PERMITECAMBIOPRECIO'
    end
    object qrPruebasCODIGOAXAPTA: TStringField
      FieldName = 'CODIGOAXAPTA'
    end
    object qrPruebasPRECIODOLARES: TBCDField
      FieldName = 'PRECIODOLARES'
      Precision = 28
      Size = 12
    end
    object qrPruebasCOSTO: TBCDField
      FieldName = 'COSTO'
      Precision = 28
      Size = 12
    end
    object qrPruebasEXTERIOR: TIntegerField
      FieldName = 'EXTERIOR'
    end
    object qrPruebasFACTURARCABECERA: TIntegerField
      FieldName = 'FACTURARCABECERA'
    end
    object qrPruebasPRUEBAS: TIntegerField
      FieldName = 'PRUEBAS'
    end
    object qrPruebasTIPO: TStringField
      FieldName = 'TIPO'
      Size = 5
    end
    object qrPruebasORINA: TIntegerField
      FieldName = 'ORINA'
    end
    object qrPruebasSANGRE: TIntegerField
      FieldName = 'SANGRE'
    end
    object qrPruebasCONDPACIENTE: TStringField
      FieldName = 'CONDPACIENTE'
      Size = 255
    end
    object qrPruebasCONDMUESTRA: TStringField
      FieldName = 'CONDMUESTRA'
      Size = 255
    end
    object qrPruebasCODDIAPROC: TStringField
      FieldName = 'CODDIAPROC'
      Size = 5
    end
    object qrPruebasDIASRESULTADO: TIntegerField
      FieldName = 'DIASRESULTADO'
    end
    object qrPruebasUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Size = 10
    end
    object qrPruebasABREVIACION: TStringField
      FieldName = 'ABREVIACION'
    end
    object qrPruebasMEDIO: TIntegerField
      FieldName = 'MEDIO'
    end
    object qrPruebasCOLOR: TIntegerField
      FieldName = 'COLOR'
    end
    object qrPruebasDEPID: TStringField
      FieldName = 'DEPID'
      Size = 10
    end
    object qrPruebasTIPOAS400: TStringField
      FieldName = 'TIPOAS400'
      Size = 2
    end
    object qrPruebasCODIGOIDAS400: TStringField
      FieldName = 'CODIGOIDAS400'
    end
    object qrPruebasMEDIOAS400: TStringField
      FieldName = 'MEDIOAS400'
      Size = 2
    end
    object qrPruebasNOPROCESAR: TIntegerField
      FieldName = 'NOPROCESAR'
    end
    object qrPruebasCOMENTARIONOPROCESAR: TStringField
      FieldName = 'COMENTARIONOPROCESAR'
      Size = 255
    end
    object qrPruebasDATAAREAID: TStringField
      FieldName = 'DATAAREAID'
      Size = 3
    end
    object qrPruebasTIPOMUESTRA: TStringField
      FieldName = 'TIPOMUESTRA'
      Size = 10
    end
    object qrPruebasCOMENTARIO_REQ: TIntegerField
      FieldName = 'COMENTARIO_REQ'
    end
    object qrPruebasCOD_SEC_PRUEBA: TIntegerField
      FieldName = 'COD_SEC_PRUEBA'
    end
    object qrPruebasRECID: TLargeintField
      FieldName = 'RECID'
    end
  end
  object MenuGrid: TPopupMenu
    Left = 422
    Top = 320
    object MenuItem1: TMenuItem
      Caption = 'Eliminar Unidad Familiar'
      OnClick = MenuItem1Click
    end
  end
  object LookAndFeelController: TcxLookAndFeelController
    Left = 304
    Top = 16
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 336
    Top = 16
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14811135
      TextColor = clBlack
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor]
      Color = 14872561
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle11: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle12: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle13: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle14: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 12937777
      TextColor = clWhite
    end
    object cxStyle15: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle16: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle17: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle18: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle19: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle20: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle21: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle22: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle23: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16749885
      TextColor = clWhite
    end
    object cxStyle24: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 12937777
      TextColor = clWhite
    end
    object stlEstatus: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clInfoBk
      TextColor = clRed
    end
    object stlRojo: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clWhite
      TextColor = clRed
    end
    object stlAzul: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clWhite
      TextColor = clBlue
    end
    object GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet
      Caption = 'DevExpress'
      Styles.Background = cxStyle1
      Styles.Content = cxStyle2
      Styles.ContentEven = cxStyle3
      Styles.ContentOdd = cxStyle4
      Styles.FilterBox = cxStyle5
      Styles.Inactive = cxStyle10
      Styles.IncSearch = cxStyle11
      Styles.Selection = cxStyle14
      Styles.Footer = cxStyle6
      Styles.Group = cxStyle7
      Styles.GroupByBox = cxStyle8
      Styles.Header = cxStyle9
      Styles.Indicator = cxStyle12
      Styles.Preview = cxStyle13
      BuiltIn = True
    end
    object GridCardViewStyleSheetDevExpress: TcxGridCardViewStyleSheet
      Caption = 'DevExpress'
      Styles.Background = cxStyle15
      Styles.Content = cxStyle18
      Styles.ContentEven = cxStyle19
      Styles.ContentOdd = cxStyle20
      Styles.Inactive = cxStyle21
      Styles.IncSearch = cxStyle22
      Styles.Selection = cxStyle24
      Styles.CaptionRow = cxStyle16
      Styles.CardBorder = cxStyle17
      Styles.RowCaption = cxStyle23
      BuiltIn = True
    end
  end
  object MenuSeleccion: TPopupMenu
    Left = 350
    Top = 408
    object MenuItem2: TMenuItem
      Caption = 'Eliminar Prueba Seleccionada'
      OnClick = MenuItem2Click
    end
  end
  object qrPacientes: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'TipDoc'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Select * from dbo.PtPerfilGenetico'
      'Where Tipo_Documento =:TipDoc')
    Left = 168
    Top = 55
    object qrPacientesTipo_Documento: TIntegerField
      FieldName = 'Tipo_Documento'
    end
    object qrPacientesDocumento: TStringField
      FieldName = 'Documento'
    end
    object qrPacientesNombre: TStringField
      FieldName = 'Nombre'
      Size = 80
    end
    object qrPacientesSexo: TWordField
      FieldName = 'Sexo'
    end
    object qrPacientesFecha_Nac: TDateTimeField
      FieldName = 'Fecha_Nac'
    end
    object qrPacientesTelefono: TStringField
      FieldName = 'Telefono'
    end
    object qrPacientesNum_Caso: TStringField
      FieldName = 'Num_Caso'
      Size = 8
    end
    object qrPacientesFecha_Rec: TDateTimeField
      FieldName = 'Fecha_Rec'
    end
  end
  object dsDatos: TDataSource
    DataSet = qrPacientes
    Left = 204
    Top = 55
  end
  object qrPruebasf: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select refrecid,muestrano,pruebaid,comentario from ptentradapaci' +
        'entedetalle d inner join'
      
        'dbo.PtPerfilGenetico p on d.refrecid=p.recid and d.pruebaid<>'#39'00' +
        '004543'#39)
    Left = 160
    Top = 2
    object qrPruebasfmuestrano: TStringField
      FieldName = 'muestrano'
    end
    object qrPruebasfpruebaid: TStringField
      FieldName = 'pruebaid'
    end
    object qrPruebasfcomentario: TStringField
      FieldName = 'comentario'
      Size = 255
    end
    object qrPruebasfrefrecid: TLargeintField
      FieldName = 'refrecid'
    end
  end
  object dsPruebasf: TDataSource
    DataSet = qrPruebasf
    Left = 196
    Top = 3
  end
end