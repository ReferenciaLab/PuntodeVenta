inherited frmInformeModule: TfrmInformeModule
  Left = 323
  Top = 129
  Caption = 'Informe'
  ExplicitHeight = 412
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcDatos: TdxLayoutControl
    inherited grConsulta: TcxGrid
      Top = 119
      Cursor = crHandPoint
      TabOrder = 5
      ExplicitTop = 119
      inherited tvConsulta: TcxGridDBTableView
        FilterBox.Position = fpTop
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.GroupBySorting = True
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.InvertSelect = False
        OptionsView.FocusRect = False
        OptionsView.ExpandButtonsForEmptyDetails = False
        OptionsView.GridLines = glNone
        OptionsView.GroupFooters = gfAlwaysVisible
        OptionsView.GroupRowStyle = grsOffice11
        OptionsView.HeaderHeight = 22
        Styles.ContentEven = cxStyle10
        Styles.ContentOdd = cxStyle10
        Styles.FilterBox = cxStyle8
        Styles.Footer = cxStyle2
        Styles.Group = cxStyle2
        Styles.GroupByBox = cxStyle14
        OnCustomDrawColumnHeader = tvConsultaCustomDrawColumnHeader
      end
    end
    inherited deHasta: TcxDateEdit
      Left = 208
      ExplicitLeft = 208
    end
    inherited deDesde: TcxDateEdit
      Left = 79
      ExplicitLeft = 79
    end
    inherited btBuscar: TcxButton
      Left = 308
      ExplicitLeft = 308
    end
    object reHeader: TcxRichEdit [4]
      Left = 11
      Top = 65
      TabStop = False
      Lines.Strings = (
        '')
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 4
      Height = 54
      Width = 506
    end
    inherited Group_Root: TdxLayoutGroup
      inherited lgConsulta: TdxLayoutGroup
        LookAndFeel = dmAppActions.lnfNoBorder
        object lcDatosItem2: TdxLayoutItem [1]
          Control = reHeader
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  inherited dsDatos: TDataSource
    DataSet = qrConsulta
  end
  inherited cxGridPopupMenu: TcxGridPopupMenu
    Left = 238
    Top = 90
  end
  inherited dxPrintGrid: TdxComponentPrinter
    inherited dxPrintGridLink: TdxGridReportLink
      ReportDocument.CreationDate = 38494.948582314820000000
      BuiltInReportLink = True
    end
  end
  inherited cxStyleRepository1: TcxStyleRepository
    inherited cxStyle8: TcxStyle
      Color = clWindow
    end
    inherited cxStyle12: TcxStyle
      Color = clWhite
      Font.Style = [fsBold]
    end
    inherited cxStyle14: TcxStyle
      Color = clWindow
    end
    object cxStyle15: TcxStyle
    end
  end
  object qrConsulta: TADOQuery [16]
    Connection = DM.DataBase
    AfterOpen = qrConsultaAfterOpen
    Parameters = <>
    Left = 392
    Top = 229
  end
end
