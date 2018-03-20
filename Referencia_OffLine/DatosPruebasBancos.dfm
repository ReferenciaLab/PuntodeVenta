inherited frmDatosPruebasBanco: TfrmDatosPruebasBanco
  Caption = 'Prubas asociadas a las donaciones'
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    inherited pcDatos: TcxPageControl
      Width = 513
      Height = 517
      ActivePage = tsMain
      ExplicitWidth = 513
      ExplicitHeight = 517
      ClientRectBottom = 517
      ClientRectRight = 513
      ClientRectTop = 24
      inherited tsMain: TcxTabSheet
        ExplicitWidth = 588
        ExplicitHeight = 318
        inherited lcGrid: TdxLayoutControl
          Width = 513
          Height = 493
          ExplicitWidth = 588
          ExplicitHeight = 318
          inherited dgDatos: TcxGrid
            Width = 489
            Height = 240
            ExplicitWidth = 489
            ExplicitHeight = 240
            inherited tvDatos: TcxGridDBTableView
              object tvDatosPruebaID: TcxGridDBColumn
                Caption = 'Prueba'
                DataBinding.FieldName = 'PruebaID'
              end
              object tvDatosalias: TcxGridDBColumn
                Caption = 'Alias'
                DataBinding.FieldName = 'alias'
              end
              object tvDatosDescripcion: TcxGridDBColumn
                DataBinding.FieldName = 'Descripcion'
              end
            end
          end
        end
      end
      inherited tsDatos: TcxTabSheet
        ExplicitWidth = 588
        ExplicitHeight = 318
        inherited lcDatos: TdxLayoutControl
          Width = 513
          Height = 493
          ExplicitWidth = 588
          ExplicitHeight = 318
        end
      end
    end
    object cxButton1: TcxButton [1]
      Left = 525
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Pruebas'
      TabOrder = 1
      OnClick = cxButton1Click
    end
    inherited dxLayoutGroup2: TdxLayoutGroup
      inherited dxLayoutControl1Group_Root: TdxLayoutGroup
        inherited lgBotones: TdxLayoutGroup
          object dxLayoutControl1Item1: TdxLayoutItem
            Caption = 'cxButton1'
            ShowCaption = False
            Control = cxButton1
            ControlOptions.ShowBorder = False
          end
        end
      end
    end
  end
  inherited dsDatos: TDataSource
    DataSet = qrPruebas
    Left = 236
    Top = 7
  end
  inherited dxPrintGrid: TdxComponentPrinter
    inherited dxPrintGridLink: TdxGridReportLink
      ReportDocument.CreationDate = 39129.388147500000000000
      BuiltInReportLink = True
    end
    inherited dxPrintGridDatos: TdxLayoutControlReportLink
      ReportDocument.CreationDate = 39129.388147673610000000
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
  object qrPruebas: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from BSPrueba')
    Left = 4
    Top = 3
    object qrPruebasPruebaID: TStringField
      FieldName = 'PruebaID'
    end
    object qrPruebasalias: TStringField
      FieldName = 'alias'
      Size = 80
    end
    object qrPruebasDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 80
    end
  end
end
