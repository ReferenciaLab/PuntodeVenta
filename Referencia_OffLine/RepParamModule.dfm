inherited frmRepParamModule: TfrmRepParamModule
  Left = 498
  Top = 3
  Caption = 'Par'#225'metros del Reporte'
  ClientHeight = 645
  ClientWidth = 688
  OldCreateOrder = True
  ExplicitWidth = 696
  ExplicitHeight = 674
  PixelsPerInch = 96
  TextHeight = 13
  object lcParam: TdxLayoutControl [1]
    Left = 0
    Top = 59
    Width = 688
    Height = 586
    Align = alClient
    ParentBackground = True
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmAppActions.lnfWeb
    object deHasta: TcxDateEdit
      Left = 342
      Top = 61
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 1
      Width = 121
    end
    object deDesde: TcxDateEdit
      Left = 125
      Top = 61
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 0
      Width = 121
    end
    object lcdiDesde: TcxLookupComboBox
      Left = 125
      Top = 120
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'DiarioID'
      Properties.ListColumns = <
        item
          Caption = 'Diario'
          FieldName = 'DiarioID'
        end
        item
          FieldName = 'Fecha'
        end
        item
          Caption = 'Tipo'
          FieldName = 'TipoDocumento'
        end
        item
          FieldName = 'Descripcion'
        end
        item
          FieldName = 'Numero'
        end>
      Properties.ListSource = dsDiarios
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 2
      Width = 145
    end
    object lcdiHasta: TcxLookupComboBox
      Left = 125
      Top = 147
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'DiarioID'
      Properties.ListColumns = <
        item
          Caption = 'Diario'
          FieldName = 'DiarioID'
        end
        item
          FieldName = 'Fecha'
        end
        item
          Caption = 'Tipo'
          FieldName = 'TipoDocumento'
        end
        item
          FieldName = 'Descripcion'
        end
        item
          FieldName = 'Numero'
        end>
      Properties.ListSource = dsDiarios
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 3
      Width = 145
    end
    object cbPosteo: TcxComboBox
      Left = 422
      Top = 147
      Properties.Items.Strings = (
        'Todos'
        'Posteados'
        'No-Posteados')
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 5
      Text = 'Todos'
      Width = 121
    end
    object lcTipoD: TcxLookupComboBox
      Left = 422
      Top = 120
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'TipoDocumento'
      Properties.ListColumns = <
        item
          Caption = 'Tipo'
          FieldName = 'TipoDocumento'
        end
        item
          FieldName = 'Descripcion'
        end>
      Properties.ListSource = dsTipoDocumento
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 4
      Width = 145
    end
    object lcNumDesde: TcxLookupComboBox
      Left = 125
      Top = 206
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'Numero'
      Properties.ListColumns = <
        item
          FieldName = 'Numero'
        end
        item
          FieldName = 'Fecha'
        end
        item
          FieldName = 'Descripcion'
        end>
      Properties.ListSource = dsTransacciones
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 6
      Width = 145
    end
    object lcNumHasta: TcxLookupComboBox
      Left = 125
      Top = 233
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'Numero'
      Properties.ListColumns = <
        item
          FieldName = 'Numero'
        end
        item
          FieldName = 'Fecha'
        end
        item
          FieldName = 'Descripcion'
        end>
      Properties.ListSource = dsTransacciones
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 7
      Width = 145
    end
    object lcCuentaDesde: TcxLookupComboBox
      Left = 125
      Top = 432
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'CuentaContable'
      Properties.ListColumns = <
        item
          Caption = 'Cuenta'
          FieldName = 'CuentaContable'
        end
        item
          FieldName = 'Nombre'
        end
        item
          Caption = 'Cuenta Control'
          FieldName = 'CuentaPadre'
        end>
      Properties.ListSource = dsCuentas
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 13
      Width = 145
    end
    object lcCuentaHasta: TcxLookupComboBox
      Left = 125
      Top = 459
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'CuentaContable'
      Properties.ListColumns = <
        item
          Caption = 'Cuenta'
          FieldName = 'CuentaContable'
        end
        item
          FieldName = 'Nombre'
        end
        item
          Caption = 'Cuenta Control'
          FieldName = 'CuentaPadre'
        end>
      Properties.ListSource = dsCuentas
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 14
      Width = 145
    end
    object cbNoTrans: TcxCheckBox
      Left = 422
      Top = 206
      Properties.Alignment = taCenter
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 8
      Width = 25
    end
    object lcAnoFiscal: TcxLookupComboBox
      Left = 125
      Top = 319
      Properties.KeyFieldNames = 'AnoFiscal'
      Properties.ListColumns = <
        item
          FieldName = 'AnoFiscal'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsAnos
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 10
      Width = 121
    end
    object cbHastaPeriodo: TcxComboBox
      Left = 125
      Top = 346
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 11
      Width = 121
    end
    object cbControl: TcxCheckBox
      Left = 422
      Top = 432
      Properties.Alignment = taCenter
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 15
      Width = 25
    end
    object lcEstado: TcxLookupComboBox
      Left = 125
      Top = 292
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'EstadoID'
      Properties.ListColumns = <
        item
          Caption = 'Estado'
          FieldName = 'EstadoID'
        end
        item
          FieldName = 'Descripcion'
        end>
      Properties.ListSource = dsEstados
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 9
      Width = 121
    end
    object cbAcumulado: TcxCheckBox
      Left = 125
      Top = 545
      Properties.Alignment = taCenter
      State = cbsChecked
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 17
      Width = 25
    end
    object cbDimensiones: TcxImageComboBox
      Left = 342
      Top = 518
      EditValue = '0'
      Properties.Items = <
        item
          Description = 'Sin Filtro'
          Value = '0'
        end
        item
          Description = 'Centro de Costo'
          Value = '1'
        end
        item
          Description = 'Departamento'
          Value = '2'
        end
        item
          Description = 'Proyectos'
          Value = '3'
        end>
      Properties.OnEditValueChanged = cbDimensionesPropertiesEditValueChanged
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 18
      Width = 121
    end
    object lcDimension: TcxLookupComboBox
      Left = 342
      Top = 545
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'Dimension'
      Properties.ListColumns = <
        item
          FieldName = 'Dimension'
        end
        item
          FieldName = 'Descripcion'
        end>
      Properties.ListSource = dsDimensiones
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 19
      Width = 121
    end
    object cbTipoEstado: TcxImageComboBox
      Left = 125
      Top = 518
      EditValue = 1
      Properties.Alignment.Horz = taLeftJustify
      Properties.Items = <
        item
          Description = 'Normal'
          Value = '1'
        end
        item
          Description = 'vs Periodo Anterior'
          Value = '2'
        end
        item
          Description = 'vs A'#241'o Anterior'
          Value = '3'
        end
        item
          Description = 'vs Presupuesto'
          Value = '4'
        end>
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 16
      Width = 121
    end
    object lcProyecto: TcxLookupComboBox
      Left = 125
      Top = 604
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'ProyectoID'
      Properties.ListColumns = <
        item
          Caption = 'Proyecto'
          FieldName = 'ProyectoID'
        end
        item
          FieldName = 'Descripcion'
        end>
      Properties.ListSource = dsProyectos
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 20
      Width = 145
    end
    object lcMoneda: TcxLookupComboBox
      Left = 125
      Top = 373
      RepositoryItem = DM.cxLcMoneda
      Properties.ListColumns = <>
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 12
      Width = 121
    end
    object lcParamGroup_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object lgRangos: TdxLayoutGroup
        Caption = 'Rangos'
        CaptionOptions.AlignHorz = taCenter
        object lgFechas: TdxLayoutGroup
          Caption = 'Fechas'
          LayoutDirection = ldHorizontal
          object lideDesde: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'Desde'
            Control = deDesde
            ControlOptions.ShowBorder = False
          end
          object lideHasta: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'Hasta'
            Control = deHasta
            ControlOptions.ShowBorder = False
          end
        end
        object lgDiarios: TdxLayoutGroup
          Caption = 'Diarios'
          LayoutDirection = ldHorizontal
          object lcParamGroup2: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object lcParamItem1: TdxLayoutItem
              Caption = 'Desde'
              Control = lcdiDesde
              ControlOptions.ShowBorder = False
            end
            object lcParamItem2: TdxLayoutItem
              Caption = 'Hasta'
              Control = lcdiHasta
              ControlOptions.ShowBorder = False
            end
          end
          object lcParamGroup1: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object lcParamItem4: TdxLayoutItem
              Caption = 'Tipo Documento'
              Control = lcTipoD
              ControlOptions.ShowBorder = False
            end
            object lcParamItem3: TdxLayoutItem
              Caption = 'Posteo'
              Control = cbPosteo
              ControlOptions.ShowBorder = False
            end
          end
        end
        object lgNumeros: TdxLayoutGroup
          Caption = 'Transacciones'
          LayoutDirection = ldHorizontal
          object lcParamGroup3: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object liNumDesde: TdxLayoutItem
              Caption = 'Desde'
              Control = lcNumDesde
              ControlOptions.ShowBorder = False
            end
            object liNumHasta: TdxLayoutItem
              Caption = 'Hasta'
              Control = lcNumHasta
              ControlOptions.ShowBorder = False
            end
          end
          object liNoTrans: TdxLayoutItem
            Caption = 'Incluir cuentas sin movimiento'
            Control = cbNoTrans
            ControlOptions.ShowBorder = False
          end
        end
        object lgBalances: TdxLayoutGroup
          Caption = 'Balances'
          object liEstado: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'Estado Financiero'
            Control = lcEstado
            ControlOptions.ShowBorder = False
          end
          object lcParamItem5: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'A'#241'o Fiscal'
            Control = lcAnoFiscal
            ControlOptions.ShowBorder = False
          end
          object lcParamItem6: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'Periodo'
            Control = cbHastaPeriodo
            ControlOptions.ShowBorder = False
          end
          object liMoneda: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'Moneda'
            Control = lcMoneda
            ControlOptions.ShowBorder = False
          end
        end
        object lgCuentas: TdxLayoutGroup
          Caption = 'Cuentas'
          LayoutDirection = ldHorizontal
          object lcParamGroup4: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object lcParamItem7: TdxLayoutItem
              Caption = 'Desde'
              Control = lcCuentaDesde
              ControlOptions.ShowBorder = False
            end
            object lcParamItem8: TdxLayoutItem
              Caption = 'Hasta'
              Control = lcCuentaHasta
              ControlOptions.ShowBorder = False
            end
          end
          object liCuentaControl: TdxLayoutItem
            Caption = 'Incluir Cuentas Control'
            Control = cbControl
            ControlOptions.ShowBorder = False
          end
        end
        object lgDimensiones: TdxLayoutGroup
          Caption = 'Opciones'
          LayoutDirection = ldHorizontal
          object lcParamGroup6: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object lcTipoEstado: TdxLayoutItem
              Caption = 'Tipo de Estado'
              Control = cbTipoEstado
              ControlOptions.ShowBorder = False
            end
            object lcAcumulado: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'Acumulado'
              Control = cbAcumulado
              ControlOptions.ShowBorder = False
            end
          end
          object lcParamGroup5: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object lcParamItem11: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'Filtro Dimensiones'
              Control = cbDimensiones
              ControlOptions.ShowBorder = False
            end
            object lcParamItem12: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'Filtro'
              Control = lcDimension
              ControlOptions.ShowBorder = False
            end
          end
        end
        object lgProyecto: TdxLayoutGroup
          Caption = 'Proyecto'
          object lcParamItem9: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'Proyecto'
            Control = lcProyecto
            ControlOptions.ShowBorder = False
          end
        end
      end
    end
  end
  inherited pnCaption: TPanel
    Width = 688
    ExplicitWidth = 688
  end
  inherited formStorage: TJvFormStorage
    Left = 468
    Top = 26
  end
  object dxBarManager: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Bars = <
      item
        AllowClose = False
        AllowCustomizing = False
        AllowQuickCustomizing = False
        AllowReset = False
        Caption = 'PreviewToolBar'
        DockedDockingStyle = dsTop
        DockedLeft = 0
        DockedTop = 0
        DockingStyle = dsTop
        FloatLeft = 464
        FloatTop = 356
        FloatClientWidth = 23
        FloatClientHeight = 22
        ItemLinks = <
          item
            Item = btPreview
            Visible = True
          end
          item
            Item = dxBarButton1
            Visible = True
          end>
        Name = 'PreviewToolBar'
        OneOnRow = True
        Row = 0
        UseOwnFont = False
        Visible = True
        WholeRow = True
      end>
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    Style = bmsOffice11
    UseSystemFont = True
    Left = 412
    Top = 20
    DockControlHeights = (
      0
      0
      26
      0)
    object btPreview: TdxBarButton
      Caption = '&Vista Preelimiar'
      Category = 0
      Hint = 'Vista Preelimiar'
      Visible = ivAlways
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000000000E78C3100B56B
        4A00E79C52008C635A0094635A00A5635A00A56B5A00BD7B5A00FFB55A004A52
        630094636300A5636B00A5736B00AD7B6B00BD846B00C6846B00D6946B00AD7B
        7300B58C7300DE9C7300AD847B00B58C7B00E7AD7B00EFBD7B00EFC67B005A63
        8400636B84006B6B8400B58C8400CEA58400EFBD8400EFC68400F7C68400AD8C
        8C00EFC68C00F7CE8C00BD949400B5AD9400EFC69400EFCE9400F7CE9400CEA5
        9C00D6B59C00EFCE9C00DEBDA500EFCEA500F7D6A500427BAD00EFD6AD00F7D6
        AD00DEC6B500DECEB500EFD6B500F7D6B500F7DEB500D6BDBD00DEC6BD00F7DE
        BD00186BC600DEC6C600DECEC600F7E7C600FFEFC600F7E7CE001073D600FFFF
        D600F7EFDE00FFEFDE00F7EFE700FFEFE700FFF7E700F7F7EF00FFF7EF00FFFF
        EF00FFF7F700FFFFF700FF00FF0031A5FF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004C4C0B0B0B0B
        0B0B0B0B0B0B0B0B0B4C4C4C093E35302B27221E171E1E1F0B4C4C1A3A1A3930
        2D2B26221E17171F0B4C4C4C4D401B39342D2B26221E171F0B4C4C4C054D4019
        39302D2B26221E1F0B4C4C4C0C484D2F0311040D1D26221F0B4C4C4C0C4E4421
        1C2C342A121D26220B4C4C4C0E4E4814323F3D4B2A0D2B270B4C4C4C0E4E4E0A
        42423F4934042D2E0B4C4C4C104E4E1C3B4442412C11312D0B4C4C4C104E4E37
        243B42321C1533250B4C4C4C134E4E4E371C0A14290606060B4C4C4C134E4E4E
        4E4E4B4B37060200014C4C4C164E4E4E4E4E4E4E3B0608074C4C4C4C16474747
        4747474737060E4C4C4C4C4C161010101010101010064C4C4C4C}
      PaintStyle = psCaptionGlyph
      ShortCut = 120
      OnClick = btPreviewClick
    end
    object dxBarButton1: TdxBarButton
      Caption = '&Imprimir'
      Category = 0
      Hint = 'Imprimir'
      Visible = ivAlways
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000000000181818002118
        21001821210031313100393939004242420052525200636363006B6B6B007373
        7300848484008C8C8C00948C8C00949494009C949400F7AD94009C9C9C00CE9C
        9C00F7AD9C00FFAD9C00FFB59C009C9CA500A5A5A500ADA5A500C6A5A500A5AD
        A500FFBDA500A5D6A500ADADAD00B5ADAD00FFC6AD00B5B5B500FFC6B500BDBD
        BD00C6BDBD00BDC6BD00E7C6BD00EFCEBD00FFCEBD00BDBDC600C6C6C600CEC6
        C600E7CEC600CECECE00D6CECE00DED6CE00FFDECE00D6D6D600FFE7D600D6DE
        DE00DEDEDE00EFE7DE00E7E7E700EFE7E700FFE7E700EFEFEF00F7EFEF00F7EF
        F700F7F7F700FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003B3B3B3B3B3B
        103B3B3B0A0A0B3B3B3B3B3B3B3B10102C0D04060E282F0A3B3B3B3B10103A3C
        2F1005010103070A0B3B0C10373C3528100B0D0A07040201093B10343421161D
        22160D0C0D0E0B080A3B0D1C161C282F373732281C100C0D0B3B0C1C282B2832
        2B19212B2F2F281F0D3B3B102B2B32281F1B231817161F22163B3B3B10211C1C
        343837332F2B1F0D3B3B3B3B3B102F2B10212F2F2F281C3B3B3B3B3B3B3B362E
        24242A2D2B0D3B3B3B3B3B3B3B3B112E261E1A133B3B3B3B3B3B3B3B3B3B112E
        261E1A0F3B3B3B3B3B3B3B3B3B3B112E261E1A123B3B3B3B3B3B3B3B3B11302E
        261E1A123B3B3B3B3B3B3B3B3B1111111112123B3B3B3B3B3B3B}
      PaintStyle = psCaptionGlyph
      ShortCut = 16464
      OnClick = dxBarButton1Click
    end
    object dxBarButton2: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000000000313131003131
        39004A4A4200525252005A5A63006B6363007B7363006B6B6B007B7B7B008484
        84008C8C8C009C9C9C00A5A5A500ADA5A5002139AD00ADA5AD00ADADAD00B5AD
        AD00FFBDAD00FFC6AD00B5B5B500BDB5B500DEB5B500B5BDB500D6BDB500F7BD
        B500FFCEB500BDBDBD00C6BDBD00BDDEBD00C6BDC600C6C6C600FFD6C600CECE
        CE00D6CECE00EFD6CE00FFDECE00D6D6D600DEDEDE00E7DEDE00FFE7DE00DEE7
        E700E7E7E700F7EFE7007B94EF00EFEFEF00F7F7F700FF00FF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002F2F2F2F2F2F
        092F2F2F0B0B0C2F2F2F2F2F2F2F0909260D03071021260B2F2F2F2F09092E30
        261104000003090B0C2F09092D302D25140C0F0B080301010A2F092D2A211414
        21140D0C0F100C090B2F091B141425262D2E2A211B100C0F0C2F09142525252A
        261714252626221F102F2F0926252A25141D2114151B1F211B2F2F2F09211B1C
        2A2E2D2B27141F092F2F2F2F2F092925142126262625092F2F2F2F2F2F2F2B28
        232323270202020202022F2F2F2F162824201A13022C0E2828052F2F2F2F1628
        20201A122C0E2C0E28052F2F2F2F162820201A120228280E2C062F2F2F162828
        24201A12022828280E2C2F2F2F1616161619192F02050505060E}
    end
  end
  object qrDiarios: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      '  FROM CgDiario')
    Left = 296
    Top = 350
  end
  object qrTipoDocumento: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      '   FROM CgTiposDocumento')
    Left = 492
    Top = 430
  end
  object qrTransacciones: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *'
      '  from CgTransacciones')
    Left = 508
    Top = 506
  end
  object qrCuentas: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      '   FROM CgCuentas')
    Left = 488
    Top = 266
  end
  object dsDiarios: TDataSource
    DataSet = qrDiarios
    Left = 296
    Top = 274
  end
  object dsTipoDocumento: TDataSource
    DataSet = qrTipoDocumento
    Left = 528
    Top = 438
  end
  object dsTransacciones: TDataSource
    DataSet = qrTransacciones
    Left = 548
    Top = 514
  end
  object dsCuentas: TDataSource
    DataSet = qrCuentas
    Left = 532
    Top = 274
  end
  object qrAnos: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT AnoFiscal'
      '  FROM CgPeriodos'
      'GROUP By AnoFiscal'
      'ORDER By AnoFiscal')
    Left = 332
    Top = 258
  end
  object dsAnos: TDataSource
    DataSet = qrAnos
    Left = 380
    Top = 270
  end
  object strDebitos: TJvStrHolder
    Capacity = 28
    Macros = <>
    Left = 88
    Top = 160
    InternalVer = 1
    StrData = (
      ''
      '4d657330305f44656269746f'
      '4d657330315f44656269746f'
      '4d657330325f44656269746f'
      '4d657330335f44656269746f'
      '4d657330345f44656269746f'
      '4d657330355f44656269746f'
      '4d657330365f44656269746f'
      '4d657330375f44656269746f'
      '4d657330385f44656269746f'
      '4d657330395f44656269746f'
      '4d657331305f44656269746f'
      '4d657331315f44656269746f'
      '4d657331325f44656269746f'
      '4d657331335f44656269746f'
      ''
      '')
  end
  object strCreditos: TJvStrHolder
    Capacity = 28
    Macros = <>
    Left = 152
    Top = 192
    InternalVer = 1
    StrData = (
      ''
      '4d657330305f4372656469746f'
      '4d657330315f4372656469746f'
      '4d657330325f4372656469746f'
      '4d657330335f4372656469746f'
      '4d657330345f4372656469746f'
      '4d657330355f4372656469746f'
      '4d657330365f4372656469746f'
      '4d657330375f4372656469746f'
      '4d657330385f4372656469746f'
      '4d657330395f4372656469746f'
      '4d657331305f4372656469746f'
      '4d657331315f4372656469746f'
      '4d657331325f4372656469746f'
      '4d657331335f4372656469746f')
  end
  object qrEstados: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      '   FROM CgEstados')
    Left = 436
    Top = 338
  end
  object dsEstados: TDataSource
    AutoEdit = False
    DataSet = qrEstados
    Left = 368
    Top = 334
  end
  object qrDimensiones: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'pTipo'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      '   FROM CgDimensiones'
      'WHERE Tipo = :pTipo ')
    Left = 516
    Top = 350
  end
  object dsDimensiones: TDataSource
    DataSet = qrDimensiones
    Left = 560
    Top = 362
  end
  object qrProyectos: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      '  FROM CgProyectos')
    Left = 208
    Top = 314
  end
  object dsProyectos: TDataSource
    AutoEdit = False
    DataSet = qrProyectos
    Left = 108
    Top = 378
  end
end
