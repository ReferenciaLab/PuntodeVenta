inherited frmTomaMuestrasBackup: TfrmTomaMuestrasBackup
  Caption = 'Toma de Muestra.'
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
            Height = 350
            TabOrder = 3
            LookAndFeel.Kind = lfUltraFlat
            LookAndFeel.NativeStyle = True
            object cxGrid1DBTableView1: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = dsEntradaPacienteDetalle
              DataController.KeyFieldNames = 'Secuencia'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnFiltering = False
              OptionsData.Deleting = False
              OptionsData.Inserting = False
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              Styles.OnGetContentStyle = cxGrid1DBTableView1StylesGetContentStyle
              object cxGrid1DBTableView1Seleccionar: TcxGridDBColumn
                Caption = 'Pend.'
                DataBinding.FieldName = 'Seleccionar'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Width = 41
              end
              object cxGrid1DBTableView1PruebaID: TcxGridDBColumn
                Caption = 'Prueba'
                DataBinding.FieldName = 'PruebaID'
                Options.Editing = False
                Width = 71
              end
              object cxGrid1DBTableView1Descripcion: TcxGridDBColumn
                Caption = 'Nombre de la Prueba'
                DataBinding.FieldName = 'Descripcion'
                Options.Editing = False
                Width = 164
              end
              object cxGrid1DBTableView1UnidadMuestra: TcxGridDBColumn
                Caption = 'Unidad'
                DataBinding.FieldName = 'UnidadMuestra'
                Width = 58
              end
              object cxGrid1DBTableView1FlebotomistaId: TcxGridDBColumn
                Caption = 'Flebotomista'
                DataBinding.FieldName = 'FlebotomistaId'
                RepositoryItem = DM.elcFlebotomista
                Width = 125
              end
              object cxGrid1DBTableView1FechaEntrega: TcxGridDBColumn
                Caption = 'Fecha Prometida'
                DataBinding.FieldName = 'FechaEntrega'
                Width = 73
              end
              object cxGrid1DBTableView1HoraEntrega: TcxGridDBColumn
                Caption = 'Hora Prometida'
                DataBinding.FieldName = 'HoraEntrega'
                PropertiesClassName = 'TcxTimeEditProperties'
                Properties.TimeFormat = tfHourMin
                Properties.Use24HourFormat = False
                Width = 66
              end
              object cxGrid1DBTableView1Estatus: TcxGridDBColumn
                DataBinding.FieldName = 'Estatus'
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
                Options.Editing = False
                Width = 66
              end
              object cxGrid1DBTableView1CodigoCupID: TcxGridDBColumn
                Caption = 'Codigo ARS'
                DataBinding.FieldName = 'CodigoCupID'
                Options.Editing = False
                Width = 72
              end
              object cxGrid1DBTableView1Urgente: TcxGridDBColumn
                Caption = 'Urg.'
                DataBinding.FieldName = 'Urgente'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.ReadOnly = True
                Options.Editing = False
                Width = 33
              end
              object cxGrid1DBTableView1ComentarioMuestra: TcxGridDBColumn
                DataBinding.FieldName = 'ComentarioMuestra'
                PropertiesClassName = 'TcxBlobEditProperties'
                Properties.BlobEditKind = bekMemo
                Properties.MemoCharCase = ecUpperCase
                Properties.MemoMaxLength = 200
                Properties.MemoWantTabs = False
                Properties.ReadOnly = False
                Width = 53
              end
            end
            object cxGrid1Level1: TcxGridLevel
              GridView = cxGrid1DBTableView1
            end
          end
          object cxDBTextEdit1: TcxDBTextEdit
            Left = 205
            Top = 415
            AutoSize = False
            DataBinding.DataField = 'CondPac'
            DataBinding.DataSource = dsEntradaPacienteDetalle
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 4
            Height = 21
            Width = 225
          end
          object cxDBTextEdit2: TcxDBTextEdit
            Left = 205
            Top = 442
            AutoSize = False
            DataBinding.DataField = 'CondMuestra'
            DataBinding.DataSource = dsEntradaPacienteDetalle
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 5
            Height = 21
            Width = 225
          end
          object cxDBTextEdit3: TcxDBTextEdit
            Left = 205
            Top = 469
            AutoSize = False
            DataBinding.DataField = 'DiasProcesamiento'
            DataBinding.DataSource = dsEntradaPacienteDetalle
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 6
            Height = 21
            Width = 225
          end
          object cxDBTextEdit4: TcxDBTextEdit
            Left = 205
            Top = 496
            DataBinding.DataField = 'DiasResultado'
            DataBinding.DataSource = dsEntradaPacienteDetalle
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 7
            Width = 121
          end
          object EdMuestra: TcxDBTextEdit
            Left = 540
            Top = 18
            Hint = 'Haga Doble Click para Activar la Consulta'
            DataBinding.DataField = 'MUESTRANO'
            DataBinding.DataSource = dsEntradaPaciente
            ParentShowHint = False
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            ShowHint = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 1
            OnDblClick = EdMuestraDblClick
            Width = 121
          end
          object cxDBTextEdit6: TcxDBTextEdit
            Left = 702
            Top = 18
            DataBinding.DataField = 'FECHA'
            DataBinding.DataSource = dsEntradaPaciente
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 2
            Width = 121
          end
          object cxDBTextEdit7: TcxDBTextEdit
            Left = 205
            Top = 18
            AutoSize = False
            DataBinding.DataField = 'NOMBREPACIENTE'
            DataBinding.DataSource = dsEntradaPaciente
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 0
            Height = 21
            Width = 300
          end
          object cxGrid2: TcxGrid
            Left = 436
            Top = 415
            Width = 387
            Height = 114
            TabOrder = 8
            LookAndFeel.Kind = lfUltraFlat
            LookAndFeel.NativeStyle = True
            object cxGrid2DBTableView2: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = dsDatos
              DataController.KeyFieldNames = 'LineaNo'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnFiltering = False
              OptionsData.Deleting = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              object cxGrid2DBTableView2Descripcion: TcxGridDBColumn
                Caption = 'Descripcion del Material'
                DataBinding.FieldName = 'Descripcion'
                MinWidth = 250
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringMRUItemsList = False
                Options.Focusing = False
                Options.IncSearch = False
                Options.Grouping = False
                Options.HorzSizing = False
                Options.Moving = False
                Options.Sorting = False
                Width = 250
              end
              object cxGrid2DBTableView2Color: TcxGridDBColumn
                DataBinding.FieldName = 'Color'
                MinWidth = 85
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringMRUItemsList = False
                Options.Focusing = False
                Options.IncSearch = False
                Options.Grouping = False
                Options.HorzSizing = False
                Options.Moving = False
                Width = 85
              end
              object cxGrid2DBTableView2Cantidad: TcxGridDBColumn
                DataBinding.FieldName = 'Cantidad'
                PropertiesClassName = 'TcxSpinEditProperties'
                Properties.AssignedValues.DisplayFormat = True
                Properties.AssignedValues.EditFormat = True
                HeaderAlignmentHorz = taCenter
                MinWidth = 50
                Options.Editing = False
                Options.Filtering = False
                Options.FilteringMRUItemsList = False
                Options.IncSearch = False
                Options.Grouping = False
                Options.HorzSizing = False
                Options.Moving = False
                Options.Sorting = False
                Width = 50
              end
            end
            object cxGrid2Level1: TcxGridLevel
              GridView = cxGrid2DBTableView2
            end
          end
          object dxLayoutControl2Group_Root: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutControl2Group1: TdxLayoutGroup
              Caption = 'Datos'
              ShowCaption = False
              LayoutDirection = ldHorizontal
              object dxLayoutControl2Item3: TdxLayoutItem
                AutoAligns = []
                AlignHorz = ahClient
                Caption = 'Nombre del Paciente'
                Control = cxDBTextEdit7
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl2Item1: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Muestra No.'
                Control = EdMuestra
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl2Item2: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Fecha'
                Control = cxDBTextEdit6
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
              object dxLayoutControl2Group5: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object dxLayoutControl2Item5: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Condiciones del Paciente'
                  Control = cxDBTextEdit1
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl2Item6: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Condiciones y Volumen de la Muestra'
                  Control = cxDBTextEdit2
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl2Item7: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Dias de Procesamiento'
                  Control = cxDBTextEdit3
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl2Item8: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Dias para Resultado'
                  Control = cxDBTextEdit4
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl2Group4: TdxLayoutGroup
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                Caption = 'Comentario'
                ShowCaption = False
                ShowBorder = False
                object dxLayoutControl2Item9: TdxLayoutItem
                  Control = cxGrid2
                  ControlOptions.ShowBorder = False
                end
              end
            end
          end
        end
      end
    end
    object BtFactura: TcxButton
      Left = 858
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Buscar Facturas'
      TabOrder = 1
      OnClick = BtFacturaClick
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = True
    end
    object BtProcesar: TcxButton
      Left = 858
      Top = 38
      Width = 100
      Height = 25
      Caption = 'Procesar Pruebas'
      TabOrder = 2
      OnClick = BtProcesarClick
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = True
    end
    object BtImprimir: TcxButton
      Left = 858
      Top = 69
      Width = 100
      Height = 25
      Caption = 'Imprimir Labels'
      TabOrder = 3
      OnClick = BtImprimirClick
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = True
    end
    object BtUrgente: TcxButton
      Left = 858
      Top = 100
      Width = 100
      Height = 25
      Caption = 'Marcar Urgente'
      TabOrder = 4
      OnClick = BtUrgenteClick
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = True
    end
    object BtNoProcesar: TcxButton
      Left = 858
      Top = 162
      Width = 100
      Height = 25
      Caption = 'NO Procesar'
      TabOrder = 6
      OnClick = BtNoProcesarClick
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = True
    end
    object BtPendiente: TcxButton
      Left = 858
      Top = 131
      Width = 100
      Height = 25
      Caption = 'Poner Pendiente'
      TabOrder = 5
      OnClick = BtPendienteClick
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = True
    end
    object BtLabelUnico: TcxButton
      Left = 858
      Top = 193
      Width = 100
      Height = 25
      Caption = 'Label Unico'
      TabOrder = 7
      OnClick = BtLabelUnicoClick
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
          Control = BtFactura
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item4: TdxLayoutItem
          Caption = 'cxButton3'
          ShowCaption = False
          Control = BtProcesar
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item5: TdxLayoutItem
          Caption = 'cxButton4'
          ShowCaption = False
          Control = BtImprimir
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item6: TdxLayoutItem
          Caption = 'cxButton1'
          ShowCaption = False
          Control = BtUrgente
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item8: TdxLayoutItem
          Caption = 'cxButton1'
          ShowCaption = False
          Control = BtPendiente
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item7: TdxLayoutItem
          Caption = 'cxButton2'
          ShowCaption = False
          Control = BtNoProcesar
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item3: TdxLayoutItem
          Caption = 'cxButton1'
          ShowCaption = False
          Control = BtLabelUnico
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
  object qrEntradaPaciente: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'rec'
        Attributes = [paSigned, paNullable]
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = Null
      end>
    SQL.Strings = (
      'Select *  from PTEntradaPaciente'
      'Where recid = :rec')
    Left = 424
    Top = 144
    object qrEntradaPacienteENTRADAID: TStringField
      FieldName = 'ENTRADAID'
    end
    object qrEntradaPacienteFECHA: TDateTimeField
      FieldName = 'FECHA'
    end
    object qrEntradaPacienteHORAENTRADA: TStringField
      FieldName = 'HORAENTRADA'
    end
    object qrEntradaPacientePACIENTEID: TStringField
      FieldName = 'PACIENTEID'
      Size = 10
    end
    object qrEntradaPacienteCLIENTEID: TStringField
      FieldName = 'CLIENTEID'
      Size = 10
    end
    object qrEntradaPacienteDOCTORID: TStringField
      FieldName = 'DOCTORID'
      Size = 10
    end
    object qrEntradaPacientePOLIZAID: TStringField
      FieldName = 'POLIZAID'
      Size = 10
    end
    object qrEntradaPacienteENCLINICA: TIntegerField
      FieldName = 'ENCLINICA'
    end
    object qrEntradaPacienteRECORDCLINICA: TStringField
      FieldName = 'RECORDCLINICA'
    end
    object qrEntradaPacienteNUMEROHABITACION: TStringField
      FieldName = 'NUMEROHABITACION'
    end
    object qrEntradaPacienteFECHAENTRADA: TDateTimeField
      FieldName = 'FECHAENTRADA'
    end
    object qrEntradaPacienteFECHADEALTA: TDateTimeField
      FieldName = 'FECHADEALTA'
    end
    object qrEntradaPacienteRESULTADOPACIENTE: TIntegerField
      FieldName = 'RESULTADOPACIENTE'
    end
    object qrEntradaPacienteRESULTADODOCTOR: TIntegerField
      FieldName = 'RESULTADODOCTOR'
    end
    object qrEntradaPacienteFECHAPROMETIDA: TDateTimeField
      FieldName = 'FECHAPROMETIDA'
    end
    object qrEntradaPacienteHORAPROMETIDA: TStringField
      FieldName = 'HORAPROMETIDA'
    end
    object qrEntradaPacienteFLEBOTOMISTAID: TStringField
      FieldName = 'FLEBOTOMISTAID'
      Size = 10
    end
    object qrEntradaPacientePROYECTOID: TStringField
      FieldName = 'PROYECTOID'
      Size = 10
    end
    object qrEntradaPacienteRECORDID: TIntegerField
      FieldName = 'RECORDID'
    end
    object qrEntradaPacienteBRUTO: TBCDField
      FieldName = 'BRUTO'
      DisplayFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDESCUENTO: TBCDField
      FieldName = 'DESCUENTO'
      DisplayFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteSUBTOTAL: TBCDField
      FieldName = 'SUBTOTAL'
      DisplayFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteNETO: TBCDField
      FieldName = 'NETO'
      DisplayFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteTOTALPAGADO: TBCDField
      FieldName = 'TOTALPAGADO'
      DisplayFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteCOBERTURAPORC: TBCDField
      FieldName = 'COBERTURAPORC'
      DisplayFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteCOBERTURASEGURO: TBCDField
      FieldName = 'COBERTURASEGURO'
      DisplayFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteCOBERTURAVALOR: TBCDField
      FieldName = 'COBERTURAVALOR'
      DisplayFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDESCUENTOPORC: TBCDField
      FieldName = 'DESCUENTOPORC'
      DisplayFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDESCUENTOVALOR: TBCDField
      FieldName = 'DESCUENTOVALOR'
      DisplayFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDESCUENTOBONO: TBCDField
      FieldName = 'DESCUENTOBONO'
      DisplayFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteTotalPendiente: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TotalPendiente'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object qrEntradaPacienteNOMBREPACIENTE: TStringField
      FieldName = 'NOMBREPACIENTE'
      Size = 80
    end
    object qrEntradaPacienteTELEFONOS: TStringField
      FieldName = 'TELEFONOS'
    end
    object qrEntradaPacienteTELEFONO2: TStringField
      FieldName = 'TELEFONO2'
    end
    object qrEntradaPacienteEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object qrEntradaPacienteCLIENTENOMBRE: TStringField
      FieldName = 'CLIENTENOMBRE'
      Size = 80
    end
    object qrEntradaPacienteSUCURSALID: TStringField
      FieldName = 'SUCURSALID'
      Size = 10
    end
    object qrEntradaPacienteUSERID: TStringField
      FieldName = 'USERID'
      Size = 10
    end
    object qrEntradaPacienteCOBROID: TStringField
      FieldName = 'COBROID'
      Size = 10
    end
    object qrEntradaPacientePRIORIDAD: TIntegerField
      FieldName = 'PRIORIDAD'
    end
    object qrEntradaPacienteFAX: TStringField
      FieldName = 'FAX'
    end
    object qrEntradaPacienteTIPODOCUMENTO: TIntegerField
      FieldName = 'TIPODOCUMENTO'
    end
    object qrEntradaPacienteORIGEN: TStringField
      FieldName = 'ORIGEN'
      Size = 10
    end
    object qrEntradaPacienteAPROBACIONNO: TStringField
      FieldName = 'APROBACIONNO'
    end
    object qrEntradaPacienteAPROBACIONPOR: TStringField
      FieldName = 'APROBACIONPOR'
      Size = 10
    end
    object qrEntradaPacienteCOBERTURARECHAZADA: TIntegerField
      FieldName = 'COBERTURARECHAZADA'
    end
    object qrEntradaPacienteCOBERTURACONFIRMADA: TIntegerField
      FieldName = 'COBERTURACONFIRMADA'
    end
    object qrEntradaPacienteFECHAASEGURADORA: TDateTimeField
      FieldName = 'FECHAASEGURADORA'
    end
    object qrEntradaPacienteMUESTRANO: TStringField
      FieldName = 'MUESTRANO'
    end
    object qrEntradaPacienteMONEDAID: TStringField
      FieldName = 'MONEDAID'
      Size = 3
    end
    object qrEntradaPacienteCOBERTURAEXPPORC: TIntegerField
      FieldName = 'COBERTURAEXPPORC'
    end
    object qrEntradaPacienteEDADPACIENTE: TIntegerField
      FieldName = 'EDADPACIENTE'
    end
    object qrEntradaPacienteSEXO: TIntegerField
      FieldName = 'SEXO'
    end
    object qrEntradaPacienteNOMBREDOCTOR: TStringField
      FieldName = 'NOMBREDOCTOR'
      Size = 80
    end
    object qrEntradaPacientePUBLICARINTERNET: TIntegerField
      FieldName = 'PUBLICARINTERNET'
    end
    object qrEntradaPacienteCARNET: TStringField
      FieldName = 'CARNET'
    end
    object qrEntradaPacientePUBLICARINTERNETDOCTOR: TIntegerField
      FieldName = 'PUBLICARINTERNETDOCTOR'
    end
    object qrEntradaPacienteCUADREGLOBAL: TStringField
      FieldName = 'CUADREGLOBAL'
    end
    object qrEntradaPacienteCUADREUSUARIO: TStringField
      FieldName = 'CUADREUSUARIO'
    end
    object qrEntradaPacienteDESCAUTORIZADOPOR: TStringField
      FieldName = 'DESCAUTORIZADOPOR'
      Size = 10
    end
    object qrEntradaPacienteGASTOSVARIOS: TBCDField
      FieldName = 'GASTOSVARIOS'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteNOAS400: TIntegerField
      FieldName = 'NOAS400'
    end
    object qrEntradaPacienteNOAXAPTA: TIntegerField
      FieldName = 'NOAXAPTA'
    end
    object qrEntradaPacienteNOFACTURA: TIntegerField
      FieldName = 'NOFACTURA'
    end
    object qrEntradaPacienteFACTEXTERIOR: TIntegerField
      FieldName = 'FACTEXTERIOR'
    end
    object qrEntradaPacienteHOLD: TIntegerField
      FieldName = 'HOLD'
    end
    object qrEntradaPacienteREPMUESTRA: TIntegerField
      FieldName = 'REPMUESTRA'
    end
    object qrEntradaPacienteENTRADAIDANT: TStringField
      FieldName = 'ENTRADAIDANT'
    end
    object qrEntradaPacienteTIPOENTRADA: TStringField
      FieldName = 'TIPOENTRADA'
      Size = 2
    end
    object qrEntradaPacienteFORMADEPAGO: TStringField
      FieldName = 'FORMADEPAGO'
    end
    object qrEntradaPacienteDESCUENTOCARD: TStringField
      FieldName = 'DESCUENTOCARD'
      Size = 30
    end
    object qrEntradaPacienteDESCUENTOTEXTO: TStringField
      FieldName = 'DESCUENTOTEXTO'
      Size = 30
    end
    object qrEntradaPacienteACUERDOPROPIO: TIntegerField
      FieldName = 'ACUERDOPROPIO'
    end
    object qrEntradaPacienteCLIENTEPADRE: TStringField
      FieldName = 'CLIENTEPADRE'
      Size = 10
    end
    object qrEntradaPacienteDESCUENTOPLANID: TStringField
      FieldName = 'DESCUENTOPLANID'
      Size = 10
    end
    object qrEntradaPacienteFECHAREGISTRO: TDateTimeField
      FieldName = 'FECHAREGISTRO'
    end
    object qrEntradaPacienteHORAREGISTRO: TStringField
      FieldName = 'HORAREGISTRO'
    end
    object qrEntradaPacienteTASA: TBCDField
      FieldName = 'TASA'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteESTATUS: TIntegerField
      FieldName = 'ESTATUS'
    end
    object qrEntradaPacienteTIPOCLIENTEAS400: TIntegerField
      FieldName = 'TIPOCLIENTEAS400'
    end
    object qrEntradaPacienteCLASECREDITO: TStringField
      FieldName = 'CLASECREDITO'
      Size = 5
    end
    object qrEntradaPacienteCARNETNUMERO: TStringField
      FieldName = 'CARNETNUMERO'
      Size = 10
    end
    object qrEntradaPacienteCLIENTEPADREAXAPTA: TStringField
      FieldName = 'CLIENTEPADREAXAPTA'
      Size = 10
    end
    object qrEntradaPacientePACIENTEIDAXAPTA: TStringField
      FieldName = 'PACIENTEIDAXAPTA'
      Size = 10
    end
    object qrEntradaPacienteCLIENTEIDAXAPTA: TStringField
      FieldName = 'CLIENTEIDAXAPTA'
      Size = 10
    end
    object qrEntradaPacienteDOCTORIDAXAPTA: TStringField
      FieldName = 'DOCTORIDAXAPTA'
      Size = 10
    end
    object qrEntradaPacienteDATAAREAID: TStringField
      FieldName = 'DATAAREAID'
      Size = 3
    end
    object qrEntradaPacienteRECID: TIntegerField
      FieldName = 'RECID'
    end
    object qrEntradaPacienteNOTA: TStringField
      FieldName = 'NOTA'
      Size = 255
    end
    object qrEntradaPacienteDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 255
    end
    object qrEntradaPacienteNCFTYPEID: TStringField
      FieldName = 'NCFTYPEID'
      Size = 10
    end
    object qrEntradaPacienteNCFID: TStringField
      FieldName = 'NCFID'
      Size = 19
    end
    object qrEntradaPacienteNCFNAME: TStringField
      FieldName = 'NCFNAME'
      Size = 80
    end
    object qrEntradaPacienteCUADRADO: TIntegerField
      FieldName = 'CUADRADO'
    end
    object qrEntradaPacienteTRANSFERIDO: TIntegerField
      FieldName = 'TRANSFERIDO'
    end
    object qrEntradaPacienteSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object qrEntradaPacienteNUMEROINTERNET: TIntegerField
      FieldName = 'NUMEROINTERNET'
    end
    object qrEntradaPacienteRESULTADOCLIENTE: TIntegerField
      FieldName = 'RESULTADOCLIENTE'
    end
    object qrEntradaPacientePUBLICARINTERNETCLIENTE: TIntegerField
      FieldName = 'PUBLICARINTERNETCLIENTE'
    end
    object qrEntradaPacienteCOBERTURAPRECONFIRMADA: TIntegerField
      FieldName = 'COBERTURAPRECONFIRMADA'
    end
    object qrEntradaPacienteCOBERTURAMONTOPRECONFIRMADO: TBCDField
      FieldName = 'COBERTURAMONTOPRECONFIRMADO'
      Precision = 28
      Size = 12
    end
  end
  object dsEntradaPaciente: TDataSource
    AutoEdit = False
    DataSet = qrEntradaPaciente
    Left = 496
    Top = 144
  end
  object qrEntradaPacienteDetalle: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Filtered = True
    OnCalcFields = qrEntradaPacienteDetalleCalcFields
    Parameters = <
      item
        Name = 'rec'
        Attributes = [paSigned, paNullable]
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM PTEntradaPacienteDetalle'
      'WHERE refrecid = :rec'
      'AND TipoPrueba = '#39'P'#39
      '')
    Left = 424
    Top = 192
    object qrEntradaPacienteDetallePRUEBAID: TStringField
      FieldName = 'PRUEBAID'
    end
    object qrEntradaPacienteDetalleCOMBOPRUEBAID: TStringField
      FieldName = 'COMBOPRUEBAID'
      Size = 10
    end
    object qrEntradaPacienteDetalleCODIGOAUTORIZACION: TStringField
      FieldName = 'CODIGOAUTORIZACION'
    end
    object qrEntradaPacienteDetalleDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 80
    end
    object qrEntradaPacienteDetalleCODIGOCUPID: TStringField
      FieldName = 'CODIGOCUPID'
    end
    object qrEntradaPacienteDetalleMUESTRAANT: TStringField
      FieldName = 'MUESTRAANT'
    end
    object qrEntradaPacienteDetalleCOBERTURAAPLICA: TIntegerField
      FieldName = 'COBERTURAAPLICA'
    end
    object qrEntradaPacienteDetalleDESCRIPCIONCUP: TStringField
      FieldName = 'DESCRIPCIONCUP'
      Size = 80
    end
    object qrEntradaPacienteDetalleREFRECID: TIntegerField
      FieldName = 'REFRECID'
    end
    object qrEntradaPacienteDetalleSECUENCIA: TIntegerField
      FieldName = 'SECUENCIA'
    end
    object qrEntradaPacienteDetalleFLEBOTOMISTAID: TStringField
      FieldName = 'FLEBOTOMISTAID'
      Size = 10
    end
    object qrEntradaPacienteDetalleUNIDADMUESTRA: TStringField
      FieldName = 'UNIDADMUESTRA'
      Size = 10
    end
    object qrEntradaPacienteDetalleSECUENCIAACT: TIntegerField
      FieldName = 'SECUENCIAACT'
    end
    object qrEntradaPacienteDetallePRECIO: TBCDField
      FieldName = 'PRECIO'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleDESCUENTO: TBCDField
      FieldName = 'DESCUENTO'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleDESCUENTOEXTRA: TBCDField
      FieldName = 'DESCUENTOEXTRA'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleTOTALLINEA: TBCDField
      FieldName = 'TOTALLINEA'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleTIPOPRUEBA: TStringField
      FieldName = 'TIPOPRUEBA'
      Size = 5
    end
    object qrEntradaPacienteDetalleTIPOAS400: TStringField
      FieldName = 'TIPOAS400'
      Size = 2
    end
    object qrEntradaPacienteDetalleCODIGOAS400: TStringField
      FieldName = 'CODIGOAS400'
    end
    object qrEntradaPacienteDetalleMEDIOAS400: TStringField
      FieldName = 'MEDIOAS400'
      Size = 2
    end
    object qrEntradaPacienteDetalleDESCPCT: TBCDField
      FieldName = 'DESCPCT'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleCOBERTURAESPECIAL: TBCDField
      FieldName = 'COBERTURAESPECIAL'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleCOBERTURAESPECIALPORC: TBCDField
      FieldName = 'COBERTURAESPECIALPORC'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleCOBERTURAAPLICADA: TBCDField
      FieldName = 'COBERTURAAPLICADA'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleDESCUENTOAPLICADO: TBCDField
      FieldName = 'DESCUENTOAPLICADO'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleFACTURAR: TIntegerField
      FieldName = 'FACTURAR'
    end
    object qrEntradaPacienteDetalleSELECCIONAR: TIntegerField
      FieldName = 'SELECCIONAR'
    end
    object qrEntradaPacienteDetalleMUESTRANO: TStringField
      FieldName = 'MUESTRANO'
    end
    object qrEntradaPacienteDetalleCOBERTURAEXPPORC: TIntegerField
      FieldName = 'COBERTURAEXPPORC'
    end
    object qrEntradaPacienteDetalleURGENTE: TIntegerField
      FieldName = 'URGENTE'
    end
    object qrEntradaPacienteDetalleREPMUESTRA: TIntegerField
      FieldName = 'REPMUESTRA'
    end
    object qrEntradaPacienteDetalleFECHAENTREGA: TDateTimeField
      FieldName = 'FECHAENTREGA'
    end
    object qrEntradaPacienteDetalleHORAENTREGA: TStringField
      FieldName = 'HORAENTREGA'
    end
    object qrEntradaPacienteDetalleESTATUS: TStringField
      FieldName = 'ESTATUS'
      FixedChar = True
      Size = 2
    end
    object qrEntradaPacienteDetalleDATAAREAID: TStringField
      FieldName = 'DATAAREAID'
      Size = 3
    end
    object qrEntradaPacienteDetalleRECID: TIntegerField
      FieldName = 'RECID'
    end
    object qrEntradaPacienteDetalleCOMENTARIOMUESTRA: TStringField
      FieldName = 'COMENTARIOMUESTRA'
      Size = 255
    end
    object qrEntradaPacienteDetalleCOMENTARIO: TStringField
      FieldName = 'COMENTARIO'
      Size = 255
    end
    object qrEntradaPacienteDetalleDiasProcesamiento: TStringField
      FieldKind = fkCalculated
      FieldName = 'DiasProcesamiento'
      Size = 50
      Calculated = True
    end
    object qrEntradaPacienteDetalleCondMuestra: TStringField
      DisplayWidth = 255
      FieldKind = fkCalculated
      FieldName = 'CondMuestra'
      Size = 50
      Calculated = True
    end
    object qrEntradaPacienteDetalleCondPac: TStringField
      DisplayWidth = 255
      FieldKind = fkCalculated
      FieldName = 'CondPac'
      Size = 50
      Calculated = True
    end
    object qrEntradaPacienteDetalleDiasResultado: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'DiasResultado'
      Calculated = True
    end
    object qrEntradaPacienteDetalleDESCUENTOLINEAAPLICADO: TBCDField
      FieldName = 'DESCUENTOLINEAAPLICADO'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleCUADRADO: TIntegerField
      FieldName = 'CUADRADO'
    end
    object qrEntradaPacienteDetalleTRANSFERIDO: TIntegerField
      FieldName = 'TRANSFERIDO'
    end
    object qrEntradaPacienteDetallePASARAXAPTA: TIntegerField
      FieldName = 'PASARAXAPTA'
    end
    object qrEntradaPacienteDetalleCOMBO: TIntegerField
      FieldName = 'COMBO'
    end
    object qrEntradaPacienteDetalleADICIONAL: TBCDField
      FieldName = 'ADICIONAL'
      Precision = 28
      Size = 12
    end
  end
  object dsEntradaPacienteDetalle: TDataSource
    DataSet = qrEntradaPacienteDetalle
    Left = 496
    Top = 192
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
  object qrMaterialesFactura: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ref'
        Attributes = [paSigned, paNullable]
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM PTMaterialesFactura'
      'WHERE refrecid = :ref')
    Left = 424
    Top = 242
    object qrMaterialesFacturarefrecid: TLargeintField
      FieldName = 'refrecid'
    end
    object qrMaterialesFacturarefrecidLine: TLargeintField
      FieldName = 'refrecidLine'
    end
    object qrMaterialesFacturapruebaid: TStringField
      FieldName = 'pruebaid'
    end
    object qrMaterialesFacturaMaterialid: TStringField
      FieldName = 'Materialid'
      Size = 10
    end
    object qrMaterialesFacturaDescripcion: TStringField
      FieldKind = fkLookup
      FieldName = 'Descripcion'
      LookupDataSet = DM.qrMateriales
      LookupKeyFields = 'MaterialId'
      LookupResultField = 'Descripcion'
      KeyFields = 'Materialid'
      Size = 50
      Lookup = True
    end
    object qrMaterialesFacturaColor: TStringField
      FieldName = 'Color'
    end
    object qrMaterialesFacturaCantidad: TBCDField
      FieldName = 'Cantidad'
      OnValidate = qrMaterialesFacturaCantidadValidate
      Precision = 19
    end
    object qrMaterialesFacturaLineaNo: TLargeintField
      FieldName = 'LineaNo'
    end
  end
  object dsDatos: TDataSource
    DataSet = qrMaterialesFactura
    Left = 500
    Top = 242
  end
end
