inherited frmDialogConsultaPerfilGenetico: TfrmDialogConsultaPerfilGenetico
  BorderIcons = [biSystemMenu]
  Caption = 'Consulta Pacientes Perfil Gen'#233'tico Base'
  ClientHeight = 542
  ClientWidth = 943
  FormStyle = fsStayOnTop
  KeyPreview = True
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  ExplicitWidth = 951
  ExplicitHeight = 576
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 943
    Height = 542
    Align = alNone
    ExplicitWidth = 943
    ExplicitHeight = 542
    inherited edbuscarpor: TcxComboBox
      Properties.Items.Strings = (
        'Telefono'
        'Nombre'
        'Cedula')
    end
    inherited edbuscar: TcxTextEdit
      Properties.CharCase = ecUpperCase
      Properties.OnChange = edbuscarPropertiesChange
      OnExit = edbuscarExit
    end
    inherited cgDatos: TcxGrid
      Top = 79
      Width = 921
      Height = 390
      TabOrder = 4
      OnEnter = cgDatosEnter
      OnExit = cgDatosExit
      ExplicitTop = 79
      ExplicitWidth = 921
      ExplicitHeight = 390
      inherited dbDatos: TcxGridDBTableView
        DataController.KeyFieldNames = 'Recid'
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = dbDatosRecID
          end>
        OptionsView.Footer = True
        object dbDatosRecID: TcxGridDBColumn
          Caption = 'Recid'
          DataBinding.FieldName = 'RecID'
          HeaderAlignmentHorz = taCenter
          Width = 83
        end
        object dbDatosNombre: TcxGridDBColumn
          Caption = 'Nombre del Paciente'
          DataBinding.FieldName = 'Nombre'
          HeaderAlignmentHorz = taCenter
          Width = 342
        end
        object dbDatosTipo: TcxGridDBColumn
          DataBinding.FieldName = 'Tipo'
          HeaderAlignmentHorz = taCenter
          Width = 192
        end
        object dbDatosIdentificacion: TcxGridDBColumn
          Caption = 'Cedula'
          DataBinding.FieldName = 'Identificacion'
          HeaderAlignmentHorz = taCenter
          Width = 172
        end
        object dbDatosTelefono: TcxGridDBColumn
          DataBinding.FieldName = 'Telefono'
          HeaderAlignmentHorz = taCenter
          Width = 118
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
      TabOrder = 7
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
      TabOrder = 6
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
      TabOrder = 5
      OnClick = BtNuevoClick
    end
    object btnAdd: TcxButton [6]
      Left = 545
      Top = 36
      Width = 75
      Height = 30
      Caption = 'Inserta '#13#10'Paciente'
      TabOrder = 2
      OnClick = btnAddClick
    end
    object cxLabel1: TcxLabel [7]
      Left = 626
      Top = 36
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
    inherited dxLayoutControl1Group_Root: TdxLayoutGroup
      inherited dxLayoutControl1Group1: TdxLayoutGroup
        object dxLayoutControl1Item8: TdxLayoutItem
          Caption = 'cxButton1'
          ShowCaption = False
          Control = btnAdd
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item7: TdxLayoutItem
          Caption = 'New Item'
          ShowCaption = False
          Control = cxLabel1
          ControlOptions.ShowBorder = False
        end
      end
      inherited dxLayoutControl1Item4: TdxLayoutItem
        AutoAligns = []
        CaptionOptions.ShowAccelChar = False
        ControlOptions.AutoAlignment = False
      end
      inherited dxLayoutControl1Group2: TdxLayoutGroup
        object dxLayoutControl1Item3: TdxLayoutItem [0]
          ShowCaption = False
          Control = BtNuevo
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object spPerfilGenetico: TLMDSimplePanel [1]
    Left = 240
    Top = 79
    Width = 432
    Height = 243
    Bevel.StyleInner = bvFrameLowered
    Bevel.StyleOuter = bvFrameRaised
    Bevel.BorderWidth = 8
    Bevel.BorderInnerWidth = 2
    Bevel.LightColor = 12582911
    Bevel.Mode = bmCustom
    Bevel.StandardStyle = lsLowered
    Color = clMenuBar
    TabOrder = 1
    Visible = False
    object LMDLabel2: TLMDLabel
      Left = 13
      Top = 11
      Width = 405
      Height = 19
      Bevel.StyleInner = bvShadow
      Bevel.StyleOuter = bvShadow
      Bevel.WidthOuter = 2
      Bevel.LightColor = clBlack
      Bevel.Mode = bmCustom
      FontFX.LightColor = clSilver
      FontFX.ShadowColor = clBlack
      FontFX.Tracing = 1
      Alignment = agCenter
      AutoSize = False
      Color = clActiveCaption
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Options = []
      ParentColor = False
      ParentFont = False
      Transparent = False
      Caption = 'Mantenimiento Pacientes Perfil Gen'#233'tico Base'
    end
    object btCancelarNCF: TLMDButton
      Left = 335
      Top = 183
      Width = 80
      Height = 41
      Caption = '&Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btCancelarNCFClick
      ButtonLayout.AlignText2Glyph = taBottom
      ButtonLayout.Spacing = 0
      ListIndex = 15
      NumGlyphs = 2
    end
    object btAceptaPG: TLMDButton
      Left = 249
      Top = 183
      Width = 80
      Height = 41
      Caption = '&Aceptar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btAceptaPGClick
      ButtonLayout.AlignText2Glyph = taBottom
      ButtonLayout.Spacing = 0
      ListIndex = 15
      NumGlyphs = 2
    end
    object mskDocumento: TcxMaskEdit
      Left = 117
      Top = 63
      Properties.CharCase = ecUpperCase
      Properties.EditMask = '###-#######-#'
      Properties.MaxLength = 0
      TabOrder = 2
      Text = '   -     - - '
      Width = 81
    end
    object txtNombre: TcxTextEdit
      Left = 117
      Top = 88
      Properties.CharCase = ecUpperCase
      TabOrder = 3
      Width = 299
    end
    object cxLabel4: TcxLabel
      Left = 41
      Top = 67
      Caption = 'C'#233'dula:'
    end
    object cxLabel5: TcxLabel
      Left = 41
      Top = 92
      Caption = 'Nombre :'
    end
    object cxLabel2: TcxLabel
      Left = 41
      Top = 42
      Caption = 'Documento:'
    end
    object cbExtDocumento: TcxExtLookupComboBox
      Left = 117
      Top = 38
      RepositoryItem = DM.elcDocumento
      Properties.CharCase = ecUpperCase
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 7
      Width = 191
    end
    object cxLabel9: TcxLabel
      Left = 41
      Top = 113
      Caption = 'Sexo:'
    end
    object CbSexo: TcxDBImageComboBox
      Left = 117
      Top = 112
      DataBinding.DataField = 'Sexo'
      Properties.Alignment.Horz = taLeftJustify
      Properties.Items = <
        item
          Description = 'FEMENINO'
          ImageIndex = 0
          Value = 0
        end
        item
          Description = 'MASCULINO'
          Value = 1
        end>
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 9
      Width = 121
    end
    object cxLabel10: TcxLabel
      Left = 42
      Top = 136
      Caption = 'Fecha Nac.:'
    end
    object EdFechaBorn: TcxDBDateEdit
      Left = 117
      Top = 136
      DataBinding.DataField = 'Fecha_Nacimiento'
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 11
      Width = 121
    end
    object cxLabel11: TcxLabel
      Left = 41
      Top = 163
      Caption = 'Tel'#233'fono:'
    end
    object mskTelResidencia: TcxDBMaskEdit
      Left = 117
      Top = 159
      DataBinding.DataField = 'Tel_Residencia'
      Properties.CharCase = ecUpperCase
      Properties.MaskKind = emkRegExprEx
      Properties.EditMask = '(\(\d\d\d\))-\d\d\d-\d\d\d\d'
      Properties.MaxLength = 0
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 13
      Width = 121
    end
  end
  inherited dsDatos: TDataSource
    DataSet = qrPacientes
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
      'Select top 1 p.*,r.Nombre as Tipo ,c.Direccion,c.Clienteid,'
      
        'c.Telefono2,c.Fax,c.Email,c.CiudadID,c.EnvioResultado,c.CobrarDi' +
        'ferencia,c.PublicarInternet,'
      'c.FechaNacimiento'
      'FROM ptPerfilGenetico p '
      
        'Inner Join ptParentesco  r On r.id = p.parentesco inner join ptc' +
        'liente c On'
      'substring(c.identificacion,1,14)=p.identificacion+'#39'0'#39
      'Where r.Estatus='#39'A'#39)
    Left = 272
    Top = 407
    object qrPacientesRecID: TIntegerField
      FieldName = 'RecID'
    end
    object qrPacientesIdentificacion: TStringField
      FieldName = 'Identificacion'
    end
    object qrPacientesNombre: TStringField
      FieldName = 'Nombre'
      Size = 80
    end
    object qrPacientesParentesco: TIntegerField
      FieldName = 'Parentesco'
    end
    object qrPacientesFecha_Nac: TDateTimeField
      FieldName = 'Fecha_Nac'
    end
    object qrPacientesTelefono: TStringField
      FieldName = 'Telefono'
    end
    object qrPacientesNum_Caso: TStringField
      FieldName = 'Num_Caso'
      Size = 8
    end
    object qrPacientesFecha_Rec: TDateTimeField
      FieldName = 'Fecha_Rec'
    end
    object qrPacientesTipo: TStringField
      FieldName = 'Tipo'
      Size = 50
    end
    object qrPacientesClienteid: TStringField
      FieldName = 'Clienteid'
      Size = 10
    end
    object qrPacientesTelefono2: TStringField
      FieldName = 'Telefono2'
    end
    object qrPacientesFax: TStringField
      FieldName = 'Fax'
    end
    object qrPacientesEmail: TStringField
      FieldName = 'Email'
      Size = 80
    end
    object qrPacientesCiudadID: TStringField
      FieldName = 'CiudadID'
      Size = 10
    end
    object qrPacientesEnvioResultado: TIntegerField
      FieldName = 'EnvioResultado'
    end
    object qrPacientesCobrarDiferencia: TIntegerField
      FieldName = 'CobrarDiferencia'
    end
    object qrPacientesPublicarInternet: TIntegerField
      FieldName = 'PublicarInternet'
    end
    object qrPacientesSexo: TWordField
      FieldName = 'Sexo'
    end
    object qrPacientesFechaNacimiento: TDateTimeField
      FieldName = 'FechaNacimiento'
    end
    object qrPacientesDireccion: TStringField
      FieldName = 'Direccion'
      Size = 255
    end
  end
  object QrParentesco: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from ptParentesco'
      'Where Estatus='#39'A'#39)
    Left = 272
    Top = 359
    object QrParentescoId: TIntegerField
      FieldName = 'Id'
    end
    object QrParentescoNombre: TStringField
      FieldName = 'Nombre'
      Size = 50
    end
    object QrParentescoClave: TStringField
      FieldName = 'Clave'
    end
    object QrParentescoEstatus: TStringField
      FieldName = 'Estatus'
      FixedChar = True
      Size = 1
    end
  end
  object DsParentesco: TDataSource
    AutoEdit = False
    DataSet = QrParentesco
    Left = 324
    Top = 359
  end
end
