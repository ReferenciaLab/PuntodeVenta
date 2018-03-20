inherited frmRegistrarMuestras: TfrmRegistrarMuestras
  Caption = 'Registrar el Proceso de las Muestras'
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
              DataController.DataSource = dsDatosTemp
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
                Width = 100
              end
              object cxGrid1DBTableView1EntradaId: TcxGridDBColumn
                Caption = 'Registro No.'
                DataBinding.FieldName = 'EntradaId'
                Options.Editing = False
                Width = 100
              end
              object cxGrid1DBTableView1MuestraNo: TcxGridDBColumn
                Caption = 'Muestra No.'
                DataBinding.FieldName = 'MuestraNo'
                Options.Editing = False
                Width = 100
              end
              object cxGrid1DBTableView1PruebaID: TcxGridDBColumn
                Caption = 'Prueba'
                DataBinding.FieldName = 'PruebaID'
                Options.Editing = False
                Width = 100
              end
              object cxGrid1DBTableView1Descripcion: TcxGridDBColumn
                Caption = 'Nombre de la Prueba'
                DataBinding.FieldName = 'Descripcion'
                Options.Editing = False
                Width = 175
              end
              object cxGrid1DBTableView1FechaEntrega: TcxGridDBColumn
                DataBinding.FieldName = 'FechaEntrega'
                Options.Editing = False
                Width = 90
              end
              object cxGrid1DBTableView1HoraEntrega: TcxGridDBColumn
                DataBinding.FieldName = 'HoraEntrega'
                Options.Editing = False
                Width = 90
              end
              object cxGrid1DBTableView1Secuencia: TcxGridDBColumn
                Caption = 'Label'
                DataBinding.FieldName = 'Secuencia'
                Options.Editing = False
                Width = 40
              end
              object cxGrid1DBTableView1Comentario: TcxGridDBColumn
                DataBinding.FieldName = 'Comentario'
                PropertiesClassName = 'TcxBlobEditProperties'
                Properties.BlobEditKind = bekMemo
                Properties.MemoCharCase = ecUpperCase
                Properties.MemoMaxLength = 150
                Properties.MemoWantReturns = False
                Properties.MemoWantTabs = False
                Properties.ReadOnly = False
                Width = 60
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
    object BtEntrada: TcxButton
      Left = 848
      Top = 7
      Width = 110
      Height = 25
      Hint = 'Entrada al Departamento'
      Caption = 'F5 = E N T R A D A'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BtEntradaClick
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = True
    end
    object BtSalida: TcxButton
      Left = 848
      Top = 38
      Width = 110
      Height = 25
      Hint = 'Salida del Departamento'
      Caption = 'F8   =   S A L I D A'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = BtSalidaClick
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = True
    end
    object BtImprimir: TcxButton
      Left = 848
      Top = 69
      Width = 110
      Height = 25
      Hint = 'Imprimir el Label de Esta Prueba'
      Caption = 'F9 = Imprimir Label'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
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
        object dxLayoutControl1Item2: TdxLayoutItem
          Caption = 'cxButton1'
          ShowCaption = False
          Control = BtEntrada
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item4: TdxLayoutItem
          Caption = 'cxButton3'
          ShowCaption = False
          Control = BtSalida
          ControlOptions.ShowBorder = False
        end
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
    OnCalcFields = qrLabelsCalcFields
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM PTLabel'
      'ORDER BY DeptId, MuestraNo, PruebaId, Recid')
    Left = 512
    Top = 154
    object qrLabelsEntradaId: TStringField
      FieldName = 'EntradaId'
    end
    object qrLabelsMuestraNo: TStringField
      FieldName = 'MuestraNo'
    end
    object qrLabelsPruebaID: TStringField
      FieldName = 'PruebaID'
    end
    object qrLabelsDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 80
    end
    object qrLabelsSecuencia: TLargeintField
      FieldName = 'Secuencia'
    end
    object qrLabelsSucursal: TStringField
      FieldName = 'Sucursal'
      Size = 10
    end
    object qrLabelsDeptId: TStringField
      DisplayLabel = 'Departamento'
      FieldName = 'DeptId'
      Size = 10
    end
    object qrLabelsPacienteId: TStringField
      FieldName = 'PacienteId'
      Size = 10
    end
    object qrLabelsFechaEntrega: TStringField
      DisplayLabel = 'FechaPrometida'
      FieldKind = fkCalculated
      FieldName = 'FechaEntrega'
      Size = 30
      Calculated = True
    end
    object qrLabelsHoraEntrega: TStringField
      DisplayLabel = 'Hora Prometida'
      FieldKind = fkCalculated
      FieldName = 'HoraEntrega'
      Calculated = True
    end
    object qrLabelsLabel: TStringField
      FieldName = 'Label'
    end
    object qrLabelsComentario: TStringField
      FieldKind = fkCalculated
      FieldName = 'Comentario'
      Size = 255
      Calculated = True
    end
    object qrLabelsRecId: TIntegerField
      FieldName = 'RecId'
    end
    object qrLabelsRecordId: TLargeintField
      FieldName = 'RecordId'
    end
  end
  object dsDatos: TDataSource
    DataSet = qrLabels
    Left = 588
    Top = 154
  end
  object qrLabelsTemp: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    OnCalcFields = qrLabelsTempCalcFields
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM PTLabelTemp'
      'ORDER BY DeptId, MuestraNo, PruebaId, Recid')
    Left = 512
    Top = 216
    object qrLabelsTempPacienteId: TStringField
      FieldName = 'PacienteId'
      Size = 10
    end
    object qrLabelsTempSucursal: TStringField
      FieldName = 'Sucursal'
      Size = 10
    end
    object qrLabelsTempEntradaId: TStringField
      FieldName = 'EntradaId'
    end
    object qrLabelsTempMuestraNo: TStringField
      FieldName = 'MuestraNo'
    end
    object qrLabelsTempPruebaID: TStringField
      FieldName = 'PruebaID'
    end
    object qrLabelsTempDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 80
    end
    object qrLabelsTempAbreviacion: TStringField
      FieldName = 'Abreviacion'
    end
    object qrLabelsTempDescripcionLabel: TStringField
      FieldName = 'DescripcionLabel'
      Size = 80
    end
    object qrLabelsTempDeptId: TStringField
      FieldName = 'DeptId'
      Size = 10
    end
    object qrLabelsTempMedio: TIntegerField
      FieldName = 'Medio'
    end
    object qrLabelsTempColor: TIntegerField
      FieldName = 'Color'
    end
    object qrLabelsTempLabel: TStringField
      FieldName = 'Label'
    end
    object qrLabelsTempLabelGlobal: TStringField
      FieldName = 'LabelGlobal'
    end
    object qrLabelsTempLabelUnico: TStringField
      FieldName = 'LabelUnico'
    end
    object qrLabelsTempSecuenciaAct: TIntegerField
      FieldName = 'SecuenciaAct'
    end
    object qrLabelsTempNumero: TIntegerField
      FieldName = 'Numero'
    end
    object qrLabelsTempSecuencia: TIntegerField
      FieldName = 'Secuencia'
    end
    object qrLabelsTempFechaEntrega: TStringField
      FieldKind = fkCalculated
      FieldName = 'FechaEntrega'
      Size = 30
      Calculated = True
    end
    object qrLabelsTempHoraEntrega: TStringField
      FieldKind = fkCalculated
      FieldName = 'HoraEntrega'
      Calculated = True
    end
    object qrLabelsTempComentario: TStringField
      FieldKind = fkCalculated
      FieldName = 'Comentario'
      Size = 255
      Calculated = True
    end
    object qrLabelsTempTipoMuestra: TStringField
      FieldName = 'TipoMuestra'
      Size = 10
    end
    object qrLabelsTempRecId: TIntegerField
      FieldName = 'RecId'
    end
  end
  object dsDatosTemp: TDataSource
    DataSet = qrLabelsTemp
    Left = 588
    Top = 216
  end
end
