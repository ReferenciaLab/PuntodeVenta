inherited frmDatosAcuerdoDescuento2: TfrmDatosAcuerdoDescuento2
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
            DataBinding.DataField = 'ClienteCode'
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
            DataBinding.DataField = 'ClienteRelation'
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
            DataBinding.DataField = 'Hasta'
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
            DataBinding.DataField = 'Desde'
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
            DataBinding.DataField = 'Activo'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 5
            Width = 121
          end
          object edcobertura: TcxDBCurrencyEdit [5]
            Left = 105
            Top = 176
            DataBinding.DataField = 'PctDescuento'
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
    ExplicitTop = -6
    ExplicitWidth = 663
  end
  inherited dsDatos: TDataSource
    DataSet = qrAcuerdoPrecios
    Top = 15
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
  object qrAcuerdoPrecios: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    OnNewRecord = qrAcuerdoPreciosNewRecord
    Parameters = <>
    SQL.Strings = (
      'Select *  from PTAcuerdoComercial'
      'Where Relacion = '#39'D'#39)
    Left = 296
    Top = 16
    object qrAcuerdoPreciosPrecio: TBCDField
      FieldName = 'Precio'
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
    object qrAcuerdoPreciosPctDescuento: TBCDField
      FieldName = 'PctDescuento'
      OnValidate = qrAcuerdoPreciosPctDescuentoValidate
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
    object qrAcuerdoPreciosDesde: TDateTimeField
      FieldName = 'Desde'
      Required = True
    end
    object qrAcuerdoPreciosHasta: TDateTimeField
      FieldName = 'Hasta'
      Required = True
    end
    object qrAcuerdoPreciosMonedaID: TStringField
      FieldName = 'MonedaID'
      Size = 3
    end
    object qrAcuerdoPreciosPruebaCode: TStringField
      FieldName = 'PruebaCode'
      FixedChar = True
      Size = 1
    end
    object qrAcuerdoPreciosPruebaRelation: TStringField
      FieldName = 'PruebaRelation'
    end
    object qrAcuerdoPreciosClienteCode: TStringField
      FieldName = 'ClienteCode'
      OnChange = qrAcuerdoPreciosClienteCodeChange
      FixedChar = True
      Size = 1
    end
    object qrAcuerdoPreciosClienteRelation: TStringField
      FieldName = 'ClienteRelation'
    end
    object qrAcuerdoPreciosActivo: TBooleanField
      FieldName = 'Activo'
    end
    object qrAcuerdoPreciosRelacion: TStringField
      FieldName = 'Relacion'
      FixedChar = True
      Size = 1
    end
    object qrAcuerdoPreciosrecid: TLargeintField
      FieldName = 'recid'
    end
    object qrAcuerdoPreciosCoberturaValor: TBCDField
      FieldName = 'CoberturaValor'
      Precision = 19
    end
    object qrAcuerdoPreciosCoberturaExpPorc: TBooleanField
      FieldName = 'CoberturaExpPorc'
    end
  end
  object cxEditRepository: TcxEditRepository
    Left = 708
    Top = 8
    object cxTextEdit: TcxEditRepositoryTextItem
    end
    object cxIntEdit: TcxEditRepositorySpinItem
    end
    object cxCalcEdit: TcxEditRepositoryCalcItem
      Properties.QuickClose = True
    end
    object cxDateEdit: TcxEditRepositoryDateItem
      Properties.InputKind = ikStandard
      Properties.SaveTime = False
      Properties.ShowTime = False
    end
    object cxComboBoxEdit: TcxEditRepositoryComboBoxItem
    end
    object cxCheckBoxEdit: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Si'
          Value = 1
        end
        item
          Description = 'No'
          Value = 0
        end
        item
          Description = 'Todos'
          Value = ''
        end>
    end
    object cxPostadoSiNoAmbos: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'No'
          Value = '0'
        end
        item
          Description = 'Si'
          Value = '1'
        end
        item
          Description = 'Ambos'
          Value = '2'
        end>
    end
    object cxIcTodoGrupoTabla: TcxEditRepositoryImageComboBoxItem
      Properties.Alignment.Horz = taLeftJustify
      Properties.Items = <
        item
          Description = 'Todos'
          ImageIndex = 0
          Value = '0'
        end
        item
          Description = 'Grupo'
          Value = '1'
        end
        item
          Description = 'Tabla'
          Value = '2'
        end>
    end
    object cxIcIvDimField: TcxEditRepositoryImageComboBoxItem
      Properties.Alignment.Horz = taLeftJustify
      Properties.Items = <
        item
          Description = 'Configuracion'
          ImageIndex = 0
          Value = '1'
        end
        item
          Description = 'Talla'
          Value = '2'
        end
        item
          Description = 'Color'
          Value = '3'
        end
        item
          Description = 'Almacen'
          Value = '4'
        end
        item
          Description = 'Ubicaci'#243'n'
          Value = '5'
        end
        item
          Description = 'Lote'
          Value = '6'
        end
        item
          Description = 'N'#250'mero de Serie'
          Value = '7'
        end>
    end
    object icTodoTabla: TcxEditRepositoryImageComboBoxItem
      Properties.Alignment.Horz = taLeftJustify
      Properties.Items = <
        item
          Description = 'Todo'
          ImageIndex = 0
          Value = '0'
        end
        item
          Description = 'Tabla'
          Value = '2'
        end>
    end
    object cxDateMaskEdit: TcxEditRepositoryMaskItem
      Properties.EditMask = '!99/99/0000;1; '
    end
    object cxSvProgressBar: TcxEditRepositoryProgressBar
      Properties.BarStyle = cxbsLEDs
      Properties.ShowText = False
    end
    object cxLcProcesos: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.DropDownSizeable = True
      Properties.KeyFieldNames = 'ProcesoId'
      Properties.ListColumns = <
        item
          Caption = 'Proceso'
          FieldName = 'ProcesoId'
        end
        item
          Caption = 'Descripci'#243'n'
          FieldName = 'Descripcion'
        end>
    end
    object icFormaEntregaPruebas: TcxEditRepositoryImageComboBoxItem
      Properties.Alignment.Horz = taLeftJustify
      Properties.Items = <
        item
          Description = 'Ninguno'
          ImageIndex = 0
          Value = 0
        end
        item
          Description = 'Personal'
          Value = 1
        end
        item
          Description = 'Fax'
          Value = 2
        end
        item
          Description = 'E-Mail'
          Value = 3
        end
        item
          Description = 'Internet'
          Value = 4
        end>
    end
    object elcDoctores: TcxEditRepositoryExtLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.DropDownSizeable = True
      Properties.FocusPopup = True
    end
    object elcProyecto: TcxEditRepositoryExtLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.DropDownSizeable = True
      Properties.FocusPopup = True
    end
    object elcFlebotomista: TcxEditRepositoryExtLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.DropDownSizeable = True
      Properties.FocusPopup = True
    end
    object elcGrupoCliente: TcxEditRepositoryExtLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.DropDownSizeable = True
      Properties.FocusPopup = True
    end
    object elcClientes: TcxEditRepositoryExtLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.DropDownSizeable = True
      Properties.FocusPopup = True
    end
    object elcPacientes: TcxEditRepositoryExtLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.DropDownSizeable = True
      Properties.FocusPopup = True
    end
    object elcGrupoPrueba: TcxEditRepositoryExtLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.DropDownSizeable = True
      Properties.FocusPopup = True
    end
    object lcMonedas: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.DropDownSizeable = True
      Properties.KeyFieldNames = 'MoneadaID'
      Properties.ListColumns = <
        item
          Caption = 'Moneda'
          FieldName = 'MoneadaID'
        end>
    end
    object elcPruebas: TcxEditRepositoryExtLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.DropDownSizeable = True
      Properties.FocusPopup = True
    end
    object icTipoCliente: TcxEditRepositoryImageComboBoxItem
      Properties.Alignment.Horz = taLeftJustify
      Properties.Items = <
        item
          Description = 'Privado'
          ImageIndex = 0
          Value = 0
        end
        item
          Description = 'Seguro'
          Value = 1
        end
        item
          Description = 'Clinica'
          Value = 2
        end
        item
          Description = 'Laboratorio'
          Value = 3
        end>
    end
    object elcCiudad: TcxEditRepositoryExtLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.FocusPopup = True
    end
    object elcEspecialidad: TcxEditRepositoryExtLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.DropDownSizeable = True
      Properties.FocusPopup = True
    end
    object elcSeguro: TcxEditRepositoryExtLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.DropDownSizeable = True
      Properties.FocusPopup = True
    end
    object elcGastosVarios: TcxEditRepositoryExtLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.DropDownListStyle = lsEditList
      Properties.DropDownSizeable = True
      Properties.FocusPopup = True
    end
    object cxIcTodoGrupoTablaTarjetaDescuentos: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Todos - Clientes'
          ImageIndex = 0
          Value = '0'
        end
        item
          Description = 'Grupo - Cliente'
          Value = '1'
        end
        item
          Description = 'Tabla - Cliente'
          Value = '2'
        end
        item
          Description = 'Tabla - Tarjeta Descuento'
          Value = '3'
        end>
    end
  end
end
