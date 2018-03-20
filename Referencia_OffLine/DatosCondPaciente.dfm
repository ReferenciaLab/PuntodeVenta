inherited frmDatosCondPaciente: TfrmDatosCondPaciente
  Caption = 'Condicion del Paciente'
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
      Width = 736
      Height = 517
      ActivePage = tsDatos
      ExplicitWidth = 736
      ExplicitHeight = 517
      ClientRectBottom = 517
      ClientRectRight = 736
      ClientRectTop = 24
      inherited tsMain: TcxTabSheet
        ExplicitWidth = 593
        ExplicitHeight = 377
        inherited lcGrid: TdxLayoutControl
          Width = 736
          Height = 493
          ExplicitWidth = 593
          ExplicitHeight = 377
          inherited dgDatos: TcxGrid
            Width = 550
            Height = 240
            ExplicitWidth = 550
            ExplicitHeight = 240
            inherited tvDatos: TcxGridDBTableView
              DataController.KeyFieldNames = 'condPaciente'
              object tvDatosCondPaciente: TcxGridDBColumn
                Caption = 'C'#243'digo'
                DataBinding.FieldName = 'condPaciente'
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
        ExplicitWidth = 593
        ExplicitHeight = 377
        inherited lcDatos: TdxLayoutControl
          Width = 736
          Height = 493
          ExplicitWidth = 593
          ExplicitHeight = 377
          object cxDBTextEdit1: TcxDBTextEdit [0]
            Tag = 99
            Left = 84
            Top = 36
            DataBinding.DataField = 'condPaciente'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
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
    DataSet = qrCondPaciente
    Left = 199
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
  inherited qrDefaultView: TADOQuery
    Left = 512
  end
  inherited qrVistas: TABSQuery
    Left = 348
    Top = 72
  end
  object qrCondPaciente: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *  from PTCondicionPaciente')
    Left = 144
    Top = 3
    object qrCondPacientecondPaciente: TStringField
      Tag = 99
      FieldName = 'condPaciente'
      Required = True
      Size = 5
    end
    object qrCondPacientedescripcion: TStringField
      FieldName = 'descripcion'
      Size = 50
    end
  end
end
