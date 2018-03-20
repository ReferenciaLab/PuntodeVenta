inherited frmTipoDonacion: TfrmTipoDonacion
  Caption = 'Tipos de donaciones'
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    inherited pcDatos: TcxPageControl
      Width = 736
      Height = 517
      ActivePage = tsMain
      ExplicitWidth = 736
      ExplicitHeight = 517
      ClientRectBottom = 517
      ClientRectRight = 736
      ClientRectTop = 24
      inherited tsMain: TcxTabSheet
        ExplicitWidth = 588
        ExplicitHeight = 318
        inherited lcGrid: TdxLayoutControl
          Width = 736
          Height = 493
          ExplicitWidth = 588
          ExplicitHeight = 318
          inherited dgDatos: TcxGrid
            Width = 550
            Height = 240
            TabOrder = 2
            ExplicitWidth = 550
            ExplicitHeight = 240
            inherited tvDatos: TcxGridDBTableView
              DataController.KeyFieldNames = 'TipoDonacionID'
              object tvDatosTipoDonacionID: TcxGridDBColumn
                Caption = 'Tipo'
                DataBinding.FieldName = 'TipoDonacionID'
              end
              object tvDatosTipoDonacionDes: TcxGridDBColumn
                Caption = 'Descripcion'
                DataBinding.FieldName = 'TipoDonacionDes'
              end
            end
          end
          inherited dxLayoutGroup1: TdxLayoutGroup
            inherited lcGrupoBuscar: TdxLayoutGroup
              object lcGridItem1: TdxLayoutItem
                Caption = 'cxDBTextEdit1'
                Control = cxDBTextEdit1
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
      end
      inherited tsDatos: TcxTabSheet
        ExplicitWidth = 588
        ExplicitHeight = 318
        inherited lcDatos: TdxLayoutControl
          Width = 736
          Height = 493
          ExplicitWidth = 588
          ExplicitHeight = 318
          object cxDBTextEdit2: TcxDBTextEdit [0]
            Left = 84
            Top = 63
            DataBinding.DataField = 'TipoDonacionDes'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 1
            Width = 121
          end
          object cxDBTextEdit1: TcxDBTextEdit [1]
            Left = 84
            Top = 36
            DataBinding.DataField = 'TipoDonacionID'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 0
            Width = 121
          end
          inherited Group_Root: TdxLayoutGroup
            object lcDatosGroup1: TdxLayoutGroup
              Caption = 'Tipos de Donaciones'
              object lcDatosItem2: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Tipo'
                Control = cxDBTextEdit1
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem1: TdxLayoutItem
                Caption = 'Descripcion'
                Control = cxDBTextEdit2
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
      end
    end
  end
  inherited dsDatos: TDataSource
    DataSet = qrTipoDonacion
  end
  inherited dxPrintGrid: TdxComponentPrinter
    inherited dxPrintGridLink: TdxGridReportLink
      ReportDocument.CreationDate = 39117.380741145830000000
      BuiltInReportLink = True
    end
    inherited dxPrintGridDatos: TdxLayoutControlReportLink
      ReportDocument.CreationDate = 39117.380741331020000000
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
  object qrTipoDonacion: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      '   FROM BSTipoDonacion')
    Left = 216
    Top = 151
    object qrTipoDonacionTipoDonacionID: TWideStringField
      FieldName = 'TipoDonacionID'
      FixedChar = True
      Size = 10
    end
    object qrTipoDonacionTipoDonacionDes: TWideStringField
      FieldName = 'TipoDonacionDes'
      FixedChar = True
      Size = 30
    end
  end
end
