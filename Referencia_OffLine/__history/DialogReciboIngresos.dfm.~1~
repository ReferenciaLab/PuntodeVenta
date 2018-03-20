object frmDialogReciboIngreso: TfrmDialogReciboIngreso
  Left = 0
  Top = 0
  Caption = 'Recibo de Ingreso Temporal'
  ClientHeight = 366
  ClientWidth = 292
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 292
    Height = 366
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmAppActions.lnfWeb
    object cgDatos: TcxGrid
      Left = 11
      Top = 97
      Width = 270
      Height = 168
      TabOrder = 3
      OnEnter = cgDatosEnter
      OnExit = cgDatosExit
      object dbDatos: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsDatos
        DataController.KeyFieldNames = 'FormaDePagoID'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnSorting = False
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        OptionsView.NewItemRowInfoText = 'Click here to add a new row'
        object dbDatosDescripcion: TcxGridDBColumn
          Caption = 'Forma de Pago'
          DataBinding.FieldName = 'Descripcion'
          Options.Editing = False
          Options.Focusing = False
          Styles.Content = dmAppActions.cxStyle44
          Width = 100
        end
        object dbDatosMoneda: TcxGridDBColumn
          DataBinding.FieldName = 'Moneda'
          Options.Editing = False
          Options.Focusing = False
          Width = 40
        end
        object dbDatosPagado: TcxGridDBColumn
          DataBinding.FieldName = 'Pagado'
          HeaderAlignmentHorz = taRightJustify
          Width = 85
        end
      end
      object lvDatos: TcxGridLevel
        GridView = dbDatos
      end
    end
    object btcancelar: TcxButton
      Left = 206
      Top = 330
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      ModalResult = 2
      TabOrder = 5
      OnClick = btcancelarClick
    end
    object btaceptar: TcxButton
      Left = 125
      Top = 330
      Width = 75
      Height = 25
      Caption = 'Aceptar'
      ModalResult = 1
      TabOrder = 4
    end
    object EdCobrado: TcxCurrencyEdit
      Left = 92
      Top = 296
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = 'RD$,     0.00;(RD$,     0.00)'
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Color = clAqua
      Style.HotTrack = False
      TabOrder = 0
      OnEnter = cgDatosExit
      OnExit = cgDatosExit
      Width = 121
    end
    object EdCliente: TcxTextEdit
      Left = 92
      Top = 36
      Hint = 
        'Haga Doble Click Para Activar la Consulta de Clientes y/o Pacien' +
        'tes'
      ParentShowHint = False
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      ShowHint = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Color = clAqua
      Style.HotTrack = False
      TabOrder = 1
      OnDblClick = EdClienteDblClick
      OnExit = EdClienteExit
      Width = 121
    end
    object EdNombre: TcxTextEdit
      Left = 92
      Top = 63
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.Color = clAqua
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object LcDevuelta: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        Caption = 'Totales'
        object dxLayoutControl1Item2: TdxLayoutItem
          Caption = 'Valor Pagado'
          Control = EdCobrado
          ControlOptions.ShowBorder = False
        end
      end
      object LcPendiente: TdxLayoutGroup
        Caption = 'Cliente y/o Paciente a Registrar'
        object dxLayoutControl1Item3: TdxLayoutItem
          Caption = 'Codigo Id'
          Control = EdCliente
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item1: TdxLayoutItem
          Caption = 'Nombre'
          Control = EdNombre
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
    DataSet = mdPago
    Left = 52
    Top = 145
  end
  object mdPago: TdxMemData
    Indexes = <>
    SortOptions = []
    SortedField = 'Orden'
    Left = 99
    Top = 144
    object mdPagoFormaDePago: TStringField
      FieldName = 'Descripcion'
      Size = 25
    end
    object mdPagoOrden: TSmallintField
      FieldName = 'Orden'
    end
    object mdPagoPagado: TCurrencyField
      FieldName = 'Pagado'
      DisplayFormat = '##,###,##0.00'
    end
    object mdPagoFormaPagoID: TStringField
      FieldName = 'FormaDePagoID'
      Size = 15
    end
    object mdPagorefrecid: TLargeintField
      FieldName = 'refrecid'
    end
    object mdPagoMoneda: TStringField
      FieldName = 'Moneda'
      Size = 5
    end
  end
end
