inherited frmSeguimientoCodigoBarra: TfrmSeguimientoCodigoBarra
  Caption = 'Pantalla de Seguimiento de Codigos de Barra (LABELS).'
  ClientHeight = 588
  ClientWidth = 970
  KeyPreview = True
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
            Top = 52
            Width = 824
            Height = 464
            TabOrder = 4
            LookAndFeel.Kind = lfUltraFlat
            LookAndFeel.NativeStyle = True
            object cxGrid1DBTableView1: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = dsDatos
              DataController.KeyFieldNames = 'Recid'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnFiltering = False
              OptionsData.Deleting = False
              OptionsData.Inserting = False
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              object cxGrid1DBTableView1Sucursal: TcxGridDBColumn
                Caption = 'Suc'
                DataBinding.FieldName = 'Sucursal'
                Options.Editing = False
                Width = 40
              end
              object cxGrid1DBTableView1EntradaId: TcxGridDBColumn
                Caption = 'Registro No.'
                DataBinding.FieldName = 'EntradaId'
                Options.Editing = False
                Width = 90
              end
              object cxGrid1DBTableView1MuestraNo: TcxGridDBColumn
                Caption = 'Muestra No.'
                DataBinding.FieldName = 'MuestraNo'
                Options.Editing = False
                Width = 90
              end
              object cxGrid1DBTableView1PruebaID: TcxGridDBColumn
                Caption = 'Prueba'
                DataBinding.FieldName = 'PruebaID'
                Options.Editing = False
                Width = 90
              end
              object cxGrid1DBTableView1DeptId: TcxGridDBColumn
                DataBinding.FieldName = 'DeptId'
                PropertiesClassName = 'TcxImageComboBoxProperties'
                Properties.Items = <
                  item
                    Description = 'Por Tomar'
                    ImageIndex = 0
                    Value = '0'
                  end
                  item
                    Description = 'Tomada'
                    Value = 'T'
                  end
                  item
                    Description = 'Pendiente'
                    Value = 'P'
                  end
                  item
                    Description = 'En Proceso'
                    Value = 'E'
                  end
                  item
                    Description = 'No Procesar'
                    Value = 'N'
                  end
                  item
                    Description = 'Reportada'
                    Value = 'R'
                  end
                  item
                    Description = 'Entregada'
                    Value = 'G'
                  end>
                RepositoryItem = DM.elcDepartamento
                Options.Editing = False
                Width = 125
              end
              object cxGrid1DBTableView1Accion: TcxGridDBColumn
                DataBinding.FieldName = 'Accion'
                PropertiesClassName = 'TcxImageComboBoxProperties'
                Properties.Items = <
                  item
                    Description = 'Toma de Muestra'
                    ImageIndex = 0
                    Value = 0
                  end
                  item
                    Description = 'Entrada'
                    Value = 1
                  end
                  item
                    Description = 'Salida'
                    Value = 2
                  end
                  item
                    Description = 'Re-Imprimir Label'
                    Value = 3
                  end>
                Width = 125
              end
              object cxGrid1DBTableView1Secuencia: TcxGridDBColumn
                Caption = 'Label'
                DataBinding.FieldName = 'Secuencia'
                Options.Editing = False
                Width = 35
              end
              object cxGrid1DBTableView1Userid: TcxGridDBColumn
                DataBinding.FieldName = 'Userid'
                Width = 50
              end
              object cxGrid1DBTableView1Fecha: TcxGridDBColumn
                DataBinding.FieldName = 'Fecha'
                Width = 100
              end
              object cxGrid1DBTableView1Hora: TcxGridDBColumn
                DataBinding.FieldName = 'Hora'
                Width = 100
              end
            end
            object cxGrid1Level1: TcxGridLevel
              GridView = cxGrid1DBTableView1
            end
          end
          object EdDepto: TcxExtLookupComboBox
            Left = 95
            Top = 18
            RepositoryItem = DM.elcDepartamento
            Properties.CharCase = ecUpperCase
            Properties.OnChange = EdDeptoPropertiesChange
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 0
            OnEnter = EdDeptoPropertiesChange
            OnExit = EdDeptoPropertiesChange
            Width = 145
          end
          object EdLabel: TcxTextEdit
            Left = 300
            Top = 18
            Properties.CharCase = ecUpperCase
            Properties.OnChange = EdLabelPropertiesChange
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 1
            OnEnter = EdLabelPropertiesChange
            OnExit = EdLabelPropertiesChange
            Width = 135
          end
          object EdMuestra: TcxTextEdit
            Left = 507
            Top = 18
            Properties.CharCase = ecUpperCase
            Properties.OnChange = EdMuestraPropertiesChange
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 2
            OnEnter = EdMuestraPropertiesChange
            OnExit = EdMuestraPropertiesChange
            Width = 135
          end
          object EdFecha: TcxDateEdit
            Left = 683
            Top = 18
            Properties.OnChange = EdFechaPropertiesChange
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 3
            OnEnter = EdFechaPropertiesChange
            OnExit = EdFechaPropertiesChange
            Width = 135
          end
          object dxLayoutControl2Group_Root: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutControl2Group1: TdxLayoutGroup
              Caption = 'Datos'
              ShowCaption = False
              LayoutDirection = ldHorizontal
              object dxLayoutControl2Item10: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Departamento'
                Control = EdDepto
                ControlOptions.AutoAlignment = False
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl2Item3: TdxLayoutItem
                Caption = 'Label No.:'
                Control = EdLabel
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl2Item1: TdxLayoutItem
                Caption = 'Muestra No.:'
                Control = EdMuestra
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl2Item2: TdxLayoutItem
                Caption = 'Fecha'
                Control = EdFecha
                ControlOptions.ShowBorder = False
              end
            end
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
        end
      end
    end
    object BtImprimir: TcxButton
      Left = 858
      Top = 7
      Width = 100
      Height = 25
      Caption = 'Imprimir Label'
      TabOrder = 1
      OnClick = BtImprimirClick
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = True
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
        object dxLayoutControl1Item5: TdxLayoutItem
          Caption = 'cxButton4'
          ShowCaption = False
          Control = BtImprimir
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  inherited formStorage: TJvFormStorage
    Left = 128
    Top = 202
  end
  inherited alEdit: TActionList
    Left = 340
    Top = 184
  end
  inherited pmCustom: TPopupMenu
    Left = 236
    Top = 140
  end
  object cxGridStyles: TcxStyleRepository
    Left = 328
    Top = 292
    object stGrDatos: TcxStyle
      AssignedValues = [svColor]
      Color = clInfoBk
    end
    object stGrEdit: TcxStyle
    end
  end
  object qrLabels: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM PTLabelSeguimiento'
      'ORDER BY DeptId, MuestraNo, RefRecid, Secuencia, PruebaId')
    Left = 424
    Top = 242
    object qrLabelsMuestraNo: TStringField
      FieldName = 'MuestraNo'
    end
    object qrLabelsPruebaID: TStringField
      FieldName = 'PruebaID'
    end
    object qrLabelsrecid: TLargeintField
      FieldName = 'recid'
    end
    object qrLabelsSecuencia: TIntegerField
      FieldName = 'Secuencia'
    end
    object qrLabelsRefRecid: TLargeintField
      FieldName = 'RefRecid'
    end
    object qrLabelsSucursal: TStringField
      FieldName = 'Sucursal'
      Size = 10
    end
    object qrLabelsDeptId: TStringField
      FieldName = 'DeptId'
      Size = 10
    end
    object qrLabelsUserid: TStringField
      FieldName = 'Userid'
      Size = 10
    end
    object qrLabelsFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object qrLabelsHora: TStringField
      FieldName = 'Hora'
    end
    object qrLabelsAccion: TIntegerField
      FieldName = 'Accion'
    end
    object qrLabelsLabel: TStringField
      FieldName = 'Label'
    end
  end
  object dsDatos: TDataSource
    DataSet = qrLabels
    Left = 500
    Top = 242
  end
end
