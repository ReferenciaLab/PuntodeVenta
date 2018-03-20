inherited frmDialogAnulacionFacturas: TfrmDialogAnulacionFacturas
  Caption = 'Anulaci'#243'n de Facturas'
  ClientHeight = 553
  ClientWidth = 804
  KeyPreview = True
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  ExplicitLeft = -220
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
      Width = 782
      Height = 441
      OnEnter = cgDatosEnter
      OnExit = cgDatosExit
      ExplicitWidth = 782
      ExplicitHeight = 441
      inherited dbDatos: TcxGridDBTableView
        DataController.KeyFieldNames = 'EntradaID'
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = True
        object dbDatosSeleccionID: TcxGridDBColumn
          DataBinding.FieldName = 'SeleccionID'
        end
        object dbDatosEntradaID: TcxGridDBColumn
          Caption = 'Registro No.'
          DataBinding.FieldName = 'EntradaID'
          Options.Editing = False
          Width = 50
        end
        object dbDatosFecha: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha'
          Options.Editing = False
          Width = 45
        end
        object dbDatosPacienteID: TcxGridDBColumn
          Caption = 'Pac. Id'
          DataBinding.FieldName = 'PacienteID'
          Options.Editing = False
          Width = 40
        end
        object dbDatosNombrePaciente: TcxGridDBColumn
          Caption = 'Nombre Paciente'
          DataBinding.FieldName = 'NombrePaciente'
          Options.Editing = False
          Width = 90
        end
        object dbDatosTelefonos: TcxGridDBColumn
          Caption = 'Telefono'
          DataBinding.FieldName = 'Telefonos'
          Options.Editing = False
          Width = 40
        end
        object dbDatosClienteID: TcxGridDBColumn
          Caption = 'Cliente Id'
          DataBinding.FieldName = 'ClienteID'
          Options.Editing = False
          Width = 40
        end
        object dbDatosClienteNombre: TcxGridDBColumn
          Caption = 'Nombre de Cliente'
          DataBinding.FieldName = 'ClienteNombre'
          Options.Editing = False
          Width = 80
        end
        object dbDatosMonedaID: TcxGridDBColumn
          Caption = 'Div'
          DataBinding.FieldName = 'MonedaID'
          Options.Editing = False
          Width = 24
        end
        object dbDatosNeto: TcxGridDBColumn
          Caption = 'Valor'
          DataBinding.FieldName = 'Neto'
          Options.Editing = False
          Width = 45
        end
        object dbDatosTotalPagodo: TcxGridDBColumn
          Caption = 'Pagado'
          DataBinding.FieldName = 'TotalPagodo'
          Options.Editing = False
          Width = 45
        end
        object dbDatosTotalPendiente: TcxGridDBColumn
          Caption = 'Pendiente'
          DataBinding.FieldName = 'TotalPendiente'
          Options.Editing = False
          Width = 40
        end
        object dbDatosHold: TcxGridDBColumn
          DataBinding.FieldName = 'Hold'
          Options.Editing = False
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
    AutoEdit = True
    DataSet = dxMemFacturaAnulada
    Left = 652
    Top = 31
  end
  object dxMemFacturaAnulada: TdxMemData
    Indexes = <>
    Persistent.Data = {
      566572666666666666FE3F040000001A00000001000A0043617465676F726961
      001F00000001000600546578746F000400000003000900496D6167656E496400
      0200000002000A004D6F64756C6F49647800010700000056656E746173000107
      00000056656E74617300010A000000010100}
    SortOptions = []
    Left = 716
    Top = 35
    object dxMemFacturaAnuladaSeleccionID: TBooleanField
      FieldName = 'SeleccionID'
    end
    object dxMemFacturaAnuladaEntradaID: TStringField
      FieldName = 'EntradaID'
    end
    object dxMemFacturaAnuladaFecha: TDateField
      FieldName = 'Fecha'
    end
    object dxMemFacturaAnuladaPacienteID: TStringField
      FieldName = 'PacienteID'
      Size = 8
    end
    object dxMemFacturaAnuladaNombrePaciente: TStringField
      FieldName = 'NombrePaciente'
      Size = 80
    end
    object dxMemFacturaAnuladaTelefonos: TStringField
      FieldName = 'Telefonos'
      Size = 15
    end
    object dxMemFacturaAnuladaClienteID: TStringField
      FieldName = 'ClienteID'
      Size = 8
    end
    object dxMemFacturaAnuladaClienteNombre: TStringField
      FieldName = 'ClienteNombre'
      Size = 80
    end
    object dxMemFacturaAnuladaMonedaID: TStringField
      FieldName = 'MonedaID'
    end
    object dxMemFacturaAnuladaNeto: TCurrencyField
      FieldName = 'Neto'
    end
    object dxMemFacturaAnuladaTotalPagodo: TCurrencyField
      FieldName = 'TotalPagado'
    end
    object dxMemFacturaAnuladaTotalPendiente: TCurrencyField
      FieldName = 'TotalPendiente'
    end
    object dxMemFacturaAnuladaHold: TStringField
      FieldName = 'Hold'
    end
    object dxMemFacturaAnuladaRefID: TIntegerField
      FieldName = 'RefID'
    end
  end
  object QryUpd: TADOQuery
    Connection = DM.DataBase
    Parameters = <>
    Left = 688
    Top = 16
  end
end
