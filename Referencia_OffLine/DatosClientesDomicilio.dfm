inherited frmDatosClientesDomicilio: TfrmDatosClientesDomicilio
  Caption = 'Clientes Domicilio'
  ClientHeight = 624
  ClientWidth = 946
  KeyPreview = True
  OnActivate = FormActivate
  OnPaint = nil
  OnShow = FormShow
  ExplicitTop = -233
  ExplicitWidth = 962
  ExplicitHeight = 662
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCaption: TPanel
    Width = 946
    Height = 43
    ExplicitWidth = 946
    ExplicitHeight = 43
  end
  object dxLayoutControl1: TdxLayoutControl [2]
    Left = 0
    Top = 43
    Width = 946
    Height = 581
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
        ExplicitWidth = 796
        ExplicitHeight = 561
        object dxLayoutControl2: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 289
          Height = 193
          Align = alClient
          TabOrder = 0
          AutoContentSizes = [acsWidth, acsHeight]
          LookAndFeel = dmAppActions.lnfWeb
          ExplicitWidth = 796
          ExplicitHeight = 561
          object EdClienteDom: TcxDBTextEdit
            Tag = 99
            Left = 132
            Top = 90
            TabStop = False
            DataBinding.DataField = 'CteDomID'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 2
            Width = 145
          end
          object EdNombres: TcxDBTextEdit
            Left = 132
            Top = 125
            DataBinding.DataField = 'Nombres'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 4
            Width = 415
          end
          object memDireccion: TcxDBMemo
            Left = 132
            Top = 206
            DataBinding.DataField = 'Direccion'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 7
            Height = 60
            Width = 398
          end
          object EdFechaBorn: TcxDBDateEdit
            Left = 132
            Top = 272
            DataBinding.DataField = 'Fecha_Nacimiento'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 8
            Width = 121
          end
          object CbSexo: TcxDBImageComboBox
            Left = 341
            Top = 272
            DataBinding.DataField = 'Sexo'
            DataBinding.DataSource = dsDatos
            Properties.Alignment.Horz = taLeftJustify
            Properties.Items = <
              item
                Description = 'FEMENINO'
                ImageIndex = 0
                Value = 0
              end
              item
                Description = 'MASCULINO'
                Value = 1
              end>
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 9
            Width = 202
          end
          object mskTelResidencia: TcxDBMaskEdit
            Left = 132
            Top = 299
            DataBinding.DataField = 'Tel_Residencia'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Properties.MaskKind = emkRegExprEx
            Properties.EditMask = '(\(\d\d\d\))-\d\d\d-\d\d\d\d'
            Properties.MaxLength = 0
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 12
            Width = 121
          end
          object mskTelCelular: TcxDBMaskEdit
            Left = 341
            Top = 299
            DataBinding.DataField = 'Tel_Celular'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Properties.MaskKind = emkRegExprEx
            Properties.EditMask = '(\(\d\d\d\))-\d\d\d-\d\d\d\d'
            Properties.MaxLength = 0
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 13
            Width = 202
          end
          object mskTelOficina: TcxDBMaskEdit
            Left = 132
            Top = 326
            DataBinding.DataField = 'Tel_Oficina'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Properties.MaskKind = emkRegExprEx
            Properties.EditMask = '(\(\d\d\d\))-\d\d\d-\d\d\d\d'
            Properties.MaxLength = 0
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 16
            Width = 121
          end
          object EdEmail: TcxDBTextEdit
            Left = 341
            Top = 326
            DataBinding.DataField = 'email'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 18
            Width = 202
          end
          object imgFoto: TcxImage
            Left = 283
            Top = 36
            TabStop = False
            Properties.GraphicClassName = 'TJPEGImage'
            Properties.Stretch = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 3
            Height = 83
            Width = 83
          end
          object GridTransacciones: TcxGrid
            Left = 23
            Top = 451
            Width = 540
            Height = 111
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 21
            LookAndFeel.NativeStyle = True
            object cxGridDBTableView1: TcxGridDBTableView
              OnDblClick = cxGridDBTableView1DblClick
              NavigatorButtons.ConfirmDelete = False
              NavigatorButtons.Insert.Visible = False
              NavigatorButtons.Delete.Visible = False
              NavigatorButtons.Edit.Visible = False
              NavigatorButtons.Post.Visible = False
              NavigatorButtons.Cancel.Visible = False
              DataController.DataModeController.SmartRefresh = True
              DataController.DataSource = dsDatosTran
              DataController.DetailKeyFieldNames = 'Muestrano'
              DataController.Filter.PercentWildcard = '*'
              DataController.Filter.Active = True
              DataController.Filter.AutoDataSetFilter = True
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.IncSearch = True
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsSelection.MultiSelect = True
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              OptionsView.NewItemRowInfoText = 'Click here to add a new row'
              Styles.Background = stGrDatos
              Styles.Content = stGrDatos
              Styles.OnGetContentStyle = cxGridDBTableView1StylesGetContentStyle
              object cxGridDBTableView1CteDomID: TcxGridDBColumn
                Caption = 'Dom ID'
                DataBinding.FieldName = 'CteDomID'
                Options.Editing = False
                Width = 56
              end
              object cxGridDBTableView1CteDomDet: TcxGridDBColumn
                Caption = 'Visita ID'
                DataBinding.FieldName = 'CteDomDet'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 62
              end
              object cxGridDBTableView1Muestrano: TcxGridDBColumn
                Caption = 'N'#250'm. Lab.'
                DataBinding.FieldName = 'Muestrano'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 74
              end
              object cxGridDBTableView1Fecha: TcxGridDBColumn
                DataBinding.FieldName = 'Fecha'
                HeaderAlignmentHorz = taCenter
                Width = 57
              end
              object cxGridDBTableView1Hora: TcxGridDBColumn
                DataBinding.FieldName = 'Hora'
                HeaderAlignmentHorz = taCenter
                Width = 52
              end
              object cxGridDBTableView1Usuario_Toma: TcxGridDBColumn
                Caption = 'User Toma'
                DataBinding.FieldName = 'Usuario_Toma'
                Width = 76
              end
              object cxGridDBTableView1Observacion: TcxGridDBColumn
                DataBinding.FieldName = 'Observacion'
                Width = 114
              end
              object cxGridDBTableView1Estatus: TcxGridDBColumn
                DataBinding.FieldName = 'Estatus'
                Visible = False
                Width = 50
              end
            end
            object GridTransaccionesDBTableView1: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = dsPruebas
              DataController.DetailKeyFieldNames = 'muestrano'
              DataController.MasterKeyFieldNames = 'Muestrano'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.IncSearch = True
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsSelection.MultiSelect = True
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              Styles.Background = dmAppActions.cxStyle8
              Styles.Content = dmAppActions.cxStyle8
              object GridTransaccionesDBTableView1pruebaid: TcxGridDBColumn
                DataBinding.FieldName = 'pruebaid'
              end
              object GridTransaccionesDBTableView1descripcion: TcxGridDBColumn
                DataBinding.FieldName = 'descripcion'
              end
              object GridTransaccionesDBTableView1totallinea: TcxGridDBColumn
                DataBinding.FieldName = 'totallinea'
              end
              object GridTransaccionesDBTableView1muestrano: TcxGridDBColumn
                DataBinding.FieldName = 'muestrano'
                Visible = False
              end
            end
            object cxGridLevel1: TcxGridLevel
              GridView = cxGridDBTableView1
              object GridPruebas: TcxGridLevel
                GridView = GridTransaccionesDBTableView1
              end
            end
          end
          object EdCedula: TcxDBMaskEdit
            Left = 132
            Top = 63
            DataBinding.DataField = 'Documento'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Properties.EditMask = '###-#######-#'
            Properties.MaxLength = 0
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 1
            OnExit = EdCedula1Exit
            Width = 145
          end
          object cbExtDocumento: TcxDBExtLookupComboBox
            Left = 132
            Top = 36
            RepositoryItem = DM.elcDocumento
            DataBinding.DataField = 'Tipo_Documento'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Properties.FocusPopup = True
            Properties.OnChange = cbExtDocumentoPropertiesChange
            Properties.OnCloseUp = cbExtDocumentoPropertiesChange
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 0
            Width = 145
          end
          object edContacto: TcxDBTextEdit
            Left = 132
            Top = 179
            DataBinding.DataField = 'Contacto'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 6
            Width = 121
          end
          object cboTipoCliente: TcxDBImageComboBox
            Left = 132
            Top = 353
            DataBinding.DataField = 'Tipo_Cliente'
            DataBinding.DataSource = dsDatos
            Properties.Items = <
              item
                Description = 'PRIVADO'
                ImageIndex = 0
                Value = 'P'
              end
              item
                Description = 'SEGURO MEDICO'
                Value = 'S'
              end>
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 17
            Width = 121
          end
          object edtApellidos: TcxDBTextEdit
            Left = 132
            Top = 152
            DataBinding.DataField = 'Apellidos'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 5
            Width = 544
          end
          object MemComentario: TcxDBMemo
            Left = 341
            Top = 353
            DataBinding.DataField = 'Comentario'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 20
            Height = 60
            Width = 200
          end
          object cxDBTextEdit2: TcxDBTextEdit
            Left = 644
            Top = 272
            DataBinding.DataField = 'Num_laboratorio1'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 10
            Width = 121
          end
          object cxDBTextEdit3: TcxDBTextEdit
            Left = 644
            Top = 299
            DataBinding.DataField = 'Num_laboratorio2'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 14
            Width = 121
          end
          object cxDBTextEdit5: TcxDBTextEdit
            Left = 644
            Top = 326
            DataBinding.DataField = 'Num_laboratorio3'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 19
            Width = 121
          end
          object cxDBLookupComboBox1: TcxDBLookupComboBox
            Left = 858
            Top = 272
            DataBinding.DataField = 'DES_ARS'
            DataBinding.DataSource = dsDatos
            Properties.KeyFieldNames = 'CLIENTEID'
            Properties.ListColumns = <
              item
                FieldName = 'NOMBRE'
              end>
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 11
            Width = 145
          end
          object cxDBDateEdit2: TcxDBDateEdit
            Left = 858
            Top = 299
            DataBinding.DataField = 'fecha_indicacion'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 15
            Width = 145
          end
          object dxLayoutControl2Group_Root: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutControl2Group1: TdxLayoutGroup
              Caption = 'Datos Paciente'
              object dxLayoutControl2Group12: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutControl2Group14: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  ShowBorder = False
                  object dxLayoutControl2Item10: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'Tipo Documento'
                    Control = cbExtDocumento
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutControl2Item11: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'Identificaci'#243'n'
                    Control = EdCedula
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutControl2Item12: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'Cliente'
                    Control = EdClienteDom
                    ControlOptions.ShowBorder = False
                  end
                end
                object dxLayoutControl2Item18: TdxLayoutItem
                  Control = imgFoto
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutControl2Group7: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object dxLayoutControl2Group3: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  ShowBorder = False
                  object dxLayoutControl2Item3: TdxLayoutItem
                    Caption = 'Nombres del Paciente'
                    Control = EdNombres
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutControl2Item8: TdxLayoutItem
                    Caption = 'Apellidos'
                    Control = edtApellidos
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutControl2Item5: TdxLayoutItem
                    Caption = 'Contacto'
                    Control = edContacto
                    ControlOptions.ShowBorder = False
                  end
                end
                object dxLayoutControl2Item13: TdxLayoutItem
                  Caption = 'Direcci'#243'n'
                  Control = memDireccion
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl2Group6: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  ShowBorder = False
                  object dxLayoutControl2Group10: TdxLayoutGroup
                    ShowCaption = False
                    Hidden = True
                    LayoutDirection = ldHorizontal
                    ShowBorder = False
                    object dxLayoutControl2Item1: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      Caption = 'Fecha de Nacimiento'
                      Control = EdFechaBorn
                      ControlOptions.ShowBorder = False
                    end
                    object dxLayoutControl2Item2: TdxLayoutItem
                      Caption = 'Sexo'
                      Control = CbSexo
                      ControlOptions.ShowBorder = False
                    end
                    object dxLayoutControl2Item9: TdxLayoutItem
                      Caption = 'Num. Laboratorio 1'
                      Control = cxDBTextEdit2
                      ControlOptions.ShowBorder = False
                    end
                    object dxLayoutControl2Item21: TdxLayoutItem
                      Caption = 'Ars Indico'
                      Control = cxDBLookupComboBox1
                      ControlOptions.ShowBorder = False
                    end
                  end
                  object dxLayoutControl2Group9: TdxLayoutGroup
                    ShowCaption = False
                    Hidden = True
                    ShowBorder = False
                    object dxLayoutControl2Group8: TdxLayoutGroup
                      ShowCaption = False
                      Hidden = True
                      LayoutDirection = ldHorizontal
                      ShowBorder = False
                      object dxLayoutControl2Item14: TdxLayoutItem
                        AutoAligns = [aaVertical]
                        Caption = 'Tel'#233'fono Residencia'
                        Control = mskTelResidencia
                        ControlOptions.ShowBorder = False
                      end
                      object dxLayoutControl2Item15: TdxLayoutItem
                        Caption = 'Tel'#233'fono Celular'
                        Control = mskTelCelular
                        ControlOptions.ShowBorder = False
                      end
                      object dxLayoutControl2Item19: TdxLayoutItem
                        Caption = 'Num. Laboratorio 2'
                        Control = cxDBTextEdit3
                        ControlOptions.ShowBorder = False
                      end
                      object dxLayoutControl2Item22: TdxLayoutItem
                        Caption = 'Fecha Indicaci'#243'n'
                        Control = cxDBDateEdit2
                        ControlOptions.ShowBorder = False
                      end
                    end
                    object dxLayoutControl2Group11: TdxLayoutGroup
                      ShowCaption = False
                      Hidden = True
                      LayoutDirection = ldHorizontal
                      ShowBorder = False
                      object dxLayoutControl2Group4: TdxLayoutGroup
                        ShowCaption = False
                        Hidden = True
                        ShowBorder = False
                        object dxLayoutControl2Item17: TdxLayoutItem
                          Caption = 'Tel'#233'fono Oficina'
                          Control = mskTelOficina
                          ControlOptions.ShowBorder = False
                        end
                        object dxLayoutControl2Item6: TdxLayoutItem
                          Caption = 'Tipo Cliente'
                          Control = cboTipoCliente
                          ControlOptions.ShowBorder = False
                        end
                      end
                      object dxLayoutControl2Group5: TdxLayoutGroup
                        ShowCaption = False
                        Hidden = True
                        ShowBorder = False
                        object dxLayoutControl2Group13: TdxLayoutGroup
                          ShowCaption = False
                          Hidden = True
                          LayoutDirection = ldHorizontal
                          ShowBorder = False
                          object dxLayoutControl2Item16: TdxLayoutItem
                            Caption = 'Email'
                            Control = EdEmail
                            ControlOptions.ShowBorder = False
                          end
                          object dxLayoutControl2Item20: TdxLayoutItem
                            Caption = 'Num. Laboratorio 3'
                            Control = cxDBTextEdit5
                            ControlOptions.ShowBorder = False
                          end
                        end
                        object dxLayoutControl2Item7: TdxLayoutItem
                          Caption = 'Comentario'
                          Control = MemComentario
                          ControlOptions.ShowBorder = False
                        end
                      end
                    end
                  end
                end
              end
            end
            object dxLayoutControl2Group2: TdxLayoutGroup
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              Caption = 'Visitas <Presione Doble Click> para editar la Visita'
              object dxLayoutControl2Item4: TdxLayoutItem
                Control = GridTransacciones
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
      end
    end
    object BtPacientes: TcxButton
      Left = 834
      Top = 7
      Width = 100
      Height = 25
      Caption = 'F3-Pacientes'
      TabOrder = 1
      OnClick = BtPacientesClick
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = True
    end
    object BtTransacciones: TcxButton
      Left = 834
      Top = 38
      Width = 100
      Height = 25
      Caption = 'F5- Insertar Visita'
      TabOrder = 2
      OnClick = BtTransaccionesClick
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = True
    end
    object BtEliminar: TcxButton
      Left = 834
      Top = 69
      Width = 100
      Height = 25
      Caption = 'F6-Eliminar Visita'
      TabOrder = 3
      OnClick = BtEliminarClick
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = True
    end
    object BtCancelar: TcxButton
      Left = 834
      Top = 100
      Width = 100
      Height = 25
      Caption = 'F7-Cancelar Visita'
      TabOrder = 4
      OnClick = BtCancelarClick
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = True
    end
    object BtImprimir: TcxButton
      Left = 834
      Top = 162
      Width = 100
      Height = 25
      Caption = 'F9-Imprimir'
      TabOrder = 6
      OnClick = BtImprimirClick
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = True
    end
    object BtGrabar: TcxButton
      Left = 834
      Top = 131
      Width = 100
      Height = 25
      Caption = 'F8-Grabar Visita'
      TabOrder = 5
      OnClick = BtGrabarClick
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = True
    end
    object btImprimirVista: TcxButton
      Left = 834
      Top = 193
      Width = 100
      Height = 25
      Caption = 'F10-Listado Visitas'
      TabOrder = 7
      OnClick = btImprimirVistaClick
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
          Control = BtPacientes
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item4: TdxLayoutItem
          Caption = 'cxButton3'
          ShowCaption = False
          Control = BtTransacciones
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item5: TdxLayoutItem
          Caption = 'cxButton4'
          ShowCaption = False
          Control = BtEliminar
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item6: TdxLayoutItem
          Caption = 'cxButton1'
          ShowCaption = False
          Control = BtCancelar
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item8: TdxLayoutItem
          Caption = 'cxButton1'
          ShowCaption = False
          Control = BtGrabar
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item7: TdxLayoutItem
          Caption = 'cxButton2'
          ShowCaption = False
          Control = BtImprimir
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item3: TdxLayoutItem
          Caption = 'New Item'
          ShowCaption = False
          Control = btImprimirVista
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object spDetalleTransacciones: TLMDSimplePanel [3]
    Left = 20
    Top = 43
    Width = 434
    Height = 440
    Bevel.StyleInner = bvFrameLowered
    Bevel.StyleOuter = bvFrameRaised
    Bevel.BorderWidth = 8
    Bevel.BorderInnerWidth = 2
    Bevel.LightColor = 12582911
    Bevel.Mode = bmCustom
    Bevel.StandardStyle = lsLowered
    Color = clMenuBar
    TabOrder = 2
    Visible = False
    object LMDLabel1: TLMDLabel
      Left = 12
      Top = 11
      Width = 408
      Height = 19
      Bevel.StyleInner = bvShadow
      Bevel.StyleOuter = bvShadow
      Bevel.WidthOuter = 2
      Bevel.LightColor = clBlack
      Bevel.Mode = bmCustom
      FontFX.LightColor = clSilver
      FontFX.ShadowColor = clBlack
      FontFX.Tracing = 1
      Alignment = agCenter
      AutoSize = False
      Color = clActiveCaption
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Options = []
      ParentColor = False
      ParentFont = False
      Transparent = False
      Caption = 'Detalle de la Visita'
    end
    object btnCancelar: TLMDButton
      Left = 334
      Top = 392
      Width = 80
      Height = 31
      Caption = '&Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnCancelarClick
      ButtonLayout.AlignText2Glyph = taBottom
      ButtonLayout.Spacing = 0
      ListIndex = 15
      NumGlyphs = 2
    end
    object btAceptar: TLMDButton
      Left = 248
      Top = 392
      Width = 80
      Height = 31
      Caption = '&Aceptar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btAceptarClick
      ButtonLayout.AlignText2Glyph = taBottom
      ButtonLayout.Spacing = 0
      ListIndex = 15
      NumGlyphs = 2
    end
    object cxLabel3: TcxLabel
      Left = 41
      Top = 145
      Caption = 'Usuario Toma.:'
    end
    object cxLabel7: TcxLabel
      Left = 41
      Top = 220
      Caption = 'Observaci'#243'n...:'
    end
    object cxLabel1: TcxLabel
      Left = 40
      Top = 64
      Caption = 'Cliente Dom...:'
    end
    object cxLabel2: TcxLabel
      Left = 42
      Top = 35
      Caption = 'Visita ID.......:'
    end
    object cxLabel4: TcxLabel
      Left = 41
      Top = 91
      Caption = 'Fecha..........:'
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 117
      Top = 87
      DataBinding.DataField = 'Fecha'
      DataBinding.DataSource = dsDatosTran
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 7
      Width = 121
    end
    object cxLabel5: TcxLabel
      Left = 280
      Top = 91
      Caption = 'Hora........:'
    end
    object cboResultados: TcxDBImageComboBox
      Left = 117
      Top = 115
      DataBinding.DataField = 'Resultado_Via'
      DataBinding.DataSource = dsDatosTran
      Properties.Alignment.Horz = taLeftJustify
      Properties.Items = <
        item
          Description = 'FAX'
          ImageIndex = 0
          Value = 'F'
        end
        item
          Description = 'INTERNET'
          Value = 'I'
        end
        item
          Description = 'PERSONAL'
          Value = 'P'
        end>
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 9
      Width = 121
    end
    object cxLabel6: TcxLabel
      Left = 41
      Top = 119
      Caption = 'Resultados Via:'
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 117
      Top = 141
      DataBinding.DataField = 'Usuario_Toma'
      DataBinding.DataSource = dsDatosTran
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 11
      Width = 121
    end
    object cxDBMemo2: TcxDBMemo
      Left = 117
      Top = 219
      DataBinding.DataField = 'Observacion'
      DataBinding.DataSource = dsDatosTran
      Properties.CharCase = ecUpperCase
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 12
      Height = 60
      Width = 298
    end
    object cxDBMaskEdit2: TcxDBMaskEdit
      Left = 118
      Top = 32
      DataBinding.DataField = 'CteDomDet'
      DataBinding.DataSource = dsDatosTran
      Properties.EditMask = '#####'
      Properties.MaxLength = 0
      Properties.ReadOnly = True
      TabOrder = 13
      Width = 79
    end
    object cxDBMaskEdit3: TcxDBMaskEdit
      Left = 118
      Top = 59
      DataBinding.DataField = 'CteDomID'
      DataBinding.DataSource = dsDatosTran
      Properties.EditMask = '#####'
      Properties.MaxLength = 0
      Properties.ReadOnly = True
      TabOrder = 14
      Width = 79
    end
    object cxLabel8: TcxLabel
      Left = 41
      Top = 195
      Caption = 'N'#250'm. Muestra.:'
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 118
      Top = 191
      DataBinding.DataField = 'Muestrano'
      DataBinding.DataSource = dsDatosTran
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 16
      Width = 121
    end
    object CxHora: TcxDBTimeEdit
      Left = 340
      Top = 86
      DataBinding.DataField = 'Hora'
      DataBinding.DataSource = dsDatosTran
      Properties.TimeFormat = tfHourMin
      TabOrder = 17
      Width = 69
    end
    object cxLabel9: TcxLabel
      Left = 41
      Top = 170
      Caption = 'Bioanalista.....:'
    end
    object cxDBExtLookupComboBox1: TcxDBExtLookupComboBox
      Left = 118
      Top = 166
      RepositoryItem = DM.elcFlebotomista
      DataBinding.DataField = 'FlebotomistaID'
      DataBinding.DataSource = dsDatosTran
      Properties.CharCase = ecUpperCase
      Properties.FocusPopup = True
      Properties.OnChange = cbExtDocumentoPropertiesChange
      Properties.OnCloseUp = cbExtDocumentoPropertiesChange
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 19
      Width = 120
    end
    object btFlebotomista: TcxButton
      Left = 241
      Top = 167
      Width = 24
      Height = 21
      Hint = 'Reg.  Nueva Flebotomista'
      Align = alCustom
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 20
      OnClick = btFlebotomistaClick
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00398C31002A902A00398C3100398C3100398C3100398C3100398C3100398C
        31001D871A0013841300398C3100398C3100FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00398C310035B035003DB73D003DB73D004ABD4A007DD272004DA5490059A8
        520074C5690037B137001C961C000C850C00398C3100FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00398C31003DB73D0051C151006ECE6B0082CE7700D0F0CC0052A5
        4A009CD98F0052C5520036AB36001F8B1F00299C2900FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00299C29003DB73D0066CC64007FCC740052A54A00FFFCF90052A5
        4A0099D88D0065CB65003EAD3E00299C2900FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00299C2900398C31004A8C4200D0F0CC00FFF5EC00ACBE
        9A004A8C4200398C3100299C2900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002E89A600328FCD002F8CCA003187
        A200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF004D9DD30043A8E90042A7E8003CA1E3002D93
        D6002E87AC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF004D9DD3004FB4F2004BB0EE0042A7E8003A9F
        E2004D9DD300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF004693C90053B8F40055BAF6004FB4F20046ABEB003FA4
        E6002E94D800107BB500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF001E73AF0055B9F50057BCF80050B5F30047ACEB0040A5
        E6003193D6003F7FA300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0034769A00388EC5004CA4D700469ED2003B94CA00328C
        C4002B8DCA0039738C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF004080A4004382A6004080A30038799D002A6C92001F63
        8A0039738C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF003F7FA3004F8DAF003E7FA2002F7196002165
        8B003F7FA300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003F7FA3003F7FA3002F7196003F7F
        A300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
    end
    object cxDBMemo1: TcxDBMemo
      Left = 117
      Top = 287
      DataBinding.DataField = 'Observacion_Cancela'
      DataBinding.DataSource = dsDatosTran
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 21
      Height = 60
      Width = 298
    end
    object cxLabel11: TcxLabel
      Left = 11
      Top = 287
      Caption = 'Observaci'#243'n Cancela:'
    end
    object cxLabel14: TcxLabel
      Left = 36
      Top = 356
      Caption = 'Usuario Cancela:'
    end
    object cxDBExtLookupComboBox2: TcxDBExtLookupComboBox
      Left = 118
      Top = 352
      RepositoryItem = DM.elcUsuario
      DataBinding.DataField = 'Usuario_Cancela'
      DataBinding.DataSource = dsDatosTran
      Enabled = False
      Properties.CharCase = ecUpperCase
      Properties.FocusPopup = True
      Properties.ReadOnly = True
      Properties.OnChange = cbExtDocumentoPropertiesChange
      Properties.OnCloseUp = cbExtDocumentoPropertiesChange
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 24
      Width = 120
    end
  end
  object spCancelaVisita: TLMDSimplePanel [4]
    Left = 32
    Top = 92
    Width = 432
    Height = 203
    Bevel.StyleInner = bvFrameLowered
    Bevel.StyleOuter = bvFrameRaised
    Bevel.BorderWidth = 8
    Bevel.BorderInnerWidth = 2
    Bevel.LightColor = 12582911
    Bevel.Mode = bmCustom
    Bevel.StandardStyle = lsLowered
    Color = clMenuBar
    TabOrder = 3
    Visible = False
    DesignSize = (
      432
      203)
    object LMDLabel2: TLMDLabel
      Left = 11
      Top = 12
      Width = 411
      Height = 19
      Bevel.StyleInner = bvShadow
      Bevel.StyleOuter = bvShadow
      Bevel.WidthOuter = 2
      Bevel.LightColor = clBlack
      Bevel.Mode = bmCustom
      FontFX.LightColor = clSilver
      FontFX.ShadowColor = clBlack
      FontFX.Tracing = 1
      Alignment = agCenter
      AutoSize = False
      Color = clActiveCaption
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Options = []
      ParentColor = False
      ParentFont = False
      Transparent = False
      Caption = 'Cancelar Visita (Digite la raz'#243'n)'
    end
    object cxLabel12: TcxLabel
      Left = 63
      Top = 122
      Caption = 'Usuario :'
    end
    object cxLabel13: TcxLabel
      Left = 39
      Top = 52
      Caption = 'Observaci'#243'n :'
    end
    object cxObservacion: TcxMemo
      Left = 109
      Top = 53
      TabOrder = 2
      Height = 59
      Width = 296
    end
    object dbExtUsuario: TcxExtLookupComboBox
      Left = 109
      Top = 118
      RepositoryItem = DM.elcUsuario
      Anchors = []
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 3
      Width = 121
    end
    object btAceptaNCF: TLMDButton
      Left = 239
      Top = 148
      Width = 80
      Height = 35
      Caption = '&Aceptar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = btAceptaNCFClick
      ButtonLayout.AlignText2Glyph = taBottom
      ButtonLayout.Spacing = 0
      ListIndex = 15
      NumGlyphs = 2
    end
    object btCancelarNCF: TLMDButton
      Left = 325
      Top = 148
      Width = 80
      Height = 35
      Caption = '&Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = btCancelarNCFClick
      ButtonLayout.AlignText2Glyph = taBottom
      ButtonLayout.Spacing = 0
      ListIndex = 15
      NumGlyphs = 2
    end
    object cxLabel10: TcxLabel
      Left = 19
      Top = 33
      Caption = 'N'#250'mero de Visita :'
    end
    object lblVisitaID: TcxLabel
      Left = 110
      Top = 33
      AutoSize = False
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      StyleDisabled.BorderStyle = ebsNone
      Height = 17
      Width = 120
    end
  end
  object spListadoVisita: TLMDSimplePanel [5]
    Left = 0
    Top = 118
    Width = 432
    Height = 179
    Bevel.StyleInner = bvFrameLowered
    Bevel.StyleOuter = bvFrameRaised
    Bevel.BorderWidth = 8
    Bevel.BorderInnerWidth = 2
    Bevel.LightColor = 12582911
    Bevel.Mode = bmCustom
    Bevel.StandardStyle = lsLowered
    Color = clMenuBar
    TabOrder = 4
    Visible = False
    object LMDLabel3: TLMDLabel
      Left = 11
      Top = 12
      Width = 411
      Height = 19
      Bevel.StyleInner = bvShadow
      Bevel.StyleOuter = bvShadow
      Bevel.WidthOuter = 2
      Bevel.LightColor = clBlack
      Bevel.Mode = bmCustom
      FontFX.LightColor = clSilver
      FontFX.ShadowColor = clBlack
      FontFX.Tracing = 1
      Alignment = agCenter
      AutoSize = False
      Color = clActiveCaption
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Options = []
      ParentColor = False
      ParentFont = False
      Transparent = False
      Caption = 'Listado de Visitas'
    end
    object LMDButton1: TLMDButton
      Left = 239
      Top = 125
      Width = 80
      Height = 35
      Caption = '&Aceptar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = LMDButton1Click
      ButtonLayout.AlignText2Glyph = taBottom
      ButtonLayout.Spacing = 0
      ListIndex = 15
      NumGlyphs = 2
    end
    object LMDButton2: TLMDButton
      Left = 325
      Top = 125
      Width = 80
      Height = 35
      Caption = '&Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = LMDButton2Click
      ButtonLayout.AlignText2Glyph = taBottom
      ButtonLayout.Spacing = 0
      ListIndex = 15
      NumGlyphs = 2
    end
    object cxLabel17: TcxLabel
      Left = 42
      Top = 42
      Caption = 'Sucursal :'
    end
    object cxLabel18: TcxLabel
      Left = 110
      Top = 33
      AutoSize = False
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      StyleDisabled.BorderStyle = ebsNone
      Height = 17
      Width = 120
    end
    object cbExtSucursal: TcxExtLookupComboBox
      Left = 106
      Top = 38
      RepositoryItem = DM.elcSucursal
      Properties.CharCase = ecUpperCase
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 4
      Width = 299
    end
    object cxLabel15: TcxLabel
      Left = 20
      Top = 82
      Caption = 'Fecha Desde :'
    end
    object FechaIni: TcxDateEdit
      Left = 108
      Top = 77
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 6
      Width = 100
    end
    object cxLabel16: TcxLabel
      Left = 228
      Top = 81
      Caption = 'Fecha Hasta :'
    end
    object FechaFin: TcxDateEdit
      Left = 305
      Top = 77
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 8
      Width = 100
    end
  end
  inherited formStorage: TJvFormStorage
    Left = 432
    Top = 52
  end
  inherited alEdit: TActionList
    Left = 353
    Top = 52
  end
  inherited pmCustom: TPopupMenu
    Left = 388
  end
  object cxGridStyles: TcxStyleRepository
    Left = 501
    Top = 52
    object stGrDatos: TcxStyle
      AssignedValues = [svColor]
      Color = clInfoBk
    end
    object stGrEdit: TcxStyle
    end
  end
  object qrClienteDomDet: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    AfterPost = qrClienteDomDetAfterPost
    Parameters = <
      item
        Name = 'CteID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Select *  From PtClienteDomDetalle'
      'Where CteDomID = :CteID'
      'Order by Fecha desc, Hora Desc')
    Left = 656
    Top = 506
    object qrClienteDomDetCteDomID: TIntegerField
      FieldName = 'CteDomID'
    end
    object qrClienteDomDetCteDomDet: TIntegerField
      FieldName = 'CteDomDet'
    end
    object qrClienteDomDetMuestrano: TStringField
      FieldName = 'Muestrano'
    end
    object qrClienteDomDetFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object qrClienteDomDetHora: TStringField
      FieldName = 'Hora'
    end
    object qrClienteDomDetResultado_Via: TStringField
      FieldName = 'Resultado_Via'
      FixedChar = True
      Size = 1
    end
    object qrClienteDomDetUsuario_Toma: TStringField
      FieldName = 'Usuario_Toma'
      Size = 10
    end
    object qrClienteDomDetRefrecid: TLargeintField
      FieldName = 'Refrecid'
    end
    object qrClienteDomDetFlebotomistaID: TStringField
      FieldName = 'FlebotomistaID'
      Size = 10
    end
    object qrClienteDomDetEstatus: TStringField
      FieldName = 'Estatus'
      FixedChar = True
      Size = 1
    end
    object qrClienteDomDetUsuario_Cancela: TStringField
      FieldName = 'Usuario_Cancela'
      Size = 10
    end
    object qrClienteDomDetObservacion_Cancela: TStringField
      FieldName = 'Observacion_Cancela'
      Size = 200
    end
    object qrClienteDomDetObservacion: TMemoField
      FieldName = 'Observacion'
      BlobType = ftMemo
    end
    object qrClienteDomDetNumero_laboratorio: TStringField
      FieldName = 'Numero_laboratorio'
      Size = 30
    end
  end
  object dsDatosTran: TDataSource
    DataSet = qrClienteDomDet
    Left = 90
    Top = 3
  end
  object qrClienteDomicilio: TADOQuery
    Active = True
    Connection = DM.DataBase
    CursorType = ctStatic
    AfterPost = qrClienteDomicilioAfterPost
    Parameters = <
      item
        Name = 'CteID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Select *  From PtClienteDom'
      'Where CteDomID =:CteID')
    Left = 528
    Top = 418
    object qrClienteDomicilioCteDomID: TIntegerField
      FieldName = 'CteDomID'
    end
    object qrClienteDomicilioTipo_Documento: TIntegerField
      FieldName = 'Tipo_Documento'
    end
    object qrClienteDomicilioDocumento: TStringField
      FieldName = 'Documento'
    end
    object qrClienteDomicilioSexo: TSmallintField
      FieldName = 'Sexo'
    end
    object qrClienteDomicilioFecha_Nacimiento: TDateTimeField
      FieldName = 'Fecha_Nacimiento'
    end
    object qrClienteDomicilioClienteID: TStringField
      FieldName = 'ClienteID'
    end
    object qrClienteDomicilioTel_Oficina: TStringField
      FieldName = 'Tel_Oficina'
    end
    object qrClienteDomicilioTel_Residencia: TStringField
      FieldName = 'Tel_Residencia'
    end
    object qrClienteDomicilioTel_Celular: TStringField
      FieldName = 'Tel_Celular'
    end
    object qrClienteDomicilioEmail: TStringField
      FieldName = 'Email'
      Size = 80
    end
    object qrClienteDomicilioUserID: TStringField
      FieldName = 'UserID'
      Size = 10
    end
    object qrClienteDomicilioEstatus: TStringField
      FieldName = 'Estatus'
      FixedChar = True
      Size = 1
    end
    object qrClienteDomicilioNombres: TStringField
      FieldName = 'Nombres'
      Size = 50
    end
    object qrClienteDomicilioApellidos: TStringField
      FieldName = 'Apellidos'
      Size = 50
    end
    object qrClienteDomicilioTipo_Cliente: TStringField
      FieldName = 'Tipo_Cliente'
      FixedChar = True
      Size = 1
    end
    object qrClienteDomicilioContacto: TStringField
      FieldName = 'Contacto'
      Size = 80
    end
    object qrClienteDomicilioDireccion: TStringField
      FieldName = 'Direccion'
      Size = 150
    end
    object qrClienteDomicilioComentario: TMemoField
      FieldName = 'Comentario'
      BlobType = ftWideString
      Size = 200
    end
    object qrClienteDomicilioNum_laboratorio1: TStringField
      FieldName = 'Num_laboratorio1'
      Size = 30
    end
    object qrClienteDomicilioNum_laboratorio2: TStringField
      FieldName = 'Num_laboratorio2'
      Size = 30
    end
    object qrClienteDomicilioNum_laboratorio3: TStringField
      FieldName = 'Num_laboratorio3'
      Size = 30
    end
    object qrClienteDomicilioARS_INDICO: TStringField
      FieldName = 'ARS_INDICO'
      Size = 15
    end
    object qrClienteDomicilioDES_ARS: TStringField
      FieldKind = fkLookup
      FieldName = 'DES_ARS'
      LookupDataSet = qARS
      LookupKeyFields = 'CLIENTEID'
      LookupResultField = 'NOMBRE'
      KeyFields = 'ARS_INDICO'
      Size = 50
      Lookup = True
    end
    object qrClienteDomicilioFecha_Indicacion: TDateTimeField
      FieldName = 'Fecha_Indicacion'
    end
  end
  object dsDatos: TDataSource
    DataSet = qrClienteDomicilio
    Left = 164
    Top = 3
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = dsReporte
    UserName = 'ppFormularioSolicitud'
    Left = 256
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'Fecha_Nacimiento'
      FieldName = 'Fecha_Nacimiento'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 0
      Position = 0
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'Nombres'
      FieldName = 'Nombres'
      FieldLength = 50
      DisplayWidth = 50
      Position = 1
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'Apellidos'
      FieldName = 'Apellidos'
      FieldLength = 50
      DisplayWidth = 50
      Position = 2
    end
    object ppDBPipeline1ppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'Edad'
      FieldName = 'Edad'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'bSeguro'
      FieldName = 'bSeguro'
      FieldLength = 1
      DisplayWidth = 1
      Position = 4
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'Tel_Residencia'
      FieldName = 'Tel_Residencia'
      FieldLength = 20
      DisplayWidth = 20
      Position = 5
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'Tel_Oficina'
      FieldName = 'Tel_Oficina'
      FieldLength = 20
      DisplayWidth = 20
      Position = 6
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'Tel_Celular'
      FieldName = 'Tel_Celular'
      FieldLength = 20
      DisplayWidth = 20
      Position = 7
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 8
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'Hora'
      FieldName = 'Hora'
      FieldLength = 20
      DisplayWidth = 20
      Position = 9
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'bFax'
      FieldName = 'bFax'
      FieldLength = 1
      DisplayWidth = 1
      Position = 10
    end
    object ppDBPipeline1ppField12: TppField
      FieldAlias = 'bInternet'
      FieldName = 'bInternet'
      FieldLength = 1
      DisplayWidth = 1
      Position = 11
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = 'bPersonal'
      FieldName = 'bPersonal'
      FieldLength = 1
      DisplayWidth = 1
      Position = 12
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = 'Documento'
      FieldName = 'Documento'
      FieldLength = 20
      DisplayWidth = 20
      Position = 13
    end
    object ppDBPipeline1ppField15: TppField
      FieldAlias = 'bPrivado'
      FieldName = 'bPrivado'
      FieldLength = 1
      DisplayWidth = 1
      Position = 14
    end
    object ppDBPipeline1ppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'ID_Visita'
      FieldName = 'ID_Visita'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 15
    end
    object ppDBPipeline1ppField17: TppField
      FieldAlias = 'Usuario_Toma'
      FieldName = 'Usuario_Toma'
      FieldLength = 10
      DisplayWidth = 10
      Position = 16
    end
    object ppDBPipeline1ppField18: TppField
      FieldAlias = 'Flebotomista'
      FieldName = 'Flebotomista'
      FieldLength = 80
      DisplayWidth = 80
      Position = 17
    end
    object ppDBPipeline1ppField19: TppField
      FieldAlias = 'Serial'
      FieldName = 'Serial'
      FieldLength = 20
      DisplayWidth = 20
      Position = 18
    end
    object ppDBPipeline1ppField20: TppField
      FieldAlias = 'Fecha_Emision'
      FieldName = 'Fecha_Emision'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 19
    end
    object ppDBPipeline1ppField21: TppField
      FieldAlias = 'Fecha_Revision'
      FieldName = 'Fecha_Revision'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 20
    end
    object ppDBPipeline1ppField22: TppField
      FieldAlias = 'Contacto'
      FieldName = 'Contacto'
      FieldLength = 80
      DisplayWidth = 80
      Position = 21
    end
    object ppDBPipeline1ppField23: TppField
      FieldAlias = 'Direccion'
      FieldName = 'Direccion'
      FieldLength = 150
      DisplayWidth = 150
      Position = 22
    end
    object ppDBPipeline1ppField24: TppField
      FieldAlias = 'Observacion'
      FieldName = 'Observacion'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField25: TppField
      FieldAlias = 'fecha_indicacion'
      FieldName = 'fecha_indicacion'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 24
    end
    object ppDBPipeline1ppField26: TppField
      FieldAlias = 'Num_laboratorio1'
      FieldName = 'Num_laboratorio1'
      FieldLength = 30
      DisplayWidth = 30
      Position = 25
    end
    object ppDBPipeline1ppField27: TppField
      FieldAlias = 'Num_laboratorio2'
      FieldName = 'Num_laboratorio2'
      FieldLength = 30
      DisplayWidth = 30
      Position = 26
    end
    object ppDBPipeline1ppField28: TppField
      FieldAlias = 'Num_laboratorio3'
      FieldName = 'Num_laboratorio3'
      FieldLength = 30
      DisplayWidth = 30
      Position = 27
    end
    object ppDBPipeline1ppField29: TppField
      FieldAlias = 'Ars'
      FieldName = 'Ars'
      FieldLength = 80
      DisplayWidth = 80
      Position = 28
    end
  end
  object qrReporte: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CteID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 5
        Value = Null
      end>
    SQL.Strings = (
      
        'select top 1 p.Contacto,p.Fecha_Nacimiento,d.Usuario_Toma,p.Nomb' +
        'res,p.Apellidos,year(getdate())-Year(p.fecha_nacimiento) as Edad' +
        ','
      
        'p.Documento,case when tipo_cliente = '#39'P'#39' Then '#39'x'#39' else '#39#39' end as' +
        ' bPrivado,'
      'case when tipo_cliente = '#39'S'#39' Then '#39'x'#39' else '#39#39' end as bSeguro,'
      'Tel_Residencia,Tel_Oficina,Tel_Celular,Direccion,d.Fecha,d.Hora,'
      'case when Resultado_Via = '#39'F'#39' Then '#39'x'#39' else '#39#39' end as bFax,'
      'case when Resultado_Via = '#39'I'#39' Then '#39'x'#39' else '#39#39' end as bInternet,'
      'case when Resultado_Via = '#39'P'#39' Then '#39'x'#39' else '#39#39' end as bPersonal,'
      'Observacion, CteDomDet as ID_Visita'
      ',f.Descripcion as Flebotomista,'
      '(select Serial from dbo.ptseriales '
      'where grupo_id='#39'98'#39' and tipo='#39'CL'#39') As Serial,'
      '(select Fecha_Emision from dbo.ptseriales '
      'where grupo_id='#39'98'#39' and tipo='#39'CL'#39') As Fecha_Emision,'
      '(select Fecha_Revision from dbo.ptseriales '
      'where grupo_id='#39'98'#39' and tipo='#39'CL'#39') As Fecha_Revision,'
      'fecha_indicacion, Num_laboratorio1, Num_laboratorio2,'
      
        'Num_laboratorio3, Ars = (select top 5 Nombre from PTCLIENTE wher' +
        'e CLIENTEID = p.ARS_INDICO)'
      'from ptclientedom p inner join ptclientedomdetalle d'
      'on p.ctedomid =  :CteID, ptFlebotomista f '
      'where p.ctedomid='#39'10009'#39' and p.estatus='#39'A'#39
      'and d.flebotomistaid=f.flebotomistaid'
      'order by fecha desc'
      '')
    Left = 608
    Top = 498
    object qrReporteFecha_Nacimiento: TDateTimeField
      FieldName = 'Fecha_Nacimiento'
    end
    object qrReporteNombres: TStringField
      FieldName = 'Nombres'
      Size = 50
    end
    object qrReporteApellidos: TStringField
      FieldName = 'Apellidos'
      Size = 50
    end
    object qrReporteEdad: TIntegerField
      FieldName = 'Edad'
      ReadOnly = True
    end
    object qrReportebSeguro: TStringField
      FieldName = 'bSeguro'
      ReadOnly = True
      Size = 1
    end
    object qrReporteTel_Residencia: TStringField
      FieldName = 'Tel_Residencia'
    end
    object qrReporteTel_Oficina: TStringField
      FieldName = 'Tel_Oficina'
    end
    object qrReporteTel_Celular: TStringField
      FieldName = 'Tel_Celular'
    end
    object qrReporteFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object qrReporteHora: TStringField
      FieldName = 'Hora'
    end
    object qrReportebFax: TStringField
      FieldName = 'bFax'
      ReadOnly = True
      Size = 1
    end
    object qrReportebInternet: TStringField
      FieldName = 'bInternet'
      ReadOnly = True
      Size = 1
    end
    object qrReportebPersonal: TStringField
      FieldName = 'bPersonal'
      ReadOnly = True
      Size = 1
    end
    object qrReporteDocumento: TStringField
      FieldName = 'Documento'
    end
    object qrReportebPrivado: TStringField
      FieldName = 'bPrivado'
      ReadOnly = True
      Size = 1
    end
    object qrReporteID_Visita: TIntegerField
      FieldName = 'ID_Visita'
    end
    object qrReporteUsuario_Toma: TStringField
      FieldName = 'Usuario_Toma'
      Size = 10
    end
    object qrReporteFlebotomista: TStringField
      FieldName = 'Flebotomista'
      Size = 80
    end
    object qrReporteSerial: TStringField
      FieldName = 'Serial'
      ReadOnly = True
    end
    object qrReporteFecha_Emision: TDateTimeField
      FieldName = 'Fecha_Emision'
      ReadOnly = True
    end
    object qrReporteFecha_Revision: TDateTimeField
      FieldName = 'Fecha_Revision'
      ReadOnly = True
    end
    object qrReporteContacto: TStringField
      FieldName = 'Contacto'
      Size = 80
    end
    object qrReporteDireccion: TStringField
      FieldName = 'Direccion'
      Size = 150
    end
    object qrReporteObservacion: TMemoField
      FieldName = 'Observacion'
      BlobType = ftMemo
    end
    object qrReportefecha_indicacion: TDateTimeField
      FieldName = 'fecha_indicacion'
    end
    object qrReporteNum_laboratorio1: TStringField
      FieldName = 'Num_laboratorio1'
      Size = 30
    end
    object qrReporteNum_laboratorio2: TStringField
      FieldName = 'Num_laboratorio2'
      Size = 30
    end
    object qrReporteNum_laboratorio3: TStringField
      FieldName = 'Num_laboratorio3'
      Size = 30
    end
    object qrReporteArs: TStringField
      FieldName = 'Ars'
      ReadOnly = True
      Size = 80
    end
  end
  object dsReporte: TDataSource
    DataSet = qrReporte
    Left = 388
    Top = 3
  end
  object qrFlebotomista: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from dbo.PTFLEBOTOMISTA'
      'Where DataAreaID='#39'ldr'#39)
    Left = 448
    Top = 2
    object qrFlebotomistaFLEBOTOMISTAID: TStringField
      FieldName = 'FLEBOTOMISTAID'
      Size = 10
    end
    object qrFlebotomistaDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 80
    end
    object qrFlebotomistaCODIGOAXAPTA: TStringField
      FieldName = 'CODIGOAXAPTA'
      Size = 10
    end
    object qrFlebotomistaESTATUS: TIntegerField
      FieldName = 'ESTATUS'
    end
    object qrFlebotomistaDATAAREAID: TStringField
      FieldName = 'DATAAREAID'
      Size = 3
    end
    object qrFlebotomistaRECID: TLargeintField
      FieldName = 'RECID'
    end
  end
  object dsFlebotomista: TDataSource
    DataSet = qrFlebotomista
    Left = 484
    Top = 3
  end
  object qrPruebas: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select pruebaid,descripcion,totallinea,c.muestrano from ptentrad' +
        'apacientedetalle d inner join'
      
        'dbo.PTCLIENTEDOMDETALLE c on isnull(d.muestrano,'#39#39')=isnull(c.mue' +
        'strano,'#39#39')'
      'and isnull(c.muestrano,'#39#39')<>'#39#39' ')
    Left = 616
    Top = 458
    object qrPruebaspruebaid: TStringField
      FieldName = 'pruebaid'
    end
    object qrPruebasdescripcion: TStringField
      FieldName = 'descripcion'
      Size = 80
    end
    object qrPruebastotallinea: TBCDField
      FieldName = 'totallinea'
      Precision = 28
      Size = 12
    end
    object qrPruebasmuestrano: TStringField
      FieldName = 'muestrano'
    end
  end
  object dsPruebas: TDataSource
    DataSet = qrPruebas
    Left = 204
    Top = 35
  end
  object ppRptDomicilio: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter (8.5" x 11")'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    AllowPrintToArchive = True
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 288
    Top = 2
    Version = '10.04'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 27781
      mmPrintPosition = 0
      object ppDBText12: TppDBText
        UserName = 'DBText159'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Empresa'
        DataPipeline = DM.ppParametro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppParametro'
        mmHeight = 5821
        mmLeft = 7938
        mmTop = 1058
        mmWidth = 98954
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label152'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Formulario Recepci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 7938
        mmTop = 7144
        mmWidth = 98954
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label153'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Fecha  :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 147902
        mmTop = 6879
        mmWidth = 13293
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5821
        mmLeft = 162984
        mmTop = 6879
        mmWidth = 17463
        BandType = 0
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageNo
        DisplayFormat = '000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 162984
        mmTop = 2381
        mmWidth = 5842
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label154'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Pagina :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 147638
        mmTop = 2381
        mmWidth = 13674
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label161'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Hora    :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 147902
        mmTop = 11113
        mmWidth = 13081
        BandType = 0
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtTime
        DisplayFormat = 'HH:MM:SS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 162984
        mmTop = 11113
        mmWidth = 14055
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Solicitud de Toma de Muestras a Domicilio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 7938
        mmTop = 12435
        mmWidth = 98954
        BandType = 0
      end
      object ppShape6: TppShape
        UserName = 'Shape6'
        mmHeight = 6350
        mmLeft = 135996
        mmTop = 21431
        mmWidth = 44186
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ID VISITA :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 136790
        mmTop = 21960
        mmWidth = 20235
        BandType = 0
      end
      object ppDBText18: TppDBText
        UserName = 'DBText13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ID_Visita'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5038
        mmLeft = 161925
        mmTop = 21960
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText19: TppDBText
        UserName = 'DBText18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Usuario_Toma'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5038
        mmLeft = 162719
        mmTop = 15081
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Usuario:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 147902
        mmTop = 15610
        mmWidth = 14266
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 227807
      mmPrintPosition = 0
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CONTACTO :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3429
        mmLeft = 7938
        mmTop = 9790
        mmWidth = 17695
        BandType = 4
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'EDAD :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3429
        mmLeft = 53181
        mmTop = 16140
        mmWidth = 9260
        BandType = 4
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'DOCUMENTO:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3429
        mmLeft = 71702
        mmTop = 16140
        mmWidth = 19050
        BandType = 4
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'SEGURO MEDICO :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 125148
        mmTop = 16140
        mmWidth = 25929
        BandType = 4
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PRIVADO :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 159279
        mmTop = 16140
        mmWidth = 15346
        BandType = 4
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'TEL. RESIDENCIA:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3429
        mmLeft = 8202
        mmTop = 29898
        mmWidth = 26458
        BandType = 4
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'TEL. OFICINA:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 71173
        mmTop = 29898
        mmWidth = 20373
        BandType = 4
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'TEL. CELULAR:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 126471
        mmTop = 29898
        mmWidth = 21167
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Contacto'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5027
        mmLeft = 30956
        mmTop = 7938
        mmWidth = 148432
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Edad'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3429
        mmLeft = 63765
        mmTop = 15610
        mmWidth = 6085
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Documento'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3440
        mmLeft = 91811
        mmTop = 16140
        mmWidth = 30956
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Tel_Residencia'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3429
        mmLeft = 36513
        mmTop = 29369
        mmWidth = 32279
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Tel_Oficina'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3429
        mmLeft = 92869
        mmTop = 29369
        mmWidth = 31750
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Tel_Celular'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3429
        mmLeft = 149225
        mmTop = 29369
        mmWidth = 30692
        BandType = 4
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'DIRECCION :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3429
        mmLeft = 7938
        mmTop = 39423
        mmWidth = 19050
        BandType = 4
      end
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        CharWrap = False
        DataField = 'Direccion'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 16669
        mmLeft = 28840
        mmTop = 39158
        mmWidth = 151342
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label101'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'SERVICIO REQUERIDO PARA FECHA:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 7938
        mmTop = 59002
        mmWidth = 53181
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Fecha'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4498
        mmLeft = 65617
        mmTop = 57679
        mmWidth = 26194
        BandType = 4
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'HORA :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 111654
        mmTop = 58738
        mmWidth = 10848
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Hora'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 124619
        mmTop = 57944
        mmWidth = 17198
        BandType = 4
      end
      object ppLabel13: TppLabel
        UserName = 'Label102'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PRUEBAS A REALIZAR:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3429
        mmLeft = 7938
        mmTop = 67733
        mmWidth = 32808
        BandType = 4
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 42863
        mmTop = 70908
        mmWidth = 136790
        BandType = 4
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 7938
        mmTop = 77258
        mmWidth = 171980
        BandType = 4
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 7938
        mmTop = 83608
        mmWidth = 171980
        BandType = 4
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 7938
        mmTop = 90488
        mmWidth = 172244
        BandType = 4
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 7938
        mmTop = 97367
        mmWidth = 171980
        BandType = 4
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ENTREGA DE RESULTADOS:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3429
        mmLeft = 7938
        mmTop = 103981
        mmWidth = 39285
        BandType = 4
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'VIA FAX'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3429
        mmLeft = 57679
        mmTop = 103981
        mmWidth = 11599
        BandType = 4
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'INTERNET'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3429
        mmLeft = 105304
        mmTop = 103981
        mmWidth = 14774
        BandType = 4
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PERSONAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3429
        mmLeft = 158221
        mmTop = 103981
        mmWidth = 15409
        BandType = 4
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PERSONAL DE TOMA DE MUESTRAS QUE REALIZARA EL SERVICIO:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3429
        mmLeft = 7938
        mmTop = 147902
        mmWidth = 95250
        BandType = 4
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 105040
        mmTop = 151077
        mmWidth = 74877
        BandType = 4
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Nombres(s) y Apellido(s)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3429
        mmLeft = 118798
        mmTop = 151607
        mmWidth = 35560
        BandType = 4
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'FECHA:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3429
        mmLeft = 7938
        mmTop = 171715
        mmWidth = 10414
        BandType = 4
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 20108
        mmTop = 174625
        mmWidth = 37571
        BandType = 4
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'HORA:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3429
        mmLeft = 59267
        mmTop = 171715
        mmWidth = 9398
        BandType = 4
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 69586
        mmTop = 174625
        mmWidth = 29898
        BandType = 4
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'QUE SE REALIZO EL SERVICIO.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3429
        mmLeft = 100542
        mmTop = 171715
        mmWidth = 44196
        BandType = 4
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'OBSERVACIONES:(Si Aplica)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3429
        mmLeft = 7938
        mmTop = 112448
        mmWidth = 40386
        BandType = 4
      end
      object ppDBMemo2: TppDBMemo
        UserName = 'DBMemo2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        CharWrap = False
        DataField = 'Observacion'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 19050
        mmLeft = 49213
        mmTop = 112184
        mmWidth = 130969
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 5027
        mmLeft = 151871
        mmTop = 14552
        mmWidth = 4763
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'bSeguro'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3429
        mmLeft = 152400
        mmTop = 15346
        mmWidth = 3704
        BandType = 4
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 5027
        mmLeft = 175419
        mmTop = 14552
        mmWidth = 4763
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'bPrivado'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3429
        mmLeft = 175948
        mmTop = 15346
        mmWidth = 3704
        BandType = 4
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        mmHeight = 5027
        mmLeft = 70379
        mmTop = 102394
        mmWidth = 4763
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'bFax'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3440
        mmLeft = 70908
        mmTop = 103188
        mmWidth = 3704
        BandType = 4
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        mmHeight = 5027
        mmLeft = 121179
        mmTop = 102394
        mmWidth = 4763
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'bInternet'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3429
        mmLeft = 121709
        mmTop = 103188
        mmWidth = 3704
        BandType = 4
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        mmHeight = 5027
        mmLeft = 175155
        mmTop = 102394
        mmWidth = 4763
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'bPersonal'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3429
        mmLeft = 175684
        mmTop = 103188
        mmWidth = 3704
        BandType = 4
      end
      object ppLine11: TppLine
        UserName = 'Line101'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 30692
        mmTop = 12700
        mmWidth = 149225
        BandType = 4
      end
      object ppLine12: TppLine
        UserName = 'Line11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 63500
        mmTop = 19050
        mmWidth = 6615
        BandType = 4
      end
      object ppLine13: TppLine
        UserName = 'Line12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 92075
        mmTop = 19579
        mmWidth = 30692
        BandType = 4
      end
      object ppLine14: TppLine
        UserName = 'Line13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 36513
        mmTop = 33073
        mmWidth = 32279
        BandType = 4
      end
      object ppLine15: TppLine
        UserName = 'Line15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 92869
        mmTop = 33073
        mmWidth = 31750
        BandType = 4
      end
      object ppLine16: TppLine
        UserName = 'Line16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 149225
        mmTop = 33073
        mmWidth = 30692
        BandType = 4
      end
      object ppLine17: TppLine
        UserName = 'Line17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 65617
        mmTop = 62177
        mmWidth = 26194
        BandType = 4
      end
      object ppLine18: TppLine
        UserName = 'Line18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 124884
        mmTop = 62177
        mmWidth = 16933
        BandType = 4
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'NOMBRE(S):'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 7938
        mmTop = 3440
        mmWidth = 19844
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Nombres'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5027
        mmLeft = 30427
        mmTop = 1852
        mmWidth = 63500
        BandType = 4
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 30427
        mmTop = 6615
        mmWidth = 149754
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Flebotomista'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3440
        mmLeft = 106892
        mmTop = 147373
        mmWidth = 73025
        BandType = 4
      end
      object ppLabel19: TppLabel
        UserName = 'Label301'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Serial :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2963
        mmLeft = 8467
        mmTop = 211138
        mmWidth = 8678
        BandType = 4
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Fecha de Emisi'#243'n  :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2963
        mmLeft = 8731
        mmTop = 215636
        mmWidth = 23749
        BandType = 4
      end
      object ppLabel21: TppLabel
        UserName = 'Label201'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Fecha de Revisi'#243'n :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2963
        mmLeft = 8731
        mmTop = 220134
        mmWidth = 23834
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Serial'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2963
        mmLeft = 19315
        mmTop = 211138
        mmWidth = 15081
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Fecha_Emision'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2963
        mmLeft = 34131
        mmTop = 215636
        mmWidth = 19579
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText201'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Fecha_Revision'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 2963
        mmLeft = 34396
        mmTop = 220134
        mmWidth = 19579
        BandType = 4
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 
          'Formulario Recepci'#243'n de Solicitud de Toma de Muestras a Domicili' +
          'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2963
        mmLeft = 8467
        mmTop = 207169
        mmWidth = 90488
        BandType = 4
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Revisado y aprobado por: Patricia Le'#243'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 121179
        mmTop = 216694
        mmWidth = 59267
        BandType = 4
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Elaborado por: Gerencia de Operaciones'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 121179
        mmTop = 220663
        mmWidth = 59267
        BandType = 4
      end
      object ppImage1: TppImage
        UserName = 'Image1'
        MaintainAspectRatio = False
        Stretch = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Picture.Data = {
          0A544A504547496D61676536510000FFD8FFE000104A46494600010101006000
          600000FFE1004E45786966000049492A0008000000040001030500010000003E
          0000001051010001000000017DAA011151040001000000222E00001251040001
          000000222E000000000000A08601008FB10000FFDB0043000806060706050807
          07070909080A0C140D0C0B0B0C1912130F141D1A1F1E1D1A1C1C20242E272022
          2C231C1C2837292C30313434341F27393D38323C2E333432FFDB004301090909
          0C0B0C180D0D1832211C21323232323232323232323232323232323232323232
          3232323232323232323232323232323232323232323232323232323232FFC000
          110800B9020D03012200021101031101FFC4001F000001050101010101010000
          0000000000000102030405060708090A0BFFC400B51000020103030204030505
          04040000017D01020300041105122131410613516107227114328191A1082342
          B1C11552D1F02433627282090A161718191A25262728292A3435363738393A43
          4445464748494A535455565758595A636465666768696A737475767778797A83
          8485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8
          B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2
          F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102
          030405060708090A0BFFC400B511000201020404030407050404000102770001
          02031104052131061241510761711322328108144291A1B1C109233352F01562
          72D10A162434E125F11718191A262728292A35363738393A434445464748494A
          535455565758595A636465666768696A737475767778797A8283848586878889
          8A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5
          C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FA
          FFDA000C03010002110311003F00F6F3FA52FE24D2724F1F951819FF000A8283
          3DB3F5A09E734600EE3F2A0F1F5A004249A39A538C678CD1DE80106E0D9C8C50
          493DFF004A3A8A5A003207E34849068E0024A803B9ED5C3F8A3E27E91A14BF60
          D310EB1ABB6556DAD4EE546FF6C8E9F864D023B49268A103CE9638837037B85C
          FD2B90D67E2AF84B44BB9AD66BD9AE668480C2D62F3464F6DC3E5CFE35C34FE1
          5F1F7C43BB8AF35CF2F4CB371F2C0F911C633FF3CF3927DDABB9D03E18786B40
          114AD6DF6FBC4C1F3EE3900F7214718FAE69E82BB672B7BF1D63181A6F85EFA4
          6CE7FD29F66571D7E50D5B1E1DF8B965AB6AD6FA56ADA45C69377707F74CCDBE
          339FBBCE0119FA63DEBD1558A2AAA2AAA01B4055C003D3DABC6FE324666F1878
          6E28A2DF34CACBB5231B9B12478E7BF738FAFAD01AA3D90EE0C41E3F1A4E8793
          CF6A52318503180052739A4500623A645049273CE4D1C7F4A51903A5000189EB
          91ED591E21F12E93E16D35AFF56B968A21F7514659CFA28EF5A5713C3696D25D
          5D4C90DBC4373C8E70147D6BC5FC4F7975F103C7B67A1E9F728D1C0AE198AEE8
          231FC447AB638F4CD31367B0E95AB5A6B7A55BEA7A74CD2DADC2EE8D8A95247D
          0F3573241AAF61650E97A65AD85B0220B689618C139385181FCAAC669001DC7B
          1CD18F53471FD78A43EA00140C3B6338EE052F41D0D009C8E8452F39EB8A0031
          9E7AD19C7AD371CE4927D29C067FFAE680039E49381480907AE69707F0FA503A
          FBD00038E7268E7AF1F8D27B1E452E3BD002F278CD264F4CD1814647BE6800DC
          4F7FD69067AE7A7BD2F4CFAF7A4C67DFDE80039EFCFA52E4FA9FE949C8A3AFAD
          0028CFA9CD2E7BF2298C0E460E29DEF9CD00263DF8A093F5FA9A70E4F07359D6
          1AB26A375790476B7312DB304324D1ED590FFB39E4FD68117F07DE9492075349
          F8D00027A7D49340CABAA6AB6BA2E993DFDF4863B6817748FEDFE35C968DAADC
          F8B65B9D68DEC12785CC43168632B223A9C90CC7033C763EDEF5CB78C3587F88
          1E36B6F046977C91E990B17BC9D5BFD6B2F55183838C8EA3AFD2A6F135EC1A4E
          94FF000C7C29A75F5C5D491AA5C5D280446B21F999CA8CB12339E9D47341372C
          F83B5293C53F132FB54D36492C747D3E2301B48CAF9731233BC9462A4E483F41
          EB5EA796C753F9D63F86BC33A6784F478B4ED36DE2870A0CD222F33381F789EA
          6B63F4A06837B038C9A52CD91C91F53499C74CD00609C7140C50C7BE7FC68CB7
          AD27040209F6A09CFAF1D8D002E4F7C9A419E7AFF4A0F3DCE7D297D3D2800C1E
          A33F8519603939AF30F147867C7DACF8D67934AF105D699A50B706168E721370
          3F74A02393EA6BD2E2575823595F7C814066C75340878271D49A5C9FC6909C71
          83C52FE740012D9CF39A031C753477FEB475E9FCE90C5C91FC4690B9F53F851F
          4A0F03A7E3400BB883D4D1B893F7A9318EFF009D07DA9806FE7EF6297713EA71
          498E78A438EE334009D48E28E71E83DA97A718A4C7AD001D7079A5E9D4D27D2A
          9CFAB69D6B7C965717D6D15D380C9149200CC3D40EFD2802E0F7A3233D68208C
          F20D2671C5002F7CD67EB7ABDAE81A45C6A57CC44312E762FDE73E8BEF55BC51
          E26B1F09E873EA77B22EE453E5425B0D2B76005797F87BC35E20F88BAAD9F893
          C51311A5C6C5E0B76000753D0281FC3EE793409B20BDD63C5BF1725163A4DB49
          A6E841CA4D26FC83FEF91D7FDD1F8D7A67863C0DA07846253A75927DAB6E1EE5
          FE676F5C1EDF856EDADBC1676CB6F6B6F15BC0BC2C712ED5FD2A5193F5F7A609
          0A5B279FE5463D73416A0727A7E14864571756F656B35D5DCC90DB42A5E491CE
          02A8EA49AF14F0D4D37C42F8C075D8CDD1D36C5C4B0BB8C08D147CA98CF1B9B2
          7D7915A7F103C617DE24D5FF00E10AF0BC7E733B98EEE756C06C7DE41D8819F9
          8FE15E83E13F0DDBF84FC3B069701DCE06E9E41FC6E7A9A64EE6DB1CB1E31467
          F2A55A438C1069142F7E6A1B9B982CAD26BBBB9961B7850BC9231E15454C14B1
          0001D79AF14F1EF8A6EBC73AE47E0CF0ECB09B2691BCF9D98AAC8C809624FF00
          71769CF63C7E009BB0DF16F8AADBC7E9770446E2D7C37A6FCDF6C284ADC4F9F9
          723AEDC76C679CD779F0E3C2E9E1EF0D41733C0C9AADEA096E4BE72BC70A01FB
          BC76EB9EBD2B0FC25E1459B575D934B278634FC7D9D246C1BBBBCFCD2B01D402
          0E3F0F4AF4C24F2714C49750EFC8FC6941C9E3349BB8E0714B9CF4CE6914078E
          A78A5C7E7498079C7E54670795A003347072464D1839FE94A31DB8A0001E3FC2
          83D4679A3A1E9467038A004C7A93F514A33C64E7DF1464E79A3F2A0000E79C52
          631DF9F6A519A33FFEAA005EB8E98ED49D075A010A3DE93273EDE9400BC67DA8
          FC7349C0F4CD1D7E9400679E5B1ED8A5EFC0A43D8019A5C37F74D0027E14004B
          6060668C36413FAD79FF00C50F1B5D7876D2DF45D1914EB1A91F2E370C331027
          19C67A9CF1DA81331FC4DE2DF13788BC6ABE19F05CF25A0B5256EEEF08CA4719
          3861C63F5AF4FD3ED1AC6C6281EE1EE6654025B8931BA56C7DE38C7F2AE67C01
          E0583C19A6CB24D37DAB56BC3BEEAE4E724F5C73E99EBDEBAF1CF40680415C77
          C4BF15BF84FC2924B6EFE5DFDDB7916ED80769239639E38009AEB6E2E20B3B69
          AEAE1D6286142F23B10028039249AF9DF5EF11DB78AFC636BACEB301FEC888FF
          00A359C8481220391CE3EF37071F850B51366DE851CDF0E7C0936AAD6EAFE29D
          5E409630C9197930DF4F6CB1FF00EBD77FF0FF00C18DE1BB49753BF9E69F5DD4
          903DE4923E769EBB471557C25A6EA1E21D5C78BB5DB66B589502695A6484FF00
          A2A818DF8C0193EB8C8071DABBDC6739EFD680484038E3F3A775029011CE0002
          97BD2283BF5FD283D3D6818A5F7CD0019A0E338E49A438A4CFB70680146476A5
          C7E34734647D0D0027D78A5FAD1C91C0EB474E00A003B714BD7BD3738E6972B9
          CD001C7AD19C9E2814B93E828013B5147D78A463C1DBD7B76A005E947418C7E1
          5CFEADE2EB2F0EBC275C82E2CEDE6C2ADC8432461B9F958AE71D38F5CD6D59DD
          DBEA1650DE59CAB35BCEA1E3917A30A6226A3071FF00D6A09FFEB5264F61F5CD
          21864F4A4C773413EBDFB503DC0A601D3DEBCCFE29F801B5F8FF00B76C543DD5
          B42C2585B27CC51FDDF43FE15E99C51C60E4654F041EE28D84D5CE0FE157895F
          5EF0D3D9DDCAD25EE9EDE5BBB124B29FBA493F97E15D9EA17D6FA4E9973A8DE3
          15B6B6432391E82BCEF4BD313C0DF11353B99AEE2874CBF8BCD4473B15403CFD
          48CD66EB7AA5D7C50F160F0BE99706DB42B7CCB71750BE7ED083031F439E87D2
          98AE54D1F4CBEF8B7E28935ED623F2340B5F92DAD8A9FDE0FF001F522BD9D552
          2448A31B63450AABE805476B6D05859C3676B188EDE140888A3A01537A521AD0
          4E7938A39C7A52E0FD69934B15B4125C4EEB1451A96777380A05031F827815E7
          1F107C6F32E7C2DE166373AE5CB7932BC7D2007A8CFF0078E7F0EB547C43E3CD
          4BC5D3B787BC04B3485D479FA9C67688C13D013D3EBD7D3D98BF082F6C2E2DAE
          B4BD7648AF218DA4699941267ED8CFBE724D344B6749E02F87D6FE10B2171744
          5CEB128DD2CE79D99EAAA7F9FAD76615FAA83CF6AF3BD23C3DF126195A7D47C5
          C8ECD09C46B146CAAFD81CA8E3DC56745E0BF89772AED7BE35961790E1842C36
          E3B6DC018A02E7AB6C7240039C75A5F2D80EC3F1AF2A9FE13EB57E892DEF8DB5
          67B8F302366638F2B3DB07AF26B90F1CF82ACFC0F656C0F89B53B9BAB97630C0
          CE42AA0C6E6383C727F33405CECFE2DF8D5F4BD3D741D26657BEB9CFDAA4866C
          35BA0C7CA71DDB247A814EF08F80EDBC3325CDB4D7B6D2B4B670CF7B33803ECC
          BB98EC46FEE361B24F619EF5CAF84FE17CDAE1593549FC9B79505C308A5DD215
          60C14B77C93CFF00C04D7573FC0DF0CCB1616F7541237123B4F9DC07418C7418
          1C502D5EA7A2F9D616B6F0A0B9B58206426201D554803248F6C739AA8DE23D05
          555DB5DD3154A96526ED3040E0E39F5AE28FC0FF0007BF922497537F2D48C35C
          F07E9C71F8528F81DE0C025052F8ABAE1479DF73A74E3FCE681EA75D2F8BBC31
          02EE97C47A4A03EB789FE350378E7C211AC65BC4FA510E76822E90F3F81E2B32
          0F84DE0785369D0E3978C6647627AF5EB5347F0CBC0F13864F0E5A961FDE2C7F
          99A340D48EEBE2C7816CB6799E218A42D9C79314927FE82A7151C7F14FC3F781
          FF00B32DF56BF1180CED0D93850BEB9602BA1B6F0DE8166ECF6FA25846CC0027
          C85EDF8569A2A46812344441D154600A43D4A763A8A5FAABA5ADD4485436678F
          CB233DB079ABBD39F5EF59FAB36B252DC6902D371997CF6B82788F3CED03BE3D
          6B92D2FC7D72DF11EF3C2DAB430A293FE8922654B719E41FC7F2A02E77A0D1D2
          8E9904519C7A5031738EA6931CF0703BFBD0093C607D28EFFE1400BC93C63146
          39A4EE3B01D6978F5E280173CE45347AF414A06EE95C5F8D3E20D9F8662B9B3B
          289AFF0058584B08221B961E801723A751C0E7F9D02B9D93B2471BCB23AC71AF
          2CEEC140FA935C36B3F173C31A46A2DA7DB9BAD56F010BB6C5048BB8F41BB38C
          E6B3D7C0DAEF8D64B7BEF19EB3FF0012F78C3AE97640C6832831BB93C824E7AF
          4AED345F0BE85E1E8562D2B4BB7808032FB72EDEE58F2698B5670173E25F8ABA
          D34ADA2F8761D36DD9B119B951E62E0E32771C7E948DE1AF8BCA4BFF00C25968
          5DFAE15463B74D98E9CF15EAC493D59A93273FE140EC78FEBF6BF11FC1B14DAE
          4BE2D8EF6DF0A9209514004FF7531B73DAB93D075BB587C590F8ABC5B6B7BA84
          72B9115DF9594471DC0C6081E82BAAF8AB733F8A7C5BA478334F0370903CAE1C
          E4120E723A70013F857A6DFE87A09F0EC7A2EA305AAE9B146A823760AAB8E010
          49E28B9362E69BAA58EB5611DFE9D7515CDB4832AE873F98ED56F049C0AF00D3
          35C83E1878E3558B4DDBAAE953A2F982290160467015BA123BFE1E9577C61F11
          3C59BDAD1AD6DAC34EBC8C3C0A80B4CE8DC60B838049F419A2C3B97FE2DF8CE0
          BA11786B48BE691DA402F05B82DBBD23C83DFB8F4AD6F017C346B048B53F11B2
          CF3603DB59924ADB9EB9CFAD4DF0DFE1CC3A0430EB3AAC4926A9226E8E2C656D
          C1E720F763DCD7A467249A18257DC0B12C4E4521E283DFB8A33DA9142FF9E946
          79C51DF9A37738C50019CF1477CF1F851DF23AD1819C74FA5200CF3D33FD283C
          50AC19432B2B29E41539A074A602E01EB475C82690500934803B7A51C01C6682
          7D68C5300CFE22818E9DAA2B9BAB7B1B733DDDC436F08EB24AE1547D49AE6A3F
          88BE1AB8F1445E1FB5BC3757532FEEE5B71E644CDCE5772E704639A0573ABC8C
          E33F9500FA01499DBC6339EF4A71DFAD03038E28C51F4E28C1C734806BA472A8
          4923575041C30CE08EF5C4F8731A3FC44D4BC3964FFF0012D8B4E8EE043C6227
          3230C0FF0080E3FCF35DA5C5C43656D2DD5CBAC7042864776380AA064935E53F
          0B8DCF893C67AFF8C2599441231821518DCC84E50363AE1401CFF4A627B9EB43
          DBBFE9464FAD1F4ED41ED486379FFF005527E19A752647D2980633F5A4009380
          28F63CD733E38F129D0341BA167E5C9AA3A048A263D37670DF4183409E8705F1
          8F58B2D52E34DD16C95EF2FAD662F22C2BBB19180BC77CD6E780ADF46F05E9D2
          C1A9DFC36FAA5E159A48E6C298C11809FA543F09FC251DA59A7896E27F3EEEED
          5BAAF4CE33F9107F3AEDB5AF0CE89E2142354B08E7CF05B1B588F4245326DD4B
          B06A165716E9710DEDBBC2FF0075C48306A2BBD7346B0327DAF54B483CB50EFB
          E50300F435CBCBF0A3C252CB2C8966F11923F2F6AB92147B03DFDEAA41F05FC2
          114BE6BC5773363044B3920FE548AD4AFAFF00C64D2ACA56B3D02D25D5EF7384
          3183E51F7C8E4FE02A9E95E1CF17F8DEF25D4BC57A84FA6E97265574B8BE5DCB
          EFEC7BE7935E87A4F87B46D06048B4BD36DEDC2676B0505867AFCC79AD4DAEC4
          641A056EE52D3B4BB0D1AD56DB4CB286DA2030444A067EB56FBF5A5C10DD3148
          79ED40C33FE4D267B1EB4B8C0C552D5F55B4D0B47BAD5AF4B0B6B58CBB851C9F
          61EE7A50051F15789ECFC21A0C9AA5D0F31F704820DD83339E807EA4FB035E2B
          E19D1F52F1CF8AE4D635643709349FBD1CED0096DAA9E88B827F0A6AC9AAFC52
          F1D40D72AC902B656DF77C9042392A0F4DE403CF7FA57BCE93A4C3A4DBF936CA
          15546C503A2A2962A07E7CD3D85B868FA6AE9BA6C7114513B0DD3BAFF139249E
          7D064E2AEFE35E537BAA6B365F1E2DAD8EA7723479E558D6079408998C27E503
          EA78F535EAE415383D681A179C6074A41C7AD0739C81C53A90C4269A07A9A751
          F8500078F7A300671D68EDC714631C67F1A003F4AC1D7BC1FA4F882EA0BCB88D
          A1BF824474BA88ED93E539033E9D78F7ADFE077A43E82810B9C0193EDCD1C750
          4D27714BC9E3FC9A0621C9ED4671C64FD694838C8FD2800FA75F5A0039F6E28D
          B938C649A4C1CF5AE1BC6FE29BE5B81E12F0C8F3F5EBC88B3C8AC3FD163EEC7F
          DA3838E9D8D026C83C61E31D567D4CF853C150ADCEB2F179935DAB294B500F43
          9E371C11CF4C8AD5F057826DBC2F64975764DCEBB70A5EF2E9D8BE5D8E580CF6
          E833DF19A93C0BE07B3F04690F0C0ED2DF5C856BA9D8FDF619C003B01935D3F1
          401CEDEDD6A3A778CACF7DD49269B791F962DC4236C6F9FBDBBAFF007463BEEF
          6AE8F033F4AE23E216A72585CE811DB5F25BDCBDEA6C574DFBB7305E17B9C335
          77078E09C9039C8EB4021B8C914A463141E281ED40CF3FF1C7C3AB9F116B906B
          9A3EA5FD9DA8C51ED2E095DC7B1CA9C8C0CF4F5AE6E2F8257FA8DF993C45E206
          BA8107C8E1DE47EB939DE4E01F6AF642066A39258EDE1926B891638630599DB8
          0A29DC563C77C7BE04D07C29E05864D391C5CA5CA2F9D21CB4818E083ED83507
          C38F0A3F8A3524D6B599679ED34D223B78A605848C391C9EC3D3D6B3FC5DE24D
          43C797F76DA5591B8D1B497256788FCA78E5981C7BE08ED5DF7C1E746F012ED0
          FBC5D4A5F77BB923F4A09EA77DC6EE38FE941EF9FD28C8EE33585E30F155A784
          7C3D3EA170F1FDA0A94B585BFE5AC9D978A451B53DC436D1192E1C2A804F3C9C
          0F6EF5E5FA87C44F11F892FDECBC07A4BC96C88DBEFAE6DC805C1E4286207E7D
          CF4AABE04F0FEBBE30F1145E3AF135C4B6F1C59FB25B29C214FA7F77F9D5CD73
          E28685A05ABE87E0BB45BCBF694A2A4084448E49DC73D58E7D3F3C53B0AF736F
          C17E33BDD5AFCE81ADD8BC5AC5BC2649E5450233C918C67AF06BB8F7C715C1FC
          34F06DCF87ACAEB57D61D9F5BD4CEFB82E79404E707DC9E6BB8B89A1B3B596EE
          EA558ADE24324923F01540E4D21A2418C659805AF3ED035ABFD5FC57E23B5D63
          5AB04D3A2B96820D39D0249B15CA060D90486C7279E7D2B88F1BF8A2F3E23EA7
          1E8BE1AB0BCBDD3ADC6E90229413313F2B31CF09D0F35DAE8FF08F434F0B269B
          E20B78EFAF5D8C925CA921A3CE3E546EBB46DC7E7EB4C57BEC5EBFF0C4FE13D3
          27D47C27279724537DA64B39A6DB0491725D00E8A718C1EDB6BA5BAF1068D656
          6D7775AAD9DBC0AC159E49940563D8F3C1E7A5707F10EDB4FF000FFC378B49BF
          D42FA7E96D6569149B1AE70DF2AB6012D852B9F5207AD5ED07E12784AC349B61
          7BA3ADCDD95F3257B96DCC188E471C6074FC2802F5F7C54F04D842F23788209F
          6F3B2DC3484FD302B1EEBE38784E155FB345A95DEEE9E55BE39EC3E622BAAB0F
          04F85F4C91E4B2D06CA091C0562A9D402081F9806AA78ABC49A17832DD6E27B0
          8E7B8BA9947D9E1550EDC0F98E78180075C520D4E7DBE35E87188C4DA36B51B3
          2AB10F6EA3683E996C9FC054F27C45BBF11CED63E04D39EFA4500CB7D7486386
          107B8070588EE2B8347F10FC5AF12A6F8160D3E3253ED10C5B5618F3C8DC49DC
          FEC3A57BB69F616BA4E9D058D8C2B15B4081111463814C15D9E51F12B4BB0D1F
          C2B35EF89AE64D5F5CBC6D96DF3324303E3AA479C0000272793FA56DFC2BF071
          D1F4C5D6F508D46A37718F2971831447A0C7627BD739F1A257B7F126873DCDB1
          5B28D0EC9C7CC376E5255B3C0E9C7AD76763F153C17731451C9AB0B77DA176DC
          40F1F41D738C62816973B5CF73F4A377A74F535C8C9F143C111CA91FF6F40ECC
          BBBE4466007B90383EC6B1EF3E377846D5D1625D46E810798EDB6F3E986209FC
          2958ABA3D172738351DCDC41656B25C5DCD1C1044A5E49246DAAAA392493DABC
          ACF8F7C7DE24DDFF0008DF8585ADB49196866BA04961EB925541F6E6A92FC28F
          14F89A68AE7C5FE2166F2D17646ADE61193F30C6028E3B804D1615FB078BBC63
          7DE3DBF8FC29E118AE0446722E6EF809246060FF00C0724F5C670315EA3E1CF0
          F59786344B7D32C51408D7E7902F323F72699E1CF0BE95E14B16B4D26DCC6B21
          CC923316773EE4D6CE281D8426979EDC520A5193ED40C6FD0534F230475A3A54
          575776F636535E5D4822B7850C923B7602802A6B7AD5A681A5C97B79284032B1
          8EA59BB71F5C5784693FDB9E37F15DA099BCF94481E490FF00CB0803F3F9F4FC
          68F885E2FB6F15EAB04F646436300DB002A479AC4F042F7CFF005AF58F87FE10
          93C2FA4C93DFBC52EAF78DBE7910711AE388C7A81FCC9A646ECEB56348516189
          152341B55540000F6029401D8528A002C47AFB522C6F39E991556FB54D374B75
          5BEBD82DD994B012380481D6B89F19FC4C5D1F506F0F787ECE4D435E6F9308B9
          5898F63EA71CD51F0EFC2D37D7516BDE35B89351D46552CD6930052327FC3D3A
          502B93CDE3BF1078A3537B2F00E9D14B6B17DFD4EF636584FB2F4C9A925F046B
          32DEBEB9E2AF1A5DB47689E6A2588FB3A47C64E47391C577EA2DEC2CF6A2C56B
          690AF6C2AA815E33E39F184FE36D56CBC35E159E47B7924C4D2A0C099811820F
          F70739F5E29A26DDCE83E1478B2FB5CB9D6B4FBCB89AF12190CF6F7329C3794C
          C42823D78AF4AFF3CD73DE11F06E9FE10D30C36EBE65ECC01B9B83D643FD07B5
          6F5CCF6F676F25C5DCE90451A97677600003A9A0A43C0E40C578AFC5CF10CDAB
          788A1F0AD902F15A15925419FDE5C37DC5F700107EA47A574BAAF8FEEF5BBB6D
          3FC1335AB4514466BBD5675263840EA318EB81D7DC5721F0B74BB4BED62EBC55
          AC6A31F93A7B798CF70F82F2B670ECC7D281367A9F833C2D1784B404B304C977
          3112DCB9FEF91C81EC3915CFFC41F18DEDAC87C33E1F03FB52E6205AE33FEAF7
          3EDDABC72C70DF4AC8D4FE2A5DF896F9347F05697777466574B89CAEC68C1F95
          5D4F61C9393ED5DCF86BC3B2E91616AFAB4E97BAAA441249C0E091DF9E73EFEE
          6805D8F2FF001D6843C0B1F83354B8BA96EDEDAEE37BD2CFB9E59119642413DB
          0AC07E15ED5697906A3616D7F6AC5EDEEE259E262319461B871F435E47F1F351
          85EDF44D162C4D7AD2B4C624E5802A5178EBC96E9ED5E9566F1F857C1B6035AB
          A862163651C73306014B220042E7AF4E28045FBFD4ACB48B192F6FA658A18C12
          49EA7827007E06B86F86DE30D63C57AAEBC6F1623610BA34040C326ECE17F203
          F3F7AE36E350D77E2D78AD2D74D8E7B2D1ADE447677C7EEA33D49EC58E0E01E9
          935E9776744F863E0EB99ED2DCAC68495463979E53D324F5A02FD4DED4F57D37
          44B65B9D52F61B3859822BCA7009F4AE3359F8AFA6591B6874CD3EEF55B999C8
          31DBAE76A83827DFDAB85D2D3C53F11352926B90B742DD4F96CDF2C10EE278E9
          F311F9D7AEF853C2565E15B2315AA07BA90EE9A723927D07A0F6A02ED90F843C
          5F6FE30B6BB9E1D3EEEC5AD66F2648AE800DBB00FF005AD5D57528347D3A6BDB
          9C9541F2A03CB9ECA3DEB275CF17683E1AD32F2E0DCDA493C5F37D921914492B
          9ED8F535E7B6A7C45F152EAF6648DF4AB4511C6A492D1AE0924A9E373631ED40
          3674BE16F88D7DE2AF15FF0066DBE83E458AC25E6964972F1303D0E38FC3EB5E
          83824E00CD50D1341B2D034E8EC74F8162451F3BE3E690F7663D49AF23F1F7C4
          9BDD41EEF46D09A5B2B7B795A1B8B907124A470427F7467233ED405EDB9EA3AC
          F8B740F0F4EB06ADAA416B2B8C846393FA570A7C79E26F1A5DDC5B782F4975D3
          4C663FED0B9C4787CE0B0CE78C7B67DAB37C1FF0E74ED6ECED354D47538EF679
          64599F7C859F681CA10C727071C9ADEBEF8B1636BADCBA0F87744BAD4E4850C7
          BADE3C28947017A7238EBD280B9CC6AF078DFE19F87ADE04F12C33C576C54878
          CBBC321E49566E48FAFE554345F13FC44F11EB7631D8EAD34D1C73AC5348B6CA
          2150793E6103D0557F1E699E2F8ED6C7C41E2C789CCCFE4AC1003B2D491C6474
          19E726BD1BC1DE30F07E8FE11D3ACE4D66CAD6648F6CA9262372C39248FC7AD0
          236BC73E2D4F07E84B3AF9326A772EB0DA40C70AEE700B63AE0727F21DEA0F02
          F846E3C390DEEA1AB4E2E75CD4652F7536738009C28F6E9FA7A573716A1E12D7
          FC6B73E22D4FC41A7DC5858448B691CE762C6ED92480DF7B80BD075AD0BFF8CB
          E18B6B874B68AF6FD54E0CD0C60467D70588CD21DCF40073D07E754F57D62CB4
          0D327D4B5298456F0AEE3FDE63D801DC935E5979F17F5ED563F2FC2DE17999B0
          03CD2219B612D8FBABC71EA4D57D2BE16F88BC59A84DAA78EEFE7881236DBABA
          B48DC6463195451923039EB4EC17EC5BF02C77BF107C6D3F8D358B774D3AC479
          7A7C1272824C9E57D7681CFBB7A8AF5F3C9C9FD2A9699A5D968BA6DBE9BA6DBA
          DBD9DB2ED8A25CF1DC9E7924924E7DEAD0FCE90D0BC63349D7A714B80325851D
          7B7E540C304E00CF35E3DF113C4EFE2BD62D7C11E1FBBE279BCBBB99036011C9
          538EAB8CE79F6AE97E2678D1BC39A6A69BA6CCA355BACF23EF431E325BEA7B54
          7F0C3C12BA169A9AD6A5030D6AED5998C84968918E71F53C13EF4C9BF429789F
          41B5F037C21D42C2C36BCF70AB14F718DA6566C293FE02B37E11E9F7DA468F7F
          E2079E56D35C948ECD1B3BCAF05B1EB9E3DEB53E35DC491F8674EB74C7973DE7
          EF09EC154B0FD40ADCF85B62F61F0F74C67903B5D06BA040E81C9603F0CD215B
          538C5F8D9AB3C8D2C5E0E9A5B41234602B49BC1048C1F90807DAB8EF1B78BB53
          F16CF6D71A9E95369D656BC246C8FB37B772CCA0671C7E26BE9148E38942C714
          6A81B76D55039F5FAD32F2D6DB50B492D6FA08EE2DE41878A450548FA53B8ECC
          F9E7484D67C77A9DB68371E209ACF4C8ADCEE8E3388F6A73CA823279EA73D2BB
          EB483E1C7C2D8E295AE63B9D4482C92922698E300EDC70BD7A715B27E13F83B1
          3ECD3E588CC08DD14ECA50139F97078F4F4C7156F4FF0086BE0DD362548F40B5
          9995B7896E57CD7CFBB37343B0AC71FF00F0B6FC41AE398BC2BE109AEB7B388A
          EA56251B69F6F9738EDBBAD64EADF0F7C73A868B2EADAD6A6D7F70CE67934B12
          36D440370DA33B7703C6DC7E26BDBE18E2B78C470449120E888A147E94E0DCD2
          2AC7827823E27F86BC1DE16756B59A6D46E2E774C22C7CCB8E0E4F40076F526B
          AAD1FE2278D3C430DD47A5F82023865115D5C5C148915CE15886505C0EA76F61
          F4CFA50B3B456DC2CEDC1F5110FF003DEA7C903190140E31DA8158F3FF000BFC
          367D37574D77C4BABCDAD6AC8BFBA1292D15B9E0E537127208383C7D2BD03703
          401CFD68E9CD03018EC2B83D7BE1468BE24F144DACEA37B7EC65455685240A08
          07A6719C638C57799F5CD2D0162BD8D8DAE9B6315958C0905AC2A1638E318005
          4FD3AD1DA8C8CF4A4322B8B7B7BA81EDEEA18E785C6192550C0FE06B919FE157
          82E69DA53A3226E072AAEDB727B819C035D9F4EFFA518E73FCE98AC71F0FC2EF
          04C2E1D74185980C12CEC41E3AE338CD6D697E17D074548974FD26D61310F924
          3182E07FBC79FD6B5FAD1CD0160CE00C703B01DA9081D6979EDFAD140C423347
          F3A5E074141CF6A4018F538349D7914BDCE4D2633D8D30199E3DEBCFBE2E7881
          34EF0DC7A3C13A2DEEA4E0142BB8F923EF1C76E4019AF41AE0BC69F0D7FE130D
          7EDF516D6A6B68D6210C9188C36101CE13D09E79A1099C87C25F0943AADDBEBD
          A8C4CD058C812D1187C8F20E4BFBED3D3DC7B57B69393CD55D3EC2D74AD32DB4
          FB34D96D6D1AC71AF7C01D4FA9AB3D2982560C0C715CB7C45D5EE344F045EDE5
          B4A629895883A8C95DDC67DABA9F7AADA969B67ABE9D3585FC0935ACCB8646E7
          F1FAD20679AFC2DD2B40D2BC371F89B52BD81B53943196E2E26CB4633D393D71
          8C9AD8D5BE2C7862D525834EBA9750D409D91456F117DED8CF5E8455593E08F8
          3DEEA270B7AB0A03BA1FB4121CFA9279FCABA8D07C1BE1DF0C85FECAD3218E61
          9C4EE37C9FF7D1E698B53CDA1D13C71F12AEADAE35F32695A2800B5BA9DA5C7B
          2F7F4E7F2A4B5693E17F8D350DBE1ED5353D3E58923B49A28C3B0FEF7207B81D
          ABD9CB13D4E69431C7068B858F334F881E30D62447F0FF00826E16100AC86F8E
          C218F43CE38A6B7C39D63C5DAABEA7E37BF45558FCB86CAC643B10673CFAFF00
          5C0AF4E2C71D7F2A6FE740EDDCC99FC35A6BF866E741B484595A4D1188F91F29
          E463923D7BFAD79568DF04F547BB7835DD4204D2D1BEEDB125E600FCA4E78538
          FAD7B5E07D28FA501631FC3DE17D1FC2D68D6FA4DA088B002699892F2103A926
          B4AED5DAC2EB63BAC9E4B6D641960707040F5CD4DCD0321B3401F3AE8AFE2DF1
          3788AF3C451E873DEEAF196F29A68C470DB4ABB401F36012A3A0F5E6BB8B2F85
          9A9788AF5B53F1F6AF35DBB6447670C9B563E38391803A9E00EC393D2BD4F9E4
          0E013938E290F071D7F1A0563C8AC3E1DF8EBC3F79771F87F5FB1B5B6B85E1DD
          4B1F94FCB9C838382791E956B50F865E25D5B422757F164FA86A10A9682DD900
          883FD7A9CD7A9E39A0F7A2E3B23C96C34EF8ADA4E8A9A669F67A6C10C0EAD1B1
          994B30EEBF8F539F5AD21E0EF1F6A56F6B06ABE30582167325C0B3C8917B0456
          C0C8C773DEBD241C8E28C0EB8C7D28B858E32C3E157846C1AE99B4F7BB92E492
          D2DCCA5D9723B1FD7D6B1ED7E15EA3A65C4634BF196A36F6A1DDBC9190101E80
          73C9F735E979C9A5EB45C2C70B61F0F2EE08CA5FF8CB5CBA0EB868C4E5063B80
          41CF354AF7E0DE8770C458DF5DD8AF27E5632124F524B679CD7A3763C0E2823D
          0E28B8AC8E1B4AF849E16D39ED2E26866BABE8170D334CCAB21F52A0E3F0AEDA
          38A2871E5C51A103682A80103A54868183DE90EC43736D05F5AC96D770A4F04A
          36BC720C8615E57E2CF02F83F4C9ED74DB1B768357D627F2ECD44ADB62E39623
          3F747A7A903A57AD65472C460735E7DE0CBEFF0084ABC71E21F104D110B60FFD
          9D6471F2EC04E5C7A9273F863D28132C45F087C1AB6914575A7C9733AA059266
          9E405DBB9C06C0FA7A715B317813C2316C09E1AD387963033029FF00F5F4AE83
          9FFEB8A323A6681D911DBDB416512C3690450460602C6814019CF6A94E4F7A05
          07DA818631EF49DE8DC0F34107B9E6800E3D7F1ACCF116BF65E1AD127D46F278
          E2DAA444AE7EFBF60077E6A4D6B5AB2F0F69371AA6A326C8215C903AB9FEEA8E
          E6BC8F48D1EFFE316B035BD6D960D0ACDDE38208C61A4E41DA7D47504FE14098
          FF0087BE119FC5BA91F16F8815CDB87592D62762448C39CF3FC20918FA57B493
          9C6318F6A8E1B78AD6DA2B6B7892282250888830001D80A4B8B94B3B49EEA421
          52142E4B1C0E07AD1B86C78C7C60BE9758F17E99E1B849558821ECD99256DA0E
          3FD91BB3EC6BD9AD2D52CAC6DED2250A90C61005E8303B57887C33B79FC53F11
          AEFC41771B48885E732328E19B841F82F15EEA4F39C64D0C484E7B75A51EE68F
          AD148A0F7C5078ED4B8E690E3A77A602138FAFA53BE9F8521F51D68EA476A005
          1D79E051C5193DC66838EC69000FD68E477A0E4519A005FAF7A01C8F634739A4
          E8280171E9498CD2F349907B5001CE78347BF14BC9A38FCA8108452F1EB4668F
          5E68181C5033E947E668238E94007D05203CD19F5A08041EB40075EC78ED4B8F
          7A4E0741C0A53E9400C23BF7F5A4031DFF002A5C0F4A31918A6027233460E393
          4BEFD2931F4C500001A3B75A393DE8C739A000007B5260134B923DA9782338A0
          04A3AFAFD297A8CFF3A43907340063D0F14993CF1C52E067DE979239A004C76A
          4EBC639CF5A5C1DBC9E9470318A00E3B56F891A6787AF62B6D6F4ED4ACD67320
          B797CA0EB284232460E71820FE35ABE1AF145A78AED5AF2C2CAFA3B3E76DC5CC
          5E5AC9CE3E5E79E95C37C759F6683A3C6B9F31AE99C36DE36846C827DF23F2AF
          43F0E7FC8A9A360051F62848FF00BE0504A34B049F6AE7BC67E2EB7F04E869A9
          DCD94F768D288B64240C67B927A5745D783C5607887C5DE1DF0E3241ADDF451C
          8C9E6A42C859987232063EB40D8EF07F89A2F18786A1D6A1B496D6295DD56391
          B27E5623391F4ADBC1E31D6A9E91AA5A6B5A45AEA3A7EE369709BE1DC9B0E3E9
          DAB2F5AF1C683A06A434DBC9E792F8A8736F6B034CE14F7214702803A0C6475A
          777FAD73BA0F8DFC3BE24D425B0D2EF4C97712EE68DE364603BF07B8AE873CFA
          D002FE19A82EEE5EDE2DF1DACF72D9C048B19FD48A9F07BE4519E782450079FD
          DFC5ED134FD4E4D3AEB4CD612EE3711B44200CDB8E300004E49C8A9E1F8ADE1F
          17EF65AADBEA1A34A31B46A16ED197C9C0C71C7E35C8F8821F3BF685D3237857
          CB658C952FB4361643B8E3BE40FCABD43C5BA6C1AC785354B2BB5568DA16209D
          A3691C8209E011EF4C5A9A70CB0DC42B35BCC9342DD1E360C0FE229E303A9C8F
          7AF1FF00813A85E496FA969CF96B08634951CF45739C8CFD3071DB35D95CFC4C
          F0B5B5D5C5B2DDDD5D49039490DB5ABCAAA475E40C7140EFA17FC6DADFFC23FE
          0BD57510FB25584A5BE392656E107E6451E09D1CE89E10B0B791C493CA82799C
          2E373B0C9AE6FC67AB693E29F0BE9EF67A82B696F70B713DC2264AAC6776DFF6
          589038F4CD73F77F126CAFFE23686F04F3C5A0598688C92131EF7618DE4752A0
          0EFD726815CF64C73EE68C71C7E75CD4FF0010BC2305A5CDC8D7ECE51026F648
          9B7391D4617A9FE9DF14DD53E21785B4692C16F7544437A8248F629601083866
          23A0C8C521DC8BC73E3FB3F01C36525E69D7774B74C543C5808A075C93DFA607
          7E7D2B7341D660F10E8365AC5BC32C50DD47E62A4AB861CE3FA75EE306B2BC4D
          E29F08E99A7C4DAE5DD95C24B18B9B7B76512B4A072ACABEE7A1FD6B774EB8B5
          BED36CEEB4F2A6CE7855E0D8BB5761008C0EC314022CE79E475A82F2F2DB4EB2
          9AF6F26586DE15DCEE7B0AC8D53C67E1CD16EE4B5BED52259E35CC91C6AD218C
          7FB5B41C76EBEB5E57E2CF12DFFC4ED5F4FF000EF86EDE78AD771799A5E030EE
          EDFECAF1D7A92077A7615CC6F1C78E62F1C6B3676CB31B7D163B88D1213C4AC4
          B00CE40E4F1D057D03A669D6BA4E936BA7D8C422B68230A8A38E31FCEB8ED36F
          FC03E12B6B7F0F25F5A493DACE8AC58092433B9E0B103AE7F2E3A62BB5BDBCB7
          B0B29AF6F2758ADA15DD248DC051EB4304BA92E0039C567EBFA426BDE1ED4349
          925312DDC2D17980676E7BE2B0CFC4DF070B75B81AC66067D8B20B790216CF4D
          DB71FAD74B637B6BA959477765324F6F20CAC887208A43BA6737E03F04C5E0BD
          2A6B76BAFB5DE5C3EF9A70BB411D1401DB802A5BEF1FE83A45EA5A6A8F776324
          818C666B67C4814F25480735D3671D8D7987C7399A3F0C698C338379B48FF803
          502D91DDE89E22D37C47035C696D3CB6C3A4CF03C68DFEE96033F856B027D2B1
          3C1EA23F05E8E82348C0B54F951B207D0F35B59E0918C503419F5A5C81CE3AD4
          535C41696ED3DD4F15BC2B8DD2CAE1147E278AE562F8A3E0D97521609ADC4663
          218FEE90A0838FBDD31EF401D7F158DE25F13E95E12D2C6A1AC4CD1C0CDB1422
          96666C13C0FC2B5C00EA1908656190CA7208F515E67E3BD4FC13A8F8AB49B2F1
          078820F234F2F24B62233246F2741BDD4FCA460FCA7AE6806779A1EB56FAFE97
          1EA56B15CC7049F73ED1118D9B807201EA39C67D8D69F6AA96379A7DDD92C9A7
          5D5ACB67128553048A51140E071C0C0ED54ADBC53E1FBDBC8AD2CF5BB0B8B894
          332470CEAFB801B89E33DB9A02E6BD18F5CD62FF00C261E19379F631E20D33CF
          09BF68B95C019C75CE3B1E3AD6D74E87AF39A005C527340201FD697D290C3346
          79A3DF8A2800FC71476F5A339FFEB500D001EFD68EBDC518C127347EB4000E28
          239CE719A3148062800E4753467DE94FBD1D28013AF5A385F5A5FC314633E9F8
          D30183DBF5A3248F4A00F7A3A1EA314007E3CD2FE1C7BD3719E839ED4BF5FC8D
          001B41F4A28FF3C51F5140076A319EF4671EF499C9C7E9400BCF048149CE7028
          23141FA5002918EB4949D3DE819EBCFD314085FC79A31DFB503E61D3B51C71D3
          D2819E4FF1DE575D1B458724C2D71233038DA58210327AF735E87E19C3784746
          3E62C98B2886F53C7DD1FCBA57997C72D46069346D2965845C6D9A6906FF009A
          35C00B91E84E7AFF0074D76FE1CF15786A1F0A68C926BDA5C4C2D628F635DA06
          0D80318CE7AD327A9D5E3D3935C0FC638D17C032CFF6482697CF890BB85DE8B9
          27E5279CFB0F53597F123E235A0D31340F0BEAD1CBAB5ECD1446E2D64C885188
          E8C3AB1E06067827A55FF8C17274BF86F1592CDBE59E7860FDEC99790019273D
          58E40CFD6905CB5E1ED464D0FE09595FD98FB6CD6FA707408D9F988E99FF0064
          9E7E9599F066C63FEC8D4F5C9E659F52BDBA61348D96750BFC249F5EB8F422B5
          3C2966BAF7C18B2D3E29613E6D89854C6410187001CE707239F439AE07C0BE2F
          93C0173A8E8FAFE9F3C68F379AE88BF3C6E405CE0E37290A0E45303D0355F871
          1EA3F102CFC556FAADC5A188AB4D6F1281E611FED7607BE41CFA8AED7181CFF8
          579C5EF8E7FE12EF11E9DE1EF09492BC2644B8BDBE0A555625209419E72781F8
          D6CEB1F12F40D17C5F6DE1CBB4BBFB54CCA865118F2D0B1C2E4E73C9EF8A4174
          7618CFFF005CF5A4C608A5C64E14E6819270C00FA5033C4FC48B712FC79B4FEC
          D36F05F05411BCDB9D376D7C961C76C8E0D749AEF85BE2178B0AD9EA9AEE8FA6
          E9454ACCBA60959A607D437FF155CA6B1AADAAFC7EB4992F6DD5629522766701
          7715618380327E61EBD7AD7B9370FC631DB14091CC69BE08B5D13C1B79E1FD1A
          EE5B69AE62706FB03CC32118DC718E9FCAB96F0ADEE91F0D7451E1C9EF86B7AD
          CCE58D9E9B119189248C7A01EE715D678FF53BCD23C05ABDE58239B848B01A3E
          B183C17E9FC239FC2BCFFE166BDE12F0E786E7BCD4352B75D5A7958B96CC9712
          0E802F5273E829819DF0FE3B69BC7F796AC45846D74F28D3248F77473C0DB950
          4703D31C66AF43E54FFB46DD99E3F30C722955542FB088570DC0E3F90ACAF03E
          A3A79F8A4D757AB285B9BB9C5A8688EE0ECEC46E5EAA71DAAEDE6A761A17ED09
          A8DEEA92FD9ACC046677CE09F25406F71C638F4A048DBF8E1616B0F866C2F60B
          1B64BA6D4155E74880765F2E424138C9071D3FC2AE787FE19783F53F0858493D
          98BB96E104CD71921813C951E8A3918F6ACDF8BDABD86B9E03D26F34CBA59EDA
          5D51424DB594122393A020123F4AEEFC152DA4FE09D224B29627885BAA128300
          30EA31EB9A07A5CE03E35E97A6E9BE15D13EC7A7A44D0CE62495572562585F0A
          58F27A2E33E95D24BA8CBE1DF8216B3DB36FB98B498618D8064F9D95577038CE
          064907BE07AD73FF001F36B687A247193F6B92E641161C01B361DDC7527EEF23
          81CE7A8CD0F1478B65F14DA59F80FC2F692CAB25A45E638DAA582A86D8376000
          00196E39181EE0B639AF0DCDAC368D1F867C2D663FB4750959EFB536C93B5870
          AED8CA2E14E7D48E3AD7A4F87FE1649E1EF16D96B367AFCAD690A38781A20AEE
          1863693D08CE0F233C0AE37E1A78B345F05EA7AA59EBB6F71697772EB9B93196
          D8A06023019239E4100E727D2BB7B5F1E4DE30F1858E9BE10DF269966FE6EA97
          AE8154A956DAA15B0DC91FFD6C0A1DC158E73E23E9F6C9F14FC2B1436B6B1ADD
          4D13CA31B7CC2241C9C01CF1F8D76DF123C1F7FE31D120B1B0BE8ED7CA94BCA9
          296092AE30036DF43CD709F18CE7C79E1E58658FCF088143B81B18CCB8FA7AD6
          CFC6FBCD46DFC35A7DADA4A6386EA5D93E3186C2E4027191CFA1A1740EE26ABE
          22F0FDAF82E5F0968D6EDACDCDB5A7932FD9203E4C3C60B48E3017907BE6ACFC
          13564F06DD26ECAADE3EC18C60100E2AA6A3E21F06E87F0D25D3749BAB0FB5DD
          DB6C5B7B71B9DE4C0C9700647B960293E0CEADA5DBE892693F6B885F4F72F224
          0AC5DCA803E620741DB27DA80EA7AAF046471ED5E57F1D01FF00847B49DC5BCB
          37641519C1F91BD07F5AF54EBEB5E55F1DAEE34F0EE9965E62ACD2DC9700CA14
          ED0A72719C91D074EF486F63BEF0B64784B490CA54FD99782B83D2B5BAF15CE7
          82AFB4E93C0FA43437D6CF1242B116128C06E9B4F3D7DBAD50F1F78DADBC39A5
          3D9D85DC72EB972561B786264778D9B8576527A67D6805B1CDFC4BD42F2FBC6F
          A17868594B7FA73E2E67B188EC37241C052CC42951D7EBD7B55AF19586BDE29D
          03FB2E3F00BC33C254DACEF7B6C5620319E8D9191C62B1BE2C69DA9D86A3E1DF
          152BB6FB7448AE0EEDA43E41EC3032723F115D4587C62F0B4FA735CEA97274DB
          A41992D9D5989FF7481F30FD7DA988E68EA3E2DF017C2EBCB6D4E19E0BE6BA5B
          6D3A413C736D0D939EA78001EBCF3F5AF42F096856165E0CB1B136B1CB15C5BA
          CB70648D4F9ECE3712DFDE3CF53CD705ACFF006DF8F3E17EB1ABCD149E58BA17
          5A75A95DA7C98CF39C0CB657711C67381CD769F0EBC4369E24F07594915D4524
          F6B188678D41531632141079FBA073D0D008F31F0DDBC5E08F8BDA87861D7768
          DA8CDE41B575F36364917744083E849539CF19FAD54D3F43D2F50F8DF77A225A
          98B4E1773968AD5046A5445CC64AE30849208F7C77ADAD0AD63F1D7C70D475BB
          7632693A64C8CB3C6A0ACB246A1530FD0FCDB88F61557482ADFB47C8C195BFD3
          6E86E8CE47FC7B6083C0E98E7DFB9A00D7F8B7E0CF0F69DE0782E34FD32DAC66
          B598450882200C9B87218E413D09C9C9AF41F05DD35DF81F43B8699E777B28B7
          4AE30CC768C935C8FC7150DE068879BB2537881509C6E1839E0FA71CD759E079
          125F00787DA32A5469F0AE11F7004200467D8F14BA14B737874EA4D2F7E7AD1D
          7B51F5340C5C11F4A6F5E052F029339A402FE5467F4A3E879A31CF5A0031CD18
          19E873411F801E9476EF4000EBDB8A5C534E3B8A319FFEBD30179F6A3DF34647
          7EB49F8E6900BD3A5183DB8A4FA0FC2838F71400CCF4C1E3D2940009C1E49C9A
          0714608E49C1A601ED9E28E07FF5E8CFA9CD2F18EBC500264FE141E3A83CFB50
          4E7A503E9CD002E077E31DA93D473F8507A724FE14638EB40074EDF9D1D0518F
          CBEB4703340071DA8FBDC0FD68E98E38A383C1CD002647A67DE83B769041C1EC
          2973EE0D1F5A00C87F0C787E491E49745B19A46528D24D0876208C1196E7A0A8
          67F04F852E1CBCDE1AD25C95C64DA267F97B9ADDCFA1FAD1EA07E7408C7B6F08
          F866CE6826B5F0EE9504B036F8A48ED503A107A820673526A7E1BD0F5BB98EE7
          55D26CEF668976A3CF1072A3AE067DEB53F0E7B504E0F3D4F7A0651D3B45D2B4
          70EBA5E996762B26378B68563DD8CE3381CF53F9D47AB787344D780FED7D26D2
          F1D4603CB182E07A06EBFAD6971D7F5A3AFF004340AC55D3B4BD3F48B416BA65
          8DBD9C00921208C28CFA9C753EF515C685A3DE6A516A373A4D8CD7D11052E5ED
          D4C808E9F3633C55FE7A1228FC726800233DC827B547716F15DC12413A092290
          6D743D08A938FC3D6979C7F2E28030C7833C2DE488CF8774C28A4E336C84827A
          F2466B5A0B786DA21142BE5C6BD10741F4F4A9BA75C527D79A0046557428E81D
          1860AB2E430F7158967E0CF0C69FAA2EA969A0D8C17CA4B2CC9180549EE3B03E
          F5B98CE0014A4600C007E9401E75E26D22CB4AF88BE1FD7961B7B5B76695AF26
          58831773B02139FC791C8AEBB56F0AF87F5CBC4BBD5746B3BCB8450AB24D164E
          DE703E9C9E2A3F15F86E0F14787EEB4D902472C91958A768C3B467D467FC6B93
          D0FC75A478534FB6D03C4DFDA9A65CDBE624B8D4222EB381DC3AEE07F3E28175
          3ADBDF09F8735211ADE689653AC4A162592205500ECA3A28FA52DA693E1EF08D
          8DE5E5ADA59E95684092E245011300753E9F877AE3B59F8E3E14D3A365D30DC6
          AD71B495D88628F77A333E0FFDF20D7270F87BC73F152F525F10BCDA768818C8
          8248BCB51C71E5C44E58E0F0EDD89A61721F17EBADF127C536FA4785B4B12BDA
          3CBB6E9DD7F7808037E7F823E091CFCD91C57AD784FC19A57846D40B38449A84
          8805CDE4877C921EE013D173D000074ABBE1FF000D693E18B1FB2E93671C2080
          2494AE64988EEEDD5BAF7E9DAB57DF3ED834AE348CABEF0B787F53BC177A8685
          A75D5C0FF9693DB2B93F5C8E6AE5869961A45AFD9B4DB2B7B3B7DC5BCB82308B
          93D4E062ACE31D4F6A5C77FE540182DE08F0B4AF349378774D9E499CC8F24D6E
          B23B13FED30CFE15A975A6585F5AADADDD8DB5C5B28C2C52C41C0FA03567F23E
          D4727B50061E93E0DF0E68705C41A7E8F6D1ADC1266665DECD9ED96C9C7A0E82
          ACE93E1BD1741DCDA5E976D6D236774B1C4A1D8139C16C648AD3F6CFD46697F0
          E7DA8013001AC19BC15E1BB9B992E6EB4A49E7908DD24D23B1E0E40193C0E4F0
          38ADFF00C09A4C8CF2083EF4058E567F865E09B89FCD9BC3D6CD2139CEE703A6
          3A6EC53B4CF86DE0DD1EE167B2F0F5AAC8A72AD2B34B83FF000326BA8CF60D47
          F5A02C4577696D7D6725ADE5B453DB4830F148A0A91F4AE62D7E187826CA7866
          B7F0FC21E17DE85A591F07E8CC411EDD2BACE7A7A51819C739FD280D0170802A
          E155461540C01EC2B94B9F869E0CBBBDB9BC9F428FCFB92C66649A54DE58E4F0
          180E7DABABC03C734703A0CD0052B5D234FB4D2CE9B6B6CB05994F2CA424A123
          18FBC0EECE06339CD6243F0DFC1D6B726E6DF418219CE489227752A4FF00770D
          F2FE15D4F520F534633DE80B193AAF86744D70C3FDABA6C57C20188D67CB2A7D
          14F19F7A9748D034AD06DCC3A5D925AC58FBA8C480324E0649C0C92703D6B47F
          0A0119EBCFA501601FE452F3F851C7B51C7FF5E90C013DCD03A9A4C93D88A5C6
          7AD00181F5A3A0E86823D0519CF5EB40809C76A31CE3A519A0119A062FB75A4F
          6FD28CD190298067D851C63BD2F148690071D451CFA0A0FEBED480311D450037
          1CE38A3031EFDA8C607CB9A07B807DA9809818F988C7F2A503D28E093EF477A0
          42FD71484007A75A3A8E38F7F4A3B6339A003A507039EF451C8ED906818BC606
          4D27D49E7A628181D0D2F6C9FCA801338ED463DE978C719C7AD3481D7A1F5A00
          CCD76FF52D374D9AEF4FD312FCC0864788CC519D4724280A72D8CE2B86D07E28
          7883C4FE68D0FC0BE7F92332349A9AA05CF41F3275F6AF48B9904365712B3A46
          16266DEE3E55E3A9AF23F8000FF636B181805E23D49C9DA79A09EA74B71E3AF1
          1E9307DB35FF00015E5AD801F3CB677B1DCBA1EA49518C0F7CD741E1BF17E87E
          2EB53368F7A256501A481D4A4883DD4FE59191EF5B80EDC9FE1EF5E09E3AB37F
          877F122D35AD0F16F6D73189C5BA6E8E32118092338FE123071DB3406C7AA78F
          F59D7344F08CD7DE1FB35B8BB4917792BBBCA8FF0089F6FF00174C63DF3DAA4F
          02EAFACEBBE138350D7AC7EC77B248FF002088C61933F29DAC491C7AD47E2AF1
          D58785348B6D4DECEF2F6DEE76146B58CB47B5BA12E46D19EC0F26A6D0FC636B
          AD78313C4E6CAEE1B721CBC0A9E6C802B156202F51C13F4A06743D40C67DA8E9
          D7AD79D58FC65D0AFA0D564FB25C40D68A1AD6394E1EF073F70763EA3AE0FD6B
          57C13F1134FF001AA6A016D67B09AC706649CE42A104825BA0E8783E9405D1D8
          638E9473EFF4CD70F27C45B8BCD426B7F0CF86AF75DB681B64979148238B7F52
          158821BA7EA2AF783FC7BA7F8B8CD682DE4D3F5587779B633365800C4643606E
          E9CE3A668B05CEA81ED8A0F3DFEB5CCF88FC6FA5787EEE0B02971A86AB336D8E
          C2C70F267D5812368F7359167F13961D721D27C4BE1DBBD06E2E4816EF2CAB2A
          4849C6090063A8A02E8EE6E2786D2DA4B8B99A28208D77492CAC15547A927A0A
          7C6CB22078D95D5864329E08F5AF1DF8B7E26D4A646D0974EBBB6B067123CCEB
          8FB522F55520E719C7A57A1786FC43FDA8B1597F616AFA77976E8DBEEADC2467
          23A0209A0573A1033DB9A00C7535C6EA7F11AC21D61B44D06CAE35FD61558B5B
          DAB2AC71907043BB1C2FEB49A57C48B0B9D5E2D135AD3AF343D5E4E905C80C8C
          7B6D90707F2A0773B3F4E3F1AADA869BA7EAD02DBEA5A75B5F420E425CC2B228
          3EB86079AE6FC41F11B43F0D6B516937715F4B70D8691A283E4894F724919FF8
          0E7A76AA49F16FC2F71AEC5A65B8BE9D2495614BC48D440588CF52C1B1DBEED0
          17474963E15F0E69D706E6CF41D3609CBEF0F1DAA0653C01838C8E9DAB5CB139
          EF5C66A1F12F4AB5F11C9A169DA6EABAD5FC676CA34F855D23607952C58723BF
          6ED91D9FA1FC47D1F59D74E853D96A3A56AFB722DB50844658E3385209CF1CF3
          8A02E8EC09CFA7D2A86A771A8DB421B4DD3575094E731B5C0840E323920F5E9F
          523B722F951BB3D3D69D1FDF18E9ED401E63A5FC58D4F5CBB361A6F826E67D41
          6367787EDF1A2A6D201CB3003A9C7F4AD66F15F8DA2943CFF0E27168065CC3AA
          C12483E883AFD2BCFBE0E46EBF102F192018FB2DC0939C6CFDF0C119193D08EB
          FCABDAF59D5ADBC3DA3DCEAB7DBC5B5B2EE7D837311EC3BD02466783BC59078C
          34CB8BC8EC6E2C5ADEE5ADA482E08DC18007B7D475AE3753F889E27B0F8A30F8
          6CE956A74F92E1634610486492361F7C30240C75E9DBB0E4777A4E85A6E8D3EA
          37F636EF1C9A8C9F689F8E738E800FE5EE6B02F3E2AE856BAC5B693041A9DDDD
          CD3AC0C91DAB2797B8E013BF1C7D33401DB6304F4E7DA8E474ACFD6F5AD3BC3D
          A649A8EAB702DED9064923249F403B9F6AE3EFBE2AC1A6B472EA5E15D7ECECA4
          6016EA68140DBFDE2B9C8FA75A10EE77E7AE68FA0AA961AB586A7A5C7AA59DCA
          4964EBBD6639518F7CE315CA49F13AC2EAEA68341D2353D756DF3E7CF671858D
          08EDB9C8CFE1405CEDB19A303BD739E1CF1D685E2DB59E6D2669E47B750D3406
          06122E7DB1CFE151687F10742F106BADA2D90BD5BD4121759A02814A1C30C9EF
          9A02E75200C707349CF62DF4AE57C49E3FD2BC26C1B58B2D4E388B88D2E12DB3
          1BB609C039F404D57F1BF8D1B41F0E79FA7D8DDCB71796FBADE7118F2E1DD801
          9CE7B6E071DF1405CEC23749977C522BAE48DCA7232383CFE75E69E23F88FE22
          D13C791E850F86E39AD269228E095CB2B4C5B192ADF77FBC307D293E1AF896D6
          D342B0D18699AC5C5CCD3B09AF56D0985A46392ED2138C7A9ADDBBF89FE16B5F
          10C7A2BCB732DE7DA3C82C2D48489F38E59B1F98CF140AE76447CC7A8A4FA715
          CDF8A7C6DA7F83E58FFB4ECB5392295722E2DADC491839C6D273C354FE16F155
          AF8BB4D7D42C6CAFADED15FCB57BB4552E4121800189E31DF1D68B0EE6EE33C6
          D1CF5A5E057313F8E74E83C691F851EC753FED097055D600D115C677643676F1
          D71506A5F12343B1D78E896B6FA8EADA9292AF069D0799B3039C9240E3EB405C
          EBF2338A2B8FD13E25F87B5CD5DF476179A66A6ADB3EC9A8C1E53B1F4182467D
          B39AEC38071405C31E98A419E9CD2F5F4A3BFE348607A74E28C83CE28C907AFE
          94633DF9A621383474FF00EB0A5EFCF4FE740F6A430FD68C7E74BFE78A4F61C5
          001DB140001C679FE749C67D49A523231C5001DBFC69319FC2978CF14103D3F5
          A006671471DFAD1CF27B5041ED4C000F419A4EA29718EDFAD2F4A0033EBCFD28
          1D7A7349F8D18207A8F4A005E7B1A407A8A3A9C8A050018E339E683CF19A5EBC
          D2679E0E33ED400606781460834B9C0F5A33919CD0050D6CC4BA06A4D7065100
          B593CCF2B3BF6ED39DBEF5E5BF01C8165AB860C261E5704E7E5C1FC339AF46F1
          56BB0E85A0DD4C55E5BA78996DADE288C8F2BE3801475F7F6AF26F861AC0F04C
          37D1EB1A56B08B72B1BABA593B8DDCF18038A097B9EE43246715E15F1B356B7B
          DF135969B69234973636B22C80382AB24A576A01D4361413ECCB5DADEFC4ABCB
          E5683C25E16D5750BC68C9596EADDA1850F4C9CE09E7B71F5AA7E0EF879A9378
          8DFC59E2E9525D4656F352D7A88E4F976B641FE10080BD80146C0F52EF8E2CDB
          4BF8212D83864920B5B48A4C396DA4491EEE4E7DEAD7C241E6FC2ED217965613
          AE0C87FE7AB83C8191C83517C5ABF1FF00088B68F0C53CF797F2C5886081A425
          15C31248FBA38EA7AF4C770DF85FADC36DF0E60FB6DACD68F6524B1B47E4302F
          F333028A064E738E3B83407538EF839656577E36D7AF5ADC09ECD40B6C3EF587
          7B386C13D4F0067EBEB5E85E3C8A2D2FE1F788EEB4F823B5B896DCB492C0A236
          63903248EBC579D7C22BA9F4AF14EA097DA6EA16D6FA8C40C73496AC10B07623
          2DDB218D7B1EB5A4C7AE6857BA54927971DD46632FB776DFC2861D0F35F0168F
          E32FF841B4A7D0BC49A45A69EC8648E0FB279C577316656627EF024823039C8A
          9F48F855AD5978C2DBC4573E25826B949CBCBB2D994C8A41C8C86F71C7B572DE
          1ED7BC51F0A5EEF46BDD0E5D474EF3DE5595432F603E4232B8E9918E093CD76F
          A26A3E26F1B788ACAEAFF439B42D16C099F64C4992E64230A390300673D3D298
          8E7BE1694D47E28789F51BA21AF177244492485DEC0E3FEF85AEFF00C57E04D0
          FC652DACBAC24EEF6A1950C5294F9490483F90AF2FF12687AEF80BC6F2F88349
          B49E6D3B719F7A2655558E5D1F1D013CE7D6B625F1DF8AFC7360BA4689E1B7D3
          CDEE55F5069199238F3862B955E7F1A2C0BCCADF1A608AD17C3D0C26EB6C28D8
          70C586C0471EA5BA63F1AF4DD63513A7F826E6FD166711596E1E5801FEEF501B
          BFD6BCE3E2D6917BA741E1DBDB3825B986C10C323AA972A72A4311E9F2FEB5D8
          F86FC547C716B710C1A3DEDB69C2DBCB6B9BC8820924E842804E40A03A9CDFC0
          FB5861D1756B855FDFB5C05676E491B41EBDFF00C6ABFC73B14FB1E8BAB9628E
          9335B640F9BE65DC08C770538FAD50F0E4F7DF09F5F6B2D72C6E64D3AED028BD
          B78CCA9C1E090A339C76AB3E30BF7F8A9A9E97A0F8664B96D322633DEDDBDB14
          44ECB82F839EBC63B8A1EE1D2C73FE349AE2F26F0A5E5F1931A858A40A25DC40
          70E3271C6090473DF1F9FB90D074957B43269B68F3DAA048A5685772E06383D4
          77AF15F895742DBC5FA469D696D35CDAE91043BBC9B72C036E05874EBB541E0F
          7AF71B2D42D357D3D2EECA6DD14D1E5597195C8E87D08A1823CC6093C2BF0E7C
          6D7D1696353D675DD49BFE3C2DC895A00DF37CCCC7A9233C9CE1871DEB98D61B
          521F19747D475ED3534BB8B99EDDD234984AAAA0951F3640CF63C0FA51E07D7A
          DFE1FF008B35B5D7ACB5237370CEB1C91DBF98F361C9DC4F7278E9C7D297C4FA
          AEAD1FC4CD37C4FAAE81A9C36AAF11B5B430AB4C634E58601201C9CE09A019EF
          E47CC7A52040C4A8660586320F23DC552D26F67D534C86F6E2C25B09265DDF67
          9983328EA338FE546ABAB59E85A5DC6A57921482042C76AEE63E800EE7DA9147
          847C36D23FB4FC792D9B6A1731436D1DCC9235A5CBC2D2FEF3680594838CB6EF
          A8AEF3C4DF08F4AD5346B9F2AEB57BCD45632606BAD41A4F9FB7DF38AE0FE1D6
          AF0F87BC732EA9ACC37D676D7D6B2A2C92DA3F0ED22B0C800F1C357A73FC59F0
          628731DF5DCECA09F2E2B09C938EDCA01FAD377B92AD63AFB385A1B1B688A953
          1C6AA541CE303A66BC63E20B47FF000BA3445DD364CD6DBC48A0A67771B4707E
          BD7B5755E01D57C43E27F12EB1AFEA0B7F61A480B059D8CEBB548EA5B07B8E39
          1EA6B99F89891AFC5BF0CB79ACCD2CF6FB9377098957181EF4903D8B9F121AF6
          7F89FE1FB5845A1098783EDB2B34024EC5A318C1CE0020F7ADCD67C39F1035FD
          26E34CBFD6BC3F1C1375F22DE55603D01DDD3F03507C57F07EA3ABB596B5A140
          F26A16AD89364815828E432E7F88102B134CF8DD7234CF26EF416BAD597F7691
          C2CC8656F752091EFC9A00ADADF87357F87DF0D756B66D5D0FDB2F50A9B6DC9F
          210AA47FB24E0F4F5AF44F877670D87C3CD16386144492D95DC28C659864E7DE
          B9F87C27AF7893C01ACC7AE398B59D5273731C0F27C9095C08D3A1C2E00271DC
          9AE33C27F106FF00E1D6FF000EEBDA2CED690C8DB442844A8C49248DDC3A9EDC
          8A7B86CCF50D03E1DE85E1DF14DCEBDA7B5D2DC5C0606279728A58E5B03FC6B8
          4F8791C91FC5AD7164B591A4496E199DCEDF2833E57E5EF91FCBDEBA9F096A9A
          DF8CBC40BAFDE69F3691A4DAC4F1D944D27CD3EF232CEA78C800631D327935C5
          596ACFF0F3E26EA5378920BC920BA790C5751C65B72B1C838C7CD8076F1D31D2
          819B3F1EDF1E1DD2036769BC24FA67CB7ADBF19408DF04A7175752C663B18A45
          9080CC5D4AB2AF1C6090067D0D713F137C50FE29F0F69F7569A55D5B686B74CA
          9797002B4D215651B532485C13C91E95D76BF2CFE23F829709A64179E725AC45
          A3922689DD50A960B91F302A08E3AF4A2C2EACD2F853FF002205A946CEE9642D
          95C739EDEB5C678D83A7C74D1593A04B42554AE49F35C0EB819FAD5BF86DE3AD
          322D0EC3C3DA6D85F5C6A6F705654F2F6C6809F99CB760076EB9F6E464F8FB50
          B17F8C1A7C89297B4816DA3BA9638D99637595C904F4C80CBF9D033D67C5DE1C
          87C59E1CBCD225768DE401E09471E5CABCA9FA67AFA8CD79DFC10D6DE17D67C2
          FA8158AEEDEE9A5489E4F9B7FDD9500FF65933C7F7CD7ADC5710DC812DBCA922
          3608746CA9FC6BC0FE29E8975A3FC448AEF4BDF6CDADED5B69E1629E5DC3E239
          391D09054923D4FAD240FB9DCFC348135AD53C47E329527F3750BB7B5B569704
          AC09FDDE3804F183FDC1599A7E9DE1EF85DE30BCB99759BAD4B51BF8CA5B6976
          F6DE65C61983F51DC9F5DA2BD3B46D3A1D1F49B1D32004476B0AC6B96DC7818E
          4F7FAD7847823C4B63E0AF1D6B6FE2B86F1AFEE488E2B9689A57077B65738DC7
          702BD3FBB8A00D3D4EF2F2EBE3868771A8691FD9570CEAAAA664959D76360B15
          18071C6013F5AF703D4FF5AF00F116BD041F16B4DF11EB9A4DE69DA796568D67
          42CF2A2A32ABED1D08620E0735EE9A6EA0354B08AF56DEE2DD65C958EE63D8F8
          EC48ED9EB4304CB7D28E68ED475FFEB52284EF4EFF003C5276E94A38A0427E34
          BF8D213DA8FAD0317F5A4EDC668EBE98A380314000CE38FD6827B91CD21FE746
          3028017F4149920519E7AFE94A07B023B734C0673E87E946D3E956074A3B0A05
          72BEDEF839A5C7B54FEB47A50172B807D28C375DA6AC0ED40FBA7EB405CAE14F
          A7340E7A03539FF567E94A3B501720C1E9D28C37423F4A9FF87F0A0F4FC29010
          6DA31C54E3BFD68FF1A61720F9863D452EF6F53530EA2814010EE2C3A9A43CF1
          C8AB0290501721CB28E33F5A5DCDEA4D4C7A1A4FF03482E45B9B19ED4DE4E0E0
          8353F6A3B0A0080F3824038E848E94B827D7F1A9E93D68B8101C90548047A119
          A7E4E318FC8549DBF1A5EF4010E081C8C8F4229304F6A98F414A280B90F38C73
          81EB467F21E82A4ED4A3A7E145C2E4458E3AE29B92471CFE1537F0D28EA68B81
          5CC68D32CA6346954615CA8DC07B1A77248620161D0FA54C6907DEA60479E7A7
          D4D319124501D15D73901973CD4FFC5F850BD3F0A008892C30467D8814C11221
          CAC51AF6E14559FE214A3B7D6905CE1BC57F11ED3C25E21B1D3B50D36ECDADC8
          064BE0A7CB8FE981CE38CFA572D716D0F8DFE30E99A9E96A2F747D3E3F327B8D
          8563DE07CAA1F1F3306C1C7B57A8EA5F753FDD6FE9468BFF0020D1FF005D1FF9
          D3B816B77CD900834CF2A20E1C451EF5E8C10647E3567B1A53DFEB4AE04073EF
          9A4755603722B91FDE19C54FE94C1F7FF0A008CE318046074038A0F38C8538E9
          B866A4FF001A53FD2802170AC02B2AB004100AE4023A1A76E20D49FC349DA981
          0C514700610C51C41D8BB04503731EA4E3A9F7A7EF6C63B54DD8520EB4010850
          BF28000F6A6BC28ED1B4912398CEE42CA0953EA3D0D4E3FAD21E9F8FF5A00675
          F5FC2A292DE09A54926862691082ACE8188C74C1ED567D7E949DE802BCD6B05C
          3ABCD6F14CC872AD24618AF39E3353727AD4829475A00887F9E28A98F6A67F15
          2B80CEBFE1464D38751F4A4F4A004FE74739A051FC340067DA9B9A77AD2F76FA
          D318DCE79C7EB411C8CFE54E5FBA3E94A7F8690861CE79E00A39F4FCA9DFE348
          DD6819FFD9}
        mmHeight = 21167
        mmLeft = 121179
        mmTop = 194734
        mmWidth = 59002
        BandType = 4
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'FECHA DE NAC. :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3429
        mmLeft = 8202
        mmTop = 16140
        mmWidth = 23019
        BandType = 4
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 31750
        mmTop = 19579
        mmWidth = 19050
        BandType = 4
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PARA USO INTERNO DE LA FLEBOTOMISTA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 8467
        mmTop = 161661
        mmWidth = 171450
        BandType = 4
      end
      object ppLabel42: TppLabel
        UserName = 'Label42'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'FECHA:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3429
        mmLeft = 7938
        mmTop = 178859
        mmWidth = 10414
        BandType = 4
      end
      object ppLine22: TppLine
        UserName = 'Line22'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 19844
        mmTop = 181769
        mmWidth = 37571
        BandType = 4
      end
      object ppLabel43: TppLabel
        UserName = 'Label43'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'HORA:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3429
        mmLeft = 59002
        mmTop = 178859
        mmWidth = 9398
        BandType = 4
      end
      object ppLine23: TppLine
        UserName = 'Line23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 69321
        mmTop = 181769
        mmWidth = 29898
        BandType = 4
      end
      object ppLabel44: TppLabel
        UserName = 'Label44'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'COMPROMISO DE ENTREGA DE RESULTADOS.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 100277
        mmTop = 178859
        mmWidth = 79111
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'DBText19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Fecha_Nacimiento'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3429
        mmLeft = 31485
        mmTop = 16140
        mmWidth = 19844
        BandType = 4
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'APELLIDOS :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3429
        mmLeft = 94721
        mmTop = 3175
        mmWidth = 18119
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Apellidos'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5027
        mmLeft = 113506
        mmTop = 1852
        mmWidth = 66146
        BandType = 4
      end
      object ppLabel46: TppLabel
        UserName = 'Label46'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ARS. :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 8202
        mmTop = 23283
        mmWidth = 8467
        BandType = 4
      end
      object ppLine19: TppLine
        UserName = 'Line19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 31750
        mmTop = 25929
        mmWidth = 90223
        BandType = 4
      end
      object ppLabel47: TppLabel
        UserName = 'Label13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'FECHA IND.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3429
        mmLeft = 125148
        mmTop = 22490
        mmWidth = 17865
        BandType = 4
      end
      object ppLine20: TppLine
        UserName = 'Line14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 149225
        mmTop = 25135
        mmWidth = 30163
        BandType = 4
      end
      object ppDBText30: TppDBText
        UserName = 'DBText21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Ars'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3440
        mmLeft = 32544
        mmTop = 21960
        mmWidth = 91281
        BandType = 4
      end
      object ppDBText31: TppDBText
        UserName = 'DBText22'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'fecha_indicacion'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3440
        mmLeft = 151342
        mmTop = 21960
        mmWidth = 27781
        BandType = 4
      end
      object ppLabel50: TppLabel
        UserName = 'Label16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'NO. LAB.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3429
        mmLeft = 7938
        mmTop = 137054
        mmWidth = 13547
        BandType = 4
      end
      object ppLine21: TppLine
        UserName = 'Line20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 23283
        mmTop = 139436
        mmWidth = 35190
        BandType = 4
      end
      object ppLine24: TppLine
        UserName = 'Line201'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 85196
        mmTop = 138642
        mmWidth = 35190
        BandType = 4
      end
      object ppLabel51: TppLabel
        UserName = 'Label51'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'NO. LAB.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3429
        mmLeft = 70115
        mmTop = 136261
        mmWidth = 13547
        BandType = 4
      end
      object ppLine25: TppLine
        UserName = 'Line25'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 143934
        mmTop = 138377
        mmWidth = 35190
        BandType = 4
      end
      object ppLabel53: TppLabel
        UserName = 'Label53'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'NO. LAB.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3429
        mmLeft = 127529
        mmTop = 135996
        mmWidth = 13547
        BandType = 4
      end
      object ppLine26: TppLine
        UserName = 'Line202'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 9525
        mmTop = 193940
        mmWidth = 84667
        BandType = 4
      end
      object ppLabel54: TppLabel
        UserName = 'Label19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'FIRMA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3429
        mmLeft = 49477
        mmTop = 195263
        mmWidth = 9567
        BandType = 4
      end
    end
    object ppSummaryBand3: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 8202
      mmPrintPosition = 0
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 208
    Top = 65528
    object cxStyle56: TcxStyle
    end
    object cxStyle57: TcxStyle
    end
    object cxStyle58: TcxStyle
    end
    object cxStyle59: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle60: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16578029
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle61: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle62: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14811135
      TextColor = clBlack
    end
    object cxStyle63: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle64: TcxStyle
      AssignedValues = [svColor]
      Color = 14872561
    end
    object cxStyle65: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clBlack
    end
    object cxStyle66: TcxStyle
    end
    object cxStyle67: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle68: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle69: TcxStyle
    end
    object cxStyle70: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle71: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 12937777
      TextColor = clWhite
    end
    object cxStyle72: TcxStyle
      AssignedValues = [svColor]
      Color = 14286847
    end
    object cxStyle73: TcxStyle
    end
    object cxStyle74: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle75: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle76: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14286847
      TextColor = clBlack
    end
    object cxStyle77: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14286847
      TextColor = clBlack
    end
    object cxStyle78: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14286847
      TextColor = clBlack
    end
    object cxStyle79: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle80: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle81: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle82: TcxStyle
    end
    object cxStyle83: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16711164
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clSilver
    end
    object cxStyle84: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 12937777
      TextColor = clWhite
    end
    object cxStyle85: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle86: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle87: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle88: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle89: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle90: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle91: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle92: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle93: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16749885
      TextColor = clWhite
    end
    object cxStyle94: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 12937777
      TextColor = clWhite
    end
    object cxStyle95: TcxStyle
    end
    object cxStyle96: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle97: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle98: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle99: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14811135
      TextColor = clBlack
    end
    object cxStyle100: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14811135
      TextColor = clNavy
    end
    object cxStyle101: TcxStyle
      AssignedValues = [svColor]
      Color = 14872561
    end
    object cxStyle102: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clBlack
    end
    object cxStyle103: TcxStyle
      AssignedValues = [svColor]
      Color = 12937777
    end
    object cxStyle104: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle105: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle106: TcxStyle
    end
    object cxStyle107: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle108: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 12937777
      TextColor = clWhite
    end
    object cxStyle109: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyle110: TcxStyle
    end
    object cxStyle111: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 387801
      TextColor = clNavy
    end
    object cxStyle1: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clRed
    end
    object cxGridBandedTableViewStyleSheet1: TcxGridBandedTableViewStyleSheet
      Caption = 'DevExpress'
      Styles.Background = cxStyle56
      Styles.Content = cxStyle59
      Styles.ContentEven = cxStyle60
      Styles.ContentOdd = cxStyle61
      Styles.FilterBox = cxStyle62
      Styles.Inactive = cxStyle67
      Styles.IncSearch = cxStyle68
      Styles.Selection = cxStyle71
      Styles.Footer = cxStyle63
      Styles.Group = cxStyle64
      Styles.GroupByBox = cxStyle65
      Styles.Header = cxStyle66
      Styles.Indicator = cxStyle69
      Styles.Preview = cxStyle70
      Styles.BandBackground = cxStyle57
      Styles.BandHeader = cxStyle58
      BuiltIn = True
    end
    object cxGridCardViewStyleSheet1: TcxGridCardViewStyleSheet
      Caption = 'DevExpress'
      Styles.Background = cxStyle85
      Styles.Content = cxStyle88
      Styles.ContentEven = cxStyle89
      Styles.ContentOdd = cxStyle90
      Styles.Inactive = cxStyle91
      Styles.IncSearch = cxStyle92
      Styles.Selection = cxStyle94
      Styles.CaptionRow = cxStyle86
      Styles.CardBorder = cxStyle87
      Styles.RowCaption = cxStyle93
      BuiltIn = True
    end
    object cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet
      Caption = 'DevExpress'
      Styles.Background = cxStyle95
      Styles.Content = cxStyle96
      Styles.ContentEven = cxStyle97
      Styles.ContentOdd = cxStyle98
      Styles.FilterBox = cxStyle99
      Styles.Inactive = cxStyle104
      Styles.IncSearch = cxStyle105
      Styles.Selection = cxStyle108
      Styles.Footer = cxStyle100
      Styles.Group = cxStyle101
      Styles.GroupByBox = cxStyle102
      Styles.Header = cxStyle103
      Styles.Indicator = cxStyle106
      Styles.Preview = cxStyle107
      BuiltIn = True
    end
  end
  object ppImpListadoVisita: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline2
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Letter (8.5" x 11")'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 279401
    PrinterSetup.PaperSize = 1
    AllowPrintToArchive = True
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 553
    Top = 2
    Version = '10.04'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline2'
    object ppHeaderBand4: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 39423
      mmPrintPosition = 0
      object ppDBText24: TppDBText
        UserName = 'DBText159'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Empresa'
        DataPipeline = DM.ppParametro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppParametro'
        mmHeight = 5821
        mmLeft = 2116
        mmTop = 2117
        mmWidth = 86254
        BandType = 0
      end
      object ppLabel48: TppLabel
        UserName = 'Label152'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Sucursal :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4995
        mmLeft = 2116
        mmTop = 8730
        mmWidth = 20574
        BandType = 0
      end
      object ppLabel49: TppLabel
        UserName = 'Label153'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Fecha  :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 204259
        mmTop = 7938
        mmWidth = 13293
        BandType = 0
      end
      object ppSystemVariable10: TppSystemVariable
        UserName = 'SystemVariable8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5821
        mmLeft = 219340
        mmTop = 7938
        mmWidth = 17463
        BandType = 0
      end
      object ppSystemVariable11: TppSystemVariable
        UserName = 'SystemVariable9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageNo
        DisplayFormat = '000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 219340
        mmTop = 3175
        mmWidth = 5842
        BandType = 0
      end
      object ppLabel52: TppLabel
        UserName = 'Label154'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Pagina :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 203994
        mmTop = 3175
        mmWidth = 13674
        BandType = 0
      end
      object ppLabel55: TppLabel
        UserName = 'Label161'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Hora    :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 204259
        mmTop = 12435
        mmWidth = 13081
        BandType = 0
      end
      object ppSystemVariable12: TppSystemVariable
        UserName = 'SystemVariable10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtTime
        DisplayFormat = 'HH:MM:SS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 219340
        mmTop = 12435
        mmWidth = 14055
        BandType = 0
      end
      object ppShape7: TppShape
        UserName = 'Shape1'
        Brush.Color = cl3DDkShadow
        mmHeight = 11906
        mmLeft = 265
        mmTop = 26723
        mmWidth = 264055
        BandType = 0
      end
      object ppLabel62: TppLabel
        UserName = 'Label173'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Fecha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 2117
        mmTop = 34396
        mmWidth = 11906
        BandType = 0
      end
      object ppLabel65: TppLabel
        UserName = 'Label185'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Laboratorio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 16933
        mmTop = 34660
        mmWidth = 19579
        BandType = 0
      end
      object ppLabel66: TppLabel
        UserName = 'Label192'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Paciente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 84138
        mmTop = 34396
        mmWidth = 15610
        BandType = 0
      end
      object ppLabel67: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Hora'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 41540
        mmTop = 34396
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel68: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'SucursalID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 178594
        mmTop = 34396
        mmWidth = 17727
        BandType = 0
      end
      object ppLabel72: TppLabel
        UserName = 'Label33'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Id Visita'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 244475
        mmTop = 34396
        mmWidth = 13420
        BandType = 0
      end
      object ppLabel75: TppLabel
        UserName = 'Label75'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Label75'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 23283
        mmTop = 8730
        mmWidth = 65088
        BandType = 0
      end
      object ppLabel69: TppLabel
        UserName = 'Label69'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Label69'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4995
        mmLeft = 2381
        mmTop = 13758
        mmWidth = 85990
        BandType = 0
      end
      object ppLabel70: TppLabel
        UserName = 'Label70'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Label70'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4995
        mmLeft = 2117
        mmTop = 19050
        mmWidth = 86254
        BandType = 0
      end
      object ppLabel40: TppLabel
        UserName = 'Label40'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Tipo Cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 199232
        mmTop = 34396
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel41: TppLabel
        UserName = 'Label401'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Res. V'#237'a'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 224367
        mmTop = 34396
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel45: TppLabel
        UserName = 'Label45'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Telefonos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Name = 'Tahoma'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 137848
        mmTop = 34396
        mmWidth = 37835
        BandType = 0
      end
    end
    object ppDetailBand4: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppDBText28: TppDBText
        UserName = 'DBText164'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Fecha'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3440
        mmLeft = 1323
        mmTop = 794
        mmWidth = 16140
        BandType = 4
      end
      object ppDBText32: TppDBText
        UserName = 'DBText163'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Muestrano'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3440
        mmLeft = 18256
        mmTop = 794
        mmWidth = 19050
        BandType = 4
      end
      object ppDBText33: TppDBText
        UserName = 'DBText168'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Nombre'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3440
        mmLeft = 57415
        mmTop = 795
        mmWidth = 77788
        BandType = 4
      end
      object ppDBText35: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Hora'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3440
        mmLeft = 38365
        mmTop = 795
        mmWidth = 18256
        BandType = 4
      end
      object ppDBText36: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SucursalID'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3440
        mmLeft = 182563
        mmTop = 794
        mmWidth = 11642
        BandType = 4
      end
      object ppDBText37: TppDBText
        UserName = 'DBText18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ID_Visita'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3440
        mmLeft = 243946
        mmTop = 794
        mmWidth = 14023
        BandType = 4
      end
      object ppDBText25: TppDBText
        UserName = 'DBText25'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Tipo_Cliente'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3440
        mmLeft = 199232
        mmTop = 794
        mmWidth = 18521
        BandType = 4
      end
      object ppDBText26: TppDBText
        UserName = 'DBText26'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Rsultado_Via'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3440
        mmLeft = 221457
        mmTop = 794
        mmWidth = 18521
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText27'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Tel_Residencia'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3440
        mmLeft = 135996
        mmTop = 794
        mmWidth = 20638
        BandType = 4
      end
      object ppDBText29: TppDBText
        UserName = 'DBText29'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Tel_Oficina'
        DataPipeline = ppDBPipeline2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 3440
        mmLeft = 157692
        mmTop = 794
        mmWidth = 22490
        BandType = 4
      end
    end
    object ppSummaryBand4: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 8731
      mmPrintPosition = 0
      object ppLabel74: TppLabel
        UserName = 'Label175'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Total Registros :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 1852
        mmTop = 2910
        mmWidth = 26723
        BandType = 7
      end
      object ppDBCalc14: TppDBCalc
        UserName = 'DBCalc28'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'EntradaID'
        DisplayFormat = '###,###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        mmHeight = 3440
        mmLeft = 30692
        mmTop = 2910
        mmWidth = 6350
        BandType = 7
      end
    end
  end
  object qrReporte_Visita: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select d.Muestrano,e.SucursalID,p.Contacto,Isnull(p.nombres,'#39#39')+' +
        #39' '#39'+Isnull(p.apellidos,'#39#39') as Nombre, '
      
        'case when tipo_cliente = '#39'P'#39' Then '#39'Privado'#39' else '#39'Seguro'#39' end as' +
        ' Tipo_Cliente, '
      
        'Tel_Residencia,Tel_Oficina,Tel_Celular,p.Direccion,d.Fecha,d.Hor' +
        'a, '
      'case when Resultado_Via = '#39'F'#39' Then '#39'Fax'#39'  '
      '     when Resultado_Via = '#39'I'#39' Then '#39'Internet'#39' '
      '     when Resultado_Via = '#39'P'#39' Then '#39'Personal'#39
      #9' else '#39#39' end as Rsultado_Via,'
      
        'observacion, CteDomDet as ID_Visita, f.Descripcion as Flebotomis' +
        'ta  '
      
        'from ptclientedom As p inner join ptclientedomdetalle As d  on p' +
        '.ctedomid = d.CteDomid left Join ptflebotomista f on'
      ' d.flebotomistaid=f.flebotomistaid  '
      ' inner join dbo.PtentradaPaciente e on'
      '  e.Muestrano = d.Muestrano '
      '  where 1=1  And d.Fecha Between '#39'20150928'#39' AND '#39'20150928'#39)
    Left = 600
    Top = 2
    object qrReporte_VisitaMuestrano: TStringField
      FieldName = 'Muestrano'
    end
    object qrReporte_VisitaSucursalID: TStringField
      FieldName = 'SucursalID'
      Size = 10
    end
    object qrReporte_VisitaContacto: TStringField
      FieldName = 'Contacto'
      Size = 80
    end
    object qrReporte_VisitaNombre: TStringField
      FieldName = 'Nombre'
      ReadOnly = True
      Size = 101
    end
    object qrReporte_VisitaTipo_Cliente: TStringField
      FieldName = 'Tipo_Cliente'
      ReadOnly = True
      Size = 7
    end
    object qrReporte_VisitaTel_Residencia: TStringField
      FieldName = 'Tel_Residencia'
    end
    object qrReporte_VisitaTel_Oficina: TStringField
      FieldName = 'Tel_Oficina'
    end
    object qrReporte_VisitaTel_Celular: TStringField
      FieldName = 'Tel_Celular'
    end
    object qrReporte_VisitaDireccion: TStringField
      FieldName = 'Direccion'
      Size = 100
    end
    object qrReporte_VisitaFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object qrReporte_VisitaHora: TStringField
      FieldName = 'Hora'
    end
    object qrReporte_VisitaRsultado_Via: TStringField
      FieldName = 'Rsultado_Via'
      ReadOnly = True
      Size = 8
    end
    object qrReporte_Visitaobservacion: TStringField
      FieldName = 'observacion'
      Size = 200
    end
    object qrReporte_VisitaID_Visita: TIntegerField
      FieldName = 'ID_Visita'
    end
    object qrReporte_VisitaFlebotomista: TStringField
      FieldName = 'Flebotomista'
      Size = 80
    end
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = dsReporteVisita
    UserName = 'ppFormularioSolicitud1'
    Left = 664
    Top = 8
    object ppDBPipeline2ppField1: TppField
      FieldAlias = 'Muestrano'
      FieldName = 'Muestrano'
      FieldLength = 20
      DisplayWidth = 20
      Position = 0
    end
    object ppDBPipeline2ppField2: TppField
      FieldAlias = 'SucursalID'
      FieldName = 'SucursalID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 1
    end
    object ppDBPipeline2ppField3: TppField
      FieldAlias = 'Contacto'
      FieldName = 'Contacto'
      FieldLength = 80
      DisplayWidth = 80
      Position = 2
    end
    object ppDBPipeline2ppField4: TppField
      FieldAlias = 'Nombre'
      FieldName = 'Nombre'
      FieldLength = 101
      DisplayWidth = 101
      Position = 3
    end
    object ppDBPipeline2ppField5: TppField
      FieldAlias = 'Tipo_Cliente'
      FieldName = 'Tipo_Cliente'
      FieldLength = 7
      DisplayWidth = 7
      Position = 4
    end
    object ppDBPipeline2ppField6: TppField
      FieldAlias = 'Tel_Residencia'
      FieldName = 'Tel_Residencia'
      FieldLength = 20
      DisplayWidth = 20
      Position = 5
    end
    object ppDBPipeline2ppField7: TppField
      FieldAlias = 'Tel_Oficina'
      FieldName = 'Tel_Oficina'
      FieldLength = 20
      DisplayWidth = 20
      Position = 6
    end
    object ppDBPipeline2ppField8: TppField
      FieldAlias = 'Tel_Celular'
      FieldName = 'Tel_Celular'
      FieldLength = 20
      DisplayWidth = 20
      Position = 7
    end
    object ppDBPipeline2ppField9: TppField
      FieldAlias = 'Direccion'
      FieldName = 'Direccion'
      FieldLength = 100
      DisplayWidth = 100
      Position = 8
    end
    object ppDBPipeline2ppField10: TppField
      FieldAlias = 'Fecha'
      FieldName = 'Fecha'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 9
    end
    object ppDBPipeline2ppField11: TppField
      FieldAlias = 'Hora'
      FieldName = 'Hora'
      FieldLength = 20
      DisplayWidth = 20
      Position = 10
    end
    object ppDBPipeline2ppField12: TppField
      FieldAlias = 'Rsultado_Via'
      FieldName = 'Rsultado_Via'
      FieldLength = 8
      DisplayWidth = 8
      Position = 11
    end
    object ppDBPipeline2ppField13: TppField
      FieldAlias = 'observacion'
      FieldName = 'observacion'
      FieldLength = 200
      DisplayWidth = 200
      Position = 12
    end
    object ppDBPipeline2ppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'ID_Visita'
      FieldName = 'ID_Visita'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 13
    end
    object ppDBPipeline2ppField15: TppField
      FieldAlias = 'Flebotomista'
      FieldName = 'Flebotomista'
      FieldLength = 80
      DisplayWidth = 80
      Position = 14
    end
  end
  object dsReporteVisita: TDataSource
    DataSet = qrReporte_Visita
    Left = 620
    Top = 11
  end
  object qARS: TADOQuery
    Active = True
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      ''
      'select CLIENTEID, NOMBRE  from PTCLIENTE'
      'where GRUPOCLIENTE = '#39'01'#39)
    Left = 80
    Top = 418
    object qARSCLIENTEID: TStringField
      FieldName = 'CLIENTEID'
      Size = 10
    end
    object qARSNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 80
    end
  end
end
