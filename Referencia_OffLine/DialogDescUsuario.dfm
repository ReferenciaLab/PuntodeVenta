inherited frmDialogDescUsuario: TfrmDialogDescUsuario
  Caption = 'Descuentos Permitidos al Usuario'
  ClientHeight = 445
  ClientWidth = 664
  KeyPreview = True
  OnCreate = nil
  ExplicitWidth = 670
  ExplicitHeight = 473
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcDialog: TdxLayoutControl
    Width = 664
    Height = 445
    ExplicitWidth = 664
    ExplicitHeight = 445
    inherited btCancelar: TcxButton
      Left = 158
      Top = 409
      Width = 141
      TabOrder = 18
      ExplicitLeft = 158
      ExplicitTop = 409
      ExplicitWidth = 141
    end
    inherited btAceptar: TcxButton
      Top = 409
      Width = 141
      Caption = 'F9 = Aceptar'
      Default = False
      Font.Height = -13
      Font.Style = [fsBold]
      TabOrder = 17
      ExplicitTop = 409
      ExplicitWidth = 141
    end
    object EdDescuento: TcxCurrencyEdit [2]
      Left = 131
      Top = 217
      Properties.DisplayFormat = '0.00,%;(0.00,%)'
      Properties.ReadOnly = False
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 12
      Width = 140
    end
    object EdTarjeta: TcxExtLookupComboBox [3]
      Left = 131
      Top = 63
      RepositoryItem = DM.elcTarjetaDescuento
      Properties.CharCase = ecUpperCase
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 1
      OnClick = CbTipoEnter
      OnEnter = CbTipoEnter
      OnExit = CbTipoEnter
      Width = 140
    end
    object CbTipo: TcxComboBox [4]
      Left = 131
      Top = 36
      Properties.CharCase = ecUpperCase
      Properties.Items.Strings = (
        'SUCURSAL'
        'TARJETA'
        'EMPLEADO')
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 0
      Text = 'SUCURSAL'
      OnClick = CbTipoEnter
      OnEnter = CbTipoEnter
      OnExit = CbTipoEnter
      Width = 140
    end
    object EdNumero: TcxCurrencyEdit [5]
      Left = 131
      Top = 145
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = '0'
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 5
      Width = 109
    end
    object edPlan: TcxTextEdit [6]
      Left = 131
      Top = 90
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = False
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Color = clWindow
      Style.HotTrack = False
      TabOrder = 2
      Width = 140
    end
    object EdBono: TcxCurrencyEdit [7]
      Left = 131
      Top = 244
      Properties.DisplayFormat = 'RD$,0.00;(RD$,0.00)'
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 13
      Width = 140
    end
    object EdCedula: TcxMaskEdit [8]
      Left = 131
      Top = 117
      Properties.CharCase = ecUpperCase
      Properties.EditMask = '###-#######-#'
      Properties.MaxLength = 0
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 3
      Text = '   -       - '
      Width = 109
    end
    object edComentario: TcxMemo [9]
      Left = 131
      Top = 271
      Properties.CharCase = ecUpperCase
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 16
      Height = 110
      Width = 289
    end
    object edtCedula: TcxMaskEdit [10]
      Left = 355
      Top = 43
      Enabled = False
      Properties.CharCase = ecUpperCase
      Properties.EditMask = '###-#######-##'
      Properties.MaxLength = 0
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      TabOrder = 7
      Text = '   -       -  '
      Width = 140
    end
    object edtNombre: TcxTextEdit [11]
      Left = 355
      Top = 70
      Enabled = False
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = False
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Color = clWindow
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      TabOrder = 8
      Width = 270
    end
    object EdtNumero: TcxCurrencyEdit [12]
      Left = 355
      Top = 97
      Enabled = False
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = '0'
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      TabOrder = 9
      OnExit = CbTipoEnter
      Width = 140
    end
    object EdtFechaAct: TcxTextEdit [13]
      Left = 355
      Top = 124
      Enabled = False
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = False
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Color = clWindow
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      TabOrder = 10
      Width = 140
    end
    object EdtTieneBenef: TcxTextEdit [14]
      Left = 355
      Top = 151
      Enabled = False
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = False
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Color = clWindow
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      TabOrder = 11
      Width = 140
    end
    object CbTipoAfiliado: TcxComboBox [15]
      Left = 340
      Top = 217
      Properties.Items.Strings = (
        ''
        'P-Principal'
        'D-Dependiente')
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 14
      Text = 'P-Principal'
      Width = 140
    end
    object EdPaciente: TcxTextEdit [16]
      Left = 340
      Top = 244
      Properties.CharCase = ecUpperCase
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Color = clWindow
      Style.HotTrack = False
      TabOrder = 15
      Width = 300
    end
    object btBuscar: TcxButton [17]
      Left = 246
      Top = 145
      Width = 25
      Height = 22
      TabOrder = 6
      OnClick = btBuscarClick
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
    object BtBuscarCed: TcxButton [18]
      Left = 246
      Top = 117
      Width = 25
      Height = 22
      TabOrder = 4
      OnClick = BtBuscarCedClick
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
    inherited lcDialogGroup_Root: TdxLayoutGroup
      object lcDialogGroup3: TdxLayoutGroup [0]
        Caption = 'Tipo de Descuento'
        LayoutDirection = ldHorizontal
        object lcDialogGroup5: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          ShowBorder = False
          object LcTipo: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'Tipo de Descuento'
            Control = CbTipo
            ControlOptions.ShowBorder = False
          end
          object LcTarjeta: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'Tarjeta de Descuento'
            Control = EdTarjeta
            ControlOptions.ShowBorder = False
          end
          object LcPlan: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'Plan de Descuento'
            Control = edPlan
            ControlOptions.ShowBorder = False
          end
          object lcDialogGroup11: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object LcCedula: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'C'#233'dula'
              Control = EdCedula
              ControlOptions.ShowBorder = False
            end
            object lcDialogItem3: TdxLayoutItem
              Caption = 'New Item'
              ShowCaption = False
              Control = BtBuscarCed
              ControlOptions.ShowBorder = False
            end
          end
          object lcDialogGroup10: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object LcNumero: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'Numero de Tarjeta'
              Control = EdNumero
              ControlOptions.ShowBorder = False
            end
            object lcDialogItem2: TdxLayoutItem
              Caption = 'btBuscar'
              ShowCaption = False
              Control = btBuscar
              ControlOptions.ShowBorder = False
            end
          end
        end
        object lcDialogGroup4: TdxLayoutGroup
          Caption = 'Datos Tarjeta'
          CaptionOptions.AlignHorz = taCenter
          ShowCaption = False
          object LctCedula: TdxLayoutItem
            Caption = 'C'#233'dula'
            Control = edtCedula
            ControlOptions.ShowBorder = False
          end
          object lcDialogGroup7: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object LctNombre: TdxLayoutItem
              Caption = 'Nombre'
              Control = edtNombre
              ControlOptions.ShowBorder = False
            end
            object lcDialogItem1: TdxLayoutItem
              Caption = 'No. Tarjeta'
              Control = EdtNumero
              ControlOptions.ShowBorder = False
            end
            object LctFechaAct: TdxLayoutItem
              Caption = 'Fecha Act.'
              Control = EdtFechaAct
              ControlOptions.ShowBorder = False
            end
            object LctBeneficios: TdxLayoutItem
              Caption = 'Tiene Benef.'
              Control = EdtTieneBenef
              ControlOptions.ShowBorder = False
            end
          end
        end
      end
      inherited lcDialogGroup1: TdxLayoutGroup
        Caption = 'Descuento'
        object lcDialogGroup9: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object lcDialogGroup6: TdxLayoutGroup
            AutoAligns = [aaHorizontal]
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object LcDescuento: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'Descuento %'
              Control = EdDescuento
              ControlOptions.ShowBorder = False
            end
            object LcBono: TdxLayoutItem
              AutoAligns = [aaVertical]
              Caption = 'Bono de Descuento'
              Control = EdBono
              ControlOptions.ShowBorder = False
            end
          end
          object lcDialogGroup8: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object LcAfiliado: TdxLayoutItem
              Caption = 'Tipo Afiliado'
              CaptionOptions.AlignVert = tavTop
              Control = CbTipoAfiliado
              ControlOptions.ShowBorder = False
            end
            object LcBeneficiario: TdxLayoutItem
              Caption = 'Paciente'
              CaptionOptions.AlignVert = tavTop
              Control = EdPaciente
              ControlOptions.ShowBorder = False
            end
          end
        end
        object LcComentario: TdxLayoutItem
          Caption = 'Comentario'
          CaptionOptions.AlignVert = tavTop
          Control = edComentario
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  inherited cxIntl1: TcxIntl
    Left = 275
    Top = 10
  end
  object IEHTTP1: TIEHTTP
    Timeout = 90
    TimerIntervalSeconds = 0
    BlockingMode = True
    RequestMethod = 'GET'
    MultipartPOST = False
    Left = 624
    Top = 8
  end
end
