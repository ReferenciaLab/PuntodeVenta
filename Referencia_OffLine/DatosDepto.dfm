inherited frmDatosDepto: TfrmDatosDepto
  Caption = 'Departamentos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    inherited pcDatos: TcxPageControl
      Width = 736
      Height = 517
      ExplicitWidth = 736
      ExplicitHeight = 517
      ClientRectBottom = 517
      ClientRectRight = 736
      ClientRectTop = 24
      inherited tsMain: TcxTabSheet
        inherited lcGrid: TdxLayoutControl
          Width = 736
          Height = 493
          inherited dgDatos: TcxGrid
            Width = 550
            Height = 240
            ExplicitWidth = 550
            ExplicitHeight = 240
            inherited tvDatos: TcxGridDBTableView
              DataController.KeyFieldNames = 'Depid'
              object tvDatosDepid: TcxGridDBColumn
                Caption = 'Departamento'
                DataBinding.FieldName = 'Depid'
              end
              object tvDatosDescripcion: TcxGridDBColumn
                Caption = 'Descripci'#243'n'
                DataBinding.FieldName = 'Descripcion'
              end
            end
          end
        end
      end
      inherited tsDatos: TcxTabSheet
        inherited lcDatos: TdxLayoutControl
          Width = 736
          Height = 493
          object cxDBTextEdit1: TcxDBTextEdit [0]
            Left = 95
            Top = 36
            DataBinding.DataField = 'Depid'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 0
            Width = 121
          end
          object cxDBTextEdit2: TcxDBTextEdit [1]
            Left = 95
            Top = 63
            DataBinding.DataField = 'Descripcion'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
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
                Caption = 'Departamento'
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
  inherited dsDatos: TDataSource
    DataSet = qrDepartamento
    Left = 188
    Top = 2
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
    Top = 2
  end
  inherited qrDefaultView: TADOQuery
    Left = 504
    Top = 2
  end
  inherited qrVistas: TABSQuery
    Left = 348
    Top = 72
  end
  object qrDepartamento: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM PTDepartamento'
      'WHERE DataAreaId = '#39'ldr'#39)
    Left = 136
    Top = 2
    object qrDepartamentoDEPID: TStringField
      FieldName = 'DEPID'
      Size = 10
    end
    object qrDepartamentoDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 50
    end
    object qrDepartamentoDATAAREAID: TStringField
      FieldName = 'DATAAREAID'
      Size = 3
    end
    object qrDepartamentoRECID: TLargeintField
      FieldName = 'RECID'
    end
  end
end
