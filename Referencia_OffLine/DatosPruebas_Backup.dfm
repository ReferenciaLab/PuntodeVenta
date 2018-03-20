inherited frmDatosPruebas_Backup: TfrmDatosPruebas_Backup
  Caption = 'Pruebas'
  ClientHeight = 486
  ClientWidth = 621
  ExplicitWidth = 629
  ExplicitHeight = 520
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 621
    Height = 453
    ExplicitWidth = 621
    ExplicitHeight = 453
    inherited pcDatos: TcxPageControl
      Width = 497
      Height = 429
      ActivePage = tsDatos
      ExplicitWidth = 497
      ExplicitHeight = 429
      ClientRectBottom = 429
      ClientRectRight = 497
      ClientRectTop = 24
      inherited tsMain: TcxTabSheet
        ExplicitWidth = 497
        ExplicitHeight = 405
        inherited lcGrid: TdxLayoutControl
          Width = 497
          Height = 405
          ExplicitWidth = 497
          ExplicitHeight = 405
          inherited dgDatos: TcxGrid
            Width = 550
            Height = 240
            ExplicitWidth = 550
            ExplicitHeight = 240
            inherited tvDatos: TcxGridDBTableView
              DataController.KeyFieldNames = 'PruebaID'
              object tvDatosPruebaID: TcxGridDBColumn
                DataBinding.FieldName = 'PruebaID'
              end
              object tvDatosDescripcion: TcxGridDBColumn
                DataBinding.FieldName = 'Descripcion'
              end
              object tvDatosEstatus: TcxGridDBColumn
                DataBinding.FieldName = 'Estatus'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.ValueChecked = '1'
                Properties.ValueUnchecked = '0'
              end
              object tvDatosGrupoPruebaID: TcxGridDBColumn
                DataBinding.FieldName = 'GrupoPruebaID'
              end
              object tvDatosPrecio: TcxGridDBColumn
                DataBinding.FieldName = 'Precio'
              end
              object tvDatosCodigoAxapta: TcxGridDBColumn
                Caption = 'Codigo Axapta'
                DataBinding.FieldName = 'CodigoAxapta'
              end
            end
          end
        end
      end
      inherited tsDatos: TcxTabSheet
        ExplicitWidth = 497
        ExplicitHeight = 405
        inherited lcDatos: TdxLayoutControl
          Width = 497
          Height = 405
          ExplicitWidth = 497
          ExplicitHeight = 405
          object edprueba: TcxDBTextEdit [0]
            Tag = 99
            Left = 148
            Top = 36
            DataBinding.DataField = 'PruebaID'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 0
            Width = 145
          end
          object EdDescripcion: TcxDBTextEdit [1]
            Left = 148
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
          object cxDBExtLookupComboBox1: TcxDBExtLookupComboBox [2]
            Left = 148
            Top = 117
            RepositoryItem = DM.elcGrupoPrueba
            DataBinding.DataField = 'GrupoPruebaID'
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
          object cxDBCurrencyEdit1: TcxDBCurrencyEdit [3]
            Left = 148
            Top = 144
            DataBinding.DataField = 'Precio'
            DataBinding.DataSource = dsDatos
            Properties.DisplayFormat = '0.00;(0.00)'
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 4
            Width = 145
          end
          object cxDBCheckBox1: TcxDBCheckBox [4]
            Left = 148
            Top = 252
            DataBinding.DataField = 'PermiteCambioPrecio'
            DataBinding.DataSource = dsDatos
            Properties.Alignment = taLeftJustify
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 8
            Width = 121
          end
          object cxDBCheckBox2: TcxDBCheckBox [5]
            Left = 148
            Top = 279
            DataBinding.DataField = 'Estatus'
            DataBinding.DataSource = dsDatos
            Properties.Alignment = taLeftJustify
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 9
            Width = 121
          end
          object cxDBCurrencyEdit2: TcxDBCurrencyEdit [6]
            Left = 148
            Top = 171
            DataBinding.DataField = 'PrecioDolares'
            DataBinding.DataSource = dsDatos
            Properties.DisplayFormat = '0.00;(0.00)'
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 5
            Width = 145
          end
          object cxDBCurrencyEdit3: TcxDBCurrencyEdit [7]
            Left = 148
            Top = 198
            DataBinding.DataField = 'Costo'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 6
            Width = 145
          end
          object cxDBCheckBox3: TcxDBCheckBox [8]
            Left = 148
            Top = 306
            DataBinding.DataField = 'Exterior'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 10
            Width = 121
          end
          object cxDBCheckBox4: TcxDBCheckBox [9]
            Left = 148
            Top = 333
            DataBinding.DataField = 'FacturarCabecera'
            DataBinding.DataSource = dsDatos
            Properties.Alignment = taLeftJustify
            Properties.ReadOnly = False
            Properties.ValueUnchecked = 'false'
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 11
            Width = 121
          end
          object cxDBImageComboBox1: TcxDBImageComboBox [10]
            Left = 148
            Top = 225
            DataBinding.DataField = 'Tipo'
            DataBinding.DataSource = dsDatos
            Properties.Items = <
              item
                Description = 'Combo'
                ImageIndex = 0
                Value = 'C'
              end
              item
                Description = 'Prueba'
                Value = 'P'
              end
              item
                Description = 'Servicio'
                Value = 'S'
              end>
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 7
            Width = 121
          end
          object EdAlias: TcxDBTextEdit [11]
            Left = 148
            Top = 90
            DataBinding.DataField = 'Alias'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 2
            Width = 121
          end
          object cxDBCheckBox5: TcxDBCheckBox [12]
            Left = 148
            Top = 387
            DataBinding.DataField = 'Orina'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 13
            Width = 121
          end
          object cxDBCheckBox6: TcxDBCheckBox [13]
            Left = 148
            Top = 360
            DataBinding.DataField = 'Sangre'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 12
            Width = 121
          end
          inherited Group_Root: TdxLayoutGroup
            object lcDatosGroup1: TdxLayoutGroup
              AutoAligns = []
              AlignHorz = ahClient
              Caption = 'General'
              object lcDatosItem1: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Prueba'
                Control = edprueba
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem2: TdxLayoutItem
                Caption = 'Descripci'#243'n'
                Control = EdDescripcion
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem11: TdxLayoutItem
                Caption = 'Alias'
                Control = EdAlias
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem3: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Grupo'
                Control = cxDBExtLookupComboBox1
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem4: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Precio RD$'
                Control = cxDBCurrencyEdit1
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem7: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Precio US$'
                Control = cxDBCurrencyEdit2
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem8: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Costo RD$'
                Control = cxDBCurrencyEdit3
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem12: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Tipo de Prueba'
                Control = cxDBImageComboBox1
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem5: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Permite Cambiar el Precio'
                Control = cxDBCheckBox1
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem6: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Activo'
                Control = cxDBCheckBox2
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem9: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Prueba Exterior'
                Control = cxDBCheckBox3
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem10: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Facturar Cabecera'
                Control = cxDBCheckBox4
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem14: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Sangre'
                Control = cxDBCheckBox6
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem13: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Orina'
                Control = cxDBCheckBox5
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
      end
    end
    object btSucursal: TcxButton [1]
      Left = 504
      Top = 7
      Width = 105
      Height = 25
      Caption = 'Precio Sucursal'
      TabOrder = 1
      OnClick = btSucursalClick
    end
    object BtPruebas: TcxButton [2]
      Left = 504
      Top = 38
      Width = 105
      Height = 25
      Caption = 'Registrar Pruebas'
      TabOrder = 2
      OnClick = BtPruebasClick
    end
    object btAseguradora: TcxButton [3]
      Left = 504
      Top = 69
      Width = 105
      Height = 25
      Caption = 'Codigo Aseguradora'
      TabOrder = 3
      OnClick = btAseguradoraClick
    end
    inherited dxLayoutGroup2: TdxLayoutGroup
      inherited dxLayoutControl1Group_Root: TdxLayoutGroup
        inherited lgBotones: TdxLayoutGroup
          object dxLayoutControl1Item1: TdxLayoutItem
            Caption = 'cxButton1'
            ShowCaption = False
            Control = btSucursal
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item2: TdxLayoutItem
            Caption = 'cxButton2'
            ShowCaption = False
            Control = BtPruebas
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item3: TdxLayoutItem
            Caption = 'cxButton2'
            ShowCaption = False
            Control = btAseguradora
            ControlOptions.ShowBorder = False
          end
        end
      end
    end
  end
  inherited pnCaption: TPanel
    Width = 621
    ExplicitWidth = 621
  end
  inherited dsDatos: TDataSource
    DataSet = qrPruebas
    Left = 110
    Top = 3
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
    Left = 232
    Top = 104
  end
  inherited qryHelper: TADOQuery
    Left = 412
  end
  inherited alEdit: TActionList
    Left = 348
    Top = 136
  end
  inherited qrDefaultView: TADOQuery
    Top = 2
  end
  inherited strTableNames: TJvStrHolder
    Left = 408
    Top = 108
  end
  inherited cxStyleRepository1: TcxStyleRepository
    Left = 344
    Top = 276
  end
  object qrPruebas: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    BeforePost = qrPruebasBeforePost
    OnNewRecord = qrPruebasNewRecord
    Parameters = <>
    SQL.Strings = (
      'Select *  from PTPrueba')
    Left = 64
    Top = 2
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
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
    object qrPruebasPermiteCambioPrecio: TBooleanField
      FieldName = 'PermiteCambioPrecio'
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
    object qrPruebasExterior: TBooleanField
      FieldName = 'Exterior'
    end
    object qrPruebasFacturarCabecera: TBooleanField
      FieldName = 'FacturarCabecera'
    end
    object qrPruebasPruebas: TIntegerField
      FieldName = 'Pruebas'
    end
    object qrPruebasTipo: TStringField
      FieldName = 'Tipo'
      Size = 5
    end
    object qrPruebasOrina: TBooleanField
      FieldName = 'Orina'
    end
    object qrPruebasSangre: TBooleanField
      FieldName = 'Sangre'
    end
  end
end
