inherited frmDatosBSProductos: TfrmDatosBSProductos
  Caption = 'Banco de Sangre - Productos'
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
            TabOrder = 3
            ExplicitWidth = 550
            ExplicitHeight = 240
            inherited tvDatos: TcxGridDBTableView
              object tvDatosProductoID: TcxGridDBColumn
                Caption = 'Producto'
                DataBinding.FieldName = 'ProductoID'
              end
              object tvDatosProductoDes: TcxGridDBColumn
                Caption = 'Descripcion'
                DataBinding.FieldName = 'ProductoDes'
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
              object lcGridItem2: TdxLayoutItem
                Caption = 'cxDBTextEdit2'
                Control = cxDBTextEdit2
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
          object cxDBTextEdit1: TcxDBTextEdit [0]
            Left = 123
            Top = 36
            AutoSize = False
            DataBinding.DataField = 'ProductoID'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 0
            Height = 21
            Width = 126
          end
          object cxDBTextEdit2: TcxDBTextEdit [1]
            Left = 123
            Top = 63
            AutoSize = False
            DataBinding.DataField = 'ProductoDes'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 1
            Height = 21
            Width = 302
          end
          inherited Group_Root: TdxLayoutGroup
            LayoutDirection = ldHorizontal
            object lcDatosGroup1: TdxLayoutGroup
              AutoAligns = []
              AlignHorz = ahClient
              Caption = 'Productos'
              object lcDatosItem1: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Codigo del producto'
                Control = cxDBTextEdit1
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem2: TdxLayoutItem
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
    DataSet = qrProductos
  end
  inherited dxPrintGrid: TdxComponentPrinter
    inherited dxPrintGridLink: TdxGridReportLink
      ReportDocument.CreationDate = 39116.612008113430000000
      BuiltInReportLink = True
    end
    inherited dxPrintGridDatos: TdxLayoutControlReportLink
      ReportDocument.CreationDate = 39116.612008483800000000
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
  object qrProductos: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      '   FROM BSProductos')
    Left = 200
    Top = 95
    object qrProductosProductoID: TWideStringField
      FieldName = 'ProductoID'
      FixedChar = True
      Size = 10
    end
    object qrProductosProductoDes: TWideStringField
      FieldName = 'ProductoDes'
      FixedChar = True
      Size = 30
    end
  end
end
