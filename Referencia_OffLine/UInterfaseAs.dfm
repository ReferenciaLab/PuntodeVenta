object InterfaseAS: TInterfaseAS
  OldCreateOrder = False
  Height = 357
  Width = 553
  object ASConnection: TADOConnection
    ConnectionString = 
      'Provider=MSDASQL.1;Password=FIDEL;Persist Security Info=True;Use' +
      'r ID=JULIO;Data Source=INTERFASE;Mode=ReadWrite'
    DefaultDatabase = 'S103F23E'
    LoginPrompt = False
    Provider = 'MSDASQL.1'
    Left = 48
    Top = 24
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
      'SELECT *'
      'FROM INTERFASE.INP00401'
      'WHERE (IN4MUE = :Muestra)'
      'AND (IN4COD = :Codigo)')
    Left = 48
    Top = 163
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
    object qrASDetalleIN4TIP: TStringField
      FieldName = 'IN4TIP'
      FixedChar = True
      Size = 1
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
      'SELECT *'
      'FROM INTERFASE.INP00301'
      'WHERE IN3MUE = :Muestra')
    Left = 48
    Top = 91
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
    Left = 248
    Top = 219
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
    Left = 248
    Top = 283
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
    Left = 472
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
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Password=FIDEL;Persist Security Info=True;Use' +
      'r ID=JULIO;Data Source=Laboratorio;Mode=ReadWrite'
    DefaultDatabase = 'S103F23E'
    LoginPrompt = False
    Mode = cmReadWrite
    Left = 368
    Top = 24
  end
end
