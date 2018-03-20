inherited frmDialogConsultaEntradas: TfrmDialogConsultaEntradas
  BorderIcons = [biSystemMenu]
  Caption = 'Consulta de Entradas'
  ClientHeight = 546
  ClientWidth = 968
  FormStyle = fsStayOnTop
  KeyPreview = True
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  ExplicitWidth = 984
  ExplicitHeight = 584
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 968
    Height = 546
    ExplicitWidth = 968
    ExplicitHeight = 546
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
        'Rango de Fecha'
        'N'#250'm. Autorizaci'#243'n')
      Properties.OnChange = edbuscarporPropertiesChange
      OnExit = edbuscarporExit
    end
    inherited edbuscar: TcxTextEdit
      Properties.CharCase = ecUpperCase
      OnExit = edbuscarExit
      ExplicitWidth = 293
      Width = 293
    end
    inherited cgDatos: TcxGrid
      Width = 946
      Height = 424
      TabOrder = 5
      OnEnter = cgDatosEnter
      OnExit = cgDatosExit
      ExplicitWidth = 946
      ExplicitHeight = 424
      inherited dbDatos: TcxGridDBTableView
        DataController.DataModeController.SmartRefresh = True
        DataController.DetailKeyFieldNames = 'RecId'
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = dbDatosMuestrano
          end
          item
            Format = '###,###,###.##'
            Kind = skSum
            Column = dbDatosNeto
          end
          item
            Format = '###,###,###.##'
            Kind = skSum
            Column = dbDatosTotalPagado
          end
          item
            Format = '###,###,###.##'
            Kind = skSum
            Column = dbDatosTotalPendiente
          end
          item
            Format = '###,###,###.##'
            Kind = skSum
            Column = dbDatosCoberturaSeg
          end>
        OptionsData.CancelOnExit = False
        OptionsData.DeletingConfirmation = False
        OptionsSelection.MultiSelect = True
        OptionsView.Footer = True
        Styles.OnGetContentStyle = dbDatosStylesGetContentStyle
        object dbDatosMuestrano: TcxGridDBColumn
          Caption = 'Muestra No.'
          DataBinding.FieldName = 'MUESTRANO'
          HeaderAlignmentHorz = taRightJustify
          Width = 94
        end
        object dbDatosFecha: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha'
          HeaderAlignmentHorz = taCenter
          Width = 75
        end
        object dbDatosPacienteID: TcxGridDBColumn
          Caption = 'PacienteID'
          DataBinding.FieldName = 'PacienteId'
          Width = 66
        end
        object dbDatosNombrePaciente: TcxGridDBColumn
          Caption = 'Nombre Paciente'
          DataBinding.FieldName = 'NombrePaciente'
          HeaderAlignmentHorz = taCenter
          Width = 171
        end
        object dbDatosTelefonos: TcxGridDBColumn
          Caption = 'Telefono'
          DataBinding.FieldName = 'Telefonos'
          Width = 77
        end
        object dbDatosClienteID: TcxGridDBColumn
          Caption = 'Cliente Id'
          DataBinding.FieldName = 'ClienteID'
          Width = 76
        end
        object dbDatosClienteNombre: TcxGridDBColumn
          Caption = 'Nombre de Cliente'
          DataBinding.FieldName = 'ClienteNombre'
          HeaderAlignmentHorz = taCenter
          Width = 153
        end
        object dbDatosMonedaID: TcxGridDBColumn
          Caption = 'Div'
          DataBinding.FieldName = 'MonedaID'
          Width = 40
        end
        object dbDatosNeto: TcxGridDBColumn
          Caption = 'Valor'
          DataBinding.FieldName = 'Neto'
          HeaderAlignmentHorz = taCenter
          Width = 85
        end
        object dbDatosTotalPagado: TcxGridDBColumn
          Caption = 'Pagado'
          DataBinding.FieldName = 'TotalPagado'
          HeaderAlignmentHorz = taCenter
          Width = 72
        end
        object dbDatosTotalPendiente: TcxGridDBColumn
          Caption = 'Pendiente'
          DataBinding.FieldName = 'TotalPendiente'
          Visible = False
          Width = 68
        end
        object dbDatosHold: TcxGridDBColumn
          DataBinding.FieldName = 'Hold'
          Visible = False
          Width = 40
        end
        object dbDatosEntradaID_Ref: TcxGridDBColumn
          Caption = 'EntradaID'
          DataBinding.FieldName = 'ENTRADAID_REF'
          Visible = False
        end
        object dbDatosEntradaID: TcxGridDBColumn
          DataBinding.FieldName = 'ENTRADAID'
          Visible = False
        end
        object dbDatosCoberturaSeg: TcxGridDBColumn
          Caption = 'Cob. Seg.'
          DataBinding.FieldName = 'COBERTURASEGURO'
          HeaderAlignmentHorz = taCenter
          Width = 85
        end
      end
      object dbPagos: TcxGridDBTableView [1]
        NavigatorButtons.ConfirmDelete = False
        DataController.DataModeController.SmartRefresh = True
        DataController.DataSource = dsPagos
        DataController.DetailKeyFieldNames = 'Refrecid'
        DataController.MasterKeyFieldNames = 'RECID'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '###,###,###.##'
            Kind = skSum
            Column = dbPagosMonto
          end
          item
            Format = '###,###,###.##'
            Kind = skSum
            Column = dbPagosMontoMST
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.Background = cxStyle109
        Styles.Content = cxStyle109
        object dbPagosFecha: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object dbPagosForma_Pago: TcxGridDBColumn
          DataBinding.FieldName = 'Forma_Pago'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object dbPagosMonedaID: TcxGridDBColumn
          DataBinding.FieldName = 'MonedaID'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 100
        end
        object dbPagosMonto: TcxGridDBColumn
          DataBinding.FieldName = 'Monto'
          HeaderAlignmentHorz = taCenter
          Width = 120
        end
        object dbPagosMontoMST: TcxGridDBColumn
          DataBinding.FieldName = 'MontoMST'
          HeaderAlignmentHorz = taCenter
          Width = 120
        end
        object dbPagosOrden: TcxGridDBColumn
          DataBinding.FieldName = 'Orden'
          HeaderAlignmentHorz = taCenter
          Width = 74
        end
        object dbPagosCUADREUSUARIO: TcxGridDBColumn
          Caption = 'Cuadre Usuario'
          DataBinding.FieldName = 'CUADREUSUARIO'
          HeaderAlignmentHorz = taCenter
          Width = 130
        end
        object dbPagosCUADREGLOBAL: TcxGridDBColumn
          Caption = 'Cuadre Global'
          DataBinding.FieldName = 'CUADREGLOBAL'
          HeaderAlignmentHorz = taCenter
          Width = 130
        end
        object dbPagosRefrecid: TcxGridDBColumn
          DataBinding.FieldName = 'Refrecid'
          Visible = False
        end
      end
      inherited lvDatos: TcxGridLevel
        object lvPagos: TcxGridLevel
          GridView = dbPagos
        end
      end
    end
    inherited btcancelar: TcxButton
      Left = 707
      Top = 500
      Width = 250
      Height = 35
      Caption = 'Esc = &Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Height = -27
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      ExplicitLeft = 707
      ExplicitTop = 500
      ExplicitWidth = 250
      ExplicitHeight = 35
    end
    inherited btaceptar: TcxButton
      Left = 451
      Top = 500
      Width = 250
      Height = 35
      Caption = 'F9 = &Aceptar'
      Font.Charset = ANSI_CHARSET
      Font.Height = -27
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      ExplicitLeft = 451
      ExplicitTop = 500
      ExplicitWidth = 250
      ExplicitHeight = 35
    end
    object CbCriterio: TcxCheckBox [5]
      Left = 666
      Top = 36
      ParentColor = False
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 1
      Properties.ValueGrayed = 0
      Properties.OnChange = CbCriterioPropertiesChange
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Color = 16311249
      Style.HotTrack = False
      TabOrder = 2
      Width = 22
    end
    object dtFechaIni: TcxDateEdit [6]
      Left = 736
      Top = 36
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 3
      Width = 79
    end
    object dtFechaFin: TcxDateEdit [7]
      Left = 852
      Top = 36
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 4
      Width = 79
    end
    inherited dxLayoutControl1Group_Root: TdxLayoutGroup
      inherited dxLayoutControl1Group1: TdxLayoutGroup
        object dxLayoutControl1Item7: TdxLayoutItem
          AutoAligns = []
          Caption = 'Ver Todas las Sucursales '
          Control = CbCriterio
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item3: TdxLayoutItem
          Caption = 'F. Inicio'
          Control = dtFechaIni
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item8: TdxLayoutItem
          Caption = 'F. Fin'
          Control = dtFechaFin
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object cxLabel1: TcxLabel [1]
    Left = 8
    Top = 500
    AutoSize = False
    Caption = 'Enter = Buscar Entrada'
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
    Height = 28
    Width = 253
  end
  inherited dsDatos: TDataSource
    AutoEdit = True
    DataSet = DM.qrEntradaPacienteCons
    Left = 124
    Top = 159
  end
  inherited cxIntl1: TcxIntl
    Left = 56
    Top = 160
  end
  object dsPagos: TDataSource
    DataSet = qrPagos
    Left = 180
    Top = 159
  end
  object qrPagos: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Filtered = True
    Parameters = <>
    SQL.Strings = (
      
        'Select Fecha,FormaDePagoID as Forma_Pago,d.MonedaID,Monto,MontoM' +
        'ST,'
      
        'Orden,d.CUADREUSUARIO,d.CUADREGLOBAL,d.Refrecid from PTCobroDeta' +
        'lle d '
      'inner join PtCobro c on c.Cobroid=d.Cobroid')
    Left = 280
    Top = 161
    object qrPagosForma_Pago: TStringField
      FieldName = 'Forma_Pago'
      Size = 10
    end
    object qrPagosMonedaID: TStringField
      FieldName = 'MonedaID'
      Size = 3
    end
    object qrPagosMonto: TBCDField
      FieldName = 'Monto'
      Precision = 19
    end
    object qrPagosMontoMST: TBCDField
      FieldName = 'MontoMST'
      Precision = 19
    end
    object qrPagosOrden: TIntegerField
      FieldName = 'Orden'
    end
    object qrPagosCUADREUSUARIO: TStringField
      FieldName = 'CUADREUSUARIO'
    end
    object qrPagosCUADREGLOBAL: TStringField
      FieldName = 'CUADREGLOBAL'
    end
    object qrPagosRefrecid: TLargeintField
      FieldName = 'Refrecid'
    end
    object qrPagosFecha: TDateTimeField
      FieldName = 'Fecha'
    end
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 120
    Top = 65528
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
end
