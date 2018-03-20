inherited frmDialogDbSetup: TfrmDialogDbSetup
  Caption = 'Configuraci'#243'n de Empresas'
  ClientHeight = 265
  ClientWidth = 529
  ExplicitWidth = 535
  ExplicitHeight = 297
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcDialog: TdxLayoutControl
    Width = 529
    Height = 265
    ExplicitWidth = 529
    ExplicitHeight = 265
    inherited btCancelar: TcxButton
      Left = 443
      Top = 229
      Cancel = False
      Caption = 'Probar'
      ModalResult = 0
      TabOrder = 3
      OnClick = btCancelarClick
      ExplicitLeft = 443
      ExplicitTop = 229
    end
    inherited btAceptar: TcxButton
      Top = 229
      TabOrder = 1
      ExplicitTop = 229
    end
    object cxGrid1: TcxGrid [2]
      Left = 23
      Top = 36
      Width = 250
      Height = 200
      TabOrder = 0
      object tvEmpresas: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.PriorPage.Visible = False
        NavigatorButtons.NextPage.Visible = False
        NavigatorButtons.SaveBookmark.Visible = False
        NavigatorButtons.GotoBookmark.Visible = False
        NavigatorButtons.Filter.Visible = False
        DataController.DataSource = dsEmpresas
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsData.Appending = True
        OptionsView.Navigator = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object tvEmpresasDescripcion: TcxGridDBColumn
          DataBinding.FieldName = 'Descripcion'
          Width = 140
        end
        object tvEmpresasServidor: TcxGridDBColumn
          DataBinding.FieldName = 'Servidor'
          Width = 77
        end
        object tvEmpresasNombre: TcxGridDBColumn
          DataBinding.FieldName = 'Nombre'
          Width = 79
        end
        object tvEmpresasAccesoNT: TcxGridDBColumn
          Caption = 'Por defecto'
          DataBinding.FieldName = 'AccesoNT'
          Options.Editing = False
          Options.Focusing = False
          Width = 23
        end
        object tvEmpresasSqlUser: TcxGridDBColumn
          Caption = 'Usuario'
          DataBinding.FieldName = 'SqlUser'
          Width = 76
        end
        object tvEmpresasSqlPassword: TcxGridDBColumn
          Caption = 'Clave'
          DataBinding.FieldName = 'SqlPassword'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.EchoMode = eemPassword
          Properties.PasswordChar = '*'
          Width = 74
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = tvEmpresas
      end
    end
    object btFunciones: TcxButton [3]
      Left = 92
      Top = 229
      Width = 75
      Height = 25
      Caption = 'Funciones'
      TabOrder = 2
      DropDownMenu = pmFunciones
      Kind = cxbkDropDown
    end
    inherited lcDialogGroup_Root: TdxLayoutGroup
      inherited lcDialogGroup1: TdxLayoutGroup
        object lcDialogItem1: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avClient
          Control = cxGrid1
          ControlOptions.ShowBorder = False
        end
      end
      inherited lcDialogGroup2: TdxLayoutGroup
        object liBtFunciones: TdxLayoutItem [1]
          Caption = 'cxButton1'
          ShowCaption = False
          Control = btFunciones
          ControlOptions.ShowBorder = False
        end
        inherited liBtCancelar: TdxLayoutItem
          AutoAligns = [aaVertical]
          AlignHorz = ahRight
        end
      end
    end
  end
  object dsEmpresas: TDataSource
    DataSet = DM.ApplEmpresas
    Left = 164
    Top = 108
  end
  object conTest: TADOConnection
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 300
    Top = 76
  end
  object pmFunciones: TPopupMenu
    Left = 252
    Top = 132
    object CrearNueva1: TMenuItem
      Caption = 'Crear Nueva'
      Visible = False
    end
    object N1: TMenuItem
      Caption = '-'
      Visible = False
    end
    object CopiadeSeguridad1: TMenuItem
      Caption = 'Copia de Seguridad'
      OnClick = CopiadeSeguridad1Click
    end
    object RestaurarCopia1: TMenuItem
      Caption = 'Restaurar Copia'
      OnClick = RestaurarCopia1Click
    end
  end
  object SaveDialog: TSaveDialog
    Filter = 'Backup|*.bak|Todos|*.*'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofCreatePrompt, ofEnableSizing]
    Left = 112
    Top = 92
  end
  object OpenDialog: TOpenDialog
    DefaultExt = 'Bak'
    Filter = 'Backup|*.bak|Todos|*.*'
    Left = 424
    Top = 64
  end
end
