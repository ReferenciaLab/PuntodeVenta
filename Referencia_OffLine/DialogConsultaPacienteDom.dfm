inherited frmDialogConsultaPacienteDom: TfrmDialogConsultaPacienteDom
  BorderIcons = [biSystemMenu]
  Caption = 'Consulta de Pacientes-Domicilio'
  ClientHeight = 542
  ClientWidth = 943
  FormStyle = fsStayOnTop
  KeyPreview = True
  WindowState = wsMaximized
  OnCreate = FormCreate
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
      Properties.Items.Strings = (
        'Identificaci'#243'n'
        'Tel'#233'fono Ofic.'
        'Tel'#233'fono Res.'
        'Tel'#233'fono Cel.'
        'Nombres'
        'Apellidos'
        'Paciente ID')
    end
    inherited edbuscar: TcxTextEdit
      Properties.CharCase = ecUpperCase
      Properties.OnChange = edbuscarPropertiesChange
      OnExit = edbuscarExit
    end
    inherited cgDatos: TcxGrid
      Width = 623
      Height = 333
      OnEnter = cgDatosEnter
      OnExit = cgDatosExit
      ExplicitWidth = 623
      ExplicitHeight = 333
      inherited dbDatos: TcxGridDBTableView
        DataController.KeyFieldNames = ' ClienteDomID'
        DataController.MasterKeyFieldNames = ' '
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
          end>
        OptionsView.Footer = True
        object dbDatosCteDomID: TcxGridDBColumn
          DataBinding.FieldName = 'CteDomID'
          Width = 54
        end
        object dbDatosTipo_Documento: TcxGridDBColumn
          Caption = 'Tipo Doc.'
          DataBinding.FieldName = 'Tipo_Documento'
          Width = 52
        end
        object dbDatosDocumento: TcxGridDBColumn
          DataBinding.FieldName = 'Documento'
          HeaderAlignmentHorz = taRightJustify
          Width = 61
        end
        object dbDatosNombre: TcxGridDBColumn
          DataBinding.FieldName = 'Nombres'
          HeaderAlignmentHorz = taCenter
          Width = 209
        end
        object dbDatosApellidos: TcxGridDBColumn
          DataBinding.FieldName = 'Apellidos'
          HeaderAlignmentHorz = taCenter
          Width = 209
        end
        object dbDatosClienteID: TcxGridDBColumn
          DataBinding.FieldName = 'ClienteID'
          Width = 69
        end
        object dbDatosTel_Oficina: TcxGridDBColumn
          DataBinding.FieldName = 'Tel_Oficina'
          Width = 70
        end
        object dbDatosTel_Residencia: TcxGridDBColumn
          DataBinding.FieldName = 'Tel_Residencia'
          Width = 57
        end
        object dbDatosTel_Celular: TcxGridDBColumn
          DataBinding.FieldName = 'Tel_Celular'
          Width = 69
        end
        object dbDatosEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'Estatus'
          Width = 57
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
    object BtNuevo: TcxButton [5]
      Left = 20
      Top = 496
      Width = 400
      Height = 35
      Caption = 'F1 = Agregar un Nuevo &Paciente'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ModalResult = 2
      ParentFont = False
      TabOrder = 3
    end
    inherited dxLayoutControl1Group_Root: TdxLayoutGroup
      inherited dxLayoutControl1Group2: TdxLayoutGroup
        object dxLayoutControl1Item3: TdxLayoutItem [0]
          ShowCaption = False
          Control = BtNuevo
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object cxLabel1: TcxLabel [1]
    Left = 571
    Top = 31
    AutoSize = False
    Caption = 'Enter = Buscar Paciente'
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
    Width = 260
  end
  inherited dsDatos: TDataSource
    Left = 324
    Top = 407
  end
  inherited cxIntl1: TcxIntl
    Left = 544
    Top = 240
  end
  object qrPacientes: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * from dbo.PTCLIENTEDOM')
    Left = 272
    Top = 407
    object qrPacientesCteDomID: TIntegerField
      FieldName = 'CteDomID'
    end
    object qrPacientesTipo_Documento: TIntegerField
      FieldName = 'Tipo_Documento'
    end
    object qrPacientesDocumento: TStringField
      FieldName = 'Documento'
    end
    object qrPacientesNombre: TStringField
      FieldName = 'Nombre'
      Size = 80
    end
    object qrPacientesSexo: TSmallintField
      FieldName = 'Sexo'
    end
    object qrPacientesDireccion: TStringField
      FieldName = 'Direccion'
      Size = 100
    end
    object qrPacientesFecha_Nacimiento: TDateTimeField
      FieldName = 'Fecha_Nacimiento'
    end
    object qrPacientesClienteID: TStringField
      FieldName = 'ClienteID'
    end
    object qrPacientesTel_Oficina: TStringField
      FieldName = 'Tel_Oficina'
    end
    object qrPacientesTel_Residencia: TStringField
      FieldName = 'Tel_Residencia'
    end
    object qrPacientesTel_Celular: TStringField
      FieldName = 'Tel_Celular'
    end
    object qrPacientesEmail: TStringField
      FieldName = 'Email'
      Size = 80
    end
    object qrPacientesUserID: TStringField
      FieldName = 'UserID'
      Size = 10
    end
    object qrPacientesEstatus: TStringField
      FieldName = 'Estatus'
      FixedChar = True
      Size = 1
    end
  end
end
