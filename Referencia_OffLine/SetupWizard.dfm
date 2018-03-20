object frmSetupWizard: TfrmSetupWizard
  Left = 291
  Top = 137
  ActiveControl = seAno
  BorderStyle = bsDialog
  Caption = 'Asistente de Configuraci'#243'n'
  ClientHeight = 421
  ClientWidth = 723
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Trebuchet MS'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 18
  object JvWizard: TJvWizard
    Left = 0
    Top = 0
    Width = 723
    Height = 421
    ActivePage = wpAnoFiscal
    ButtonBarHeight = 42
    ButtonStart.Caption = 'To &Start Page'
    ButtonStart.NumGlyphs = 1
    ButtonStart.Width = 85
    ButtonLast.Caption = 'To &Last Page'
    ButtonLast.NumGlyphs = 1
    ButtonLast.Width = 85
    ButtonBack.Caption = '< &Anterior'
    ButtonBack.NumGlyphs = 1
    ButtonBack.Width = 75
    ButtonNext.Caption = '&Siguiente >'
    ButtonNext.NumGlyphs = 1
    ButtonNext.Width = 75
    ButtonFinish.Caption = '&Finalizar'
    ButtonFinish.NumGlyphs = 1
    ButtonFinish.Width = 75
    ButtonCancel.Caption = 'Cancelar'
    ButtonCancel.NumGlyphs = 1
    ButtonCancel.ModalResult = 2
    ButtonCancel.Width = 75
    ButtonHelp.Caption = '&Help'
    ButtonHelp.NumGlyphs = 1
    ButtonHelp.Width = 75
    ShowRouteMap = True
    OnFinishButtonClick = JvWizardFinishButtonClick
    DesignSize = (
      723
      421)
    object JvWizardWelcomePage1: TJvWizardWelcomePage
      Header.Title.Color = clNone
      Header.Title.Text = 'Bienvenido'
      Header.Title.Anchors = [akLeft, akTop, akRight]
      Header.Title.Font.Charset = ANSI_CHARSET
      Header.Title.Font.Color = clWindowText
      Header.Title.Font.Height = -16
      Header.Title.Font.Name = 'Trebuchet MS'
      Header.Title.Font.Style = [fsBold]
      Header.Subtitle.Color = clNone
      Header.Subtitle.Text = 
        #13#10'PYME Accounting - Sitema de Gestion Empresarial Asistente de c' +
        'onfiguraci'#243'n incial.'#13#10
      Header.Subtitle.Anchors = [akLeft, akTop, akRight, akBottom]
      Header.Subtitle.Font.Charset = ANSI_CHARSET
      Header.Subtitle.Font.Color = clWindowText
      Header.Subtitle.Font.Height = -11
      Header.Subtitle.Font.Name = 'Trebuchet MS'
      Header.Subtitle.Font.Style = []
      Header.ShowDivider = False
      WaterMark.Color = 13289999
      WaterMark.Visible = False
      WaterMark.Width = 50
      object Label1: TLabel
        Left = 56
        Top = 116
        Width = 412
        Height = 18
        Caption = 
          'Este asistente le guiara en el proceso de configuraci'#243'n inicial ' +
          'del sistema.'
      end
    end
    object wpActivation: TJvWizardInteriorPage
      Header.Title.Color = clNone
      Header.Title.Text = 'Activaci'#243'n'
      Header.Title.Anchors = [akLeft, akTop, akRight]
      Header.Title.Font.Charset = ANSI_CHARSET
      Header.Title.Font.Color = clWindowText
      Header.Title.Font.Height = -16
      Header.Title.Font.Name = 'Trebuchet MS'
      Header.Title.Font.Style = [fsBold]
      Header.Subtitle.Color = clNone
      Header.Subtitle.Text = 'Subtitle'
      Header.Subtitle.Anchors = [akLeft, akTop, akRight, akBottom]
      Header.Subtitle.Font.Charset = ANSI_CHARSET
      Header.Subtitle.Font.Color = clWindowText
      Header.Subtitle.Font.Height = -11
      Header.Subtitle.Font.Name = 'Trebuchet MS'
      Header.Subtitle.Font.Style = []
      OnNextButtonClick = wpActivationNextButtonClick
      object Label2: TLabel
        Left = 12
        Top = 120
        Width = 123
        Height = 18
        Caption = 'Nombre de la Empresa'
      end
      object edNombre: TcxTextEdit
        Left = 152
        Top = 116
        TabStop = False
        Properties.ReadOnly = False
        TabOrder = 0
        Width = 393
      end
    end
    object wpAnoFiscal: TJvWizardInteriorPage
      Header.Title.Color = clNone
      Header.Title.Text = 'A'#241'o Fiscal'
      Header.Title.Anchors = [akLeft, akTop, akRight]
      Header.Title.Font.Charset = ANSI_CHARSET
      Header.Title.Font.Color = clWindowText
      Header.Title.Font.Height = -16
      Header.Title.Font.Name = 'Trebuchet MS'
      Header.Title.Font.Style = [fsBold]
      Header.Subtitle.Color = clNone
      Header.Subtitle.Text = 
        #13#10'Identificaci'#243'n del a'#241'o fiscal inicial y especificaci'#243'n de mes ' +
        'de cierre.'
      Header.Subtitle.Anchors = [akLeft, akTop, akRight, akBottom]
      Header.Subtitle.Font.Charset = ANSI_CHARSET
      Header.Subtitle.Font.Color = clWindowText
      Header.Subtitle.Font.Height = -11
      Header.Subtitle.Font.Name = 'Trebuchet MS'
      Header.Subtitle.Font.Style = []
      object Label4: TLabel
        Left = 12
        Top = 108
        Width = 120
        Height = 18
        Caption = 'A'#241'o inicio del sistema'
      end
      object Label5: TLabel
        Left = 12
        Top = 144
        Width = 78
        Height = 18
        Caption = 'Mes de cierre'
      end
      object seAno: TcxSpinEdit
        Left = 143
        Top = 104
        Style.LookAndFeel.Kind = lfUltraFlat
        StyleDisabled.LookAndFeel.Kind = lfUltraFlat
        StyleFocused.LookAndFeel.Kind = lfUltraFlat
        StyleHot.LookAndFeel.Kind = lfUltraFlat
        TabOrder = 0
        Width = 121
      end
      object seMes: TcxSpinEdit
        Left = 143
        Top = 140
        Properties.MaxValue = 12.000000000000000000
        Properties.MinValue = 1.000000000000000000
        Style.LookAndFeel.Kind = lfUltraFlat
        StyleDisabled.LookAndFeel.Kind = lfUltraFlat
        StyleFocused.LookAndFeel.Kind = lfUltraFlat
        StyleHot.LookAndFeel.Kind = lfUltraFlat
        TabOrder = 1
        Value = 12
        Width = 121
      end
    end
    object wpDocumento: TJvWizardInteriorPage
      Header.Title.Color = clNone
      Header.Title.Text = 'Tipo de Documento'
      Header.Title.Anchors = [akLeft, akTop, akRight]
      Header.Title.Font.Charset = ANSI_CHARSET
      Header.Title.Font.Color = clWindowText
      Header.Title.Font.Height = -16
      Header.Title.Font.Name = 'Trebuchet MS'
      Header.Title.Font.Style = [fsBold]
      Header.Subtitle.Color = clNone
      Header.Subtitle.Text = #13#10'Especificar el tipo de documento por defecto.'
      Header.Subtitle.Anchors = [akLeft, akTop, akRight, akBottom]
      Header.Subtitle.Font.Charset = ANSI_CHARSET
      Header.Subtitle.Font.Color = clWindowText
      Header.Subtitle.Font.Height = -11
      Header.Subtitle.Font.Name = 'Trebuchet MS'
      Header.Subtitle.Font.Style = []
      object Label6: TLabel
        Left = 12
        Top = 120
        Width = 95
        Height = 18
        Caption = 'Tipo Documento:'
      end
      object Label7: TLabel
        Left = 12
        Top = 156
        Width = 65
        Height = 18
        Caption = 'Descripci'#243'n'
      end
      object edTipoDoc: TcxTextEdit
        Left = 132
        Top = 116
        TabOrder = 0
        Width = 117
      end
      object edNombreDoc: TcxTextEdit
        Left = 132
        Top = 152
        TabOrder = 1
        Width = 389
      end
      object cbAutoNum: TcxCheckBox
        Left = 12
        Top = 192
        Caption = 'Auto-Numerar?'
        Properties.Alignment = taRightJustify
        TabOrder = 2
        Width = 137
      end
    end
    object JvWizardInteriorPage1: TJvWizardInteriorPage
      Header.Title.Color = clNone
      Header.Title.Text = 'Finalizar'
      Header.Title.Anchors = [akLeft, akTop, akRight]
      Header.Title.Font.Charset = ANSI_CHARSET
      Header.Title.Font.Color = clWindowText
      Header.Title.Font.Height = -16
      Header.Title.Font.Name = 'Trebuchet MS'
      Header.Title.Font.Style = [fsBold]
      Header.Subtitle.Color = clNone
      Header.Subtitle.Text = #13#10'Finalizar el asistente y configurar el sistema'
      Header.Subtitle.Anchors = [akLeft, akTop, akRight, akBottom]
      Header.Subtitle.Font.Charset = ANSI_CHARSET
      Header.Subtitle.Font.Color = clWindowText
      Header.Subtitle.Font.Height = -11
      Header.Subtitle.Font.Name = 'Trebuchet MS'
      Header.Subtitle.Font.Style = []
      VisibleButtons = [bkBack, bkFinish, bkCancel]
    end
    object JvWizardRouteMapNodes1: TJvWizardRouteMapNodes
      Left = 0
      Top = 0
      Width = 145
      Height = 379
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
  end
  object qrPeriodos: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *'
      '  from CgPeriodos')
    Left = 352
    Top = 236
    object qrPeriodosAnoFiscal: TSmallintField
      FieldName = 'AnoFiscal'
      Origin = 'CgPeriodos.AnoFiscal'
    end
    object qrPeriodosNumero: TSmallintField
      FieldName = 'Numero'
      Origin = 'CgPeriodos.Numero'
    end
    object qrPeriodosNombre: TStringField
      FieldName = 'Nombre'
      Origin = 'CgPeriodos.Nombre'
      FixedChar = True
      Size = 15
    end
    object qrPeriodosTipo: TSmallintField
      FieldName = 'Tipo'
      Origin = 'CgPeriodos.Tipo'
    end
    object qrPeriodosDesde: TDateField
      FieldName = 'Desde'
      Origin = 'CgPeriodos.Desde'
    end
    object qrPeriodosHasta: TDateField
      FieldName = 'Hasta'
      Origin = 'CgPeriodos.Hasta'
    end
    object qrPeriodosEstatus: TSmallintField
      FieldName = 'Estatus'
      Origin = 'CgPeriodos.Estatus'
    end
  end
  object qrTipoDoc: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'pTipo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      '  from CgTiposDocumento'
      'WHERE TipoDocumento = :pTipo ')
    Left = 437
    Top = 208
    object qrTipoDocTipoDocumento: TStringField
      FieldName = 'TipoDocumento'
      Origin = 'CgTiposDocumento.TipoDocumento'
      Required = True
      FixedChar = True
      Size = 3
    end
    object qrTipoDocDescripcion: TStringField
      FieldName = 'Descripcion'
      Origin = 'CgTiposDocumento.Descripcion'
      Required = True
      FixedChar = True
      Size = 25
    end
    object qrTipoDocTipo: TSmallintField
      FieldName = 'Tipo'
      Origin = 'CgTiposDocumento.Tipo'
    end
    object qrTipoDocAutoNumerar: TBooleanField
      FieldName = 'AutoNumerar'
      Origin = 'CgTiposDocumento.AutoNumerar'
    end
    object qrTipoDocUltimoNumero: TLargeintField
      FieldName = 'UltimoNumero'
      Origin = 'CgTiposDocumento.UltimoNumero'
      Required = True
    end
  end
end
