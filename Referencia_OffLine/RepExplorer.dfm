inherited frmRepExplorer: TfrmRepExplorer
  Left = 307
  Top = 101
  HelpContext = 14000
  Caption = 'Explorador'
  ClientHeight = 576
  ClientWidth = 763
  OnShow = FormShow
  ExplicitWidth = 771
  ExplicitHeight = 607
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcDatos: TdxLayoutControl
    Width = 763
    Height = 543
    ExplicitWidth = 763
    ExplicitHeight = 543
    object grReportes: TcxGrid [0]
      Left = 255
      Top = 36
      Width = 458
      Height = 333
      TabOrder = 1
      LookAndFeel.NativeStyle = True
      object tvReportes: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataModeController.GridMode = True
        DataController.DataSource = dsReportes
        DataController.KeyFieldNames = 'ItemId'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.ColumnHidingOnGrouping = False
        OptionsCustomize.ColumnMoving = False
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.Background = dmAppActions.cxStyle17
        Styles.Content = dmAppActions.cxStyle21
        object tvReportesName: TcxGridDBColumn
          DataBinding.FieldName = 'Name'
          Width = 202
        end
      end
      object grReportesLevel: TcxGridLevel
        GridView = tvReportes
      end
    end
    object grParametros: TcxGrid [1]
      Left = 23
      Top = 325
      Width = 434
      Height = 200
      TabOrder = 2
      OnExit = grParametrosExit
      LookAndFeel.NativeStyle = True
      object tvParametros: TcxGridDBTableView
        NavigatorButtons.OnButtonClick = tvParametrosNavigatorButtonsButtonClick
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.First.Visible = False
        NavigatorButtons.PriorPage.Visible = False
        NavigatorButtons.Prior.Visible = False
        NavigatorButtons.Next.Visible = False
        NavigatorButtons.NextPage.Visible = False
        NavigatorButtons.Last.Visible = False
        NavigatorButtons.Insert.Visible = False
        NavigatorButtons.Delete.Visible = False
        NavigatorButtons.Edit.Visible = False
        NavigatorButtons.Refresh.Visible = True
        NavigatorButtons.SaveBookmark.Visible = False
        NavigatorButtons.GotoBookmark.Visible = False
        NavigatorButtons.Filter.Visible = False
        OnFocusedRecordChanged = tvParametrosFocusedRecordChanged
        DataController.DataModeController.GridMode = True
        DataController.DataSource = dsRepParam
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.ColumnHidingOnGrouping = False
        OptionsCustomize.ColumnHorzSizing = False
        OptionsCustomize.ColumnMoving = False
        OptionsCustomize.ColumnSorting = False
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsView.Navigator = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.Background = dmAppActions.cxStyle17
        Styles.Content = dmAppActions.cxStyle21
        Styles.ContentEven = dmAppActions.cxStyle21
        Styles.ContentOdd = dmAppActions.cxStyle21
        object tvParametrosCaption: TcxGridDBColumn
          Caption = 'Par'#225'metro'
          DataBinding.FieldName = 'Caption'
          MinWidth = 120
          Options.Editing = False
          Options.Focusing = False
          Width = 120
        end
        object tvParametrosLastValue: TcxGridDBColumn
          Caption = 'Valor'
          DataBinding.FieldName = 'LastValue'
          OnGetProperties = tvParametrosLastValueGetProperties
          MinWidth = 155
          Width = 155
        end
        object tvParametrosType: TcxGridDBColumn
          DataBinding.FieldName = 'ItemType'
          Visible = False
          MinWidth = 64
        end
      end
      object grParametrosLevel1: TcxGridLevel
        GridView = tvParametros
      end
    end
    object tvFolders: TJvDBTreeView [2]
      Left = 24
      Top = 43
      Width = 200
      Height = 276
      DataSource = dsDatos
      MasterField = 'FolderId'
      DetailField = 'ParentId'
      IconField = 'Image'
      ItemField = 'Name'
      UseFilter = False
      PersistentNode = False
      BorderStyle = bsNone
      Indent = 19
      OnEditing = tvFoldersEditing
      Align = alClient
      Color = clInfoBk
      TabOrder = 0
      Images = ilFolders
      StateImages = ilFolders
      AutoExpand = True
      Mirror = False
    end
    inherited Group_Root: TdxLayoutGroup
      object lcDatosGroup4: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        ShowCaption = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object lcDatosGroup1: TdxLayoutGroup
          Caption = 'Grupos'
          object lcDatosItem1: TdxLayoutItem
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            ControlOptions.ShowBorder = False
          end
          object lcDatosItem4: TdxLayoutItem
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            Control = tvFolders
          end
        end
        object lcDatosGroup2: TdxLayoutGroup
          AutoAligns = [aaVertical]
          AlignHorz = ahClient
          Caption = 'Reportes'
          object lcDatosItem2: TdxLayoutItem
            AutoAligns = [aaHorizontal]
            AlignVert = avClient
            Control = grReportes
            ControlOptions.ShowBorder = False
          end
        end
      end
      object lcDatosGroup3: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'Par'#225'metros'
        object lcDatosItem3: TdxLayoutItem
          Control = grParametros
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  inherited pnCaption: TPanel
    Width = 763
    ExplicitWidth = 763
  end
  inherited pmCustom: TPopupMenu
    Left = 320
    Top = 124
  end
  inherited dsDatos: TDataSource
    AutoEdit = True
    DataSet = tblFolder
  end
  object dsReportes: TDataSource
    AutoEdit = False
    DataSet = tblItem
    Left = 392
    Top = 188
  end
  object tblFolder: TADOTable
    Connection = DM.DataBase
    CursorType = ctStatic
    AfterOpen = tblFolderAfterOpen
    AfterPost = tblFolderAfterPost
    BeforeDelete = tblFolderBeforeDelete
    AfterDelete = tblFolderAfterDelete
    AfterScroll = tblFolderAfterScroll
    OnCalcFields = tblFolderCalcFields
    OnNewRecord = tblFolderNewRecord
    TableName = 'SysRbFolder'
    Left = 201
    Top = 88
    object tblFolderModuleId: TSmallintField
      FieldName = 'ModuleId'
      Origin = 'SysRbFolder.ModuleId'
    end
    object tblFolderName: TStringField
      FieldName = 'Name'
      Origin = 'SysRbFolder.Name'
      FixedChar = True
      Size = 60
    end
    object tblFolderParentId: TIntegerField
      FieldName = 'ParentId'
      Origin = 'SysRbFolder.ParentId'
    end
    object tblFolderImage: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Image'
      Calculated = True
    end
    object tblFolderFolderId: TLargeintField
      FieldName = 'FolderId'
    end
  end
  object ilFolders: TImageList
    Left = 144
    Top = 232
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000029ADD60031B5DE0021AD
      D600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000029ADD60031B5DE0021AD
      D600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000029ADD6009CDEEF0084EF
      FF004AC6E70021ADD60018A5C60018A5C60018A5C60000000000000000000000
      0000000000000000000000000000000000000000000029ADD6009CDEEF0084EF
      FF004AC6E70021ADD60018A5C60018A5C60018A5C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000029ADD60052BDE7009CFF
      FF0094FFFF0073DEF70073DEF70073DEF70073DEF7004AC6E70021ADD60018A5
      C600000000000000000000000000000000000000000029ADD60052BDE7009CFF
      FF0094FFFF0073DEF70073DEF70073DEF70073DEF7004AC6E70021ADD60018A5
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000029ADD60052BDE700ADFF
      FF008CF7FF008CEFFF008CEFFF008CEFFF0073DEF70073DEF70073DEF7004AC6
      EF0021ADD6000000000000000000000000000000000029ADD60052BDE700ADFF
      FF008CF7FF008CEFFF008CEFFF008CEFFF0073DEF70073DEF70073DEF7004AC6
      EF0021ADD6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000029ADD60029ADD600ADDE
      EF0094F7FF0094F7FF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF70073DE
      F7004AC6EF000000000000000000000000000000000029ADD60029ADD600ADDE
      EF0094F7FF0094F7FF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF70073DE
      F7004AC6EF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000029ADD60073DEF70029AD
      D6009CFFFF008CF7FF008CF7FF008CF7FF008CEFFF008CEFFF008CEFFF0073DE
      F70073DEF70018A5C60000000000000000000000000029ADD60073DEF70029AD
      D6009CFFFF008CF7FF008CF7FF008CF7FF008CEFFF008CEFFF008CEFFF0073DE
      F70073DEF70018A5C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000029ADD60094F7FF0029AD
      D600ADDEEF00A5EFF700A5EFF700A5F7FF008CEFFF008CEFFF008CEFFF0073DE
      F70073DEF70039BDE70000000000000000000000000029ADD60094F7FF0029AD
      D600ADDEEF00A5EFF700A5EFF700A5F7FF008CEFFF008CEFFF008CEFFF0073DE
      F70073DEF70039BDE70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000029ADD6009CFFFF0073DE
      F70029ADD60018A5C60018A5C60018A5C600ADDEEF008CF7FF0084EFFF0084EF
      FF0073DEF70073DEF70018A5C600000000000000000029ADD6009CFFFF0073DE
      F70029ADD60018A5C60018A5C60018A5C600ADDEEF008CF7FF0084EFFF0084EF
      FF0073DEF70073DEF70018A5C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000029ADD6009CFFFF0094F7
      FF0073DEF70073DEF70073DEF7006BDEF70029ADD600ADDEEF0084EFFF0084EF
      FF0084EFFF0094EFFF0031A5D600000000000000000029ADD6009CFFFF0094F7
      FF0073DEF70073DEF70073DEF7006BDEF70029ADD600ADDEEF0084EFFF0084EF
      FF0084EFFF0094EFFF0031A5D600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000029ADD6009CFFFF0094F7
      FF0094F7FF0094F7FF0094F7FF0073DEF70073DEF70029ADD60018A5C60029A5
      D60029A5D60029A5D60018A5C600000000000000000029ADD6009CFFFF0094F7
      FF0094F7FF0094F7FF0094F7FF0073DEF70073DEF70029ADD60018A5C60029A5
      D60029A5D60029A5D60018A5C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000029ADD600C6FFFF0094FF
      FF009CFFFF00D6FFFF00D6FFFF008CEFFF0094EFFF0073DEF70073DEF70018AD
      DE00000000000000000000000000000000000000000029ADD600C6FFFF0094FF
      FF009CFFFF00D6FFFF00D6FFFF008CEFFF0094EFFF0073DEF70073DEF70018AD
      DE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000021ADD6009CDEEF00C6FF
      FF00C6FFFF009CDEEF0018ADD60018A5C60018A5C60018A5C60018A5C60018A5
      CE00000000000000000000000000000000000000000021ADD6009CDEEF00C6FF
      FF00C6FFFF009CDEEF0018ADD60018A5C60018A5C60018A5C60018A5C60018A5
      CE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000031B5DE0029AD
      D60018A5C60018A5C60000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000031B5DE0029AD
      D60018A5C60018A5C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF000000008FFF8FFF00000000
      807F807F00000000800F800F0000000080078007000000008007800700000000
      8003800300000000800380030000000080018001000000008001800100000000
      8001800100000000800F800F00000000800F800F00000000C3FFC3FF00000000
      FFFFFFFF00000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object dsRepParam: TDataSource
    DataSet = tblRepParam
    Left = 432
    Top = 460
  end
  object qrCuentas: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      '  FROM CgCuentas')
    Left = 388
    Top = 104
  end
  object dsCuentas: TDataSource
    AutoEdit = False
    DataSet = qrCuentas
    Left = 444
    Top = 96
  end
  object qrTiposDocumento: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      '  FROM CgTiposDocumento')
    Left = 560
    Top = 84
  end
  object dsTiposDocumetno: TDataSource
    DataSet = qrTiposDocumento
    Left = 632
    Top = 88
  end
  object qrProyectos: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      '  FROM CgProyectos')
    Left = 576
    Top = 152
  end
  object dsProyectos: TDataSource
    AutoEdit = False
    DataSet = qrProyectos
    Left = 636
    Top = 168
  end
  object mdDimensiones: TdxMemData
    Indexes = <>
    Persistent.Data = {
      566572CDCCCCCCCCCCFC3F0200000002000000020005005469706F0015000000
      010007004E6F6D627265000101001000000043656E74726F20646520436F7374
      6F000102000D000000446570617274616D656E746F00}
    SortOptions = []
    Left = 344
    Top = 264
    object mdDimensionesTipo: TSmallintField
      FieldName = 'Tipo'
    end
    object mdDimensionesNombre: TStringField
      FieldName = 'Nombre'
    end
  end
  object dsTipoDimensiones: TDataSource
    AutoEdit = False
    DataSet = mdDimensiones
    Left = 404
    Top = 292
  end
  object dsMonedas: TDataSource
    AutoEdit = False
    DataSet = qrMonedas
    Left = 232
    Top = 320
  end
  object qrMonedas: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      '   FROM SysMonedas')
    Left = 232
    Top = 264
  end
  object qrGrupoBancos: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      '   FROM BcGrupoBanco')
    Left = 120
    Top = 455
  end
  object dsGrupoBancos: TDataSource
    DataSet = qrGrupoBancos
    Left = 60
    Top = 472
  end
  object qrCuentaBancos: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      '   FROM BcCuentas')
    Left = 224
    Top = 483
  end
  object dsCuentaBancos: TDataSource
    DataSet = qrCuentaBancos
    Left = 164
    Top = 500
  end
  object cxEditRepository: TcxEditRepository
    Left = 80
    Top = 300
    object cxTextEdit: TcxEditRepositoryTextItem
    end
    object cxLcCuenta: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'CuentaContable'
      Properties.ListColumns = <
        item
          Caption = 'Cuenta'
          FieldName = 'CuentaContable'
        end
        item
          FieldName = 'Nombre'
        end
        item
          Caption = 'Cuenta Control'
          FieldName = 'CuentaPadre'
        end>
      Properties.ListSource = dsCuentas
    end
    object cxIntEdit: TcxEditRepositorySpinItem
    end
    object cxCalcEdit: TcxEditRepositoryCalcItem
      Properties.QuickClose = True
    end
    object cxDateEdit: TcxEditRepositoryDateItem
    end
    object cxComboBoxEdit: TcxEditRepositoryComboBoxItem
    end
    object cxLcTiposDocumento: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'TipoDocumento'
      Properties.ListColumns = <
        item
          Caption = 'Tipo'
          FieldName = 'TipoDocumento'
        end
        item
          FieldName = 'Descripcion'
        end>
      Properties.ListSource = dsTiposDocumetno
    end
    object cxLcProyecto: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'ProyectoID'
      Properties.ListColumns = <
        item
          Caption = 'Proyecto'
          FieldName = 'ProyectoID'
        end
        item
          FieldName = 'Descripcion'
        end>
      Properties.ListSource = dsProyectos
    end
    object cxLcTipoDimension: TcxEditRepositoryLookupComboBoxItem
      Properties.KeyFieldNames = 'Tipo'
      Properties.ListColumns = <
        item
          FieldName = 'Nombre'
        end>
      Properties.ListSource = dsTipoDimensiones
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
    object cxLcMoneda: TcxEditRepositoryLookupComboBoxItem
      Properties.KeyFieldNames = 'MoneadaID'
      Properties.ListColumns = <
        item
          Caption = 'Moneada'
          FieldName = 'MoneadaID'
        end>
      Properties.ListSource = dsMonedas
    end
    object cxLcGrupoBancos: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'GrupoBancoID'
      Properties.ListColumns = <
        item
          Caption = 'Banco'
          FieldName = 'GrupoBancoID'
        end
        item
          FieldName = 'Nombre'
        end>
      Properties.ListSource = dsGrupoBancos
    end
    object cxLcCuentaBanco: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'CuentaBanco'
      Properties.ListColumns = <
        item
          Caption = 'Cuenta Banco'
          FieldName = 'CuentaBanco'
        end
        item
          FieldName = 'Nombre'
        end
        item
          Caption = 'Banco'
          FieldName = 'GrupoBancoID'
        end>
      Properties.ListSource = dsCuentaBancos
    end
  end
  object qrCliente: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT Cliente, Nombre'
      '   FROM CcClientes')
    Left = 548
    Top = 384
  end
  object dsCliente: TDataSource
    AutoEdit = False
    DataSet = qrCliente
    Left = 616
    Top = 408
  end
  object tblItem: TADOQuery
    Connection = DM.DataBase
    BeforeOpen = tblItemBeforeOpen
    AfterScroll = tblItemAfterScroll
    Parameters = <
      item
        Name = 'pFolder'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      '   FROM SysRbItem'
      'WHERE FolderId = :pFolder')
    Left = 304
    Top = 156
    object tblItemItemId: TLargeintField
      FieldName = 'ItemId'
      ReadOnly = True
    end
    object tblItemFolderId: TIntegerField
      FieldName = 'FolderId'
    end
    object tblItemName: TStringField
      FieldName = 'Name'
      Size = 60
    end
    object tblItemSize: TIntegerField
      FieldName = 'Size'
    end
    object tblItemItemType: TIntegerField
      FieldName = 'ItemType'
    end
    object tblItemModified: TDateTimeField
      FieldName = 'Modified'
    end
    object tblItemDeleted: TDateTimeField
      FieldName = 'Deleted'
    end
    object tblItemReportName: TStringField
      FieldName = 'ReportName'
      Size = 150
    end
    object tblItemSqlText: TMemoField
      FieldName = 'SqlText'
      BlobType = ftMemo
    end
  end
  object tblRepParam: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    AfterPost = tblRepParamAfterPost
    Parameters = <
      item
        Name = 'pItem'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      '   FROM SysRbItemParam'
      'WHERE ItemID = :pItem'
      'ORDER by CAST(Name AS integer)')
    Left = 364
    Top = 408
    object tblRepParamItemId2: TIntegerField
      FieldName = 'ItemId'
    end
    object tblRepParamName2: TStringField
      FieldName = 'Name'
    end
    object tblRepParamCaption2: TStringField
      FieldName = 'Caption'
      Size = 30
    end
    object tblRepParamItemType2: TIntegerField
      FieldName = 'ItemType'
    end
    object tblRepParamDefault2: TStringField
      FieldName = 'Default'
      Size = 150
    end
    object tblRepParamLastValue2: TStringField
      FieldName = 'LastValue'
      Size = 15
    end
    object tblRepParamValuesList2: TMemoField
      FieldName = 'ValuesList'
      BlobType = ftMemo
    end
  end
end
