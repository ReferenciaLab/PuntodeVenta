inherited frmDatosAcuerdoDescuento: TfrmDatosAcuerdoDescuento
  Caption = 'Acuerdo de Descuentos'
  ClientHeight = 481
  ClientWidth = 663
  ExplicitWidth = 671
  ExplicitHeight = 515
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 663
    Height = 448
    ExplicitWidth = 663
    ExplicitHeight = 448
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
              DataController.KeyFieldNames = 'recid'
              object tvDatosClienteCode: TcxGridDBColumn
                Caption = 'Tipo Cliente'
                DataBinding.FieldName = 'ClienteCode'
                RepositoryItem = DM.cxIcTodoGrupoTabla
              end
              object tvDatosClienteRelation: TcxGridDBColumn
                Caption = 'Relaci'#243'n Cliente'
                DataBinding.FieldName = 'ClienteRelation'
              end
              object tvDatosDesde: TcxGridDBColumn
                DataBinding.FieldName = 'Desde'
              end
              object tvDatosHasta: TcxGridDBColumn
                DataBinding.FieldName = 'Hasta'
              end
              object tvDatosPrecio: TcxGridDBColumn
                Caption = 'Descuento'
                DataBinding.FieldName = 'PctDescuento'
              end
              object tvDatosActivo: TcxGridDBColumn
                DataBinding.FieldName = 'Activo'
                PropertiesClassName = 'TcxCheckBoxProperties'
              end
            end
          end
        end
      end
      inherited tsDatos: TcxTabSheet
        inherited lcDatos: TdxLayoutControl
          Width = 736
          Height = 493
          object cxDBImageComboBox2: TcxDBImageComboBox [0]
            Left = 105
            Top = 36
            RepositoryItem = DM.cxIcTodoGrupoTablaTarjetaDescuentos
            DataBinding.DataField = 'CLIENTECODE'
            DataBinding.DataSource = dsDatos
            Properties.Items = <>
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 0
            Width = 145
          end
          object elcRelacionCliente: TcxDBExtLookupComboBox [1]
            Left = 105
            Top = 63
            DataBinding.DataField = 'CLIENTERELATION'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 1
            Width = 145
          end
          object cxDBDateEdit1: TcxDBDateEdit [2]
            Left = 105
            Top = 149
            DataBinding.DataField = 'HASTA'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 3
            Width = 145
          end
          object cxDBDateEdit2: TcxDBDateEdit [3]
            Left = 105
            Top = 122
            DataBinding.DataField = 'DESDE'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 2
            Width = 145
          end
          object cxDBCheckBox1: TcxDBCheckBox [4]
            Left = 105
            Top = 203
            DataBinding.DataField = 'ACTIVO'
            DataBinding.DataSource = dsDatos
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 5
            Width = 121
          end
          object edcobertura: TcxDBCurrencyEdit [5]
            Left = 105
            Top = 176
            DataBinding.DataField = 'PCTDESCUENTO'
            DataBinding.DataSource = dsDatos
            Properties.DisplayFormat = '0.00;(0.00)'
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 4
            Width = 145
          end
          inherited Group_Root: TdxLayoutGroup
            object lcDatosGroup3: TdxLayoutGroup
              Caption = 'Relaci'#243'n Cliente'
              object lcDatosItemTipo: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Tipo Cliente'
                Control = cxDBImageComboBox2
                ControlOptions.ShowBorder = False
              end
              object lcRelacionCliente: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Relaci'#243'n Cliente'
                Control = elcRelacionCliente
                ControlOptions.ShowBorder = False
              end
            end
            object lcDatosGroup4: TdxLayoutGroup
              Caption = 'Configurar'
              object lcDatosItem8: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Desde'
                Control = cxDBDateEdit2
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem7: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Hasta'
                Control = cxDBDateEdit1
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem2: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Descuento %'
                Control = edcobertura
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem9: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Activo'
                Control = cxDBCheckBox1
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
      end
    end
  end
  inherited pnCaption: TPanel
    Width = 663
    ExplicitWidth = 663
  end
  inherited dsDatos: TDataSource
    DataSet = qrAcuerdoPrecios
    Left = 188
  end
  inherited dxPrintGrid: TdxComponentPrinter
    inherited dxPrintGridLink: TdxGridReportLink
      ReportDocument.CreationDate = 38925.673943865740000000
      BuiltInReportLink = True
    end
    inherited dxPrintGridDatos: TdxLayoutControlReportLink
      ReportDocument.CreationDate = 38925.673944768520000000
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
  inherited qryHelper: TADOQuery
    Left = 532
  end
  inherited qrDefaultView: TADOQuery
    Left = 480
  end
  object qrAcuerdoPrecios: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    BeforePost = qrAcuerdoPreciosBeforePost
    AfterScroll = qrAcuerdoPreciosAfterScroll
    OnNewRecord = qrAcuerdoPreciosNewRecord
    Parameters = <>
    SQL.Strings = (
      'Select *  from PTAcuerdoComercial'
      'Where Relacion = '#39'D'#39)
    Left = 135
    Top = 3
    object qrAcuerdoPreciosPRECIO: TBCDField
      FieldName = 'PRECIO'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrAcuerdoPreciosPCTDESCUENTO: TBCDField
      FieldName = 'PCTDESCUENTO'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrAcuerdoPreciosDESDE: TDateTimeField
      FieldName = 'DESDE'
    end
    object qrAcuerdoPreciosHASTA: TDateTimeField
      FieldName = 'HASTA'
    end
    object qrAcuerdoPreciosMONEDAID: TStringField
      FieldName = 'MONEDAID'
      Size = 3
    end
    object qrAcuerdoPreciosPRUEBARELATION: TStringField
      FieldName = 'PRUEBARELATION'
    end
    object qrAcuerdoPreciosCLIENTERELATION: TStringField
      FieldName = 'CLIENTERELATION'
    end
    object qrAcuerdoPreciosRELACION: TStringField
      FieldName = 'RELACION'
      Size = 1
    end
    object qrAcuerdoPreciosCOBERTURAVALOR: TBCDField
      FieldName = 'COBERTURAVALOR'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrAcuerdoPreciosACTIVO: TIntegerField
      FieldName = 'ACTIVO'
    end
    object qrAcuerdoPreciosCOBERTURAEXPPORC: TIntegerField
      FieldName = 'COBERTURAEXPPORC'
    end
    object qrAcuerdoPreciosGASTOSVARIOS: TBCDField
      FieldName = 'GASTOSVARIOS'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrAcuerdoPreciosGASTOVARIOID: TStringField
      FieldName = 'GASTOVARIOID'
      Size = 10
    end
    object qrAcuerdoPreciosCOSTO: TIntegerField
      FieldName = 'COSTO'
    end
    object qrAcuerdoPreciosPRUEBACODE: TIntegerField
      FieldName = 'PRUEBACODE'
    end
    object qrAcuerdoPreciosCLIENTECODE: TIntegerField
      FieldName = 'CLIENTECODE'
      OnChange = qrAcuerdoPreciosCLIENTECODEChange
    end
    object qrAcuerdoPreciosDATAAREAID: TStringField
      FieldName = 'DATAAREAID'
      Size = 3
    end
    object qrAcuerdoPreciosRECID: TLargeintField
      FieldName = 'RECID'
    end
    object qrAcuerdoPreciosREFRECID: TLargeintField
      FieldName = 'REFRECID'
    end
    object qrAcuerdoPreciosADICIONAL: TBCDField
      FieldName = 'ADICIONAL'
      Precision = 28
      Size = 12
    end
  end
end
