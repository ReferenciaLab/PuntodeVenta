inherited frmDatosPlanesAnuales: TfrmDatosPlanesAnuales
  Left = 366
  Top = 115
  Caption = 'Mantenimiento de Chequeos Anuales'
  ClientHeight = 468
  ClientWidth = 621
  Position = poDesigned
  ExplicitWidth = 629
  ExplicitHeight = 502
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 621
    Height = 435
    ExplicitWidth = 621
    ExplicitHeight = 435
    inherited pcDatos: TcxPageControl
      Width = 497
      Height = 429
      ActivePage = tsDatos
      ExplicitWidth = 497
      ExplicitHeight = 429
      ClientRectBottom = 429
      ClientRectRight = 497
      ClientRectTop = 24
      inherited tsMain: TcxTabSheet
        ExplicitWidth = 492
        ExplicitHeight = 411
        inherited lcGrid: TdxLayoutControl
          Width = 497
          Height = 405
          ExplicitWidth = 492
          ExplicitHeight = 411
          inherited dgDatos: TcxGrid
            Width = 550
            Height = 240
            ExplicitWidth = 550
            ExplicitHeight = 240
            inherited tvDatos: TcxGridDBTableView
              DataController.KeyFieldNames = 'PlanId'
              object tvDatosPlanId: TcxGridDBColumn
                DataBinding.FieldName = 'PlanId'
                Width = 85
              end
              object tvDatosClienteId: TcxGridDBColumn
                Caption = 'Empresa'
                DataBinding.FieldName = 'ClienteID'
                Width = 85
              end
              object tvDatosNombre: TcxGridDBColumn
                DataBinding.FieldName = 'Nombre'
                Width = 225
              end
              object tvDatosPacientes: TcxGridDBColumn
                DataBinding.FieldName = 'TotalPacientes'
                Width = 85
              end
              object tvDatosEstatus: TcxGridDBColumn
                Caption = 'Act'
                DataBinding.FieldName = 'Estatus'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.ValueChecked = '1'
                Properties.ValueUnchecked = '0'
                Width = 35
              end
            end
          end
        end
      end
      inherited tsDatos: TcxTabSheet
        ExplicitWidth = 492
        ExplicitHeight = 411
        inherited lcDatos: TdxLayoutControl
          Width = 497
          Height = 405
          Align = alLeft
          ExplicitWidth = 497
          ExplicitHeight = 411
          object edplanid: TcxDBTextEdit [0]
            Tag = 99
            Left = 126
            Top = 36
            DataBinding.DataField = 'PlanId'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 0
            Width = 145
          end
          object EdDescripcion: TcxDBTextEdit [1]
            Left = 126
            Top = 117
            Hint = 'Haga Click En Buscar Cliente'
            DataBinding.DataField = 'Nombre'
            DataBinding.DataSource = dsDatos
            ParentShowHint = False
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            ShowHint = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 3
            Width = 121
          end
          object cxDBCurrencyEdit1: TcxDBCurrencyEdit [2]
            Left = 126
            Top = 279
            DataBinding.DataField = 'TotalPacientes'
            DataBinding.DataSource = dsDatos
            Properties.DecimalPlaces = 0
            Properties.DisplayFormat = '0;(0)'
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 10
            Width = 145
          end
          object cxDBCheckBox2: TcxDBCheckBox [3]
            Left = 126
            Top = 360
            DataBinding.DataField = 'Estatus'
            DataBinding.DataSource = dsDatos
            Properties.Alignment = taLeftJustify
            Properties.ValueChecked = 'True'
            Properties.ValueUnchecked = 'False'
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 13
            Width = 121
          end
          object cxDBCurrencyEdit2: TcxDBCurrencyEdit [4]
            Left = 126
            Top = 306
            DataBinding.DataField = 'Adicionales'
            DataBinding.DataSource = dsDatos
            Properties.DecimalPlaces = 0
            Properties.DisplayFormat = '0;(0)'
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 11
            Width = 145
          end
          object EdAlias: TcxDBTextEdit [5]
            Left = 126
            Top = 171
            Hint = 'Haga Click En Buscar Cliente'
            DataBinding.DataField = 'Direccion'
            DataBinding.DataSource = dsDatos
            ParentShowHint = False
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            ShowHint = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 6
            Width = 121
          end
          object EdFecha: TcxDBDateEdit [6]
            Left = 126
            Top = 63
            DataBinding.DataField = 'Fecha'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 1
            Width = 145
          end
          object EdEmpresa: TcxDBTextEdit [7]
            Left = 126
            Top = 90
            Hint = 'Haga Click En Buscar Cliente'
            DataBinding.DataField = 'ClienteID'
            DataBinding.DataSource = dsDatos
            ParentShowHint = False
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            ShowHint = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 2
            Width = 145
          end
          object cxDBTextEdit1: TcxDBTextEdit [8]
            Left = 126
            Top = 198
            Hint = 'Haga Click En Buscar Cliente'
            DataBinding.DataField = 'CiudadID'
            DataBinding.DataSource = dsDatos
            ParentShowHint = False
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            ShowHint = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 7
            Width = 121
          end
          object cxDBTextEdit2: TcxDBTextEdit [9]
            Left = 277
            Top = 144
            Hint = 'Haga Click En Buscar Cliente'
            DataBinding.DataField = 'Telefono2'
            DataBinding.DataSource = dsDatos
            ParentShowHint = False
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            ShowHint = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 5
            Width = 145
          end
          object cxDBTextEdit3: TcxDBTextEdit [10]
            Left = 126
            Top = 144
            Hint = 'Haga Click En Buscar Cliente'
            DataBinding.DataField = 'Telefono'
            DataBinding.DataSource = dsDatos
            ParentShowHint = False
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            ShowHint = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 4
            Width = 145
          end
          object cxDBTextEdit4: TcxDBTextEdit [11]
            Left = 126
            Top = 225
            DataBinding.DataField = 'Alias'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 8
            Width = 121
          end
          object cxDBTextEdit5: TcxDBTextEdit [12]
            Left = 126
            Top = 252
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 9
            Width = 121
          end
          object cxDBComboBox1: TcxDBComboBox [13]
            Left = 126
            Top = 333
            DataBinding.DataField = 'TipoImpresion'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Properties.Items.Strings = (
              'LOTE'
              'INDIVIDUAL')
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 12
            Width = 145
          end
          inherited Group_Root: TdxLayoutGroup
            object lcDatosGroup1: TdxLayoutGroup
              AutoAligns = []
              AlignHorz = ahClient
              Caption = 'General'
              object lcDatosItem1: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Plan Id'
                Control = edplanid
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem13: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Fecha'
                Control = EdFecha
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem14: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Empresa Id'
                Control = EdEmpresa
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem2: TdxLayoutItem
                Caption = 'Nombre'
                Control = EdDescripcion
                ControlOptions.ShowBorder = False
              end
              object lcDatosGroup2: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object lcDatosItem9: TdxLayoutItem
                  Caption = 'Telefonos'
                  Control = cxDBTextEdit3
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem8: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Control = cxDBTextEdit2
                  ControlOptions.ShowBorder = False
                end
              end
              object lcDatosItem11: TdxLayoutItem
                Caption = 'Direccion'
                Control = EdAlias
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem3: TdxLayoutItem
                Caption = 'Ciudad'
                Control = cxDBTextEdit1
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem5: TdxLayoutItem
                Caption = 'Alias'
                Control = cxDBTextEdit4
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem10: TdxLayoutItem
                Caption = 'Codigo de Pacientes'
                Control = cxDBTextEdit5
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem4: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Chequeos'
                Control = cxDBCurrencyEdit1
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem7: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Adicionales'
                Control = cxDBCurrencyEdit2
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem12: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Tipo de Impresion'
                Control = cxDBComboBox1
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem6: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Activo'
                Control = cxDBCheckBox2
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
      end
    end
    object BtCombos: TcxButton [1]
      Left = 504
      Top = 38
      Width = 105
      Height = 25
      Caption = 'Registrar Pruebas'
      TabOrder = 2
      OnClick = BtCombosClick
    end
    object btEmpleados: TcxButton [2]
      Left = 504
      Top = 69
      Width = 105
      Height = 25
      Caption = 'Registrar Pacientes'
      TabOrder = 3
      OnClick = btEmpleadosClick
    end
    object BtClientes: TcxButton [3]
      Left = 504
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Buscar Clientes'
      TabOrder = 1
      OnClick = BtClientesClick
    end
    inherited dxLayoutGroup2: TdxLayoutGroup
      inherited dxLayoutControl1Group_Root: TdxLayoutGroup
        inherited lgBotones: TdxLayoutGroup
          object dxLayoutControl1Item1: TdxLayoutItem
            Caption = 'cxButton1'
            ShowCaption = False
            Control = BtClientes
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item2: TdxLayoutItem
            Caption = 'cxButton2'
            ShowCaption = False
            Control = BtCombos
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item3: TdxLayoutItem
            Caption = 'cxButton2'
            ShowCaption = False
            Control = btEmpleados
            ControlOptions.ShowBorder = False
          end
        end
      end
    end
  end
  inherited pnCaption: TPanel
    Width = 621
    ExplicitWidth = 621
  end
  inherited dsDatos: TDataSource
    DataSet = qrPlanesEmpresa
    Left = 204
    Top = 2
  end
  inherited dxPrintGrid: TdxComponentPrinter
    inherited dxPrintGridLink: TdxGridReportLink
      ReportDocument.CreationDate = 38922.606807361110000000
      BuiltInReportLink = True
    end
    inherited dxPrintGridDatos: TdxLayoutControlReportLink
      ReportDocument.CreationDate = 38922.606807361110000000
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
  inherited cxGridPopupMenu: TcxGridPopupMenu
    Left = 304
    Top = 88
  end
  inherited SaveDialog: TSaveDialog
    Left = 313
    Top = 144
  end
  inherited qryHelper: TADOQuery
    Left = 421
    Top = 2
  end
  inherited alEdit: TActionList
    Left = 348
    Top = 136
  end
  inherited qrDefaultView: TADOQuery
    Top = 2
  end
  inherited strTableNames: TJvStrHolder
    Left = 408
    Top = 108
  end
  inherited cxStyleRepository1: TcxStyleRepository
    Left = 344
    Top = 276
  end
  inherited qrVistas: TABSQuery
    Left = 356
    Top = 88
  end
  object qrPlanesEmpresa: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    BeforePost = qrPlanesEmpresaBeforePost
    AfterPost = qrPlanesEmpresaAfterPost
    OnNewRecord = qrPlanesEmpresaNewRecord
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM PTPlanesEmpresa')
    Left = 144
    Top = 2
    object qrPlanesEmpresaPlanId: TStringField
      FieldName = 'PlanId'
      Size = 10
    end
    object qrPlanesEmpresaClienteID: TStringField
      FieldName = 'ClienteID'
      Size = 10
    end
    object qrPlanesEmpresaCodigoAxapta: TStringField
      FieldName = 'CodigoAxapta'
      Size = 10
    end
    object qrPlanesEmpresaIdentificacion: TStringField
      FieldName = 'Identificacion'
    end
    object qrPlanesEmpresaNombre: TStringField
      FieldName = 'Nombre'
      Size = 80
    end
    object qrPlanesEmpresaTelefono: TStringField
      FieldName = 'Telefono'
      Size = 16
    end
    object qrPlanesEmpresaTelefono2: TStringField
      FieldName = 'Telefono2'
      Size = 16
    end
    object qrPlanesEmpresaFax: TStringField
      FieldName = 'Fax'
      Size = 16
    end
    object qrPlanesEmpresaDireccion: TMemoField
      FieldName = 'Direccion'
      BlobType = ftMemo
    end
    object qrPlanesEmpresaCiudadID: TStringField
      FieldName = 'CiudadID'
      Size = 10
    end
    object qrPlanesEmpresaemail: TStringField
      FieldName = 'email'
      Size = 60
    end
    object qrPlanesEmpresaTotalPacientes: TIntegerField
      FieldName = 'TotalPacientes'
    end
    object qrPlanesEmpresaAdicionales: TIntegerField
      FieldName = 'Adicionales'
    end
    object qrPlanesEmpresaEstatus: TBooleanField
      FieldName = 'Estatus'
    end
    object qrPlanesEmpresaFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object qrPlanesEmpresaFechaInicial: TDateTimeField
      FieldName = 'FechaInicial'
    end
    object qrPlanesEmpresaFechaFinal: TDateTimeField
      FieldName = 'FechaFinal'
    end
    object qrPlanesEmpresaMuestraActual: TIntegerField
      FieldName = 'MuestraActual'
    end
    object qrPlanesEmpresaMuestraInicial: TIntegerField
      FieldName = 'MuestraInicial'
    end
    object qrPlanesEmpresaMuestraFinal: TIntegerField
      FieldName = 'MuestraFinal'
    end
    object qrPlanesEmpresaAlias: TStringField
      FieldName = 'Alias'
      Size = 100
    end
    object qrPlanesEmpresaPacienteCiaId: TStringField
      FieldName = 'PacienteCiaId'
      Size = 10
    end
    object qrPlanesEmpresaTipoImpresion: TStringField
      DisplayLabel = 'Tipo de Impresion'
      FieldName = 'TipoImpresion'
    end
  end
end
