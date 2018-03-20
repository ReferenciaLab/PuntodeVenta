inherited frmDatosTarjeta: TfrmDatosTarjeta
  Caption = 'Tarjeta de Cliente'
  ClientHeight = 318
  ClientWidth = 821
  OnDestroy = nil
  OnKeyUp = nil
  OnPaint = nil
  ExplicitWidth = 829
  ExplicitHeight = 352
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 821
    Height = 285
    ExplicitWidth = 821
    ExplicitHeight = 285
    inherited pcDatos: TcxPageControl
      ClientRectBottom = 517
      ClientRectRight = 736
      ClientRectTop = 24
      inherited tsMain: TcxTabSheet
        inherited lcGrid: TdxLayoutControl
          inherited dgDatos: TcxGrid
            Width = 671
            Height = 179
            ExplicitWidth = 671
            ExplicitHeight = 179
            inherited tvDatos: TcxGridDBTableView
              DataController.KeyFieldNames = 'TarjetaID'
              object tvDatosTarjetaID: TcxGridDBColumn
                DataBinding.FieldName = 'TarjetaID'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 75
              end
              object tvDatosPacienteId: TcxGridDBColumn
                DataBinding.FieldName = 'PacienteId'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 74
              end
              object tvDatosNombrePaciente: TcxGridDBColumn
                DataBinding.FieldName = 'NombrePaciente'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 275
              end
              object tvDatosPuntosTotal: TcxGridDBColumn
                DataBinding.FieldName = 'Ptos. Total'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 84
              end
              object tvDatosPuntosUsados: TcxGridDBColumn
                DataBinding.FieldName = 'Ptos. Usados'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 87
              end
              object tvDatosEstatus: TcxGridDBColumn
                DataBinding.FieldName = 'Estatus'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 62
              end
            end
            object dbGridTarjetaDetTV: TcxGridDBTableView [1]
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = dsTarjetaDet
              DataController.DetailKeyFieldNames = 'TarjetaID'
              DataController.MasterKeyFieldNames = 'TarjetaID'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skSum
                  Column = dbGridTarjetaDetTVMontoPagado
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              Styles.Background = dmAppActions.cxStyle8
              Styles.Content = dmAppActions.cxStyle8
              Styles.Footer = dmAppActions.cxStyle8
              object dbGridTarjetaDetTVTarjetaID: TcxGridDBColumn
                DataBinding.FieldName = 'TarjetaID'
                HeaderAlignmentHorz = taCenter
              end
              object dbGridTarjetaDetTVFecha: TcxGridDBColumn
                DataBinding.FieldName = 'Fecha'
                HeaderAlignmentHorz = taCenter
              end
              object dbGridTarjetaDetTVMontoPagado: TcxGridDBColumn
                DataBinding.FieldName = 'MontoPagado'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
              end
            end
            inherited lvDatos: TcxGridLevel
              object dbGridTarjetaDet: TcxGridLevel
                GridView = dbGridTarjetaDetTV
              end
            end
          end
        end
      end
      inherited tsDatos: TcxTabSheet
        inherited lcDatos: TdxLayoutControl
          object EdTarjetaId: TcxDBTextEdit [0]
            Tag = 99
            Left = 100
            Top = 36
            DataBinding.DataField = 'TarjetaID'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 6
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 0
            OnExit = EdTarjetaIdExit
            OnKeyUp = EdTarjetaIdKeyUp
            Width = 60
          end
          object cxDBSpinEdit1: TcxDBSpinEdit [1]
            Left = 100
            Top = 90
            DataBinding.DataField = 'PuntosTotal'
            DataBinding.DataSource = dsDatos
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.Color = clAqua
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            StyleFocused.Color = clAqua
            StyleHot.Color = clAqua
            TabOrder = 4
            Width = 121
          end
          object EdPaciente: TcxDBTextEdit [2]
            Tag = 99
            Left = 100
            Top = 63
            DataBinding.DataField = 'PacienteId'
            DataBinding.DataSource = dsDatos
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 1
            Width = 60
          end
          object btPacientes: TcxButton [3]
            Left = 403
            Top = 63
            Width = 23
            Height = 21
            Hint = 'Reg.  Nuevo Paciente'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            OnClick = btPacientesClick
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00398C31002A902A00398C3100398C3100398C3100398C3100398C3100398C
              31001D871A0013841300398C3100398C3100FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00398C310035B035003DB73D003DB73D004ABD4A007DD272004DA5490059A8
              520074C5690037B137001C961C000C850C00398C3100FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00398C31003DB73D0051C151006ECE6B0082CE7700D0F0CC0052A5
              4A009CD98F0052C5520036AB36001F8B1F00299C2900FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00299C29003DB73D0066CC64007FCC740052A54A00FFFCF90052A5
              4A0099D88D0065CB65003EAD3E00299C2900FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00299C2900398C31004A8C4200D0F0CC00FFF5EC00ACBE
              9A004A8C4200398C3100299C2900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002E89A600328FCD002F8CCA003187
              A200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF004D9DD30043A8E90042A7E8003CA1E3002D93
              D6002E87AC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF004D9DD3004FB4F2004BB0EE0042A7E8003A9F
              E2004D9DD300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF004693C90053B8F40055BAF6004FB4F20046ABEB003FA4
              E6002E94D800107BB500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF001E73AF0055B9F50057BCF80050B5F30047ACEB0040A5
              E6003193D6003F7FA300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF0034769A00388EC5004CA4D700469ED2003B94CA00328C
              C4002B8DCA0039738C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF004080A4004382A6004080A30038799D002A6C92001F63
              8A0039738C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF003F7FA3004F8DAF003E7FA2002F7196002165
              8B003F7FA300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003F7FA3003F7FA3002F7196003F7F
              A300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
          end
          object cxDBSpinEdit2: TcxDBSpinEdit [4]
            Left = 100
            Top = 117
            DataBinding.DataField = 'PuntosUsados'
            DataBinding.DataSource = dsDatos
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.Color = clAqua
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            StyleFocused.Color = clAqua
            StyleHot.Color = clAqua
            TabOrder = 5
            Width = 121
          end
          object cxDBTextEdit4: TcxDBTextEdit [5]
            Left = 100
            Top = 144
            DataBinding.DataField = 'UserEmision'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.Color = clAqua
            Style.HotTrack = False
            StyleDisabled.Color = clBtnFace
            TabOrder = 6
            Width = 121
          end
          object cxDBDateEdit4: TcxDBDateEdit [6]
            Left = 262
            Top = 144
            DataBinding.DataField = 'FechaEmision'
            DataBinding.DataSource = dsDatos
            ParentFont = False
            Properties.DateButtons = [btnClear, btnToday]
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.Color = clAqua
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            Style.IsFontAssigned = True
            TabOrder = 7
            Width = 129
          end
          object cxDBCheckBox1: TcxDBCheckBox [7]
            Left = 100
            Top = 171
            DataBinding.DataField = 'Estatus'
            DataBinding.DataSource = dsDatos
            Properties.DisplayUnchecked = '0'
            Properties.DisplayGrayed = '0'
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 8
            Width = 21
          end
          object lblNombrePaciente: TcxLabel [8]
            Left = 166
            Top = 63
            Anchors = [akTop]
            AutoSize = False
            ParentColor = False
            ParentShowHint = False
            Properties.LabelStyle = cxlsLowered
            ShowHint = True
            Style.BorderStyle = ebs3D
            Style.Color = clAqua
            Style.Edges = [bLeft, bTop, bRight, bBottom]
            Style.HotTrack = False
            Style.LookAndFeel.Kind = lfOffice11
            Style.Shadow = False
            Style.TransparentBorder = False
            StyleDisabled.BorderStyle = ebsNone
            StyleDisabled.LookAndFeel.Kind = lfOffice11
            StyleFocused.BorderStyle = ebsNone
            StyleFocused.LookAndFeel.Kind = lfOffice11
            StyleHot.BorderStyle = ebsNone
            StyleHot.LookAndFeel.Kind = lfOffice11
            Height = 21
            Width = 231
          end
          inherited Group_Root: TdxLayoutGroup
            object lcDatosGroup1: TdxLayoutGroup
              Caption = 'General'
              object lcDatosItem1: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Tarjeta Id'
                Control = EdTarjetaId
                ControlOptions.ShowBorder = False
              end
              object lcDatosGroup2: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object lcDatosItem7: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'PacienteID'
                  Control = EdPaciente
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem8: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = lblNombrePaciente
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem6: TdxLayoutItem
                  Caption = 'New Item'
                  ShowCaption = False
                  Control = btPacientes
                  ControlOptions.ShowBorder = False
                end
              end
              object lcDatosGroup4: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object lcDatosItem3: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Total Puntos'
                  Control = cxDBSpinEdit1
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem2: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Puntos Usados'
                  Control = cxDBSpinEdit2
                  ControlOptions.ShowBorder = False
                end
              end
              object lcDatosGroup3: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object lcDatosGroup5: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object lcDatosItem5: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'Usuario'
                    Control = cxDBTextEdit4
                    ControlOptions.ShowBorder = False
                  end
                  object lcDatosItem4: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'Fecha'
                    Control = cxDBDateEdit4
                    ControlOptions.ShowBorder = False
                  end
                end
                object lcDatosItem12: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Activo'
                  Control = cxDBCheckBox1
                  ControlOptions.ShowBorder = False
                end
              end
            end
          end
        end
      end
    end
    object btBuscarPac: TcxButton [1]
      Left = 705
      Top = 7
      Width = 104
      Height = 25
      Caption = 'F3-Buscar Pacientes'
      TabOrder = 1
      OnClick = btBuscarPacClick
    end
    object btBuscarTarjeta: TcxButton [2]
      Left = 705
      Top = 38
      Width = 104
      Height = 25
      Caption = 'F5-Buscar Tarjeta'
      TabOrder = 2
      OnClick = btBuscarTarjetaClick
    end
    object btImprimir: TcxButton [3]
      Left = 705
      Top = 69
      Width = 75
      Height = 25
      Caption = 'F9 - Imprimir'
      TabOrder = 3
      OnClick = btImprimirClick
    end
    inherited dxLayoutGroup2: TdxLayoutGroup
      inherited dxLayoutControl1Group_Root: TdxLayoutGroup
        inherited lgBotones: TdxLayoutGroup
          object dxLayoutControl1Item2: TdxLayoutItem
            Caption = 'New Item'
            ShowCaption = False
            Control = btBuscarPac
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item3: TdxLayoutItem
            Caption = 'New Item'
            ShowCaption = False
            Control = btBuscarTarjeta
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item1: TdxLayoutItem
            Caption = 'New Item'
            ShowCaption = False
            Control = btImprimir
            ControlOptions.ShowBorder = False
          end
        end
      end
    end
  end
  inherited pnCaption: TPanel
    Width = 821
    ExplicitWidth = 821
  end
  inherited formStorage: TJvFormStorage
    Left = 488
    Top = 190
  end
  inherited dsDatos: TDataSource
    DataSet = qrTarjeta
    Left = 52
  end
  inherited dxPrintGrid: TdxComponentPrinter
    Left = 484
    Top = 220
    inherited dxPrintGridLink: TdxGridReportLink
      ReportDocument.CreationDate = 38922.351883680550000000
      BuiltInReportLink = True
    end
    inherited dxPrintGridDatos: TdxLayoutControlReportLink
      ReportDocument.CreationDate = 38922.351883854160000000
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
  inherited cxGridPopupMenu: TcxGridPopupMenu
    Left = 512
    Top = 152
  end
  inherited cxGridStyles: TcxStyleRepository
    Left = 480
    Top = 156
  end
  inherited SaveDialog: TSaveDialog
    Left = 449
    Top = 256
  end
  inherited qryHelper: TADOQuery
    Left = 428
    Top = 2
  end
  inherited alEdit: TActionList
    Left = 412
    Top = 56
  end
  inherited pmCustom: TPopupMenu
    Left = 448
    Top = 60
  end
  inherited qrDefaultView: TADOQuery
    Left = 488
    Top = 2
  end
  inherited strView: TJvStrHolder
    Top = 92
  end
  inherited strTableNames: TJvStrHolder
    Left = 488
    Top = 252
  end
  inherited cxStyleRepository1: TcxStyleRepository
    Left = 440
    Top = 212
  end
  inherited qrUserFields: TABSQuery
    Left = 368
    Top = 36
  end
  inherited qrVistas: TABSQuery
    Left = 436
    Top = 88
  end
  inherited cxIntl1: TcxIntl
    Left = 456
  end
  object qrTarjeta: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    BeforeEdit = qrTarjetaBeforeEdit
    AfterPost = qrTarjetaAfterPost
    BeforeDelete = qrTarjetaBeforeDelete
    OnNewRecord = qrTarjetaNewRecord
    Parameters = <>
    SQL.Strings = (
      'Select *  From PTTarjeta')
    Left = 16
    Top = 2
    object qrTarjetaTarjetaID: TStringField
      FieldName = 'TarjetaID'
    end
    object qrTarjetaPacienteId: TStringField
      FieldName = 'PacienteId'
      Size = 10
    end
    object qrTarjetaPuntosTotal: TIntegerField
      FieldName = 'PuntosTotal'
    end
    object qrTarjetaPuntosUsados: TIntegerField
      FieldName = 'PuntosUsados'
    end
    object qrTarjetaUserEmision: TStringField
      FieldName = 'UserEmision'
      Size = 10
    end
    object qrTarjetaFechaEmision: TDateTimeField
      FieldName = 'FechaEmision'
    end
    object qrTarjetaUserModifica: TStringField
      FieldName = 'UserModifica'
      Size = 10
    end
    object qrTarjetaFechaModifica: TDateTimeField
      FieldName = 'FechaModifica'
    end
    object qrTarjetaEstatus: TBooleanField
      FieldName = 'Estatus'
    end
    object qrTarjetaNombrePaciente: TStringField
      FieldKind = fkLookup
      FieldName = 'NombrePaciente'
      LookupDataSet = qrPaciente
      LookupKeyFields = 'CLIENTEID'
      LookupResultField = 'NOMBRE'
      KeyFields = 'PacienteId'
      Size = 80
      Lookup = True
    end
    object qrTarjetaIdentificacion: TStringField
      FieldName = 'Identificacion'
    end
  end
  object qrReporte: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CteID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'select top 1 d.Usuario_Toma,p.Nombres,p.Apellidos,year(getdate()' +
        ')-Year(p.fecha_nacimiento) as Edad,'
      
        'p.Documento,case when tipo_cliente = '#39'P'#39' Then '#39'x'#39' else '#39#39' end as' +
        ' bPrivado,'
      'case when tipo_cliente = '#39'S'#39' Then '#39'x'#39' else '#39#39' end as bSeguro,'
      'Tel_Residencia,Tel_Oficina,Tel_Celular,Direccion,d.Fecha,d.Hora,'
      'case when Resultado_Via = '#39'F'#39' Then '#39'x'#39' else '#39#39' end as bFax,'
      'case when Resultado_Via = '#39'I'#39' Then '#39'x'#39' else '#39#39' end as bInternet,'
      'case when Resultado_Via = '#39'P'#39' Then '#39'x'#39' else '#39#39' end as bPersonal,'
      'Observacion, CteDomDet as ID_Visita'
      ',f.Descripcion as Flebotomista'
      'from ptclientedom p inner join ptclientedomdetalle d'
      'on p.ctedomid =  :CteID, ptFlebotomista f '
      'where p.ctedomid='#39'10009'#39' and p.estatus='#39'A'#39
      'and d.flebotomistaid=f.flebotomistaid'
      'order by fecha desc'
      '')
    Left = 352
    Top = 2
    object qrReporteNombres: TStringField
      FieldName = 'Nombres'
      Size = 50
    end
    object qrReporteApellidos: TStringField
      FieldName = 'Apellidos'
      Size = 50
    end
    object qrReporteEdad: TIntegerField
      FieldName = 'Edad'
      ReadOnly = True
    end
    object qrReportebSeguro: TStringField
      FieldName = 'bSeguro'
      ReadOnly = True
      Size = 1
    end
    object qrReporteTel_Residencia: TStringField
      FieldName = 'Tel_Residencia'
    end
    object qrReporteTel_Oficina: TStringField
      FieldName = 'Tel_Oficina'
    end
    object qrReporteTel_Celular: TStringField
      FieldName = 'Tel_Celular'
    end
    object qrReporteDireccion: TStringField
      FieldName = 'Direccion'
      Size = 100
    end
    object qrReporteFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object qrReporteHora: TStringField
      FieldName = 'Hora'
    end
    object qrReportebFax: TStringField
      FieldName = 'bFax'
      ReadOnly = True
      Size = 1
    end
    object qrReportebInternet: TStringField
      FieldName = 'bInternet'
      ReadOnly = True
      Size = 1
    end
    object qrReportebPersonal: TStringField
      FieldName = 'bPersonal'
      ReadOnly = True
      Size = 1
    end
    object qrReporteObservacion: TStringField
      FieldName = 'Observacion'
      Size = 200
    end
    object qrReporteDocumento: TStringField
      FieldName = 'Documento'
    end
    object qrReportebPrivado: TStringField
      FieldName = 'bPrivado'
      ReadOnly = True
      Size = 1
    end
    object qrReporteID_Visita: TIntegerField
      FieldName = 'ID_Visita'
    end
    object qrReporteUsuario_Toma: TStringField
      FieldName = 'Usuario_Toma'
      Size = 10
    end
    object qrReporteFlebotomista: TStringField
      FieldName = 'Flebotomista'
      Size = 80
    end
  end
  object dsReporte: TDataSource
    DataSet = qrReporte
    Left = 388
    Top = 3
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = dsReporte
    UserName = 'ppFormularioSolicitud'
    Left = 256
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'Nombres'
      FieldName = 'Nombres'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'Apellidos'
      FieldName = 'Apellidos'
      FieldLength = 50
      DisplayWidth = 50
      Position = 1
    end
    object ppDBPipeline1ppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'Edad'
      FieldName = 'Edad'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'bSeguro'
      FieldName = 'bSeguro'
      FieldLength = 1
      DisplayWidth = 1
      Position = 3
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'Tel_Residencia'
      FieldName = 'Tel_Residencia'
      FieldLength = 20
      DisplayWidth = 20
      Position = 4
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'Tel_Oficina'
      FieldName = 'Tel_Oficina'
      FieldLength = 20
      DisplayWidth = 20
      Position = 5
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'Tel_Celular'
      FieldName = 'Tel_Celular'
      FieldLength = 20
      DisplayWidth = 20
      Position = 6
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'Direccion'
      FieldName = 'Direccion'
      FieldLength = 100
      DisplayWidth = 100
      Position = 7
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 8
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'Hora'
      FieldName = 'Hora'
      FieldLength = 20
      DisplayWidth = 20
      Position = 9
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'bFax'
      FieldName = 'bFax'
      FieldLength = 1
      DisplayWidth = 1
      Position = 10
    end
    object ppDBPipeline1ppField12: TppField
      FieldAlias = 'bInternet'
      FieldName = 'bInternet'
      FieldLength = 1
      DisplayWidth = 1
      Position = 11
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = 'bPersonal'
      FieldName = 'bPersonal'
      FieldLength = 1
      DisplayWidth = 1
      Position = 12
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = 'Observacion'
      FieldName = 'Observacion'
      FieldLength = 200
      DisplayWidth = 200
      Position = 13
    end
    object ppDBPipeline1ppField15: TppField
      FieldAlias = 'Documento'
      FieldName = 'Documento'
      FieldLength = 20
      DisplayWidth = 20
      Position = 14
    end
    object ppDBPipeline1ppField16: TppField
      FieldAlias = 'bPrivado'
      FieldName = 'bPrivado'
      FieldLength = 1
      DisplayWidth = 1
      Position = 15
    end
    object ppDBPipeline1ppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'ID_Visita'
      FieldName = 'ID_Visita'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 16
    end
    object ppDBPipeline1ppField18: TppField
      FieldAlias = 'Usuario_Toma'
      FieldName = 'Usuario_Toma'
      FieldLength = 10
      DisplayWidth = 10
      Position = 17
    end
    object ppDBPipeline1ppField19: TppField
      FieldAlias = 'Flebotomista'
      FieldName = 'Flebotomista'
      FieldLength = 80
      DisplayWidth = 80
      Position = 18
    end
  end
  object ppRptTarjeta: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 288
    Top = 2
    Version = '10.04'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 34660
      mmPrintPosition = 0
      object ppDBText12: TppDBText
        UserName = 'DBText159'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Empresa'
        DataPipeline = DM.ppParametro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppParametro'
        mmHeight = 5821
        mmLeft = 7938
        mmTop = 3440
        mmWidth = 98954
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label152'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Formulario Recepci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 7938
        mmTop = 9525
        mmWidth = 98954
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label153'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Fecha  :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 147902
        mmTop = 10848
        mmWidth = 13293
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5821
        mmLeft = 162984
        mmTop = 10848
        mmWidth = 17463
        BandType = 0
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageNo
        DisplayFormat = '000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 162984
        mmTop = 6085
        mmWidth = 5842
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label154'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Pagina :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 147638
        mmTop = 6085
        mmWidth = 13674
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label161'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Hora    :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 147902
        mmTop = 15346
        mmWidth = 13081
        BandType = 0
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtTime
        DisplayFormat = 'HH:MM:SS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 162984
        mmTop = 15346
        mmWidth = 14055
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Solicitud de Toma de Muestras a Domicilio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 7938
        mmTop = 14817
        mmWidth = 98954
        BandType = 0
      end
      object ppShape6: TppShape
        UserName = 'Shape6'
        mmHeight = 7144
        mmLeft = 135996
        mmTop = 26723
        mmWidth = 44186
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ID VISITA :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 136790
        mmTop = 28310
        mmWidth = 24342
        BandType = 0
      end
      object ppDBText18: TppDBText
        UserName = 'DBText13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ID_Visita'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5027
        mmLeft = 161925
        mmTop = 28310
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText19: TppDBText
        UserName = 'DBText18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Usuario_Toma'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5038
        mmLeft = 162719
        mmTop = 19844
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Usuario:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 147902
        mmTop = 20373
        mmWidth = 14266
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 205582
      mmPrintPosition = 0
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'APELLIDO(S):'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3429
        mmLeft = 7938
        mmTop = 15081
        mmWidth = 20638
        BandType = 4
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'EDAD :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3429
        mmLeft = 7938
        mmTop = 23283
        mmWidth = 9864
        BandType = 4
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'DOCUMENTO:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3429
        mmLeft = 33867
        mmTop = 23283
        mmWidth = 19812
        BandType = 4
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'SEGURO MEDICO :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 97102
        mmTop = 23283
        mmWidth = 26723
        BandType = 4
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PRIVADO :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 156898
        mmTop = 23284
        mmWidth = 15610
        BandType = 4
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'TEL. RESIDENCIA:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3429
        mmLeft = 8202
        mmTop = 33338
        mmWidth = 26458
        BandType = 4
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'TEL. OFICINA:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 71173
        mmTop = 33338
        mmWidth = 20373
        BandType = 4
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'TEL. CELULAR:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 126471
        mmTop = 33338
        mmWidth = 21167
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Apellidos'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5038
        mmLeft = 30692
        mmTop = 12700
        mmWidth = 150019
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Edad'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3429
        mmLeft = 19315
        mmTop = 22754
        mmWidth = 6085
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Documento'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3440
        mmLeft = 55298
        mmTop = 23283
        mmWidth = 30956
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Tel_Residencia'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3429
        mmLeft = 36513
        mmTop = 32808
        mmWidth = 32279
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Tel_Oficina'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3429
        mmLeft = 92869
        mmTop = 32809
        mmWidth = 31750
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Tel_Celular'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3429
        mmLeft = 149225
        mmTop = 32809
        mmWidth = 30692
        BandType = 4
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'DIRECCION :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3429
        mmLeft = 7938
        mmTop = 44979
        mmWidth = 19050
        BandType = 4
      end
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        CharWrap = False
        DataField = 'Direccion'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 23548
        mmLeft = 28840
        mmTop = 44715
        mmWidth = 151342
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label101'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'SERVICIO REQUERIDO PARA FECHA:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 7938
        mmTop = 75406
        mmWidth = 53181
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Fecha'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4498
        mmLeft = 65617
        mmTop = 74083
        mmWidth = 26194
        BandType = 4
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'HORA :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 111654
        mmTop = 75141
        mmWidth = 10848
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Hora'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 124619
        mmTop = 74348
        mmWidth = 17198
        BandType = 4
      end
      object ppLabel13: TppLabel
        UserName = 'Label102'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PRUEBAS A REALIZAR:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3429
        mmLeft = 7938
        mmTop = 85725
        mmWidth = 32808
        BandType = 4
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 42863
        mmTop = 88900
        mmWidth = 136790
        BandType = 4
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 7938
        mmTop = 96573
        mmWidth = 170657
        BandType = 4
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 7938
        mmTop = 104246
        mmWidth = 170392
        BandType = 4
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 7938
        mmTop = 112184
        mmWidth = 170392
        BandType = 4
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 7938
        mmTop = 121444
        mmWidth = 170921
        BandType = 4
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'RESULTADOS:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3429
        mmLeft = 7938
        mmTop = 127265
        mmWidth = 20151
        BandType = 4
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'VIA FAX'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3429
        mmLeft = 30163
        mmTop = 127265
        mmWidth = 11599
        BandType = 4
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'INTERNET'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3429
        mmLeft = 86519
        mmTop = 127264
        mmWidth = 14774
        BandType = 4
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PERSONAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3429
        mmLeft = 157957
        mmTop = 127264
        mmWidth = 15409
        BandType = 4
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'RECIBIO SOLICITUD:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3429
        mmLeft = 7938
        mmTop = 139436
        mmWidth = 30649
        BandType = 4
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 39158
        mmTop = 142082
        mmWidth = 60590
        BandType = 4
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'FECHA:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3429
        mmLeft = 101071
        mmTop = 139436
        mmWidth = 10583
        BandType = 4
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'HORA:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3429
        mmLeft = 145521
        mmTop = 139436
        mmWidth = 9525
        BandType = 4
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PERSONAL DE TOMA DE MUESTRAS QUE REALIZARA EL SERVICIO:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3429
        mmLeft = 7938
        mmTop = 150284
        mmWidth = 95250
        BandType = 4
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 105040
        mmTop = 153459
        mmWidth = 74613
        BandType = 4
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Nombres(s) y Apellido(s)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3429
        mmLeft = 118798
        mmTop = 153988
        mmWidth = 35560
        BandType = 4
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'FECHA:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3429
        mmLeft = 7938
        mmTop = 162719
        mmWidth = 10414
        BandType = 4
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 20108
        mmTop = 165629
        mmWidth = 37571
        BandType = 4
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'HORA:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3429
        mmLeft = 59267
        mmTop = 162719
        mmWidth = 9398
        BandType = 4
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 69586
        mmTop = 165629
        mmWidth = 29898
        BandType = 4
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'QUE SE REALIZO EL SERVICIO.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3429
        mmLeft = 100542
        mmTop = 162718
        mmWidth = 44196
        BandType = 4
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'OBSERVACIONES:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3429
        mmLeft = 7938
        mmTop = 173038
        mmWidth = 25781
        BandType = 4
      end
      object ppDBMemo2: TppDBMemo
        UserName = 'DBMemo2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        CharWrap = False
        DataField = 'Observacion'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 27781
        mmLeft = 37306
        mmTop = 172773
        mmWidth = 143140
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 5027
        mmLeft = 124884
        mmTop = 21696
        mmWidth = 4763
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'bSeguro'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3429
        mmLeft = 125413
        mmTop = 22490
        mmWidth = 3704
        BandType = 4
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 5027
        mmLeft = 173567
        mmTop = 21697
        mmWidth = 4763
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'bPrivado'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3429
        mmLeft = 174096
        mmTop = 22489
        mmWidth = 3704
        BandType = 4
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        mmHeight = 5027
        mmLeft = 42863
        mmTop = 125677
        mmWidth = 4763
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'bFax'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3429
        mmLeft = 43392
        mmTop = 126471
        mmWidth = 3704
        BandType = 4
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        mmHeight = 5027
        mmLeft = 102394
        mmTop = 125677
        mmWidth = 4763
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'bInternet'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3429
        mmLeft = 102923
        mmTop = 126471
        mmWidth = 3704
        BandType = 4
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        mmHeight = 5027
        mmLeft = 174890
        mmTop = 125677
        mmWidth = 4763
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'bPersonal'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3429
        mmLeft = 175419
        mmTop = 126472
        mmWidth = 3704
        BandType = 4
      end
      object ppLine11: TppLine
        UserName = 'Line101'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 30692
        mmTop = 17727
        mmWidth = 150019
        BandType = 4
      end
      object ppLine12: TppLine
        UserName = 'Line11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 19050
        mmTop = 26194
        mmWidth = 6615
        BandType = 4
      end
      object ppLine13: TppLine
        UserName = 'Line12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 55563
        mmTop = 26723
        mmWidth = 30692
        BandType = 4
      end
      object ppLine14: TppLine
        UserName = 'Line13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 36513
        mmTop = 36513
        mmWidth = 32279
        BandType = 4
      end
      object ppLine15: TppLine
        UserName = 'Line15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 92869
        mmTop = 36513
        mmWidth = 31750
        BandType = 4
      end
      object ppLine16: TppLine
        UserName = 'Line16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 149225
        mmTop = 36513
        mmWidth = 30692
        BandType = 4
      end
      object ppLine17: TppLine
        UserName = 'Line17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 65617
        mmTop = 78581
        mmWidth = 26194
        BandType = 4
      end
      object ppLine18: TppLine
        UserName = 'Line18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 124884
        mmTop = 78580
        mmWidth = 16933
        BandType = 4
      end
      object ppLine19: TppLine
        UserName = 'Line19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 112977
        mmTop = 142082
        mmWidth = 22225
        BandType = 4
      end
      object ppLine20: TppLine
        UserName = 'Line20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 156898
        mmTop = 142083
        mmWidth = 22490
        BandType = 4
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'NOMBRE(S):'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 7938
        mmTop = 7408
        mmWidth = 19844
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Nombres'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5027
        mmLeft = 30427
        mmTop = 5556
        mmWidth = 150019
        BandType = 4
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 30427
        mmTop = 10583
        mmWidth = 150019
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Flebotomista'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3440
        mmLeft = 106892
        mmTop = 149754
        mmWidth = 72761
        BandType = 4
      end
    end
    object ppSummaryBand3: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 8731
      mmPrintPosition = 0
    end
  end
  object qrPaciente: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    BeforeEdit = qrTarjetaBeforeEdit
    OnNewRecord = qrTarjetaNewRecord
    Parameters = <>
    SQL.Strings = (
      
        'SELECT C.CLIENTEID,C.NOMBRE FROM PTCLIENTE C INNER JOIN PTTARJET' +
        'A T '
      'ON C.CLIENTEID = T.PACIENTEID ')
    Left = 196
    Top = 2
    object qrPacienteNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 80
    end
    object qrPacienteCLIENTEID: TStringField
      FieldName = 'CLIENTEID'
      Size = 10
    end
  end
  object dsCliente: TDataSource
    AutoEdit = False
    DataSet = qrPaciente
    OnStateChange = dsDatosStateChange
    Left = 224
    Top = 3
  end
  object qrTarjetaDet: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    BeforeEdit = qrTarjetaBeforeEdit
    OnNewRecord = qrTarjetaNewRecord
    Parameters = <>
    SQL.Strings = (
      'Select *  From PTTarjetaDetalle')
    Left = 112
    Top = 2
    object qrTarjetaDetID: TStringField
      FieldName = 'ID'
      Size = 40
    end
    object qrTarjetaDetTarjetaID: TStringField
      FieldName = 'TarjetaID'
    end
    object qrTarjetaDetFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object qrTarjetaDetMontoPagado: TBCDField
      FieldName = 'MontoPagado'
      Precision = 19
    end
  end
  object dsTarjetaDet: TDataSource
    AutoEdit = False
    DataSet = qrTarjetaDet
    OnStateChange = dsDatosStateChange
    Left = 148
    Top = 3
  end
end
