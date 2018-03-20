inherited frmDatosMoneda: TfrmDatosMoneda
  Left = 406
  Top = 88
  HelpContext = 71000
  Caption = 'Monedas'
  ClientHeight = 317
  ClientWidth = 520
  ExplicitWidth = 528
  ExplicitHeight = 351
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 520
    Height = 284
    ExplicitWidth = 520
    ExplicitHeight = 284
    inherited pcDatos: TcxPageControl
      Width = 671
      Height = 290
      ExplicitWidth = 671
      ExplicitHeight = 290
      ClientRectBottom = 290
      ClientRectRight = 671
      ClientRectTop = 24
      inherited tsMain: TcxTabSheet
        ExplicitWidth = 671
        ExplicitHeight = 266
        inherited lcGrid: TdxLayoutControl
          Width = 671
          Height = 266
          ExplicitWidth = 671
          ExplicitHeight = 266
          inherited dgDatos: TcxGrid
            Width = 574
            Height = 229
            ExplicitWidth = 574
            ExplicitHeight = 229
            inherited tvDatos: TcxGridDBTableView
              object tvDatosMoneadaID: TcxGridDBColumn
                Caption = 'Moneda'
                DataBinding.FieldName = 'MoneadaID'
                Width = 69
              end
              object tvDatosDescripcion: TcxGridDBColumn
                DataBinding.FieldName = 'Descripcion'
                Width = 302
              end
              object tvDatosSimbolo: TcxGridDBColumn
                DataBinding.FieldName = 'Simbolo'
                Width = 60
              end
              object tvDatosCuentaBeneficio: TcxGridDBColumn
                DataBinding.FieldName = 'CuentaBeneficio'
                Visible = False
                Width = 101
              end
              object tvDatosCuentaPerdida: TcxGridDBColumn
                DataBinding.FieldName = 'CuentaPerdida'
                Visible = False
                Width = 101
              end
            end
          end
        end
      end
      inherited tsDatos: TcxTabSheet
        ExplicitWidth = 671
        ExplicitHeight = 266
        inherited lcDatos: TdxLayoutControl
          Width = 671
          Height = 266
          ExplicitWidth = 671
          ExplicitHeight = 266
          object cxDBTextEdit1: TcxDBTextEdit [0]
            Tag = 99
            Left = 84
            Top = 36
            DataBinding.DataField = 'MoneadaID'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 0
            Width = 121
          end
          object cxDBTextEdit2: TcxDBTextEdit [1]
            Left = 84
            Top = 63
            DataBinding.DataField = 'Descripcion'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 1
            Width = 121
          end
          object cxDBTextEdit3: TcxDBTextEdit [2]
            Left = 84
            Top = 90
            DataBinding.DataField = 'Simbolo'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 2
            Width = 121
          end
          inherited Group_Root: TdxLayoutGroup
            object lcDatosGroup1: TdxLayoutGroup
              Caption = 'General'
              object lcDatosItem1: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Moneda'
                Control = cxDBTextEdit1
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem2: TdxLayoutItem
                Caption = 'Descripci'#243'n'
                Control = cxDBTextEdit2
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem3: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Simbolo'
                Control = cxDBTextEdit3
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
      end
    end
    object btTasas: TcxButton [1]
      Left = 433
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Tasas'
      TabOrder = 1
      OnClick = btTasasClick
    end
    inherited dxLayoutGroup2: TdxLayoutGroup
      inherited dxLayoutControl1Group_Root: TdxLayoutGroup
        inherited lgBotones: TdxLayoutGroup
          object dxLayoutControl1Item1: TdxLayoutItem
            Caption = 'cxButton1'
            ShowCaption = False
            Control = btTasas
            ControlOptions.ShowBorder = False
          end
        end
      end
    end
  end
  inherited pnCaption: TPanel
    Width = 520
    ExplicitWidth = 520
  end
  inherited formStorage: TJvFormStorage
    Left = 240
    Top = 142
  end
  inherited dsDatos: TDataSource
    DataSet = qrMonedas
    Left = 152
    Top = 2
  end
  inherited dxPrintGrid: TdxComponentPrinter
    Left = 68
    Top = 244
    inherited dxPrintGridLink: TdxGridReportLink
      ReportDocument.CreationDate = 38065.600147951390000000
      BuiltInReportLink = True
    end
    inherited dxPrintGridDatos: TdxLayoutControlReportLink
      ReportDocument.CreationDate = 38498.626738483800000000
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
  inherited cxGridPopupMenu: TcxGridPopupMenu
    Left = 160
    Top = 216
  end
  inherited cxGridStyles: TcxStyleRepository
    Left = 136
    Top = 68
  end
  inherited SaveDialog: TSaveDialog
    Left = 261
    Top = 252
  end
  inherited qryHelper: TADOQuery
    Left = 381
  end
  inherited alEdit: TActionList
    Left = 196
    Top = 56
  end
  inherited pmCustom: TPopupMenu
    Left = 320
    Top = 180
  end
  inherited qrDefaultView: TADOQuery
    Left = 327
  end
  inherited strTableNames: TJvStrHolder
    Left = 56
    Top = 156
  end
  inherited cxStyleRepository1: TcxStyleRepository
    Left = 240
    Top = 188
  end
  inherited qrUserFields: TABSQuery
    Top = 140
  end
  object qrMonedas: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *'
      '  from SysMonedas')
    Left = 104
    Top = 3
    object qrMonedasMoneadaID: TStringField
      FieldName = 'MoneadaID'
      Required = True
      Size = 3
    end
    object qrMonedasDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 25
    end
    object qrMonedasSimbolo: TStringField
      FieldName = 'Simbolo'
      Size = 5
    end
    object qrMonedasCuentaBeneficio: TStringField
      FieldName = 'CuentaBeneficio'
      Size = 15
    end
    object qrMonedasCuentaPerdida: TStringField
      FieldName = 'CuentaPerdida'
      Size = 15
    end
  end
end
