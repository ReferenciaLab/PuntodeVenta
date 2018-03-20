object frmConfirmarCoberturaTardiaND: TfrmConfirmarCoberturaTardiaND
  Left = 0
  Top = 0
  Caption = 'Confirmaci'#243'n de Cobertura Nota D'#233'bito'
  ClientHeight = 419
  ClientWidth = 398
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
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 398
    Height = 419
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmAppActions.lnfWeb
    object EdAprobacionNo: TcxDBTextEdit
      Left = 182
      Top = 321
      DataBinding.DataField = 'APROBACIONNO'
      DataBinding.DataSource = frmPuntoVentaND.dsEntradaPaciente
      Properties.CharCase = ecUpperCase
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 7
      Width = 121
    end
    object EdAprobacionPor: TcxDBTextEdit
      Left = 182
      Top = 348
      DataBinding.DataField = 'APROBACIONPOR'
      DataBinding.DataSource = frmPuntoVentaND.dsEntradaPaciente
      Properties.CharCase = ecUpperCase
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 8
      Width = 170
    end
    object BtAceptar: TcxButton
      Left = 11
      Top = 382
      Width = 185
      Height = 25
      Caption = 'F9 = Aceptar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ModalResult = 1
      ParentFont = False
      TabOrder = 9
    end
    object BtCancelar: TcxButton
      Left = 202
      Top = 382
      Width = 185
      Height = 25
      Caption = 'Cancelar'
      ModalResult = 2
      TabOrder = 10
    end
    object edcoberturavalor: TcxDBCurrencyEdit
      Left = 182
      Top = 267
      DataBinding.DataField = 'COBERTURAVALOR'
      DataBinding.DataSource = frmPuntoVentaND.dsEntradaPaciente
      Properties.Alignment.Horz = taRightJustify
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 5
      OnEnter = edcoberturavalorExit
      OnExit = edcoberturavalorExit
      Width = 121
    end
    object cxDBCheckBox2: TcxDBCheckBox
      Left = 182
      Top = 294
      DataBinding.DataField = 'COBERTURAEXPPORC'
      DataBinding.DataSource = frmPuntoVentaND.dsEntradaPaciente
      ParentColor = False
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Color = 16311249
      Style.HotTrack = False
      TabOrder = 6
      Width = 121
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 182
      Top = 240
      DataBinding.DataField = 'TOTALPAGADO'
      DataBinding.DataSource = frmPuntoVentaND.dsEntradaPaciente
      Properties.Alignment.Horz = taRightJustify
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Color = clAqua
      Style.HotTrack = False
      TabOrder = 4
      Width = 121
    end
    object cxDBCheckBox3: TcxDBCheckBox
      Left = 182
      Top = 95
      DataBinding.DataField = 'COBERTURARECHAZADA'
      DataBinding.DataSource = frmPuntoVentaND.dsEntradaPaciente
      ParentColor = False
      ParentFont = False
      Properties.NullStyle = nssUnchecked
      Properties.ReadOnly = True
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Color = 16311249
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 1
      Width = 121
    end
    object cxDBCheckBox4: TcxDBCheckBox
      Left = 182
      Top = 154
      DataBinding.DataField = 'COBERTURACONFIRMADA'
      DataBinding.DataSource = frmPuntoVentaND.dsEntradaPaciente
      ParentColor = False
      Properties.NullStyle = nssUnchecked
      Properties.ReadOnly = True
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Color = 16311249
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object EdConfirmar: TcxCurrencyEdit
      Left = 182
      Top = 181
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = 'RD$, 0.00;(RD$, 0.00)'
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Color = clAqua
      Style.HotTrack = False
      TabOrder = 3
      Width = 121
    end
    object cxDBCheckBox1: TcxDBCheckBox
      Left = 182
      Top = 36
      DataBinding.DataField = 'COBERTURAPRECONFIRMADA'
      DataBinding.DataSource = frmPuntoVentaND.dsEntradaPaciente
      ParentColor = False
      Properties.NullStyle = nssUnchecked
      Properties.ReadOnly = True
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Color = 16311249
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Group5: TdxLayoutGroup
        Caption = '(F8)  -  Auto-Confirmar Cobertura  -  (F8).'
        object dxLayoutControl1Item1: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = '(F8) - Auto-Confirmar Cobertura'
          Control = cxDBCheckBox1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Group7: TdxLayoutGroup
        ShowCaption = False
        Hidden = True
        ShowBorder = False
        object dxLayoutControl1Group3: TdxLayoutGroup
          Caption = '(F12)  -  Rechazar Cobertura  -  (F12).'
          object dxLayoutControl1Item9: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = '(F12) - Rechazada por el Seguro'
            Control = cxDBCheckBox3
            ControlOptions.ShowBorder = False
          end
        end
        object dxLayoutControl1Group4: TdxLayoutGroup
          Caption = 'Confirmar Cobertura - (Proceso Normal).'
          object dxLayoutControl1Item10: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'Confirmada por el Seguro'
            Control = cxDBCheckBox4
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item11: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'Monto a Confirmar'
            Control = EdConfirmar
            ControlOptions.ShowBorder = False
          end
        end
        object dxLayoutControl1Group1: TdxLayoutGroup
          Caption = 'Datos de la Confirmacion'
          object dxLayoutControl1Item8: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'Valor Abonado'
            Control = cxDBTextEdit3
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item6: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'Cobertura'
            Control = edcoberturavalor
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item7: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'Cobertura en %'
            Visible = False
            Control = cxDBCheckBox2
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item2: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'Aprobacion No'
            Control = EdAprobacionNo
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item3: TdxLayoutItem
            Caption = 'Aprobada Por'
            Control = EdAprobacionPor
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
          object dxLayoutControl1Item4: TdxLayoutItem
            Caption = 'cxButton1'
            ShowCaption = False
            Control = BtAceptar
            ControlOptions.ShowBorder = False
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
  end
  object cePorcentajeCobertura: TcxCurrencyEdit
    Left = 309
    Top = 267
    Properties.Alignment.Horz = taRightJustify
    Properties.DisplayFormat = '%, 0.00;(%, 0.00)'
    Properties.ReadOnly = True
    Style.BorderColor = clTeal
    Style.BorderStyle = ebsSingle
    Style.Color = clAqua
    Style.HotTrack = False
    TabOrder = 1
    Width = 66
  end
end
