inherited frmDialogConsultaEntradasClinica: TfrmDialogConsultaEntradasClinica
  Caption = 'Consulta de Entradas (CLINICAS).'
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
        'Laboratorio No.'
        'Registro No.'
        'Record'
        'Habitacion'
        'Paciente'
        'Nombre del Paciente'
        'Nombre del Cliente'
        'Usuario del D'#237'a'
        'Sucursal del D'#237'a'
        'Rango de Fecha')
      Properties.OnChange = edbuscarporPropertiesChange
      OnExit = edbuscarporExit
    end
    inherited edbuscar: TcxTextEdit
      Properties.CharCase = ecUpperCase
      OnExit = edbuscarExit
    end
    inherited cgDatos: TcxGrid
      Width = 936
      Height = 441
      TabOrder = 4
      OnEnter = cgDatosEnter
      OnExit = cgDatosExit
      ExplicitWidth = 936
      ExplicitHeight = 441
      inherited dbDatos: TcxGridDBTableView
        DataController.KeyFieldNames = 'ENTRADAID'
        object dbDatosEntradaID: TcxGridDBColumn
          Caption = 'Muestra No.'
          DataBinding.FieldName = 'ENTRADAID'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 55
        end
        object dbDatosFecha: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha'
          Options.Editing = False
          Width = 45
        end
        object dbDatosRECORDCLINICA: TcxGridDBColumn
          Caption = 'Record No.'
          DataBinding.FieldName = 'RECORDCLINICA'
          Options.Editing = False
          Width = 50
        end
        object dbDatosNUMEROHABITACION: TcxGridDBColumn
          Caption = 'Hab. No.'
          DataBinding.FieldName = 'NUMEROHABITACION'
          Options.Editing = False
          Width = 30
        end
        object dbDatosFECHAENTRADA: TcxGridDBColumn
          Caption = 'Fecha Ent.'
          DataBinding.FieldName = 'FECHAENTRADA'
          Options.Editing = False
          Width = 45
        end
        object dbDatosPacienteID: TcxGridDBColumn
          Caption = 'Pac. Id.'
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
        object dbDatosClienteNombre: TcxGridDBColumn
          Caption = 'Nombre de Cliente'
          DataBinding.FieldName = 'ClienteNombre'
          Options.Editing = False
          Width = 80
        end
        object dbDatosNeto: TcxGridDBColumn
          Caption = 'Valor'
          DataBinding.FieldName = 'Neto'
          Options.Editing = False
          Width = 45
        end
        object dbDatosTotalPagado: TcxGridDBColumn
          Caption = 'Pagado'
          DataBinding.FieldName = 'TotalPagado'
          Options.Editing = False
          Width = 45
        end
        object dbDatosTotalPendiente: TcxGridDBColumn
          Caption = 'Pendiente'
          DataBinding.FieldName = 'TotalPendiente'
          Options.Editing = False
          Width = 45
        end
        object dbDatosEstatus: TcxGridDBColumn
          Caption = 'Fact'
          DataBinding.FieldName = 'ESTATUS_CLINICA'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ReadOnly = True
          Properties.ValueChecked = 'F'
          Properties.ValueUnchecked = 'P'
          Options.Editing = False
          Width = 30
        end
      end
    end
    inherited btcancelar: TcxButton
      Left = 872
      Top = 517
      Caption = 'Esc=&Cancelar'
      TabOrder = 6
      ExplicitLeft = 872
      ExplicitTop = 517
    end
    inherited btaceptar: TcxButton
      Left = 791
      Top = 517
      Caption = '&F9=&Aceptar'
      TabOrder = 5
      ExplicitLeft = 791
      ExplicitTop = 517
    end
    object dtFechaIni: TcxDateEdit [5]
      Left = 608
      Top = 36
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 2
      Width = 90
    end
    object dtFechaFin: TcxDateEdit [6]
      Left = 756
      Top = 36
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 3
      Width = 90
    end
    inherited dxLayoutControl1Group_Root: TdxLayoutGroup
      inherited dxLayoutControl1Group1: TdxLayoutGroup
        object dxLayoutControl1Item3: TdxLayoutItem
          Caption = 'Fecha Inicio'
          Control = dtFechaIni
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item7: TdxLayoutItem
          Caption = 'Fecha Fin'
          Control = dtFechaFin
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  inherited dsDatos: TDataSource
    DataSet = DM.qrEntradaClinica
    Left = 820
    Top = 7
  end
  inherited cxIntl1: TcxIntl
    Left = 864
    Top = 8
  end
end
