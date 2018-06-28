object frmDialogCobroClientes: TfrmDialogCobroClientes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Formulario de Cobro Clientes - RD$'
  ClientHeight = 472
  ClientWidth = 665
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
    Width = 665
    Height = 472
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmAppActions.lnfWeb
    object cgDatos: TcxGrid
      Left = 23
      Top = 163
      Width = 270
      Height = 153
      TabOrder = 7
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
      Top = 415
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      ModalResult = 2
      TabOrder = 9
    end
    object btaceptar: TcxButton
      Left = 149
      Top = 415
      Width = 75
      Height = 25
      Caption = 'Aceptar'
      TabOrder = 8
      OnClick = btaceptarClick
    end
    object EdPendiente: TcxCurrencyEdit
      Left = 95
      Top = 122
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = 'RD$,     0.00;(RD$,     0.00)'
      Properties.ReadOnly = False
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 6
      OnEnter = cgDatosExit
      OnExit = cgDatosExit
      Width = 121
    end
    object EdCobrado: TcxCurrencyEdit
      Left = 95
      Top = 354
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = 'RD$,     0.00;(RD$,     0.00)'
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 4
      OnEnter = cgDatosExit
      OnExit = cgDatosExit
      Width = 121
    end
    object EdDevuelta: TcxCurrencyEdit
      Left = 95
      Top = 381
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = 'RD$,     0.00;(RD$,     0.00)'
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 5
      OnEnter = cgDatosExit
      OnExit = cgDatosExit
      Width = 121
    end
    object cbExtBancoCheque: TcxExtLookupComboBox
      Left = 427
      Top = 324
      RepositoryItem = DM.elcBanco
      Properties.CharCase = ecUpperCase
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 16
      Width = 191
    end
    object edNumeroCK: TcxMaskEdit
      Left = 427
      Top = 351
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d+'
      Properties.MaxLength = 0
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 17
      Width = 150
    end
    object btClearTC: TcxButton
      Left = 603
      Top = 147
      Width = 25
      Height = 21
      TabOrder = 11
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
      Top = 206
      Width = 25
      Height = 21
      TabOrder = 13
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
      Top = 351
      Width = 25
      Height = 21
      TabOrder = 19
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
      Top = 378
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 18
      Width = 150
    end
    object edAprobacionTarC: TcxMaskEdit
      Left = 427
      Top = 147
      Properties.IgnoreMaskBlank = True
      Properties.MaskKind = emkRegExpr
      Properties.MaxLength = 0
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 10
      Width = 170
    end
    object edAprobacionTarD: TcxMaskEdit
      Left = 427
      Top = 206
      Properties.IgnoreMaskBlank = True
      Properties.MaskKind = emkRegExpr
      Properties.MaxLength = 0
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 12
      Width = 170
    end
    object edTransaccion: TcxMaskEdit
      Left = 427
      Top = 265
      Properties.IgnoreMaskBlank = True
      Properties.MaskKind = emkRegExpr
      Properties.MaxLength = 0
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 14
      Width = 170
    end
    object btClearTP: TcxButton
      Left = 603
      Top = 265
      Width = 25
      Height = 21
      TabOrder = 15
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
    object cbExtCliente: TcxExtLookupComboBox
      Left = 95
      Top = 36
      RepositoryItem = DM.elcCliente
      Properties.CharCase = ecUpperCase
      Properties.OnValidate = cbExtClientePropertiesValidate
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 0
      OnClick = cbExtClienteClick
      OnExit = cbExtClienteExit
      Width = 507
    end
    object btFindClient: TcxButton
      Left = 608
      Top = 36
      Width = 25
      Height = 22
      TabOrder = 3
      OnClick = btFindClientClick
      Glyph.Data = {
        DE030000424DDE03000000000000DE0200002800000010000000100000000100
        08000000000000010000120B0000120B0000AA000000AA00000000000000FFFF
        FF00FF00FF00FFFEFE0067343200663332006634320068343100683532006935
        31006B3630006D372F0072392D0071392E00733A2C007D3F2900804026007E40
        27007C3F2800844224008242250081412500964E2100984C1900A7541500A351
        1600A3531700C85B0000C85C0000B35A0E00B1590F00AF580F00AE581000AF5A
        1200A9551200A8551300A5531300A8551400AC591600B3611B00B2611F00A95B
        1E00C9610000CA600100C9600500C5630700C4620700B75B0800B65B0900CB67
        0F00B45C0D00B35A0D00B15A0E00B0590E00CD6B1100B9611000B35D1100CE6E
        1700CE6D1800C26E2200D5853B00C2793800D98D4A00FBEBDC00FBF2EA00D66B
        0000D66C0000D56B0000D46B0000D36A0000D2690000D1690000D0690000CE67
        0000CE680000CD670000CB630000CB640000CB650000CA620000CB660100CA64
        0100D26B0200CD660200CC680200CB660200CA660200CB670300CD680400CF69
        0500C2610500C5640600CD6B0800D3710C00BF630B00D2741400D1731400D175
        1800D2761900D1761900CF721900C36C1A00D9822A00D9832C00DA852F00DF89
        3100E1903F00E1934300DC914800DA914900DD954D00E9A05600E8A05600E8A2
        5A00E4A25E00F1AD6900EBAB6900DE9F6300F0AF6D00E6A76900F0B17100E6AB
        6F00ECB17500DEA56E00E2A87100F6BB7F00E7B68400EABF9300ECC29700EAC1
        9700EAC09800F9D1A800F3CCA500F8D1A900F0CBA600EDCCAA00FAD8B700FAD9
        B700F2D9C000F5DFC900F6E2CF00FAE9D800FBEFE300FDF2E700D1731100D87C
        1C00D87D1E00D9802400DA832900DC8B3600E1913E00E19B5100E6A35D00E7AE
        7200F9BE8100F8C18600ECBA8600FED6AB00F5CEA500F8DBBC00FBDFC200FDE4
        CA00FBE3CA00F8E6D300F5E4D200FEEFDF00FEF2E500FCEEDE00FCF3E800FCF6
        EF000202020202060B15150B0402020202020202020C101F5A56552E1E130702
        0202020212254452584C4B49484218090202021420454F3A813C1C4E50504323
        0502021746545136A4403E1B4E5050411502225E5D6090628B01A97C2B2A5047
        1D093561936794688C01010182312A4A5B0938956B6A966BA3010101018A644D
        530A37727A706F718D0101010187394E530E34779E7873763F0101037E2C2A4A
        2D08326EA0839A7DA701A879594D50471E09026585A59D9B8F8E98925F574E41
        1102022F6CA1A6889F746966635C43190D020202336D89A5A2849C999791240F
        0202020202303B757F86807B3D1612020202020202020221272829261A020202
        0202}
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = True
    end
    object edNombre: TcxTextEdit
      Left = 203
      Top = 63
      Properties.CharCase = ecUpperCase
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 2
      Width = 399
    end
    object edCedula: TcxMaskEdit
      Left = 95
      Top = 63
      Properties.CharCase = ecUpperCase
      Properties.EditMask = '###-#######-#'
      Properties.MaxLength = 0
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 1
      Text = '   -       - '
      OnExit = edCedulaExit
      Width = 102
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Group9: TdxLayoutGroup
        Caption = 'Datos Clientes'
        LayoutDirection = ldHorizontal
        object dxLayoutControl1Group13: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object dxLayoutControl1Item16: TdxLayoutItem
            Caption = 'Cliente'
            Control = cbExtCliente
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Group14: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object dxLayoutControl1Item19: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'Responsable'
              Control = edCedula
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item20: TdxLayoutItem
              AutoAligns = [aaVertical]
              Control = edNombre
              ControlOptions.ShowBorder = False
            end
          end
        end
        object dxLayoutControl1Item17: TdxLayoutItem
          Caption = 'btFindClient'
          ShowCaption = False
          Control = btFindClient
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Group12: TdxLayoutGroup
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
            object dxLayoutControl1Item15: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'Num. Aprobaci'#243'n'
              Control = edAprobacionTarC
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item10: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'New Item'
              ShowCaption = False
              Control = btClearTC
              ControlOptions.ShowBorder = False
            end
          end
          object dxLayoutControl1Group6: TdxLayoutGroup
            Caption = 'Datos Tarjeta D'#233'bito'
            LayoutDirection = ldHorizontal
            object dxLayoutControl1Item7: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'Num. Aprobaci'#243'n'
              Control = edAprobacionTarD
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item11: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'New Item'
              ShowCaption = False
              Control = btClearTD
              ControlOptions.ShowBorder = False
            end
          end
          object dxLayoutControl1Group8: TdxLayoutGroup
            Caption = 'Datos T-Pago'
            LayoutDirection = ldHorizontal
            object dxLayoutControl1Item8: TdxLayoutItem
              Caption = 'N'#250'm. Transacci'#243'n'
              Control = edTransaccion
              ControlOptions.ShowBorder = False
            end
            object dxLayoutControl1Item14: TdxLayoutItem
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
  end
  object dsDatos: TDataSource
    DataSet = mdPago
    Left = 36
    Top = 327
  end
  object mdPago: TdxMemData
    Indexes = <>
    SortOptions = []
    SortedField = 'Orden'
    Left = 5
    Top = 329
    object mdPagoFormaDePago: TStringField
      FieldName = 'Descripcion'
      Size = 25
    end
    object mdPagoOrden: TSmallintField
      FieldName = 'Orden'
    end
    object mdPagoPagado: TCurrencyField
      FieldName = 'Pagado'
      DisplayFormat = '##,###,##0.00'
    end
    object mdPagoFormaPagoID: TStringField
      FieldName = 'FormaDePagoID'
      Size = 15
    end
    object mdPagorefrecid: TLargeintField
      FieldName = 'refrecid'
    end
    object mdPagoMoneda: TStringField
      FieldName = 'Moneda'
      Size = 5
    end
    object mdPagoCobroID: TStringField
      FieldName = 'CobroID'
      Size = 10
    end
    object mdPagoPagadoTotal: TCurrencyField
      FieldName = 'PagadoTotal'
    end
    object mdPagoBancoID: TStringField
      FieldName = 'BancoID'
    end
    object mdPagoNumero_Referencia: TStringField
      FieldName = 'Numero_Referencia'
    end
    object mdPagoFecha_Vencimiento: TDateTimeField
      FieldName = 'Fecha_Vencimiento'
    end
    object mdPagoNumero_Aprobacion: TStringField
      FieldName = 'Numero_Aprobacion'
    end
    object mdPagoConcepto: TStringField
      FieldName = 'Concepto'
      Size = 100
    end
  end
  object qrImpCobro: TADOQuery
    Active = True
    Connection = DM.DataBase
    CursorType = ctStatic
    DataSource = dsDatos
    Parameters = <>
    SQL.Strings = (
      
        'Select s.Nombre as Nombre_Sucursal,c.Concepto as Responsable,c.C' +
        'lienteID,e.Nombre as Nombre_Cliente,'
      'c.UsuarioID,c.MonedaID,c.ReciboNo,d.FormaDePagoID as Forma_Pago,'
      '(Case d.FormaDePagoID when '#39'PGE'#39' Then '#39'Pago en Efectivo (RD$)'#39
      '                      when '#39'PGD'#39' Then '#39'Tarjeta de D'#233'bito'#39
      #9#9#9#9#9'  when '#39'PGT'#39' Then '#39'Tarjeta de Cr'#233'dito'#39
      #9#9#9#9#9'  when '#39'PGK'#39' Then '#39'Cheques'#39
      #9#9#9#9#9'  when '#39'PGU'#39' Then '#39'Pago en Efectivo (US$)'#39
      
        'End) As Descripcion,d.Monto,(Select Isnull(Sum(Monto),0) From Pt' +
        'cobrodetalle Where CobroID='#39'0103343124'#39') As Total,'
      
        '(Select Serial from PtSeriales Where Grupo_ID='#39'97'#39') As Numero_Se' +
        'rial,(Select Fecha_Emision from PtSeriales Where Grupo_ID='#39'97'#39') ' +
        'As Fecha_Emision,'
      
        '(Select Fecha_Revision from PtSeriales Where Grupo_ID='#39'97'#39') As F' +
        'echa_Revision'
      'From ptcobro c inner join ptcliente e on c.clienteid=e.ClienteID'
      
        'inner join ptSucursal s on c.SucursalID=s.SucursalID inner join ' +
        'PTCobroDetalle d on c.CobroID=d.CobroID'
      'WHERE c.cobroid='#39'0103343124'#39)
    Left = 392
    object qrImpCobroNombre_Sucursal: TStringField
      FieldName = 'Nombre_Sucursal'
      Size = 50
    end
    object qrImpCobroResponsable: TStringField
      FieldName = 'Responsable'
      Size = 50
    end
    object qrImpCobroClienteID: TStringField
      FieldName = 'ClienteID'
      Size = 10
    end
    object qrImpCobroNombre_Cliente: TStringField
      FieldName = 'Nombre_Cliente'
      Size = 80
    end
    object qrImpCobroUsuarioID: TStringField
      FieldName = 'UsuarioID'
      Size = 10
    end
    object qrImpCobroMonedaID: TStringField
      FieldName = 'MonedaID'
      Size = 3
    end
    object qrImpCobroReciboNo: TStringField
      FieldName = 'ReciboNo'
    end
    object qrImpCobroForma_Pago: TStringField
      FieldName = 'Forma_Pago'
      Size = 10
    end
    object qrImpCobroDescripcion: TStringField
      FieldName = 'Descripcion'
      ReadOnly = True
      Size = 22
    end
    object qrImpCobroMonto: TBCDField
      FieldName = 'Monto'
      Precision = 19
    end
    object qrImpCobroTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      Precision = 19
    end
    object qrImpCobroNumero_Serial: TStringField
      FieldName = 'Numero_Serial'
      ReadOnly = True
    end
    object qrImpCobroFecha_Emision: TDateTimeField
      FieldName = 'Fecha_Emision'
      ReadOnly = True
    end
    object qrImpCobroFecha_Revision: TDateTimeField
      FieldName = 'Fecha_Revision'
      ReadOnly = True
    end
  end
  object dsCobros: TDataSource
    DataSet = qrImpCobro
    Left = 424
  end
  object ppCobroCliente: TppDBPipeline
    DataSource = dsCobros
    UserName = 'ppImpCobroCliente'
    Left = 123
    Top = 192
    object ppCobroClienteppField1: TppField
      FieldAlias = 'Nombre_Sucursal'
      FieldName = 'Nombre_Sucursal'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppCobroClienteppField2: TppField
      FieldAlias = 'Responsable'
      FieldName = 'Responsable'
      FieldLength = 50
      DisplayWidth = 50
      Position = 1
    end
    object ppCobroClienteppField3: TppField
      FieldAlias = 'ClienteID'
      FieldName = 'ClienteID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 2
    end
    object ppCobroClienteppField4: TppField
      FieldAlias = 'Nombre_Cliente'
      FieldName = 'Nombre_Cliente'
      FieldLength = 80
      DisplayWidth = 80
      Position = 3
    end
    object ppCobroClienteppField5: TppField
      FieldAlias = 'UsuarioID'
      FieldName = 'UsuarioID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 4
    end
    object ppCobroClienteppField6: TppField
      FieldAlias = 'MonedaID'
      FieldName = 'MonedaID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 5
    end
    object ppCobroClienteppField7: TppField
      FieldAlias = 'ReciboNo'
      FieldName = 'ReciboNo'
      FieldLength = 20
      DisplayWidth = 20
      Position = 6
    end
    object ppCobroClienteppField8: TppField
      FieldAlias = 'Forma_Pago'
      FieldName = 'Forma_Pago'
      FieldLength = 10
      DisplayWidth = 10
      Position = 7
    end
    object ppCobroClienteppField9: TppField
      FieldAlias = 'Descripcion'
      FieldName = 'Descripcion'
      FieldLength = 22
      DisplayWidth = 22
      Position = 8
    end
    object ppCobroClienteppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'Monto'
      FieldName = 'Monto'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 9
    end
    object ppCobroClienteppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'Total'
      FieldName = 'Total'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 10
    end
    object ppCobroClienteppField12: TppField
      FieldAlias = 'Numero_Serial'
      FieldName = 'Numero_Serial'
      FieldLength = 20
      DisplayWidth = 20
      Position = 11
    end
    object ppCobroClienteppField13: TppField
      FieldAlias = 'Fecha_Emision'
      FieldName = 'Fecha_Emision'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 12
    end
    object ppCobroClienteppField14: TppField
      FieldAlias = 'Fecha_Revision'
      FieldName = 'Fecha_Revision'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 13
    end
  end
  object ppImpCobroCliente: TppReport
    AutoStop = False
    DataPipeline = ppCobroCliente
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter (8.5" x 11")'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    AllowPrintToArchive = True
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PDFSettings.OpenPDFFile = True
    SavePrinterSetup = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 69
    Top = 191
    Version = '10.04'
    mmColumnWidth = 203200
    DataPipelineName = 'ppCobroCliente'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 84402
      mmPrintPosition = 0
      object ppDBText26: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TituloEmpresa'
        DataPipeline = DM.ppParam
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppParam'
        mmHeight = 5842
        mmLeft = 2117
        mmTop = 13494
        mmWidth = 86254
        BandType = 0
      end
      object ppDBText28: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Telefono'
        DataPipeline = DM.ppParam
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppParam'
        mmHeight = 4233
        mmLeft = 11906
        mmTop = 25665
        mmWidth = 31221
        BandType = 0
      end
      object ppDBText29: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Fax'
        DataPipeline = DM.ppParam
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppParam'
        mmHeight = 4233
        mmLeft = 52652
        mmTop = 25665
        mmWidth = 35719
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Tel..:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 2117
        mmTop = 25665
        mmWidth = 8255
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fax:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 44979
        mmTop = 25665
        mmWidth = 7144
        BandType = 0
      end
      object ppDBText31: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Responsable'
        DataPipeline = ppCobroCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppCobroCliente'
        mmHeight = 3969
        mmLeft = 25665
        mmTop = 35454
        mmWidth = 116417
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Responsable      :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 2381
        mmTop = 35454
        mmWidth = 21696
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cliente         :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 2381
        mmTop = 40481
        mmWidth = 23019
        BandType = 0
      end
      object ppDBText33: TppDBText
        UserName = 'DBText14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ClienteID'
        DataPipeline = ppCobroCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppCobroCliente'
        mmHeight = 3969
        mmLeft = 25929
        mmTop = 40481
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText34: TppDBText
        UserName = 'DBText15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Nombre_Cliente'
        DataPipeline = ppCobroCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppCobroCliente'
        mmHeight = 3969
        mmLeft = 43921
        mmTop = 40481
        mmWidth = 98161
        BandType = 0
      end
      object ppShape2: TppShape
        UserName = 'Shape1'
        mmHeight = 6615
        mmLeft = 529
        mmTop = 75142
        mmWidth = 198967
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Tipo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 4233
        mmTop = 76729
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Descripci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 23813
        mmTop = 76729
        mmWidth = 20108
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label15'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Monto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 120915
        mmTop = 76729
        mmWidth = 21696
        BandType = 0
      end
      object ppLabel227: TppLabel
        UserName = 'Label227'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'RNC:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 2381
        mmTop = 30692
        mmWidth = 8805
        BandType = 0
      end
      object ppDBText134: TppDBText
        UserName = 'DBText134'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'RNC'
        DataPipeline = DM.ppParam
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppParam'
        mmHeight = 4233
        mmLeft = 11906
        mmTop = 30692
        mmWidth = 31221
        BandType = 0
      end
      object ppLabel233: TppLabel
        UserName = 'Label233'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 167746
        mmTop = 76994
        mmWidth = 28310
        BandType = 0
      end
      object ppLabel234: TppLabel
        UserName = 'Label234'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fecha Impresion :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4022
        mmLeft = 151077
        mmTop = 13494
        mmWidth = 28046
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 179917
        mmTop = 13494
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel235: TppLabel
        UserName = 'Label235'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Pagina No. :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4022
        mmLeft = 165100
        mmTop = 17992
        mmWidth = 28575
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4022
        mmLeft = 194469
        mmTop = 17727
        mmWidth = 3175
        BandType = 0
      end
      object ppLabel236: TppLabel
        UserName = 'lbtipodoc1'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'RECIBO NO.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4995
        mmLeft = 150813
        mmTop = 23283
        mmWidth = 46831
        BandType = 0
      end
      object ppDBText137: TppDBText
        UserName = 'DBText137'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ReciboNo'
        DataPipeline = ppCobroCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppCobroCliente'
        mmHeight = 4868
        mmLeft = 150813
        mmTop = 29633
        mmWidth = 46831
        BandType = 0
      end
      object ppLabel90: TppLabel
        UserName = 'Label2401'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Centro  :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4995
        mmLeft = 2381
        mmTop = 20108
        mmWidth = 17441
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Usuario        :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 2381
        mmTop = 45244
        mmWidth = 23019
        BandType = 0
      end
      object ppDBText1: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'UsuarioID'
        DataPipeline = ppCobroCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppCobroCliente'
        mmHeight = 3969
        mmLeft = 25929
        mmTop = 45773
        mmWidth = 116152
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2402'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'RECIBO DE PAGO CLIENTES A CREDITO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4995
        mmLeft = 59383
        mmTop = 59002
        mmWidth = 86519
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Moneda       :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 2381
        mmTop = 50006
        mmWidth = 23019
        BandType = 0
      end
      object ppDBText2: TppDBText
        UserName = 'DBText7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'MonedaID'
        DataPipeline = ppCobroCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppCobroCliente'
        mmHeight = 3969
        mmLeft = 26194
        mmTop = 50536
        mmWidth = 116152
        BandType = 0
      end
      object ppDBText3: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Nombre_Sucursal'
        DataPipeline = ppCobroCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppCobroCliente'
        mmHeight = 5027
        mmLeft = 20902
        mmTop = 19844
        mmWidth = 67469
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppDBText39: TppDBText
        UserName = 'DBText12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Forma_Pago'
        DataPipeline = ppCobroCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppCobroCliente'
        mmHeight = 3969
        mmLeft = 3440
        mmTop = 0
        mmWidth = 18256
        BandType = 4
      end
      object ppDBText40: TppDBText
        UserName = 'DBText13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Descripcion'
        DataPipeline = ppCobroCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppCobroCliente'
        mmHeight = 3969
        mmLeft = 23813
        mmTop = 0
        mmWidth = 92075
        BandType = 4
      end
      object ppDBText41: TppDBText
        UserName = 'DBText16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Monto'
        DataPipeline = ppCobroCliente
        DisplayFormat = '##,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppCobroCliente'
        mmHeight = 4022
        mmLeft = 120386
        mmTop = 0
        mmWidth = 21960
        BandType = 4
      end
      object ppDBText136: TppDBText
        UserName = 'DBText136'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Monto'
        DataPipeline = ppCobroCliente
        DisplayFormat = '##,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppCobroCliente'
        mmHeight = 3969
        mmLeft = 168275
        mmTop = 0
        mmWidth = 29369
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 30692
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 143140
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 53711
        mmTop = 59267
        mmWidth = 92869
        BandType = 7
      end
      object ppLabel4: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Recibido Conforme'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4995
        mmLeft = 80608
        mmTop = 59531
        mmWidth = 39074
        BandType = 7
      end
      object ppLabel259: TppLabel
        UserName = 'Label2501'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Serial :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 1852
        mmTop = 126471
        mmWidth = 11113
        BandType = 7
      end
      object ppLabel260: TppLabel
        UserName = 'Label260'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Fecha de Emisi'#243'n :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 1588
        mmTop = 130969
        mmWidth = 29898
        BandType = 7
      end
      object ppLabel261: TppLabel
        UserName = 'Label261'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Fecha de Revisi'#243'n :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 1852
        mmTop = 135467
        mmWidth = 29898
        BandType = 7
      end
      object ppDBText147: TppDBText
        UserName = 'DBText147'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Numero_Serial'
        DataPipeline = ppCobroCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppCobroCliente'
        mmHeight = 3969
        mmLeft = 13758
        mmTop = 126736
        mmWidth = 36248
        BandType = 7
      end
      object ppDBText148: TppDBText
        UserName = 'DBText148'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Fecha_Emision'
        DataPipeline = ppCobroCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppCobroCliente'
        mmHeight = 3969
        mmLeft = 32015
        mmTop = 130969
        mmWidth = 17992
        BandType = 7
      end
      object ppDBText149: TppDBText
        UserName = 'DBText149'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Fecha_Revision'
        DataPipeline = ppCobroCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppCobroCliente'
        mmHeight = 3969
        mmLeft = 32015
        mmTop = 135467
        mmWidth = 17992
        BandType = 7
      end
      object ppLabel231: TppLabel
        UserName = 'Label231'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total a Pagar :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 150284
        mmTop = 2381
        mmWidth = 29898
        BandType = 7
      end
      object ppDBText48: TppDBText
        UserName = 'DBText10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Total'
        DataPipeline = ppCobroCliente
        DisplayFormat = '##,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppCobroCliente'
        mmHeight = 3969
        mmLeft = 180446
        mmTop = 2381
        mmWidth = 17198
        BandType = 7
      end
    end
  end
end
