object frmDialogCobroPesosMod: TfrmDialogCobroPesosMod
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Formulario de Cobro - RD$'
  ClientHeight = 365
  ClientWidth = 666
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 666
    Height = 365
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmAppActions.lnfWeb
    object cgDatos: TcxGrid
      Left = 23
      Top = 77
      Width = 270
      Height = 153
      TabOrder = 3
      OnEnter = cgDatosEnter
      OnExit = cgDatosExit
      LookAndFeel.NativeStyle = True
      OnFocusedViewChanged = cgDatosFocusedViewChanged
      object dbDatos: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsDatos
        DataController.KeyFieldNames = 'FormaDePagoID'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnSorting = False
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        OptionsView.NewItemRowInfoText = 'Click here to add a new row'
        object dbDatosDescripcion: TcxGridDBColumn
          Caption = 'Forma de Pago'
          DataBinding.FieldName = 'Descripcion'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Styles.Content = dmAppActions.cxStyle44
          Width = 112
        end
        object dbDatosMoneda: TcxGridDBColumn
          DataBinding.FieldName = 'Moneda'
          Options.Editing = False
          Options.Focusing = False
          Width = 42
        end
        object dbDatosPagado: TcxGridDBColumn
          DataBinding.FieldName = 'Pagado'
          HeaderAlignmentHorz = taCenter
          Width = 102
        end
      end
      object lvDatos: TcxGridLevel
        GridView = dbDatos
      end
    end
    object btcancelar: TcxButton
      Left = 230
      Top = 329
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      ModalResult = 2
      TabOrder = 5
    end
    object btaceptar: TcxButton
      Left = 149
      Top = 329
      Width = 75
      Height = 25
      Caption = 'Aceptar'
      TabOrder = 4
      OnClick = btaceptarClick
    end
    object EdPendiente: TcxCurrencyEdit
      Left = 95
      Top = 36
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = 'RD$,     0.00;(RD$,     0.00)'
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 2
      OnEnter = cgDatosExit
      OnExit = cgDatosExit
      Width = 121
    end
    object EdCobrado: TcxCurrencyEdit
      Left = 95
      Top = 268
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = 'RD$,     0.00;(RD$,     0.00)'
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 0
      OnEnter = cgDatosExit
      OnExit = cgDatosExit
      Width = 121
    end
    object EdDevuelta: TcxCurrencyEdit
      Left = 95
      Top = 295
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = 'RD$,     0.00;(RD$,     0.00)'
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 1
      OnEnter = cgDatosExit
      OnExit = cgDatosExit
      Width = 121
    end
    object cbExtBancoCheque: TcxExtLookupComboBox
      Left = 427
      Top = 238
      RepositoryItem = DM.elcBanco
      Properties.CharCase = ecUpperCase
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 12
      Width = 191
    end
    object edNumeroCK: TcxMaskEdit
      Left = 427
      Top = 265
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d+'
      Properties.MaxLength = 0
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 13
      Width = 150
    end
    object edAprobacionTarD: TcxMaskEdit
      Left = 427
      Top = 120
      Properties.MaskKind = emkRegExpr
      Properties.MaxLength = 0
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 8
      Width = 170
    end
    object edAprobacionTarC: TcxMaskEdit
      Left = 427
      Top = 61
      Properties.IgnoreMaskBlank = True
      Properties.MaskKind = emkRegExpr
      Properties.MaxLength = 0
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 6
      Width = 170
    end
    object btClearTC: TcxButton
      Left = 603
      Top = 61
      Width = 25
      Height = 21
      TabOrder = 7
      OnClick = btClearTCClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
        555557777F777555F55500000000555055557777777755F75555005500055055
        555577F5777F57555555005550055555555577FF577F5FF55555500550050055
        5555577FF77577FF555555005050110555555577F757777FF555555505099910
        555555FF75777777FF555005550999910555577F5F77777775F5500505509990
        3055577F75F77777575F55005055090B030555775755777575755555555550B0
        B03055555F555757575755550555550B0B335555755555757555555555555550
        BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
        50BB555555555555575F555555555555550B5555555555555575}
      NumGlyphs = 2
    end
    object btClearTD: TcxButton
      Left = 603
      Top = 120
      Width = 25
      Height = 21
      TabOrder = 9
      OnClick = btClearTDClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
        555557777F777555F55500000000555055557777777755F75555005500055055
        555577F5777F57555555005550055555555577FF577F5FF55555500550050055
        5555577FF77577FF555555005050110555555577F757777FF555555505099910
        555555FF75777777FF555005550999910555577F5F77777775F5500505509990
        3055577F75F77777575F55005055090B030555775755777575755555555550B0
        B03055555F555757575755550555550B0B335555755555757555555555555550
        BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
        50BB555555555555575F555555555555550B5555555555555575}
      NumGlyphs = 2
    end
    object btClearCK: TcxButton
      Left = 583
      Top = 265
      Width = 25
      Height = 21
      TabOrder = 15
      OnClick = btClearCKClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
        555557777F777555F55500000000555055557777777755F75555005500055055
        555577F5777F57555555005550055555555577FF577F5FF55555500550050055
        5555577FF77577FF555555005050110555555577F757777FF555555505099910
        555555FF75777777FF555005550999910555577F5F77777775F5500505509990
        3055577F75F77777575F55005055090B030555775755777575755555555550B0
        B03055555F555757575755550555550B0B335555755555757555555555555550
        BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
        50BB555555555555575F555555555555550B5555555555555575}
      NumGlyphs = 2
    end
    object dtFechaCK: TcxDateEdit
      Left = 427
      Top = 292
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 14
      Width = 150
    end
    object edTransaccion: TcxMaskEdit
      Left = 427
      Top = 179
      Properties.IgnoreMaskBlank = True
      Properties.MaskKind = emkRegExpr
      Properties.MaxLength = 0
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 10
      Width = 170
    end
    object btClearTP: TcxButton
      Left = 603
      Top = 179
      Width = 25
      Height = 21
      TabOrder = 11
      OnClick = btClearTPClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
        555557777F777555F55500000000555055557777777755F75555005500055055
        555577F5777F57555555005550055555555577FF577F5FF55555500550050055
        5555577FF77577FF555555005050110555555577F757777FF555555505099910
        555555FF75777777FF555005550999910555577F5F77777775F5500505509990
        3055577F75F77777575F55005055090B030555775755777575755555555550B0
        B03055555F555757575755550555550B0B335555755555757555555555555550
        BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
        50BB555555555555575F555555555555550B5555555555555575}
      NumGlyphs = 2
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      object dxLayoutControl1Group3: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        ShowCaption = False
        Hidden = True
        ShowBorder = False
        object LcDevuelta: TdxLayoutGroup
          AutoAligns = [aaHorizontal]
          AlignVert = avBottom
          Caption = 'Totales'
          object dxLayoutControl1Item2: TdxLayoutItem
            Caption = 'Cobrado'
            Control = EdCobrado
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item3: TdxLayoutItem
            Caption = 'Devuelta'
            Control = EdDevuelta
            ControlOptions.ShowBorder = False
          end
        end
        object LcPendiente: TdxLayoutGroup
          Caption = 'Monto Pendiente'
          object dxLayoutControl1Item1: TdxLayoutItem
            Caption = 'Valor a Cobrar'
            Control = EdPendiente
            ControlOptions.ShowBorder = False
          end
        end
        object dxLayoutControl1Group7: TdxLayoutGroup
          AutoAligns = []
          Caption = 'New Group'
          ShowCaption = False
          object dxLayoutControl1Item4: TdxLayoutItem
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            Caption = 'cxGrid1'
            ShowCaption = False
            Control = cgDatos
            ControlOptions.ShowBorder = False
          end
        end
        object dxLayoutControl1Group2: TdxLayoutGroup
          AutoAligns = []
          AlignHorz = ahRight
          AlignVert = avBottom
          Caption = 'Botones'
          ShowCaption = False
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxLayoutControl1Item6: TdxLayoutItem
            Caption = 'cxButton2'
            ShowCaption = False
            Control = btaceptar
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item5: TdxLayoutItem
            Caption = 'cxButton1'
            ShowCaption = False
            Control = btcancelar
            ControlOptions.ShowBorder = False
          end
        end
      end
      object dxLayoutControl1Group1: TdxLayoutGroup
        Caption = 'Otros Datos (Tarjetas y Cheques)'
        object dxLayoutControl1Group4: TdxLayoutGroup
          Caption = 'Datos Tarjeta Cr'#233'dito'
          LayoutDirection = ldHorizontal
          object dxLayoutControl1Item17: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'N'#250'm. Aprobaci'#243'n'
            Control = edAprobacionTarC
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item10: TdxLayoutItem
            Caption = 'New Item'
            ShowCaption = False
            Control = btClearTC
            ControlOptions.ShowBorder = False
          end
        end
        object dxLayoutControl1Group6: TdxLayoutGroup
          Caption = 'Datos Tarjeta D'#233'bito'
          LayoutDirection = ldHorizontal
          object dxLayoutControl1Item14: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'N'#250'm. Aprobaci'#243'n'
            Control = edAprobacionTarD
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item11: TdxLayoutItem
            Caption = 'New Item'
            ShowCaption = False
            Control = btClearTD
            ControlOptions.ShowBorder = False
          end
        end
        object dxLayoutControl1Group8: TdxLayoutGroup
          Caption = 'New Group'
          LayoutDirection = ldHorizontal
          object dxLayoutControl1Item7: TdxLayoutItem
            Caption = 'N'#250'm. Transacci'#243'n'
            Control = edTransaccion
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item15: TdxLayoutItem
            Caption = 'New Item'
            ShowCaption = False
            Control = btClearTP
            ControlOptions.ShowBorder = False
          end
        end
        object dxLayoutControl1Group5: TdxLayoutGroup
          Caption = 'Datos Cheque'
          object dxLayoutControl1Item9: TdxLayoutItem
            Caption = 'Banco'
            Control = cbExtBancoCheque
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Group10: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object dxLayoutControl1Group11: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              ShowBorder = False
              object dxLayoutControl1Item12: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Cheque'
                Control = edNumeroCK
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl1Item18: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Fecha'
                Control = dtFechaCK
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutControl1Item13: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'New Item'
              ShowCaption = False
              Control = btClearCK
              ControlOptions.ShowBorder = False
            end
          end
        end
      end
    end
  end
  object dsDatos: TDataSource
    DataSet = frmPuntoVentaMod.mdPago
    Left = 36
    Top = 327
  end
end
