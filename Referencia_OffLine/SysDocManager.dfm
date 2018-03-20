inherited frmSysDocManager: TfrmSysDocManager
  Left = 298
  Top = 77
  Caption = 'Gesti'#243'n de Documentos'
  ClientHeight = 481
  ClientWidth = 849
  OldCreateOrder = True
  ExplicitWidth = 857
  ExplicitHeight = 508
  PixelsPerInch = 96
  TextHeight = 13
  inherited JvEnterAsTab1: TJvEnterAsTab
    Left = 260
    Top = 164
    ExplicitLeft = 260
    ExplicitTop = 164
  end
  object lcPrincipal: TdxLayoutControl [1]
    Left = 0
    Top = 33
    Width = 849
    Height = 448
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmAppActions.lnfWeb
    object cxGrid1: TcxGrid
      Left = 23
      Top = 36
      Width = 250
      Height = 200
      TabOrder = 0
      object tvSysDoc: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.PriorPage.Visible = False
        NavigatorButtons.NextPage.Visible = False
        NavigatorButtons.Refresh.Visible = False
        NavigatorButtons.SaveBookmark.Visible = False
        NavigatorButtons.GotoBookmark.Visible = False
        NavigatorButtons.Filter.Visible = False
        OnFocusedRecordChanged = tvSysDocFocusedRecordChanged
        DataController.DataSource = dsSysDoc
        DataController.KeyFieldNames = 'DocId'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.AlwaysShowEditor = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsSelection.MultiSelect = True
        OptionsView.Navigator = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.GroupRowStyle = grsOffice11
        OptionsView.Indicator = True
        OptionsView.NewItemRow = True
        object tvSysDocTipo: TcxGridDBColumn
          DataBinding.FieldName = 'Tipo'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Items = <
            item
              Description = 'Nota'
              ImageIndex = 0
              Value = '0'
            end
            item
              Description = 'Imagen'
              Value = '1'
            end
            item
              Description = 'Archivo'
              Value = '2'
            end>
          Width = 97
        end
        object tvSysDocAlias: TcxGridDBColumn
          DataBinding.FieldName = 'Alias'
          Width = 95
        end
        object tvSysDocNota: TcxGridDBColumn
          DataBinding.FieldName = 'Nota'
          PropertiesClassName = 'TcxMemoProperties'
          Visible = False
          Width = 144
        end
        object tvSysDocArchivo: TcxGridDBColumn
          DataBinding.FieldName = 'Archivo'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Glyph.Data = {
                36050000424D3605000000000000360400002800000010000000100000000100
                08000000000000010000420B0000420B0000000100000001000000730800087B
                080008841000088C100008A51800108C2100109C210018AD290031C64A0042D6
                6B0052D67B005AE78C0018A5C60018ADD60021ADD60029ADD60031B5DE0052BD
                E7004AC6E7004AC6EF009CDEEF00ADDEEF006BDEF70073DEF700A5EFF700FF00
                FF0084EFFF008CEFFF0094EFFF008CF7FF0094F7FF00A5F7FF0094FFFF009CFF
                FF00ADFFFF00C6FFFF00D6FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00191919191919
                19191919191919191919190F100E191919191919191919191919190F141A120E
                0C0C0C19191919191919190F11212017171717120E0C19191919190F11221D1B
                1B1B171717130E191919190F0F151E1E1B1B1B1B171713191919190F170F211D
                1D1D1B1B1B17170C1919190F1E0F1518181F1B1B1B17000C1919190F21170F0C
                0C0C151D1A000B000C19190F211E171717160F15000A09080019190F211E1E1E
                1E17170F0C0508060C19190F23202124241B1C17170207021919190E14232314
                0D0C0C0C0C03041919191919100F0C0C19191919030402191919191919191919
                1900010303011919191919191919191919191919191919191919}
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = tvSysDocArchivoPropertiesButtonClick
          Width = 228
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = tvSysDoc
      end
    end
    object Browser: TWebBrowser
      Left = 303
      Top = 36
      Width = 300
      Height = 150
      TabOrder = 2
      ControlData = {
        4C000000021F0000810F00000000000000000000000000000000000000000000
        000000004C000000000000000000000001000000E0D057007335CF11AE690800
        2B2E126208000000000000004C0000000114020000000000C000000000000046
        8000000000000000000000000000000000000000000000000000000000000000
        00000000000000000100000000000000000000000000000000000000}
    end
    object cxDBMemo1: TcxDBMemo
      Left = 23
      Top = 313
      DataBinding.DataField = 'Nota'
      DataBinding.DataSource = dsSysDoc
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 1
      Height = 89
      Width = 185
    end
    object lcPrincipalGroup_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      object lcPrincipalGroup1: TdxLayoutGroup
        AutoAligns = [aaVertical]
        Caption = 'Documentos'
        object lcPrincipalItem1: TdxLayoutItem
          AutoAligns = []
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Layout = clTop
          Control = cxGrid1
          ControlOptions.ShowBorder = False
        end
        object lcPrincipalItem3: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avClient
          Caption = 'Nota:'
          CaptionOptions.Layout = clTop
          Control = cxDBMemo1
          ControlOptions.ShowBorder = False
        end
      end
      object lcPrincipalGroup2: TdxLayoutGroup
        AutoAligns = []
        AlignHorz = ahClient
        AlignVert = avClient
        Caption = 'Vista Preeliminar'
        object lcPrincipalItem2: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avClient
          Control = Browser
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  inherited pnCaption: TPanel
    Width = 849
    ExplicitWidth = 849
  end
  inherited formStorage: TJvFormStorage
    Left = 72
    Top = 178
  end
  inherited alEdit: TActionList
    Left = 376
    Top = 168
  end
  inherited pmCustom: TPopupMenu
    Left = 392
    inherited pmCopyToClipboard: TMenuItem
      OnClick = pmCopyToClipboardClick
    end
    inherited pmCutToClipboard: TMenuItem
      OnClick = pmCutToClipboardClick
    end
    inherited pmSelectAllText: TMenuItem
      OnClick = pmSelectAllTextClick
    end
  end
  object qrSysDoc: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    OnNewRecord = qrSysDocNewRecord
    Parameters = <
      item
        Name = 'pTable'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'pRecord'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 150
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      '  FROM SysDocTable'
      'WHERE TableId = :pTable'
      '      AND RecordId = :pRecord')
    Left = 88
    Top = 64
    object qrSysDocDocId: TLargeintField
      FieldName = 'DocId'
      ReadOnly = True
    end
    object qrSysDocTableID: TStringField
      FieldName = 'TableID'
      Size = 50
    end
    object qrSysDocRecordID: TStringField
      FieldName = 'RecordID'
      Size = 150
    end
    object qrSysDocTipo: TIntegerField
      FieldName = 'Tipo'
      OnChange = qrSysDocTipoChange
    end
    object qrSysDocAlias: TStringField
      FieldName = 'Alias'
    end
    object qrSysDocArchivo: TStringField
      FieldName = 'Archivo'
      Size = 250
    end
    object qrSysDocNota: TMemoField
      FieldName = 'Nota'
      BlobType = ftMemo
    end
  end
  object dsSysDoc: TDataSource
    DataSet = qrSysDoc
    Left = 160
    Top = 76
  end
  object OpenDlg: TOpenDialog
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 268
    Top = 108
  end
  object qrDefaultView: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'pUser'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'pForm'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'pTipo'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      '   FROM vw_UserDefaultView'
      'WHERE UserID = :pUser'
      '   AND FormName = :pForm'
      '   AND Tipo = :pTipo')
    Left = 504
    Top = 111
  end
  object strView: TJvStrHolder
    MacroChar = '|'
    Macros = <>
    Left = 464
    Top = 124
    InternalVer = 1
  end
end
