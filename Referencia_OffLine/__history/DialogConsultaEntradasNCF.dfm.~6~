inherited frmDialogConsultaEntradaNCF: TfrmDialogConsultaEntradaNCF
  Left = -37
  BorderIcons = [biSystemMenu]
  Caption = 'Selecciona Entradas para NCF'
  ClientHeight = 716
  ClientWidth = 1012
  FormStyle = fsStayOnTop
  KeyPreview = True
  Position = poDefault
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  ExplicitWidth = 1020
  ExplicitHeight = 750
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 1012
    Height = 716
    ExplicitWidth = 1012
    ExplicitHeight = 716
    inherited edbuscarpor: TcxComboBox
      Properties.Items.Strings = (
        'Laboratorio No.'
        'Registro No.'
        'Paciente'
        'Nombre del Paciente'
        'Cliente'
        'Nombre del Cliente'
        'Telefono'
        'Usuario del D'#237'a'
        'Sucursal del D'#237'a'
        'Rango de Fecha')
    end
    inherited edbuscar: TcxTextEdit
      Properties.CharCase = ecUpperCase
      Properties.OnChange = edbuscarPropertiesChange
      OnExit = edbuscarExit
    end
    inherited cgDatos: TcxGrid
      Width = 990
      Height = 177
      OnEnter = cgDatosEnter
      OnExit = cgDatosExit
      ExplicitWidth = 990
      ExplicitHeight = 177
      inherited dbDatos: TcxGridDBTableView
        OnEditValueChanged = dbDatosEditValueChanged
        DataController.KeyFieldNames = 'PruebaID'
        OptionsData.Editing = True
        OptionsSelection.CellMultiSelect = True
        Styles.OnGetContentStyle = dbDatosStylesGetContentStyle
        object dbDatosSeleccion: TcxGridDBColumn
          Caption = 'Sel.'
          DataBinding.FieldName = 'Seleccion'
          Width = 41
        end
        object dbDatosMuestrano: TcxGridDBColumn
          DataBinding.FieldName = 'Muestrano'
          Options.Editing = False
          Width = 74
        end
        object dbDatosFecha: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 73
        end
        object dbDatosPacienteID: TcxGridDBColumn
          Caption = 'Pac. ID'
          DataBinding.FieldName = 'PacienteID'
          Width = 58
        end
        object dbDatosNombrePaciente: TcxGridDBColumn
          DataBinding.FieldName = 'NombrePaciente'
          HeaderAlignmentHorz = taCenter
          Width = 198
        end
        object dbDatosTelefonos: TcxGridDBColumn
          DataBinding.FieldName = 'Telefonos'
          HeaderAlignmentHorz = taCenter
          Width = 68
        end
        object dbDatosClienteID: TcxGridDBColumn
          DataBinding.FieldName = 'ClienteID'
          Width = 68
        end
        object dbDatosClienteNombre: TcxGridDBColumn
          DataBinding.FieldName = 'ClienteNombre'
          HeaderAlignmentHorz = taCenter
          Width = 240
        end
        object dbDatosMonedaID: TcxGridDBColumn
          Caption = 'Div.'
          DataBinding.FieldName = 'MonedaID'
          HeaderAlignmentHorz = taCenter
          Width = 42
        end
        object dbDatosNeto: TcxGridDBColumn
          DataBinding.FieldName = 'Neto'
          HeaderAlignmentHorz = taCenter
          Width = 114
        end
      end
    end
    inherited btcancelar: TcxButton
      Left = 926
      Top = 680
      TabOrder = 6
      ExplicitLeft = 926
      ExplicitTop = 680
    end
    inherited btaceptar: TcxButton
      Left = 845
      Top = 680
      TabOrder = 5
      ExplicitLeft = 845
      ExplicitTop = 680
    end
    object cgSeleccion: TcxGrid [5]
      Left = 23
      Top = 285
      Width = 967
      Height = 340
      PopupMenu = MenuGrid
      TabOrder = 3
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
        Preview.Visible = True
        Styles.Selection = cxStyleVerde
        object dbSeleccionSeleccion: TcxGridDBColumn
          Caption = 'Sel.'
          DataBinding.FieldName = 'Seleccion'
          Width = 40
        end
        object dbSeleccionMuestrano: TcxGridDBColumn
          DataBinding.FieldName = 'Muestrano'
          HeaderAlignmentHorz = taCenter
          Width = 78
        end
        object dbSeleccionFecha: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha'
          HeaderAlignmentHorz = taCenter
          Width = 69
        end
        object dbSeleccionPacienteID: TcxGridDBColumn
          Caption = 'Pac. ID'
          DataBinding.FieldName = 'PacienteID'
          Width = 58
        end
        object dbSeleccionNombrePaciente: TcxGridDBColumn
          DataBinding.FieldName = 'NombrePaciente'
          HeaderAlignmentHorz = taCenter
          Width = 186
        end
        object dbSeleccionTelefonos: TcxGridDBColumn
          DataBinding.FieldName = 'Telefonos'
          HeaderAlignmentHorz = taCenter
          Width = 76
        end
        object dbSeleccionClienteID: TcxGridDBColumn
          DataBinding.FieldName = 'ClienteID'
          Width = 66
        end
        object dbSeleccionClienteNombre: TcxGridDBColumn
          DataBinding.FieldName = 'ClienteNombre'
          HeaderAlignmentHorz = taCenter
          Width = 237
        end
        object dbSeleccionMonedaID: TcxGridDBColumn
          Caption = 'Div.'
          DataBinding.FieldName = 'MonedaID'
          HeaderAlignmentHorz = taRightJustify
          Width = 41
        end
        object dbSeleccionNeto: TcxGridDBColumn
          DataBinding.FieldName = 'Neto'
          HeaderAlignmentHorz = taCenter
          Width = 101
        end
      end
      object lvSeleccion: TcxGridLevel
        GridView = dbSeleccion
      end
    end
    object LbCondicion: TcxLabel [6]
      Left = 11
      Top = 638
      AutoSize = False
      Caption = 'F5 = <ENTER> Aceptar Facturas Seleccionadas'
      ParentColor = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
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
      Height = 36
      Width = 570
    end
    inherited dxLayoutControl1Group_Root: TdxLayoutGroup
      object dxLayoutControl1Group3: TdxLayoutGroup [2]
        Caption = 'Entradas Seleccionadas'
        object dxLayoutControl1Item3: TdxLayoutItem
          Control = cgSeleccion
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Item8: TdxLayoutItem [3]
        AutoAligns = [aaVertical]
        Caption = 'AceptaSeleccion'
        ShowCaption = False
        Control = LbCondicion
        ControlOptions.ShowBorder = False
      end
      inherited dxLayoutControl1Group2: TdxLayoutGroup
        inherited dxLayoutControl1Item6: TdxLayoutItem
          AutoAligns = [aaVertical]
        end
        inherited dxLayoutControl1Item5: TdxLayoutItem
          AutoAligns = [aaVertical]
        end
      end
    end
  end
  inherited dsDatos: TDataSource
    AutoEdit = True
    DataSet = JvMemoryData1
    Left = 252
    Top = 311
  end
  inherited cxIntl1: TcxIntl
    Left = 940
  end
  object qrEntradas: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        ' SELECT TOP 0 MUESTRANO,FECHA,PACIENTEID,NOMBREPACIENTE,TELEFONO' +
        'S,CLIENTEID,'
      ' CLIENTENOMBRE,MONEDAID,NETO'
      ' FROM ptEntradaPaciente'
      ' Where DataAreaId = '#39'ldr'#39
      ' And Estatus='#39'0'#39
      ' Order By Muestrano')
    Left = 208
    Top = 313
    object qrEntradasMUESTRANO: TStringField
      FieldName = 'MUESTRANO'
    end
    object qrEntradasFECHA: TDateTimeField
      FieldName = 'FECHA'
    end
    object qrEntradasPACIENTEID: TStringField
      FieldName = 'PACIENTEID'
      Size = 10
    end
    object qrEntradasNOMBREPACIENTE: TStringField
      FieldName = 'NOMBREPACIENTE'
      Size = 80
    end
    object qrEntradasTELEFONOS: TStringField
      FieldName = 'TELEFONOS'
    end
    object qrEntradasCLIENTEID: TStringField
      FieldName = 'CLIENTEID'
      Size = 10
    end
    object qrEntradasCLIENTENOMBRE: TStringField
      FieldName = 'CLIENTENOMBRE'
      Size = 80
    end
    object qrEntradasMONEDAID: TStringField
      FieldName = 'MONEDAID'
      Size = 3
    end
    object qrEntradasNETO: TBCDField
      FieldName = 'NETO'
      Precision = 28
      Size = 12
    end
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
    object JvMemoryData1Seleccion: TBooleanField
      FieldName = 'Seleccion'
    end
    object JvMemoryData1PruebaID: TStringField
      FieldName = 'Muestrano'
    end
    object JvMemoryData1Fecha: TStringField
      FieldName = 'Fecha'
    end
    object JvMemoryData1PacienteID: TStringField
      FieldName = 'PacienteID'
      Size = 10
    end
    object JvMemoryData1NombrePaciente: TStringField
      FieldName = 'NombrePaciente'
      Size = 80
    end
    object JvMemoryData1Telefonos: TStringField
      FieldKind = fkCalculated
      FieldName = 'Telefonos'
      Calculated = True
    end
    object JvMemoryData1ClienteID: TStringField
      FieldKind = fkCalculated
      FieldName = 'ClienteID'
      Size = 10
      Calculated = True
    end
    object JvMemoryData1ClienteNombre: TStringField
      FieldName = 'ClienteNombre'
      Size = 80
    end
    object JvMemoryData1MonedaID: TStringField
      FieldName = 'MonedaID'
      Size = 5
    end
    object JvMemoryData1Neto: TCurrencyField
      FieldName = 'Neto'
    end
  end
  object dsSeleccion: TDataSource
    DataSet = JvMemoryData2
    Left = 452
    Top = 311
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
    Left = 408
    Top = 312
    object JvMemoryData2Seleccion: TBooleanField
      FieldName = 'Seleccion'
    end
    object JvMemoryData2Muestrano: TStringField
      FieldName = 'Muestrano'
    end
    object JvMemoryData2Fecha: TStringField
      FieldName = 'Fecha'
    end
    object JvMemoryData2PacienteID: TStringField
      FieldName = 'PacienteID'
      Size = 10
    end
    object JvMemoryData2NombrePaciente: TStringField
      FieldName = 'NombrePaciente'
    end
    object JvMemoryData2Telefonos: TStringField
      FieldName = 'Telefonos'
    end
    object JvMemoryData2ClienteID: TStringField
      FieldName = 'ClienteID'
      Size = 10
    end
    object JvMemoryData2ClienteNombre: TStringField
      FieldName = 'ClienteNombre'
      Size = 80
    end
    object JvMemoryData2MonedaID: TStringField
      FieldName = 'MonedaID'
      Size = 5
    end
    object JvMemoryData2Neto: TCurrencyField
      FieldName = 'Neto'
    end
  end
  object GridStyles: TcxStyleRepository
    Left = 288
    Top = 56
    object cxStyle1: TcxStyle
    end
    object cxStyle2: TcxStyle
    end
    object cxStyle3: TcxStyle
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16578029
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14811135
      TextColor = clBlack
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor]
      Color = 14872561
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clBlack
    end
    object cxStyle11: TcxStyle
    end
    object cxStyle12: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle13: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle14: TcxStyle
    end
    object cxStyle15: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle16: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 12937777
      TextColor = clWhite
    end
    object cxStyle17: TcxStyle
      AssignedValues = [svColor]
      Color = 14286847
    end
    object cxStyle18: TcxStyle
    end
    object cxStyle19: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle20: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle21: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14286847
      TextColor = clBlack
    end
    object cxStyle22: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14286847
      TextColor = clBlack
    end
    object cxStyle23: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14286847
      TextColor = clBlack
    end
    object cxStyle24: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle25: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle26: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle27: TcxStyle
    end
    object cxStyle28: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16711164
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clSilver
    end
    object cxStyle29: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 12937777
      TextColor = clWhite
    end
    object cxStyle30: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle31: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle32: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle33: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle34: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle35: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle36: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle37: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle38: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16749885
      TextColor = clWhite
    end
    object cxStyle39: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 12937777
      TextColor = clWhite
    end
    object cxStyle40: TcxStyle
    end
    object cxStyle41: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle42: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle43: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle44: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14811135
      TextColor = clBlack
    end
    object cxStyle45: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14811135
      TextColor = clNavy
    end
    object cxStyle46: TcxStyle
      AssignedValues = [svColor]
      Color = 14872561
    end
    object cxStyle47: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clBlack
    end
    object cxStyle48: TcxStyle
      AssignedValues = [svColor]
      Color = 12937777
    end
    object cxStyle49: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle50: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle51: TcxStyle
    end
    object cxStyle52: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle53: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 12937777
      TextColor = clWhite
    end
    object cxStyle54: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyle55: TcxStyle
    end
    object cxStyleVerde: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 387801
      TextColor = clNavy
    end
    object GridBandedTableViewStyleSheetDevExpress: TcxGridBandedTableViewStyleSheet
      Caption = 'DevExpress'
      Styles.Background = cxStyle1
      Styles.Content = cxStyle4
      Styles.ContentEven = cxStyle5
      Styles.ContentOdd = cxStyle6
      Styles.FilterBox = cxStyle7
      Styles.Inactive = cxStyle12
      Styles.IncSearch = cxStyle13
      Styles.Selection = cxStyle16
      Styles.Footer = cxStyle8
      Styles.Group = cxStyle9
      Styles.GroupByBox = cxStyle10
      Styles.Header = cxStyle11
      Styles.Indicator = cxStyle14
      Styles.Preview = cxStyle15
      Styles.BandBackground = cxStyle2
      Styles.BandHeader = cxStyle3
      BuiltIn = True
    end
    object GridCardViewStyleSheetDevExpress: TcxGridCardViewStyleSheet
      Caption = 'DevExpress'
      Styles.Background = cxStyle30
      Styles.Content = cxStyle33
      Styles.ContentEven = cxStyle34
      Styles.ContentOdd = cxStyle35
      Styles.Inactive = cxStyle36
      Styles.IncSearch = cxStyle37
      Styles.Selection = cxStyle39
      Styles.CaptionRow = cxStyle31
      Styles.CardBorder = cxStyle32
      Styles.RowCaption = cxStyle38
      BuiltIn = True
    end
    object GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet
      Caption = 'DevExpress'
      Styles.Background = cxStyle40
      Styles.Content = cxStyle41
      Styles.ContentEven = cxStyle42
      Styles.ContentOdd = cxStyle43
      Styles.FilterBox = cxStyle44
      Styles.Inactive = cxStyle49
      Styles.IncSearch = cxStyle50
      Styles.Selection = cxStyle53
      Styles.Footer = cxStyle45
      Styles.Group = cxStyle46
      Styles.GroupByBox = cxStyle47
      Styles.Header = cxStyle48
      Styles.Indicator = cxStyle51
      Styles.Preview = cxStyle52
      BuiltIn = True
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 288
    Top = 56
    object cxStyle56: TcxStyle
    end
    object cxStyle57: TcxStyle
    end
    object cxStyle58: TcxStyle
    end
    object cxStyle59: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle60: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16578029
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle61: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle62: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14811135
      TextColor = clBlack
    end
    object cxStyle63: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle64: TcxStyle
      AssignedValues = [svColor]
      Color = 14872561
    end
    object cxStyle65: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clBlack
    end
    object cxStyle66: TcxStyle
    end
    object cxStyle67: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle68: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle69: TcxStyle
    end
    object cxStyle70: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle71: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 12937777
      TextColor = clWhite
    end
    object cxStyle72: TcxStyle
      AssignedValues = [svColor]
      Color = 14286847
    end
    object cxStyle73: TcxStyle
    end
    object cxStyle74: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle75: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle76: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14286847
      TextColor = clBlack
    end
    object cxStyle77: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14286847
      TextColor = clBlack
    end
    object cxStyle78: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14286847
      TextColor = clBlack
    end
    object cxStyle79: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle80: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle81: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle82: TcxStyle
    end
    object cxStyle83: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16711164
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clSilver
    end
    object cxStyle84: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 12937777
      TextColor = clWhite
    end
    object cxStyle85: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle86: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle87: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle88: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle89: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle90: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle91: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle92: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle93: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16749885
      TextColor = clWhite
    end
    object cxStyle94: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 12937777
      TextColor = clWhite
    end
    object cxStyle95: TcxStyle
    end
    object cxStyle96: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle97: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle98: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle99: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14811135
      TextColor = clBlack
    end
    object cxStyle100: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14811135
      TextColor = clNavy
    end
    object cxStyle101: TcxStyle
      AssignedValues = [svColor]
      Color = 14872561
    end
    object cxStyle102: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clBlack
    end
    object cxStyle103: TcxStyle
      AssignedValues = [svColor]
      Color = 12937777
    end
    object cxStyle104: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle105: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle106: TcxStyle
    end
    object cxStyle107: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle108: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 12937777
      TextColor = clWhite
    end
    object cxStyle109: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyle110: TcxStyle
    end
    object cxStyle111: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 387801
      TextColor = clNavy
    end
    object cxGridBandedTableViewStyleSheet1: TcxGridBandedTableViewStyleSheet
      Caption = 'DevExpress'
      Styles.Background = cxStyle56
      Styles.Content = cxStyle59
      Styles.ContentEven = cxStyle60
      Styles.ContentOdd = cxStyle61
      Styles.FilterBox = cxStyle62
      Styles.Inactive = cxStyle67
      Styles.IncSearch = cxStyle68
      Styles.Selection = cxStyle71
      Styles.Footer = cxStyle63
      Styles.Group = cxStyle64
      Styles.GroupByBox = cxStyle65
      Styles.Header = cxStyle66
      Styles.Indicator = cxStyle69
      Styles.Preview = cxStyle70
      Styles.BandBackground = cxStyle57
      Styles.BandHeader = cxStyle58
      BuiltIn = True
    end
    object cxGridCardViewStyleSheet1: TcxGridCardViewStyleSheet
      Caption = 'DevExpress'
      Styles.Background = cxStyle85
      Styles.Content = cxStyle88
      Styles.ContentEven = cxStyle89
      Styles.ContentOdd = cxStyle90
      Styles.Inactive = cxStyle91
      Styles.IncSearch = cxStyle92
      Styles.Selection = cxStyle94
      Styles.CaptionRow = cxStyle86
      Styles.CardBorder = cxStyle87
      Styles.RowCaption = cxStyle93
      BuiltIn = True
    end
    object cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet
      Caption = 'DevExpress'
      Styles.Background = cxStyle95
      Styles.Content = cxStyle96
      Styles.ContentEven = cxStyle97
      Styles.ContentOdd = cxStyle98
      Styles.FilterBox = cxStyle99
      Styles.Inactive = cxStyle104
      Styles.IncSearch = cxStyle105
      Styles.Selection = cxStyle108
      Styles.Footer = cxStyle100
      Styles.Group = cxStyle101
      Styles.GroupByBox = cxStyle102
      Styles.Header = cxStyle103
      Styles.Indicator = cxStyle106
      Styles.Preview = cxStyle107
      BuiltIn = True
    end
  end
  object MenuGrid: TPopupMenu
    Left = 446
    Top = 216
    object MenuItem1: TMenuItem
      Caption = 'Eliminar Prueba'
      OnClick = MenuItem1Click
    end
  end
end
