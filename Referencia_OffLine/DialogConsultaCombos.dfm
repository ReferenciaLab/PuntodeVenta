inherited frmDialogConsultaCombos: TfrmDialogConsultaCombos
  Caption = 'Consulta de los Grupos de Pruebas (Combos).'
  KeyPreview = True
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  ExplicitWidth = 659
  ExplicitHeight = 380
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    inherited edbuscarpor: TcxComboBox
      Properties.Items.Strings = (
        'Prueba'
        'Descripcion')
    end
    inherited edbuscar: TcxTextEdit
      Properties.CharCase = ecUpperCase
      Properties.OnChange = edbuscarPropertiesChange
    end
    inherited cgDatos: TcxGrid
      Width = 637
      Height = 200
      OnEnter = cgDatosEnter
      OnExit = cgDatosExit
      ExplicitWidth = 637
      ExplicitHeight = 200
      inherited dbDatos: TcxGridDBTableView
        DataController.KeyFieldNames = 'PruebaID'
        object dbDatosPruebaID: TcxGridDBColumn
          Caption = 'Prueba'
          DataBinding.FieldName = 'PRUEBAID'
          Width = 150
        end
        object dbDatosDescripcion: TcxGridDBColumn
          Caption = 'Descripci'#243'n'
          DataBinding.FieldName = 'DESCRIPCION'
          Width = 350
        end
        object dbDatosPrecio: TcxGridDBColumn
          Caption = 'Precio RD$'
          DataBinding.FieldName = 'PRECIO'
          Width = 125
        end
        object dbDatosPrecioDolares: TcxGridDBColumn
          Caption = 'Precio US$'
          DataBinding.FieldName = 'PRECIODOLARES'
          Width = 125
        end
      end
    end
  end
  inherited dsDatos: TDataSource
    DataSet = qrPruebas
    Left = 356
    Top = 308
  end
  object qrPruebas: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM PTPrueba, PTPlanesCombos '
      'WHERE PTPlanesCombos.PruebaId = PTPrueba.PruebaId')
    Left = 280
    Top = 308
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
    object qrPruebasPlanId: TStringField
      FieldName = 'PlanId'
      Size = 10
    end
    object qrPruebasCodigoId: TStringField
      FieldName = 'CodigoId'
      Size = 10
    end
    object qrPruebasPruebaID_1: TStringField
      FieldName = 'PruebaID_1'
    end
    object qrPruebasClienteID: TStringField
      FieldName = 'ClienteID'
    end
    object qrPruebasDescripcion_1: TStringField
      FieldName = 'Descripcion_1'
      Size = 80
    end
    object qrPruebasNombreCliente: TStringField
      FieldName = 'NombreCliente'
      Size = 80
    end
    object qrPruebasEstatus_1: TBooleanField
      FieldName = 'Estatus_1'
    end
    object qrPruebasLinea: TIntegerField
      FieldName = 'Linea'
    end
    object qrPruebasRECID: TLargeintField
      FieldName = 'RECID'
    end
  end
end
