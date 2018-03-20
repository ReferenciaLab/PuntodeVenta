inherited frmBanco: TfrmBanco
  Caption = 'Banco de Sangre'
  ClientHeight = 573
  ClientWidth = 830
  ExplicitTop = -14
  ExplicitWidth = 838
  ExplicitHeight = 607
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCaption: TPanel
    Width = 830
    ExplicitWidth = 830
  end
  object dxLayoutControl1: TdxLayoutControl [2]
    Left = 0
    Top = 33
    Width = 830
    Height = 540
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmAppActions.lnfWeb
    DesignSize = (
      830
      540)
    object dgDatos: TcxGrid
      Left = 11
      Top = 11
      Width = 808
      Height = 190
      Anchors = [akLeft, akTop, akBottom]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      LookAndFeel.NativeStyle = True
      object tvDatos: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.Insert.Visible = False
        NavigatorButtons.Delete.Visible = False
        NavigatorButtons.Edit.Visible = False
        NavigatorButtons.Post.Visible = False
        NavigatorButtons.Cancel.Visible = False
        DataController.DataModeController.SmartRefresh = True
        DataController.DataSource = dsDatos
        DataController.Filter.Active = True
        DataController.Filter.AutoDataSetFilter = True
        DataController.KeyFieldNames = 'DonacionID'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <
          item
            Links = <
              item
                Column = tvDatosDonacionStatus
              end>
            SummaryItems = <>
          end>
        OptionsBehavior.IncSearch = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object tvDatosDonacionID: TcxGridDBColumn
          Caption = 'Donacion'
          DataBinding.FieldName = 'DonacionID'
        end
        object tvDatosFecha: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha'
        end
        object tvDatosNombre: TcxGridDBColumn
          DataBinding.FieldName = 'Nombre'
        end
        object tvDatosTelefono: TcxGridDBColumn
          DataBinding.FieldName = 'Telefono'
        end
        object tvDatosDonacionStatus: TcxGridDBColumn
          Caption = 'Estado'
          DataBinding.FieldName = 'DonacionStatus'
        end
      end
      object lvDatos: TcxGridLevel
        GridView = tvDatos
      end
    end
    object cxPageControl1: TcxPageControl
      Left = 23
      Top = 273
      Width = 784
      Height = 213
      ActivePage = cxTabSheet2
      TabOrder = 5
      ClientRectBottom = 213
      ClientRectRight = 784
      ClientRectTop = 24
      object cxTabSheet1: TcxTabSheet
        Caption = 'Datos'
        ImageIndex = 0
        object cxDBCheckBox1: TcxDBCheckBox
          Left = 135
          Top = 129
          Caption = 'Desea ser un donante activo'
          DataBinding.DataField = 'DonanteActivo'
          DataBinding.DataSource = dsDonante
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Style.BorderColor = clTeal
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          TabOrder = 5
          Width = 178
        end
        object cxDBComboBox2: TcxDBComboBox
          Left = 135
          Top = 21
          DataBinding.DataField = 'DonacionTipo'
          DataBinding.DataSource = dsDonacion
          Properties.Items.Strings = (
            'Voluntario'
            'Directo'
            'Autologo'
            'Terapeutico')
          Style.BorderColor = clTeal
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          Style.ButtonStyle = btsHotFlat
          Style.PopupBorderStyle = epbsSingle
          TabOrder = 0
          OnClick = cxDBComboBox2Click
          Width = 121
        end
        object cxLabel5: TcxLabel
          Left = 16
          Top = 21
          Caption = 'Tipo de donante'
        end
        object cxLabel6: TcxLabel
          Left = 16
          Top = 52
          Caption = 'Temperatura'
          ParentColor = False
          Style.Color = clBtnFace
        end
        object cxLabel7: TcxLabel
          Left = 16
          Top = 75
          Caption = 'Peso'
        end
        object cxLabel8: TcxLabel
          Left = 16
          Top = 106
          Caption = 'Pulso/minuto'
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 135
          Top = 48
          DataBinding.DataField = 'Temperatura'
          DataBinding.DataSource = dsDonacion
          Style.BorderColor = clTeal
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          TabOrder = 1
          Width = 121
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 135
          Top = 75
          DataBinding.DataField = 'Peso'
          DataBinding.DataSource = dsDonacion
          Style.BorderColor = clTeal
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          TabOrder = 2
          Width = 121
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 135
          Top = 102
          DataBinding.DataField = 'PulsoMinimo'
          DataBinding.DataSource = dsDonacion
          Style.BorderColor = clTeal
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          TabOrder = 3
          Width = 121
        end
        object cxDBComboBox1: TcxDBComboBox
          Left = 272
          Top = 100
          DataBinding.DataField = 'PulsoEstado'
          DataBinding.DataSource = dsDonacion
          Properties.Items.Strings = (
            'Regular'
            'Irregular')
          Style.BorderColor = clTeal
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          Style.ButtonStyle = btsHotFlat
          Style.PopupBorderStyle = epbsSingle
          TabOrder = 4
          Width = 161
        end
        object Panel1: TPanel
          Left = 439
          Top = 25
          Width = 320
          Height = 148
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 10
          Visible = False
          object cxDBTextEdit10: TcxDBTextEdit
            Left = 127
            Top = 8
            DataBinding.DataField = 'DirigidoNombre'
            DataBinding.DataSource = dsDonacion
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 0
            Width = 146
          end
          object cxDBTextEdit11: TcxDBTextEdit
            Left = 127
            Top = 35
            DataBinding.DataField = 'Hospital'
            DataBinding.DataSource = dsDonacion
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 1
            Width = 146
          end
          object cxDBTextEdit12: TcxDBTextEdit
            Left = 127
            Top = 62
            DataBinding.DataField = 'Medico'
            DataBinding.DataSource = dsDonacion
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 2
            Width = 146
          end
          object cxLabel14: TcxLabel
            Left = 16
            Top = 13
            Caption = 'Receptor'
          end
          object cxLabel15: TcxLabel
            Left = 16
            Top = 89
            Caption = 'Fecha tranfusion'
          end
          object cxLabel16: TcxLabel
            Left = 16
            Top = 36
            Caption = 'Hospital'
          end
          object cxDBDateEdit1: TcxDBDateEdit
            Tag = 99
            Left = 128
            Top = 89
            DataBinding.DataField = 'Fecha'
            DataBinding.DataSource = dsDonacion
            ParentFont = False
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            Style.IsFontAssigned = True
            TabOrder = 6
            Width = 145
          end
          object cxLabel17: TcxLabel
            Left = 16
            Top = 66
            Caption = 'Medico'
          end
        end
        object cxButton3: TcxButton
          Left = 344
          Top = 148
          Width = 75
          Height = 25
          Caption = 'Aceptar'
          TabOrder = 11
          OnClick = cxButton3Click
        end
      end
      object cxTabSheet2: TcxTabSheet
        Caption = 'Hemograma'
        ImageIndex = 5
        object cxLabel18: TcxLabel
          Left = 16
          Top = 52
          Caption = 'Hemoglobina'
          ParentColor = False
          Style.Color = clBtnFace
        end
        object cxLabel19: TcxLabel
          Left = 16
          Top = 75
          Caption = 'Hematocitos'
        end
        object cxLabel20: TcxLabel
          Left = 16
          Top = 106
          Caption = 'Globulos blancos'
        end
        object cxDBTextEdit14: TcxDBTextEdit
          Left = 135
          Top = 48
          DataBinding.DataField = 'Hemoglobina'
          DataBinding.DataSource = dsHemogramas
          Style.BorderColor = clTeal
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          TabOrder = 3
          Width = 121
        end
        object cxDBTextEdit15: TcxDBTextEdit
          Left = 135
          Top = 75
          DataBinding.DataField = 'Hematocito'
          DataBinding.DataSource = dsHemogramas
          Style.BorderColor = clTeal
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          TabOrder = 4
          Width = 121
        end
        object cxDBTextEdit16: TcxDBTextEdit
          Left = 135
          Top = 102
          DataBinding.DataField = 'GlobulosBlancos'
          DataBinding.DataSource = dsHemogramas
          Style.BorderColor = clTeal
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          TabOrder = 5
          Width = 121
        end
        object cxLabel21: TcxLabel
          Left = 16
          Top = 138
          Caption = 'Plaquetas'
        end
        object cxDBTextEdit17: TcxDBTextEdit
          Left = 135
          Top = 134
          DataBinding.DataField = 'Plaquetas'
          DataBinding.DataSource = dsHemogramas
          Style.BorderColor = clTeal
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          TabOrder = 7
          Width = 121
        end
      end
      object cxTabSheet3: TcxTabSheet
        Caption = 'Muestras'
        ImageIndex = 2
        object cxButton8: TcxButton
          Left = 654
          Top = 155
          Width = 75
          Height = 25
          Caption = 'Aceptar'
          TabOrder = 0
          OnClick = cxButton8Click
        end
        object GridPruebas: TcxGrid
          Left = 3
          Top = 3
          Width = 726
          Height = 146
          TabOrder = 1
          LookAndFeel.NativeStyle = True
          object GridPruebasEntradasPacienteDet: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            NavigatorButtons.First.Visible = False
            NavigatorButtons.PriorPage.Visible = False
            NavigatorButtons.Prior.Visible = False
            NavigatorButtons.Next.Visible = False
            NavigatorButtons.NextPage.Visible = False
            NavigatorButtons.Last.Visible = False
            NavigatorButtons.Insert.Visible = True
            NavigatorButtons.Delete.Visible = True
            NavigatorButtons.Edit.Visible = False
            NavigatorButtons.Refresh.Visible = True
            NavigatorButtons.SaveBookmark.Visible = False
            NavigatorButtons.GotoBookmark.Visible = False
            NavigatorButtons.Filter.Visible = False
            DataController.DataSource = dsEntradaPacienteDetalle
            DataController.KeyFieldNames = 'Secuencia'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.FocusCellOnTab = True
            OptionsCustomize.ColumnFiltering = False
            OptionsData.Appending = True
            OptionsView.Navigator = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            object GridPruebasEntradasPacienteDetPruebaID: TcxGridDBColumn
              Caption = 'C'#243'digo'
              DataBinding.FieldName = 'PruebaID'
              Width = 182
            end
            object GridPruebasEntradasPacienteDetDescripcion: TcxGridDBColumn
              Caption = 'Prueba'
              DataBinding.FieldName = 'Descripcion'
              Options.Editing = False
              Width = 310
            end
            object GridPruebasEntradasPacienteDetMuestraNo: TcxGridDBColumn
              Caption = 'Laboratorio No.'
              DataBinding.FieldName = 'MuestraNo'
              Visible = False
              Options.Editing = False
              Width = 81
            end
            object GridPruebasEntradasPacienteDetComentario: TcxGridDBColumn
              DataBinding.FieldName = 'Comentario'
              PropertiesClassName = 'TcxBlobEditProperties'
              Width = 512
            end
          end
          object GridPruebasLevel1: TcxGridLevel
            GridView = GridPruebasEntradasPacienteDet
          end
        end
        object cxButton4: TcxButton
          Left = 3
          Top = 155
          Width = 75
          Height = 25
          Action = Action1
          TabOrder = 2
        end
      end
      object cxTabSheet4: TcxTabSheet
        Caption = 'Recoleccion'
        ImageIndex = 3
        object cxDBTextEdit6: TcxDBTextEdit
          Left = 151
          Top = 30
          DataBinding.DataField = 'Temperatura'
          DataBinding.DataSource = dsDonacion
          Style.BorderColor = clTeal
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          TabOrder = 1
          Width = 121
        end
        object cxDBTextEdit7: TcxDBTextEdit
          Left = 151
          Top = 57
          DataBinding.DataField = 'Peso'
          DataBinding.DataSource = dsDonacion
          Style.BorderColor = clTeal
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          TabOrder = 2
          Width = 121
        end
        object cxDBTextEdit8: TcxDBTextEdit
          Left = 151
          Top = 84
          DataBinding.DataField = 'CantidadRecogida'
          DataBinding.DataSource = dsDonacion
          Style.BorderColor = clTeal
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          TabOrder = 3
          Width = 121
        end
        object cxLabel2: TcxLabel
          Left = 33
          Top = 35
          Caption = 'Paquete globular'
        end
        object cxLabel3: TcxLabel
          Left = 33
          Top = 58
          Caption = 'Sangre total'
        end
        object cxLabel4: TcxLabel
          Left = 33
          Top = 87
          Caption = 'Cantidad recogida'
        end
        object cxLabel1: TcxLabel
          Left = 33
          Top = 3
          Caption = 'Tipo de funda'
        end
        object cxDBTimeEdit1: TcxDBTimeEdit
          Tag = 99
          Left = 151
          Top = 123
          DataBinding.DataField = 'HoraInicio'
          DataBinding.DataSource = dsDonacion
          ParentFont = False
          Properties.ReadOnly = True
          Style.BorderColor = clTeal
          Style.BorderStyle = ebsSingle
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.ButtonStyle = btsHotFlat
          Style.IsFontAssigned = True
          TabOrder = 8
          Width = 85
        end
        object cxDBTimeEdit2: TcxDBTimeEdit
          Tag = 99
          Left = 367
          Top = 122
          DataBinding.DataField = 'HoraFin'
          DataBinding.DataSource = dsDonacion
          ParentFont = False
          Properties.ReadOnly = True
          Style.BorderColor = clTeal
          Style.BorderStyle = ebsSingle
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.ButtonStyle = btsHotFlat
          Style.IsFontAssigned = True
          TabOrder = 9
          Width = 85
        end
        object cxLabel11: TcxLabel
          Left = 31
          Top = 123
          Caption = 'Hora al comenzar'
        end
        object cxLabel12: TcxLabel
          Left = 280
          Top = 127
          Caption = 'Hora al terminar'
        end
        object cxButton9: TcxButton
          Left = 377
          Top = 161
          Width = 75
          Height = 25
          Caption = 'Aceptar'
          TabOrder = 12
          OnClick = cxButton9Click
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 151
          Top = 3
          Width = 170
          Height = 21
          DataField = 'TipoFundaID'
          DataSource = dsDonacion
          KeyField = 'TipoFundaID'
          ListField = 'TipoFundaDes'
          ListSource = dsTipoDonacion
          TabOrder = 0
        end
      end
      object cxTabSheet5: TcxTabSheet
        Caption = 'Notas'
        ImageIndex = 4
        object cxDBMemo1: TcxDBMemo
          Left = 164
          Top = 16
          DataBinding.DataField = 'NotaEntrevista'
          DataBinding.DataSource = dsDonacion
          TabOrder = 0
          Height = 89
          Width = 288
        end
        object cxLabel13: TcxLabel
          Left = 3
          Top = 11
          Caption = 'Notas'
        end
        object cxButton1: TcxButton
          Left = 377
          Top = 141
          Width = 75
          Height = 25
          Caption = 'Aceptar'
          TabOrder = 2
          OnClick = cxButton1Click
        end
      end
      object cxTabSheet6: TcxTabSheet
        Caption = 'Rechaso'
        ImageIndex = 5
        object cxDBComboBox4: TcxDBComboBox
          Left = 161
          Top = 3
          DataBinding.DataField = 'Rechaso'
          DataBinding.DataSource = dsDonante
          Properties.Items.Strings = (
            'Temporal'
            'Permanente')
          Style.BorderColor = clTeal
          Style.BorderStyle = ebsSingle
          Style.HotTrack = False
          Style.ButtonStyle = btsHotFlat
          Style.PopupBorderStyle = epbsSingle
          TabOrder = 0
          Width = 129
        end
        object cxLabel9: TcxLabel
          Left = 3
          Top = 3
          Caption = 'Tipo de rechaso'
        end
        object cxDBMemo2: TcxDBMemo
          Left = 161
          Top = 30
          DataBinding.DataField = 'RechasoNota'
          DataBinding.DataSource = dsDonante
          TabOrder = 2
          Height = 89
          Width = 291
        end
        object cxLabel10: TcxLabel
          Left = 3
          Top = 26
          Caption = 'Nota'
        end
        object cxButton2: TcxButton
          Left = 377
          Top = 140
          Width = 75
          Height = 25
          Caption = 'Rechasar'
          TabOrder = 4
          OnClick = cxButton2Click
        end
      end
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 86
      Top = 239
      TabStop = False
      DataBinding.DataField = 'DonacionID'
      DataBinding.DataSource = dsDatos
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 1
      Width = 135
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 269
      Top = 239
      TabStop = False
      DataBinding.DataField = 'Nombre'
      DataBinding.DataSource = dsDatos
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 2
      Width = 227
    end
    object cxDBTextEdit9: TcxDBTextEdit
      Left = 537
      Top = 239
      TabStop = False
      DataBinding.DataField = 'Fecha'
      DataBinding.DataSource = dsDatos
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 3
      Width = 121
    end
    object cxDBTextEdit13: TcxDBTextEdit
      Left = 707
      Top = 239
      TabStop = False
      DataBinding.DataField = 'MuestraNo'
      DataBinding.DataSource = dsEntradaPaciente
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 4
      Width = 726
    end
    object dxLayoutGroup3: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Item1: TdxLayoutItem
        Control = dgDatos
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl1Group4: TdxLayoutGroup
        ShowCaption = False
        object dxLayoutControl1Group1: TdxLayoutGroup
          Caption = 'Datos Generales'
          LayoutDirection = ldHorizontal
          object dxLayoutControl1Item10: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'Donacion'
            Control = cxDBTextEdit1
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item11: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'Nombre'
            Control = cxDBTextEdit2
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item12: TdxLayoutItem
            Caption = 'Fecha'
            Control = cxDBTextEdit9
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item2: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Caption = 'Muestra'
            Control = cxDBTextEdit13
            ControlOptions.ShowBorder = False
          end
        end
        object dxLayoutControl1Item3: TdxLayoutItem
          Control = cxPageControl1
          ControlOptions.ShowBorder = False
        end
      end
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      ShowCaption = False
    end
  end
  inherited formStorage: TJvFormStorage
    Left = 344
    Top = 74
  end
  inherited alEdit: TActionList
    object Action1: TAction
      Caption = 'F2-Pruebas'
      ShortCut = 113
      OnExecute = Action1Execute
    end
  end
  inherited pmCustom: TPopupMenu
    Left = 468
    Top = 4
  end
  object qrDonaciones: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Estado'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     dbo.BSDonacion.DonacionID, dbo.BSDonacion.Fecha, dbo.' +
        'BSDonacion.PacienteID, dbo.PTCliente.Identificacion, dbo.PTClien' +
        'te.Nombre, '
      
        '                      dbo.PTCliente.Direccion, dbo.PTCliente.Tel' +
        'efono, dbo.PTCliente.email, dbo.PTCliente.FechaNacimiento, dbo.P' +
        'TCliente.Sexo, dbo.PTCliente.CiudadID, '
      
        '                      dbo.BSDonacion.NotaEntrevista, dbo.BSDonac' +
        'ion.DonacionStatus'
      'FROM         dbo.BSDonacion INNER JOIN'
      
        '                      dbo.PTCliente ON dbo.BSDonacion.PacienteID' +
        ' = dbo.PTCliente.ClienteID'
      'WHERE     (dbo.BSDonacion.DonacionStatus = :Estado)')
    Left = 8
    Top = 3
    object qrDonacionesDonacionID: TStringField
      FieldName = 'DonacionID'
    end
    object qrDonacionesFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object qrDonacionesPacienteID: TStringField
      FieldName = 'PacienteID'
      Size = 10
    end
    object qrDonacionesIdentificacion: TStringField
      FieldName = 'Identificacion'
    end
    object qrDonacionesNombre: TStringField
      FieldName = 'Nombre'
      Size = 80
    end
    object qrDonacionesDireccion: TMemoField
      FieldName = 'Direccion'
      BlobType = ftMemo
    end
    object qrDonacionesTelefono: TStringField
      FieldName = 'Telefono'
      Size = 16
    end
    object qrDonacionesemail: TStringField
      FieldName = 'email'
      Size = 60
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
    object qrDonacionesNotaEntrevista: TMemoField
      FieldName = 'NotaEntrevista'
      BlobType = ftMemo
    end
    object qrDonacionesDonacionStatus: TWideStringField
      FieldName = 'DonacionStatus'
      FixedChar = True
    end
  end
  object dsDatos: TDataSource
    AutoEdit = False
    DataSet = DM.qrDonaciones
    OnDataChange = dsDatosDataChange
    Left = 44
    Top = 3
  end
  object dsPaciente: TDataSource
    DataSet = qrPaciente
    Left = 240
  end
  object dsDonacion: TDataSource
    DataSet = qrDonacion
    Left = 384
  end
  object dsDonante: TDataSource
    DataSet = qrDonante
    Left = 592
  end
  object qrPaciente: TADOQuery
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
      'SELECT     *'
      'FROM       PTCliente'
      'WHERE     (ClienteID = :PacienteID)')
    Left = 208
    Top = 3
    object qrPacienteClienteID: TStringField
      FieldName = 'ClienteID'
      Size = 10
    end
    object qrPacienteNombre: TStringField
      FieldName = 'Nombre'
      Size = 80
    end
    object qrPacienteContacto: TStringField
      FieldName = 'Contacto'
      Size = 80
    end
    object qrPacienteTelefono: TStringField
      FieldName = 'Telefono'
      Size = 16
    end
    object qrPacienteFax: TStringField
      FieldName = 'Fax'
      Size = 16
    end
    object qrPacienteGrupoCliente: TStringField
      FieldName = 'GrupoCliente'
      Size = 10
    end
    object qrPacienteIncluirPrecioTicket: TBooleanField
      FieldName = 'IncluirPrecioTicket'
    end
    object qrPacienteAutoConfirmar: TBooleanField
      FieldName = 'AutoConfirmar'
    end
    object qrPacienteEmpleadoID: TStringField
      FieldName = 'EmpleadoID'
      Size = 10
    end
    object qrPacienteCodigoAxapta: TStringField
      FieldName = 'CodigoAxapta'
      Size = 10
    end
    object qrPacienteemail: TStringField
      FieldName = 'email'
      Size = 60
    end
    object qrPacientedireccionweb: TStringField
      FieldName = 'direccionweb'
      Size = 60
    end
    object qrPacienteTelefono2: TStringField
      FieldName = 'Telefono2'
      Size = 16
    end
    object qrPacienteMonedaID: TStringField
      FieldName = 'MonedaID'
      Size = 3
    end
    object qrPacienteIdentificacion: TStringField
      FieldName = 'Identificacion'
    end
    object qrPacienteOrigen: TIntegerField
      FieldName = 'Origen'
    end
    object qrPacienteDireccion: TMemoField
      FieldName = 'Direccion'
      BlobType = ftMemo
    end
    object qrPacienteCiudadID: TStringField
      FieldName = 'CiudadID'
      Size = 10
    end
    object qrPacientePruebasPorDia: TSmallintField
      FieldName = 'PruebasPorDia'
    end
    object qrPacienteCoberturaPorc: TBCDField
      FieldName = 'CoberturaPorc'
      Precision = 19
    end
    object qrPacientePrincipal: TStringField
      FieldName = 'Principal'
      Size = 10
    end
    object qrPacienteEnvioResultado: TIntegerField
      FieldName = 'EnvioResultado'
    end
    object qrPacientePublicarInternet: TBooleanField
      FieldName = 'PublicarInternet'
    end
    object qrPacienteSexo: TIntegerField
      FieldName = 'Sexo'
    end
    object qrPacienteFechaNacimiento: TDateTimeField
      FieldName = 'FechaNacimiento'
    end
    object qrPacienteSeguro: TStringField
      FieldName = 'Seguro'
      Size = 10
    end
    object qrPacientePoliza: TStringField
      FieldName = 'Poliza'
    end
    object qrPacienteCobrarDiferencia: TBooleanField
      FieldName = 'CobrarDiferencia'
    end
    object qrPacienteEnviarFax: TBooleanField
      FieldName = 'EnviarFax'
    end
    object qrPacienteActivarDescuentos: TBooleanField
      FieldName = 'ActivarDescuentos'
    end
    object qrPacienteUsarAliasNombre: TBooleanField
      FieldName = 'UsarAliasNombre'
    end
    object qrPacienteUsarAliasPrueba: TBooleanField
      FieldName = 'UsarAliasPrueba'
    end
    object qrPacienteSiempreInternet: TBooleanField
      FieldName = 'SiempreInternet'
    end
    object qrPacienteImprimirAliasNombre: TBooleanField
      FieldName = 'ImprimirAliasNombre'
    end
    object qrPacienteImprimirAliasPrueba: TBooleanField
      FieldName = 'ImprimirAliasPrueba'
    end
    object qrPacienteImprimirSoloTotales: TBooleanField
      FieldName = 'ImprimirSoloTotales'
    end
    object qrPacienteImprimirAliasResultados: TBooleanField
      FieldName = 'ImprimirAliasResultados'
    end
    object qrPacienteAlias: TStringField
      FieldName = 'Alias'
      Size = 100
    end
    object qrPacienteQuienPaga: TStringField
      FieldName = 'QuienPaga'
      Size = 5
    end
    object qrPacienteTipoCliente: TStringField
      FieldName = 'TipoCliente'
      Size = 5
    end
    object qrPacienteEntregarResultados: TStringField
      FieldName = 'EntregarResultados'
      Size = 5
    end
    object qrPacienteTextoReferencia: TStringField
      FieldName = 'TextoReferencia'
    end
    object qrPacienteSiempreImprimir: TBooleanField
      FieldName = 'SiempreImprimir'
    end
    object qrPacienteTipoSangre: TStringField
      FieldName = 'TipoSangre'
      Size = 5
    end
    object qrPacientePacienteCiaId: TStringField
      FieldName = 'PacienteCiaId'
      Size = 10
    end
  end
  object qrDonacion: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'DonacionID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *'
      'FROM      BSDonacion'
      'WHERE     (DonacionID = :DonacionID)')
    Left = 352
    Top = 3
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
    object qrDonacionDonacionEstado: TStringField
      FieldName = 'DonacionEstado'
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
  end
  object qrDonante: TADOQuery
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
      'SELECT     *'
      'FROM       BSDonante'
      'WHERE     (PacienteID = :PacienteID)')
    Left = 560
    Top = 3
    object qrDonantePacienteID: TStringField
      FieldName = 'PacienteID'
      Size = 10
    end
    object qrDonanteTipoDonante: TWideStringField
      FieldName = 'TipoDonante'
      FixedChar = True
      Size = 10
    end
    object qrDonanteEstado: TWideStringField
      FieldName = 'Estado'
      FixedChar = True
      Size = 10
    end
    object qrDonanteRechaso: TWideStringField
      FieldName = 'Rechaso'
    end
    object qrDonanteRechasoNota: TWideStringField
      FieldName = 'RechasoNota'
      Size = 100
    end
    object qrDonanteDonanteActivo: TBooleanField
      FieldName = 'DonanteActivo'
    end
  end
  object qrEntradaPaciente: TADOQuery
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
      'Select *  from PTEntradaPaciente'
      'Where EntredaID = :rec')
    Left = 32
    Top = 160
    object qrEntradaPacienteEntredaID: TStringField
      FieldName = 'EntredaID'
    end
    object qrEntradaPacienteFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object qrEntradaPacientePacienteID: TStringField
      DisplayLabel = 'Paciente'
      FieldName = 'PacienteID'
      Required = True
      Size = 10
    end
    object qrEntradaPacienteClienteID: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'ClienteID'
      Required = True
      Size = 10
    end
    object qrEntradaPacienteDoctorID: TStringField
      DisplayLabel = 'Doctor'
      FieldName = 'DoctorID'
      Size = 10
    end
    object qrEntradaPacientePolizaID: TStringField
      DisplayLabel = 'Poliza'
      FieldName = 'PolizaID'
    end
    object qrEntradaPacienteEnClinica: TBooleanField
      FieldName = 'EnClinica'
    end
    object qrEntradaPacienteRecordClinica: TStringField
      FieldName = 'RecordClinica'
    end
    object qrEntradaPacienteResultadoPaciente: TIntegerField
      FieldName = 'ResultadoPaciente'
    end
    object qrEntradaPacienteResultadoDoctor: TIntegerField
      FieldName = 'ResultadoDoctor'
    end
    object qrEntradaPacienteFechaPrometida: TDateTimeField
      DisplayLabel = 'Fecha Prometida'
      FieldName = 'FechaPrometida'
    end
    object qrEntradaPacienteHoraPrometida: TStringField
      FieldName = 'HoraPrometida'
      Size = 10
    end
    object qrEntradaPacienteFlebotomistaID: TStringField
      FieldName = 'FlebotomistaID'
      Size = 10
    end
    object qrEntradaPacienteNota: TMemoField
      FieldName = 'Nota'
      BlobType = ftMemo
    end
    object qrEntradaPacienteCoberturaConfirmada: TBooleanField
      FieldName = 'CoberturaConfirmada'
    end
    object qrEntradaPacienteProyectoID: TStringField
      FieldName = 'ProyectoID'
    end
    object qrEntradaPacienteRecid: TLargeintField
      FieldName = 'Recid'
    end
    object qrEntradaPacienteBruto: TBCDField
      FieldName = 'Bruto'
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
    object qrEntradaPacienteDescuento: TBCDField
      FieldName = 'Descuento'
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
    object qrEntradaPacienteSubTotal: TBCDField
      FieldName = 'SubTotal'
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
    object qrEntradaPacienteCoberturaSeguro: TBCDField
      FieldName = 'CoberturaSeguro'
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
    object qrEntradaPacienteNeto: TBCDField
      FieldName = 'Neto'
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
    object qrEntradaPacienteNombrePaciente: TStringField
      FieldName = 'NombrePaciente'
      Size = 80
    end
    object qrEntradaPacienteDireccion: TMemoField
      FieldName = 'Direccion'
      BlobType = ftMemo
    end
    object qrEntradaPacienteTelefonos: TStringField
      FieldName = 'Telefonos'
      Size = 16
    end
    object qrEntradaPacienteEmail: TStringField
      FieldName = 'Email'
      Size = 50
    end
    object qrEntradaPacienteClienteNombre: TStringField
      FieldName = 'ClienteNombre'
      Size = 80
    end
    object qrEntradaPacienteSucursalId: TStringField
      FieldName = 'SucursalId'
      Size = 10
    end
    object qrEntradaPacienteUserID: TStringField
      FieldName = 'UserID'
      Size = 10
    end
    object qrEntradaPacienteTotalPendiente: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TotalPendiente'
      DisplayFormat = '##,###,##0.00'
      Calculated = True
    end
    object qrEntradaPacienteCobroID: TStringField
      FieldName = 'CobroID'
      Size = 10
    end
    object qrEntradaPacienteTotalPagado: TBCDField
      FieldName = 'TotalPagado'
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
    object qrEntradaPacienteHoraEntrada: TStringField
      FieldName = 'HoraEntrada'
      Size = 10
    end
    object qrEntradaPacientePrioridad: TIntegerField
      FieldName = 'Prioridad'
    end
    object qrEntradaPacienteFax: TStringField
      FieldName = 'Fax'
      Size = 16
    end
    object qrEntradaPacienteTipoDocumento: TIntegerField
      FieldName = 'TipoDocumento'
      Required = True
    end
    object qrEntradaPacienteCoberturaPorc: TBCDField
      FieldName = 'CoberturaPorc'
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
    object qrEntradaPacienteCoberturaValor: TBCDField
      FieldName = 'CoberturaValor'
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
    object qrEntradaPacienteDescuentoPorc: TBCDField
      FieldName = 'DescuentoPorc'
      Precision = 19
    end
    object qrEntradaPacienteDescuentoValor: TBCDField
      FieldName = 'DescuentoValor'
      Precision = 19
    end
    object qrEntradaPacienteAprobadoPor: TStringField
      FieldName = 'AprobadoPor'
      Size = 50
    end
    object qrEntradaPacienteMuestraNo: TStringField
      FieldName = 'MuestraNo'
    end
    object qrEntradaPacienteAprobacionNo: TStringField
      FieldName = 'AprobacionNo'
    end
    object qrEntradaPacienteMonedaID: TStringField
      FieldName = 'MonedaID'
      Size = 3
    end
    object qrEntradaPacienteFechaEntrada: TDateTimeField
      DisplayLabel = 'Fecha de Ingreso'
      FieldName = 'FechaEntrada'
    end
    object qrEntradaPacienteCoberturaExpPorc: TBooleanField
      FieldName = 'CoberturaExpPorc'
    end
    object qrEntradaPacienteEdadPaciente: TBCDField
      FieldName = 'EdadPaciente'
      Precision = 19
    end
    object qrEntradaPacienteNombreDoctor: TStringField
      FieldName = 'NombreDoctor'
      Size = 80
    end
    object qrEntradaPacientePublicarInternet: TBooleanField
      FieldName = 'PublicarInternet'
    end
    object qrEntradaPacienteOrigen: TStringField
      FieldName = 'Origen'
      Required = True
      Size = 10
    end
    object qrEntradaPacienteCarnet: TStringField
      FieldName = 'Carnet'
    end
    object qrEntradaPacientePublicarInternetDoctor: TBooleanField
      FieldName = 'PublicarInternetDoctor'
    end
    object qrEntradaPacienteCuadreGlobal: TStringField
      FieldName = 'CuadreGlobal'
    end
    object qrEntradaPacienteCuadreUsuario: TStringField
      FieldName = 'CuadreUsuario'
    end
    object qrEntradaPacienteDescAutorizadoPor: TStringField
      FieldName = 'DescAutorizadoPor'
      Size = 10
    end
    object qrEntradaPacienteGastosVarios: TBCDField
      FieldName = 'GastosVarios'
      Precision = 19
    end
    object qrEntradaPacienteNoAS400: TBooleanField
      FieldName = 'NoAS400'
    end
    object qrEntradaPacienteNoAxapta: TBooleanField
      FieldName = 'NoAxapta'
    end
    object qrEntradaPacienteNoFactura: TBooleanField
      FieldName = 'NoFactura'
    end
    object qrEntradaPacienteFactExterior: TBooleanField
      FieldName = 'FactExterior'
    end
    object qrEntradaPacienteHold: TBooleanField
      FieldName = 'Hold'
    end
    object qrEntradaPacienteRepMuestra: TBooleanField
      FieldName = 'RepMuestra'
    end
    object qrEntradaPacienteEntradaIdAnt: TStringField
      FieldName = 'EntradaIdAnt'
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
    Left = 32
    Top = 208
    object qrEntradaPacienteDetallePruebaID: TStringField
      FieldName = 'PruebaID'
    end
    object qrEntradaPacienteDetalleComboPruebaID: TStringField
      FieldName = 'ComboPruebaID'
      Size = 10
    end
    object qrEntradaPacienteDetallePrecio: TBCDField
      FieldName = 'Precio'
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
    object qrEntradaPacienteDetalleDescuento: TBCDField
      FieldName = 'Descuento'
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
    object qrEntradaPacienteDetalleDescuentoExtra: TBCDField
      FieldName = 'DescuentoExtra'
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
    object qrEntradaPacienteDetalleCodigoAutorizacion: TStringField
      FieldName = 'CodigoAutorizacion'
    end
    object qrEntradaPacienteDetalleTotalLinea: TBCDField
      FieldName = 'TotalLinea'
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
    object qrEntradaPacienteDetalleRefRecid: TLargeintField
      FieldName = 'RefRecid'
    end
    object qrEntradaPacienteDetalleSecuencia: TLargeintField
      FieldName = 'Secuencia'
    end
    object qrEntradaPacienteDetalleDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 80
    end
    object qrEntradaPacienteDetalleDescPct: TBCDField
      FieldName = 'DescPct'
      DisplayFormat = '##0.00'
      Precision = 19
    end
    object qrEntradaPacienteDetalleCoberturaAplica: TBooleanField
      FieldName = 'CoberturaAplica'
    end
    object qrEntradaPacienteDetalleCoberturaEspecial: TBCDField
      FieldName = 'CoberturaEspecial'
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
    object qrEntradaPacienteDetalleCoberturaEspecialPorc: TBCDField
      FieldName = 'CoberturaEspecialPorc'
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
    object qrEntradaPacienteDetalleCoberturaAplicada: TBCDField
      FieldName = 'CoberturaAplicada'
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
    object qrEntradaPacienteDetalleDescuentoLineaAplicado: TBCDField
      FieldName = 'DescuentoLineaAplicado'
      Precision = 19
    end
    object qrEntradaPacienteDetalleMuestraNo: TStringField
      FieldName = 'MuestraNo'
    end
    object qrEntradaPacienteDetalleComentario: TMemoField
      FieldName = 'Comentario'
      BlobType = ftMemo
    end
    object qrEntradaPacienteDetalleCoberturaExpPorc: TBooleanField
      FieldName = 'CoberturaExpPorc'
    end
    object qrEntradaPacienteDetalleRepMuestra: TBooleanField
      FieldName = 'RepMuestra'
    end
    object qrEntradaPacienteDetalleMuestraAnt: TStringField
      FieldName = 'MuestraAnt'
    end
  end
  object dsEntradaPacienteDetalle: TDataSource
    DataSet = qrEntradaPacienteDetalle
    Left = 104
    Top = 208
  end
  object dsEntradaPaciente: TDataSource
    AutoEdit = False
    DataSet = qrEntradaPaciente
    Left = 104
    Top = 160
  end
  object ppEntradaPaciente: TppDBPipeline
    DataSource = dsEntradaPaciente
    UserName = 'EntradaPaciente'
    Left = 160
    Top = 160
  end
  object ppEntradaPacienteDetalle: TppDBPipeline
    DataSource = dsEntradaPacienteDetalle
    UserName = 'EntradaPacienteDetalle'
    Left = 160
    Top = 208
  end
  object dsPruebas: TDataSource
    AutoEdit = False
    DataSet = qrPruebas
    Left = 64
    Top = 336
  end
  object qrPruebas: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *  from BSPrueba')
    Left = 32
    Top = 336
    object qrPruebasPruebaID: TStringField
      FieldName = 'PruebaID'
    end
    object qrPruebasalias: TStringField
      FieldName = 'alias'
      Size = 80
    end
    object qrPruebasDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 80
    end
  end
  object qrTipoDonacion: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *  from BSTipoFunda')
    Left = 528
    Top = 344
    object qrTipoDonacionTipoFundaID: TWideStringField
      FieldName = 'TipoFundaID'
      FixedChar = True
      Size = 2
    end
    object qrTipoDonacionTipoFundaDes: TWideStringField
      FieldName = 'TipoFundaDes'
      Size = 50
    end
    object qrTipoDonacionDias: TIntegerField
      FieldName = 'Dias'
    end
  end
  object dsTipoDonacion: TDataSource
    AutoEdit = False
    DataSet = qrTipoDonacion
    Left = 560
    Top = 344
  end
  object qrHemogramas: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'MuestraNo'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *'
      'FROM      BSHemogramas'
      'WHERE     (MuestraNo = :MuestraNo)')
    Left = 328
    Top = 339
    object qrHemogramasMuestraNo: TStringField
      FieldName = 'MuestraNo'
    end
    object qrHemogramasHemoglobina: TStringField
      FieldName = 'Hemoglobina'
      Size = 15
    end
    object qrHemogramasHematocito: TStringField
      FieldName = 'Hematocito'
      Size = 15
    end
    object qrHemogramasGlobulosBlancos: TStringField
      FieldName = 'GlobulosBlancos'
      Size = 15
    end
    object qrHemogramasPlaquetas: TStringField
      FieldName = 'Plaquetas'
      Size = 15
    end
  end
  object dsHemogramas: TDataSource
    DataSet = qrHemogramas
    Left = 360
    Top = 336
  end
end
