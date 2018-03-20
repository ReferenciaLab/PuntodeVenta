inherited frmCargaPlanCia1: TfrmCargaPlanCia1
  Caption = 'Carga de Pacientes de Planes Anuales'
  ClientHeight = 588
  ClientWidth = 970
  ExplicitWidth = 978
  ExplicitHeight = 622
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCaption: TPanel
    Width = 970
    Height = 41
    ExplicitWidth = 970
    ExplicitHeight = 41
  end
  object dxLayoutControl1: TdxLayoutControl [2]
    Left = 0
    Top = 41
    Width = 970
    Height = 547
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmAppActions.lnfNoBorder
    object cxPageControl1: TcxPageControl
      Left = 0
      Top = 0
      Width = 289
      Height = 193
      ActivePage = cxTabSheet1
      HideTabs = True
      TabOrder = 0
      ClientRectBottom = 193
      ClientRectRight = 289
      ClientRectTop = 0
      object cxTabSheet1: TcxTabSheet
        Caption = 'cxTabSheet1'
        ImageIndex = 0
        object dxLayoutControl2: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 289
          Height = 193
          Align = alClient
          TabOrder = 0
          AutoContentSizes = [acsWidth, acsHeight]
          LookAndFeel = dmAppActions.lnfWeb
          object cxGrid1: TcxGrid
            Left = 11
            Top = 11
            Width = 250
            Height = 200
            TabOrder = 0
            LookAndFeel.Kind = lfUltraFlat
            LookAndFeel.NativeStyle = True
            object cxGrid1DBTableView1: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = dsEntradaPaciente
              DataController.KeyFieldNames = 'EmpleadoID'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnFiltering = False
              OptionsData.Deleting = False
              OptionsData.Inserting = False
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              object cxGrid1DBTableView1Numero: TcxGridDBColumn
                Caption = 'Num'
                DataBinding.FieldName = 'Numero'
                Width = 50
              end
              object cxGrid1DBTableView1ClienteID: TcxGridDBColumn
                Caption = 'Cliente Id'
                DataBinding.FieldName = 'ClienteID'
                Width = 85
              end
              object cxGrid1DBTableView1EmpresaID: TcxGridDBColumn
                Caption = 'Empresa Id'
                DataBinding.FieldName = 'EmpresaID'
                Width = 85
              end
              object cxGrid1DBTableView1EmpleadoID: TcxGridDBColumn
                Caption = 'Paciente Id'
                DataBinding.FieldName = 'EmpleadoID'
                Width = 85
              end
              object cxGrid1DBTableView1Nombre: TcxGridDBColumn
                DataBinding.FieldName = 'Nombre'
                Width = 200
              end
              object cxGrid1DBTableView1Departamento: TcxGridDBColumn
                DataBinding.FieldName = 'Departamento'
                Width = 125
              end
              object cxGrid1DBTableView1Edad: TcxGridDBColumn
                DataBinding.FieldName = 'Edad'
                Width = 30
              end
              object cxGrid1DBTableView1Sexo: TcxGridDBColumn
                DataBinding.FieldName = 'Sexo'
                Width = 30
              end
              object cxGrid1DBTableView1Sucursal: TcxGridDBColumn
                Caption = 'Suc.'
                DataBinding.FieldName = 'Sucursal'
                Width = 40
              end
              object cxGrid1DBTableView1CargoCiudad: TcxGridDBColumn
                Caption = 'Cargo '#243' Ciudad'
                DataBinding.FieldName = 'CargoCiudad'
                Width = 125
              end
              object cxGrid1DBTableView1ComboId: TcxGridDBColumn
                Caption = 'PruebaId'
                DataBinding.FieldName = 'ComboId'
                Width = 85
              end
            end
            object cxGrid1Level1: TcxGridLevel
              GridView = cxGrid1DBTableView1
            end
          end
          object dxLayoutControl2Group_Root: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutControl2Group2: TdxLayoutGroup
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              Caption = 'Lineas'
              ShowCaption = False
              ShowBorder = False
              object dxLayoutControl2Item4: TdxLayoutItem
                AutoAligns = [aaHorizontal]
                AlignVert = avClient
                Caption = 'cxGrid1'
                ShowCaption = False
                Control = cxGrid1
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutControl2Group3: TdxLayoutGroup
              Caption = 'Apoyo'
              ShowCaption = False
              LayoutDirection = ldHorizontal
              object dxLayoutControl2Group4: TdxLayoutGroup
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                Caption = 'Comentario'
                ShowCaption = False
                ShowBorder = False
              end
            end
          end
          object dxLayoutControl2Group1: TdxLayoutGroup
            Caption = 'Datos'
            ShowCaption = False
            LayoutDirection = ldHorizontal
          end
        end
      end
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      object dxLayoutControl1Group1: TdxLayoutGroup
        AutoAligns = []
        AlignHorz = ahClient
        AlignVert = avClient
        Caption = 'dgDatos'
        ShowCaption = False
        ShowBorder = False
        object dxLayoutControl1Item1: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avClient
          Caption = 'cxPageControl1'
          ShowCaption = False
          Control = cxPageControl1
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Group2: TdxLayoutGroup
        AutoAligns = []
        AlignHorz = ahRight
        AlignVert = avClient
        Caption = 'dgBotones'
        LookAndFeel = dmAppActions.lnfButtonGroup
        ShowCaption = False
      end
    end
  end
  inherited formStorage: TJvFormStorage
    Left = 128
    Top = 202
  end
  inherited alEdit: TActionList
    Top = 8
  end
  inherited pmCustom: TPopupMenu
    Top = 4
  end
  object qrEntradaPaciente: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *  from PTClientesPlanesTemporal')
    Left = 448
    Top = 8
    object qrEntradaPacienteNumero: TIntegerField
      FieldName = 'Numero'
    end
    object qrEntradaPacienteEmpresaID: TStringField
      FieldName = 'EmpresaID'
      Size = 10
    end
    object qrEntradaPacienteDepartamento: TStringField
      FieldName = 'Departamento'
      Size = 50
    end
    object qrEntradaPacienteFiller1: TStringField
      FieldName = 'Filler1'
      Size = 10
    end
    object qrEntradaPacienteEmpleadoID: TStringField
      FieldName = 'EmpleadoID'
      Size = 10
    end
    object qrEntradaPacienteNombre: TStringField
      FieldName = 'Nombre'
      Size = 50
    end
    object qrEntradaPacienteEdad: TIntegerField
      FieldName = 'Edad'
    end
    object qrEntradaPacienteSexo: TStringField
      FieldName = 'Sexo'
      FixedChar = True
      Size = 1
    end
    object qrEntradaPacienteSucursal: TStringField
      FieldName = 'Sucursal'
      Size = 5
    end
    object qrEntradaPacienteCargoCiudad: TStringField
      FieldName = 'CargoCiudad'
      Size = 30
    end
    object qrEntradaPacienteFiller2: TStringField
      FieldName = 'Filler2'
      Size = 10
    end
    object qrEntradaPacienteClienteID: TStringField
      FieldName = 'ClienteID'
      Size = 10
    end
    object qrEntradaPacienteComboId: TStringField
      FieldName = 'ComboId'
      Size = 50
    end
  end
  object dsEntradaPaciente: TDataSource
    AutoEdit = False
    DataSet = qrEntradaPaciente
    Left = 528
    Top = 8
  end
  object cxGridStyles: TcxStyleRepository
    Left = 544
    Top = 300
    object stGrDatos: TcxStyle
      AssignedValues = [svColor]
      Color = clInfoBk
    end
    object stGrEdit: TcxStyle
    end
  end
end
