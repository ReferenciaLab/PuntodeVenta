inherited frmRecurrentModule: TfrmRecurrentModule
  Left = 332
  Top = 209
  Caption = 'Transacciones Recurrentes'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object lcBotones: TdxLayoutControl [1]
    Left = 342
    Top = 33
    Width = 60
    Height = 154
    Align = alRight
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmAppActions.lnfButtonGroup
    ExplicitLeft = 380
    ExplicitHeight = 195
    object lcBotonesGroup_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object lgBotones: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'lgBotones'
        ShowCaption = False
        ShowBorder = False
      end
    end
  end
  object dxLayoutControl1: TdxLayoutControl [2]
    Left = 0
    Top = 33
    Width = 342
    Height = 154
    Align = alClient
    TabOrder = 2
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmAppActions.lnfWeb
    ExplicitWidth = 380
    ExplicitHeight = 195
    object grMemory: TcxGrid
      Left = 11
      Top = 70
      Width = 250
      Height = 200
      TabOrder = 1
      object tvMemory: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsDatos
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.Background = stGrDatos
        Styles.Content = stGrDatos
      end
      object grMemoryLevel1: TcxGridLevel
        GridView = tvMemory
      end
    end
    object deFecha: TcxDateEdit
      Left = 120
      Top = 36
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 0
      Width = 121
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Group1: TdxLayoutGroup
        Caption = 'Par'#225'metros'
        LayoutDirection = ldHorizontal
        object dxLayoutControl1Item2: TdxLayoutItem
          Caption = 'Fecha Transacci'#243'n'
          Control = deFecha
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Item1: TdxLayoutItem
        AutoAligns = []
        AlignHorz = ahClient
        AlignVert = avClient
        Control = grMemory
        ControlOptions.ShowBorder = False
      end
    end
  end
  inherited pmCustom: TPopupMenu
    Left = 272
    Top = 92
  end
  object dsDatos: TDataSource
    AutoEdit = False
    Left = 64
    Top = 92
  end
  object cxGridStyles: TcxStyleRepository
    Left = 392
    Top = 196
    object stGrDatos: TcxStyle
      AssignedValues = [svColor]
      Color = clInfoBk
    end
    object stGrEdit: TcxStyle
    end
  end
end
