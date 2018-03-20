object frmAboutBox: TfrmAboutBox
  Left = 532
  Top = 188
  BorderIcons = []
  BorderStyle = bsToolWindow
  ClientHeight = 369
  ClientWidth = 377
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 377
    Height = 369
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 0
    OnClick = Panel1Click
    object RzBackground1: TRzBackground
      Left = 0
      Top = 103
      Width = 377
      Height = 266
      Active = True
      Align = alClient
      GradientColorStart = clBackground
      GradientColorStop = 15647916
      ImageStyle = isCenter
      ShowGradient = True
      ShowImage = False
      ShowTexture = False
      OnClick = Panel1Click
    end
    object RzSeparator1: TRzSeparator
      Left = 0
      Top = 101
      Width = 377
      ShowGradient = True
      Align = alTop
      ParentColor = False
      OnClick = Panel1Click
    end
    object CopyRight: TRzLabel
      Left = 97
      Top = 111
      Width = 72
      Height = 13
      Caption = 'Licenciado a:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      OnClick = Panel1Click
    end
    object RzLabel3: TRzLabel
      Left = 12
      Top = 133
      Width = 108
      Height = 13
      Caption = 'Estado de M'#243'dulos '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      OnClick = Panel1Click
    end
    object RzSeparator2: TRzSeparator
      Left = 11
      Top = 149
      Width = 199
      HighlightColor = clYellow
      ShowGradient = True
      ParentColor = False
      OnClick = Panel1Click
    end
    object RzLabel4: TRzLabel
      Left = 12
      Top = 154
      Width = 125
      Height = 13
      AutoSize = False
      Caption = 'Punto de Venta'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      OnClick = Panel1Click
    end
    object lbCg: TRzLabel
      Left = 144
      Top = 154
      Width = 76
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Instalado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      OnClick = Panel1Click
    end
    object RzLabel6: TRzLabel
      Left = 12
      Top = 170
      Width = 125
      Height = 13
      AutoSize = False
      Caption = 'Prestamo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      Visible = False
      OnClick = Panel1Click
    end
    object lbBc: TRzLabel
      Left = 144
      Top = 170
      Width = 76
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Instalado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      Visible = False
      OnClick = Panel1Click
    end
    object RzLabel8: TRzLabel
      Left = 12
      Top = 204
      Width = 125
      Height = 13
      AutoSize = False
      Caption = 'Cuentas por Pagar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      Visible = False
      OnClick = Panel1Click
    end
    object lbCp: TRzLabel
      Left = 144
      Top = 204
      Width = 76
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Instalado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      Visible = False
      OnClick = Panel1Click
    end
    object RzLabel10: TRzLabel
      Left = 12
      Top = 187
      Width = 125
      Height = 13
      AutoSize = False
      Caption = 'Cuentas por Cobrar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      Visible = False
      OnClick = Panel1Click
    end
    object lbCc: TRzLabel
      Left = 144
      Top = 187
      Width = 76
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Instalado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      Visible = False
      OnClick = Panel1Click
    end
    object RzLabel12: TRzLabel
      Left = 12
      Top = 221
      Width = 125
      Height = 13
      AutoSize = False
      Caption = 'Inventario'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      Visible = False
      OnClick = Panel1Click
    end
    object RzLabel13: TRzLabel
      Left = 12
      Top = 237
      Width = 125
      Height = 13
      AutoSize = False
      Caption = 'Facturaci'#243'n'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      Visible = False
      OnClick = Panel1Click
    end
    object RzLabel14: TRzLabel
      Left = 12
      Top = 254
      Width = 125
      Height = 15
      AutoSize = False
      Caption = 'Compras'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      Visible = False
      OnClick = Panel1Click
    end
    object lbIn: TRzLabel
      Left = 144
      Top = 221
      Width = 76
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Instalado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      Visible = False
      OnClick = Panel1Click
    end
    object lbFa: TRzLabel
      Left = 144
      Top = 237
      Width = 76
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Instalado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      Visible = False
      OnClick = Panel1Click
    end
    object lbCo: TRzLabel
      Left = 144
      Top = 254
      Width = 76
      Height = 15
      Alignment = taCenter
      AutoSize = False
      Caption = 'Instalado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      Visible = False
      OnClick = Panel1Click
    end
    object RzLabel1: TRzLabel
      Left = 12
      Top = 111
      Width = 72
      Height = 13
      Caption = 'Licenciado a:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      OnClick = Panel1Click
    end
    object RzLabel18: TRzLabel
      Left = 333
      Top = 85
      Width = 35
      Height = 244
      AutoSize = False
      Caption = 'Acerca de...'
      Font.Charset = ANSI_CHARSET
      Font.Color = clInfoBk
      Font.Height = -29
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      OnClick = Panel1Click
      Angle = 90
      LightTextStyle = True
      Rotation = roFlat
      ShadowDepth = 3
      TextStyle = tsShadow
    end
    object lbSupportURL: TRzURLLabel
      Left = 12
      Top = 327
      Width = 111
      Height = 13
      Caption = 'www.labreferencia.com'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsUnderline]
      ParentFont = False
      Transparent = True
      URL = 'http://www.labreferencia.com'
    end
    object lbSupporteMail: TRzURLLabel
      Left = 12
      Top = 346
      Width = 143
      Height = 13
      Caption = 'Williamsg@Labreferencia.com'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsUnderline]
      ParentFont = False
      Transparent = True
      URL = 'mailto:soporte@pymesol.com'
    end
    object RzLabel2: TRzLabel
      Left = 12
      Top = 271
      Width = 125
      Height = 15
      AutoSize = False
      Caption = 'Servicios'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      Visible = False
      OnClick = Panel1Click
    end
    object lbSv: TRzLabel
      Left = 144
      Top = 271
      Width = 76
      Height = 15
      Alignment = taCenter
      AutoSize = False
      Caption = 'Instalado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      Visible = False
      OnClick = Panel1Click
    end
    object RzLabel5: TRzLabel
      Left = 12
      Top = 288
      Width = 125
      Height = 15
      AutoSize = False
      Caption = 'N'#243'mina'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      Visible = False
      OnClick = Panel1Click
    end
    object lbNo: TRzLabel
      Left = 144
      Top = 288
      Width = 76
      Height = 15
      Alignment = taCenter
      AutoSize = False
      Caption = 'Instalado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      Visible = False
      OnClick = Panel1Click
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 377
      Height = 101
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 0
      OnClick = Panel1Click
      object ProductName: TLabel
        Left = 46
        Top = 5
        Width = 160
        Height = 19
        Caption = 'PyMESol Accounting'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Bodoni MT'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = Panel1Click
        IsControl = True
      end
      object ProgramIcon: TImage
        Left = 5
        Top = 5
        Width = 35
        Height = 36
        Center = True
        Picture.Data = {
          055449636F6E0000010001002020000100000000A80800001600000028000000
          2000000040000000010008000000000080040000000000000000000000000000
          0000000000000000000080000080000000808000800000008000800080800000
          C0C0C000C0DCC000F0CAA6000020400000206000002080000020A0000020C000
          0020E00000400000004020000040400000406000004080000040A0000040C000
          0040E00000600000006020000060400000606000006080000060A0000060C000
          0060E00000800000008020000080400000806000008080000080A0000080C000
          0080E00000A0000000A0200000A0400000A0600000A0800000A0A00000A0C000
          00A0E00000C0000000C0200000C0400000C0600000C0800000C0A00000C0C000
          00C0E00000E0000000E0200000E0400000E0600000E0800000E0A00000E0C000
          00E0E00040000000400020004000400040006000400080004000A0004000C000
          4000E00040200000402020004020400040206000402080004020A0004020C000
          4020E00040400000404020004040400040406000404080004040A0004040C000
          4040E00040600000406020004060400040606000406080004060A0004060C000
          4060E00040800000408020004080400040806000408080004080A0004080C000
          4080E00040A0000040A0200040A0400040A0600040A0800040A0A00040A0C000
          40A0E00040C0000040C0200040C0400040C0600040C0800040C0A00040C0C000
          40C0E00040E0000040E0200040E0400040E0600040E0800040E0A00040E0C000
          40E0E00080000000800020008000400080006000800080008000A0008000C000
          8000E00080200000802020008020400080206000802080008020A0008020C000
          8020E00080400000804020008040400080406000804080008040A0008040C000
          8040E00080600000806020008060400080606000806080008060A0008060C000
          8060E00080800000808020008080400080806000808080008080A0008080C000
          8080E00080A0000080A0200080A0400080A0600080A0800080A0A00080A0C000
          80A0E00080C0000080C0200080C0400080C0600080C0800080C0A00080C0C000
          80C0E00080E0000080E0200080E0400080E0600080E0800080E0A00080E0C000
          80E0E000C0000000C0002000C0004000C0006000C0008000C000A000C000C000
          C000E000C0200000C0202000C0204000C0206000C0208000C020A000C020C000
          C020E000C0400000C0402000C0404000C0406000C0408000C040A000C040C000
          C040E000C0600000C0602000C0604000C0606000C0608000C060A000C060C000
          C060E000C0800000C0802000C0804000C0806000C0808000C080A000C080C000
          C080E000C0A00000C0A02000C0A04000C0A06000C0A08000C0A0A000C0A0C000
          C0A0E000C0C00000C0C02000C0C04000C0C06000C0C08000C0C0A000F0FBFF00
          A4A0A000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000
          FFFFFF00F9090909090909090909090909090909090909090909090909090909
          0909090904F90909090909090909090909090909090909090909090909090909
          090909090404F909090909090909090909090909090909090909090909090909
          09090909040404F9090909090909090909090909090909090909090909090909
          0909090904040404F9090909090909090909090909FFFF09090909090909FFFF
          FF0909090404040404F90909090909090909090909FFFFF6090909090909FFFF
          F6090909040404040404F909090909090909090909FFFFFF090909090909FFFF
          F609090904040404040404F909090909090909090909FFFFF609090909FFFFFF
          090909090404040404040404F9090909090909090909FFFFFFFFFFFFFFFFFFF6
          09090909040404040404040404F9090909090909090909FFFFFFFFFFFFFFFF09
          0909090904040404040404040404F90909090909090909FFFF090909FFFFF609
          090909090404040404040404040404F909090909090909FFFFF60909FFFFF609
          09090909040404040404040404040404F909090909090909FFFF0909FFFF0909
          0909090904040404040404040404040404F9090909090909FFFFF6FFFFF60909
          090909090404040404040404040404040404F90909090909FFFFFFFFFF090909
          09090909040404040404040404040404040404F90909090909FFFFFFF6090909
          090909090404040409FFF6C404040404040404F90909090909FFFFFF09090909
          090909090404040409FFF6C40404040404040404F90909090909090909090909
          090909090404040409FFF6C4040404040404040404F909090909090909090909
          090909090404040409FFF6C404040404040404040404F9090909090909090909
          090909090404040409FFF6C40404040404040404040404F90909090909090909
          090909090404040409FFFFFFFFFFFFFFF6C4040404040404F909090909090909
          090909090404040409FFFFFFFFFFFFFFFFFFE6040404040404F9090909090909
          090909090404040409FFF6C4040404E0FFFFF604040404040404F90909090909
          090909090404040409FFF6C4040404C009FFF60404040404040404F909090909
          090909090404040409FFF6C4040404E0FFFFF6040404040404040404F9090909
          090909090404040409FFFFFFFFFFFFFFFFFFE604040404040404040404F90909
          090909090404040409FFFFFFFFFFFFFFF6D5040404040404040404040404F909
          09090909040404040404040404040404040404040404040404040404040404F9
          0909090904040404040404040404040404040404040404040404040404040404
          F909090904040404040404040404040404040404040404040404040404040404
          04F9090904040404040404040404040404040404040404040404040404040404
          0404F90900000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000}
        OnClick = Panel1Click
        IsControl = True
      end
      object Comments: TRzLabel
        Left = 5
        Top = 48
        Width = 135
        Height = 15
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        OnClick = Panel1Click
        TextStyle = tsRaised
      end
      object Version: TLabel
        Left = 46
        Top = 25
        Width = 54
        Height = 13
        Caption = 'Version 1.1'
        OnClick = Panel1Click
        IsControl = True
      end
      object lbVersion: TRzLabel
        Left = 6
        Top = 74
        Width = 202
        Height = 16
        Caption = 'Edici'#243'n Profesional / Estandard'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        OnClick = Panel1Click
      end
    end
  end
  object OKButton: TButton
    Left = 151
    Top = 564
    Width = 75
    Height = 25
    Caption = 'Aceptar'
    Default = True
    ModalResult = 1
    TabOrder = 1
    OnClick = Panel1Click
  end
end
