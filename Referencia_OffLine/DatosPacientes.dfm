inherited frmDatosPacientes: TfrmDatosPacientes
  Caption = 'Pacientes'
  ClientHeight = 538
  ClientWidth = 677
  ExplicitWidth = 693
  ExplicitHeight = 576
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 677
    Height = 505
    ExplicitWidth = 677
    ExplicitHeight = 505
    inherited pcDatos: TcxPageControl
      ClientRectBottom = 517
      ClientRectRight = 736
      ClientRectTop = 24
      inherited tsMain: TcxTabSheet
        inherited lcGrid: TdxLayoutControl
          inherited dgDatos: TcxGrid
            inherited tvDatos: TcxGridDBTableView
              DataController.KeyFieldNames = 'PacienteID'
              object tvDatosPacienteID: TcxGridDBColumn
                DataBinding.FieldName = 'PacienteID'
              end
              object tvDatosNombre: TcxGridDBColumn
                DataBinding.FieldName = 'Nombre'
              end
              object tvDatosTelefono: TcxGridDBColumn
                DataBinding.FieldName = 'Telefono'
              end
              object tvDatosSeguroID: TcxGridDBColumn
                Caption = 'Cliente'
                DataBinding.FieldName = 'SeguroID'
              end
              object tvDatosIdentificacion: TcxGridDBColumn
                DataBinding.FieldName = 'Identificacion'
              end
              object tvDatosCodigoAxapta: TcxGridDBColumn
                Caption = 'Codigo Axapta'
                DataBinding.FieldName = 'CodigoAxapta'
              end
            end
          end
        end
      end
      inherited tsDatos: TcxTabSheet
        inherited lcDatos: TdxLayoutControl
          object edpaciente: TcxDBTextEdit [0]
            Tag = 99
            Left = 129
            Top = 36
            DataBinding.DataField = 'PacienteID'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 0
            Width = 145
          end
          object cxDBTextEdit2: TcxDBTextEdit [1]
            Left = 129
            Top = 63
            DataBinding.DataField = 'Nombre'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 1
            Width = 121
          end
          object cxDBTextEdit3: TcxDBTextEdit [2]
            Left = 129
            Top = 90
            DataBinding.DataField = 'Identificacion'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 2
            Width = 145
          end
          object cxDBExtLookupComboBox1: TcxDBExtLookupComboBox [3]
            Left = 129
            Top = 117
            RepositoryItem = DM.elcPacientes
            DataBinding.DataField = 'PacientePrincipalID'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 3
            Width = 145
          end
          object cxDBImageComboBox1: TcxDBImageComboBox [4]
            Left = 129
            Top = 144
            RepositoryItem = DM.icFormaEntregaPruebas
            DataBinding.DataField = 'PreferenciaResultado'
            DataBinding.DataSource = dsDatos
            Properties.Items = <>
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 4
            Width = 145
          end
          object cxDBImageComboBox2: TcxDBImageComboBox [5]
            Left = 129
            Top = 198
            DataBinding.DataField = 'Sexo'
            DataBinding.DataSource = dsDatos
            Properties.Alignment.Horz = taLeftJustify
            Properties.Items = <
              item
                Description = 'Femenino'
                ImageIndex = 0
                Value = 0
              end
              item
                Description = 'Masculino'
                Value = 1
              end>
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 6
            Width = 145
          end
          object cxDBDateEdit1: TcxDBDateEdit [6]
            Left = 129
            Top = 225
            DataBinding.DataField = 'FechaNacimiento'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 7
            Width = 145
          end
          object cxDBMemo1: TcxDBMemo [7]
            Left = 129
            Top = 338
            DataBinding.DataField = 'Direccion'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 10
            Height = 89
            Width = 400
          end
          object cxDBTextEdit4: TcxDBTextEdit [8]
            Left = 129
            Top = 460
            DataBinding.DataField = 'Telefono'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 12
            Width = 145
          end
          object cxDBTextEdit5: TcxDBTextEdit [9]
            Left = 280
            Top = 460
            DataBinding.DataField = 'Telefono2'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 13
            Width = 145
          end
          object cxDBTextEdit6: TcxDBTextEdit [10]
            Left = 129
            Top = 487
            DataBinding.DataField = 'Fax'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 14
            Width = 145
          end
          object cxDBTextEdit7: TcxDBTextEdit [11]
            Left = 129
            Top = 514
            DataBinding.DataField = 'eMail'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 15
            Width = 121
          end
          object cxDBExtLookupComboBox2: TcxDBExtLookupComboBox [12]
            Left = 129
            Top = 252
            RepositoryItem = DM.elcClientes
            DataBinding.DataField = 'SeguroID'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 8
            Width = 145
          end
          object cxDBTextEdit1: TcxDBTextEdit [13]
            Left = 129
            Top = 279
            DataBinding.DataField = 'PolizaSeguro'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 9
            Width = 145
          end
          object cxDBExtLookupComboBox3: TcxDBExtLookupComboBox [14]
            Left = 129
            Top = 433
            RepositoryItem = DM.elcCiudad
            DataBinding.DataField = 'CiudadId'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 11
            Width = 145
          end
          object cxDBCheckBox1: TcxDBCheckBox [15]
            Left = 129
            Top = 171
            DataBinding.DataField = 'PublicarInternet'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 5
            Width = 121
          end
          inherited Group_Root: TdxLayoutGroup
            object lcDatosGroup1: TdxLayoutGroup
              Caption = 'General'
              object lcDatosItem1: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Paciente'
                Control = edpaciente
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem2: TdxLayoutItem
                Caption = 'Nombre'
                Control = cxDBTextEdit2
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem3: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Cedula'
                Control = cxDBTextEdit3
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem4: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Principal'
                Control = cxDBExtLookupComboBox1
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem5: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Envio Resultado'
                Control = cxDBImageComboBox1
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem16: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Publicar en Internet'
                Control = cxDBCheckBox1
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem6: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Sexo'
                Control = cxDBImageComboBox2
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem7: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Fecha de Nacimiento'
                Control = cxDBDateEdit1
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem13: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Seguro'
                Control = cxDBExtLookupComboBox2
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem14: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Poliza'
                Control = cxDBTextEdit1
                ControlOptions.ShowBorder = False
              end
            end
            object lcDatosGroup2: TdxLayoutGroup
              Caption = 'Contacto'
              object lcDatosItem8: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Direcci'#243'n'
                Control = cxDBMemo1
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem15: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Ciudad'
                Control = cxDBExtLookupComboBox3
                ControlOptions.ShowBorder = False
              end
              object lcDatosGroup3: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object lcDatosItem9: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Telefono'
                  Control = cxDBTextEdit4
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem10: TdxLayoutItem
                  Caption = 'cxDBTextEdit5'
                  ShowCaption = False
                  Control = cxDBTextEdit5
                  ControlOptions.ShowBorder = False
                end
              end
              object lcDatosItem11: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Fax'
                Control = cxDBTextEdit6
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem12: TdxLayoutItem
                Caption = 'Email'
                Control = cxDBTextEdit7
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
      end
    end
  end
  inherited pnCaption: TPanel
    Width = 677
    ExplicitWidth = 677
  end
  inherited formStorage: TJvFormStorage
    Left = 344
  end
  inherited dsDatos: TDataSource
    DataSet = qrPacientes
  end
  inherited dxPrintGrid: TdxComponentPrinter
    inherited dxPrintGridLink: TdxGridReportLink
      ReportDocument.CreationDate = 38922.471073125000000000
      BuiltInReportLink = True
    end
    inherited dxPrintGridDatos: TdxLayoutControlReportLink
      ReportDocument.CreationDate = 38922.471073125000000000
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
  inherited cxGridPopupMenu: TcxGridPopupMenu
    Left = 336
    Top = 376
  end
  inherited qrDefaultView: TADOQuery
    Left = 456
    Top = 239
  end
  inherited strTableNames: TJvStrHolder
    Left = 304
  end
  inherited cxStyleRepository1: TcxStyleRepository
    Left = 336
    Top = 300
  end
  object qrPacientes: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    BeforePost = qrPacientesBeforePost
    OnNewRecord = qrPacientesNewRecord
    Parameters = <>
    SQL.Strings = (
      'Select *  from PTPaciente')
    Left = 336
    object qrPacientesPacienteID: TStringField
      DisplayLabel = 'Paciente'
      FieldName = 'PacienteID'
      Required = True
      Size = 10
    end
    object qrPacientesPacientePrincipalID: TStringField
      DisplayLabel = 'Paciente Principal'
      FieldName = 'PacientePrincipalID'
      Size = 10
    end
    object qrPacientesTipoIdentificacion: TIntegerField
      FieldName = 'TipoIdentificacion'
    end
    object qrPacientesIdentificacion: TStringField
      FieldName = 'Identificacion'
    end
    object qrPacientesNombre: TStringField
      FieldName = 'Nombre'
      Size = 80
    end
    object qrPacientesDireccion: TMemoField
      FieldName = 'Direccion'
      BlobType = ftMemo
    end
    object qrPacientesTelefono: TStringField
      FieldName = 'Telefono'
      Size = 16
    end
    object qrPacientesTelefono2: TStringField
      FieldName = 'Telefono2'
      Size = 16
    end
    object qrPacientesFax: TStringField
      FieldName = 'Fax'
      Size = 16
    end
    object qrPacienteseMail: TStringField
      FieldName = 'eMail'
      Size = 50
    end
    object qrPacientesPreferenciaResultado: TIntegerField
      FieldName = 'PreferenciaResultado'
    end
    object qrPacientesSeguroID: TStringField
      FieldName = 'SeguroID'
      Size = 10
    end
    object qrPacientesPolizaSeguro: TStringField
      FieldName = 'PolizaSeguro'
    end
    object qrPacientesFechaNacimiento: TDateTimeField
      DisplayLabel = 'Fecha de Nacimiento'
      FieldName = 'FechaNacimiento'
      Required = True
    end
    object qrPacientesSexo: TIntegerField
      FieldName = 'Sexo'
    end
    object qrPacientesCodigoAxapta: TStringField
      FieldName = 'CodigoAxapta'
      Size = 10
    end
    object qrPacientesCiudadId: TStringField
      FieldName = 'CiudadId'
      Size = 10
    end
    object qrPacientesPublicarInternet: TBooleanField
      FieldName = 'PublicarInternet'
    end
  end
end
