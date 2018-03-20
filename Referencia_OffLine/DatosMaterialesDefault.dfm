inherited frmDatosMaterialesDefault: TfrmDatosMaterialesDefault
  Caption = 'Materiales Predeterminados'
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
              object tvDatosColumn1: TcxGridDBColumn
                Caption = 'Cantidad'
                DataBinding.FieldName = 'cantidad'
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
          object cxDBTextEdit2: TcxDBTextEdit [0]
            Left = 105
            Top = 63
            DataBinding.DataField = 'Descripcion'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 1
            Width = 121
          end
          object cxDBTextEdit4: TcxDBTextEdit [1]
            Left = 105
            Top = 90
            DataBinding.DataField = 'cantidad'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 2
            Width = 145
          end
          object cxDBExtLookupComboBox1: TcxDBExtLookupComboBox [2]
            Left = 105
            Top = 36
            RepositoryItem = DM.elcMateriales
            DataBinding.DataField = 'MaterialId'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 0
            Width = 145
          end
          object cxDBExtLookupComboBox2: TcxDBExtLookupComboBox [3]
            Left = 105
            Top = 117
            RepositoryItem = DM.elcMuestras
            DataBinding.DataField = 'MuestraId'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 3
            Width = 145
          end
          inherited Group_Root: TdxLayoutGroup
            object lcDatosGroup1: TdxLayoutGroup
              Caption = 'General'
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
              object lcDatosItem3: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Tipo de Muestra'
                Control = cxDBExtLookupComboBox2
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
  inherited qrDefaultView: TADOQuery
    Left = 400
    Top = 2
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
    Left = 136
    Top = 3
    object qrMaterialesPruebapruebaId: TStringField
      DisplayLabel = 'PruebaId'
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
