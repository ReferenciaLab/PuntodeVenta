object AS400: TAS400
  OldCreateOrder = False
  Height = 489
  Width = 766
  object qrBancoInventario: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     dbo.BSInventario.ProductoID, dbo.BSProductos.Producto' +
        'Des, SUM(dbo.BSInventario.Cantidad) AS Cantidad, dbo.BSProductos' +
        '.Precio, '
      
        '                      dbo.BSProductos.PrecioDolares, dbo.BSProdu' +
        'ctos.Dias, dbo.BSProductos.PermiteCambioPrecio, dbo.BSProductos.' +
        'CodigoAxapta, '
      
        '                      dbo.BSProductos.Costo, dbo.BSProductos.Ext' +
        'erior, dbo.BSProductos.FacturarCabecera, dbo.BSProductos.Tipo'
      'FROM         dbo.BSInventario INNER JOIN'
      
        '                      dbo.BSProductos ON dbo.BSInventario.Produc' +
        'toID = dbo.BSProductos.ProductoID'
      
        'GROUP BY dbo.BSInventario.ProductoID, dbo.BSProductos.ProductoDe' +
        's, dbo.BSProductos.Precio, dbo.BSProductos.PrecioDolares, dbo.BS' +
        'Productos.Dias, '
      
        '                      dbo.BSProductos.CodigoAxapta, dbo.BSProduc' +
        'tos.Costo, dbo.BSProductos.PermiteCambioPrecio, dbo.BSProductos.' +
        'Exterior, '
      
        '                      dbo.BSProductos.FacturarCabecera, dbo.BSPr' +
        'oductos.Tipo')
    Left = 48
    Top = 155
    object qrBancoInventarioProductoID: TWideStringField
      FieldName = 'ProductoID'
      FixedChar = True
      Size = 10
    end
    object qrBancoInventarioProductoDes: TWideStringField
      FieldName = 'ProductoDes'
      FixedChar = True
      Size = 30
    end
    object qrBancoInventarioCantidad: TBCDField
      FieldName = 'Cantidad'
      ReadOnly = True
      Precision = 19
    end
    object qrBancoInventarioPrecio: TBCDField
      FieldName = 'Precio'
      Precision = 19
    end
    object qrBancoInventarioPrecioDolares: TBCDField
      FieldName = 'PrecioDolares'
      Precision = 19
    end
    object qrBancoInventarioDias: TIntegerField
      FieldName = 'Dias'
    end
    object qrBancoInventarioPermiteCambioPrecio: TBooleanField
      FieldName = 'PermiteCambioPrecio'
    end
    object qrBancoInventarioCodigoAxapta: TStringField
      FieldName = 'CodigoAxapta'
    end
    object qrBancoInventarioCosto: TBCDField
      FieldName = 'Costo'
      Precision = 19
    end
    object qrBancoInventarioExterior: TBooleanField
      FieldName = 'Exterior'
    end
    object qrBancoInventarioFacturarCabecera: TBooleanField
      FieldName = 'FacturarCabecera'
    end
    object qrBancoInventarioTipo: TBooleanField
      FieldName = 'Tipo'
    end
  end
  object qrDonacionesAprobadas: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     dbo.BSDonacion.DonacionID, dbo.BSDonacion.Fecha, dbo.' +
        'BSDonacion.PacienteID, dbo.PTCliente.Identificacion, dbo.PTClien' +
        'te.Nombre, '
      
        '                      dbo.PTCliente.Direccion, dbo.PTCliente.Tel' +
        'efono, dbo.PTCliente.email, dbo.PTCliente.FechaNacimiento, dbo.P' +
        'TCliente.Sexo, dbo.PTCliente.CiudadID, '
      
        '                      dbo.BSDonacion.NotaEntrevista, dbo.BSDonac' +
        'ion.DonacionStatus, dbo.PTEntradaPaciente.MuestraNo, DirigidoPac' +
        'ienteId'
      'FROM         dbo.BSDonacion INNER JOIN'
      
        '                      dbo.PTCliente ON dbo.BSDonacion.PacienteID' +
        ' = dbo.PTCliente.ClienteID INNER JOIN'
      
        '                      dbo.PTEntradaPaciente ON dbo.BSDonacion.Do' +
        'nacionID = dbo.PTEntradaPaciente.EntradaID'
      'WHERE (DonacionStatus = '#39'Aprobada'#39')')
    Left = 48
    Top = 107
    object qrDonacionesAprobadasDonacionID: TStringField
      FieldName = 'DonacionID'
    end
    object qrDonacionesAprobadasFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object qrDonacionesAprobadasPacienteID: TStringField
      FieldName = 'PacienteID'
      Size = 10
    end
    object qrDonacionesAprobadasIdentificacion: TStringField
      FieldName = 'Identificacion'
    end
    object qrDonacionesAprobadasNombre: TStringField
      FieldName = 'Nombre'
      Size = 80
    end
    object qrDonacionesAprobadasDireccion: TStringField
      FieldName = 'Direccion'
      Size = 255
    end
    object qrDonacionesAprobadasTelefono: TStringField
      FieldName = 'Telefono'
    end
    object qrDonacionesAprobadasemail: TStringField
      FieldName = 'email'
      Size = 80
    end
    object qrDonacionesAprobadasFechaNacimiento: TDateTimeField
      FieldName = 'FechaNacimiento'
    end
    object qrDonacionesAprobadasSexo: TIntegerField
      FieldName = 'Sexo'
    end
    object qrDonacionesAprobadasCiudadID: TStringField
      FieldName = 'CiudadID'
      Size = 10
    end
    object qrDonacionesAprobadasNotaEntrevista: TMemoField
      FieldName = 'NotaEntrevista'
      BlobType = ftMemo
    end
    object qrDonacionesAprobadasDonacionStatus: TWideStringField
      FieldName = 'DonacionStatus'
      FixedChar = True
    end
    object qrDonacionesAprobadasMuestraNo: TStringField
      FieldName = 'MuestraNo'
    end
    object qrDonacionesAprobadasDirigidoPacienteId: TStringField
      FieldName = 'DirigidoPacienteId'
      Size = 10
    end
  end
  object qrPruebasBanco: TADOQuery
    Active = True
    AutoCalcFields = False
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM BSPrueba')
    Left = 48
    Top = 59
    object qrPruebasBancoPRUEBAID: TStringField
      FieldName = 'PRUEBAID'
    end
    object qrPruebasBancoALIAS: TStringField
      FieldName = 'ALIAS'
      Size = 80
    end
    object qrPruebasBancoDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 80
    end
    object qrPruebasBancoESTATUS: TIntegerField
      FieldName = 'ESTATUS'
    end
    object qrPruebasBancoGRUPOPRUEBAID: TStringField
      FieldName = 'GRUPOPRUEBAID'
      Size = 10
    end
    object qrPruebasBancoDEPARTAMENTO: TStringField
      FieldName = 'DEPARTAMENTO'
      Size = 10
    end
    object qrPruebasBancoPRECIO: TBCDField
      FieldName = 'PRECIO'
      Precision = 28
      Size = 12
    end
    object qrPruebasBancoPERMITECAMBIOPRECIO: TIntegerField
      FieldName = 'PERMITECAMBIOPRECIO'
    end
    object qrPruebasBancoCODIGOAXAPTA: TStringField
      FieldName = 'CODIGOAXAPTA'
    end
    object qrPruebasBancoPRECIODOLARES: TBCDField
      FieldName = 'PRECIODOLARES'
      Precision = 28
      Size = 12
    end
    object qrPruebasBancoCOSTO: TBCDField
      FieldName = 'COSTO'
      Precision = 28
      Size = 12
    end
    object qrPruebasBancoEXTERIOR: TIntegerField
      FieldName = 'EXTERIOR'
    end
    object qrPruebasBancoFACTURARCABECERA: TIntegerField
      FieldName = 'FACTURARCABECERA'
    end
    object qrPruebasBancoPRUEBAS: TIntegerField
      FieldName = 'PRUEBAS'
    end
    object qrPruebasBancoTIPO: TStringField
      FieldName = 'TIPO'
      Size = 5
    end
    object qrPruebasBancoORINA: TIntegerField
      FieldName = 'ORINA'
    end
    object qrPruebasBancoSANGRE: TIntegerField
      FieldName = 'SANGRE'
    end
    object qrPruebasBancoCONDPACIENTE: TStringField
      FieldName = 'CONDPACIENTE'
      Size = 255
    end
    object qrPruebasBancoCONDMUESTRA: TStringField
      FieldName = 'CONDMUESTRA'
      Size = 255
    end
    object qrPruebasBancoCODDIAPROC: TStringField
      FieldName = 'CODDIAPROC'
      Size = 5
    end
    object qrPruebasBancoDIASRESULTADO: TIntegerField
      FieldName = 'DIASRESULTADO'
    end
    object qrPruebasBancoUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Size = 10
    end
    object qrPruebasBancoABREVIACION: TStringField
      FieldName = 'ABREVIACION'
    end
    object qrPruebasBancoTIPOMUESTRA: TIntegerField
      FieldName = 'TIPOMUESTRA'
    end
    object qrPruebasBancoMEDIO: TIntegerField
      FieldName = 'MEDIO'
    end
    object qrPruebasBancoCOLOR: TIntegerField
      FieldName = 'COLOR'
    end
    object qrPruebasBancoDEPID: TStringField
      FieldName = 'DEPID'
      Size = 10
    end
    object qrPruebasBancoTIPOAS400: TStringField
      FieldName = 'TIPOAS400'
      Size = 2
    end
    object qrPruebasBancoCODIGOIDAS400: TStringField
      FieldName = 'CODIGOIDAS400'
    end
    object qrPruebasBancoMEDIOAS400: TStringField
      FieldName = 'MEDIOAS400'
      Size = 2
    end
    object qrPruebasBancoNOPROCESAR: TIntegerField
      FieldName = 'NOPROCESAR'
    end
    object qrPruebasBancoCOMENTARIONOPROCESAR: TStringField
      FieldName = 'COMENTARIONOPROCESAR'
      Size = 255
    end
    object qrPruebasBancoDATAAREAID: TStringField
      FieldName = 'DATAAREAID'
      Size = 3
    end
    object qrPruebasBancoRECID: TIntegerField
      FieldName = 'RECID'
    end
    object qrPruebasBancomsrepl_tran_version: TGuidField
      FieldName = 'msrepl_tran_version'
      FixedChar = True
      Size = 38
    end
  end
  object qrDonaciones: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     dbo.BSDonacion.*, dbo.PTCliente.Identificacion, dbo.P' +
        'TCliente.Nombre, '
      
        '                      dbo.PTCliente.Direccion, dbo.PTCliente.Tel' +
        'efono, dbo.PTCliente.email, dbo.PTCliente.FechaNacimiento, dbo.P' +
        'TCliente.Sexo, dbo.PTCliente.CiudadID, '
      
        '                      dbo.BSDonacion.NotaEntrevista, dbo.BSDonac' +
        'ion.DonacionStatus'
      'FROM         dbo.BSDonacion INNER JOIN'
      
        '                      dbo.PTCliente ON dbo.BSDonacion.PacienteID' +
        ' = dbo.PTCliente.ClienteID'
      'WHERE (DonacionStatus <> '#39'Rechasado'#39') '
      'AND  (DonacionStatus <> '#39'Pendiente'#39')'
      'AND  (DonacionStatus <> '#39'Aprobada'#39')'
      'ORDER BY dbo.BSDonacion.DonacionID DESC')
    Left = 48
    Top = 11
    object qrDonacionesDonacionID: TStringField
      FieldName = 'DonacionID'
    end
    object qrDonacionesMuestraNo: TStringField
      FieldName = 'MuestraNo'
    end
    object qrDonacionesMuestraNoAS: TStringField
      FieldName = 'MuestraNoAS'
      ReadOnly = True
      Size = 11
    end
    object qrDonacionesFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object qrDonacionesPacienteID: TStringField
      FieldName = 'PacienteID'
      Size = 10
    end
    object qrDonacionesNotaEntrevista: TMemoField
      FieldName = 'NotaEntrevista'
      BlobType = ftMemo
    end
    object qrDonacionesDonacionStatus: TWideStringField
      FieldName = 'DonacionStatus'
      FixedChar = True
    end
    object qrDonacionesDonacionTipo: TStringField
      FieldName = 'DonacionTipo'
    end
    object qrDonacionesComentario: TMemoField
      FieldName = 'Comentario'
      BlobType = ftMemo
    end
    object qrDonacionesCantidadRecogida: TBCDField
      FieldName = 'CantidadRecogida'
      Precision = 19
    end
    object qrDonacionesTemperatura: TBCDField
      FieldName = 'Temperatura'
      Precision = 19
    end
    object qrDonacionesPeso: TBCDField
      FieldName = 'Peso'
      Precision = 19
    end
    object qrDonacionesPulsoMinimo: TBCDField
      FieldName = 'PulsoMinimo'
      Precision = 19
    end
    object qrDonacionesPulsoEstado: TStringField
      FieldName = 'PulsoEstado'
      Size = 10
    end
    object qrDonacionesTensionArteriar: TStringField
      FieldName = 'TensionArteriar'
      Size = 10
    end
    object qrDonacionesHoraInicio: TDateTimeField
      FieldName = 'HoraInicio'
    end
    object qrDonacionesHoraFin: TDateTimeField
      FieldName = 'HoraFin'
    end
    object qrDonacionesDirigidoPacienteId: TStringField
      FieldName = 'DirigidoPacienteId'
      Size = 10
    end
    object qrDonacionesDirigidoNombre: TStringField
      FieldName = 'DirigidoNombre'
      Size = 50
    end
    object qrDonacionesHospital: TStringField
      FieldName = 'Hospital'
      Size = 50
    end
    object qrDonacionesFechaTranfusion: TDateTimeField
      FieldName = 'FechaTranfusion'
    end
    object qrDonacionesMedico: TStringField
      FieldName = 'Medico'
      Size = 50
    end
    object qrDonacionesTelefono: TStringField
      FieldName = 'Telefono'
      Size = 16
    end
    object qrDonacionesTelefono2: TStringField
      FieldName = 'Telefono2'
      Size = 16
    end
    object qrDonacionesDireccionMedico: TMemoField
      FieldName = 'DireccionMedico'
      BlobType = ftMemo
    end
    object qrDonacionesPagina: TSmallintField
      FieldName = 'Pagina'
    end
    object qrDonacionesTipoFundaID: TWideStringField
      FieldName = 'TipoFundaID'
      FixedChar = True
      Size = 2
    end
    object qrDonacionesHemoglobina: TStringField
      FieldName = 'Hemoglobina'
      Size = 15
    end
    object qrDonacionesHematocito: TStringField
      FieldName = 'Hematocito'
      Size = 15
    end
    object qrDonacionesGlobulosBlancos: TStringField
      FieldName = 'GlobulosBlancos'
      Size = 15
    end
    object qrDonacionesPlaquetas: TStringField
      FieldName = 'Plaquetas'
      Size = 15
    end
    object qrDonacionesNotasCuestionario: TMemoField
      FieldName = 'NotasCuestionario'
      BlobType = ftMemo
    end
    object qrDonacionesProductoID: TWideStringField
      FieldName = 'ProductoID'
      FixedChar = True
      Size = 10
    end
    object qrDonacionesReservado: TBooleanField
      FieldName = 'Reservado'
    end
    object qrDonacionesDisponible: TBooleanField
      FieldName = 'Disponible'
    end
    object qrDonacionesDoctorId: TStringField
      FieldName = 'DoctorId'
      Size = 10
    end
    object qrDonacionesUserIdCuestionario: TStringField
      FieldName = 'UserIdCuestionario'
      Size = 10
    end
    object qrDonacionesUserIdMuestra: TStringField
      FieldName = 'UserIdMuestra'
      Size = 10
    end
    object qrDonacionesIdentificacion: TStringField
      FieldName = 'Identificacion'
    end
    object qrDonacionesNombre: TStringField
      FieldName = 'Nombre'
      Size = 80
    end
    object qrDonacionesDireccion: TStringField
      FieldName = 'Direccion'
      Size = 255
    end
    object qrDonacionesTelefono_1: TStringField
      FieldName = 'Telefono_1'
    end
    object qrDonacionesemail: TStringField
      FieldName = 'email'
      Size = 80
    end
    object qrDonacionesFechaNacimiento: TDateTimeField
      FieldName = 'FechaNacimiento'
    end
    object qrDonacionesSexo: TIntegerField
      FieldName = 'Sexo'
    end
    object qrDonacionesCiudadID: TStringField
      FieldName = 'CiudadID'
      Size = 10
    end
    object qrDonacionesNotaEntrevista_1: TMemoField
      FieldName = 'NotaEntrevista_1'
      BlobType = ftMemo
    end
    object qrDonacionesDonacionStatus_1: TWideStringField
      FieldName = 'DonacionStatus_1'
      FixedChar = True
    end
  end
  object qrEsDonante: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'PacienteID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'Select *  from BSDonante'
      'where PacienteID = :PacienteID')
    Left = 240
    Top = 313
  end
  object qrReservar: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CodigoID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'Select *  from BSInventario'
      'Where CodigoId = :CodigoID')
    Left = 168
    Top = 112
    object qrReservarReceptorId: TStringField
      FieldName = 'ReceptorId'
      Size = 10
    end
    object qrReservarReservadoHasta: TDateTimeField
      FieldName = 'ReservadoHasta'
    end
    object qrReservarCruce: TBooleanField
      FieldName = 'Cruce'
    end
    object qrReservarCrucePacienteId: TStringField
      FieldName = 'CrucePacienteId'
      Size = 10
    end
    object qrReservarReservado: TBooleanField
      FieldName = 'Reservado'
    end
    object qrReservarDoctorId: TStringField
      FieldName = 'DoctorId'
      Size = 10
    end
  end
  object dsReservar: TDataSource
    DataSet = qrReservar
    Left = 248
    Top = 112
  end
  object qrEsServicio: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CodigoId'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     dbo.BSProductos.Servicio'
      'FROM         dbo.BSProductos INNER JOIN'
      
        '                      dbo.BSInventario ON dbo.BSProductos.Produc' +
        'toID = dbo.BSInventario.ProductoID'
      'WHERE     (dbo.BSInventario.CodigoId = :CodigoId)')
    Left = 128
    Top = 313
    object qrEsServicioServicio: TBooleanField
      FieldName = 'Servicio'
    end
  end
  object qrEntradaPacienteDetalle: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'rec'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'Select *  from PTEntradaPacienteDetalle'
      'Where MuestraNo = :rec')
    Left = 64
    Top = 232
    object qrEntradaPacienteDetallePRUEBAID: TStringField
      FieldName = 'PRUEBAID'
    end
    object qrEntradaPacienteDetalleCOMBOPRUEBAID: TStringField
      FieldName = 'COMBOPRUEBAID'
      Size = 10
    end
    object qrEntradaPacienteDetalleCODIGOAUTORIZACION: TStringField
      FieldName = 'CODIGOAUTORIZACION'
    end
    object qrEntradaPacienteDetalleDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 80
    end
    object qrEntradaPacienteDetalleCODIGOCUPID: TStringField
      FieldName = 'CODIGOCUPID'
    end
    object qrEntradaPacienteDetalleMUESTRAANT: TStringField
      FieldName = 'MUESTRAANT'
    end
    object qrEntradaPacienteDetalleCOBERTURAAPLICA: TIntegerField
      FieldName = 'COBERTURAAPLICA'
    end
    object qrEntradaPacienteDetalleDESCRIPCIONCUP: TStringField
      FieldName = 'DESCRIPCIONCUP'
      Size = 80
    end
    object qrEntradaPacienteDetalleREFRECID: TIntegerField
      FieldName = 'REFRECID'
    end
    object qrEntradaPacienteDetalleSECUENCIA: TIntegerField
      FieldName = 'SECUENCIA'
    end
    object qrEntradaPacienteDetalleFLEBOTOMISTAID: TStringField
      FieldName = 'FLEBOTOMISTAID'
      Size = 10
    end
    object qrEntradaPacienteDetalleCOMENTARIOMUESTRA: TStringField
      FieldName = 'COMENTARIOMUESTRA'
      Size = 255
    end
    object qrEntradaPacienteDetalleUNIDADMUESTRA: TStringField
      FieldName = 'UNIDADMUESTRA'
      Size = 10
    end
    object qrEntradaPacienteDetalleSECUENCIAACT: TIntegerField
      FieldName = 'SECUENCIAACT'
    end
    object qrEntradaPacienteDetallePRECIO: TBCDField
      FieldName = 'PRECIO'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleDESCUENTO: TBCDField
      FieldName = 'DESCUENTO'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleDESCUENTOEXTRA: TBCDField
      FieldName = 'DESCUENTOEXTRA'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleTOTALLINEA: TBCDField
      FieldName = 'TOTALLINEA'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleCOMENTARIO: TStringField
      FieldName = 'COMENTARIO'
      Size = 255
    end
    object qrEntradaPacienteDetalleTIPOPRUEBA: TStringField
      FieldName = 'TIPOPRUEBA'
      Size = 5
    end
    object qrEntradaPacienteDetalleTIPOAS400: TStringField
      FieldName = 'TIPOAS400'
      Size = 2
    end
    object qrEntradaPacienteDetalleCODIGOAS400: TStringField
      FieldName = 'CODIGOAS400'
    end
    object qrEntradaPacienteDetalleMEDIOAS400: TStringField
      FieldName = 'MEDIOAS400'
      Size = 2
    end
    object qrEntradaPacienteDetalleDESCPCT: TBCDField
      FieldName = 'DESCPCT'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleCOBERTURAESPECIAL: TBCDField
      FieldName = 'COBERTURAESPECIAL'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleCOBERTURAESPECIALPORC: TBCDField
      FieldName = 'COBERTURAESPECIALPORC'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleCOBERTURAAPLICADA: TBCDField
      FieldName = 'COBERTURAAPLICADA'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleDESCUENTOAPLICADO: TBCDField
      FieldName = 'DESCUENTOAPLICADO'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleDESCUENTOLINEAAPLICADO: TBCDField
      FieldName = 'DESCUENTOLINEAAPLICADO'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleFACTURAR: TIntegerField
      FieldName = 'FACTURAR'
    end
    object qrEntradaPacienteDetalleSELECCIONAR: TIntegerField
      FieldName = 'SELECCIONAR'
    end
    object qrEntradaPacienteDetalleMUESTRANO: TStringField
      FieldName = 'MUESTRANO'
    end
    object qrEntradaPacienteDetalleCOBERTURAEXPPORC: TIntegerField
      FieldName = 'COBERTURAEXPPORC'
    end
    object qrEntradaPacienteDetalleURGENTE: TIntegerField
      FieldName = 'URGENTE'
    end
    object qrEntradaPacienteDetalleREPMUESTRA: TIntegerField
      FieldName = 'REPMUESTRA'
    end
    object qrEntradaPacienteDetalleFECHAENTREGA: TDateTimeField
      FieldName = 'FECHAENTREGA'
    end
    object qrEntradaPacienteDetalleHORAENTREGA: TStringField
      FieldName = 'HORAENTREGA'
    end
    object qrEntradaPacienteDetalleESTATUS: TStringField
      FieldName = 'ESTATUS'
      Size = 2
    end
    object qrEntradaPacienteDetalleDATAAREAID: TStringField
      FieldName = 'DATAAREAID'
      Size = 3
    end
    object qrEntradaPacienteDetalleRECID: TIntegerField
      FieldName = 'RECID'
    end
  end
  object qrProductosBanco: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      '   FROM BSProductos')
    Left = 176
    Top = 48
    object qrProductosBancoProductoID: TWideStringField
      FieldName = 'ProductoID'
      FixedChar = True
      Size = 10
    end
    object qrProductosBancoProductoDes: TWideStringField
      FieldName = 'ProductoDes'
      FixedChar = True
      Size = 30
    end
    object qrProductosBancoPrecio: TBCDField
      FieldName = 'Precio'
      Precision = 19
    end
    object qrProductosBancoPrecioDolares: TBCDField
      FieldName = 'PrecioDolares'
      Precision = 19
    end
    object qrProductosBancoDias: TIntegerField
      FieldName = 'Dias'
    end
    object qrProductosBancoPermiteCambioPrecio: TBooleanField
      FieldName = 'PermiteCambioPrecio'
    end
    object qrProductosBancoCodigoAxapta: TStringField
      FieldName = 'CodigoAxapta'
    end
    object qrProductosBancoCosto: TBCDField
      FieldName = 'Costo'
      Precision = 19
    end
    object qrProductosBancoExterior: TBooleanField
      FieldName = 'Exterior'
    end
    object qrProductosBancoFacturarCabecera: TBooleanField
      FieldName = 'FacturarCabecera'
    end
    object qrProductosBancoTipo: TBooleanField
      FieldName = 'Tipo'
    end
    object qrProductosBancoNecesitaCruce: TBooleanField
      FieldName = 'NecesitaCruce'
    end
    object qrProductosBancoServicio: TBooleanField
      FieldName = 'Servicio'
    end
    object qrProductosBancoInicial: TBooleanField
      FieldName = 'Inicial'
    end
  end
  object ASConnection: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Password=FIDEL;Persist Security Info=True;Use' +
      'r ID=JULIO;Data Source=Laboratorio;Initial Catalog=QS36F'
    LoginPrompt = False
    Left = 488
    Top = 32
  end
  object qrASHemograma: TADOQuery
    Connection = ASConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'MuestraNo'
        Attributes = [paNullable]
        DataType = ftBCD
        Precision = 11
        Size = 19
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM LAP04801'
      'WHERE L48MUE = :MuestraNo')
    Left = 480
    Top = 91
    object qrASHemogramaL48MUE: TBCDField
      FieldName = 'L48MUE'
      Precision = 11
      Size = 0
    end
    object qrASHemogramaL48PRU: TIntegerField
      FieldName = 'L48PRU'
    end
    object qrASHemogramaL48HGN: TStringField
      FieldName = 'L48HGN'
      FixedChar = True
      Size = 15
    end
    object qrASHemogramaL48HTT: TStringField
      FieldName = 'L48HTT'
      FixedChar = True
      Size = 15
    end
    object qrASHemogramaL48GLB: TStringField
      FieldName = 'L48GLB'
      FixedChar = True
      Size = 15
    end
    object qrASHemogramaL48PLA: TStringField
      FieldName = 'L48PLA'
      FixedChar = True
      Size = 15
    end
    object qrASHemogramaL48USU: TStringField
      FieldName = 'L48USU'
      FixedChar = True
      Size = 15
    end
    object qrASHemogramaL48FEC: TIntegerField
      FieldName = 'L48FEC'
    end
    object qrASHemogramaL48HOR: TIntegerField
      FieldName = 'L48HOR'
    end
    object qrASHemogramaL48DIS: TStringField
      FieldName = 'L48DIS'
      FixedChar = True
      Size = 15
    end
  end
  object qrASDetalle: TADOQuery
    Connection = ASConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM LAP05101')
    Left = 488
    Top = 219
  end
  object qrASEncabezado: TADOQuery
    Connection = ASConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM LAP05001')
    Left = 488
    Top = 155
  end
  object qrEntradaPaciente: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'MuestraNo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'Select *  from PTEntradaPaciente'
      'Where MuestraNo = :MuestraNo')
    Left = 64
    Top = 288
    object qrEntradaPacienteENTRADAID: TStringField
      FieldName = 'ENTRADAID'
    end
    object qrEntradaPacienteFECHA: TDateTimeField
      FieldName = 'FECHA'
    end
    object qrEntradaPacienteHORAENTRADA: TStringField
      FieldName = 'HORAENTRADA'
    end
    object qrEntradaPacientePACIENTEID: TStringField
      FieldName = 'PACIENTEID'
      Size = 10
    end
    object qrEntradaPacienteCLIENTEID: TStringField
      FieldName = 'CLIENTEID'
      Size = 10
    end
    object qrEntradaPacienteDOCTORID: TStringField
      FieldName = 'DOCTORID'
      Size = 10
    end
    object qrEntradaPacientePOLIZAID: TStringField
      FieldName = 'POLIZAID'
      Size = 10
    end
    object qrEntradaPacienteENCLINICA: TIntegerField
      FieldName = 'ENCLINICA'
    end
    object qrEntradaPacienteRECORDCLINICA: TStringField
      FieldName = 'RECORDCLINICA'
    end
    object qrEntradaPacienteNUMEROHABITACION: TStringField
      FieldName = 'NUMEROHABITACION'
    end
    object qrEntradaPacienteFECHAENTRADA: TDateTimeField
      FieldName = 'FECHAENTRADA'
    end
    object qrEntradaPacienteFECHADEALTA: TDateTimeField
      FieldName = 'FECHADEALTA'
    end
    object qrEntradaPacienteRESULTADOPACIENTE: TIntegerField
      FieldName = 'RESULTADOPACIENTE'
    end
    object qrEntradaPacienteRESULTADODOCTOR: TIntegerField
      FieldName = 'RESULTADODOCTOR'
    end
    object qrEntradaPacienteFECHAPROMETIDA: TDateTimeField
      FieldName = 'FECHAPROMETIDA'
    end
    object qrEntradaPacienteHORAPROMETIDA: TStringField
      FieldName = 'HORAPROMETIDA'
    end
    object qrEntradaPacienteFLEBOTOMISTAID: TStringField
      FieldName = 'FLEBOTOMISTAID'
      Size = 10
    end
    object qrEntradaPacienteNOTA: TStringField
      FieldName = 'NOTA'
      Size = 255
    end
    object qrEntradaPacientePROYECTOID: TStringField
      FieldName = 'PROYECTOID'
      Size = 10
    end
    object qrEntradaPacienteRECORDID: TIntegerField
      FieldName = 'RECORDID'
    end
    object qrEntradaPacienteBRUTO: TBCDField
      FieldName = 'BRUTO'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDESCUENTO: TBCDField
      FieldName = 'DESCUENTO'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteSUBTOTAL: TBCDField
      FieldName = 'SUBTOTAL'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteNETO: TBCDField
      FieldName = 'NETO'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteNOMBREPACIENTE: TStringField
      FieldName = 'NOMBREPACIENTE'
      Size = 80
    end
    object qrEntradaPacienteDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 255
    end
    object qrEntradaPacienteTELEFONOS: TStringField
      FieldName = 'TELEFONOS'
    end
    object qrEntradaPacienteTELEFONO2: TStringField
      FieldName = 'TELEFONO2'
    end
    object qrEntradaPacienteEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object qrEntradaPacienteCLIENTENOMBRE: TStringField
      FieldName = 'CLIENTENOMBRE'
      Size = 80
    end
    object qrEntradaPacienteSUCURSALID: TStringField
      FieldName = 'SUCURSALID'
      Size = 10
    end
    object qrEntradaPacienteUSERID: TStringField
      FieldName = 'USERID'
      Size = 10
    end
    object qrEntradaPacienteCOBROID: TStringField
      FieldName = 'COBROID'
      Size = 10
    end
    object qrEntradaPacienteTOTALPAGADO: TBCDField
      FieldName = 'TOTALPAGADO'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacientePRIORIDAD: TIntegerField
      FieldName = 'PRIORIDAD'
    end
    object qrEntradaPacienteFAX: TStringField
      FieldName = 'FAX'
    end
    object qrEntradaPacienteTIPODOCUMENTO: TIntegerField
      FieldName = 'TIPODOCUMENTO'
    end
    object qrEntradaPacienteCOBERTURAPORC: TBCDField
      FieldName = 'COBERTURAPORC'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteCOBERTURASEGURO: TBCDField
      FieldName = 'COBERTURASEGURO'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteCOBERTURAVALOR: TBCDField
      FieldName = 'COBERTURAVALOR'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDESCUENTOPORC: TBCDField
      FieldName = 'DESCUENTOPORC'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDESCUENTOVALOR: TBCDField
      FieldName = 'DESCUENTOVALOR'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDESCUENTOBONO: TBCDField
      FieldName = 'DESCUENTOBONO'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteORIGEN: TStringField
      FieldName = 'ORIGEN'
      Size = 10
    end
    object qrEntradaPacienteAPROBACIONNO: TStringField
      FieldName = 'APROBACIONNO'
    end
    object qrEntradaPacienteAPROBACIONPOR: TStringField
      FieldName = 'APROBACIONPOR'
      Size = 10
    end
    object qrEntradaPacienteCOBERTURARECHAZADA: TIntegerField
      FieldName = 'COBERTURARECHAZADA'
    end
    object qrEntradaPacienteCOBERTURACONFIRMADA: TIntegerField
      FieldName = 'COBERTURACONFIRMADA'
    end
    object qrEntradaPacienteFECHAASEGURADORA: TDateTimeField
      FieldName = 'FECHAASEGURADORA'
    end
    object qrEntradaPacienteMUESTRANO: TStringField
      FieldName = 'MUESTRANO'
    end
    object qrEntradaPacienteMONEDAID: TStringField
      FieldName = 'MONEDAID'
      Size = 3
    end
    object qrEntradaPacienteCOBERTURAEXPPORC: TIntegerField
      FieldName = 'COBERTURAEXPPORC'
    end
    object qrEntradaPacienteEDADPACIENTE: TIntegerField
      FieldName = 'EDADPACIENTE'
    end
    object qrEntradaPacienteSEXO: TIntegerField
      FieldName = 'SEXO'
    end
    object qrEntradaPacienteNOMBREDOCTOR: TStringField
      FieldName = 'NOMBREDOCTOR'
      Size = 80
    end
    object qrEntradaPacientePUBLICARINTERNET: TIntegerField
      FieldName = 'PUBLICARINTERNET'
    end
    object qrEntradaPacienteCARNET: TStringField
      FieldName = 'CARNET'
    end
    object qrEntradaPacientePUBLICARINTERNETDOCTOR: TIntegerField
      FieldName = 'PUBLICARINTERNETDOCTOR'
    end
    object qrEntradaPacienteCUADREGLOBAL: TStringField
      FieldName = 'CUADREGLOBAL'
    end
    object qrEntradaPacienteCUADREUSUARIO: TStringField
      FieldName = 'CUADREUSUARIO'
    end
    object qrEntradaPacienteDESCAUTORIZADOPOR: TStringField
      FieldName = 'DESCAUTORIZADOPOR'
      Size = 10
    end
    object qrEntradaPacienteGASTOSVARIOS: TBCDField
      FieldName = 'GASTOSVARIOS'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteNOAS400: TIntegerField
      FieldName = 'NOAS400'
    end
    object qrEntradaPacienteNOAXAPTA: TIntegerField
      FieldName = 'NOAXAPTA'
    end
    object qrEntradaPacienteNOFACTURA: TIntegerField
      FieldName = 'NOFACTURA'
    end
    object qrEntradaPacienteFACTEXTERIOR: TIntegerField
      FieldName = 'FACTEXTERIOR'
    end
    object qrEntradaPacienteHOLD: TIntegerField
      FieldName = 'HOLD'
    end
    object qrEntradaPacienteREPMUESTRA: TIntegerField
      FieldName = 'REPMUESTRA'
    end
    object qrEntradaPacienteENTRADAIDANT: TStringField
      FieldName = 'ENTRADAIDANT'
    end
    object qrEntradaPacienteTIPOENTRADA: TStringField
      FieldName = 'TIPOENTRADA'
      Size = 2
    end
    object qrEntradaPacienteFORMADEPAGO: TStringField
      FieldName = 'FORMADEPAGO'
    end
    object qrEntradaPacienteDESCUENTOCARD: TStringField
      FieldName = 'DESCUENTOCARD'
      Size = 30
    end
    object qrEntradaPacienteDESCUENTOTEXTO: TStringField
      FieldName = 'DESCUENTOTEXTO'
      Size = 30
    end
    object qrEntradaPacienteACUERDOPROPIO: TIntegerField
      FieldName = 'ACUERDOPROPIO'
    end
    object qrEntradaPacienteCLIENTEPADRE: TStringField
      FieldName = 'CLIENTEPADRE'
      Size = 10
    end
    object qrEntradaPacienteDESCUENTOPLANID: TStringField
      FieldName = 'DESCUENTOPLANID'
      Size = 10
    end
    object qrEntradaPacienteFECHAREGISTRO: TDateTimeField
      FieldName = 'FECHAREGISTRO'
    end
    object qrEntradaPacienteHORAREGISTRO: TStringField
      FieldName = 'HORAREGISTRO'
    end
    object qrEntradaPacienteTASA: TBCDField
      FieldName = 'TASA'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteESTATUS: TIntegerField
      FieldName = 'ESTATUS'
    end
    object qrEntradaPacienteTIPOCLIENTEAS400: TIntegerField
      FieldName = 'TIPOCLIENTEAS400'
    end
    object qrEntradaPacienteCLASECREDITO: TStringField
      FieldName = 'CLASECREDITO'
      Size = 5
    end
    object qrEntradaPacienteCARNETNUMERO: TStringField
      FieldName = 'CARNETNUMERO'
      Size = 10
    end
    object qrEntradaPacienteCLIENTEPADREAXAPTA: TStringField
      FieldName = 'CLIENTEPADREAXAPTA'
      Size = 10
    end
    object qrEntradaPacientePACIENTEIDAXAPTA: TStringField
      FieldName = 'PACIENTEIDAXAPTA'
      Size = 10
    end
    object qrEntradaPacienteCLIENTEIDAXAPTA: TStringField
      FieldName = 'CLIENTEIDAXAPTA'
      Size = 10
    end
    object qrEntradaPacienteDOCTORIDAXAPTA: TStringField
      FieldName = 'DOCTORIDAXAPTA'
      Size = 10
    end
    object qrEntradaPacienteDATAAREAID: TStringField
      FieldName = 'DATAAREAID'
      Size = 3
    end
    object qrEntradaPacienteRECID: TIntegerField
      FieldName = 'RECID'
    end
  end
  object qrSQLEncabezado: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'MuestraNo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     RIGHT('#39'0000'#39' + LTRIM(STR(DATEPART(year, dbo.PTEntrada' +
        'Paciente.Fecha))), 2) + '#39'0'#39' + SUBSTRING(dbo.PTEntradaPaciente.Mu' +
        'estraNo, 4, 2) '
      
        '                      + RIGHT(dbo.PTEntradaPaciente.MuestraNo, 6' +
        ') AS Muestra, dbo.PTCliente.Nombre, ISNULL(SUBSTRING(dbo.PTEntra' +
        'daPaciente.HoraEntrada, 1, 2) '
      
        '                      + SUBSTRING(dbo.PTEntradaPaciente.HoraEntr' +
        'ada, 4, 2) + SUBSTRING(dbo.PTEntradaPaciente.HoraEntrada, 7, 2),' +
        ' '#39'000000'#39') AS Hora, '
      
        '                      dbo.PTCliente.Direccion, DATEDIFF(year, db' +
        'o.PTCliente.FechaNacimiento, dbo.PTEntradaPaciente.Fecha) AS Eda' +
        'd, '
      
        '                      RIGHT('#39'00'#39' + LTRIM(STR(DATEPART(day, dbo.P' +
        'TCliente.FechaNacimiento))), 2) + RIGHT('#39'00'#39' + LTRIM(STR(DATEPAR' +
        'T(month, '
      
        '                      dbo.PTCliente.FechaNacimiento))), 2) + RIG' +
        'HT('#39'0000'#39' + LTRIM(STR(DATEPART(year, dbo.PTCliente.FechaNacimien' +
        'to))), 4) AS FechaNacimiento, '
      
        '                      ISNULL(dbo.PTCliente.Telefono, '#39'0'#39') AS Tel' +
        'efono, '#39'Categoria'#39' AS Categoria, RIGHT('#39'00'#39' + LTRIM(STR(DATEPART' +
        '(day, dbo.PTEntradaPaciente.Fecha))), 2) '
      
        '                      + RIGHT('#39'00'#39' + LTRIM(STR(DATEPART(month, d' +
        'bo.PTEntradaPaciente.Fecha))), 2) + RIGHT('#39'0000'#39' + LTRIM(STR(DAT' +
        'EPART(year, '
      
        '                      dbo.PTEntradaPaciente.Fecha))), 4) AS Fech' +
        'aEntrada, dbo.PTEntradaPaciente.UserID, dbo.PTCliente.Sexo, REPL' +
        'ACE(dbo.PTCliente.Identificacion, '#39'-'#39', '#39#39') '
      
        '                      AS Cedula, dbo.PTEntradaPaciente.SucursalI' +
        'd, ISNULL(dbo.PTEntradaPaciente.DoctorID, '#39'0'#39') AS DoctorId, '#39#39' A' +
        'S Doctor, '
      
        '                      REPLACE(dbo.PTEntradaPaciente.PacienteID, ' +
        #39'-'#39', '#39#39') AS Cliente, 0 AS Facturado, 0 AS Pagado, 0 AS Resto, 1 ' +
        'AS TipResPaciente, 0 AS Internet, '
      
        '                      0 AS TipResDoctor, 0 AS InternetDoctor, 1 ' +
        'AS TipResCliente, 0 AS InternetCliente, '#39'Banco de Sangre'#39' AS Com' +
        'entario'
      'FROM         dbo.PTEntradaPaciente INNER JOIN'
      
        '                      dbo.PTCliente ON dbo.PTEntradaPaciente.Pac' +
        'ienteID = dbo.PTCliente.ClienteID'
      'WHERE dbo.PTEntradaPaciente.MuestraNo = :MuestraNo')
    Left = 376
    Top = 155
  end
  object qrSQLDetalle: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'MuestraNo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     RIGHT('#39'0000'#39' + LTRIM(STR(DATEPART(year, dbo.PTEntrada' +
        'Paciente.Fecha))), 2) + '#39'0'#39' + SUBSTRING(dbo.PTEntradaPaciente.Mu' +
        'estraNo, 4, 2) '
      
        '                      + RIGHT(dbo.PTEntradaPaciente.MuestraNo, 6' +
        ') AS Muestra, REPLACE(dbo.PTEntradaPacienteDetalle.PruebaID, '#39'-'#39 +
        ', '#39#39') AS PruebaID, '
      
        '                      dbo.PTPrueba.Descripcion, '#39'C'#39' AS Status, I' +
        'SNULL(dbo.PTPrueba.Departamento, '#39'0'#39') AS Departamento, RIGHT('#39'00' +
        #39' + LTRIM(STR(DATEPART(day, '
      
        '                      dbo.PTEntradaPaciente.Fecha))), 2) + RIGHT' +
        '('#39'00'#39' + LTRIM(STR(DATEPART(month, dbo.PTEntradaPaciente.Fecha)))' +
        ', 2) '
      
        '                      + RIGHT('#39'0000'#39' + LTRIM(STR(DATEPART(year, ' +
        'dbo.PTEntradaPaciente.Fecha))), 4) AS FechaEntrada, SUBSTRING(db' +
        'o.PTEntradaPaciente.HoraEntrada, '
      
        '                      1, 2) + SUBSTRING(dbo.PTEntradaPaciente.Ho' +
        'raEntrada, 4, 2) + SUBSTRING(dbo.PTEntradaPaciente.HoraEntrada, ' +
        '7, 2) AS Hora, '
      
        '                      dbo.PTEntradaPaciente.UserID, '#39'Banco de Sa' +
        'ngre'#39' AS Comentario, 0 AS Peticion2, 0 AS MuestraAnterior'
      'FROM         dbo.PTEntradaPacienteDetalle INNER JOIN'
      
        '                      dbo.PTPrueba ON dbo.PTEntradaPacienteDetal' +
        'le.PruebaID = dbo.PTPrueba.PruebaID INNER JOIN'
      
        '                      dbo.PTEntradaPaciente ON dbo.PTEntradaPaci' +
        'enteDetalle.MuestraNo = dbo.PTEntradaPaciente.MuestraNo'
      'WHERE dbo.PTEntradaPacienteDetalle.MuestraNo = :MuestraNo')
    Left = 376
    Top = 211
  end
  object qrDonacion: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'DonacionId'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'SELECT   *'
      'FROM       BSDonacion'
      'WHERE DonacionId = :DonacionId')
    Left = 376
    Top = 35
    object qrDonacionDonacionID: TStringField
      FieldName = 'DonacionID'
    end
    object qrDonacionFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object qrDonacionPacienteID: TStringField
      FieldName = 'PacienteID'
      Size = 10
    end
    object qrDonacionNotaEntrevista: TMemoField
      FieldName = 'NotaEntrevista'
      BlobType = ftMemo
    end
    object qrDonacionDonacionStatus: TWideStringField
      FieldName = 'DonacionStatus'
      FixedChar = True
    end
    object qrDonacionDonacionTipo: TStringField
      FieldName = 'DonacionTipo'
    end
    object qrDonacionComentario: TMemoField
      FieldName = 'Comentario'
      BlobType = ftMemo
    end
    object qrDonacionCantidadRecogida: TBCDField
      FieldName = 'CantidadRecogida'
      Precision = 19
    end
    object qrDonacionTemperatura: TBCDField
      FieldName = 'Temperatura'
      Precision = 19
    end
    object qrDonacionPeso: TBCDField
      FieldName = 'Peso'
      Precision = 19
    end
    object qrDonacionPulsoMinimo: TBCDField
      FieldName = 'PulsoMinimo'
      Precision = 19
    end
    object qrDonacionPulsoEstado: TStringField
      FieldName = 'PulsoEstado'
      Size = 10
    end
    object qrDonacionTensionArteriar: TStringField
      FieldName = 'TensionArteriar'
      Size = 10
    end
    object qrDonacionHoraInicio: TDateTimeField
      FieldName = 'HoraInicio'
    end
    object qrDonacionHoraFin: TDateTimeField
      FieldName = 'HoraFin'
    end
    object qrDonacionDirigidoNombre: TStringField
      FieldName = 'DirigidoNombre'
      Size = 50
    end
    object qrDonacionHospital: TStringField
      FieldName = 'Hospital'
      Size = 50
    end
    object qrDonacionFechaTranfusion: TDateTimeField
      FieldName = 'FechaTranfusion'
    end
    object qrDonacionMedico: TStringField
      FieldName = 'Medico'
      Size = 50
    end
    object qrDonacionTelefono: TStringField
      FieldName = 'Telefono'
      Size = 16
    end
    object qrDonacionTelefono2: TStringField
      FieldName = 'Telefono2'
      Size = 16
    end
    object qrDonacionDireccionMedico: TMemoField
      FieldName = 'DireccionMedico'
      BlobType = ftMemo
    end
    object qrDonacionPagina: TSmallintField
      FieldName = 'Pagina'
    end
    object qrDonacionTipoFundaID: TWideStringField
      FieldName = 'TipoFundaID'
      FixedChar = True
      Size = 2
    end
    object qrDonacionHemoglobina: TStringField
      FieldName = 'Hemoglobina'
      Size = 15
    end
    object qrDonacionHematocito: TStringField
      FieldName = 'Hematocito'
      Size = 15
    end
    object qrDonacionGlobulosBlancos: TStringField
      FieldName = 'GlobulosBlancos'
      Size = 15
    end
    object qrDonacionPlaquetas: TStringField
      FieldName = 'Plaquetas'
      Size = 15
    end
    object qrDonacionNotasCuestionario: TMemoField
      FieldName = 'NotasCuestionario'
      BlobType = ftMemo
    end
    object qrDonacionProductoID: TWideStringField
      FieldName = 'ProductoID'
      FixedChar = True
      Size = 10
    end
    object qrDonacionReservado: TBooleanField
      FieldName = 'Reservado'
    end
    object qrDonacionDisponible: TBooleanField
      FieldName = 'Disponible'
    end
    object qrDonacionDirigidoPacienteId: TStringField
      FieldName = 'DirigidoPacienteId'
      Size = 10
    end
    object qrDonacionDoctorId: TStringField
      FieldName = 'DoctorId'
      Size = 10
    end
    object qrDonacionUserIdCuestionario: TStringField
      FieldName = 'UserIdCuestionario'
      Size = 10
    end
    object qrDonacionUserIdMuestra: TStringField
      FieldName = 'UserIdMuestra'
      Size = 10
    end
  end
  object qrDoctor: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from PTDoctor')
    Left = 176
    Top = 200
    object qrDoctorDOCTORID: TStringField
      FieldName = 'DOCTORID'
      Size = 10
    end
    object qrDoctorNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 80
    end
    object qrDoctorCONTACTO: TStringField
      FieldName = 'CONTACTO'
      Size = 80
    end
    object qrDoctorTELEFONO: TStringField
      FieldName = 'TELEFONO'
    end
    object qrDoctorFAX: TStringField
      FieldName = 'FAX'
    end
    object qrDoctorCODIGOAXAPTA: TStringField
      FieldName = 'CODIGOAXAPTA'
      Size = 10
    end
    object qrDoctorEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object qrDoctorCELULAR: TStringField
      FieldName = 'CELULAR'
    end
    object qrDoctorDIRECCION: TMemoField
      FieldName = 'DIRECCION'
      BlobType = ftMemo
    end
    object qrDoctorCIUDADID: TStringField
      FieldName = 'CIUDADID'
      Size = 10
    end
    object qrDoctorRESULTADODOCTOR: TIntegerField
      FieldName = 'RESULTADODOCTOR'
    end
    object qrDoctorESPECIALIDADID: TStringField
      FieldName = 'ESPECIALIDADID'
      Size = 10
    end
    object qrDoctorPUBLICARINTERNET: TIntegerField
      FieldName = 'PUBLICARINTERNET'
    end
    object qrDoctorCODIGORESULTADO: TStringField
      FieldName = 'CODIGORESULTADO'
      Size = 10
    end
    object qrDoctorUSUARIOINTERNET: TStringField
      FieldName = 'USUARIOINTERNET'
      Size = 10
    end
    object qrDoctorCLAVEINTERNET: TStringField
      FieldName = 'CLAVEINTERNET'
      Size = 10
    end
    object qrDoctorCOMISION: TBCDField
      FieldName = 'COMISION'
      Precision = 28
      Size = 12
    end
    object qrDoctorDIRECCIONCONSULTA2: TMemoField
      FieldName = 'DIRECCIONCONSULTA2'
      BlobType = ftMemo
    end
    object qrDoctorDIRECCIONCONSULTA1: TMemoField
      FieldName = 'DIRECCIONCONSULTA1'
      BlobType = ftMemo
    end
    object qrDoctorESPECIALIDAD: TStringField
      FieldName = 'ESPECIALIDAD'
      Size = 80
    end
    object qrDoctorCODIGOWEB: TStringField
      FieldName = 'CODIGOWEB'
      Size = 10
    end
    object qrDoctorDATAAREAID: TStringField
      FieldName = 'DATAAREAID'
      Size = 3
    end
    object qrDoctorRECID: TIntegerField
      FieldName = 'RECID'
    end
    object qrDoctormsrepl_tran_version: TGuidField
      FieldName = 'msrepl_tran_version'
      FixedChar = True
      Size = 38
    end
  end
  object qrHemograma: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'MuestraNo'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 11
        Value = Null
      end>
    SQL.Strings = (
      'SELECT   *'
      'FROM       BSDonacion'
      'WHERE MuestraNoAS = :MuestraNo')
    Left = 376
    Top = 99
    object qrHemogramaDonacionID: TStringField
      FieldName = 'DonacionID'
    end
    object qrHemogramaMuestraNo: TStringField
      FieldName = 'MuestraNo'
    end
    object qrHemogramaHemoglobina: TStringField
      FieldName = 'Hemoglobina'
      Size = 15
    end
    object qrHemogramaHematocito: TStringField
      FieldName = 'Hematocito'
      Size = 15
    end
    object qrHemogramaGlobulosBlancos: TStringField
      FieldName = 'GlobulosBlancos'
      Size = 15
    end
    object qrHemogramaPlaquetas: TStringField
      FieldName = 'Plaquetas'
      Size = 15
    end
    object qrHemogramaMuestraNoAS: TStringField
      FieldName = 'MuestraNoAS'
      ReadOnly = True
      Size = 11
    end
  end
  object plDonacion: TppDBPipeline
    DataSource = dsDomaciones
    UserName = 'Donacion'
    Left = 440
    Top = 265
    object plDonacionppField1: TppField
      FieldAlias = 'DonacionID'
      FieldName = 'DonacionID'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object plDonacionppField2: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 1
    end
    object plDonacionppField3: TppField
      FieldAlias = 'PacienteID'
      FieldName = 'PacienteID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 2
    end
    object plDonacionppField4: TppField
      FieldAlias = 'Identificacion'
      FieldName = 'Identificacion'
      FieldLength = 20
      DisplayWidth = 20
      Position = 3
    end
    object plDonacionppField5: TppField
      FieldAlias = 'Nombre'
      FieldName = 'Nombre'
      FieldLength = 80
      DisplayWidth = 80
      Position = 4
    end
    object plDonacionppField6: TppField
      FieldAlias = 'Direccion'
      FieldName = 'Direccion'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 5
      Searchable = False
      Sortable = False
    end
    object plDonacionppField7: TppField
      FieldAlias = 'Telefono'
      FieldName = 'Telefono'
      FieldLength = 16
      DisplayWidth = 16
      Position = 6
    end
    object plDonacionppField8: TppField
      FieldAlias = 'email'
      FieldName = 'email'
      FieldLength = 60
      DisplayWidth = 60
      Position = 7
    end
    object plDonacionppField9: TppField
      FieldAlias = 'FechaNacimiento'
      FieldName = 'FechaNacimiento'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 8
    end
    object plDonacionppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'Sexo'
      FieldName = 'Sexo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 9
    end
    object plDonacionppField11: TppField
      FieldAlias = 'CiudadID'
      FieldName = 'CiudadID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 10
    end
    object plDonacionppField12: TppField
      FieldAlias = 'NotaEntrevista'
      FieldName = 'NotaEntrevista'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 11
      Searchable = False
      Sortable = False
    end
    object plDonacionppField13: TppField
      FieldAlias = 'DonacionStatus'
      FieldName = 'DonacionStatus'
      FieldLength = 20
      DisplayWidth = 20
      Position = 12
    end
    object plDonacionppField14: TppField
      FieldAlias = 'DoctorId'
      FieldName = 'DoctorId'
      FieldLength = 10
      DisplayWidth = 10
      Position = 13
    end
    object plDonacionppField15: TppField
      FieldAlias = 'MuestraNo'
      FieldName = 'MuestraNo'
      FieldLength = 20
      DisplayWidth = 20
      Position = 14
    end
    object plDonacionppField16: TppField
      FieldAlias = 'MuestraNoAS'
      FieldName = 'MuestraNoAS'
      FieldLength = 11
      DisplayWidth = 11
      Position = 15
    end
    object plDonacionppField17: TppField
      FieldAlias = 'DonacionTipo'
      FieldName = 'DonacionTipo'
      FieldLength = 20
      DisplayWidth = 20
      Position = 16
    end
    object plDonacionppField18: TppField
      FieldAlias = 'Comentario'
      FieldName = 'Comentario'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 17
      Searchable = False
      Sortable = False
    end
    object plDonacionppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'CantidadRecogida'
      FieldName = 'CantidadRecogida'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 18
    end
    object plDonacionppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'Temperatura'
      FieldName = 'Temperatura'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 19
    end
    object plDonacionppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'Peso'
      FieldName = 'Peso'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 20
    end
    object plDonacionppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'PulsoMinimo'
      FieldName = 'PulsoMinimo'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 21
    end
    object plDonacionppField23: TppField
      FieldAlias = 'PulsoEstado'
      FieldName = 'PulsoEstado'
      FieldLength = 10
      DisplayWidth = 10
      Position = 22
    end
    object plDonacionppField24: TppField
      FieldAlias = 'TensionArteriar'
      FieldName = 'TensionArteriar'
      FieldLength = 10
      DisplayWidth = 10
      Position = 23
    end
    object plDonacionppField25: TppField
      FieldAlias = 'HoraInicio'
      FieldName = 'HoraInicio'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 24
    end
    object plDonacionppField26: TppField
      FieldAlias = 'HoraFin'
      FieldName = 'HoraFin'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 25
    end
    object plDonacionppField27: TppField
      FieldAlias = 'DirigidoPacienteId'
      FieldName = 'DirigidoPacienteId'
      FieldLength = 10
      DisplayWidth = 10
      Position = 26
    end
    object plDonacionppField28: TppField
      FieldAlias = 'DirigidoNombre'
      FieldName = 'DirigidoNombre'
      FieldLength = 50
      DisplayWidth = 50
      Position = 27
    end
    object plDonacionppField29: TppField
      FieldAlias = 'Hospital'
      FieldName = 'Hospital'
      FieldLength = 50
      DisplayWidth = 50
      Position = 28
    end
    object plDonacionppField30: TppField
      FieldAlias = 'FechaTranfusion'
      FieldName = 'FechaTranfusion'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 29
    end
    object plDonacionppField31: TppField
      FieldAlias = 'Medico'
      FieldName = 'Medico'
      FieldLength = 50
      DisplayWidth = 50
      Position = 30
    end
    object plDonacionppField32: TppField
      FieldAlias = 'Telefono2'
      FieldName = 'Telefono2'
      FieldLength = 16
      DisplayWidth = 16
      Position = 31
    end
    object plDonacionppField33: TppField
      FieldAlias = 'DireccionMedico'
      FieldName = 'DireccionMedico'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 32
      Searchable = False
      Sortable = False
    end
    object plDonacionppField34: TppField
      Alignment = taRightJustify
      FieldAlias = 'Pagina'
      FieldName = 'Pagina'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 33
    end
    object plDonacionppField35: TppField
      FieldAlias = 'TipoFundaID'
      FieldName = 'TipoFundaID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 34
    end
    object plDonacionppField36: TppField
      FieldAlias = 'Hemoglobina'
      FieldName = 'Hemoglobina'
      FieldLength = 15
      DisplayWidth = 15
      Position = 35
    end
    object plDonacionppField37: TppField
      FieldAlias = 'Hematocito'
      FieldName = 'Hematocito'
      FieldLength = 15
      DisplayWidth = 15
      Position = 36
    end
    object plDonacionppField38: TppField
      FieldAlias = 'GlobulosBlancos'
      FieldName = 'GlobulosBlancos'
      FieldLength = 15
      DisplayWidth = 15
      Position = 37
    end
    object plDonacionppField39: TppField
      FieldAlias = 'Plaquetas'
      FieldName = 'Plaquetas'
      FieldLength = 15
      DisplayWidth = 15
      Position = 38
    end
    object plDonacionppField40: TppField
      FieldAlias = 'NotasCuestionario'
      FieldName = 'NotasCuestionario'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 39
      Searchable = False
      Sortable = False
    end
    object plDonacionppField41: TppField
      FieldAlias = 'ProductoID'
      FieldName = 'ProductoID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 40
    end
    object plDonacionppField42: TppField
      FieldAlias = 'Reservado'
      FieldName = 'Reservado'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 41
    end
    object plDonacionppField43: TppField
      FieldAlias = 'Disponible'
      FieldName = 'Disponible'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 42
    end
    object plDonacionppField44: TppField
      FieldAlias = 'UserIdCuestionario'
      FieldName = 'UserIdCuestionario'
      FieldLength = 10
      DisplayWidth = 10
      Position = 43
    end
    object plDonacionppField45: TppField
      FieldAlias = 'UserIdMuestra'
      FieldName = 'UserIdMuestra'
      FieldLength = 10
      DisplayWidth = 10
      Position = 44
    end
  end
  object dsDomaciones: TDataSource
    AutoEdit = False
    DataSet = qrDonaciones
    Left = 372
    Top = 268
  end
  object dsDatosEtiqutaGrance: TDataSource
    AutoEdit = False
    DataSet = qFind
    Left = 668
    Top = 292
  end
  object qFind: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CodigoId'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     dbo.BSDonacion.*, dbo.BSTipoFunda.TipoFundaDes, dbo.B' +
        'STipoFunda.Dias, DATEADD(day, dbo.BSTipoFunda.Dias, dbo.BSDonaci' +
        'on.Fecha) '
      
        '                      AS FechaCaducidad, dbo.BSInventario.Produc' +
        'toID AS Expr1, dbo.BSInventario.CodigoId, dbo.BSInventario.Canti' +
        'dad, dbo.BSInventario.Fecha AS Expr2, '
      
        '                      dbo.BSInventario.Hora, dbo.BSProductos.Pro' +
        'ductoDes, dbo.BSDonante.TipoSangre, dbo.BSDonante.RH'
      'FROM         dbo.BSDonacion INNER JOIN'
      
        '                      dbo.BSTipoFunda ON dbo.BSDonacion.TipoFund' +
        'aID = dbo.BSTipoFunda.TipoFundaID INNER JOIN'
      
        '                      dbo.BSInventario ON dbo.BSDonacion.Donacio' +
        'nID = dbo.BSInventario.DonacionId INNER JOIN'
      
        '                      dbo.BSProductos ON dbo.BSInventario.Produc' +
        'toID = dbo.BSProductos.ProductoID INNER JOIN'
      
        '                      dbo.BSDonante ON dbo.BSDonacion.PacienteID' +
        ' = dbo.BSDonante.PacienteID'
      'WHERE     (dbo.BSInventario.CodigoId = :CodigoId)')
    Left = 536
    Top = 308
  end
  object qrDonantes: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     dbo.BSDonante.PacienteID, dbo.PTCliente.Nombre, dbo.P' +
        'TCliente.Telefono, dbo.PTCliente.Telefono2, dbo.PTCliente.Direcc' +
        'ion, dbo.PTCliente.CiudadID,'
      
        '                       dbo.BSDonante.TipoDonante, dbo.BSDonante.' +
        'Estado, dbo.BSDonante.Rechaso, dbo.BSDonante.RechasoNota, dbo.BS' +
        'Donante.DonanteActivo, '
      
        '                      dbo.BSDonante.TipoSangre, dbo.BSDonante.RH' +
        ', dbo.BSDonante.UltimaDonacionId, dbo.BSDonante.FechaUltimaDon'
      'FROM         dbo.BSDonante INNER JOIN'
      
        '                      dbo.PTCliente ON dbo.BSDonante.PacienteID ' +
        '= dbo.PTCliente.ClienteID')
    Left = 344
    Top = 348
    object qrDonantesPacienteID: TStringField
      FieldName = 'PacienteID'
      Size = 10
    end
    object qrDonantesNombre: TStringField
      FieldName = 'Nombre'
      Size = 80
    end
    object qrDonantesTelefono: TStringField
      FieldName = 'Telefono'
    end
    object qrDonantesTelefono2: TStringField
      FieldName = 'Telefono2'
    end
    object qrDonantesDireccion: TStringField
      FieldName = 'Direccion'
      Size = 255
    end
    object qrDonantesCiudadID: TStringField
      FieldName = 'CiudadID'
      Size = 10
    end
    object qrDonantesTipoDonante: TWideStringField
      FieldName = 'TipoDonante'
      FixedChar = True
      Size = 10
    end
    object qrDonantesEstado: TWideStringField
      FieldName = 'Estado'
      FixedChar = True
      Size = 10
    end
    object qrDonantesRechaso: TWideStringField
      FieldName = 'Rechaso'
    end
    object qrDonantesRechasoNota: TWideStringField
      FieldName = 'RechasoNota'
      Size = 100
    end
    object qrDonantesDonanteActivo: TSmallintField
      FieldName = 'DonanteActivo'
    end
    object qrDonantesTipoSangre: TWideStringField
      FieldName = 'TipoSangre'
      FixedChar = True
      Size = 10
    end
    object qrDonantesRH: TWideStringField
      FieldName = 'RH'
      FixedChar = True
      Size = 10
    end
    object qrDonantesUltimaDonacionId: TStringField
      FieldName = 'UltimaDonacionId'
    end
    object qrDonantesFechaUltimaDon: TDateTimeField
      FieldName = 'FechaUltimaDon'
    end
  end
  object dsDonantes: TDataSource
    AutoEdit = False
    DataSet = qrDonantes
    Left = 436
    Top = 340
  end
  object qrReservacionesVencidas: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Fecha'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     dbo.BSInventario.CodigoId, dbo.BSInventario.DonacionI' +
        'd, dbo.BSInventario.ProductoID, dbo.BSProductos.ProductoDes, dbo' +
        '.BSInventario.Cantidad, '
      
        '                      dbo.BSInventario.Fecha, dbo.BSInventario.H' +
        'ora, dbo.BSInventario.Reservado, dbo.BSInventario.ReservadoHasta' +
        ', dbo.BSInventario.Dias, '
      
        '                      dbo.BSInventario.Vence, dbo.BSInventario.C' +
        'ruce, dbo.BSInventario.ReceptorId, dbo.BSInventario.DoctorId'
      'FROM         dbo.BSInventario INNER JOIN'
      
        '                      dbo.BSProductos ON dbo.BSInventario.Produc' +
        'toID = dbo.BSProductos.ProductoID'
      'WHERE     (dbo.BSInventario.ReservadoHasta < :Fecha)')
    Left = 616
    Top = 19
    object qrReservacionesVencidasCodigoId: TStringField
      FieldName = 'CodigoId'
    end
    object qrReservacionesVencidasDonacionId: TStringField
      FieldName = 'DonacionId'
    end
    object qrReservacionesVencidasProductoID: TWideStringField
      FieldName = 'ProductoID'
      FixedChar = True
      Size = 10
    end
    object qrReservacionesVencidasProductoDes: TWideStringField
      FieldName = 'ProductoDes'
      FixedChar = True
      Size = 30
    end
    object qrReservacionesVencidasCantidad: TBCDField
      FieldName = 'Cantidad'
      Precision = 19
    end
    object qrReservacionesVencidasFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object qrReservacionesVencidasHora: TStringField
      FieldName = 'Hora'
    end
    object qrReservacionesVencidasReservado: TBooleanField
      FieldName = 'Reservado'
    end
    object qrReservacionesVencidasReservadoHasta: TDateTimeField
      FieldName = 'ReservadoHasta'
    end
    object qrReservacionesVencidasDias: TIntegerField
      FieldName = 'Dias'
    end
    object qrReservacionesVencidasVence: TDateTimeField
      FieldName = 'Vence'
      ReadOnly = True
    end
    object qrReservacionesVencidasCruce: TBooleanField
      FieldName = 'Cruce'
    end
    object qrReservacionesVencidasReceptorId: TStringField
      FieldName = 'ReceptorId'
      Size = 10
    end
    object qrReservacionesVencidasDoctorId: TStringField
      FieldName = 'DoctorId'
      Size = 10
    end
  end
  object qrProductosVencidos: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Fecha'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     dbo.BSInventario.CodigoId, dbo.BSInventario.DonacionI' +
        'd, dbo.BSInventario.ProductoID, dbo.BSProductos.ProductoDes, dbo' +
        '.BSInventario.Cantidad, '
      
        '                      dbo.BSInventario.Fecha, dbo.BSInventario.H' +
        'ora, dbo.BSInventario.Reservado, dbo.BSInventario.ReservadoHasta' +
        ', dbo.BSInventario.Dias, '
      
        '                      dbo.BSInventario.Vence, dbo.BSInventario.C' +
        'ruce, dbo.BSInventario.ReceptorId, dbo.BSInventario.DoctorId'
      'FROM         dbo.BSInventario INNER JOIN'
      
        '                      dbo.BSProductos ON dbo.BSInventario.Produc' +
        'toID = dbo.BSProductos.ProductoID'
      'WHERE     (dbo.BSInventario.Vence < :Fecha)')
    Left = 624
    Top = 75
    object qrProductosVencidosCodigoId: TStringField
      FieldName = 'CodigoId'
    end
    object qrProductosVencidosDonacionId: TStringField
      FieldName = 'DonacionId'
    end
    object qrProductosVencidosProductoID: TWideStringField
      FieldName = 'ProductoID'
      FixedChar = True
      Size = 10
    end
    object qrProductosVencidosProductoDes: TWideStringField
      FieldName = 'ProductoDes'
      FixedChar = True
      Size = 30
    end
    object qrProductosVencidosCantidad: TBCDField
      FieldName = 'Cantidad'
      Precision = 19
    end
    object qrProductosVencidosFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object qrProductosVencidosHora: TStringField
      FieldName = 'Hora'
    end
    object qrProductosVencidosReservado: TBooleanField
      FieldName = 'Reservado'
    end
    object qrProductosVencidosReservadoHasta: TDateTimeField
      FieldName = 'ReservadoHasta'
    end
    object qrProductosVencidosDias: TIntegerField
      FieldName = 'Dias'
    end
    object qrProductosVencidosVence: TDateTimeField
      FieldName = 'Vence'
      ReadOnly = True
    end
    object qrProductosVencidosCruce: TBooleanField
      FieldName = 'Cruce'
    end
    object qrProductosVencidosReceptorId: TStringField
      FieldName = 'ReceptorId'
      Size = 10
    end
    object qrProductosVencidosDoctorId: TStringField
      FieldName = 'DoctorId'
      Size = 10
    end
  end
  object qrDatosProducto: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CodigoId'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *'
      'FROM BSInventario'
      'WHERE CodigoId = :CodigoId')
    Left = 56
    Top = 363
    object qrDatosProductoCodigoId: TStringField
      FieldName = 'CodigoId'
    end
    object qrDatosProductoReceptorId: TStringField
      FieldName = 'ReceptorId'
      Size = 10
    end
    object qrDatosProductoDoctorId: TStringField
      FieldName = 'DoctorId'
      Size = 10
    end
    object qrDatosProductoReservado: TBooleanField
      FieldName = 'Reservado'
    end
    object qrDatosProductoReservadoHasta: TDateTimeField
      FieldName = 'ReservadoHasta'
    end
    object qrDatosProductoCruce: TBooleanField
      FieldName = 'Cruce'
    end
    object qrDatosProductoCrucePacienteId: TStringField
      FieldName = 'CrucePacienteId'
      Size = 10
    end
    object qrDatosProductoDisponible: TBooleanField
      FieldName = 'Disponible'
    end
  end
  object ADOQuery1: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     dbo.BSInventario.ProductoID, dbo.BSProductos.Producto' +
        'Des, SUM(dbo.BSInventario.Cantidad) AS Cantidad, dbo.BSProductos' +
        '.Precio, '
      
        '                      dbo.BSProductos.PrecioDolares, dbo.BSProdu' +
        'ctos.Dias, dbo.BSProductos.PermiteCambioPrecio, dbo.BSProductos.' +
        'CodigoAxapta, '
      
        '                      dbo.BSProductos.Costo, dbo.BSProductos.Ext' +
        'erior, dbo.BSProductos.FacturarCabecera, dbo.BSProductos.Tipo'
      'FROM         dbo.BSInventario INNER JOIN'
      
        '                      dbo.BSProductos ON dbo.BSInventario.Produc' +
        'toID = dbo.BSProductos.ProductoID'
      
        'GROUP BY dbo.BSInventario.ProductoID,  dbo.BSProductos.ProductoD' +
        'es, dbo.BSProductos.Precio, dbo.BSProductos.PrecioDolares, dbo.B' +
        'SProductos.Dias, '
      
        '                      dbo.BSProductos.CodigoAxapta, dbo.BSProduc' +
        'tos.Costo, dbo.BSProductos.PermiteCambioPrecio, dbo.BSProductos.' +
        'Exterior, '
      
        '                      dbo.BSProductos.FacturarCabecera, dbo.BSPr' +
        'oductos.Tipo')
    Left = 256
    Top = 35
    object WideStringField1: TWideStringField
      FieldName = 'ProductoID'
      FixedChar = True
      Size = 10
    end
    object WideStringField2: TWideStringField
      FieldName = 'ProductoDes'
      FixedChar = True
      Size = 30
    end
    object BCDField1: TBCDField
      FieldName = 'Cantidad'
      ReadOnly = True
      Precision = 19
    end
    object BCDField2: TBCDField
      FieldName = 'Precio'
      Precision = 19
    end
    object BCDField3: TBCDField
      FieldName = 'PrecioDolares'
      Precision = 19
    end
    object IntegerField1: TIntegerField
      FieldName = 'Dias'
    end
    object BooleanField1: TBooleanField
      FieldName = 'PermiteCambioPrecio'
    end
    object StringField1: TStringField
      FieldName = 'CodigoAxapta'
    end
    object BCDField4: TBCDField
      FieldName = 'Costo'
      Precision = 19
    end
    object BooleanField2: TBooleanField
      FieldName = 'Exterior'
    end
    object BooleanField3: TBooleanField
      FieldName = 'FacturarCabecera'
    end
    object BooleanField4: TBooleanField
      FieldName = 'Tipo'
    end
  end
  object qrClientes: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'PacienteId'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *'
      'FROM         PTCliente'
      'WHERE ClienteId = :PacienteId')
    Left = 216
    Top = 259
    object qrClientesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 80
    end
  end
  object qrEntradaPacienteCons: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'Select * from dbo.PTENTRADAPACIENTE INNER JOIN dbo.BSDonacion ON' +
        ' dbo.PTENTRADAPACIENTE.ENTRADAID = dbo.BSDonacion.DonacionID')
    Left = 656
    Top = 209
    object qrEntradaPacienteConsENTRADAID: TStringField
      FieldName = 'ENTRADAID'
    end
    object qrEntradaPacienteConsFECHA: TDateTimeField
      FieldName = 'FECHA'
    end
    object qrEntradaPacienteConsHORAENTRADA: TStringField
      FieldName = 'HORAENTRADA'
    end
    object qrEntradaPacienteConsPACIENTEID: TStringField
      FieldName = 'PACIENTEID'
      Size = 10
    end
    object qrEntradaPacienteConsCLIENTEID: TStringField
      FieldName = 'CLIENTEID'
      Size = 10
    end
    object qrEntradaPacienteConsDOCTORID: TStringField
      FieldName = 'DOCTORID'
      Size = 10
    end
    object qrEntradaPacienteConsPOLIZAID: TStringField
      FieldName = 'POLIZAID'
      Size = 10
    end
    object qrEntradaPacienteConsENCLINICA: TIntegerField
      FieldName = 'ENCLINICA'
    end
    object qrEntradaPacienteConsRECORDCLINICA: TStringField
      FieldName = 'RECORDCLINICA'
    end
    object qrEntradaPacienteConsNUMEROHABITACION: TStringField
      FieldName = 'NUMEROHABITACION'
    end
    object qrEntradaPacienteConsFECHAENTRADA: TDateTimeField
      FieldName = 'FECHAENTRADA'
    end
    object qrEntradaPacienteConsFECHADEALTA: TDateTimeField
      FieldName = 'FECHADEALTA'
    end
    object qrEntradaPacienteConsRESULTADOPACIENTE: TIntegerField
      FieldName = 'RESULTADOPACIENTE'
    end
    object qrEntradaPacienteConsRESULTADODOCTOR: TIntegerField
      FieldName = 'RESULTADODOCTOR'
    end
    object qrEntradaPacienteConsFECHAPROMETIDA: TDateTimeField
      FieldName = 'FECHAPROMETIDA'
    end
    object qrEntradaPacienteConsHORAPROMETIDA: TStringField
      FieldName = 'HORAPROMETIDA'
    end
    object qrEntradaPacienteConsFLEBOTOMISTAID: TStringField
      FieldName = 'FLEBOTOMISTAID'
      Size = 10
    end
    object qrEntradaPacienteConsNOTA: TStringField
      FieldName = 'NOTA'
      Size = 255
    end
    object qrEntradaPacienteConsPROYECTOID: TStringField
      FieldName = 'PROYECTOID'
      Size = 10
    end
    object qrEntradaPacienteConsRECORDID: TIntegerField
      FieldName = 'RECORDID'
    end
    object qrEntradaPacienteConsBRUTO: TBCDField
      FieldName = 'BRUTO'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteConsDESCUENTO: TBCDField
      FieldName = 'DESCUENTO'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteConsSUBTOTAL: TBCDField
      FieldName = 'SUBTOTAL'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteConsNETO: TBCDField
      FieldName = 'NETO'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteConsNOMBREPACIENTE: TStringField
      FieldName = 'NOMBREPACIENTE'
      Size = 80
    end
    object qrEntradaPacienteConsDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 255
    end
    object qrEntradaPacienteConsTELEFONOS: TStringField
      FieldName = 'TELEFONOS'
    end
    object qrEntradaPacienteConsTELEFONO2: TStringField
      FieldName = 'TELEFONO2'
    end
    object qrEntradaPacienteConsEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object qrEntradaPacienteConsCLIENTENOMBRE: TStringField
      FieldName = 'CLIENTENOMBRE'
      Size = 80
    end
    object qrEntradaPacienteConsSUCURSALID: TStringField
      FieldName = 'SUCURSALID'
      Size = 10
    end
    object qrEntradaPacienteConsUSERID: TStringField
      FieldName = 'USERID'
      Size = 10
    end
    object qrEntradaPacienteConsCOBROID: TStringField
      FieldName = 'COBROID'
      Size = 10
    end
    object qrEntradaPacienteConsTOTALPAGADO: TBCDField
      FieldName = 'TOTALPAGADO'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteConsPRIORIDAD: TIntegerField
      FieldName = 'PRIORIDAD'
    end
    object qrEntradaPacienteConsFAX: TStringField
      FieldName = 'FAX'
    end
    object qrEntradaPacienteConsTIPODOCUMENTO: TIntegerField
      FieldName = 'TIPODOCUMENTO'
    end
    object qrEntradaPacienteConsCOBERTURAPORC: TBCDField
      FieldName = 'COBERTURAPORC'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteConsCOBERTURASEGURO: TBCDField
      FieldName = 'COBERTURASEGURO'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteConsCOBERTURAVALOR: TBCDField
      FieldName = 'COBERTURAVALOR'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteConsDESCUENTOPORC: TBCDField
      FieldName = 'DESCUENTOPORC'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteConsDESCUENTOVALOR: TBCDField
      FieldName = 'DESCUENTOVALOR'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteConsDESCUENTOBONO: TBCDField
      FieldName = 'DESCUENTOBONO'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteConsORIGEN: TStringField
      FieldName = 'ORIGEN'
      Size = 10
    end
    object qrEntradaPacienteConsAPROBACIONNO: TStringField
      FieldName = 'APROBACIONNO'
    end
    object qrEntradaPacienteConsAPROBACIONPOR: TStringField
      FieldName = 'APROBACIONPOR'
      Size = 10
    end
    object qrEntradaPacienteConsCOBERTURARECHAZADA: TIntegerField
      FieldName = 'COBERTURARECHAZADA'
    end
    object qrEntradaPacienteConsCOBERTURACONFIRMADA: TIntegerField
      FieldName = 'COBERTURACONFIRMADA'
    end
    object qrEntradaPacienteConsFECHAASEGURADORA: TDateTimeField
      FieldName = 'FECHAASEGURADORA'
    end
    object qrEntradaPacienteConsMUESTRANO: TStringField
      FieldName = 'MUESTRANO'
    end
    object qrEntradaPacienteConsMONEDAID: TStringField
      FieldName = 'MONEDAID'
      Size = 3
    end
    object qrEntradaPacienteConsCOBERTURAEXPPORC: TIntegerField
      FieldName = 'COBERTURAEXPPORC'
    end
    object qrEntradaPacienteConsEDADPACIENTE: TIntegerField
      FieldName = 'EDADPACIENTE'
    end
    object qrEntradaPacienteConsSEXO: TIntegerField
      FieldName = 'SEXO'
    end
    object qrEntradaPacienteConsNOMBREDOCTOR: TStringField
      FieldName = 'NOMBREDOCTOR'
      Size = 80
    end
    object qrEntradaPacienteConsPUBLICARINTERNET: TIntegerField
      FieldName = 'PUBLICARINTERNET'
    end
    object qrEntradaPacienteConsCARNET: TStringField
      FieldName = 'CARNET'
    end
    object qrEntradaPacienteConsPUBLICARINTERNETDOCTOR: TIntegerField
      FieldName = 'PUBLICARINTERNETDOCTOR'
    end
    object qrEntradaPacienteConsCUADREGLOBAL: TStringField
      FieldName = 'CUADREGLOBAL'
    end
    object qrEntradaPacienteConsCUADREUSUARIO: TStringField
      FieldName = 'CUADREUSUARIO'
    end
    object qrEntradaPacienteConsDESCAUTORIZADOPOR: TStringField
      FieldName = 'DESCAUTORIZADOPOR'
      Size = 10
    end
    object qrEntradaPacienteConsGASTOSVARIOS: TBCDField
      FieldName = 'GASTOSVARIOS'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteConsNOAS400: TIntegerField
      FieldName = 'NOAS400'
    end
    object qrEntradaPacienteConsNOAXAPTA: TIntegerField
      FieldName = 'NOAXAPTA'
    end
    object qrEntradaPacienteConsNOFACTURA: TIntegerField
      FieldName = 'NOFACTURA'
    end
    object qrEntradaPacienteConsFACTEXTERIOR: TIntegerField
      FieldName = 'FACTEXTERIOR'
    end
    object qrEntradaPacienteConsHOLD: TIntegerField
      FieldName = 'HOLD'
    end
    object qrEntradaPacienteConsREPMUESTRA: TIntegerField
      FieldName = 'REPMUESTRA'
    end
    object qrEntradaPacienteConsENTRADAIDANT: TStringField
      FieldName = 'ENTRADAIDANT'
    end
    object qrEntradaPacienteConsTIPOENTRADA: TStringField
      FieldName = 'TIPOENTRADA'
      Size = 2
    end
    object qrEntradaPacienteConsFORMADEPAGO: TStringField
      FieldName = 'FORMADEPAGO'
    end
    object qrEntradaPacienteConsDESCUENTOCARD: TStringField
      FieldName = 'DESCUENTOCARD'
      Size = 30
    end
    object qrEntradaPacienteConsDESCUENTOTEXTO: TStringField
      FieldName = 'DESCUENTOTEXTO'
      Size = 30
    end
    object qrEntradaPacienteConsACUERDOPROPIO: TIntegerField
      FieldName = 'ACUERDOPROPIO'
    end
    object qrEntradaPacienteConsCLIENTEPADRE: TStringField
      FieldName = 'CLIENTEPADRE'
      Size = 10
    end
    object qrEntradaPacienteConsDESCUENTOPLANID: TStringField
      FieldName = 'DESCUENTOPLANID'
      Size = 10
    end
    object qrEntradaPacienteConsFECHAREGISTRO: TDateTimeField
      FieldName = 'FECHAREGISTRO'
    end
    object qrEntradaPacienteConsHORAREGISTRO: TStringField
      FieldName = 'HORAREGISTRO'
    end
    object qrEntradaPacienteConsTASA: TBCDField
      FieldName = 'TASA'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteConsESTATUS: TIntegerField
      FieldName = 'ESTATUS'
    end
    object qrEntradaPacienteConsTIPOCLIENTEAS400: TIntegerField
      FieldName = 'TIPOCLIENTEAS400'
    end
    object qrEntradaPacienteConsCLASECREDITO: TStringField
      FieldName = 'CLASECREDITO'
      Size = 5
    end
    object qrEntradaPacienteConsCARNETNUMERO: TStringField
      FieldName = 'CARNETNUMERO'
      Size = 10
    end
    object qrEntradaPacienteConsCLIENTEPADREAXAPTA: TStringField
      FieldName = 'CLIENTEPADREAXAPTA'
      Size = 10
    end
    object qrEntradaPacienteConsPACIENTEIDAXAPTA: TStringField
      FieldName = 'PACIENTEIDAXAPTA'
      Size = 10
    end
    object qrEntradaPacienteConsCLIENTEIDAXAPTA: TStringField
      FieldName = 'CLIENTEIDAXAPTA'
      Size = 10
    end
    object qrEntradaPacienteConsDOCTORIDAXAPTA: TStringField
      FieldName = 'DOCTORIDAXAPTA'
      Size = 10
    end
    object qrEntradaPacienteConsDATAAREAID: TStringField
      FieldName = 'DATAAREAID'
      Size = 3
    end
    object qrEntradaPacienteConsRECID: TIntegerField
      FieldName = 'RECID'
    end
  end
end
