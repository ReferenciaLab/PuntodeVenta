object frmDialogCobro: TfrmDialogCobro
  Left = 0
  Top = 0
  Caption = 'Cobro'
  ClientHeight = 275
  ClientWidth = 310
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 310
    Height = 275
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmAppActions.lnfWeb
    object cgDatos: TcxGrid
      Left = 11
      Top = 11
      Width = 288
      Height = 222
      TabOrder = 0
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
          Width = 35
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
      Left = 224
      Top = 239
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      ModalResult = 2
      TabOrder = 2
    end
    object btaceptar: TcxButton
      Left = 143
      Top = 239
      Width = 75
      Height = 25
      Caption = 'Aceptar'
      ModalResult = 1
      TabOrder = 1
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
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
    DataSet = frmPuntoVenta.mdPago
    Left = 36
    Top = 239
  end
end
