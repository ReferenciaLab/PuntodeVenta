object FrmbuscarEntradas: TFrmbuscarEntradas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Buscar Entradas'
  ClientHeight = 639
  ClientWidth = 1014
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 1014
    Height = 639
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmAppActions.lnfWeb
    ExplicitWidth = 968
    ExplicitHeight = 546
    object edbuscarpor: TcxComboBox
      Left = 80
      Top = 36
      Properties.DropDownListStyle = lsEditFixedList
      Properties.DropDownSizeable = True
      Properties.Items.Strings = (
        'Laboratorio No.'
        'Registro No.'
        'Paciente'
        'Nombre del Paciente'
        'Cliente'
        'Nombre del Cliente'
        'Telefono'
        'Usuario del D'#237'a'
        'Sucursal del D'#237'a'
        'Rango de Fecha'
        'N'#250'm. Autorizaci'#243'n')
      Properties.OnChange = edbuscarporPropertiesChange
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 0
      OnExit = edbuscarporExit
      Width = 121
    end
    object edbuscar: TcxTextEdit
      Left = 239
      Top = 36
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 1
      OnExit = edbuscarExit
      Width = 218
    end
    object cgDatos: TcxGrid
      Left = 11
      Top = 74
      Width = 946
      Height = 424
      TabOrder = 6
      object dbDatos: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataModeController.SmartRefresh = True
        DataController.DataSource = dsDatos
        DataController.DetailKeyFieldNames = 'RecId'
        DataController.Filter.PercentWildcard = '*'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = dbDatosMuestrano
          end
          item
            Format = '###,###,###.##'
            Kind = skSum
            Column = dbDatosNeto
          end
          item
            Format = '###,###,###.##'
            Kind = skSum
            Column = dbDatosTotalPagado
          end
          item
            Format = '###,###,###.##'
            Kind = skSum
            Column = dbDatosTotalPendiente
          end
          item
            Format = '###,###,###.##'
            Kind = skSum
            Column = dbDatosCoberturaSeg
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object dbDatosMuestrano: TcxGridDBColumn
          Caption = 'Muestra No.'
          DataBinding.FieldName = 'MUESTRANO'
          HeaderAlignmentHorz = taRightJustify
          Width = 94
        end
        object dbDatosFecha: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha'
          HeaderAlignmentHorz = taCenter
          Width = 75
        end
        object dbDatosPacienteID: TcxGridDBColumn
          Caption = 'PacienteID'
          DataBinding.FieldName = 'PacienteId'
          Width = 66
        end
        object dbDatosNombrePaciente: TcxGridDBColumn
          Caption = 'Nombre Paciente'
          DataBinding.FieldName = 'NombrePaciente'
          HeaderAlignmentHorz = taCenter
          Width = 171
        end
        object dbDatosTelefonos: TcxGridDBColumn
          Caption = 'Telefono'
          DataBinding.FieldName = 'Telefonos'
          Width = 77
        end
        object dbDatosClienteID: TcxGridDBColumn
          Caption = 'Cliente Id'
          DataBinding.FieldName = 'ClienteID'
          Width = 76
        end
        object dbDatosClienteNombre: TcxGridDBColumn
          Caption = 'Nombre de Cliente'
          DataBinding.FieldName = 'ClienteNombre'
          HeaderAlignmentHorz = taCenter
          Width = 153
        end
        object dbDatosMonedaID: TcxGridDBColumn
          Caption = 'Div'
          DataBinding.FieldName = 'MonedaID'
          Width = 40
        end
        object dbDatosNeto: TcxGridDBColumn
          Caption = 'Valor'
          DataBinding.FieldName = 'Neto'
          HeaderAlignmentHorz = taCenter
          Width = 85
        end
        object dbDatosTotalPagado: TcxGridDBColumn
          Caption = 'Pagado'
          DataBinding.FieldName = 'TotalPagado'
          HeaderAlignmentHorz = taCenter
          Width = 72
        end
        object dbDatosTotalPendiente: TcxGridDBColumn
          Caption = 'Pendiente'
          DataBinding.FieldName = 'TotalPendiente'
          Visible = False
          Width = 68
        end
        object dbDatosHold: TcxGridDBColumn
          DataBinding.FieldName = 'Hold'
          Visible = False
          Width = 40
        end
        object dbDatosEntradaID_Ref: TcxGridDBColumn
          Caption = 'EntradaID'
          DataBinding.FieldName = 'ENTRADAID_REF'
          Visible = False
        end
        object dbDatosEntradaID: TcxGridDBColumn
          DataBinding.FieldName = 'ENTRADAID'
          Visible = False
        end
        object dbDatosCoberturaSeg: TcxGridDBColumn
          Caption = 'Cob. Seg.'
          DataBinding.FieldName = 'COBERTURASEGURO'
          HeaderAlignmentHorz = taCenter
          Width = 85
        end
      end
      object dbPagos: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataModeController.SmartRefresh = True
        DataController.DataSource = dsPagos
        DataController.DetailKeyFieldNames = 'Refrecid'
        DataController.MasterKeyFieldNames = 'RECID'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '###,###,###.##'
            Kind = skSum
            Column = dbPagosMonto
          end
          item
            Format = '###,###,###.##'
            Kind = skSum
            Column = dbPagosMontoMST
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object dbPagosFecha: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object dbPagosForma_Pago: TcxGridDBColumn
          DataBinding.FieldName = 'Forma_Pago'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object dbPagosMonedaID: TcxGridDBColumn
          DataBinding.FieldName = 'MonedaID'
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 100
        end
        object dbPagosMonto: TcxGridDBColumn
          DataBinding.FieldName = 'Monto'
          HeaderAlignmentHorz = taCenter
          Width = 120
        end
        object dbPagosMontoMST: TcxGridDBColumn
          DataBinding.FieldName = 'MontoMST'
          HeaderAlignmentHorz = taCenter
          Width = 120
        end
        object dbPagosOrden: TcxGridDBColumn
          DataBinding.FieldName = 'Orden'
          HeaderAlignmentHorz = taCenter
          Width = 74
        end
        object dbPagosCUADREUSUARIO: TcxGridDBColumn
          Caption = 'Cuadre Usuario'
          DataBinding.FieldName = 'CUADREUSUARIO'
          HeaderAlignmentHorz = taCenter
          Width = 130
        end
        object dbPagosCUADREGLOBAL: TcxGridDBColumn
          Caption = 'Cuadre Global'
          DataBinding.FieldName = 'CUADREGLOBAL'
          HeaderAlignmentHorz = taCenter
          Width = 130
        end
        object dbPagosRefrecid: TcxGridDBColumn
          DataBinding.FieldName = 'Refrecid'
          Visible = False
        end
      end
      object lvDatos: TcxGridLevel
        GridView = dbDatos
        object lvPagos: TcxGridLevel
          GridView = dbPagos
        end
      end
    end
    object btcancelar: TcxButton
      Left = 753
      Top = 593
      Width = 250
      Height = 35
      Caption = 'Esc = &Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ModalResult = 2
      ParentFont = False
      TabOrder = 9
    end
    object btaceptar: TcxButton
      Left = 497
      Top = 593
      Width = 250
      Height = 35
      Caption = 'F9 = &Aceptar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ModalResult = 1
      ParentFont = False
      TabOrder = 8
    end
    object CbCriterio: TcxCheckBox
      Left = 591
      Top = 36
      ParentColor = False
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 1
      Properties.ValueGrayed = 0
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Color = 16311249
      Style.HotTrack = False
      TabOrder = 2
      Width = 22
    end
    object dtFechaIni: TcxDateEdit
      Left = 661
      Top = 36
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 3
      Width = 79
    end
    object dtFechaFin: TcxDateEdit
      Left = 777
      Top = 36
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 4
      Width = 79
    end
    object cxButton1: TcxButton
      Left = 312
      Top = 593
      Width = 179
      Height = 35
      Caption = 'Agregar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 862
      Top = 36
      Width = 75
      Height = 25
      Caption = 'Buscar'
      TabOrder = 5
      OnClick = cxButton2Click
    end
    object dxLayoutGroup1: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutGroup2: TdxLayoutGroup
        Caption = 'Parametros'
        LayoutDirection = ldHorizontal
        object dxLayoutItem1: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Buscar Por'
          Control = edbuscarpor
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item2: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Texto'
          Control = edbuscar
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item7: TdxLayoutItem
          AutoAligns = []
          Caption = 'Ver Todas las Sucursales '
          Control = CbCriterio
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item3: TdxLayoutItem
          Caption = 'F. Inicio'
          Control = dtFechaIni
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item8: TdxLayoutItem
          Caption = 'F. Fin'
          Control = dtFechaFin
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item9: TdxLayoutItem
          Caption = 'cxButton2'
          ShowCaption = False
          Control = cxButton2
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Item4: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'cxGrid1'
        ShowCaption = False
        Control = cgDatos
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl1Group2: TdxLayoutGroup
        AutoAligns = []
        AlignHorz = ahRight
        AlignVert = avBottom
        Caption = 'Botones'
        ShowCaption = False
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Item1: TdxLayoutItem
          Caption = 'cxButton1'
          ShowCaption = False
          Control = cxButton1
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item6: TdxLayoutItem
          Caption = 'cxButton2'
          ShowCaption = False
          Control = btaceptar
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item5: TdxLayoutItem
          Caption = 'cxButton1'
          ShowCaption = False
          Control = btcancelar
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dsDatos: TDataSource
    DataSet = DM.qrEntradaPacienteCons
    Left = 124
    Top = 159
  end
  object dsPagos: TDataSource
    DataSet = qrPagos
    Left = 180
    Top = 159
  end
  object qrPagos: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Filtered = True
    Parameters = <>
    SQL.Strings = (
      
        'Select Fecha,FormaDePagoID as Forma_Pago,d.MonedaID,Monto,MontoM' +
        'ST,'
      
        'Orden,d.CUADREUSUARIO,d.CUADREGLOBAL,d.Refrecid from PTCobroDeta' +
        'lle d '
      'inner join PtCobro c on c.Cobroid=d.Cobroid')
    Left = 280
    Top = 161
    object qrPagosForma_Pago: TStringField
      FieldName = 'Forma_Pago'
      Size = 10
    end
    object qrPagosMonedaID: TStringField
      FieldName = 'MonedaID'
      Size = 3
    end
    object qrPagosMonto: TBCDField
      FieldName = 'Monto'
      Precision = 19
    end
    object qrPagosMontoMST: TBCDField
      FieldName = 'MontoMST'
      Precision = 19
    end
    object qrPagosOrden: TIntegerField
      FieldName = 'Orden'
    end
    object qrPagosCUADREUSUARIO: TStringField
      FieldName = 'CUADREUSUARIO'
    end
    object qrPagosCUADREGLOBAL: TStringField
      FieldName = 'CUADREGLOBAL'
    end
    object qrPagosRefrecid: TLargeintField
      FieldName = 'Refrecid'
    end
    object qrPagosFecha: TDateTimeField
      FieldName = 'Fecha'
    end
  end
  object Qinserta: TADOQuery
    Connection = DM.DataBase
    Parameters = <
      item
        Name = 'entrada'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'insert into #PTENTRADAPACIENTETMP'
      'select  * from PTENTRADAPACIENTE'
      ' where ENTRADAID =:entrada ')
    Left = 600
    Top = 200
  end
end
