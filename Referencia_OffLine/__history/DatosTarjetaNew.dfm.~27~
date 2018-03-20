inherited frmDatosTarjetaNew: TfrmDatosTarjetaNew
  Caption = 'Datos Tarjeta'
  ClientHeight = 296
  ClientWidth = 688
  KeyPreview = True
  OnPaint = nil
  OnShow = FormShow
  ExplicitWidth = 696
  ExplicitHeight = 330
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCaption: TPanel
    Width = 688
    Height = 43
    ExplicitWidth = 688
    ExplicitHeight = 43
  end
  object dxLayoutControl1: TdxLayoutControl [2]
    Left = 0
    Top = 43
    Width = 688
    Height = 253
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmAppActions.lnfNoBorder
    object cxPageControl1: TcxPageControl
      Left = 0
      Top = 0
      Width = 289
      Height = 193
      ActivePage = cxTabSheet1
      HideTabs = True
      TabOrder = 0
      ClientRectBottom = 193
      ClientRectRight = 289
      ClientRectTop = 0
      object cxTabSheet1: TcxTabSheet
        Caption = 'cxTabSheet1'
        ImageIndex = 0
        ExplicitWidth = 564
        ExplicitHeight = 253
        object dxLayoutControl2: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 289
          Height = 193
          Align = alClient
          TabOrder = 0
          AutoContentSizes = [acsWidth, acsHeight]
          LookAndFeel = dmAppActions.lnfWeb
          ExplicitWidth = 564
          ExplicitHeight = 253
          DesignSize = (
            289
            193)
          object EdTarjetaId: TcxDBTextEdit
            Tag = 99
            Left = 103
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
          object EdPaciente: TcxDBTextEdit
            Tag = 99
            Left = 103
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
          object cxDBSpinEdit1: TcxDBSpinEdit
            Left = 103
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
          object cxDBSpinEdit2: TcxDBSpinEdit
            Left = 103
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
          object cxDBTextEdit4: TcxDBTextEdit
            Left = 103
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
          object cxDBDateEdit4: TcxDBDateEdit
            Left = 103
            Top = 171
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
            Width = 121
          end
          object cxDBCheckBox1: TcxDBCheckBox
            Left = 103
            Top = 198
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
          object lblNombrePaciente: TcxLabel
            Left = 169
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
          object cxButton1: TcxButton
            Left = 406
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
            OnClick = BtPacientesClick
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
          object dxLayoutControl2Group_Root: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutControl2Group1: TdxLayoutGroup
              Caption = 'Datos Paciente'
              object dxLayoutControl2Group12: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object dxLayoutControl2Item10: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Tarjeta ID'
                  Control = EdTarjetaId
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl2Group4: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object dxLayoutControl2Item11: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'Paciente ID'
                    Control = EdPaciente
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutControl2Item1: TdxLayoutItem
                    Caption = 'New Item'
                    ShowCaption = False
                    Control = lblNombrePaciente
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutControl2Item2: TdxLayoutItem
                    Caption = 'New Item'
                    ShowCaption = False
                    Control = cxButton1
                    ControlOptions.ShowBorder = False
                  end
                end
                object dxLayoutControl2Item12: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Total de Puntos'
                  Control = cxDBSpinEdit1
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl2Group7: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object dxLayoutControl2Group3: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  ShowBorder = False
                  object dxLayoutControl2Item3: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'Puntos Usados'
                    Control = cxDBSpinEdit2
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutControl2Item5: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'Usuario'
                    Control = cxDBTextEdit4
                    ControlOptions.ShowBorder = False
                  end
                end
                object dxLayoutControl2Item13: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Fecha'
                  Control = cxDBDateEdit4
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl2Item17: TdxLayoutItem
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
    object BtPacientes: TcxButton
      Left = 576
      Top = 7
      Width = 100
      Height = 25
      Caption = 'F3-Buscar Paciente'
      TabOrder = 1
      OnClick = BtPacientesClick
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = True
    end
    object BtTransacciones: TcxButton
      Left = 576
      Top = 38
      Width = 100
      Height = 25
      Caption = 'F4- Busca Tarjeta'
      TabOrder = 2
      OnClick = BtTransaccionesClick
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = True
    end
    object BtImprimir: TcxButton
      Left = 576
      Top = 162
      Width = 100
      Height = 25
      Caption = 'F9-Imprimir Tarjeta'
      TabOrder = 6
      OnClick = BtImprimirClick
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = True
    end
    object cxButton2: TcxButton
      Left = 576
      Top = 69
      Width = 100
      Height = 25
      Caption = 'F5- Cancelar'
      TabOrder = 3
      OnClick = cxButton2Click
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = True
    end
    object BtEliminar: TcxButton
      Left = 576
      Top = 100
      Width = 100
      Height = 25
      Caption = 'F6-Eliminar Tarjeta'
      TabOrder = 4
      OnClick = BtEliminarClick
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = True
    end
    object BtGrabar: TcxButton
      Left = 576
      Top = 131
      Width = 100
      Height = 25
      Caption = 'F8-Grabar Tarjeta'
      TabOrder = 5
      OnClick = BtGrabarClick
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = True
    end
    object btLabel: TcxButton
      Left = 576
      Top = 193
      Width = 100
      Height = 25
      Caption = 'F10-Imprimir Label'
      TabOrder = 7
      OnClick = btLabelClick
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = True
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      object dxLayoutControl1Group1: TdxLayoutGroup
        AutoAligns = []
        AlignHorz = ahClient
        AlignVert = avClient
        Caption = 'dgDatos'
        ShowCaption = False
        ShowBorder = False
        object dxLayoutControl1Item1: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avClient
          Caption = 'cxPageControl1'
          ShowCaption = False
          Control = cxPageControl1
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Group2: TdxLayoutGroup
        AutoAligns = []
        AlignHorz = ahRight
        AlignVert = avClient
        Caption = 'dgBotones'
        LookAndFeel = dmAppActions.lnfButtonGroup
        ShowCaption = False
        object dxLayoutControl1Item2: TdxLayoutItem
          Caption = 'cxButton1'
          ShowCaption = False
          Control = BtPacientes
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item4: TdxLayoutItem
          Caption = 'cxButton3'
          ShowCaption = False
          Control = BtTransacciones
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item3: TdxLayoutItem
          Caption = 'New Item'
          ShowCaption = False
          Control = cxButton2
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item5: TdxLayoutItem
          Caption = 'New Item'
          ShowCaption = False
          Control = BtEliminar
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item6: TdxLayoutItem
          Caption = 'New Item'
          ShowCaption = False
          Control = BtGrabar
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item7: TdxLayoutItem
          Caption = 'cxButton2'
          ShowCaption = False
          Control = BtImprimir
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item8: TdxLayoutItem
          Caption = 'New Item'
          ShowCaption = False
          Control = btLabel
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  inherited formStorage: TJvFormStorage
    Left = 432
    Top = 52
  end
  inherited alEdit: TActionList
    Left = 353
    Top = 52
  end
  inherited pmCustom: TPopupMenu
    Left = 388
  end
  inherited cxIntl1: TcxIntl
    Left = 59
  end
  object cxGridStyles: TcxStyleRepository
    Left = 501
    Top = 52
    object stGrDatos: TcxStyle
      AssignedValues = [svColor]
      Color = clInfoBk
    end
    object stGrEdit: TcxStyle
    end
  end
  object dsDatos: TDataSource
    DataSet = qrTarjeta
    Left = 60
    Top = 35
  end
  object ppRptDomicilio: TppReport
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
        mmTop = 141288
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
        mmTop = 144463
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
        mmTop = 144992
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
        mmTop = 153723
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
        mmTop = 156634
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
        mmTop = 153723
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
        mmTop = 156634
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
        mmTop = 153723
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
        mmTop = 164042
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
        mmTop = 163777
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
        mmTop = 140759
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
  object qrTarjeta: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    BeforeEdit = qrTarjetaBeforeEdit
    AfterPost = qrTarjetaAfterPost
    BeforeDelete = qrTarjetaBeforeDelete
    OnNewRecord = qrTarjetaNewRecord
    Parameters = <
      item
        Name = 'TarjetaID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'Select *  From PTTarjeta'
      'Where TarjetaID =:TarjetaID')
    Left = 16
    Top = 34
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
    object qrTarjetaIdentificacion: TStringField
      FieldName = 'Identificacion'
    end
    object qrTarjetaFechaEmision: TDateTimeField
      FieldName = 'FechaEmision'
    end
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = dsReporte
    UserName = 'ppFormularioSolicitud1'
    Left = 256
    object ppField1: TppField
      FieldAlias = 'Nombres'
      FieldName = 'Nombres'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppField2: TppField
      FieldAlias = 'Apellidos'
      FieldName = 'Apellidos'
      FieldLength = 50
      DisplayWidth = 50
      Position = 1
    end
    object ppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'Edad'
      FieldName = 'Edad'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object ppField4: TppField
      FieldAlias = 'bSeguro'
      FieldName = 'bSeguro'
      FieldLength = 1
      DisplayWidth = 1
      Position = 3
    end
    object ppField5: TppField
      FieldAlias = 'Tel_Residencia'
      FieldName = 'Tel_Residencia'
      FieldLength = 20
      DisplayWidth = 20
      Position = 4
    end
    object ppField6: TppField
      FieldAlias = 'Tel_Oficina'
      FieldName = 'Tel_Oficina'
      FieldLength = 20
      DisplayWidth = 20
      Position = 5
    end
    object ppField7: TppField
      FieldAlias = 'Tel_Celular'
      FieldName = 'Tel_Celular'
      FieldLength = 20
      DisplayWidth = 20
      Position = 6
    end
    object ppField8: TppField
      FieldAlias = 'Direccion'
      FieldName = 'Direccion'
      FieldLength = 100
      DisplayWidth = 100
      Position = 7
    end
    object ppField9: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 8
    end
    object ppField10: TppField
      FieldAlias = 'Hora'
      FieldName = 'Hora'
      FieldLength = 20
      DisplayWidth = 20
      Position = 9
    end
    object ppField11: TppField
      FieldAlias = 'bFax'
      FieldName = 'bFax'
      FieldLength = 1
      DisplayWidth = 1
      Position = 10
    end
    object ppField12: TppField
      FieldAlias = 'bInternet'
      FieldName = 'bInternet'
      FieldLength = 1
      DisplayWidth = 1
      Position = 11
    end
    object ppField13: TppField
      FieldAlias = 'bPersonal'
      FieldName = 'bPersonal'
      FieldLength = 1
      DisplayWidth = 1
      Position = 12
    end
    object ppField14: TppField
      FieldAlias = 'Observacion'
      FieldName = 'Observacion'
      FieldLength = 200
      DisplayWidth = 200
      Position = 13
    end
    object ppField15: TppField
      FieldAlias = 'Documento'
      FieldName = 'Documento'
      FieldLength = 20
      DisplayWidth = 20
      Position = 14
    end
    object ppField16: TppField
      FieldAlias = 'bPrivado'
      FieldName = 'bPrivado'
      FieldLength = 1
      DisplayWidth = 1
      Position = 15
    end
    object ppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'ID_Visita'
      FieldName = 'ID_Visita'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 16
    end
    object ppField18: TppField
      FieldAlias = 'Usuario_Toma'
      FieldName = 'Usuario_Toma'
      FieldLength = 10
      DisplayWidth = 10
      Position = 17
    end
    object ppField19: TppField
      FieldAlias = 'Flebotomista'
      FieldName = 'Flebotomista'
      FieldLength = 80
      DisplayWidth = 80
      Position = 18
    end
  end
  object ppRptTarjeta: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline2
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
    DataPipelineName = 'ppDBPipeline2'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 34660
      mmPrintPosition = 0
      object ppDBText11: TppDBText
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
      object ppLabel19: TppLabel
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
      object ppLabel20: TppLabel
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
      object ppSystemVariable1: TppSystemVariable
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
      object ppSystemVariable2: TppSystemVariable
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
      object ppLabel21: TppLabel
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
      object ppLabel34: TppLabel
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
      object ppSystemVariable3: TppSystemVariable
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
      object ppLabel35: TppLabel
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
      object ppShape7: TppShape
        UserName = 'Shape6'
        mmHeight = 7144
        mmLeft = 135996
        mmTop = 26723
        mmWidth = 44186
        BandType = 0
      end
      object ppLabel36: TppLabel
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
      object ppDBText20: TppDBText
        UserName = 'DBText13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ID_Visita'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 5027
        mmLeft = 161925
        mmTop = 28310
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText21: TppDBText
        UserName = 'DBText18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Usuario_Toma'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 5038
        mmLeft = 162719
        mmTop = 19844
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel37: TppLabel
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
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 205582
      mmPrintPosition = 0
      object ppLabel38: TppLabel
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
      object ppLabel39: TppLabel
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
      object ppLabel40: TppLabel
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
      object ppLabel41: TppLabel
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
      object ppLabel42: TppLabel
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
      object ppLabel43: TppLabel
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
      object ppLabel44: TppLabel
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
      object ppLabel45: TppLabel
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
      object ppDBText22: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Apellidos'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 5038
        mmLeft = 30692
        mmTop = 12700
        mmWidth = 150019
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Edad'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3429
        mmLeft = 19315
        mmTop = 22754
        mmWidth = 6085
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Documento'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3440
        mmLeft = 55298
        mmTop = 23283
        mmWidth = 30956
        BandType = 4
      end
      object ppDBText25: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Tel_Residencia'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3429
        mmLeft = 36513
        mmTop = 32808
        mmWidth = 32279
        BandType = 4
      end
      object ppDBText26: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Tel_Oficina'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3429
        mmLeft = 92869
        mmTop = 32809
        mmWidth = 31750
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Tel_Celular'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3429
        mmLeft = 149225
        mmTop = 32809
        mmWidth = 30692
        BandType = 4
      end
      object ppLabel46: TppLabel
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
      object ppDBMemo3: TppDBMemo
        UserName = 'DBMemo1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        CharWrap = False
        DataField = 'Direccion'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
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
      object ppLabel47: TppLabel
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
      object ppDBText28: TppDBText
        UserName = 'DBText8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Fecha'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 4498
        mmLeft = 65617
        mmTop = 74083
        mmWidth = 26194
        BandType = 4
      end
      object ppLabel48: TppLabel
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
      object ppDBText29: TppDBText
        UserName = 'DBText9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Hora'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 4233
        mmLeft = 124619
        mmTop = 74348
        mmWidth = 17198
        BandType = 4
      end
      object ppLabel49: TppLabel
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
      object ppLine6: TppLine
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
      object ppLine19: TppLine
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
      object ppLine20: TppLine
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
      object ppLine21: TppLine
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
      object ppLine22: TppLine
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
      object ppLabel50: TppLabel
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
      object ppLabel51: TppLabel
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
      object ppLabel52: TppLabel
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
      object ppLabel53: TppLabel
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
      object ppLabel54: TppLabel
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
      object ppLine23: TppLine
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
      object ppLabel55: TppLabel
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
      object ppLabel56: TppLabel
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
      object ppLabel57: TppLabel
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
      object ppLine24: TppLine
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
      object ppLabel58: TppLabel
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
      object ppLabel59: TppLabel
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
      object ppLine25: TppLine
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
      object ppLabel60: TppLabel
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
      object ppLine26: TppLine
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
      object ppLabel61: TppLabel
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
      object ppLabel62: TppLabel
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
      object ppDBMemo4: TppDBMemo
        UserName = 'DBMemo2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        CharWrap = False
        DataField = 'Observacion'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
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
      object ppShape8: TppShape
        UserName = 'Shape1'
        mmHeight = 5027
        mmLeft = 124884
        mmTop = 21696
        mmWidth = 4763
        BandType = 4
      end
      object ppDBText30: TppDBText
        UserName = 'DBText12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'bSeguro'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3429
        mmLeft = 125413
        mmTop = 22490
        mmWidth = 3704
        BandType = 4
      end
      object ppShape9: TppShape
        UserName = 'Shape2'
        mmHeight = 5027
        mmLeft = 173567
        mmTop = 21697
        mmWidth = 4763
        BandType = 4
      end
      object ppDBText31: TppDBText
        UserName = 'DBText14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'bPrivado'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3429
        mmLeft = 174096
        mmTop = 22489
        mmWidth = 3704
        BandType = 4
      end
      object ppShape10: TppShape
        UserName = 'Shape3'
        mmHeight = 5027
        mmLeft = 42863
        mmTop = 125677
        mmWidth = 4763
        BandType = 4
      end
      object ppDBText32: TppDBText
        UserName = 'DBText15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'bFax'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3429
        mmLeft = 43392
        mmTop = 126471
        mmWidth = 3704
        BandType = 4
      end
      object ppShape11: TppShape
        UserName = 'Shape4'
        mmHeight = 5027
        mmLeft = 102394
        mmTop = 125677
        mmWidth = 4763
        BandType = 4
      end
      object ppDBText33: TppDBText
        UserName = 'DBText16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'bInternet'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3429
        mmLeft = 102923
        mmTop = 126471
        mmWidth = 3704
        BandType = 4
      end
      object ppShape12: TppShape
        UserName = 'Shape5'
        mmHeight = 5027
        mmLeft = 174890
        mmTop = 125677
        mmWidth = 4763
        BandType = 4
      end
      object ppDBText34: TppDBText
        UserName = 'DBText17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'bPersonal'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3429
        mmLeft = 175419
        mmTop = 126472
        mmWidth = 3704
        BandType = 4
      end
      object ppLine27: TppLine
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
      object ppLine28: TppLine
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
      object ppLine29: TppLine
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
      object ppLine30: TppLine
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
      object ppLine31: TppLine
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
      object ppLine32: TppLine
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
      object ppLine33: TppLine
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
      object ppLine34: TppLine
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
      object ppLine35: TppLine
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
      object ppLine36: TppLine
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
      object ppLabel63: TppLabel
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
      object ppDBText35: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Nombres'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 5027
        mmLeft = 30427
        mmTop = 5556
        mmWidth = 150019
        BandType = 4
      end
      object ppLine37: TppLine
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
      object ppDBText36: TppDBText
        UserName = 'DBText10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Flebotomista'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3440
        mmLeft = 106892
        mmTop = 149754
        mmWidth = 72761
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 8731
      mmPrintPosition = 0
    end
  end
  object qrTarjetaDet: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
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
    Left = 148
    Top = 3
  end
  object qrPaciente: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT C.CLIENTEID,C.NOMBRE FROM PTCLIENTE C INNER JOIN PTTARJET' +
        'A T '
      'ON C.CLIENTEID = T.PACIENTEID ')
    Left = 200
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
    Left = 228
    Top = 3
  end
  object RAWPrinter1: TRAWPrinter
    Left = 16
  end
end
