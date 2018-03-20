inherited frmDialogConsultaClientesPlanes: TfrmDialogConsultaClientesPlanes
  Caption = 'Consulta de Pacientes de los Chequeos Anuales'
  ClientHeight = 553
  ClientWidth = 958
  KeyPreview = True
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  ExplicitWidth = 966
  ExplicitHeight = 587
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 958
    Height = 553
    ExplicitWidth = 958
    ExplicitHeight = 553
    inherited edbuscarpor: TcxComboBox
      Properties.Items.Strings = (
        'Cedula'
        'Nombre'
        'Departamento'
        'Pruebas a Realizar'
        'Muestra Numero'
        'Sucursal'
        'Fecha de Toma')
    end
    inherited edbuscar: TcxTextEdit
      Properties.OnChange = edbuscarPropertiesChange
    end
    inherited cgDatos: TcxGrid
      Width = 936
      Height = 441
      OnEnter = cgDatosEnter
      OnExit = cgDatosExit
      ExplicitWidth = 936
      ExplicitHeight = 441
      inherited dbDatos: TcxGridDBTableView
        DataController.KeyFieldNames = 'MuestraId'
        object dbDatosPlanId: TcxGridDBColumn
          DataBinding.FieldName = 'PlanId'
          Width = 90
        end
        object dbDatosEmpresaID: TcxGridDBColumn
          Caption = 'Empresa'
          DataBinding.FieldName = 'EmpresaID'
          Width = 90
        end
        object dbDatosMuestraId: TcxGridDBColumn
          Caption = 'Muestra No.'
          DataBinding.FieldName = 'MuestraId'
          Width = 110
        end
        object dbDatosEmpleadoID: TcxGridDBColumn
          Caption = 'Empleado Id'
          DataBinding.FieldName = 'EmpleadoID'
          Width = 110
        end
        object dbDatosNombre: TcxGridDBColumn
          DataBinding.FieldName = 'Nombre'
          Width = 200
        end
        object dbDatosDepartamento: TcxGridDBColumn
          DataBinding.FieldName = 'Departamento'
          Width = 125
        end
        object dbDatosSucursal: TcxGridDBColumn
          DataBinding.FieldName = 'Sucursal'
          Width = 125
        end
        object dbDatosComboId: TcxGridDBColumn
          Caption = 'Prueba Id'
          DataBinding.FieldName = 'ComboId'
          Width = 100
        end
        object dbDatosSexo: TcxGridDBColumn
          DataBinding.FieldName = 'Sexo'
          Width = 50
        end
        object dbDatosEdad: TcxGridDBColumn
          DataBinding.FieldName = 'Edad'
          Width = 50
        end
        object dbDatosFechaSangre: TcxGridDBColumn
          Caption = 'Sangrado'
          DataBinding.FieldName = 'FechaSangre'
          Width = 90
        end
      end
    end
    inherited btcancelar: TcxButton
      Left = 872
      Top = 517
      ExplicitLeft = 872
      ExplicitTop = 517
    end
    inherited btaceptar: TcxButton
      Left = 791
      Top = 517
      ExplicitLeft = 791
      ExplicitTop = 517
    end
  end
  inherited dsDatos: TDataSource
    DataSet = qrClientes
    Left = 740
    Top = 31
  end
  object qrClientes: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'plan'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM PTClientesPlanes'
      'WHERE PlanId = :plan')
    Left = 680
    Top = 32
    object qrClientesPlanId: TStringField
      FieldName = 'PlanId'
      Size = 10
    end
    object qrClientesEmpresaID: TStringField
      FieldName = 'EmpresaID'
      Size = 10
    end
    object qrClientesEmpleadoID: TStringField
      FieldName = 'EmpleadoID'
      Size = 10
    end
    object qrClientesClienteID: TStringField
      FieldName = 'ClienteID'
      Size = 10
    end
    object qrClientesCodigoAxapta: TStringField
      FieldName = 'CodigoAxapta'
      Size = 10
    end
    object qrClientesIdentificacion: TStringField
      FieldName = 'Identificacion'
    end
    object qrClientesNombre: TStringField
      FieldName = 'Nombre'
      Size = 80
    end
    object qrClientesDepartamento: TStringField
      FieldName = 'Departamento'
      Size = 50
    end
    object qrClientesContacto: TStringField
      FieldName = 'Contacto'
      Size = 80
    end
    object qrClientesTelefono: TStringField
      FieldName = 'Telefono'
      Size = 16
    end
    object qrClientesTelefono2: TStringField
      FieldName = 'Telefono2'
      Size = 16
    end
    object qrClientesFax: TStringField
      FieldName = 'Fax'
      Size = 16
    end
    object qrClientesDireccion: TMemoField
      FieldName = 'Direccion'
      BlobType = ftMemo
    end
    object qrClientesCiudadID: TStringField
      FieldName = 'CiudadID'
      Size = 10
    end
    object qrClientesemail: TStringField
      FieldName = 'email'
      Size = 60
    end
    object qrClientesFechaNacimiento: TDateTimeField
      FieldName = 'FechaNacimiento'
    end
    object qrClientesAlias: TStringField
      FieldName = 'Alias'
      Size = 100
    end
    object qrClientesTipoSangre: TStringField
      FieldName = 'TipoSangre'
      Size = 5
    end
    object qrClientesLinea: TLargeintField
      FieldName = 'Linea'
    end
    object qrClientesComboId: TStringField
      FieldName = 'ComboId'
    end
    object qrClientesMuestraId: TStringField
      FieldName = 'MuestraId'
    end
    object qrClientesEstatus: TStringField
      FieldName = 'Estatus'
      FixedChar = True
      Size = 2
    end
    object qrClientesCargo: TStringField
      FieldName = 'Cargo'
    end
    object qrClientesSexo: TStringField
      FieldName = 'Sexo'
      FixedChar = True
      Size = 2
    end
    object qrClientesEdad: TIntegerField
      FieldName = 'Edad'
    end
    object qrClientesSucursal: TStringField
      FieldName = 'Sucursal'
      Size = 50
    end
    object qrClientesPacienteCiaId: TStringField
      FieldName = 'PacienteCiaId'
      Size = 10
    end
    object qrClientesTomado: TBooleanField
      FieldName = 'Tomado'
    end
    object qrClientesImpreso: TBooleanField
      FieldName = 'Impreso'
    end
    object qrClientesGenerado: TBooleanField
      FieldName = 'Generado'
    end
    object qrClientesTipoImpresion: TStringField
      FieldName = 'TipoImpresion'
    end
    object qrClientesSangre: TBooleanField
      FieldName = 'Sangre'
    end
    object qrClientesOrina: TBooleanField
      FieldName = 'Orina'
    end
    object qrClientesEsputo: TBooleanField
      FieldName = 'Esputo'
    end
    object qrClientesGarganta: TBooleanField
      FieldName = 'Garganta'
    end
    object qrClientesNail: TBooleanField
      FieldName = 'Nail'
    end
    object qrClientesFechaNail: TDateTimeField
      FieldName = 'FechaNail'
    end
    object qrClientesFechaSangre: TDateTimeField
      FieldName = 'FechaSangre'
    end
    object qrClientesFechaOrina: TDateTimeField
      FieldName = 'FechaOrina'
    end
    object qrClientesFechaEsputo: TDateTimeField
      FieldName = 'FechaEsputo'
    end
    object qrClientesFechaGarganta: TDateTimeField
      FieldName = 'FechaGarganta'
    end
  end
end
