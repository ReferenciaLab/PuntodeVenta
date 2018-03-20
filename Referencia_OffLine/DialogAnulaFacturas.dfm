inherited frmDialogAnulaFacturas: TfrmDialogAnulaFacturas
  Caption = 'Anula Facturas'
  ClientHeight = 553
  ClientWidth = 804
  KeyPreview = True
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  ExplicitWidth = 812
  ExplicitHeight = 587
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 804
    Height = 553
    ExplicitWidth = 804
    ExplicitHeight = 553
    inherited edbuscarpor: TcxComboBox
      Properties.Items.Strings = (
        'Registro No.'
        'Paciente'
        'Nombre del Paciente'
        'Cliente'
        'Nombre del Cliente'
        'Telefono')
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
        DataController.KeyFieldNames = 'ENTRADAID'
        object dbDatosEntradaID: TcxGridDBColumn
          Caption = 'Registro No.'
          DataBinding.FieldName = 'ENTRADAID'
          Width = 48
        end
        object dbDatosFecha: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha'
          Width = 39
        end
        object dbDatosPacienteID: TcxGridDBColumn
          Caption = 'Paciente Id'
          DataBinding.FieldName = 'PacienteID'
          Width = 45
        end
        object dbDatosNombrePaciente: TcxGridDBColumn
          Caption = 'Nombre Paciente'
          DataBinding.FieldName = 'NombrePaciente'
          Width = 87
        end
        object dbDatosTelefonos: TcxGridDBColumn
          Caption = 'Telefono'
          DataBinding.FieldName = 'Telefonos'
          Width = 48
        end
        object dbDatosClienteID: TcxGridDBColumn
          Caption = 'Cliente Id'
          DataBinding.FieldName = 'ClienteID'
          Width = 46
        end
        object dbDatosClienteNombre: TcxGridDBColumn
          Caption = 'Nombre de Cliente'
          DataBinding.FieldName = 'ClienteNombre'
          Width = 86
        end
        object dbDatosMonedaID: TcxGridDBColumn
          Caption = 'Div'
          DataBinding.FieldName = 'MonedaID'
          Width = 24
        end
        object dbDatosNeto: TcxGridDBColumn
          Caption = 'Valor'
          DataBinding.FieldName = 'Neto'
          Width = 44
        end
        object dbDatosTotalPagado: TcxGridDBColumn
          Caption = 'Pagado'
          DataBinding.FieldName = 'TotalPagado'
          Width = 43
        end
        object dbDatosTotalPendiente: TcxGridDBColumn
          Caption = 'Pend.'
          DataBinding.FieldName = 'TotalPendiente'
          Width = 43
        end
        object dbDatosHold: TcxGridDBColumn
          DataBinding.FieldName = 'Hold'
          Width = 27
        end
      end
    end
    inherited btcancelar: TcxButton
      Left = 718
      Top = 517
      ExplicitLeft = 718
      ExplicitTop = 517
    end
    inherited btaceptar: TcxButton
      Left = 637
      Top = 517
      ExplicitLeft = 637
      ExplicitTop = 517
    end
  end
  inherited dsDatos: TDataSource
    DataSet = DM.qrEntradaPacienteCons
    Left = 652
    Top = 31
  end
end
