inherited frmDatosMateriales: TfrmDatosMateriales
  Caption = 'Materiales'
  ClientHeight = 434
  ClientWidth = 617
  ExplicitWidth = 625
  ExplicitHeight = 468
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 617
    Height = 401
    ExplicitWidth = 617
    ExplicitHeight = 401
    inherited pcDatos: TcxPageControl
      ActivePage = tsDatos
      ClientRectBottom = 342
      ClientRectRight = 588
      ClientRectTop = 24
      inherited tsMain: TcxTabSheet
        inherited lcGrid: TdxLayoutControl
          inherited dgDatos: TcxGrid
            inherited tvDatos: TcxGridDBTableView
              DataController.KeyFieldNames = 'MaterialId'
              object tvDatosCondPaciente: TcxGridDBColumn
                Caption = 'C'#243'digo'
                DataBinding.FieldName = 'MaterialId'
                Width = 110
              end
              object tvDatosDescripcion: TcxGridDBColumn
                Caption = 'Descripci'#243'n'
                DataBinding.FieldName = 'Descripcion'
                Width = 440
              end
            end
          end
        end
      end
      inherited tsDatos: TcxTabSheet
        inherited lcDatos: TdxLayoutControl
          object cxDBTextEdit1: TcxDBTextEdit [0]
            Tag = 99
            Left = 84
            Top = 36
            DataBinding.DataField = 'MaterialId'
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
          inherited Group_Root: TdxLayoutGroup
            object lcDatosGroup1: TdxLayoutGroup
              Caption = 'General'
              object lcDatosItem1: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'C'#243'digo'
                Control = cxDBTextEdit1
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem2: TdxLayoutItem
                Caption = 'Descripci'#243'n'
                Control = cxDBTextEdit2
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
      end
    end
  end
  inherited pnCaption: TPanel
    Width = 617
    ExplicitWidth = 617
  end
  inherited dsDatos: TDataSource
    DataSet = qrMateriales
    Left = 188
  end
  inherited dxPrintGrid: TdxComponentPrinter
    inherited dxPrintGridLink: TdxGridReportLink
      ReportDocument.CreationDate = 38932.673759942130000000
      BuiltInReportLink = True
    end
    inherited dxPrintGridDatos: TdxLayoutControlReportLink
      ReportDocument.CreationDate = 38932.673759942130000000
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
  inherited qryHelper: TADOQuery
    Left = 476
  end
  inherited qrDefaultView: TADOQuery
    Left = 411
    Top = 2
  end
  inherited qrVistas: TABSQuery
    Left = 348
    Top = 72
  end
  object qrMateriales: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *  from PTMateriales')
    Left = 131
    Top = 2
    object qrMaterialesMaterialId: TStringField
      FieldName = 'MaterialId'
      Required = True
      Size = 10
    end
    object qrMaterialesDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
  end
end
