inherited frmDatosMaterialesPruebas: TfrmDatosMaterialesPruebas
  Caption = 'Materiales'
  ClientHeight = 311
  ClientWidth = 617
  ExplicitWidth = 625
  ExplicitHeight = 345
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 617
    Height = 278
    ExplicitWidth = 617
    ExplicitHeight = 278
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
        ExplicitHeight = 254
        inherited lcGrid: TdxLayoutControl
          Width = 736
          Height = 493
          ExplicitWidth = 593
          ExplicitHeight = 254
          inherited dgDatos: TcxGrid
            Width = 550
            Height = 240
            ExplicitWidth = 550
            ExplicitHeight = 240
            inherited tvDatos: TcxGridDBTableView
              DataController.KeyFieldNames = 'MaterialId'
              object tvDatosCondPaciente: TcxGridDBColumn
                Caption = 'C'#243'digo Material'
                DataBinding.FieldName = 'MaterialId'
                Width = 110
              end
              object tvDatosDescripcion: TcxGridDBColumn
                Caption = 'Descripci'#243'n'
                DataBinding.FieldName = 'Descripcion'
                Width = 440
              end
              object tvDatosCantidad: TcxGridDBColumn
                Caption = 'Cantidad'
                DataBinding.FieldName = 'cantidad'
              end
            end
          end
        end
      end
      inherited tsDatos: TcxTabSheet
        ExplicitWidth = 593
        ExplicitHeight = 254
        inherited lcDatos: TdxLayoutControl
          Width = 736
          Height = 493
          ExplicitWidth = 593
          ExplicitHeight = 254
          object cxDBTextEdit2: TcxDBTextEdit [0]
            Left = 101
            Top = 90
            DataBinding.DataField = 'Descripcion'
            DataBinding.DataSource = dsDatos
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 2
            Width = 121
          end
          object cxDBTextEdit3: TcxDBTextEdit [1]
            Left = 101
            Top = 36
            DataBinding.DataField = 'pruebaId'
            DataBinding.DataSource = dsDatos
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 0
            Width = 145
          end
          object cxDBTextEdit4: TcxDBTextEdit [2]
            Left = 101
            Top = 117
            DataBinding.DataField = 'cantidad'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 3
            Width = 145
          end
          object cxDBExtLookupComboBox1: TcxDBExtLookupComboBox [3]
            Left = 101
            Top = 63
            RepositoryItem = DM.elcMateriales
            DataBinding.DataField = 'MaterialId'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 1
            Width = 145
          end
          inherited Group_Root: TdxLayoutGroup
            object lcDatosGroup1: TdxLayoutGroup
              Caption = 'General'
              object lcDatosItem3: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Prueba'
                Control = cxDBTextEdit3
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem1: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'C'#243'digo Material'
                Control = cxDBExtLookupComboBox1
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem2: TdxLayoutItem
                Caption = 'Descripci'#243'n'
                Control = cxDBTextEdit2
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem4: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Cantidad'
                Control = cxDBTextEdit4
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
    DataSet = qrMaterialesPrueba
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
  inherited cxGridPopupMenu: TcxGridPopupMenu
    Left = 280
    Top = 112
  end
  inherited qrDefaultView: TADOQuery
    Left = 395
    Top = 2
  end
  inherited cxStyleRepository1: TcxStyleRepository
    Left = 24
    Top = 212
  end
  inherited qrUserFields: TABSQuery
    Left = 72
    Top = 236
  end
  inherited qrVistas: TABSQuery
    Left = 348
    Top = 72
  end
  object qrMaterialesPrueba: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    AfterInsert = qrMaterialesPruebaAfterInsert
    Parameters = <
      item
        Name = 'pru'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'Select *  from PTMaterialesPrueba'
      'where Pruebaid = :pru')
    Left = 128
    Top = 3
    object qrMaterialesPruebapruebaId: TStringField
      FieldName = 'pruebaId'
    end
    object qrMaterialesPruebaMaterialId: TStringField
      FieldName = 'MaterialId'
      Required = True
      Size = 10
    end
    object qrMaterialesPruebaMuestraId: TIntegerField
      FieldName = 'MuestraId'
    end
    object qrMaterialesPruebacantidad: TBCDField
      FieldName = 'cantidad'
      Precision = 19
    end
    object qrMaterialesPruebaDescripcion: TStringField
      FieldKind = fkLookup
      FieldName = 'Descripcion'
      LookupDataSet = DM.qrMateriales
      LookupKeyFields = 'MaterialId'
      LookupResultField = 'Descripcion'
      KeyFields = 'MaterialId'
      Size = 50
      Lookup = True
    end
  end
end
