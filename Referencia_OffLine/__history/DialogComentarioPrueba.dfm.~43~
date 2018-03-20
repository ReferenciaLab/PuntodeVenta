object frmDialogComentarioPrueba: TfrmDialogComentarioPrueba
  Left = 0
  Top = 0
  Caption = 'Seleccione Alergeno'
  ClientHeight = 639
  ClientWidth = 342
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
    Width = 342
    Height = 639
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmAppActions.lnfWeb
    object cgDatos: TcxGrid
      Left = 11
      Top = 11
      Width = 637
      Height = 200
      TabOrder = 0
      OnEnter = cgDatosEnter
      OnExit = cgDatosExit
      object dbDatos: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsDatos
        DataController.KeyFieldNames = 'Cod_Comen'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '##,###,##0.00'
            Kind = skSum
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnSorting = False
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.Indicator = True
        object dbDatosSeleccion: TcxGridDBColumn
          Caption = 'Sel.'
          DataBinding.FieldName = 'Seleccion'
          PropertiesClassName = 'TcxRadioGroupProperties'
          Properties.Items = <
            item
              Value = '1'
            end>
          Width = 20
        end
        object dbDatosCod_Comen: TcxGridDBColumn
          DataBinding.FieldName = 'Cod_Comen'
          Visible = False
        end
        object dbDatosSecuencia: TcxGridDBColumn
          Caption = 'Sec.'
          DataBinding.FieldName = 'Secuencia'
          Visible = False
          Options.Editing = False
          Width = 24
        end
        object dbDatosDescripcion: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
          Options.Editing = False
          Width = 252
        end
      end
      object lvDatos: TcxGridLevel
        GridView = dbDatos
      end
    end
    object btaceptar: TcxButton
      Left = 256
      Top = 603
      Width = 75
      Height = 25
      Caption = '&Aceptar'
      Default = True
      ModalResult = 1
      TabOrder = 2
    end
    object btCancelar: TcxButton
      Left = 175
      Top = 603
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      ModalResult = 2
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
        object dxLayoutControl1Item1: TdxLayoutItem
          ShowCaption = False
          Control = btCancelar
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item6: TdxLayoutItem
          Caption = 'cxButton2'
          ShowCaption = False
          Control = btaceptar
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dsDatos: TDataSource
    DataSet = JvMemoryData1
    Left = 228
    Top = 64
  end
  object qrComentarioPrueba: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    Left = 192
    Top = 64
    object qrComentarioPruebaDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
    object qrComentarioPruebaCod_Comen: TStringField
      FieldName = 'Cod_Comen'
      Size = 10
    end
  end
  object JvMemoryData1: TJvMemoryData
    FieldDefs = <
      item
        Name = 'Seleccion'
        DataType = ftBoolean
      end
      item
        Name = 'Descripcion'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'Cod_Comen'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'Secuencia'
        DataType = ftInteger
      end>
    Left = 136
    Top = 112
    object JvMemoryData1Seleccion: TBooleanField
      FieldName = 'Seleccion'
    end
    object JvMemoryData1Cod_Comen: TStringField
      FieldName = 'Cod_Comen'
      Size = 10
    end
    object JvMemoryData1Secuencia: TIntegerField
      FieldName = 'Secuencia'
    end
    object JvMemoryData1Descripcion: TStringField
      FieldName = 'Descripcion'
      Size = 80
    end
  end
end
