inherited frmDatosespecialidad: TfrmDatosespecialidad
  Caption = 'Especialidades'
  ExplicitWidth = 320
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    inherited pcDatos: TcxPageControl
      Width = 736
      Height = 517
      ActivePage = tsDatos
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
              DataController.KeyFieldNames = 'EspecialidadID'
              object tvDatosEspecialidadID: TcxGridDBColumn
                DataBinding.FieldName = 'EspecialidadID'
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
            Tag = 99
            Left = 88
            Top = 36
            DataBinding.DataField = 'EspecialidadID'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 0
            Width = 121
          end
          object cxDBTextEdit2: TcxDBTextEdit [1]
            Left = 88
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
                Caption = 'Especialidad'
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
  inherited formStorage: TJvFormStorage
    Left = 464
    Top = 94
  end
  inherited dsDatos: TDataSource
    DataSet = qrEpecialidad
  end
  inherited dxPrintGrid: TdxComponentPrinter
    Left = 404
    Top = 180
    inherited dxPrintGridLink: TdxGridReportLink
      ReportDocument.CreationDate = 38945.412668356480000000
      BuiltInReportLink = True
    end
    inherited dxPrintGridDatos: TdxLayoutControlReportLink
      ReportDocument.CreationDate = 38945.412668356480000000
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
  inherited cxGridPopupMenu: TcxGridPopupMenu
    Left = 352
    Top = 179
  end
  inherited cxGridStyles: TcxStyleRepository
    Left = 404
    Top = 141
  end
  inherited SaveDialog: TSaveDialog
    Left = 465
    Top = 176
  end
  inherited qryHelper: TADOQuery
    Left = 451
    Top = 2
  end
  inherited alEdit: TActionList
    Left = 556
    Top = 256
  end
  inherited pmCustom: TPopupMenu
    Left = 464
    Top = 140
  end
  inherited qrDefaultView: TADOQuery
    Left = 391
    Top = 2
  end
  inherited strView: TJvStrHolder
    Left = 404
    Top = 92
  end
  inherited strTableNames: TJvStrHolder
    Left = 349
    Top = 141
  end
  inherited cxStyleRepository1: TcxStyleRepository
    Left = 400
    Top = 220
  end
  inherited qrUserFields: TABSQuery
    Left = 464
    Top = 220
  end
  inherited qrVistas: TABSQuery
    Left = 348
    Top = 91
  end
  inherited cxIntl1: TcxIntl
    Left = 352
    Top = 224
  end
  object qrEpecialidad: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *  from PTEspecialidad')
    Left = 142
    Top = 3
    object qrEpecialidadEspecialidadID: TStringField
      DisplayLabel = 'Especialidad'
      FieldName = 'EspecialidadID'
      Required = True
      Size = 10
    end
    object qrEpecialidadDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
  end
end
