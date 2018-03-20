object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 437
  ClientWidth = 920
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object cgReclamacionDetalle: TcxGrid
    Left = 9
    Top = 129
    Width = 898
    Height = 250
    TabOrder = 0
    object dbDatosRec: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
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
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 898
    Height = 113
    BorderStyle = bsSingle
    TabOrder = 1
    object Label1: TLabel
      Left = 14
      Top = 31
      Width = 33
      Height = 13
      Caption = 'Cliente'
    end
    object Label2: TLabel
      Left = 174
      Top = 31
      Width = 68
      Height = 13
      Caption = 'Monto Afiliado'
    end
    object Label3: TLabel
      Left = 333
      Top = 31
      Width = 24
      Height = 13
      Caption = 'Total'
    end
    object Label4: TLabel
      Left = 465
      Top = 31
      Width = 72
      Height = 13
      Caption = 'Monto Total PV'
    end
    object Label5: TLabel
      Left = 634
      Top = 31
      Width = 37
      Height = 13
      Caption = 'Cob. %'
    end
    object Label6: TLabel
      Left = 752
      Top = 31
      Width = 48
      Height = 13
      Caption = 'Diferencia'
    end
    object Label7: TLabel
      Left = 9
      Top = 78
      Width = 59
      Height = 13
      Caption = 'Reclamaci'#243'n'
    end
    object Label8: TLabel
      Left = 174
      Top = 78
      Width = 43
      Height = 13
      Caption = 'Tipo Plan'
    end
    object Label9: TLabel
      Left = 328
      Top = 78
      Width = 33
      Height = 13
      Caption = 'Estado'
    end
    object Label10: TLabel
      Left = 481
      Top = 78
      Width = 35
      Height = 13
      Caption = 'Afiliado'
    end
    object txtCliente: TcxCurrencyEdit
      Left = 74
      Top = 23
      Properties.Alignment.Horz = taRightJustify
      Properties.AssignedValues.DisplayFormat = True
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Color = clAqua
      Style.HotTrack = False
      TabOrder = 0
      Width = 95
    end
    object CurMontoAfiliado: TcxCurrencyEdit
      Left = 242
      Top = 23
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
      TabOrder = 1
      Width = 80
    end
    object CurTotal: TcxCurrencyEdit
      Left = 362
      Top = 23
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = 'RD$, 0.00;(RD$, 0.00)'
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Color = clAqua
      Style.HotTrack = False
      TabOrder = 2
      Width = 97
    end
    object CurMontoTotalPV: TcxCurrencyEdit
      Left = 539
      Top = 23
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = 'RD$, 0.00;(RD$, 0.00)'
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Color = clAqua
      Style.HotTrack = False
      TabOrder = 3
      Width = 90
    end
    object CurPorcentajeCob: TcxCurrencyEdit
      Left = 678
      Top = 23
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = 'RD$, 0.00;(RD$, 0.00)'
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Color = clAqua
      Style.HotTrack = False
      TabOrder = 4
      Width = 63
    end
    object CurDiferencia: TcxCurrencyEdit
      Left = 802
      Top = 23
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = 'RD$, 0.00;(RD$, 0.00)'
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Color = clAqua
      Style.HotTrack = False
      TabOrder = 5
      Width = 80
    end
    object txtReclamacion: TcxCurrencyEdit
      Left = 74
      Top = 67
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
      TabOrder = 6
      Width = 95
    end
    object txtTipoPlan: TcxTextEdit
      Left = 244
      Top = 70
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
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
      TabOrder = 7
      Width = 80
    end
    object txtEstado: TcxTextEdit
      Left = 362
      Top = 70
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.ReadOnly = True
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
      TabOrder = 8
      Width = 111
    end
    object txtAfiliado: TcxCurrencyEdit
      Left = 518
      Top = 69
      Properties.Alignment.Horz = taLeftJustify
      Properties.AssignedValues.DisplayFormat = True
      Properties.DecimalPlaces = 0
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Color = clAqua
      Style.HotTrack = False
      TabOrder = 9
      Width = 364
    end
  end
  object btImprimir: TcxButton
    Left = 377
    Top = 387
    Width = 170
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 2
  end
  object BtAceptar: TcxButton
    Left = 558
    Top = 387
    Width = 170
    Height = 25
    Caption = 'F9 = Procesar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object BtCancelar: TcxButton
    Left = 737
    Top = 387
    Width = 170
    Height = 25
    Caption = 'Aceptar'
    ModalResult = 1
    TabOrder = 4
  end
end
