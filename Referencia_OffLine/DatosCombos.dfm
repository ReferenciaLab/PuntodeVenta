inherited frmDatosCombos: TfrmDatosCombos
  Caption = 'Combo de Pruebas'
  ClientHeight = 328
  ClientWidth = 709
  ExplicitWidth = 725
  ExplicitHeight = 366
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 709
    Height = 295
    ExplicitWidth = 709
    ExplicitHeight = 295
    inherited pcDatos: TcxPageControl
      ClientRectBottom = 340
      ClientRectRight = 586
      ClientRectTop = 24
      inherited tsMain: TcxTabSheet
        inherited lcGrid: TdxLayoutControl
          inherited dgDatos: TcxGrid
            inherited tvDatos: TcxGridDBTableView
              DataController.KeyFieldNames = 'ComboID'
              object tvDatosComboID: TcxGridDBColumn
                DataBinding.FieldName = 'ComboID'
                Width = 100
              end
              object tvDatosDescripcion: TcxGridDBColumn
                DataBinding.FieldName = 'Descripcion'
                Width = 225
              end
              object tvDatosPrecio: TcxGridDBColumn
                Caption = 'Precio RD$'
                DataBinding.FieldName = 'Precio'
                Width = 100
              end
              object tvDatosPrecioDolares: TcxGridDBColumn
                Caption = 'Precio US$'
                DataBinding.FieldName = 'PrecioDolares'
                Width = 100
              end
              object tvDatosPruebas: TcxGridDBColumn
                DataBinding.FieldName = 'Pruebas'
                Width = 50
              end
              object tvDatosEstatus: TcxGridDBColumn
                Caption = 'Est'
                DataBinding.FieldName = 'Estatus'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.ValueChecked = '1'
                Properties.ValueUnchecked = '0'
                Width = 30
              end
            end
          end
        end
      end
      inherited tsDatos: TcxTabSheet
        inherited lcDatos: TdxLayoutControl
          object edCombo: TcxDBTextEdit [0]
            Tag = 99
            Left = 109
            Top = 36
            DataBinding.DataField = 'ComboID'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 0
            Width = 145
          end
          object EdDescripcion: TcxDBTextEdit [1]
            Left = 109
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
          object EdPrecioRd: TcxDBCurrencyEdit [2]
            Left = 109
            Top = 90
            DataBinding.DataField = 'Precio'
            DataBinding.DataSource = dsDatos
            Properties.DisplayFormat = '0.00;(0.00)'
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 2
            Width = 145
          end
          object cxDBCheckBox2: TcxDBCheckBox [3]
            Left = 109
            Top = 198
            DataBinding.DataField = 'Estatus'
            DataBinding.DataSource = dsDatos
            Properties.Alignment = taLeftJustify
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 6
            Width = 121
          end
          object EdPrecioUs: TcxDBCurrencyEdit [4]
            Left = 109
            Top = 117
            DataBinding.DataField = 'PrecioDolares'
            DataBinding.DataSource = dsDatos
            Properties.DisplayFormat = '0.00;(0.00)'
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 3
            Width = 145
          end
          object EdCosto: TcxDBCurrencyEdit [5]
            Left = 109
            Top = 144
            DataBinding.DataField = 'Costo'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 4
            Width = 145
          end
          object EdPruebas: TcxDBMaskEdit [6]
            Left = 109
            Top = 171
            DataBinding.DataField = 'Pruebas'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 5
            Width = 121
          end
          inherited Group_Root: TdxLayoutGroup
            object lcDatosGroup1: TdxLayoutGroup
              Caption = 'General'
              object lcDatosItem1: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Combo ID'
                Control = edCombo
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem2: TdxLayoutItem
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
              object lcDatosItem3: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Total de Pruebas'
                Control = EdPruebas
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem6: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Activo'
                Control = cxDBCheckBox2
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
      end
    end
    object cxButton1: TcxButton [1]
      Left = 597
      Top = 7
      Width = 100
      Height = 25
      Caption = 'Detalle de Pruebas'
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
  inherited pnCaption: TPanel
    Width = 709
    ExplicitWidth = 709
  end
  inherited dsDatos: TDataSource
    DataSet = qrCombos
    Left = 204
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
    Left = 120
    Top = 152
  end
  inherited qryHelper: TADOQuery
    Left = 500
    Top = 2
  end
  inherited alEdit: TActionList
    Left = 348
    Top = 160
  end
  inherited qrDefaultView: TADOQuery
    Left = 450
  end
  inherited strView: TJvStrHolder
    Left = 492
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
  object qrCombos: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    BeforePost = qrCombosBeforePost
    OnNewRecord = qrCombosNewRecord
    Parameters = <>
    SQL.Strings = (
      'Select *  from PTCombos')
    Left = 150
    Top = 2
    object qrCombosComboID: TStringField
      FieldName = 'ComboID'
    end
    object qrCombosDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
    object qrCombosPrecio: TBCDField
      FieldName = 'Precio'
      Precision = 19
    end
    object qrCombosPrecioDolares: TBCDField
      FieldName = 'PrecioDolares'
      Precision = 19
    end
    object qrCombosCosto: TBCDField
      FieldName = 'Costo'
      Precision = 19
    end
    object qrCombosEstatus: TBooleanField
      FieldName = 'Estatus'
    end
    object qrCombosPruebas: TSmallintField
      FieldName = 'Pruebas'
    end
  end
end
