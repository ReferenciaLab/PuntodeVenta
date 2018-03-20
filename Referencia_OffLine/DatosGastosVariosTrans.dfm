inherited frmDatosGastosVariosTrans: TfrmDatosGastosVariosTrans
  Caption = 'Gastos Varios'
  ClientHeight = 285
  ClientWidth = 648
  ExplicitWidth = 656
  ExplicitHeight = 319
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 648
    Height = 252
    ExplicitWidth = 648
    ExplicitHeight = 252
    inherited pcDatos: TcxPageControl
      Width = 736
      Height = 517
      ExplicitWidth = 736
      ExplicitHeight = 517
      ClientRectBottom = 517
      ClientRectRight = 736
      ClientRectTop = 24
      inherited tsMain: TcxTabSheet
        ExplicitWidth = 624
        ExplicitHeight = 228
        inherited lcGrid: TdxLayoutControl
          Width = 736
          Height = 493
          ExplicitWidth = 624
          ExplicitHeight = 228
          inherited dgDatos: TcxGrid
            Width = 615
            Height = 144
            ExplicitWidth = 615
            ExplicitHeight = 144
            inherited tvDatos: TcxGridDBTableView
              DataController.KeyFieldNames = 'GastoVarioID'
              object tvDatosGastoVarioID: TcxGridDBColumn
                Caption = 'Gasto ID'
                DataBinding.FieldName = 'GastoVarioID'
                Width = 125
              end
              object tvDatosValor: TcxGridDBColumn
                DataBinding.FieldName = 'Valor'
                Width = 125
              end
            end
          end
        end
      end
      inherited tsDatos: TcxTabSheet
        ExplicitWidth = 624
        ExplicitHeight = 228
        inherited lcDatos: TdxLayoutControl
          Width = 736
          Height = 493
          ExplicitWidth = 624
          ExplicitHeight = 228
          object EdValor: TcxDBCurrencyEdit [0]
            Left = 100
            Top = 63
            DataBinding.DataField = 'Valor'
            DataBinding.DataSource = dsDatos
            Properties.DisplayFormat = '0.00;(0.00)'
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 1
            Width = 100
          end
          object CbGastoVario: TcxDBExtLookupComboBox [1]
            Left = 100
            Top = 36
            RepositoryItem = DM.elcGastosVarios
            DataBinding.DataField = 'GastoVarioID'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 0
            Width = 300
          end
          inherited Group_Root: TdxLayoutGroup
            object lcDatosGroup4: TdxLayoutGroup
              Caption = 'Configurar'
              object lcDatosItem1: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Gastos Vario Id'
                Control = CbGastoVario
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem2: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Valor'
                Control = EdValor
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
      end
    end
  end
  inherited pnCaption: TPanel
    Width = 648
    ExplicitWidth = 648
  end
  inherited formStorage: TJvFormStorage
    Left = 368
    Top = 238
  end
  inherited dsDatos: TDataSource
    DataSet = qrGastosVariosTrans
    Left = 204
  end
  inherited dxPrintGrid: TdxComponentPrinter
    Left = 260
    Top = 244
    inherited dxPrintGridLink: TdxGridReportLink
      ReportDocument.CreationDate = 38925.673943865740000000
      BuiltInReportLink = True
    end
    inherited dxPrintGridDatos: TdxLayoutControlReportLink
      ReportDocument.CreationDate = 38925.673944768520000000
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
  inherited cxGridPopupMenu: TcxGridPopupMenu
    Left = 432
    Top = 240
  end
  inherited cxGridStyles: TcxStyleRepository
    Left = 328
    Top = 188
  end
  inherited SaveDialog: TSaveDialog
    Left = 217
    Top = 192
  end
  inherited qryHelper: TADOQuery
    Left = 449
    Top = 2
  end
  inherited qrDefaultView: TADOQuery
    Left = 504
    Top = 2
  end
  inherited strTableNames: TJvStrHolder
    Left = 152
    Top = 244
  end
  inherited cxStyleRepository1: TcxStyleRepository
    Left = 432
    Top = 180
  end
  inherited qrUserFields: TABSQuery
    Left = 96
    Top = 188
  end
  object qrGastosVariosTrans: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    AfterPost = qrGastosVariosTransAfterPost
    OnNewRecord = qrGastosVariosTransNewRecord
    Parameters = <>
    SQL.Strings = (
      'Select *  from PTGastosVarioTrans')
    Left = 144
    Top = 3
    object qrGastosVariosTransValor: TBCDField
      FieldName = 'Valor'
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
    object qrGastosVariosTransRefrecid: TLargeintField
      FieldName = 'Refrecid'
    end
    object qrGastosVariosTransGastoVarioID: TStringField
      FieldName = 'GastoVarioID'
      Size = 10
    end
    object qrGastosVariosTransGenerada: TBooleanField
      FieldName = 'Generada'
    end
  end
end
