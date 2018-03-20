object InterfaseAS400: TInterfaseAS400
  OldCreateOrder = False
  Height = 592
  Width = 980
  object ASConnection: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Password=INTERFASE;Persist Security Info=True' +
      ';User ID=INTERFASE;Data Source=PVAS400;Initial Catalog=S10D7471'
    DefaultDatabase = 'S10D7471'
    LoginPrompt = False
    Left = 40
    Top = 40
  end
  object qrASDetalle: TADOQuery
    Connection = ASConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Muestra'
        Attributes = [paNullable]
        DataType = ftBCD
        Precision = 11
        Size = 19
        Value = Null
      end
      item
        Name = 'Codigo'
        Attributes = [paNullable]
        DataType = ftBCD
        Precision = 4
        Size = 19
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM INP04401'
      'WHERE (IN4MUE = :Muestra)'
      'AND (IN4COD = :Codigo)')
    Left = 48
    Top = 166
    object qrASDetalleIN4MUE: TBCDField
      FieldName = 'IN4MUE'
      Precision = 11
      Size = 0
    end
    object qrASDetalleIN4COD: TIntegerField
      FieldName = 'IN4COD'
    end
    object qrASDetalleIN4NOM: TStringField
      FieldName = 'IN4NOM'
      FixedChar = True
      Size = 50
    end
    object qrASDetalleIN4STS: TStringField
      FieldName = 'IN4STS'
      FixedChar = True
      Size = 1
    end
    object qrASDetalleIN4DEP: TIntegerField
      FieldName = 'IN4DEP'
    end
    object qrASDetalleIN4FEC: TIntegerField
      FieldName = 'IN4FEC'
    end
    object qrASDetalleIN4HOR: TIntegerField
      FieldName = 'IN4HOR'
    end
    object qrASDetalleIN4USU: TStringField
      FieldName = 'IN4USU'
      FixedChar = True
      Size = 10
    end
    object qrASDetalleIN4COM: TStringField
      FieldName = 'IN4COM'
      FixedChar = True
      Size = 100
    end
    object qrASDetalleIN4PET: TIntegerField
      FieldName = 'IN4PET'
    end
    object qrASDetalleIN4ANT: TBCDField
      FieldName = 'IN4ANT'
      Precision = 11
      Size = 0
    end
    object qrASDetalleIN4VAL: TBCDField
      FieldName = 'IN4VAL'
      Precision = 11
      Size = 2
    end
    object qrASDetalleIN4TIP: TStringField
      FieldName = 'IN4TIP'
      FixedChar = True
      Size = 1
    end
    object qrASDetalleIN4ACT: TStringField
      FieldName = 'IN4ACT'
      FixedChar = True
      Size = 1
    end
    object qrASDetalleIN4GRU: TStringField
      FieldName = 'IN4GRU'
      FixedChar = True
      Size = 3
    end
  end
  object qrASEncabezado: TADOQuery
    Connection = ASConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Muestra'
        Attributes = [paNullable]
        DataType = ftBCD
        Precision = 11
        Size = 19
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM INP03301'
      'WHERE IN3MUE = :Muestra')
    Left = 48
    Top = 103
    object qrASEncabezadoIN3MUE: TBCDField
      FieldName = 'IN3MUE'
      Precision = 11
      Size = 0
    end
    object qrASEncabezadoIN3NOM: TStringField
      FieldName = 'IN3NOM'
      FixedChar = True
      Size = 40
    end
    object qrASEncabezadoIN3HOR: TIntegerField
      FieldName = 'IN3HOR'
    end
    object qrASEncabezadoIN3DIR: TStringField
      FieldName = 'IN3DIR'
      FixedChar = True
      Size = 40
    end
    object qrASEncabezadoIN3EDA: TIntegerField
      FieldName = 'IN3EDA'
    end
    object qrASEncabezadoIN3NAC: TIntegerField
      FieldName = 'IN3NAC'
    end
    object qrASEncabezadoIN3TEL: TStringField
      FieldName = 'IN3TEL'
      FixedChar = True
      Size = 10
    end
    object qrASEncabezadoIN3CAT: TStringField
      FieldName = 'IN3CAT'
      FixedChar = True
    end
    object qrASEncabezadoIN3FEC: TIntegerField
      FieldName = 'IN3FEC'
    end
    object qrASEncabezadoIN3USU: TStringField
      FieldName = 'IN3USU'
      FixedChar = True
      Size = 10
    end
    object qrASEncabezadoIN3SEX: TStringField
      FieldName = 'IN3SEX'
      FixedChar = True
      Size = 1
    end
    object qrASEncabezadoIN3CED: TBCDField
      FieldName = 'IN3CED'
      Precision = 11
      Size = 0
    end
    object qrASEncabezadoIN3SUC: TIntegerField
      FieldName = 'IN3SUC'
    end
    object qrASEncabezadoIN3CDO: TIntegerField
      FieldName = 'IN3CDO'
    end
    object qrASEncabezadoIN3DOC: TStringField
      FieldName = 'IN3DOC'
      FixedChar = True
      Size = 40
    end
    object qrASEncabezadoIN3CLI: TBCDField
      FieldName = 'IN3CLI'
      Precision = 10
      Size = 0
    end
    object qrASEncabezadoIN3FAC: TBCDField
      FieldName = 'IN3FAC'
      Precision = 11
      Size = 2
    end
    object qrASEncabezadoIN3PAG: TBCDField
      FieldName = 'IN3PAG'
      Precision = 11
      Size = 2
    end
    object qrASEncabezadoIN3RES: TBCDField
      FieldName = 'IN3RES'
      Precision = 11
      Size = 2
    end
    object qrASEncabezadoIN3EPA: TIntegerField
      FieldName = 'IN3EPA'
    end
    object qrASEncabezadoIN3IPA: TIntegerField
      FieldName = 'IN3IPA'
    end
    object qrASEncabezadoIN3EDO: TIntegerField
      FieldName = 'IN3EDO'
    end
    object qrASEncabezadoIN3IDO: TIntegerField
      FieldName = 'IN3IDO'
    end
    object qrASEncabezadoIN3RCL: TIntegerField
      FieldName = 'IN3RCL'
    end
    object qrASEncabezadoIN3ICL: TIntegerField
      FieldName = 'IN3ICL'
    end
    object qrASEncabezadoIN3COM: TStringField
      FieldName = 'IN3COM'
      FixedChar = True
      Size = 50
    end
    object qrASEncabezadoIN3ABR: TIntegerField
      FieldName = 'IN3ABR'
    end
    object qrASEncabezadoIN3REL: TBCDField
      FieldName = 'IN3REL'
      Precision = 11
      Size = 0
    end
    object qrASEncabezadoIN3REF: TStringField
      FieldName = 'IN3REF'
      FixedChar = True
    end
    object qrASEncabezadoIN3ACT: TStringField
      FieldName = 'IN3ACT'
      FixedChar = True
      Size = 1
    end
    object qrASEncabezadoIN3TAS: TBCDField
      FieldName = 'IN3TAS'
      Precision = 5
      Size = 2
    end
    object qrASEncabezadoIN3FPA: TBCDField
      FieldName = 'IN3FPA'
      Precision = 11
      Size = 2
    end
    object qrASEncabezadoIN3POL: TStringField
      FieldName = 'IN3POL'
      FixedChar = True
      Size = 25
    end
    object qrASEncabezadoIN3TAR: TBCDField
      FieldName = 'IN3TAR'
      Precision = 11
      Size = 2
    end
    object qrASEncabezadoIN3MON: TIntegerField
      FieldName = 'IN3MON'
    end
    object qrASEncabezadoIN3CAM: TBCDField
      FieldName = 'IN3CAM'
      Precision = 5
      Size = 2
    end
    object qrASEncabezadoIN3ENV: TBCDField
      FieldName = 'IN3ENV'
      Precision = 11
      Size = 2
    end
    object qrASEncabezadoIN3SEG: TBCDField
      FieldName = 'IN3SEG'
      Precision = 11
      Size = 2
    end
    object qrASEncabezadoIN3NRE: TIntegerField
      FieldName = 'IN3NRE'
    end
    object qrASEncabezadoIN3URG: TIntegerField
      FieldName = 'IN3URG'
    end
    object qrASEncabezadoIN3CCO: TStringField
      FieldName = 'IN3CCO'
      Size = 1
    end
    object qrASEncabezadoIN3ORI: TStringField
      FieldName = 'IN3ORI'
      FixedChar = True
      Size = 1
    end
    object qrASEncabezadoIN3EMB: TStringField
      FieldName = 'IN3EMB'
      FixedChar = True
      Size = 1
    end
    object qrASEncabezadoIN3PNA: TStringField
      FieldName = 'IN3PNA'
      FixedChar = True
    end
    object qrASEncabezadoIN3NUP: TIntegerField
      FieldName = 'IN3NUP'
    end
    object qrASEncabezadoIN3PAS: TStringField
      FieldName = 'IN3PAS'
      FixedChar = True
    end
    object qrASEncabezadoIN3DTO: TStringField
      FieldName = 'IN3DTO'
      FixedChar = True
      Size = 1
    end
    object qrASEncabezadoIN3NAP: TStringField
      FieldName = 'IN3NAP'
      FixedChar = True
    end
    object qrASEncabezadoIN3PAP: TStringField
      FieldName = 'IN3PAP'
      FixedChar = True
      Size = 50
    end
    object qrASEncabezadoIN3DI2: TStringField
      FieldName = 'IN3DI2'
      FixedChar = True
      Size = 40
    end
    object qrASEncabezadoIN3IND: TStringField
      FieldName = 'IN3IND'
      FixedChar = True
      Size = 1
    end
  end
  object qrSQLEncabezado: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Muestrano'
        DataType = ftWideString
        Size = 11
        Value = Null
      end>
    SQL.Strings = (
      'DECLARE'#9'@return_value int'
      'EXEC'#9'@return_value = [dbo].[SendRegAS400_NEW]'
      #9#9'@Mue = :Muestrano'
      ''
      '')
    Left = 296
    Top = 99
    object qrSQLEncabezadoMuestra: TStringField
      FieldName = 'Muestra'
      ReadOnly = True
      Size = 11
    end
    object qrSQLEncabezadoMuestraNo: TStringField
      FieldName = 'MuestraNo'
    end
    object qrSQLEncabezadoHora: TStringField
      FieldName = 'Hora'
      ReadOnly = True
      Size = 6
    end
    object qrSQLEncabezadoDireccion: TStringField
      FieldName = 'Direccion'
      Size = 255
    end
    object qrSQLEncabezadoDireccionFija: TStringField
      FieldName = 'DireccionFija'
      ReadOnly = True
      Size = 8000
    end
    object qrSQLEncabezadoEdadPaciente: TIntegerField
      FieldName = 'EdadPaciente'
    end
    object qrSQLEncabezadoEdadCalculada: TIntegerField
      FieldName = 'EdadCalculada'
      ReadOnly = True
    end
    object qrSQLEncabezadoFechaNacimiento: TDateTimeField
      FieldName = 'FechaNacimiento'
    end
    object qrSQLEncabezadoFechaNacimientoTexto: TStringField
      FieldName = 'FechaNacimientoTexto'
      ReadOnly = True
      Size = 8
    end
    object qrSQLEncabezadoTelefono: TStringField
      FieldName = 'Telefono'
      ReadOnly = True
      Size = 8000
    end
    object qrSQLEncabezadoCategoriaClienteNombre: TStringField
      FieldName = 'CategoriaClienteNombre'
      ReadOnly = True
    end
    object qrSQLEncabezadoFechaEntrada: TDateTimeField
      FieldName = 'FechaEntrada'
    end
    object qrSQLEncabezadoFechaEntradaTexto: TStringField
      FieldName = 'FechaEntradaTexto'
      ReadOnly = True
      Size = 8
    end
    object qrSQLEncabezadoUserId: TStringField
      FieldName = 'UserId'
      Size = 10
    end
    object qrSQLEncabezadoSexo: TIntegerField
      FieldName = 'Sexo'
    end
    object qrSQLEncabezadoCedula: TStringField
      FieldName = 'Cedula'
      ReadOnly = True
      Size = 8000
    end
    object qrSQLEncabezadoSucursal: TIntegerField
      FieldName = 'Sucursal'
    end
    object qrSQLEncabezadoSucursalId: TStringField
      FieldName = 'SucursalId'
      Size = 10
    end
    object qrSQLEncabezadoDoctorId: TStringField
      FieldName = 'DoctorId'
      ReadOnly = True
      Size = 10
    end
    object qrSQLEncabezadoDoctorNombre: TStringField
      FieldName = 'DoctorNombre'
      ReadOnly = True
      Size = 40
    end
    object qrSQLEncabezadoClienteId: TStringField
      FieldName = 'ClienteId'
      ReadOnly = True
      Size = 8000
    end
    object qrSQLEncabezadoTipResPaciente: TIntegerField
      FieldName = 'TipResPaciente'
    end
    object qrSQLEncabezadoInternet: TIntegerField
      FieldName = 'Internet'
    end
    object qrSQLEncabezadoTipResDoctor: TIntegerField
      FieldName = 'TipResDoctor'
    end
    object qrSQLEncabezadoInternetDoctor: TIntegerField
      FieldName = 'InternetDoctor'
    end
    object qrSQLEncabezadoTipResCliente: TIntegerField
      FieldName = 'TipResCliente'
    end
    object qrSQLEncabezadoInternetCliente: TIntegerField
      FieldName = 'InternetCliente'
    end
    object qrSQLEncabezadoComentario: TStringField
      FieldName = 'Comentario'
      ReadOnly = True
      Size = 50
    end
    object qrSQLEncabezadoEnClinica: TIntegerField
      FieldName = 'EnClinica'
    end
    object qrSQLEncabezadoNumeroInternet: TIntegerField
      FieldName = 'NumeroInternet'
    end
    object qrSQLEncabezadoReferenciaExterna: TStringField
      FieldName = 'ReferenciaExterna'
      Size = 10
    end
    object qrSQLEncabezadoResto: TBCDField
      DisplayLabel = '###,###,##0.00'
      FieldName = 'Resto'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
      Precision = 29
      Size = 12
    end
    object qrSQLEncabezadoPagado: TBCDField
      DisplayLabel = '###,###,##0.00'
      FieldName = 'Pagado'
      DisplayFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrSQLEncabezadoFacturado: TBCDField
      DisplayLabel = '###,###,##0.00'
      FieldName = 'Facturado'
      DisplayFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrSQLEncabezadoNeto: TBCDField
      DisplayLabel = '###,###,##0.00'
      FieldName = 'Neto'
      DisplayFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrSQLEncabezadoRestoOld: TBCDField
      DisplayLabel = '###,###,##0.00'
      FieldName = 'RestoOld'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
      Precision = 29
      Size = 12
    end
    object qrSQLEncabezadoDescuentoPorc: TBCDField
      DisplayLabel = '###,###,##0.00'
      FieldName = 'DescuentoPorc'
      DisplayFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrSQLEncabezadoCoberturaPorc: TBCDField
      DisplayLabel = '###,###,##0.00'
      FieldName = 'CoberturaPorc'
      DisplayFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrSQLEncabezadoCoberturaSeguro: TBCDField
      DisplayLabel = '###,###,##0.00'
      FieldName = 'CoberturaSeguro'
      DisplayFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrSQLEncabezadoNombrePaciente: TStringField
      FieldName = 'NombrePaciente'
      Size = 80
    end
    object qrSQLEncabezadoNombrePacienteFijo: TStringField
      FieldName = 'NombrePacienteFijo'
      Size = 80
    end
    object qrSQLEncabezadoCodigoAS400: TStringField
      FieldName = 'CodigoAS400'
      Size = 10
    end
    object qrSQLEncabezadoGastoEnvio: TBCDField
      FieldName = 'GastoEnvio'
      Precision = 28
      Size = 12
    end
    object qrSQLEncabezadoMoneda: TStringField
      FieldName = 'Moneda'
      Size = 3
    end
    object qrSQLEncabezadoTasa: TBCDField
      FieldName = 'Tasa'
      Precision = 28
      Size = 12
    end
    object qrSQLEncabezadoEstatus: TIntegerField
      FieldName = 'Estatus'
    end
    object qrSQLEncabezadoCod_Caso: TIntegerField
      FieldName = 'Cod_Caso'
      ReadOnly = True
    end
    object qrSQLEncabezadoPrioridad: TIntegerField
      FieldName = 'Prioridad'
    end
    object qrSQLEncabezadoCConfirmada: TStringField
      FieldName = 'CConfirmada'
      ReadOnly = True
      Size = 1
    end
    object qrSQLEncabezadoRecid: TLargeintField
      FieldName = 'Recid'
    end
    object qrSQLEncabezadoEmbarazada: TBooleanField
      FieldName = 'Embarazada'
    end
    object qrSQLEncabezadoEmail: TStringField
      FieldName = 'Email'
      Size = 80
    end
    object qrSQLEncabezadoNacionalidad: TStringField
      FieldName = 'Nacionalidad'
    end
    object qrSQLEncabezadoTipo_Doc: TIntegerField
      FieldName = 'Tipo_Doc'
    end
    object qrSQLEncabezadoCodigo_Tarjeta: TIntegerField
      FieldName = 'Codigo_Tarjeta'
    end
    object qrSQLEncabezadoArea: TStringField
      FieldName = 'Area'
    end
    object qrSQLEncabezadoAprobacionNo: TStringField
      FieldName = 'AprobacionNo'
    end
    object qrSQLEncabezadoAprobacionPor: TStringField
      FieldName = 'AprobacionPor'
      Size = 80
    end
    object qrSQLEncabezadoNo_Indicacion: TBooleanField
      FieldName = 'No_Indicacion'
    end
  end
  object qrSQLDetalle: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Muestrano'
        DataType = ftWideString
        Size = 11
        Value = Null
      end>
    SQL.Strings = (
      'DECLARE'#9'@return_value int'
      'EXEC'#9'@return_value = [dbo].[SendRegDetAS400]'
      #9#9'@Mue = :Muestrano')
    Left = 424
    Top = 99
    object qrSQLDetalleMuestra: TStringField
      FieldName = 'Muestra'
      ReadOnly = True
      Size = 11
    end
    object qrSQLDetalleMuestraNo: TStringField
      FieldName = 'MuestraNo'
    end
    object qrSQLDetallePruebaId: TStringField
      FieldName = 'PruebaId'
      ReadOnly = True
      Size = 8000
    end
    object qrSQLDetalleCodigoAS400: TStringField
      FieldName = 'CodigoAS400'
      ReadOnly = True
    end
    object qrSQLDetalleStatusPrueba: TStringField
      FieldName = 'StatusPrueba'
      Size = 2
    end
    object qrSQLDetalleDepartamento: TStringField
      FieldName = 'Departamento'
      ReadOnly = True
      Size = 10
    end
    object qrSQLDetalleDeptoId: TStringField
      FieldName = 'DeptoId'
      ReadOnly = True
      Size = 10
    end
    object qrSQLDetalleFechaEntrada: TDateTimeField
      FieldName = 'FechaEntrada'
    end
    object qrSQLDetalleFechaEntradaTexto: TStringField
      FieldName = 'FechaEntradaTexto'
      ReadOnly = True
      Size = 8
    end
    object qrSQLDetalleHora: TStringField
      FieldName = 'Hora'
      ReadOnly = True
      Size = 6
    end
    object qrSQLDetalleUserId: TStringField
      FieldName = 'UserId'
      Size = 10
    end
    object qrSQLDetalleValor: TBCDField
      FieldName = 'Valor'
      ReadOnly = True
      Precision = 30
      Size = 12
    end
    object qrSQLDetalleValSinCob: TBCDField
      FieldName = 'ValSinCob'
      ReadOnly = True
      Precision = 31
      Size = 12
    end
    object qrSQLDetallePrecioBruto: TBCDField
      FieldName = 'PrecioBruto'
      Precision = 28
      Size = 12
    end
    object qrSQLDetalleComentario: TStringField
      FieldName = 'Comentario'
      Size = 255
    end
    object qrSQLDetalleComentarioMuestra: TStringField
      FieldName = 'ComentarioMuestra'
      Size = 255
    end
    object qrSQLDetallePeticion2RepMuestra: TIntegerField
      FieldName = 'Peticion2RepMuestra'
    end
    object qrSQLDetalleNumeroMuestraAnterior: TStringField
      FieldName = 'NumeroMuestraAnterior'
    end
    object qrSQLDetalleTipoPrueba: TStringField
      FieldName = 'TipoPrueba'
      Size = 5
    end
    object qrSQLDetalleTipoAS400: TStringField
      FieldName = 'TipoAS400'
      Size = 2
    end
    object qrSQLDetalleTipoMuestra: TStringField
      FieldName = 'TipoMuestra'
      Size = 10
    end
    object qrSQLDetallePruebaAsegurada: TIntegerField
      FieldName = 'PruebaAsegurada'
    end
    object qrSQLDetalleGrupoPruebaID: TStringField
      FieldName = 'GrupoPruebaID'
      Size = 10
    end
    object qrSQLDetalleNombrePrueba: TStringField
      FieldName = 'NombrePrueba'
      Size = 50
    end
  end
  object qrASResult: TADOQuery
    Connection = qrResult
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Muestra'
        Attributes = [paNullable]
        DataType = ftBCD
        Precision = 11
        Size = 19
        Value = Null
      end
      item
        Name = 'Codigo'
        Attributes = [paNullable]
        DataType = ftBCD
        Precision = 4
        Size = 19
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM RESULT'
      'WHERE ( L49MUE = :Muestra )'
      'AND ( L49PRU = :Codigo )')
    Left = 424
    Top = 24
    object qrASResultL49MUE: TBCDField
      FieldName = 'L49MUE'
      Precision = 11
      Size = 0
    end
    object qrASResultL49PRU: TIntegerField
      FieldName = 'L49PRU'
    end
    object qrASResultTANOCU: TStringField
      FieldName = 'TANOCU'
      FixedChar = True
      Size = 50
    end
    object qrASResultL49RES: TStringField
      FieldName = 'L49RES'
      FixedChar = True
      Size = 15
    end
  end
  object qrResult: TADOConnection
    ConnectionString = 
      'Provider=MSDASQL.1;Password=FIDEL;Persist Security Info=True;Use' +
      'r ID=JULIO;Data Source=Laboratorio;Mode=ReadWrite'
    DefaultDatabase = 'S103F23E'
    LoginPrompt = False
    Provider = 'MSDASQL.1'
    Left = 296
    Top = 24
  end
  object qrCobros: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'rec'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Select *  from PTCobro (nolock)'
      'Where refrecid = :rec'
      '    and TipoDoc = '#39'RI'#39)
    Left = 296
    Top = 288
    object qrCobrosCobroID: TStringField
      FieldName = 'CobroID'
      Size = 10
    end
    object qrCobrosTurnoID: TStringField
      FieldName = 'TurnoID'
      Size = 10
    end
    object qrCobrosEntradaID: TStringField
      FieldName = 'EntradaID'
    end
    object qrCobrosSucursalID: TStringField
      FieldName = 'SucursalID'
      Size = 10
    end
    object mon: TDateTimeField
      FieldName = 'Fecha'
    end
    object qrCobrosHora: TStringField
      FieldName = 'Hora'
      Size = 10
    end
    object qrCobrosPacienteID: TStringField
      FieldName = 'PacienteID'
      Size = 10
    end
    object qrCobrosPacientePrincipalID: TStringField
      FieldName = 'PacientePrincipalID'
      Size = 10
    end
    object qrCobrosUsuarioID: TStringField
      FieldName = 'UsuarioID'
      Size = 10
    end
    object qrCobrosTotalCobrado: TBCDField
      FieldName = 'TotalCobrado'
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
    object qrCobrosTotalFactura: TBCDField
      FieldName = 'TotalFactura'
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
    object qrCobrosTotalPagado: TBCDField
      FieldName = 'TotalPagado'
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
    object qrCobrosPendienteFactura: TBCDField
      FieldName = 'PendienteFactura'
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
    object qrCobrosPendienteCobro: TBCDField
      FieldName = 'PendienteCobro'
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
    object qrCobrosReciboNo: TStringField
      FieldName = 'ReciboNo'
    end
    object qrCobrosClienteID: TStringField
      FieldName = 'ClienteID'
      Size = 10
    end
    object qrCobrosAplicado: TBooleanField
      FieldName = 'Aplicado'
    end
    object qrCobrosMonedaID: TStringField
      FieldName = 'MonedaID'
      Size = 3
    end
    object qrCobrosTipoDoc: TStringField
      FieldName = 'TipoDoc'
      Size = 2
    end
    object qrCobrosConcepto: TStringField
      FieldName = 'Concepto'
      Size = 50
    end
    object qrCobrosCUADREGLOBAL: TStringField
      FieldName = 'CUADREGLOBAL'
    end
    object qrCobrosCUADREUSUARIO: TStringField
      FieldName = 'CUADREUSUARIO'
    end
    object qrCobrosSecuencia: TAutoIncField
      FieldName = 'Secuencia'
      ReadOnly = True
    end
    object qrCobrosSINPRFILTER: TIntegerField
      FieldName = 'SINPRFILTER'
    end
    object qrCobrosrefRecid: TLargeintField
      FieldName = 'refRecid'
    end
    object qrCobrosRecId: TLargeintField
      FieldName = 'RecId'
    end
  end
  object dsDatos: TDataSource
    DataSet = qrCobros
    Left = 428
    Top = 287
  end
  object qrFormaCobros: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    Left = 296
    Top = 224
  end
  object dsFormaCobros: TDataSource
    DataSet = qrFormaCobros
    Left = 428
    Top = 223
  end
  object qrASInternet: TADOQuery
    Connection = ASConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Usuario'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 10
        Size = 10
        Value = Null
      end
      item
        Name = 'Codigo'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 15
        Size = 15
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM INP01201'
      'WHERE (L16USU = :Usuario)'
      'AND (L16COD = :Codigo)')
    Left = 48
    Top = 230
    object qrASInternetL16USU: TStringField
      FieldName = 'L16USU'
      FixedChar = True
      Size = 10
    end
    object qrASInternetL16KEY: TStringField
      FieldName = 'L16KEY'
      FixedChar = True
      Size = 10
    end
    object qrASInternetL16NOM: TStringField
      FieldName = 'L16NOM'
      FixedChar = True
      Size = 50
    end
    object qrASInternetL16TIP: TStringField
      FieldName = 'L16TIP'
      FixedChar = True
      Size = 1
    end
    object qrASInternetL16COD: TStringField
      FieldName = 'L16COD'
      FixedChar = True
      Size = 15
    end
    object qrASInternetL16ACT: TStringField
      FieldName = 'L16ACT'
      FixedChar = True
      Size = 1
    end
    object qrASInternetL16MAI: TStringField
      FieldName = 'L16MAI'
      FixedChar = True
      Size = 50
    end
  end
  object qrSQLEncabezadoClinica: TADOQuery
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
      
        'SELECT    DISTINCT  RIGHT('#39'0000'#39' + LTRIM(STR(DATEPART(year, dbo.' +
        'PTEntradaPacienteClinica.Fecha))), 2) + '#39'0'#39' +'
      
        '                 SUBSTRING(dbo.PTEntradaPacienteClinica.MuestraN' +
        'o, 4, 2) +'
      
        '                 RIGHT(dbo.PTEntradaPacienteClinica.MuestraNo, 6' +
        ') AS Muestra,'
      
        '                 dbo.PTEntradaPacienteClinica.MuestraNo AS Muest' +
        'raNo,'
      '                 dbo.PTCliente.Nombre AS NombrePacienteFijo,'
      
        '                 dbo.PTCliente.CodigoIdAS400 AS CodigoAS400,    ' +
        '             '
      
        '                 ISNULL(SUBSTRING(dbo.PTEntradaPacienteClinica.H' +
        'oraEntrada, 1, 2) +'
      
        '                 SUBSTRING(dbo.PTEntradaPacienteClinica.HoraEntr' +
        'ada, 4, 2) +'
      
        '                 SUBSTRING(dbo.PTEntradaPacienteClinica.HoraEntr' +
        'ada, 7, 2), '#39'000000'#39') AS Hora,'
      
        '                 UPPER(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(d' +
        'bo.PTCliente.Direccion, '#39'-'#39', '#39#39'), '#39'('#39', '#39#39'), '#39')'#39', '#39#39'), '#39'/'#39', '#39#39'), ' +
        #39'\'#39', '#39#39')) AS DireccionFija,'
      
        '                 UPPER(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(d' +
        'bo.PTEntradaPacienteClinica.Direccion, '#39'-'#39', '#39#39'), '#39'('#39', '#39#39'), '#39')'#39', ' +
        #39#39'), '#39'/'#39', '#39#39'), '#39'\'#39', '#39#39')) AS Direccion,'
      
        '                 dbo.PTEntradaPacienteClinica.EdadPaciente AS Ed' +
        'adPaciente,'
      
        '                 DATEDIFF(year, dbo.PTCliente.FechaNacimiento, d' +
        'bo.PTEntradaPacienteClinica.Fecha) AS EdadCalculada,'
      
        '                 dbo.PTCliente.FechaNacimiento AS FechaNacimient' +
        'o,'
      
        '                 RIGHT('#39'00'#39' + LTRIM(STR(DATEPART(day, dbo.PTClie' +
        'nte.FechaNacimiento))), 2) +'
      
        '                 RIGHT('#39'00'#39' + LTRIM(STR(DATEPART(month, dbo.PTCl' +
        'iente.FechaNacimiento))), 2) +'
      
        '                 RIGHT('#39'0000'#39' + LTRIM(STR(DATEPART(year, dbo.PTC' +
        'liente.FechaNacimiento))), 4) AS FechaNacimientoTexto,'
      
        '                 REPLACE(REPLACE(REPLACE(ISNULL(dbo.PTCliente.Te' +
        'lefono, '#39'0'#39'), '#39'-'#39', '#39#39'), '#39'('#39', '#39#39'), '#39')'#39', '#39#39') AS Telefono,'
      
        '                 SUBSTRING(dbo.PTEntradaPacienteClinica.ClienteN' +
        'ombre, 1, 20) AS CategoriaClienteNombre,'
      
        '                 dbo.PTEntradaPacienteClinica.Fecha AS FechaEntr' +
        'ada,'
      
        '                 RIGHT('#39'00'#39' + LTRIM(STR(DATEPART(day, dbo.PTEntr' +
        'adaPacienteClinica.Fecha))), 2) +'
      
        '                 RIGHT('#39'00'#39' + LTRIM(STR(DATEPART(month, dbo.PTEn' +
        'tradaPacienteClinica.Fecha))), 2) +'
      
        '                 RIGHT('#39'0000'#39' + LTRIM(STR(DATEPART(year, dbo.PTE' +
        'ntradaPacienteClinica.Fecha))), 4) AS FechaEntradaTexto,'
      
        '                 dbo.PTEntradaPacienteClinica.UserID AS UserId, ' +
        'dbo.PTCliente.Sexo AS Sexo,'
      
        '                 REPLACE(ISNULL(dbo.PTCliente.Identificacion, '#39'0' +
        #39'), '#39'-'#39', '#39#39') AS Cedula,'
      
        '                 dbo.PTEntradaPacienteClinica.Sucursal AS Sucurs' +
        'al,'
      
        '                 dbo.PTEntradaPacienteClinica.SucursalId AS Sucu' +
        'rsalId,'
      '                 dbo.PTEntradaPacienteClinica.RecId AS RecId,'
      
        '                 dbo.PTEntradaPacienteClinica.NombrePaciente AS ' +
        'NombrePaciente,'
      
        '                 ISNULL(dbo.PTEntradaPacienteClinica.DoctorID, '#39 +
        '0'#39') AS DoctorId,'
      
        '                 LEFT(dbo.PTEntradaPacienteClinica.NombreDoctor,' +
        ' 40) AS DoctorNombre,'
      
        '                 REPLACE(dbo.PTEntradaPacienteClinica.ClienteId,' +
        ' '#39'-'#39', '#39#39') AS ClienteId,'
      '                 dbo.PTEntradaPacienteClinica.Neto AS Neto,'
      
        '                 dbo.PTEntradaPacienteClinica.Bruto AS Facturado' +
        ','
      
        '                 dbo.PTEntradaPacienteClinica.TotalPagado AS Pag' +
        'ado,'
      
        '                 dbo.PTEntradaPacienteClinica.DescuentoPorc AS D' +
        'escuentoPorc,'
      
        '                 dbo.PTEntradaPacienteClinica.CoberturaPorc AS C' +
        'oberturaPorc,'
      
        '                 dbo.PTEntradaPacienteClinica.CoberturaSeguro AS' +
        ' CoberturaSeguro,'
      
        '                 (dbo.PTEntradaPacienteClinica.Neto - dbo.PTEntr' +
        'adaPacienteClinica.TotalPagado) AS Resto,'
      
        '                 (dbo.PTEntradaPacienteClinica.Bruto - dbo.PTEnt' +
        'radaPacienteClinica.TotalPagado) AS RestoOld,'
      
        '                 dbo.PTEntradaPacienteClinica.ResultadoPaciente ' +
        'AS TipResPaciente,'
      
        '                 dbo.PTEntradaPacienteClinica.PublicarInternet A' +
        'S Internet,'
      
        '                 dbo.PTEntradaPacienteClinica.ResultadoDoctor AS' +
        ' TipResDoctor,'
      
        '                 dbo.PTEntradaPacienteClinica.PublicarInternetDo' +
        'ctor AS InternetDoctor,'
      
        '                 dbo.PTEntradaPacienteClinica.ResultadoCliente A' +
        'S TipResCliente,'
      
        '                 dbo.PTEntradaPacienteClinica.PublicarInternetCl' +
        'iente AS InternetCliente,'
      
        '                 LEFT(dbo.PTEntradaPacienteClinica.Nota, 50) AS ' +
        'Comentario,'
      
        '                 dbo.PTEntradaPacienteClinica.EnClinica AS EnCli' +
        'nica,'
      
        '                 dbo.PTEntradaPacienteClinica.NumeroInternet AS ' +
        'NumeroInternet,'
      
        '                 dbo.PTEntradaPacienteClinica.PolizaId AS Refere' +
        'nciaExterna,'
      
        '                 dbo.PTEntradaPacienteClinica.GastosVarios AS Ga' +
        'stoEnvio,'
      
        '                 dbo.PTEntradaPacienteClinica.MonedaId AS Moneda' +
        ','
      '                 dbo.PTEntradaPacienteClinica.Tasa AS Tasa,'
      
        '                 dbo.PTEntradaPacienteClinica.Estatus AS Estatus' +
        ','
      
        '                 convert(int,isnull(dbo.PTEntradaPacienteClinica' +
        '.Cod_Caso ,0)) AS Cod_Caso,'
      
        '                 dbo.PTEntradaPacienteClinica.Prioridad AS Prior' +
        'idad,'
      
        '                 Case When Convert(char(1),isnull(dbo.PTEntradaP' +
        'acienteClinica.CoberturaConfirmada,'#39'0'#39')) ='#39'1'#39' Then '#39'S'#39
      
        '                 When Convert(char(1),isnull(dbo.PTEntradaPacien' +
        'teClinica.CoberturaConfirmada,'#39'0'#39')) ='#39'0'#39' then '#39'N'#39' End As CConfir' +
        'mada,'
      'FROM       dbo.PTEntradaPacienteClinica (nolock) INNER JOIN'
      
        '                 dbo.PTCliente (nolock) ON dbo.PTEntradaPaciente' +
        'Clinica.PacienteID = dbo.PTCliente.ClienteID'
      'WHERE     dbo.PTEntradaPacienteClinica.MuestraNo = :MuestraNo'
      'And           dbo.PTEntradaPacienteClinica.DataAreaid='#39'ldr'#39)
    Left = 296
    Top = 156
    object qrSQLEncabezadoClinicaMuestra: TStringField
      FieldName = 'Muestra'
      ReadOnly = True
      Size = 11
    end
    object qrSQLEncabezadoClinicaMuestraNo: TStringField
      FieldName = 'MuestraNo'
    end
    object qrSQLEncabezadoClinicaHora: TStringField
      FieldName = 'Hora'
      ReadOnly = True
      Size = 6
    end
    object qrSQLEncabezadoClinicaDireccion: TStringField
      FieldName = 'Direccion'
      ReadOnly = True
      Size = 8000
    end
    object qrSQLEncabezadoClinicaDireccionFija: TStringField
      FieldName = 'DireccionFija'
      ReadOnly = True
      Size = 8000
    end
    object qrSQLEncabezadoClinicaEdadPaciente: TIntegerField
      FieldName = 'EdadPaciente'
    end
    object qrSQLEncabezadoClinicaEdadCalculada: TIntegerField
      FieldName = 'EdadCalculada'
      ReadOnly = True
    end
    object qrSQLEncabezadoClinicaFechaNacimiento: TDateTimeField
      FieldName = 'FechaNacimiento'
    end
    object qrSQLEncabezadoClinicaFechaNacimientoTexto: TStringField
      FieldName = 'FechaNacimientoTexto'
      ReadOnly = True
      Size = 8
    end
    object qrSQLEncabezadoClinicaTelefono: TStringField
      FieldName = 'Telefono'
      ReadOnly = True
      Size = 8000
    end
    object qrSQLEncabezadoClinicaCategoriaClienteNombre: TStringField
      FieldName = 'CategoriaClienteNombre'
      ReadOnly = True
    end
    object qrSQLEncabezadoClinicaFechaEntrada: TDateTimeField
      FieldName = 'FechaEntrada'
    end
    object qrSQLEncabezadoClinicaFechaEntradaTexto: TStringField
      FieldName = 'FechaEntradaTexto'
      ReadOnly = True
      Size = 8
    end
    object qrSQLEncabezadoClinicaUserId: TStringField
      FieldName = 'UserId'
      Size = 10
    end
    object qrSQLEncabezadoClinicaSexo: TIntegerField
      FieldName = 'Sexo'
    end
    object qrSQLEncabezadoClinicaCedula: TStringField
      FieldName = 'Cedula'
      ReadOnly = True
      Size = 8000
    end
    object qrSQLEncabezadoClinicaSucursal: TIntegerField
      FieldName = 'Sucursal'
    end
    object qrSQLEncabezadoClinicaSucursalId: TStringField
      FieldName = 'SucursalId'
      Size = 10
    end
    object qrSQLEncabezadoClinicaRecId: TIntegerField
      FieldName = 'RecId'
    end
    object qrSQLEncabezadoClinicaDoctorId: TStringField
      FieldName = 'DoctorId'
      ReadOnly = True
      Size = 10
    end
    object qrSQLEncabezadoClinicaDoctorNombre: TStringField
      FieldName = 'DoctorNombre'
      ReadOnly = True
      Size = 40
    end
    object qrSQLEncabezadoClinicaClienteId: TStringField
      FieldName = 'ClienteId'
      ReadOnly = True
      Size = 8000
    end
    object qrSQLEncabezadoClinicaNeto: TBCDField
      FieldName = 'Neto'
      Precision = 28
      Size = 12
    end
    object qrSQLEncabezadoClinicaFacturado: TBCDField
      FieldName = 'Facturado'
      Precision = 28
      Size = 12
    end
    object qrSQLEncabezadoClinicaPagado: TBCDField
      FieldName = 'Pagado'
      Precision = 28
      Size = 12
    end
    object qrSQLEncabezadoClinicaDescuentoPorc: TBCDField
      FieldName = 'DescuentoPorc'
      Precision = 28
      Size = 12
    end
    object qrSQLEncabezadoClinicaCoberturaPorc: TBCDField
      FieldName = 'CoberturaPorc'
      Precision = 28
      Size = 12
    end
    object qrSQLEncabezadoClinicaCoberturaSeguro: TBCDField
      FieldName = 'CoberturaSeguro'
      Precision = 28
      Size = 12
    end
    object qrSQLEncabezadoClinicaResto: TBCDField
      FieldName = 'Resto'
      ReadOnly = True
      Precision = 29
      Size = 12
    end
    object qrSQLEncabezadoClinicaRestoOld: TBCDField
      FieldName = 'RestoOld'
      ReadOnly = True
      Precision = 29
      Size = 12
    end
    object qrSQLEncabezadoClinicaTipResPaciente: TIntegerField
      FieldName = 'TipResPaciente'
    end
    object qrSQLEncabezadoClinicaInternet: TIntegerField
      FieldName = 'Internet'
    end
    object qrSQLEncabezadoClinicaTipResDoctor: TIntegerField
      FieldName = 'TipResDoctor'
    end
    object qrSQLEncabezadoClinicaInternetDoctor: TIntegerField
      FieldName = 'InternetDoctor'
    end
    object qrSQLEncabezadoClinicaTipResCliente: TIntegerField
      FieldName = 'TipResCliente'
    end
    object qrSQLEncabezadoClinicaInternetCliente: TIntegerField
      FieldName = 'InternetCliente'
    end
    object qrSQLEncabezadoClinicaComentario: TStringField
      FieldName = 'Comentario'
      ReadOnly = True
      Size = 50
    end
    object qrSQLEncabezadoClinicaEnClinica: TIntegerField
      FieldName = 'EnClinica'
    end
    object qrSQLEncabezadoClinicaNumeroInternet: TIntegerField
      FieldName = 'NumeroInternet'
    end
    object qrSQLEncabezadoClinicaReferenciaExterna: TStringField
      FieldName = 'ReferenciaExterna'
      Size = 80
    end
    object qrSQLEncabezadoClinicaNombrePacienteFijo: TStringField
      FieldName = 'NombrePacienteFijo'
      Size = 80
    end
    object qrSQLEncabezadoClinicaCodigoAS400: TStringField
      FieldName = 'CodigoAS400'
      Size = 10
    end
    object qrSQLEncabezadoClinicaNombrePaciente: TStringField
      FieldName = 'NombrePaciente'
      Size = 80
    end
    object qrSQLEncabezadoClinicaGastoEnvio: TBCDField
      FieldName = 'GastoEnvio'
      Precision = 28
      Size = 12
    end
    object qrSQLEncabezadoClinicaMoneda: TStringField
      FieldName = 'Moneda'
      Size = 3
    end
    object qrSQLEncabezadoClinicaTasa: TBCDField
      FieldName = 'Tasa'
      Precision = 28
      Size = 12
    end
    object qrSQLEncabezadoClinicaEstatus: TIntegerField
      FieldName = 'Estatus'
    end
    object qrSQLEncabezadoClinicaCod_Caso: TIntegerField
      FieldName = 'Cod_Caso'
      ReadOnly = True
    end
    object qrSQLEncabezadoClinicaPrioridad: TIntegerField
      FieldName = 'Prioridad'
    end
    object qrSQLEncabezadoClinicaCConfirmada: TStringField
      FieldName = 'CConfirmada'
      ReadOnly = True
      Size = 1
    end
  end
  object qrSQLDetalleClinica: TADOQuery
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
      
        'SELECT     DISTINCT RIGHT('#39'0000'#39' + LTRIM(STR(DATEPART(year, dbo.' +
        'PTEntradaPacienteClinica.Fecha))), 2) + '#39'0'#39' +'
      ' '#9' SUBSTRING(dbo.PTEntradaPacienteClinica.MuestraNo, 4, 2) +'
      
        '                 RIGHT(dbo.PTEntradaPacienteClinica.MuestraNo, 6' +
        ') AS Muestra,'
      
        '                 dbo.PTEntradaPacienteDetalleClinica.MuestraNo A' +
        'S MuestraNo,'
      
        '                 REPLACE(dbo.PTEntradaPacienteDetalleClinica.Pru' +
        'ebaID, '#39'-'#39', '#39#39') AS PruebaId,'
      
        '                 ISNULL(dbo.PTPrueba.CodigoIdAS400, '#39'0'#39') AS Codi' +
        'goAS400,'
      #9'SUBSTRING(dbo.PTPrueba.Descripcion, 1, 40) As NombrePrueba,'
      
        '                 dbo.PTEntradaPacienteDetalleClinica.Estatus AS ' +
        'StatusPrueba,'
      '                 Case dbo.PTPrueba.Departamento When '#39#39' then '#39'0'#39
      
        '                                                When null then '#39 +
        '0'#39
      
        '                  else ISNULL(dbo.PTPrueba.Departamento, '#39'0'#39') En' +
        'd As Departamento,'
      '                 Case dbo.PTPrueba.DepID When '#39#39' then '#39'0'#39
      
        '                                                When null then '#39 +
        '0'#39
      
        '                  else ISNULL(dbo.PTPrueba.DepID, '#39'0'#39') End As De' +
        'ptoId,'
      
        '                 dbo.PTEntradaPacienteClinica.Fecha AS FechaEntr' +
        'ada,'
      
        '                 RIGHT('#39'00'#39' + LTRIM(STR(DATEPART(day, dbo.PTEntr' +
        'adaPacienteClinica.Fecha))), 2) +'
      
        '                 RIGHT('#39'00'#39' + LTRIM(STR(DATEPART(month, dbo.PTEn' +
        'tradaPacienteClinica.Fecha))), 2) +'
      
        '                 RIGHT('#39'0000'#39' + LTRIM(STR(DATEPART(year, dbo.PTE' +
        'ntradaPacienteClinica.Fecha))), 4) AS FechaEntradaTexto,'
      
        '                 SUBSTRING(dbo.PTEntradaPacienteClinica.HoraEntr' +
        'ada, 1, 2) +'
      
        '                 SUBSTRING(dbo.PTEntradaPacienteClinica.HoraEntr' +
        'ada, 4, 2) +'
      
        '                 SUBSTRING(dbo.PTEntradaPacienteClinica.HoraEntr' +
        'ada, 7, 2) AS Hora,'
      
        '                 (dbo.PTEntradaPacienteDetalleClinica.Precio + d' +
        'bo.PTEntradaPacienteDetalleClinica.Adicional -'
      
        '                  dbo.PTEntradaPacienteDetalleClinica.DescuentoL' +
        'ineaAplicado) AS Valor,'
      
        '                 (dbo.PTEntradaPacienteDetalleClinica.Precio + d' +
        'bo.PTEntradaPacienteDetalleClinica.Adicional - '
      
        '                  dbo.PTEntradaPacienteDetalleClinica.DescuentoL' +
        'ineaAplicado - dbo.PTEntradaPacienteDetalleClinica.CoberturaApli' +
        'cada) AS ValSinCob,'
      
        '                 (dbo.PTEntradaPacienteDetalleClinica.Precio + d' +
        'bo.PTEntradaPacienteDetalleClinica.Adicional) AS PrecioBruto,'
      '                 dbo.PTEntradaPacienteClinica.UserID AS UserId,'
      
        '                 dbo.PTEntradaPacienteDetalleClinica.Comentario ' +
        'AS Comentario,'
      
        '                 dbo.PTEntradaPacienteDetalleClinica.ComentarioM' +
        'uestra AS ComentarioMuestra,'
      
        '                 dbo.PTEntradaPacienteDetalleClinica.RepMuestra ' +
        'AS Peticion2RepMuestra,'
      
        '                 dbo.PTEntradaPacienteDetalleClinica.CoberturaAp' +
        'lica AS PruebaAsegurada,'
      
        '                 ISNULL(dbo.PTEntradaPacienteDetalleClinica.Mues' +
        'traAnt, '#39'0'#39') AS NumeroMuestraAnterior,'
      
        '                 dbo.PTEntradaPacienteDetalleClinica.TipoPrueba ' +
        'AS TipoPrueba,'
      
        '                 ISNULL(dbo.PTPrueba.TipoAS400, '#39#39') AS TipoAS400' +
        ','
      '                 dbo.PTPrueba.TipoMuestra AS TipoMuestra,'
      '                 dbo.PTPrueba.GrupoPruebaId as GrupoPruebaID'
      
        'FROM       dbo.PTEntradaPacienteDetalleClinica (nolock) INNER JO' +
        'IN'
      
        '                 dbo.PTPrueba (nolock) ON dbo.PTEntradaPacienteD' +
        'etalleClinica.PruebaID = dbo.PTPrueba.PruebaID INNER JOIN'
      
        '                 dbo.PTEntradaPacienteClinica (nolock) ON dbo.PT' +
        'EntradaPacienteDetalleClinica.MuestraNo = dbo.PTEntradaPacienteC' +
        'linica.MuestraNo'
      
        'WHERE     dbo.PTEntradaPacienteDetalleClinica.MuestraNo = :Muest' +
        'raNo'
      
        'AND       (dbo.PTPrueba.GrupoPruebaId = '#39'PRU'#39' Or dbo.PTPrueba.Gr' +
        'upoPruebaId = '#39'COM'#39')'
      'AND       (dbo.PTPrueba.Tipo = '#39'P'#39' Or dbo.PTPrueba.Tipo = '#39'C'#39')'
      '')
    Left = 424
    Top = 156
    object qrSQLDetalleClinicaMuestra: TStringField
      FieldName = 'Muestra'
      ReadOnly = True
      Size = 11
    end
    object qrSQLDetalleClinicaMuestraNo: TStringField
      FieldName = 'MuestraNo'
    end
    object qrSQLDetalleClinicaPruebaId: TStringField
      FieldName = 'PruebaId'
      ReadOnly = True
      Size = 8000
    end
    object qrSQLDetalleClinicaCodigoAS400: TStringField
      FieldName = 'CodigoAS400'
      ReadOnly = True
    end
    object qrSQLDetalleClinicaNombrePrueba: TStringField
      FieldName = 'NombrePrueba'
      ReadOnly = True
      Size = 40
    end
    object qrSQLDetalleClinicaStatusPrueba: TStringField
      FieldName = 'StatusPrueba'
      Size = 2
    end
    object qrSQLDetalleClinicaDepartamento: TStringField
      FieldName = 'Departamento'
      ReadOnly = True
      Size = 10
    end
    object qrSQLDetalleClinicaDeptoId: TStringField
      FieldName = 'DeptoId'
      ReadOnly = True
      Size = 10
    end
    object qrSQLDetalleClinicaFechaEntrada: TDateTimeField
      FieldName = 'FechaEntrada'
    end
    object qrSQLDetalleClinicaFechaEntradaTexto: TStringField
      FieldName = 'FechaEntradaTexto'
      ReadOnly = True
      Size = 8
    end
    object qrSQLDetalleClinicaHora: TStringField
      FieldName = 'Hora'
      ReadOnly = True
      Size = 6
    end
    object qrSQLDetalleClinicaValor: TBCDField
      FieldName = 'Valor'
      ReadOnly = True
      Precision = 30
      Size = 12
    end
    object qrSQLDetalleClinicaValSinCob: TBCDField
      FieldName = 'ValSinCob'
      ReadOnly = True
      Precision = 31
      Size = 12
    end
    object qrSQLDetalleClinicaPrecioBruto: TBCDField
      FieldName = 'PrecioBruto'
      Precision = 28
      Size = 12
    end
    object qrSQLDetalleClinicaUserId: TStringField
      FieldName = 'UserId'
      Size = 10
    end
    object qrSQLDetalleClinicaComentario: TStringField
      FieldName = 'Comentario'
      Size = 255
    end
    object qrSQLDetalleClinicaComentarioMuestra: TStringField
      FieldName = 'ComentarioMuestra'
      Size = 255
    end
    object qrSQLDetalleClinicaPeticion2RepMuestra: TIntegerField
      FieldName = 'Peticion2RepMuestra'
    end
    object qrSQLDetalleClinicaNumeroMuestraAnterior: TStringField
      FieldName = 'NumeroMuestraAnterior'
      ReadOnly = True
    end
    object qrSQLDetalleClinicaTipoPrueba: TStringField
      FieldName = 'TipoPrueba'
      Size = 5
    end
    object qrSQLDetalleClinicaTipoAS400: TStringField
      FieldName = 'TipoAS400'
      ReadOnly = True
      Size = 2
    end
    object qrSQLDetalleClinicaTipoMuestra: TStringField
      FieldName = 'TipoMuestra'
      Size = 10
    end
    object qrSQLDetalleClinicaPruebaAsegurada: TIntegerField
      FieldName = 'PruebaAsegurada'
    end
    object qrSQLDetalleClinicaGrupoPruebaID: TStringField
      FieldName = 'GrupoPruebaID'
      Size = 10
    end
  end
  object qrNoReactivo: TADOQuery
    Connection = ASConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Codigo'
        Attributes = [paNullable]
        DataType = ftBCD
        Precision = 4
        Size = 19
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM INP00501 '
      'WHERE (IN5COD = :Codigo)')
    Left = 48
    Top = 285
    object qrNoReactivoIN5COD: TIntegerField
      FieldName = 'IN5COD'
    end
    object qrNoReactivoIN5NOM: TStringField
      FieldName = 'IN5NOM'
      Size = 50
    end
    object qrNoReactivoIN5MG1: TStringField
      FieldName = 'IN5MG1'
      Size = 50
    end
    object qrNoReactivoIN5MG2: TStringField
      FieldName = 'IN5MG2'
      FixedChar = True
      Size = 50
    end
  end
  object qrASBuscaCedula: TADOQuery
    Connection = ASConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Cedula'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 15
        Size = 15
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM INP01201 '
      'WHERE (L16COD = :Cedula)')
    Left = 48
    Top = 347
    object qrASBuscaCedulaL16USU: TStringField
      FieldName = 'L16USU'
      FixedChar = True
      Size = 10
    end
    object qrASBuscaCedulaL16KEY: TStringField
      FieldName = 'L16KEY'
      FixedChar = True
      Size = 10
    end
    object qrASBuscaCedulaL16NOM: TStringField
      FieldName = 'L16NOM'
      FixedChar = True
      Size = 50
    end
    object qrASBuscaCedulaL16TIP: TStringField
      FieldName = 'L16TIP'
      FixedChar = True
      Size = 1
    end
    object qrASBuscaCedulaL16COD: TStringField
      FieldName = 'L16COD'
      FixedChar = True
      Size = 15
    end
    object qrASBuscaCedulaL16ACT: TStringField
      FieldName = 'L16ACT'
      FixedChar = True
      Size = 1
    end
    object qrASBuscaCedulaL16MAI: TStringField
      FieldName = 'L16MAI'
      FixedChar = True
      Size = 50
    end
  end
  object qrASBuscaUsuario: TADOQuery
    Connection = ASConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Usuario'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 10
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM INP01201 '
      'WHERE (L16USU = :Usuario)')
    Left = 148
    Top = 347
    object qrASBuscaUsuarioL16USU: TStringField
      FieldName = 'L16USU'
      FixedChar = True
      Size = 10
    end
    object qrASBuscaUsuarioL16KEY: TStringField
      FieldName = 'L16KEY'
      FixedChar = True
      Size = 10
    end
    object qrASBuscaUsuarioL16NOM: TStringField
      FieldName = 'L16NOM'
      FixedChar = True
      Size = 50
    end
    object qrASBuscaUsuarioL16TIP: TStringField
      FieldName = 'L16TIP'
      FixedChar = True
      Size = 1
    end
    object qrASBuscaUsuarioL16COD: TStringField
      FieldName = 'L16COD'
      FixedChar = True
      Size = 15
    end
    object qrASBuscaUsuarioL16ACT: TStringField
      FieldName = 'L16ACT'
      FixedChar = True
      Size = 1
    end
    object qrASBuscaUsuarioL16MAI: TStringField
      FieldName = 'L16MAI'
      FixedChar = True
      Size = 50
    end
  end
  object qrPagosAs400: TADOQuery
    Connection = ASConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM INP01401'
      'WHERE (IN14AC <> '#39'R'#39')'
      'ORDER BY IN14FE, IN14SU, IN14MU')
    Left = 150
    Top = 102
    object qrPagosAs400IN14MU: TBCDField
      FieldName = 'IN14MU'
      Precision = 11
      Size = 0
    end
    object qrPagosAs400IN14NU: TBCDField
      FieldName = 'IN14NU'
      Precision = 11
      Size = 0
    end
    object qrPagosAs400IN14FE: TIntegerField
      FieldName = 'IN14FE'
    end
    object qrPagosAs400IN14HO: TIntegerField
      FieldName = 'IN14HO'
    end
    object qrPagosAs400IN14ID: TStringField
      FieldName = 'IN14ID'
      FixedChar = True
      Size = 10
    end
    object qrPagosAs400IN14EF: TBCDField
      FieldName = 'IN14EF'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 11
      Size = 2
    end
    object qrPagosAs400IN14TA: TBCDField
      FieldName = 'IN14TA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 11
      Size = 2
    end
    object qrPagosAs400IN14SU: TIntegerField
      FieldName = 'IN14SU'
    end
    object qrPagosAs400IN14AC: TStringField
      FieldName = 'IN14AC'
      FixedChar = True
      Size = 1
    end
  end
  object qrAS400Pruebas: TADOQuery
    Connection = ASConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Muestra'
        Attributes = [paNullable]
        DataType = ftBCD
        Precision = 11
        Size = 19
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM INP01601'
      'WHERE (IN6MUE = :Muestra)'
      'ORDER BY IN6MUE, IN6COD')
    Left = 528
    Top = 90
    object qrAS400PruebasIN6MUE: TBCDField
      FieldName = 'IN6MUE'
      Precision = 11
      Size = 0
    end
    object qrAS400PruebasIN6COD: TIntegerField
      FieldName = 'IN6COD'
    end
    object qrAS400PruebasIN6NOM: TStringField
      FieldName = 'IN6NOM'
      FixedChar = True
      Size = 50
    end
    object qrAS400PruebasIN6STS: TStringField
      FieldName = 'IN6STS'
      FixedChar = True
      Size = 1
    end
    object qrAS400PruebasIN6DEP: TIntegerField
      FieldName = 'IN6DEP'
    end
    object qrAS400PruebasIN6FEC: TIntegerField
      FieldName = 'IN6FEC'
    end
    object qrAS400PruebasIN6HOR: TIntegerField
      FieldName = 'IN6HOR'
    end
    object qrAS400PruebasIN6USU: TStringField
      FieldName = 'IN6USU'
      FixedChar = True
      Size = 10
    end
    object qrAS400PruebasIN6COM: TStringField
      FieldName = 'IN6COM'
      FixedChar = True
      Size = 100
    end
    object qrAS400PruebasIN6PET: TIntegerField
      FieldName = 'IN6PET'
    end
    object qrAS400PruebasIN6ANT: TBCDField
      FieldName = 'IN6ANT'
      Precision = 11
      Size = 0
    end
    object qrAS400PruebasIN6VAL: TBCDField
      FieldName = 'IN6VAL'
      Precision = 11
      Size = 2
    end
    object qrAS400PruebasIN6TIP: TStringField
      FieldName = 'IN6TIP'
      FixedChar = True
      Size = 1
    end
    object qrAS400PruebasIN6ACT: TStringField
      FieldName = 'IN6ACT'
      FixedChar = True
      Size = 1
    end
    object qrAS400PruebasIN6GRU: TStringField
      FieldName = 'IN6GRU'
      FixedChar = True
      Size = 3
    end
    object qrAS400PruebasIN6FAT: TStringField
      FieldName = 'IN6FAT'
      FixedChar = True
      Size = 12
    end
    object qrAS400PruebasIN6SEG: TBCDField
      FieldName = 'IN6SEG'
      Precision = 11
      Size = 2
    end
  end
  object qrAS400Entradas: TADOQuery
    Connection = ASConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM INP01501'
      'WHERE (IN5ACT <> '#39'S'#39')'
      'ORDER BY IN5MUE')
    Left = 528
    Top = 23
    object qrAS400EntradasIN5MUE: TBCDField
      FieldName = 'IN5MUE'
      Precision = 11
      Size = 0
    end
    object qrAS400EntradasIN5NOM: TStringField
      FieldName = 'IN5NOM'
      FixedChar = True
      Size = 40
    end
    object qrAS400EntradasIN5HOR: TIntegerField
      FieldName = 'IN5HOR'
    end
    object qrAS400EntradasIN5DIR: TStringField
      FieldName = 'IN5DIR'
      FixedChar = True
      Size = 40
    end
    object qrAS400EntradasIN5EDA: TIntegerField
      FieldName = 'IN5EDA'
    end
    object qrAS400EntradasIN5NAC: TIntegerField
      FieldName = 'IN5NAC'
    end
    object qrAS400EntradasIN5TEL: TStringField
      FieldName = 'IN5TEL'
      FixedChar = True
      Size = 10
    end
    object qrAS400EntradasIN5CAT: TStringField
      FieldName = 'IN5CAT'
      FixedChar = True
    end
    object qrAS400EntradasIN5FEC: TIntegerField
      FieldName = 'IN5FEC'
    end
    object qrAS400EntradasIN5USU: TStringField
      FieldName = 'IN5USU'
      FixedChar = True
      Size = 10
    end
    object qrAS400EntradasIN5SEX: TStringField
      FieldName = 'IN5SEX'
      FixedChar = True
      Size = 1
    end
    object qrAS400EntradasIN5CED: TBCDField
      FieldName = 'IN5CED'
      Precision = 12
      Size = 0
    end
    object qrAS400EntradasIN5SUC: TIntegerField
      FieldName = 'IN5SUC'
    end
    object qrAS400EntradasIN5CDO: TIntegerField
      FieldName = 'IN5CDO'
    end
    object qrAS400EntradasIN5DOC: TStringField
      FieldName = 'IN5DOC'
      FixedChar = True
      Size = 40
    end
    object qrAS400EntradasIN5CLI: TBCDField
      FieldName = 'IN5CLI'
      Precision = 10
      Size = 0
    end
    object qrAS400EntradasIN5FAC: TBCDField
      FieldName = 'IN5FAC'
      Precision = 11
      Size = 2
    end
    object qrAS400EntradasIN5PAG: TBCDField
      FieldName = 'IN5PAG'
      Precision = 11
      Size = 2
    end
    object qrAS400EntradasIN5RES: TBCDField
      FieldName = 'IN5RES'
      Precision = 11
      Size = 2
    end
    object qrAS400EntradasIN5EPA: TIntegerField
      FieldName = 'IN5EPA'
    end
    object qrAS400EntradasIN5IPA: TIntegerField
      FieldName = 'IN5IPA'
    end
    object qrAS400EntradasIN5EDO: TIntegerField
      FieldName = 'IN5EDO'
    end
    object qrAS400EntradasIN5IDO: TIntegerField
      FieldName = 'IN5IDO'
    end
    object qrAS400EntradasIN5RCL: TIntegerField
      FieldName = 'IN5RCL'
    end
    object qrAS400EntradasIN5ICL: TIntegerField
      FieldName = 'IN5ICL'
    end
    object qrAS400EntradasIN5COM: TStringField
      FieldName = 'IN5COM'
      FixedChar = True
      Size = 50
    end
    object qrAS400EntradasIN5ABR: TIntegerField
      FieldName = 'IN5ABR'
    end
    object qrAS400EntradasIN5REL: TBCDField
      FieldName = 'IN5REL'
      Precision = 11
      Size = 0
    end
    object qrAS400EntradasIN5REF: TStringField
      FieldName = 'IN5REF'
      FixedChar = True
    end
    object qrAS400EntradasIN5ACT: TStringField
      FieldName = 'IN5ACT'
      FixedChar = True
      Size = 1
    end
    object qrAS400EntradasIN5TAS: TBCDField
      FieldName = 'IN5TAS'
      Precision = 5
      Size = 2
    end
    object qrAS400EntradasIN5FPA: TBCDField
      FieldName = 'IN5FPA'
      Precision = 11
      Size = 2
    end
    object qrAS400EntradasIN5POL: TStringField
      FieldName = 'IN5POL'
      FixedChar = True
      Size = 25
    end
    object qrAS400EntradasIN5TAR: TBCDField
      FieldName = 'IN5TAR'
      Precision = 11
      Size = 2
    end
    object qrAS400EntradasIN5MON: TIntegerField
      FieldName = 'IN5MON'
    end
    object qrAS400EntradasIN5CAM: TBCDField
      FieldName = 'IN5CAM'
      Precision = 7
      Size = 2
    end
    object qrAS400EntradasIN5ENV: TBCDField
      FieldName = 'IN5ENV'
      Precision = 11
      Size = 2
    end
    object qrAS400EntradasIN5SEG: TBCDField
      FieldName = 'IN5SEG'
      Precision = 11
      Size = 2
    end
    object qrAS400EntradasIN5NRE: TIntegerField
      FieldName = 'IN5NRE'
    end
    object qrAS400EntradasIN5URG: TIntegerField
      FieldName = 'IN5URG'
    end
    object qrAS400EntradasIN5FAT: TStringField
      FieldName = 'IN5FAT'
      FixedChar = True
      Size = 12
    end
    object qrAS400EntradasIN5LAB: TBCDField
      FieldName = 'IN5LAB'
      Precision = 11
      Size = 0
    end
    object qrAS400EntradasIN5APR: TBCDField
      FieldName = 'IN5APR'
      Precision = 15
      Size = 0
    end
    object qrAS400EntradasIN5FEA: TIntegerField
      FieldName = 'IN5FEA'
    end
    object qrAS400EntradasIN5PER: TStringField
      FieldName = 'IN5PER'
      FixedChar = True
    end
    object qrAS400EntradasIN5CCO: TStringField
      FieldName = 'IN5CCO'
      FixedChar = True
      Size = 1
    end
    object qrAS400EntradasIN5CLC: TBCDField
      FieldName = 'IN5CLC'
      Precision = 10
      Size = 0
    end
    object qrAS400EntradasIN5CNA: TIntegerField
      FieldName = 'IN5CNA'
    end
    object qrAS400EntradasIN5NAD: TStringField
      FieldName = 'IN5NAD'
      FixedChar = True
    end
    object qrAS400EntradasIN5EMB: TStringField
      FieldName = 'IN5EMB'
      FixedChar = True
      Size = 1
    end
  end
  object qrAS400Pagos: TADOQuery
    Connection = ASConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM INP01701'
      'WHERE (IN17AC <> '#39'S'#39')'
      'ORDER BY IN17FE, IN17SU, IN17MU')
    Left = 528
    Top = 166
    object qrAS400PagosIN17MU: TBCDField
      FieldName = 'IN17MU'
      Precision = 11
      Size = 0
    end
    object qrAS400PagosIN17NU: TBCDField
      FieldName = 'IN17NU'
      Precision = 11
      Size = 0
    end
    object qrAS400PagosIN17FE: TIntegerField
      FieldName = 'IN17FE'
    end
    object qrAS400PagosIN17HO: TIntegerField
      FieldName = 'IN17HO'
    end
    object qrAS400PagosIN17ID: TStringField
      FieldName = 'IN17ID'
      FixedChar = True
      Size = 10
    end
    object qrAS400PagosIN17EF: TBCDField
      FieldName = 'IN17EF'
      Precision = 11
      Size = 2
    end
    object qrAS400PagosIN17TA: TBCDField
      FieldName = 'IN17TA'
      Precision = 11
      Size = 2
    end
    object qrAS400PagosIN17SU: TIntegerField
      FieldName = 'IN17SU'
    end
    object qrAS400PagosIN17AC: TStringField
      FieldName = 'IN17AC'
      FixedChar = True
      Size = 1
    end
    object qrAS400PagosIN17FA: TStringField
      FieldName = 'IN17FA'
      FixedChar = True
      Size = 12
    end
    object qrAS400PagosIN17RE: TStringField
      FieldName = 'IN17RE'
      FixedChar = True
      Size = 12
    end
  end
  object DsqrAS400Pruebas: TDataSource
    DataSet = qrAS400Pruebas
    Left = 628
    Top = 90
  end
  object DsqrAS400Entradas: TDataSource
    DataSet = qrAS400Entradas
    Left = 628
    Top = 23
  end
  object DsqrAS400Pagos: TDataSource
    DataSet = qrAS400Pagos
    Left = 612
    Top = 166
  end
  object dsBadPhone: TDataSource
    DataSet = qrASBadPhone
    Left = 620
    Top = 222
  end
  object qrASBadPhone: TADOQuery
    Connection = ASConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM INP06001')
    Left = 528
    Top = 222
    object qrASBadPhoneIN6NUM: TBCDField
      FieldName = 'IN6NUM'
      Precision = 11
      Size = 0
    end
    object qrASBadPhoneIN6ACT: TStringField
      FieldName = 'IN6ACT'
      FixedChar = True
      Size = 1
    end
    object qrASBadPhoneIN6TEL: TBCDField
      FieldName = 'IN6TEL'
      Precision = 10
      Size = 0
    end
  end
  object qrAsToma: TADOQuery
    Connection = ASConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Muestra'
        Attributes = [paNullable]
        DataType = ftBCD
        Precision = 11
        Size = 19
        Value = Null
      end>
    SQL.Strings = (
      'SELECT LA10NU,LA10U1 FROM LALIB.LAP01001'
      'WHERE (LA10NU=:Muestra)')
    Left = 528
    Top = 286
    object qrAsTomaLA10NU: TBCDField
      FieldName = 'LA10NU'
      Precision = 11
      Size = 0
    end
    object qrAsTomaLA10U1: TStringField
      FieldName = 'LA10U1'
      Size = 10
    end
  end
  object dsToma: TDataSource
    DataSet = qrAsToma
    Left = 612
    Top = 286
  end
  object qrAsResultado: TADOQuery
    Connection = ASConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ANO'
        Attributes = [paNullable]
        DataType = ftBCD
        Size = 2
        Value = Null
      end
      item
        Name = 'NUMLAB'
        Attributes = [paNullable]
        DataType = ftBCD
        Size = 9
        Value = Null
      end
      item
        Name = 'PRUEBAID'
        Attributes = [paNullable]
        DataType = ftBCD
        Size = 8
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *  FROM LALIB.RESUL'
      'WHERE (ANO=:ANO) AND'
      '(NUMLAB=:NUMLAB) AND '
      '(RCODPRU=:PRUEBAID) '
      ' FETCH FIRST 1 ROWS ONLY')
    Left = 528
    Top = 342
    object qrAsResultadoANO: TIntegerField
      FieldName = 'ANO'
    end
    object qrAsResultadoNUMLAB: TIntegerField
      FieldName = 'NUMLAB'
    end
    object qrAsResultadoDEPTO: TIntegerField
      FieldName = 'DEPTO'
    end
    object qrAsResultadoPRUEBA: TStringField
      FieldName = 'PRUEBA'
      FixedChar = True
      Size = 50
    end
    object qrAsResultadoSECDEP: TIntegerField
      FieldName = 'SECDEP'
    end
    object qrAsResultadoFILLE1: TStringField
      FieldName = 'FILLE1'
      FixedChar = True
      Size = 1
    end
    object qrAsResultadoHORA: TIntegerField
      FieldName = 'HORA'
    end
    object qrAsResultadoFILLE2: TStringField
      FieldName = 'FILLE2'
      FixedChar = True
      Size = 2
    end
    object qrAsResultadoRESULT: TStringField
      FieldName = 'RESULT'
      FixedChar = True
      Size = 15
    end
    object qrAsResultadoNOTA: TStringField
      FieldName = 'NOTA'
      FixedChar = True
      Size = 50
    end
    object qrAsResultadoCODLIB: TIntegerField
      FieldName = 'CODLIB'
    end
    object qrAsResultadoTERMI: TIntegerField
      FieldName = 'TERMI'
    end
    object qrAsResultadoFECENT: TIntegerField
      FieldName = 'FECENT'
    end
    object qrAsResultadoUSUARI: TStringField
      FieldName = 'USUARI'
      FixedChar = True
      Size = 8
    end
    object qrAsResultadoNOTA2: TStringField
      FieldName = 'NOTA2'
      FixedChar = True
      Size = 40
    end
    object qrAsResultadoRANGO: TStringField
      FieldName = 'RANGO'
      FixedChar = True
      Size = 2
    end
    object qrAsResultadoCODDEP: TIntegerField
      FieldName = 'CODDEP'
    end
    object qrAsResultadoMARCA: TStringField
      FieldName = 'MARCA'
      FixedChar = True
      Size = 1
    end
    object qrAsResultadoRANO: TIntegerField
      FieldName = 'RANO'
    end
    object qrAsResultadoRVALNO: TStringField
      FieldName = 'RVALNO'
      FixedChar = True
      Size = 15
    end
    object qrAsResultadoRMETOD: TStringField
      FieldName = 'RMETOD'
      FixedChar = True
      Size = 15
    end
    object qrAsResultadoRUNIDA: TStringField
      FieldName = 'RUNIDA'
      FixedChar = True
      Size = 10
    end
    object qrAsResultadoRPC: TStringField
      FieldName = 'RPC'
      FixedChar = True
      Size = 10
    end
    object qrAsResultadoRCODPRU: TIntegerField
      FieldName = 'RCODPRU'
    end
  end
  object dsResultado: TDataSource
    DataSet = qrAsResultado
    Left = 612
    Top = 342
  end
  object qrAsPruebaResultado: TADOQuery
    Connection = ASConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ANO'
        Attributes = [paNullable]
        DataType = ftBCD
        Precision = 2
        Size = 19
        Value = Null
      end
      item
        Name = 'NUMLAB'
        Attributes = [paNullable]
        DataType = ftBCD
        Precision = 9
        Size = 19
        Value = Null
      end>
    SQL.Strings = (
      'SELECT DISTINCT ANO,NUMLAB,DEPTO,PRUEBA,RCODPRU '
      ' FROM LALIB.RESUL'
      'WHERE (ANO=:ANO) AND (NUMLAB=:NUMLAB)')
    Left = 712
    Top = 272
    object qrAsPruebaResultadoANO: TIntegerField
      FieldName = 'ANO'
    end
    object qrAsPruebaResultadoNUMLAB: TIntegerField
      FieldName = 'NUMLAB'
    end
    object qrAsPruebaResultadoDEPTO: TIntegerField
      FieldName = 'DEPTO'
    end
    object qrAsPruebaResultadoPRUEBA: TStringField
      FieldName = 'PRUEBA'
      FixedChar = True
      Size = 50
    end
    object qrAsPruebaResultadoRCODPRU: TIntegerField
      FieldName = 'RCODPRU'
    end
  end
  object dsPruebaResultado: TDataSource
    DataSet = qrAsPruebaResultado
    Left = 812
    Top = 342
  end
  object qrAsPruebaResHPV: TADOQuery
    Connection = ASConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ANO'
        Attributes = [paNullable]
        DataType = ftBCD
        Precision = 2
        Size = 19
        Value = Null
      end
      item
        Name = 'NUMLAB'
        Attributes = [paNullable]
        DataType = ftBCD
        Precision = 9
        Size = 19
        Value = Null
      end>
    SQL.Strings = (
      'SELECT DISTINCT ANO,NUMLAB '
      ' FROM LALIB.RESUL'
      'WHERE (ANO=:ANO) AND (NUMLAB=:NUMLAB)')
    Left = 712
    Top = 344
    object qrAsPruebaResHPVANO: TIntegerField
      FieldName = 'ANO'
    end
    object qrAsPruebaResHPVNUMLAB: TIntegerField
      FieldName = 'NUMLAB'
    end
  end
  object ADOQuery1: TADOQuery
    Connection = ASConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM INP00201'
      '')
    Left = 288
    Top = 351
    object ADOQuery1INCLIE: TIntegerField
      FieldName = 'INCLIE'
    end
    object ADOQuery1INNOMB: TStringField
      FieldName = 'INNOMB'
      FixedChar = True
      Size = 50
    end
    object ADOQuery1INDIRE: TStringField
      FieldName = 'INDIRE'
      FixedChar = True
      Size = 50
    end
    object ADOQuery1INCIUD: TStringField
      FieldName = 'INCIUD'
      FixedChar = True
      Size = 25
    end
    object ADOQuery1INRNC: TBCDField
      FieldName = 'INRNC'
      Precision = 11
      Size = 0
    end
    object ADOQuery1INTEL1: TBCDField
      FieldName = 'INTEL1'
      Precision = 10
      Size = 0
    end
    object ADOQuery1INTEL2: TBCDField
      FieldName = 'INTEL2'
      Precision = 10
      Size = 0
    end
    object ADOQuery1INCONT: TStringField
      FieldName = 'INCONT'
      FixedChar = True
      Size = 30
    end
    object ADOQuery1INSTAT: TIntegerField
      FieldName = 'INSTAT'
    end
    object ADOQuery1INTIPO: TIntegerField
      FieldName = 'INTIPO'
    end
    object ADOQuery1INCOBE: TStringField
      FieldName = 'INCOBE'
      FixedChar = True
      Size = 1
    end
    object ADOQuery1INCLAS: TStringField
      FieldName = 'INCLAS'
      FixedChar = True
      Size = 1
    end
    object ADOQuery1INMONE: TIntegerField
      FieldName = 'INMONE'
    end
    object ADOQuery1ININTE: TIntegerField
      FieldName = 'ININTE'
    end
    object ADOQuery1INCODE: TBCDField
      FieldName = 'INCODE'
      Precision = 4
      Size = 2
    end
    object ADOQuery1INFEUL: TIntegerField
      FieldName = 'INFEUL'
    end
    object ADOQuery1INFEAC: TIntegerField
      FieldName = 'INFEAC'
    end
    object ADOQuery1INBCEA: TBCDField
      FieldName = 'INBCEA'
      Precision = 11
      Size = 2
    end
    object ADOQuery1INBCET: TBCDField
      FieldName = 'INBCET'
      Precision = 11
      Size = 2
    end
    object ADOQuery1INANUS: TBCDField
      FieldName = 'INANUS'
      Precision = 11
      Size = 2
    end
    object ADOQuery1INACUS: TBCDField
      FieldName = 'INACUS'
      Precision = 11
      Size = 2
    end
    object ADOQuery1INCATE: TIntegerField
      FieldName = 'INCATE'
    end
    object ADOQuery1INACT: TStringField
      FieldName = 'INACT'
      FixedChar = True
      Size = 1
    end
  end
  object ADOQuery2: TADOQuery
    Connection = ASConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      ''
      '')
    Left = 416
    Top = 351
  end
  object Timer1: TTimer
    Interval = 3000
    Left = 176
    Top = 32
  end
  object qrASEncabezadoGen: TADOQuery
    Connection = ASConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Muestra'
        Attributes = [paNullable]
        DataType = ftBCD
        Precision = 11
        Size = 19
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM INP033WI'
      'WHERE IN3MUE = :Muestra')
    Left = 152
    Top = 183
    object qrASEncabezadoGenIN3MUE: TBCDField
      FieldName = 'IN3MUE'
      Precision = 11
      Size = 0
    end
    object qrASEncabezadoGenIN3NOM: TStringField
      FieldName = 'IN3NOM'
      FixedChar = True
      Size = 40
    end
    object qrASEncabezadoGenIN3HOR: TIntegerField
      FieldName = 'IN3HOR'
    end
    object qrASEncabezadoGenIN3DIR: TStringField
      FieldName = 'IN3DIR'
      FixedChar = True
      Size = 40
    end
    object qrASEncabezadoGenIN3EDA: TIntegerField
      FieldName = 'IN3EDA'
    end
    object qrASEncabezadoGenIN3NAC: TIntegerField
      FieldName = 'IN3NAC'
    end
    object qrASEncabezadoGenIN3TEL: TStringField
      FieldName = 'IN3TEL'
      FixedChar = True
      Size = 10
    end
    object qrASEncabezadoGenIN3CAT: TStringField
      FieldName = 'IN3CAT'
      FixedChar = True
    end
    object qrASEncabezadoGenIN3FEC: TIntegerField
      FieldName = 'IN3FEC'
    end
    object qrASEncabezadoGenIN3USU: TStringField
      FieldName = 'IN3USU'
      FixedChar = True
      Size = 10
    end
    object qrASEncabezadoGenIN3SEX: TStringField
      FieldName = 'IN3SEX'
      FixedChar = True
      Size = 1
    end
    object qrASEncabezadoGenIN3CED: TBCDField
      FieldName = 'IN3CED'
      Precision = 12
      Size = 0
    end
    object qrASEncabezadoGenIN3SUC: TIntegerField
      FieldName = 'IN3SUC'
    end
    object qrASEncabezadoGenIN3CDO: TIntegerField
      FieldName = 'IN3CDO'
    end
    object qrASEncabezadoGenIN3DOC: TStringField
      FieldName = 'IN3DOC'
      FixedChar = True
      Size = 40
    end
    object qrASEncabezadoGenIN3CLI: TBCDField
      FieldName = 'IN3CLI'
      Precision = 10
      Size = 0
    end
    object qrASEncabezadoGenIN3FAC: TBCDField
      FieldName = 'IN3FAC'
      Precision = 11
      Size = 2
    end
    object qrASEncabezadoGenIN3PAG: TBCDField
      FieldName = 'IN3PAG'
      Precision = 11
      Size = 2
    end
    object qrASEncabezadoGenIN3RES: TBCDField
      FieldName = 'IN3RES'
      Precision = 11
      Size = 2
    end
    object qrASEncabezadoGenIN3EPA: TIntegerField
      FieldName = 'IN3EPA'
    end
    object qrASEncabezadoGenIN3IPA: TIntegerField
      FieldName = 'IN3IPA'
    end
    object qrASEncabezadoGenIN3EDO: TIntegerField
      FieldName = 'IN3EDO'
    end
    object qrASEncabezadoGenIN3IDO: TIntegerField
      FieldName = 'IN3IDO'
    end
    object qrASEncabezadoGenIN3RCL: TIntegerField
      FieldName = 'IN3RCL'
    end
    object qrASEncabezadoGenIN3ICL: TIntegerField
      FieldName = 'IN3ICL'
    end
    object qrASEncabezadoGenIN3COM: TStringField
      FieldName = 'IN3COM'
      FixedChar = True
      Size = 50
    end
    object qrASEncabezadoGenIN3ABR: TIntegerField
      FieldName = 'IN3ABR'
    end
    object qrASEncabezadoGenIN3REL: TBCDField
      FieldName = 'IN3REL'
      Precision = 11
      Size = 0
    end
    object qrASEncabezadoGenIN3REF: TStringField
      FieldName = 'IN3REF'
      FixedChar = True
    end
    object qrASEncabezadoGenIN3ACT: TStringField
      FieldName = 'IN3ACT'
      FixedChar = True
      Size = 1
    end
    object qrASEncabezadoGenIN3TAS: TBCDField
      FieldName = 'IN3TAS'
      Precision = 5
      Size = 2
    end
    object qrASEncabezadoGenIN3FPA: TBCDField
      FieldName = 'IN3FPA'
      Precision = 11
      Size = 2
    end
    object qrASEncabezadoGenIN3POL: TStringField
      FieldName = 'IN3POL'
      FixedChar = True
      Size = 25
    end
    object qrASEncabezadoGenIN3TAR: TBCDField
      FieldName = 'IN3TAR'
      Precision = 11
      Size = 2
    end
    object qrASEncabezadoGenIN3MON: TIntegerField
      FieldName = 'IN3MON'
    end
    object qrASEncabezadoGenIN3CAM: TBCDField
      FieldName = 'IN3CAM'
      Precision = 7
      Size = 2
    end
    object qrASEncabezadoGenIN3ENV: TBCDField
      FieldName = 'IN3ENV'
      Precision = 11
      Size = 2
    end
    object qrASEncabezadoGenIN3SEG: TBCDField
      FieldName = 'IN3SEG'
      Precision = 11
      Size = 2
    end
    object qrASEncabezadoGenIN3NRE: TIntegerField
      FieldName = 'IN3NRE'
    end
    object qrASEncabezadoGenIN3URG: TIntegerField
      FieldName = 'IN3URG'
    end
    object qrASEncabezadoGenIN3CCO: TStringField
      FieldName = 'IN3CCO'
      FixedChar = True
      Size = 1
    end
    object qrASEncabezadoGenIN3ORI: TStringField
      FieldName = 'IN3ORI'
      FixedChar = True
      Size = 1
    end
    object qrASEncabezadoGenIN3EMB: TStringField
      FieldName = 'IN3EMB'
      FixedChar = True
      Size = 1
    end
    object qrASEncabezadoGenIN3PNA: TStringField
      FieldName = 'IN3PNA'
      FixedChar = True
    end
    object qrASEncabezadoGenIN3NUP: TIntegerField
      FieldName = 'IN3NUP'
    end
    object qrASEncabezadoGenIN3PAS: TStringField
      FieldName = 'IN3PAS'
      FixedChar = True
    end
    object qrASEncabezadoGenIN3DTO: TStringField
      FieldName = 'IN3DTO'
      FixedChar = True
      Size = 1
    end
    object qrASEncabezadoGenIN3NAP: TStringField
      FieldName = 'IN3NAP'
      FixedChar = True
    end
    object qrASEncabezadoGenIN3PAP: TStringField
      FieldName = 'IN3PAP'
      FixedChar = True
      Size = 50
    end
    object qrASEncabezadoGenIN3DI2: TStringField
      FieldName = 'IN3DI2'
      FixedChar = True
      Size = 40
    end
    object qrASEncabezadoGenIN3IND: TStringField
      FieldName = 'IN3IND'
      FixedChar = True
      Size = 1
    end
    object qrASEncabezadoGenIN3RAU: TStringField
      FieldName = 'IN3RAU'
      FixedChar = True
      Size = 1
    end
  end
  object qrASDetalleGen: TADOQuery
    Connection = ASConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Muestra'
        Attributes = [paNullable]
        DataType = ftBCD
        Precision = 11
        Size = 19
        Value = Null
      end
      item
        Name = 'Codigo'
        Attributes = [paNullable]
        DataType = ftBCD
        Precision = 4
        Size = 19
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM INP044WI'
      'WHERE (IN4MUE = :Muestra)'
      'AND (IN4COD = :Codigo)')
    Left = 152
    Top = 246
    object qrASDetalleGenIN4MUE: TBCDField
      FieldName = 'IN4MUE'
      Precision = 11
      Size = 0
    end
    object qrASDetalleGenIN4COD: TIntegerField
      FieldName = 'IN4COD'
    end
    object qrASDetalleGenIN4NOM: TStringField
      FieldName = 'IN4NOM'
      FixedChar = True
      Size = 50
    end
    object qrASDetalleGenIN4STS: TStringField
      FieldName = 'IN4STS'
      FixedChar = True
      Size = 1
    end
    object qrASDetalleGenIN4DEP: TIntegerField
      FieldName = 'IN4DEP'
    end
    object qrASDetalleGenIN4FEC: TIntegerField
      FieldName = 'IN4FEC'
    end
    object qrASDetalleGenIN4HOR: TIntegerField
      FieldName = 'IN4HOR'
    end
    object qrASDetalleGenIN4USU: TStringField
      FieldName = 'IN4USU'
      FixedChar = True
      Size = 10
    end
    object qrASDetalleGenIN4COM: TStringField
      FieldName = 'IN4COM'
      FixedChar = True
      Size = 100
    end
    object qrASDetalleGenIN4PET: TIntegerField
      FieldName = 'IN4PET'
    end
    object qrASDetalleGenIN4ANT: TBCDField
      FieldName = 'IN4ANT'
      Precision = 11
      Size = 0
    end
    object qrASDetalleGenIN4VAL: TBCDField
      FieldName = 'IN4VAL'
      Precision = 11
      Size = 2
    end
    object qrASDetalleGenIN4TIP: TStringField
      FieldName = 'IN4TIP'
      FixedChar = True
      Size = 1
    end
    object qrASDetalleGenIN4ACT: TStringField
      FieldName = 'IN4ACT'
      FixedChar = True
      Size = 1
    end
    object qrASDetalleGenIN4GRU: TStringField
      FieldName = 'IN4GRU'
      FixedChar = True
      Size = 3
    end
  end
  object qrASDetalleLec: TADOQuery
    Connection = ASConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Muestra'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 11
        Size = 11
        Value = Null
      end
      item
        Name = 'Codigo'
        Attributes = [paNullable]
        DataType = ftBCD
        Precision = 4
        Size = 19
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM LAT005PEN'
      'WHERE (NUMERO = :Muestra)'
      'AND (SECUEN = :Codigo)')
    Left = 200
    Top = 278
    object IntegerField1: TIntegerField
      FieldName = 'ANO'
    end
    object IntegerField2: TIntegerField
      FieldName = 'NUMLAB'
    end
    object IntegerField3: TIntegerField
      FieldName = 'SECUEN'
    end
    object StringField1: TStringField
      FieldName = 'ANALI'
      FixedChar = True
      Size = 50
    end
    object StringField2: TStringField
      FieldName = 'FIL1'
      FixedChar = True
      Size = 1
    end
    object BCDField1: TBCDField
      FieldName = 'VALOR'
      Precision = 7
      Size = 2
    end
    object StringField3: TStringField
      FieldName = 'MARCA'
      FixedChar = True
      Size = 1
    end
    object IntegerField4: TIntegerField
      FieldName = 'DEPTO'
    end
  end
end
