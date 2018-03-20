object frmCuadreCajaSucursalGlobal: TfrmCuadreCajaSucursalGlobal
  Left = 0
  Top = 0
  Caption = 'Imprimir Cuadre de Sucursales (Seleccionar Fecha)'
  ClientHeight = 132
  ClientWidth = 455
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
  object Label2: TLabel
    Left = 373
    Top = 233
    Width = 65
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '0'
    Color = 16311249
    ParentColor = False
  end
  object dxLayoutControl3: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 455
    Height = 132
    Align = alClient
    TabOrder = 0
    LookAndFeel = dmAppActions.lnfWeb
    object edfechacorte: TcxDateEdit
      Left = 191
      Top = 11
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 0
      Width = 148
    end
    object btaceptarcuadre: TcxButton
      Left = 23
      Top = 72
      Width = 200
      Height = 25
      Caption = 'Aceptar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ModalResult = 1
      ParentFont = False
      TabOrder = 2
    end
    object btcancelarcuadre: TcxButton
      Left = 229
      Top = 72
      Width = 200
      Height = 25
      Caption = 'Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ModalResult = 2
      ParentFont = False
      TabOrder = 3
    end
    object cboTanda: TcxImageComboBox
      Left = 189
      Top = 38
      Properties.Items = <
        item
          Description = 'Primero'
          ImageIndex = 0
          Value = 1
        end
        item
          Description = 'Segundo'
          Value = 2
        end
        item
          Description = 'Tercero'
          Value = 3
        end
        item
          Description = 'Cuarto'
          Value = 4
        end
        item
          Description = 'General (Todos)'
          Value = 0
        end>
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 1
      Width = 151
    end
    object dxLayoutGroup2: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object GroupParametros: TdxLayoutGroup
        Caption = 'Parametros Cuadre'
        ShowCaption = False
        ShowBorder = False
        object dxLayoutControl3Item2: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahCenter
          Caption = 'Fecha de Corte'
          Control = edfechacorte
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl3Item1: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahCenter
          Caption = 'Cuadre a Elegir'
          Control = cboTanda
          ControlOptions.ShowBorder = False
        end
      end
      object GroupSaldo: TdxLayoutGroup
        Caption = 'Saldo Final en Caja'
        ShowCaption = False
        ShowBorder = False
        object botonescuadre: TdxLayoutGroup
          AutoAligns = []
          AlignHorz = ahRight
          AlignVert = avBottom
          Caption = 'botonescuadre'
          ShowCaption = False
          LayoutDirection = ldHorizontal
          object dxLayoutControl3Item31: TdxLayoutItem
            Caption = 'New Item'
            ShowCaption = False
            Control = btaceptarcuadre
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl3Item10: TdxLayoutItem
            Caption = 'New Item'
            ShowCaption = False
            Control = btcancelarcuadre
            ControlOptions.ShowBorder = False
          end
        end
      end
    end
  end
  object btPacientes: TcxButton
    Left = 347
    Top = 34
    Width = 30
    Height = 25
    TabOrder = 1
    OnClick = btPacientesClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      33333FFFFFFFFFFFFFFF000000000000000077777777777777770FFFFFFFFFFF
      FFF07F3FF3FF3FFF3FF70F00F00F000F00F07F773773777377370FFFFFFFFFFF
      FFF07F3FF3FF33FFFFF70F00F00FF00000F07F773773377777F70FEEEEEFF0F9
      FCF07F33333337F7F7F70FFFFFFFF0F9FCF07F3FFFF337F737F70F0000FFF0FF
      FCF07F7777F337F337370F0000FFF0FFFFF07F777733373333370FFFFFFFFFFF
      FFF07FFFFFFFFFFFFFF70CCCCCCCCCCCCCC07777777777777777088CCCCCCCCC
      C880733777777777733700000000000000007777777777777777333333333333
      3333333333333333333333333333333333333333333333333333}
    NumGlyphs = 2
  end
end
