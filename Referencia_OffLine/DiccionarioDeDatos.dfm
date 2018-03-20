inherited frmDiccionarioDeDatos: TfrmDiccionarioDeDatos
  Left = 400
  Top = 139
  Caption = 'Diccionario De Datos'
  ClientHeight = 557
  ClientWidth = 740
  OldCreateOrder = True
  ExplicitWidth = 748
  ExplicitHeight = 588
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 33
    Width = 740
    Height = 524
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmAppActions.lnfWeb
    object grTablas: TcxGrid
      Left = 23
      Top = 36
      Width = 623
      Height = 200
      TabOrder = 0
      object tvTablas: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.PriorPage.Visible = False
        NavigatorButtons.NextPage.Visible = False
        NavigatorButtons.Insert.Visible = False
        NavigatorButtons.Delete.Visible = False
        NavigatorButtons.Edit.Visible = True
        NavigatorButtons.Refresh.Visible = False
        NavigatorButtons.SaveBookmark.Visible = False
        NavigatorButtons.GotoBookmark.Visible = False
        NavigatorButtons.Filter.Visible = False
        DataController.DataSource = dsRbTables
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsView.Navigator = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object tvTablasTableName: TcxGridDBColumn
          Caption = 'Nombre'
          DataBinding.FieldName = 'TableName'
          Options.Editing = False
          Options.Focusing = False
          Width = 253
        end
        object tvTablasTableAlias: TcxGridDBColumn
          Caption = 'Alias'
          DataBinding.FieldName = 'TableAlias'
        end
      end
      object grTablasLevel1: TcxGridLevel
        GridView = tvTablas
      end
    end
    object grCampos: TcxGrid
      Left = 23
      Top = 333
      Width = 623
      Height = 135
      TabOrder = 6
      object tvCampos: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.PriorPage.Visible = False
        NavigatorButtons.NextPage.Visible = False
        NavigatorButtons.Insert.Visible = False
        NavigatorButtons.Delete.Visible = True
        NavigatorButtons.Refresh.Visible = False
        NavigatorButtons.SaveBookmark.Visible = False
        NavigatorButtons.GotoBookmark.Visible = False
        NavigatorButtons.Filter.Visible = False
        DataController.DataSource = dsRbFields
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsView.Navigator = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object tvCamposTableName: TcxGridDBColumn
          DataBinding.FieldName = 'TableName'
          Visible = False
        end
        object tvCamposFieldName: TcxGridDBColumn
          DataBinding.FieldName = 'FieldName'
          Options.Editing = False
          Options.Focusing = False
          Width = 208
        end
        object tvCamposFieldAlias: TcxGridDBColumn
          DataBinding.FieldName = 'FieldAlias'
          Width = 259
        end
        object tvCamposSelectable: TcxGridDBColumn
          DataBinding.FieldName = 'Selectable'
          Visible = False
        end
        object tvCamposSearchable: TcxGridDBColumn
          DataBinding.FieldName = 'Searchable'
          Visible = False
          Width = 37
        end
        object tvCamposSortable: TcxGridDBColumn
          DataBinding.FieldName = 'Sortable'
          Visible = False
          Width = 33
        end
        object tvCamposDataType: TcxGridDBColumn
          DataBinding.FieldName = 'DataType'
          Options.Editing = False
          Options.Focusing = False
          Width = 125
        end
        object tvCamposAutoSearch: TcxGridDBColumn
          DataBinding.FieldName = 'AutoSearch'
          Visible = False
          Width = 22
        end
        object tvCamposMandatory: TcxGridDBColumn
          DataBinding.FieldName = 'Mandatory'
          Visible = False
          Width = 20
        end
      end
      object grCamposLevel1: TcxGridLevel
        GridView = tvCampos
      end
    end
    object edNombre: TcxMaskEdit
      Left = 35
      Top = 299
      Properties.CharCase = ecUpperCase
      Properties.MaskKind = emkRegExprEx
      Properties.EditMask = 'USR_[a-zA-Z]+'
      Properties.MaxLength = 0
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 1
      Text = 'USR_'
      Width = 121
    end
    object edAlias: TcxTextEdit
      Left = 162
      Top = 299
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 2
      Width = 200
    end
    object edTipo: TcxImageComboBox
      Left = 470
      Top = 299
      Properties.Alignment.Horz = taLeftJustify
      Properties.Items = <
        item
          Description = 'Texto'
          ImageIndex = 0
          Value = '1'
        end
        item
          Description = 'Numero'
          Value = '2'
        end
        item
          Description = 'Valor'
          Value = '3'
        end
        item
          Description = 'Fecha'
          Value = '4'
        end
        item
          Description = 'Memo'
          Value = '5'
        end
        item
          Description = 'Si/No'
          Value = '6'
        end>
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 3
      Width = 100
    end
    object edAncho: TcxSpinEdit
      Left = 576
      Top = 299
      Properties.MinValue = 1.000000000000000000
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      TabOrder = 4
      Value = 1
      Width = 50
    end
    object btAddField: TcxButton
      Left = 632
      Top = 295
      Width = 73
      Height = 25
      Caption = 'Agregar'
      TabOrder = 5
      OnClick = btAddFieldClick
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object lgTablas: TdxLayoutGroup
        Caption = 'Tablas'
        object dxLayoutControl1Item1: TdxLayoutItem
          AutoAligns = []
          AlignHorz = ahClient
          AlignVert = avClient
          Control = grTablas
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Group2: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'Campos'
        object dxLayoutControl1Group3: TdxLayoutGroup
          Caption = 'Nuevo'
          ShowCaption = False
          LayoutDirection = ldHorizontal
          object dxLayoutControl1Item3: TdxLayoutItem
            Caption = 'Nombre'
            CaptionOptions.Layout = clTop
            Control = edNombre
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item4: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Caption = 'Alias'
            CaptionOptions.Layout = clTop
            Control = edAlias
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item5: TdxLayoutItem
            Caption = 'Tipo'
            CaptionOptions.Layout = clTop
            Control = edTipo
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item6: TdxLayoutItem
            Caption = 'Ancho'
            CaptionOptions.Layout = clTop
            Control = edAncho
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item7: TdxLayoutItem
            AutoAligns = []
            AlignHorz = ahRight
            AlignVert = avBottom
            Caption = 'cxButton1'
            CaptionOptions.Layout = clTop
            ShowCaption = False
            Control = btAddField
            ControlOptions.ShowBorder = False
          end
        end
        object dxLayoutControl1Item2: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avClient
          Control = grCampos
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  inherited pnCaption: TPanel
    Width = 740
    ExplicitWidth = 740
  end
  object dsRbTables: TDataSource
    DataSet = taRbTables
    Left = 208
    Top = 436
  end
  object dsRbFields: TDataSource
    DataSet = taRbFields
    Left = 360
    Top = 432
  end
  object cmdALTER: TADOCommand
    Connection = DM.DataBase
    Parameters = <>
    Left = 496
    Top = 88
  end
  object taRbTables: TABSTable
    CurrentVersion = '5.04 '
    DatabaseName = 'PymeCoop'
    InMemory = False
    ReadOnly = False
    TableName = 'SysRbTable'
    Exclusive = False
    Left = 160
    Top = 396
  end
  object taRbFields: TABSTable
    CurrentVersion = '5.04 '
    DatabaseName = 'PymeCoop'
    InMemory = False
    ReadOnly = False
    BeforeDelete = taRbFieldsBeforeDelete
    IndexFieldNames = 'TableName'
    TableName = 'SysRbField'
    Exclusive = False
    MasterFields = 'TableName'
    MasterSource = dsRbTables
    Left = 316
    Top = 396
    object taRbFieldsTableName: TStringField
      FieldName = 'TableName'
      Required = True
      Size = 60
    end
    object taRbFieldsFieldName: TStringField
      FieldName = 'FieldName'
      Required = True
      Size = 60
    end
    object taRbFieldsFieldAlias: TStringField
      FieldName = 'FieldAlias'
      Size = 60
    end
    object taRbFieldsSelectable: TStringField
      FieldName = 'Selectable'
      Size = 1
    end
    object taRbFieldsSearchable: TStringField
      FieldName = 'Searchable'
      Size = 1
    end
    object taRbFieldsSortable: TStringField
      FieldName = 'Sortable'
      Size = 1
    end
    object taRbFieldsDataType: TStringField
      FieldName = 'DataType'
      Size = 60
    end
    object taRbFieldsAutoSearch: TStringField
      FieldName = 'AutoSearch'
      Size = 1
    end
    object taRbFieldsMandatory: TStringField
      FieldName = 'Mandatory'
      Size = 1
    end
    object taRbFieldsFieldSize: TSmallintField
      FieldName = 'FieldSize'
    end
  end
end
