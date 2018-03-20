inherited frmDatosCombosPruebas: TfrmDatosCombosPruebas
  Caption = 'Registrar las Pruebas del Combo'
  ClientHeight = 374
  ClientWidth = 681
  ExplicitWidth = 689
  ExplicitHeight = 408
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 681
    Height = 341
    ExplicitWidth = 681
    ExplicitHeight = 341
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
        ExplicitWidth = 582
        ExplicitHeight = 317
        inherited lcGrid: TdxLayoutControl
          Width = 736
          Height = 493
          ExplicitWidth = 582
          ExplicitHeight = 317
          inherited dgDatos: TcxGrid
            Width = 550
            Height = 240
            ExplicitWidth = 550
            ExplicitHeight = 240
            inherited tvDatos: TcxGridDBTableView
              DataController.KeyFieldNames = 'PruebaID'
              object tvDatosComboID: TcxGridDBColumn
                Caption = 'Combo'
                DataBinding.FieldName = 'ComboID'
                Options.Editing = False
                Width = 120
              end
              object tvDatosPruebaID: TcxGridDBColumn
                DataBinding.FieldName = 'PruebaID'
                Options.Editing = False
                Width = 120
              end
              object tvDatosDescripcion: TcxGridDBColumn
                DataBinding.FieldName = 'Descripcion'
                Options.Editing = False
                Width = 250
              end
              object tvDatosPrecio: TcxGridDBColumn
                Caption = 'Precio RD$'
                DataBinding.FieldName = 'Precio'
                Options.Editing = False
                Width = 120
              end
              object tvDatosPrecioDolares: TcxGridDBColumn
                Caption = 'Precio US$'
                DataBinding.FieldName = 'PrecioDolares'
                Options.Editing = False
                Width = 120
              end
              object tvDatosCosto: TcxGridDBColumn
                Caption = 'Costo RD$'
                DataBinding.FieldName = 'Costo'
                Options.Editing = False
                Width = 120
              end
              object tvDatosEstatus: TcxGridDBColumn
                Caption = 'Est'
                DataBinding.FieldName = 'Estatus'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.ValueChecked = '1'
                Properties.ValueUnchecked = '0'
                Options.Editing = False
                Width = 30
              end
            end
          end
        end
      end
      inherited tsDatos: TcxTabSheet
        ExplicitWidth = 582
        ExplicitHeight = 317
        inherited lcDatos: TdxLayoutControl
          Width = 736
          Height = 493
          ExplicitWidth = 582
          ExplicitHeight = 317
          object EdPrueba: TcxDBTextEdit [0]
            Tag = 99
            Left = 84
            Top = 63
            Hint = 'Haga Click En el Boton PRUEBAS'
            DataBinding.DataField = 'PruebaID'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 1
            Width = 145
          end
          object EdDescripcion: TcxDBTextEdit [1]
            Left = 84
            Top = 90
            DataBinding.DataField = 'Descripcion'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 2
            Width = 400
          end
          object EdPrecioRd: TcxDBCurrencyEdit [2]
            Left = 84
            Top = 117
            DataBinding.DataField = 'Precio'
            DataBinding.DataSource = dsDatos
            Properties.DisplayFormat = '0.00;(0.00)'
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 3
            Width = 145
          end
          object CbEstatus: TcxDBCheckBox [3]
            Left = 84
            Top = 225
            DataBinding.DataField = 'Estatus'
            DataBinding.DataSource = dsDatos
            Properties.Alignment = taLeftJustify
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 7
            Width = 145
          end
          object EdPrecioUs: TcxDBCurrencyEdit [4]
            Left = 84
            Top = 144
            DataBinding.DataField = 'PrecioDolares'
            DataBinding.DataSource = dsDatos
            Properties.DisplayFormat = '0.00;(0.00)'
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 4
            Width = 145
          end
          object EdCosto: TcxDBCurrencyEdit [5]
            Left = 84
            Top = 171
            DataBinding.DataField = 'Costo'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 5
            Width = 145
          end
          object EdComboId: TcxDBTextEdit [6]
            Left = 84
            Top = 36
            Hint = 'Haga Click En el Boton PRUEBAS'
            DataBinding.DataField = 'ComboID'
            DataBinding.DataSource = dsDatos
            ParentShowHint = False
            Properties.CharCase = ecUpperCase
            ShowHint = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 0
            Width = 145
          end
          object CbSexo: TcxDBImageComboBox [7]
            Left = 84
            Top = 198
            DataBinding.DataField = 'Sexo'
            DataBinding.DataSource = dsDatos
            Properties.Items = <
              item
                Description = 'FEMENINO'
                ImageIndex = 0
                Value = 0
              end
              item
                Description = 'MASCULINO'
                Value = 1
              end
              item
                Description = 'AMBOS'
                Value = 2
              end>
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 6
            Width = 145
          end
          inherited Group_Root: TdxLayoutGroup
            object lcDatosGroup1: TdxLayoutGroup
              Caption = 'General'
              object lcDatosItem10: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Combo ID'
                Control = EdComboId
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem1: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Prueba ID'
                Control = EdPrueba
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem2: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Descripci'#243'n'
                Control = EdDescripcion
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem4: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Precio RD$'
                Control = EdPrecioRd
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem7: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Precio US$'
                Control = EdPrecioUs
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem8: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Costo RD$'
                Control = EdCosto
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem5: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Sexo'
                Control = CbSexo
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
    object BtPruebas: TcxButton [1]
      Left = 594
      Top = 7
      Width = 75
      Height = 25
      Caption = '&Pruebas'
      TabOrder = 1
      OnClick = BtPruebasClick
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
            Control = BtPruebas
            ControlOptions.ShowBorder = False
          end
        end
      end
    end
  end
  inherited pnCaption: TPanel
    Width = 681
    ExplicitWidth = 681
  end
  inherited dsDatos: TDataSource
    DataSet = qrPruebas
    Left = 196
    Top = 2
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
    Left = 508
    Top = 2
  end
  inherited alEdit: TActionList
    Top = 88
  end
  inherited pmCustom: TPopupMenu
    Left = 440
    Top = 92
  end
  inherited qrDefaultView: TADOQuery
    Left = 456
    Top = 2
  end
  inherited strView: TJvStrHolder
    Top = 92
  end
  inherited strTableNames: TJvStrHolder
    Left = 208
    Top = 332
  end
  inherited cxStyleRepository1: TcxStyleRepository
    Left = 344
    Top = 276
  end
  object qrPruebas: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    BeforePost = qrPruebasBeforePost
    AfterPost = qrPruebasAfterPost
    OnNewRecord = qrPruebasNewRecord
    Parameters = <
      item
        Name = 'com'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = ''
      end>
    SQL.Strings = (
      'SELECT * FROM PTCombosPruebas'
      'WHERE ComboId = :com')
    Left = 148
    Top = 2
    object qrPruebasComboID: TStringField
      FieldName = 'ComboID'
      Required = True
    end
    object qrPruebasPruebaID: TStringField
      DisplayLabel = 'Prueba'
      FieldName = 'PruebaID'
      Required = True
    end
    object qrPruebasAlias: TStringField
      FieldName = 'Alias'
      Size = 80
    end
    object qrPruebasDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 80
    end
    object qrPruebasEstatus: TIntegerField
      DisplayLabel = 'Activo'
      FieldName = 'Estatus'
    end
    object qrPruebasGrupoPruebaID: TStringField
      DisplayLabel = 'Grupo'
      FieldName = 'GrupoPruebaID'
      Size = 10
    end
    object qrPruebasDepartamento: TStringField
      FieldName = 'Departamento'
      Size = 10
    end
    object qrPruebasPrecio: TBCDField
      FieldName = 'Precio'
      DisplayFormat = '###,###,##0.00'
      Precision = 19
    end
    object qrPruebasCodigoAxapta: TStringField
      FieldName = 'CodigoAxapta'
    end
    object qrPruebasPrecioDolares: TBCDField
      FieldName = 'PrecioDolares'
      DisplayFormat = '###,###,##0.00'
      Precision = 19
    end
    object qrPruebasCosto: TBCDField
      FieldName = 'Costo'
      DisplayFormat = '###,###,##0.00'
      Precision = 19
    end
    object qrPruebasPermiteCambioPrecio: TBooleanField
      FieldName = 'PermiteCambioPrecio'
    end
    object qrPruebasExterior: TBooleanField
      FieldName = 'Exterior'
    end
    object qrPruebasLinea: TIntegerField
      FieldName = 'Linea'
    end
    object qrPruebasSexo: TIntegerField
      FieldName = 'Sexo'
    end
  end
end
