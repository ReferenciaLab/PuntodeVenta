inherited frmDialogConfiguracionDD: TfrmDialogConfiguracionDD
  Left = 314
  Top = 167
  Caption = 'Configuraci'#243'n del Panel de Control'
  ClientHeight = 472
  ClientWidth = 679
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcDialog: TdxLayoutControl
    Width = 679
    Height = 472
    inherited btCancelar: TcxButton
      Top = 519
      TabOrder = 4
    end
    inherited btAceptar: TcxButton
      Top = 519
      TabOrder = 3
    end
    object grIngresos: TcxGrid [2]
      Left = 35
      Top = 61
      Width = 312
      Height = 200
      TabOrder = 0
      object grIngresosDBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.First.Visible = False
        NavigatorButtons.PriorPage.Visible = False
        NavigatorButtons.Prior.Visible = False
        NavigatorButtons.Next.Visible = False
        NavigatorButtons.NextPage.Visible = False
        NavigatorButtons.Last.Visible = False
        NavigatorButtons.Insert.Visible = True
        NavigatorButtons.Delete.Visible = True
        NavigatorButtons.Edit.Visible = True
        NavigatorButtons.Post.Visible = True
        NavigatorButtons.Cancel.Visible = True
        NavigatorButtons.Refresh.Visible = False
        NavigatorButtons.SaveBookmark.Visible = False
        NavigatorButtons.GotoBookmark.Visible = False
        NavigatorButtons.Filter.Visible = False
        DataController.DataSource = dsIngreso
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsView.Navigator = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object grIngresosDBTableView1TipoCuenta: TcxGridDBColumn
          DataBinding.FieldName = 'TipoCuenta'
          Visible = False
        end
        object grIngresosDBTableView1CuentaContable: TcxGridDBColumn
          Caption = 'Cuenta Contable'
          DataBinding.FieldName = 'CuentaContable'
          RepositoryItem = DM.lcExtCuenta
        end
      end
      object grIngresosLevel1: TcxGridLevel
        GridView = grIngresosDBTableView1
      end
    end
    object grGastos: TcxGrid [3]
      Left = 377
      Top = 61
      Width = 250
      Height = 200
      TabOrder = 1
      object grGastosDBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.First.Visible = False
        NavigatorButtons.PriorPage.Visible = False
        NavigatorButtons.Prior.Visible = False
        NavigatorButtons.Next.Visible = False
        NavigatorButtons.NextPage.Visible = False
        NavigatorButtons.Last.Visible = False
        NavigatorButtons.Insert.Visible = True
        NavigatorButtons.Delete.Visible = True
        NavigatorButtons.Edit.Visible = True
        NavigatorButtons.Post.Visible = True
        NavigatorButtons.Cancel.Visible = True
        NavigatorButtons.Refresh.Visible = False
        NavigatorButtons.SaveBookmark.Visible = False
        NavigatorButtons.GotoBookmark.Visible = False
        NavigatorButtons.Filter.Visible = False
        DataController.DataSource = dsEgresos
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsView.Navigator = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object grGastosDBTableView1TipoCuenta: TcxGridDBColumn
          DataBinding.FieldName = 'TipoCuenta'
          Visible = False
        end
        object grGastosDBTableView1CuentaContable: TcxGridDBColumn
          Caption = 'Cuenta Contable'
          DataBinding.FieldName = 'CuentaContable'
          RepositoryItem = DM.lcExtCuenta
        end
      end
      object grGastosLevel1: TcxGridLevel
        GridView = grGastosDBTableView1
      end
    end
    object grBalance: TcxGrid [4]
      Left = 35
      Top = 299
      Width = 462
      Height = 200
      TabOrder = 2
      object grBalanceDBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.First.Visible = False
        NavigatorButtons.PriorPage.Visible = False
        NavigatorButtons.Prior.Visible = False
        NavigatorButtons.Next.Visible = False
        NavigatorButtons.NextPage.Visible = False
        NavigatorButtons.Last.Visible = False
        NavigatorButtons.Insert.Visible = True
        NavigatorButtons.Delete.Visible = True
        NavigatorButtons.Edit.Visible = True
        NavigatorButtons.Post.Visible = True
        NavigatorButtons.Cancel.Visible = True
        NavigatorButtons.Refresh.Visible = False
        NavigatorButtons.SaveBookmark.Visible = False
        NavigatorButtons.GotoBookmark.Visible = False
        NavigatorButtons.Filter.Visible = False
        DataController.DataSource = dsControl
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsView.Navigator = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object grBalanceDBTableView1TipoCuenta: TcxGridDBColumn
          DataBinding.FieldName = 'TipoCuenta'
          Visible = False
        end
        object grBalanceDBTableView1CuentaContable: TcxGridDBColumn
          Caption = 'Cuenta Contable'
          DataBinding.FieldName = 'CuentaContable'
          RepositoryItem = DM.lcExtCuenta
        end
      end
      object grBalanceLevel1: TcxGridLevel
        GridView = grBalanceDBTableView1
      end
    end
    inherited lcDialogGroup_Root: TdxLayoutGroup
      inherited lcDialogGroup1: TdxLayoutGroup
        Caption = 'Cuentas'
        object lcDialogGroup8: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object lcDialogGroup3: TdxLayoutGroup
            AutoAligns = []
            AlignHorz = ahClient
            AlignVert = avClient
            Caption = 'Ingresos'
            object lcDialogItem3: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              Control = grIngresos
              ControlOptions.ShowBorder = False
            end
          end
          object lcDialogGroup4: TdxLayoutGroup
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Caption = 'Gastos   '
            object lcDialogItem4: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              Control = grGastos
              ControlOptions.ShowBorder = False
            end
          end
        end
        object lcDialogGroup9: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object lcDialogGroup5: TdxLayoutGroup
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Caption = 'Balance  '
            object lcDialogItem5: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              Control = grBalance
              ControlOptions.ShowBorder = False
            end
          end
          object lcDialogGroup7: TdxLayoutGroup
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Caption = 'Flujo de Efectivo'
          end
        end
      end
      inherited lcDialogGroup2: TdxLayoutGroup
        inherited liBtCancelar: TdxLayoutItem
          Visible = False
        end
      end
    end
  end
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 679
    Height = 472
    Align = alClient
    ParentBackground = True
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmAppActions.lnfWeb
    object cxButton1: TcxButton
      Left = 92
      Top = 436
      Width = 75
      Height = 25
      Cancel = True
      Caption = 'Cancelar'
      ModalResult = 2
      TabOrder = 5
    end
    object cxButton2: TcxButton
      Left = 11
      Top = 436
      Width = 75
      Height = 25
      Caption = 'Aceptar'
      Default = True
      ModalResult = 1
      TabOrder = 4
    end
    object cxGrid1: TcxGrid
      Left = 35
      Top = 79
      Width = 300
      Height = 146
      TabOrder = 0
      object cxGridDBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.First.Visible = False
        NavigatorButtons.PriorPage.Visible = False
        NavigatorButtons.Prior.Visible = False
        NavigatorButtons.Next.Visible = False
        NavigatorButtons.NextPage.Visible = False
        NavigatorButtons.Last.Visible = False
        NavigatorButtons.Insert.Visible = True
        NavigatorButtons.Delete.Visible = True
        NavigatorButtons.Edit.Visible = True
        NavigatorButtons.Post.Visible = True
        NavigatorButtons.Cancel.Visible = True
        NavigatorButtons.Refresh.Visible = False
        NavigatorButtons.SaveBookmark.Visible = False
        NavigatorButtons.GotoBookmark.Visible = False
        NavigatorButtons.Filter.Visible = False
        DataController.DataSource = dsIngreso
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsView.Navigator = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object cxGridDBColumn1: TcxGridDBColumn
          DataBinding.FieldName = 'TipoCuenta'
          Visible = False
        end
        object cxGridDBColumn2: TcxGridDBColumn
          Caption = 'Cuenta Contable'
          DataBinding.FieldName = 'CuentaContable'
          RepositoryItem = DM.lcExtCuenta
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
    object cxGrid2: TcxGrid
      Left = 341
      Top = 79
      Width = 303
      Height = 129
      TabOrder = 1
      object cxGridDBTableView2: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.First.Visible = False
        NavigatorButtons.PriorPage.Visible = False
        NavigatorButtons.Prior.Visible = False
        NavigatorButtons.Next.Visible = False
        NavigatorButtons.NextPage.Visible = False
        NavigatorButtons.Last.Visible = False
        NavigatorButtons.Insert.Visible = True
        NavigatorButtons.Delete.Visible = True
        NavigatorButtons.Edit.Visible = True
        NavigatorButtons.Post.Visible = True
        NavigatorButtons.Cancel.Visible = True
        NavigatorButtons.Refresh.Visible = False
        NavigatorButtons.SaveBookmark.Visible = False
        NavigatorButtons.GotoBookmark.Visible = False
        NavigatorButtons.Filter.Visible = False
        DataController.DataSource = dsEgresos
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsView.Navigator = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object cxGridDBColumn3: TcxGridDBColumn
          DataBinding.FieldName = 'TipoCuenta'
          Visible = False
        end
        object cxGridDBColumn4: TcxGridDBColumn
          Caption = 'Cuenta Contable'
          DataBinding.FieldName = 'CuentaContable'
          RepositoryItem = DM.lcExtCuenta
        end
      end
      object cxGridLevel2: TcxGridLevel
        GridView = cxGridDBTableView2
      end
    end
    object cxGrid3: TcxGrid
      Left = 355
      Top = 263
      Width = 336
      Height = 132
      TabOrder = 3
      object cxGridDBTableView3: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.First.Visible = False
        NavigatorButtons.PriorPage.Visible = False
        NavigatorButtons.Prior.Visible = False
        NavigatorButtons.Next.Visible = False
        NavigatorButtons.NextPage.Visible = False
        NavigatorButtons.Last.Visible = False
        NavigatorButtons.Insert.Visible = True
        NavigatorButtons.Delete.Visible = True
        NavigatorButtons.Edit.Visible = True
        NavigatorButtons.Post.Visible = True
        NavigatorButtons.Cancel.Visible = True
        NavigatorButtons.Refresh.Visible = False
        NavigatorButtons.SaveBookmark.Visible = False
        NavigatorButtons.GotoBookmark.Visible = False
        NavigatorButtons.Filter.Visible = False
        DataController.DataSource = dsControl
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsView.Navigator = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object cxGridDBColumn5: TcxGridDBColumn
          DataBinding.FieldName = 'TipoCuenta'
          Visible = False
        end
        object cxGridDBColumn6: TcxGridDBColumn
          Caption = 'Cuenta Contable'
          DataBinding.FieldName = 'CuentaContable'
          RepositoryItem = DM.lcExtCuenta
        end
      end
      object cxGridLevel3: TcxGridLevel
        GridView = cxGridDBTableView3
      end
    end
    object cxGrid4: TcxGrid
      Left = 35
      Top = 263
      Width = 336
      Height = 153
      TabOrder = 2
      object cxGridDBTableView4: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.First.Visible = False
        NavigatorButtons.PriorPage.Visible = False
        NavigatorButtons.Prior.Visible = False
        NavigatorButtons.Next.Visible = False
        NavigatorButtons.NextPage.Visible = False
        NavigatorButtons.Last.Visible = False
        NavigatorButtons.Insert.Visible = True
        NavigatorButtons.Delete.Visible = True
        NavigatorButtons.Edit.Visible = True
        NavigatorButtons.Post.Visible = True
        NavigatorButtons.Cancel.Visible = True
        NavigatorButtons.Refresh.Visible = False
        NavigatorButtons.SaveBookmark.Visible = False
        NavigatorButtons.GotoBookmark.Visible = False
        NavigatorButtons.Filter.Visible = False
        DataController.DataSource = dsFlujo
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsView.Navigator = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object cxGridDBColumn7: TcxGridDBColumn
          DataBinding.FieldName = 'TipoCuenta'
          Visible = False
        end
        object cxGridDBColumn8: TcxGridDBColumn
          Caption = 'Cuenta Contable'
          DataBinding.FieldName = 'CuentaContable'
          RepositoryItem = DM.lcExtCuentaEntrada
        end
      end
      object cxGridLevel4: TcxGridLevel
        GridView = cxGridDBTableView4
      end
    end
    object dxLayoutGroup1: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutGroup2: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'Cuentas'
        object dxLayoutGroup4: TdxLayoutGroup
          AutoAligns = []
          AlignHorz = ahClient
          AlignVert = avClient
          Caption = 'Estado de Resultado'
          LayoutDirection = ldHorizontal
          object dxLayoutItem1: TdxLayoutItem
            AutoAligns = []
            AlignVert = avClient
            Caption = 'Ingresos'
            CaptionOptions.AlignHorz = taCenter
            CaptionOptions.Layout = clTop
            Control = cxGrid1
            ControlOptions.ShowBorder = False
          end
          object dxLayoutItem2: TdxLayoutItem
            AutoAligns = []
            AlignVert = avClient
            Caption = 'Gastos'
            CaptionOptions.AlignHorz = taCenter
            CaptionOptions.Layout = clTop
            Control = cxGrid2
            ControlOptions.ShowBorder = False
          end
        end
        object dxLayoutGroup6: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxLayoutGroup8: TdxLayoutGroup
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Caption = 'Flujo de Efectivo'
            object dxLayoutControl1Item1: TdxLayoutItem
              AutoAligns = []
              AlignHorz = ahClient
              AlignVert = avClient
              Control = cxGrid4
              ControlOptions.ShowBorder = False
            end
          end
          object dxLayoutGroup7: TdxLayoutGroup
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Caption = 'Control de Balance  '
            object dxLayoutItem3: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              Control = cxGrid3
              ControlOptions.ShowBorder = False
            end
          end
        end
      end
      object dxLayoutGroup9: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avBottom
        Caption = 'Botones'
        ShowCaption = False
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutItem4: TdxLayoutItem
          Caption = 'cxButton2'
          ShowCaption = False
          Control = cxButton2
          ControlOptions.ShowBorder = False
        end
        object dxLayoutItem5: TdxLayoutItem
          Caption = 'cxButton1'
          ShowCaption = False
          Visible = False
          Control = cxButton1
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object qrIngreso: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    OnNewRecord = qrIngresoNewRecord
    Parameters = <>
    SQL.Strings = (
      'select *'
      '  from DdCuentasContables'
      'where TipoCuenta = 1')
    Left = 60
    Top = 96
    object qrIngresoTipoCuenta: TIntegerField
      FieldName = 'TipoCuenta'
    end
    object qrIngresoCuentaContable: TStringField
      FieldName = 'CuentaContable'
      Size = 15
    end
  end
  object dsControl: TDataSource
    DataSet = qrControl
    Left = 460
    Top = 124
  end
  object dsEgresos: TDataSource
    DataSet = qrEgresos
    Left = 288
    Top = 124
  end
  object dsIngreso: TDataSource
    DataSet = qrIngreso
    Left = 88
    Top = 116
  end
  object qrEgresos: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    OnNewRecord = qrEgresosNewRecord
    Parameters = <>
    SQL.Strings = (
      'select *'
      '  from DdCuentasContables'
      'where TipoCuenta = 2')
    Left = 264
    Top = 108
    object qrEgresosTipoCuenta: TIntegerField
      FieldName = 'TipoCuenta'
    end
    object qrEgresosCuentaContable: TStringField
      FieldName = 'CuentaContable'
      Size = 15
    end
  end
  object qrControl: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    OnNewRecord = qrControlNewRecord
    Parameters = <>
    SQL.Strings = (
      'select *'
      '  from DdCuentasContables'
      'where TipoCuenta = 4')
    Left = 432
    Top = 100
    object qrControlTipoCuenta: TIntegerField
      FieldName = 'TipoCuenta'
    end
    object qrControlCuentaContable: TStringField
      FieldName = 'CuentaContable'
      Size = 15
    end
  end
  object qrFlujo: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    OnNewRecord = qrFlujoNewRecord
    Parameters = <>
    SQL.Strings = (
      'select *'
      '  from DdCuentasContables'
      'where TipoCuenta = 5')
    Left = 160
    Top = 288
    object qrFlujoTipoCuenta: TIntegerField
      FieldName = 'TipoCuenta'
    end
    object qrFlujoCuentaContable: TStringField
      FieldName = 'CuentaContable'
      Size = 15
    end
  end
  object dsFlujo: TDataSource
    DataSet = qrFlujo
    Left = 188
    Top = 312
  end
end
