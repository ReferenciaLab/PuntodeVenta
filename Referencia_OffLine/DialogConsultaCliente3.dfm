inherited frmDialogConsultaCliente3: TfrmDialogConsultaCliente3
  Caption = 'Consulta de Clientes'
  ClientHeight = 445
  ClientWidth = 723
  KeyPreview = True
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  ExplicitTop = -47
  ExplicitWidth = 731
  ExplicitHeight = 479
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 723
    Height = 445
    ExplicitWidth = 723
    ExplicitHeight = 445
    inherited edbuscarpor: TcxComboBox
      Left = 283
      Properties.Items.Strings = (
        'Cliente'
        'Nombre'
        'Telefono')
      TabOrder = 1
      Text = 'Nombre'
      OnExit = edtipoclienteExit
      ExplicitLeft = 283
      ExplicitWidth = 85
      Width = 85
    end
    inherited edbuscar: TcxTextEdit
      Left = 406
      Properties.CharCase = ecUpperCase
      Properties.OnChange = edbuscarPropertiesChange
      TabOrder = 2
      OnExit = edtipoclienteExit
      ExplicitLeft = 406
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
        DataController.KeyFieldNames = 'ClienteID'
        object dbDatosClienteID: TcxGridDBColumn
          Caption = 'Cliente'
          DataBinding.FieldName = 'CLIENTEID'
          Width = 100
        end
        object dbDatosNombre: TcxGridDBColumn
          DataBinding.FieldName = 'NOMBRE'
          Width = 450
        end
        object dbDatosTelefono: TcxGridDBColumn
          DataBinding.FieldName = 'TELEFONO'
        end
      end
    end
    inherited btcancelar: TcxButton
      Left = 637
      Top = 409
      TabOrder = 5
      ExplicitLeft = 637
      ExplicitTop = 409
    end
    inherited btaceptar: TcxButton
      Left = 556
      Top = 409
      TabOrder = 4
      ExplicitLeft = 556
      ExplicitTop = 409
    end
    object edtipocliente: TcxComboBox [5]
      Left = 99
      Top = 36
      Properties.CharCase = ecUpperCase
      Properties.Items.Strings = (
        'COMPA'#209'IAS')
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 0
      Text = 'COMPA'#209'IAS'
      OnExit = edtipoclienteExit
      Width = 121
    end
    inherited dxLayoutControl1Group_Root: TdxLayoutGroup
      inherited dxLayoutControl1Group1: TdxLayoutGroup
        object dxLayoutControl1Item7: TdxLayoutItem [0]
          Caption = 'Tipo de Cliente'
          Control = edtipocliente
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  inherited dsDatos: TDataSource
    DataSet = qrClientes
    Left = 324
    Top = 410
  end
  inherited cxIntl1: TcxIntl
    Left = 664
  end
  object qrClientes: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM PTCliente'
      'WHERE DataAreaId = '#39'ldr'#39)
    Left = 272
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
end
