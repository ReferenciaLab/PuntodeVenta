inherited frmDialogConsultaCliente: TfrmDialogConsultaCliente
  BorderIcons = [biSystemMenu]
  Caption = 'Consulta de Clientes'
  ClientHeight = 542
  ClientWidth = 943
  FormStyle = fsStayOnTop
  KeyPreview = True
  WindowState = wsMaximized
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  ExplicitWidth = 959
  ExplicitHeight = 580
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 943
    Height = 542
    ExplicitWidth = 943
    ExplicitHeight = 542
    inherited edbuscarpor: TcxComboBox
      Left = 283
      Properties.CharCase = ecUpperCase
      Properties.Items.Strings = (
        'Cliente'
        'Nombre'
        'Telefono'
        'Codigo AS-400')
      TabOrder = 1
      ExplicitLeft = 283
      ExplicitWidth = 105
      Width = 105
    end
    inherited edbuscar: TcxTextEdit
      Left = 426
      Properties.CharCase = ecUpperCase
      Properties.OnChange = edbuscarPropertiesChange
      TabOrder = 2
      OnExit = edtipoclienteExit
      ExplicitLeft = 426
      ExplicitWidth = 250
      Width = 250
    end
    inherited cgDatos: TcxGrid
      Width = 637
      Height = 200
      TabOrder = 3
      OnEnter = cgDatosEnter
      OnExit = cgDatosExit
      ExplicitWidth = 637
      ExplicitHeight = 200
      inherited dbDatos: TcxGridDBTableView
        DataController.KeyFieldNames = 'CLIENTEID'
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = dbDatosClienteID
          end>
        OptionsView.Footer = True
        Styles.OnGetContentStyle = dbDatosStylesGetContentStyle
        object dbDatosClienteID: TcxGridDBColumn
          Caption = 'Codigo del Cliente'
          DataBinding.FieldName = 'CLIENTEID'
          Width = 111
        end
        object dbDatosCodigoIDAS400: TcxGridDBColumn
          Caption = 'Codigo AS-400'
          DataBinding.FieldName = 'CODIGOIDAS400'
          Width = 94
        end
        object dbDatosNombre: TcxGridDBColumn
          Caption = 'Nombre del Cliente'
          DataBinding.FieldName = 'NOMBRE'
          Width = 348
        end
        object dbDatosTelefono: TcxGridDBColumn
          Caption = 'Telefono 1'
          DataBinding.FieldName = 'TELEFONO'
          Width = 119
        end
        object dbDatosTELEFONO2: TcxGridDBColumn
          Caption = 'Telefono 2'
          DataBinding.FieldName = 'TELEFONO2'
          Width = 117
        end
        object dbDatosFAX: TcxGridDBColumn
          Caption = 'Fax No.'
          DataBinding.FieldName = 'FAX'
          Width = 118
        end
        object dbDatosEstatus: TcxGridDBColumn
          Caption = 'Estatus'
          DataBinding.FieldName = 'ESTATUS'
          Visible = False
          Options.Editing = False
        end
      end
    end
    inherited btcancelar: TcxButton
      Left = 682
      Top = 496
      Width = 250
      Height = 35
      Caption = 'Esc = &Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Height = -27
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      ExplicitLeft = 682
      ExplicitTop = 496
      ExplicitWidth = 250
      ExplicitHeight = 35
    end
    inherited btaceptar: TcxButton
      Left = 426
      Top = 496
      Width = 250
      Height = 35
      Caption = 'F9 = &Aceptar'
      Font.Charset = ANSI_CHARSET
      Font.Height = -27
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      ExplicitLeft = 426
      ExplicitTop = 496
      ExplicitWidth = 250
      ExplicitHeight = 35
    end
    object edtipocliente: TcxExtLookupComboBox [5]
      Left = 99
      Top = 36
      RepositoryItem = DM.elcGrupoCliente
      Properties.CharCase = ecUpperCase
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 0
      OnExit = edtipoclienteExit
      Width = 121
    end
    inherited dxLayoutControl1Group_Root: TdxLayoutGroup
      inherited dxLayoutControl1Group1: TdxLayoutGroup
        object dxLayoutControl1Item3: TdxLayoutItem [0]
          Caption = 'Tipo de Cliente'
          Control = edtipocliente
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object cxLabel1: TcxLabel [1]
    Left = 674
    Top = 32
    AutoSize = False
    Caption = 'Enter = Buscar Cliente'
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
    Width = 257
  end
  inherited dsDatos: TDataSource
    DataSet = qrClientes
    Left = 236
    Top = 410
  end
  inherited cxIntl1: TcxIntl
    Left = 304
    Top = 400
  end
  object qrClientes: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM PTCliente'
      'WHERE DataAreaId = '#39'ldr'#39)
    Left = 184
    Top = 410
    object qrClientesCLIENTEID: TStringField
      FieldName = 'CLIENTEID'
      Size = 10
    end
    object qrClientesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 80
    end
    object qrClientesCONTACTO: TStringField
      FieldName = 'CONTACTO'
      Size = 80
    end
    object qrClientesTELEFONO: TStringField
      FieldName = 'TELEFONO'
    end
    object qrClientesFAX: TStringField
      FieldName = 'FAX'
    end
    object qrClientesGRUPOCLIENTE: TStringField
      FieldName = 'GRUPOCLIENTE'
      Size = 10
    end
    object qrClientesINCLUIRPRECIOTICKET: TIntegerField
      FieldName = 'INCLUIRPRECIOTICKET'
    end
    object qrClientesAUTOCONFIRMAR: TIntegerField
      FieldName = 'AUTOCONFIRMAR'
    end
    object qrClientesEMPLEADOID: TStringField
      FieldName = 'EMPLEADOID'
      Size = 10
    end
    object qrClientesCODIGOAXAPTA: TStringField
      FieldName = 'CODIGOAXAPTA'
      Size = 10
    end
    object qrClientesEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object qrClientesDIRECCIONWEB: TStringField
      FieldName = 'DIRECCIONWEB'
      Size = 80
    end
    object qrClientesTELEFONO2: TStringField
      FieldName = 'TELEFONO2'
    end
    object qrClientesMONEDAID: TStringField
      FieldName = 'MONEDAID'
      Size = 3
    end
    object qrClientesIDENTIFICACION: TStringField
      FieldName = 'IDENTIFICACION'
    end
    object qrClientesORIGEN: TIntegerField
      FieldName = 'ORIGEN'
    end
    object qrClientesDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 255
    end
    object qrClientesCIUDADID: TStringField
      FieldName = 'CIUDADID'
      Size = 10
    end
    object qrClientesPRUEBASPORDIA: TIntegerField
      FieldName = 'PRUEBASPORDIA'
    end
    object qrClientesCOBERTURAPORC: TBCDField
      FieldName = 'COBERTURAPORC'
      Precision = 28
      Size = 12
    end
    object qrClientesPRINCIPAL: TStringField
      FieldName = 'PRINCIPAL'
      Size = 10
    end
    object qrClientesENVIORESULTADO: TIntegerField
      FieldName = 'ENVIORESULTADO'
    end
    object qrClientesPUBLICARINTERNET: TIntegerField
      FieldName = 'PUBLICARINTERNET'
    end
    object qrClientesFECHANACIMIENTO: TDateTimeField
      FieldName = 'FECHANACIMIENTO'
    end
    object qrClientesSEGURO: TStringField
      FieldName = 'SEGURO'
      Size = 10
    end
    object qrClientesCARNETNUMERO: TStringField
      FieldName = 'CARNETNUMERO'
      Size = 10
    end
    object qrClientesPOLIZA: TStringField
      FieldName = 'POLIZA'
    end
    object qrClientesCOBRARDIFERENCIA: TIntegerField
      FieldName = 'COBRARDIFERENCIA'
    end
    object qrClientesENVIARFAX: TIntegerField
      FieldName = 'ENVIARFAX'
    end
    object qrClientesACTIVARDESCUENTOS: TIntegerField
      FieldName = 'ACTIVARDESCUENTOS'
    end
    object qrClientesUSARALIASNOMBRE: TIntegerField
      FieldName = 'USARALIASNOMBRE'
    end
    object qrClientesUSARALIASPRUEBAS: TIntegerField
      FieldName = 'USARALIASPRUEBAS'
    end
    object qrClientesSIEMPREINTERNET: TIntegerField
      FieldName = 'SIEMPREINTERNET'
    end
    object qrClientesIMPRIMIRALIASNOMBRE: TIntegerField
      FieldName = 'IMPRIMIRALIASNOMBRE'
    end
    object qrClientesIMPRIMIRALIASPRUEBA: TIntegerField
      FieldName = 'IMPRIMIRALIASPRUEBA'
    end
    object qrClientesIMPRIMIRSOLOTOTALES: TIntegerField
      FieldName = 'IMPRIMIRSOLOTOTALES'
    end
    object qrClientesIMPRIMIRALIASRESULTADOS: TIntegerField
      FieldName = 'IMPRIMIRALIASRESULTADOS'
    end
    object qrClientesUSARACUERDOPROPIO: TIntegerField
      FieldName = 'USARACUERDOPROPIO'
    end
    object qrClientesALIAS: TStringField
      FieldName = 'ALIAS'
      Size = 100
    end
    object qrClientesQUIENPAGA: TStringField
      FieldName = 'QUIENPAGA'
      Size = 5
    end
    object qrClientesTIPOCLIENTE: TStringField
      FieldName = 'TIPOCLIENTE'
      Size = 5
    end
    object qrClientesENTREGARRESULTADOS: TStringField
      FieldName = 'ENTREGARRESULTADOS'
      Size = 5
    end
    object qrClientesTEXTOREFERENCIA: TStringField
      FieldName = 'TEXTOREFERENCIA'
    end
    object qrClientesSIEMPREIMPRIMIR: TIntegerField
      FieldName = 'SIEMPREIMPRIMIR'
    end
    object qrClientesTIPOSANGRE: TStringField
      FieldName = 'TIPOSANGRE'
      Size = 5
    end
    object qrClientesPACIENTECIAID: TStringField
      FieldName = 'PACIENTECIAID'
      Size = 10
    end
    object qrClientesSECTOR: TStringField
      FieldName = 'SECTOR'
      Size = 100
    end
    object qrClientesUSUARIOINTERNET: TStringField
      FieldName = 'USUARIOINTERNET'
      Size = 10
    end
    object qrClientesCLAVEINTERNET: TStringField
      FieldName = 'CLAVEINTERNET'
      Size = 10
    end
    object qrClientesTIPOINTERNET: TStringField
      FieldName = 'TIPOINTERNET'
      Size = 2
    end
    object qrClientesCLASECREDITO: TStringField
      FieldName = 'CLASECREDITO'
      Size = 5
    end
    object qrClientesDOCTORID: TStringField
      FieldName = 'DOCTORID'
      Size = 10
    end
    object qrClientesSEXO: TIntegerField
      FieldName = 'SEXO'
    end
    object qrClientesESTATUS: TIntegerField
      FieldName = 'ESTATUS'
    end
    object qrClientesTIPOCLIENTEAS400: TIntegerField
      FieldName = 'TIPOCLIENTEAS400'
    end
    object qrClientesCODIGOIDAS400: TStringField
      FieldName = 'CODIGOIDAS400'
      Size = 10
    end
    object qrClientesGRUPOPRECIO: TStringField
      FieldName = 'GRUPOPRECIO'
      Size = 10
    end
    object qrClientesFORMAPAGO: TStringField
      FieldName = 'FORMAPAGO'
      Size = 10
    end
    object qrClientesDATAAREAID: TStringField
      FieldName = 'DATAAREAID'
      Size = 3
    end
    object qrClientesGRUPODESCUENTOLINEA: TStringField
      FieldName = 'GRUPODESCUENTOLINEA'
      Size = 10
    end
    object qrClientesGRUPODESCUENTOTOTAL: TStringField
      FieldName = 'GRUPODESCUENTOTOTAL'
      Size = 10
    end
    object qrClientesSINPRFILTER: TIntegerField
      FieldName = 'SINPRFILTER'
    end
    object qrClientesRECID: TLargeintField
      FieldName = 'RECID'
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 392
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
    object cxStyle1: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clRed
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
