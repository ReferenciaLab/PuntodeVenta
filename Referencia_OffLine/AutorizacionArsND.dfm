object frmAutorizacionArsND: TfrmAutorizacionArsND
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Confirmaci'#243'n de Coberturas Automatica ND'
  ClientHeight = 617
  ClientWidth = 934
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 934
    Height = 617
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmAppActions.lnfWeb
    object BtAceptar: TcxButton
      Left = 547
      Top = 540
      Width = 185
      Height = 25
      Caption = 'F9 = Procesar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
      OnClick = BtAceptarClick
    end
    object BtCancelar: TcxButton
      Left = 738
      Top = 540
      Width = 185
      Height = 25
      Caption = 'Aceptar'
      ModalResult = 2
      TabOrder = 14
    end
    object txtReclamacion: TcxCurrencyEdit
      Left = 90
      Top = 215
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.AssignedValues.DisplayFormat = True
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Color = clAqua
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 2
      Width = 82
    end
    object btImprimir: TcxButton
      Left = 356
      Top = 540
      Width = 185
      Height = 25
      Caption = 'Imprimir'
      TabOrder = 12
    end
    object cgReclamaciones: TcxGrid
      Left = 23
      Top = 36
      Width = 878
      Height = 114
      TabOrder = 0
      object dbDatos: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsDatos
        DataController.Filter.PercentWildcard = '*'
        DataController.KeyFieldNames = 'Reclamacion'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsSelection.CellMultiSelect = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object dbDatosReclamacion: TcxGridDBColumn
          DataBinding.FieldName = 'Reclamacion'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 120
        end
        object dbDatosCliente: TcxGridDBColumn
          DataBinding.FieldName = 'Cliente'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 134
        end
        object dbDatosMontoAfiliado: TcxGridDBColumn
          Caption = 'Monto Afiliado'
          DataBinding.FieldName = 'MontoAfiliado'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Width = 129
        end
        object dbDatosMontoArs: TcxGridDBColumn
          Caption = 'Monto Ars'
          DataBinding.FieldName = 'MontoArs'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Width = 128
        end
        object dbDatosTotal: TcxGridDBColumn
          DataBinding.FieldName = 'Total'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Width = 130
        end
        object dbDatosEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'Estatus'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Width = 127
        end
      end
      object lvDatos: TcxGridLevel
        GridView = dbDatos
      end
    end
    object txtCliente: TcxCurrencyEdit
      Left = 90
      Top = 188
      Properties.Alignment.Horz = taRightJustify
      Properties.AssignedValues.DisplayFormat = True
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Color = clAqua
      Style.HotTrack = False
      TabOrder = 1
      Width = 82
    end
    object CurMontoAfiliado: TcxCurrencyEdit
      Left = 250
      Top = 188
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = 'RD$, 0.00;(RD$, 0.00)'
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Color = clAqua
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 3
      Width = 80
    end
    object CurTotal: TcxCurrencyEdit
      Left = 390
      Top = 188
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = 'RD$, 0.00;(RD$, 0.00)'
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Color = clAqua
      Style.HotTrack = False
      TabOrder = 5
      Width = 90
    end
    object txtEstado: TcxTextEdit
      Left = 390
      Top = 215
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.ReadOnly = True
      Properties.OnChange = txtEstadoPropertiesChange
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Color = clWindow
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 9
      Width = 110
    end
    object cgReclamacionDetalle: TcxGrid
      Left = 23
      Top = 277
      Width = 803
      Height = 250
      TabOrder = 11
      object dbDatosRec: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsDatosRec
        DataController.Filter.PercentWildcard = '*'
        DataController.KeyFieldNames = 'Codigo'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = dbDatosRecCodigo
          end
          item
            Kind = skSum
            Column = dbDatosRecMontoAfiliado
          end
          item
            Kind = skSum
            Column = dbDatosRecMontoArs
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsSelection.CellMultiSelect = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.OnGetContentStyle = dbDatosRecStylesGetContentStyle
        object dbDatosRecCodigo: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'Codigo'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 72
        end
        object dbDatosRecDescripcion: TcxGridDBColumn
          Caption = 'Descripci'#243'n'
          DataBinding.FieldName = 'Descripcion'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 283
        end
        object dbDatosRecMontoAfiliado: TcxGridDBColumn
          Caption = 'Monto Afiliado'
          DataBinding.FieldName = 'MontoAfiliado'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 97
        end
        object dbDatosRecMontoArs: TcxGridDBColumn
          Caption = 'Monto Ars'
          DataBinding.FieldName = 'MontoArs'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 96
        end
        object dbDatosRecError: TcxGridDBColumn
          DataBinding.FieldName = 'Error'
          HeaderAlignmentHorz = taCenter
          MinWidth = 100
          Options.Editing = False
          Width = 250
        end
      end
      object lvDatosRec: TcxGridLevel
        GridView = dbDatosRec
      end
    end
    object CurMontoTotalPV: TcxCurrencyEdit
      Left = 565
      Top = 188
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = 'RD$, 0.00;(RD$, 0.00)'
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Color = clAqua
      Style.HotTrack = False
      TabOrder = 6
      Width = 90
    end
    object txtAfiliado: TcxCurrencyEdit
      Left = 545
      Top = 215
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.AssignedValues.DisplayFormat = True
      Properties.DecimalPlaces = 0
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Color = clAqua
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 10
      Width = 356
    end
    object CurDiferencia: TcxCurrencyEdit
      Left = 821
      Top = 188
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = 'RD$, 0.00;(RD$, 0.00)'
      Properties.ReadOnly = True
      Properties.OnChange = CurDiferenciaPropertiesChange
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Color = clAqua
      Style.HotTrack = False
      TabOrder = 8
      Width = 80
    end
    object txtTipoPlan: TcxTextEdit
      Left = 250
      Top = 215
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.ReadOnly = True
      Properties.OnChange = txtEstadoPropertiesChange
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Color = clAqua
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 4
      Width = 90
    end
    object Memo1: TMemo
      Left = 118
      Top = 416
      Width = 54
      Height = 29
      BorderStyle = bsNone
      Lines.Strings = (
        'Memo'
        '1')
      TabOrder = 15
    end
    object CurPorcentajeCob: TcxCurrencyEdit
      Left = 699
      Top = 188
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = 'RD$, 0.00;(RD$, 0.00)'
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Color = clAqua
      Style.HotTrack = False
      TabOrder = 7
      Width = 63
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Group3: TdxLayoutGroup
        Caption = 'Reclamaciones de esta Entrada'
        object dxLayoutControl1Item9: TdxLayoutItem
          AutoAligns = [aaVertical]
          Control = cgReclamaciones
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Group4: TdxLayoutGroup
        Caption = 'Informaci'#243'n de la Reclamaci'#243'n'
        LayoutDirection = ldHorizontal
        object dxLayoutControl1Group8: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxLayoutControl1Group6: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutControl1Item10: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'Cliente'
              Control = txtCliente
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item11: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'Reclamaci'#243'n'
              Control = txtReclamacion
              ControlOptions.ShowBorder = False
            end
          end
          object dxLayoutControl1Group7: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutControl1Item8: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'Monto Afiliado'
              Control = CurMontoAfiliado
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item12: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'Tipo Plan'
              Control = txtTipoPlan
              ControlOptions.ShowBorder = False
            end
          end
        end
        object dxLayoutControl1Group10: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl1Group9: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object dxLayoutControl1Group11: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxLayoutControl1Item6: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Total     '
                Control = CurTotal
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl1Item2: TdxLayoutItem
                Caption = 'Monto Total PV'
                Control = CurMontoTotalPV
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl1Item15: TdxLayoutItem
                Caption = 'Cob. %'
                Control = CurPorcentajeCob
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutControl1Item13: TdxLayoutItem
              Caption = 'Diferencia'
              Control = CurDiferencia
              ControlOptions.ShowBorder = False
            end
          end
          object dxLayoutControl1Group12: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object dxLayoutControl1Item14: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'Estado'
              Control = txtEstado
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item7: TdxLayoutItem
              Caption = 'Afiliado'
              Control = txtAfiliado
              ControlOptions.ShowBorder = False
            end
          end
        end
      end
      object dxLayoutControl1Group1: TdxLayoutGroup
        Caption = 'Detalle de la Reclamaci'#243'n'
        object dxLayoutControl1Item3: TdxLayoutItem
          Control = cgReclamacionDetalle
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Group2: TdxLayoutGroup
        AutoAligns = [aaVertical]
        AlignHorz = ahRight
        Caption = 'Botones'
        ShowCaption = False
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Group5: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxLayoutControl1Item1: TdxLayoutItem
            Caption = 'Imprimir'
            ShowCaption = False
            Control = btImprimir
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item4: TdxLayoutItem
            Caption = 'cxButton1'
            ShowCaption = False
            Control = BtAceptar
            ControlOptions.ShowBorder = False
          end
        end
        object dxLayoutControl1Item5: TdxLayoutItem
          Caption = 'cxButton2'
          ShowCaption = False
          Control = BtCancelar
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object spMensaje: TLMDSimplePanel
    Left = 242
    Top = 8
    Width = 458
    Height = 133
    Bevel.StyleInner = bvFrameLowered
    Bevel.StyleOuter = bvFrameRaised
    Bevel.BorderWidth = 8
    Bevel.BorderInnerWidth = 2
    Bevel.LightColor = 12582911
    Bevel.Mode = bmCustom
    Bevel.StandardStyle = lsLowered
    Color = 10210492
    TabOrder = 1
    Visible = False
    object Shape1: TShape
      Left = 17
      Top = 35
      Width = 424
      Height = 40
      Brush.Color = 14743027
      Shape = stRoundRect
    end
    object Label1: TLabel
      Left = 14
      Top = 14
      Width = 430
      Height = 81
      Align = alClient
      Alignment = taCenter
      Caption = 'PROCESANDO POR FAVOR ESPERE...'
      Font.Charset = ANSI_CHARSET
      Font.Color = 3766914
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Layout = tlCenter
      ExplicitWidth = 383
      ExplicitHeight = 24
    end
    object Panel1: TPanel
      Left = 14
      Top = 95
      Width = 430
      Height = 24
      Align = alBottom
      Color = 11392730
      TabOrder = 0
    end
  end
  object dsDatos: TDataSource
    DataSet = JvMemoryData1
    Left = 324
    Top = 111
  end
  object JvMemoryData1: TJvMemoryData
    FieldDefs = <>
    Left = 288
    Top = 112
    object JvMemoryData1Reclamacion: TIntegerField
      FieldName = 'Reclamacion'
    end
    object JvMemoryData1Cliente: TStringField
      FieldName = 'Cliente'
      Size = 25
    end
    object JvMemoryData1TipoPlan: TStringField
      FieldName = 'TipoPlan'
      Size = 10
    end
    object JvMemoryData1MontoAfiliado: TCurrencyField
      FieldName = 'MontoAfiliado'
    end
    object JvMemoryData1MontoArs: TCurrencyField
      FieldName = 'MontoArs'
    end
    object JvMemoryData1Total: TCurrencyField
      FieldName = 'Total'
    end
    object JvMemoryData1Estatus: TStringField
      FieldName = 'Estatus'
    end
  end
  object JvMemoryData2: TJvMemoryData
    FieldDefs = <>
    Left = 80
    Top = 552
    object JvMemoryData2Codigo: TIntegerField
      FieldName = 'Codigo'
    end
    object JvMemoryData2Descripcion: TStringField
      DisplayWidth = 100
      FieldName = 'Descripcion'
      Size = 100
    end
    object JvMemoryData2MontoAfiliado: TCurrencyField
      FieldName = 'MontoAfiliado'
    end
    object JvMemoryData2MontoArs: TCurrencyField
      FieldName = 'MontoArs'
    end
    object JvMemoryData2Error: TStringField
      DisplayWidth = 100
      FieldName = 'Error'
      Size = 100
    end
  end
  object dsDatosRec: TDataSource
    DataSet = JvMemoryData2
    Left = 140
    Top = 551
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 34
    Top = 389
  end
  object XMLTransformProvider1: TXMLTransformProvider
    TransformRead.TransformationFile = 'C:\palicxml\Palic_pwd.xtr'
    Left = 34
    Top = 429
  end
  object HTTPRIO1: THTTPRIO
    OnAfterExecute = HTTPRIO1AfterExecute
    WSDLLocation = 'http://10.0.0.249/WSReferenciaPalic/WebservicePalic.asmx?WSDL'
    Service = 'TWebServicePalic'
    Port = 'TWebServicePalicSoap'
    HTTPWebNode.Agent = 'Borland SOAP 1.1'
    HTTPWebNode.InvokeOptions = [soIgnoreInvalidCerts]
    Converter.Options = [soSendMultiRefObj, soTryAllSchema, soRootRefNodesToBody, soDocument]
    Left = 82
    Top = 429
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'XMLTransformProvider1'
    Left = 82
    Top = 389
  end
end
