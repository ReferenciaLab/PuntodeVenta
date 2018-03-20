inherited frmDatosPlanesCombos: TfrmDatosPlanesCombos
  Caption = 'Registrar Los Grupos de Prueba de los Chequeos Anuales'
  ClientHeight = 312
  ClientWidth = 647
  ExplicitWidth = 655
  ExplicitHeight = 346
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 647
    Height = 279
    ExplicitWidth = 647
    ExplicitHeight = 279
    inherited pcDatos: TcxPageControl
      ActivePage = tsDatos
      ClientRectBottom = 342
      ClientRectRight = 588
      ClientRectTop = 24
      inherited tsMain: TcxTabSheet
        inherited lcGrid: TdxLayoutControl
          inherited dgDatos: TcxGrid
            Width = 533
            Height = 165
            ExplicitWidth = 533
            ExplicitHeight = 165
            inherited tvDatos: TcxGridDBTableView
              DataController.KeyFieldNames = 'CodigoId'
              object tvDatosPlanId: TcxGridDBColumn
                Caption = 'Plan Id'
                DataBinding.FieldName = 'PlanId'
                Options.Editing = False
                Width = 100
              end
              object tvDatosCodigoId: TcxGridDBColumn
                Caption = 'Codigo'
                DataBinding.FieldName = 'CodigoId'
                Options.Editing = False
                Width = 100
              end
              object tvDatosCodigoCupID: TcxGridDBColumn
                Caption = 'Prueba'
                DataBinding.FieldName = 'PruebaID'
                Options.Editing = False
                Width = 100
              end
              object tvDatosDescripcion: TcxGridDBColumn
                DataBinding.FieldName = 'Descripcion'
                Options.Editing = False
                Width = 200
              end
              object tvDatosNombreCliente: TcxGridDBColumn
                Caption = 'Cliente'
                DataBinding.FieldName = 'NombreCliente'
                Options.Editing = False
                Width = 200
              end
            end
          end
        end
      end
      inherited tsDatos: TcxTabSheet
        inherited lcDatos: TdxLayoutControl
          object EdPlan: TcxDBTextEdit [0]
            Tag = 99
            Left = 120
            Top = 36
            DataBinding.DataField = 'PlanId'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 0
            Width = 140
          end
          object EdDescripcion: TcxDBTextEdit [1]
            Left = 120
            Top = 117
            DataBinding.DataField = 'Descripcion'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 3
            Width = 390
          end
          object CbEstatus: TcxDBCheckBox [2]
            Left = 120
            Top = 198
            DataBinding.DataField = 'Estatus'
            DataBinding.DataSource = dsDatos
            Properties.Alignment = taLeftJustify
            Properties.ValueChecked = 'True'
            Properties.ValueUnchecked = 'False'
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 6
            Width = 121
          end
          object EdClienteId: TcxDBTextEdit [3]
            Left = 120
            Top = 144
            DataBinding.DataField = 'ClienteID'
            DataBinding.DataSource = dsDatos
            ParentShowHint = False
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            ShowHint = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 4
            Width = 140
          end
          object EdCodigo: TcxDBTextEdit [4]
            Left = 120
            Top = 63
            DataBinding.DataField = 'CodigoId'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 1
            Width = 140
          end
          object EdNombre: TcxDBTextEdit [5]
            Left = 120
            Top = 171
            DataBinding.DataField = 'NombreCliente'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 5
            Width = 390
          end
          object EdPrueba: TcxDBTextEdit [6]
            Left = 120
            Top = 90
            DataBinding.DataField = 'PruebaID'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 2
            Width = 140
          end
          inherited Group_Root: TdxLayoutGroup
            object lcDatosGroup1: TdxLayoutGroup
              Caption = 'General'
              object lcDatosItem1: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Plan Id'
                Control = EdPlan
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem3: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Codigo Id'
                Control = EdCodigo
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem7: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Grupo de Pruebas'
                Control = EdPrueba
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem2: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Descripci'#243'n Combo'
                Control = EdDescripcion
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem10: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Empresa Id'
                Control = EdClienteId
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem4: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Nombre'
                Control = EdNombre
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem6: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Activo'
                Control = CbEstatus
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
      end
    end
    object btCombos: TcxButton [1]
      Left = 545
      Top = 7
      Width = 90
      Height = 25
      Caption = '&Ver Grupos'
      TabOrder = 1
      OnClick = btCombosClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FF314B62
        AC7D7EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF5084B20F6FE1325F8CB87E7AFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF32A0FE37A1FF
        106FE2325F8BB67D79FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF37A4FE379FFF0E6DDE355F89BB7F79FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        37A4FE359EFF0F6FDE35608BA67B7FFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF38A5FE329DFF156DCE444F5BFF
        00FF9C6B65AF887BAF887EAA8075FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF3BABFFA1CAE7AD8679A98373E0CFB1FFFFDAFFFFDDFCF8CFCCB2
        9FA1746BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC0917DFC
        E9ACFFFFCCFFFFCFFFFFD0FFFFDEFFFFFAE3D3D1996965FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFB08978FAD192FEF4C2FFFFD0FFFFDAFFFFF6FFFF
        FCFFFFFCB69384FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB08978FEDA97ED
        B478FBEEBBFFFFD3FFFFDCFFFFF4FFFFF4FFFFE2E9DDBCA67B73FF00FFFF00FF
        FF00FFFF00FFFF00FFB18A78FFDE99E9A167F4D199FEFCCCFFFFD5FFFFDAFFFF
        DCFFFFD7EFE6C5A97E75FF00FFFF00FFFF00FFFF00FFFF00FFAA7F73FAE0A4F0
        B778EEBA7BF6DDA6FEFBCCFFFFD3FFFFD1FFFFD7D9C5A7A3756CFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFCEB293FFFEDDF4D1A5EEBA7BF2C78FF8E1ABFCF0
        BAFCFACAA3776FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA1746BE1
        D4D3FFFEEEF7CC8CF0B473F7C788FCE3A5C2A088A5776CFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FF986865BA9587EAD7A4EAD59EE0C097A577
        6CA5776CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFA77E70A98073A4786EFF00FFFF00FFFF00FFFF00FF}
    end
    inherited dxLayoutGroup2: TdxLayoutGroup
      inherited dxLayoutControl1Group_Root: TdxLayoutGroup
        inherited lgBotones: TdxLayoutGroup
          object dxLayoutControl1Item1: TdxLayoutItem
            Caption = 'cxButton1'
            ShowCaption = False
            Control = btCombos
            ControlOptions.ShowBorder = False
          end
        end
      end
    end
  end
  inherited pnCaption: TPanel
    Width = 647
    ExplicitWidth = 647
  end
  inherited dsDatos: TDataSource
    DataSet = qrPlanesCombos
    Left = 188
  end
  inherited dxPrintGrid: TdxComponentPrinter
    inherited dxPrintGridLink: TdxGridReportLink
      ReportDocument.CreationDate = 38922.606807361110000000
      BuiltInReportLink = True
    end
    inherited dxPrintGridDatos: TdxLayoutControlReportLink
      ReportDocument.CreationDate = 38922.606807361110000000
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
  inherited cxGridPopupMenu: TcxGridPopupMenu
    Left = 144
    Top = 48
  end
  inherited qryHelper: TADOQuery
    Left = 429
    Top = 2
  end
  inherited alEdit: TActionList
    Top = 88
  end
  inherited pmCustom: TPopupMenu
    Left = 440
    Top = 92
  end
  inherited strView: TJvStrHolder
    Top = 92
  end
  inherited strTableNames: TJvStrHolder
    Left = 328
    Top = 140
  end
  inherited cxStyleRepository1: TcxStyleRepository
    Left = 456
    Top = 252
  end
  inherited qrUserFields: TABSQuery
    Left = 224
    Top = 252
  end
  object qrPlanesCombos: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    BeforePost = qrPlanesCombosBeforePost
    OnNewRecord = qrPlanesCombosNewRecord
    Parameters = <
      item
        Name = 'plan'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM PTPlanesCombos'
      'WHERE PlanId = :plan')
    Left = 130
    Top = 2
    object qrPlanesCombosPlanId: TStringField
      FieldName = 'PlanId'
      Size = 10
    end
    object qrPlanesCombosCodigoId: TStringField
      FieldName = 'CodigoId'
      Size = 10
    end
    object qrPlanesCombosPruebaID: TStringField
      FieldName = 'PruebaID'
    end
    object qrPlanesCombosClienteID: TStringField
      FieldName = 'ClienteID'
    end
    object qrPlanesCombosDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 80
    end
    object qrPlanesCombosNombreCliente: TStringField
      FieldName = 'NombreCliente'
      Size = 80
    end
    object qrPlanesCombosEstatus: TBooleanField
      FieldName = 'Estatus'
    end
    object qrPlanesCombosLinea: TIntegerField
      FieldName = 'Linea'
    end
  end
end
