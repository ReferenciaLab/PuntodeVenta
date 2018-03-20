inherited frmDatosClientesPtoVta: TfrmDatosClientesPtoVta
  ActiveControl = pcDatos
  Caption = 'Captura de Pacientes del Punto de Venta'
  ClientHeight = 597
  ClientWidth = 881
  OnPaint = nil
  ExplicitWidth = 897
  ExplicitHeight = 635
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 881
    Height = 564
    ExplicitWidth = 881
    ExplicitHeight = 564
    inherited pcDatos: TcxPageControl
      ClientRectBottom = 340
      ClientRectRight = 586
      ClientRectTop = 24
      inherited tsMain: TcxTabSheet
        inherited lcGrid: TdxLayoutControl
          inherited dgDatos: TcxGrid
            Top = 95
            Width = 781
            Height = 420
            TabOrder = 2
            ExplicitTop = 95
            ExplicitWidth = 781
            ExplicitHeight = 420
            inherited tvDatos: TcxGridDBTableView
              DataController.KeyFieldNames = 'ClienteID'
              object tvDatosClienteID: TcxGridDBColumn
                DataBinding.FieldName = 'ClienteID'
                Width = 90
              end
              object tvDatosNombre: TcxGridDBColumn
                DataBinding.FieldName = 'Nombre'
                Width = 200
              end
              object tvDatosGrupoCliente: TcxGridDBColumn
                Caption = 'Tipo'
                DataBinding.FieldName = 'GrupoCliente'
                RepositoryItem = DM.elcGrupoCliente
                Width = 90
              end
              object tvDatosCodigoAxapta: TcxGridDBColumn
                Caption = 'C'#243'digo Axapta'
                DataBinding.FieldName = 'CodigoAxapta'
                Width = 90
              end
              object tvDatosQUIENPAGA: TcxGridDBColumn
                Caption = 'Quien Paga'
                DataBinding.FieldName = 'QUIENPAGA'
                Width = 60
              end
              object tvDatosCOBRARDIFERENCIA: TcxGridDBColumn
                Caption = 'Diferencia'
                DataBinding.FieldName = 'COBRARDIFERENCIA'
                Width = 60
              end
            end
          end
          inherited dxLayoutGroup1: TdxLayoutGroup
            inherited lcGridGroup2: TdxLayoutGroup
              object lcGridItem1: TdxLayoutItem [0]
                Caption = 'cxLabel1'
                ShowCaption = False
                Control = lblEstatus
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
      end
      inherited tsDatos: TcxTabSheet
        inherited lcDatos: TdxLayoutControl
          object edcliente: TcxDBTextEdit [0]
            Tag = 99
            Left = 107
            Top = 90
            DataBinding.DataField = 'CLIENTEID'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 3
            Width = 145
          end
          object EdNombre: TcxDBTextEdit [1]
            Left = 107
            Top = 117
            DataBinding.DataField = 'Nombre'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 4
            Width = 387
          end
          object cxDBTextEdit3: TcxDBTextEdit [2]
            Left = 107
            Top = 377
            DataBinding.DataField = 'Contacto'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 21
            Width = 395
          end
          object cxDBTextEdit6: TcxDBTextEdit [3]
            Left = 107
            Top = 458
            DataBinding.DataField = 'email'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 25
            Width = 395
          end
          object cxDBTextEdit7: TcxDBTextEdit [4]
            Left = 107
            Top = 485
            DataBinding.DataField = 'direccionweb'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 26
            Width = 395
          end
          object cxDBMemo1: TcxDBMemo [5]
            Left = 107
            Top = 257
            DataBinding.DataField = 'Direccion'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 18
            Height = 60
            Width = 395
          end
          object cxDBExtLookupComboBox1: TcxDBExtLookupComboBox [6]
            Left = 107
            Top = 323
            RepositoryItem = DM.elcCiudad
            DataBinding.DataField = 'CIUDADID'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 19
            Width = 200
          end
          object CbClientePrincipal: TcxDBExtLookupComboBox [7]
            Left = 660
            Top = 36
            RepositoryItem = DM.elcPacientes
            DataBinding.DataField = 'PRINCIPAL'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 10
            Width = 145
          end
          object CbSexo: TcxDBImageComboBox [8]
            Left = 660
            Top = 63
            DataBinding.DataField = 'Sexo'
            DataBinding.DataSource = dsDatos
            Properties.Alignment.Horz = taLeftJustify
            Properties.Items = <
              item
                ImageIndex = 0
                Value = -1
              end
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
            TabOrder = 11
            Width = 145
          end
          object EdFechaBorn: TcxDBDateEdit [9]
            Left = 660
            Top = 90
            DataBinding.DataField = 'FechaNacimiento'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 13
            Width = 145
          end
          object EdPoliza: TcxDBTextEdit [10]
            Left = 660
            Top = 144
            DataBinding.DataField = 'Poliza'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 16
            Width = 145
          end
          object CbGrupoClientes: TcxDBExtLookupComboBox [11]
            Left = 107
            Top = 171
            RepositoryItem = DM.elcGrupoCliente
            DataBinding.DataField = 'GrupoCliente'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 7
            Width = 145
          end
          object CbTipodeCliente: TcxDBImageComboBox [12]
            Left = 107
            Top = 198
            DataBinding.DataField = 'TipoCliente'
            DataBinding.DataSource = dsDatos
            Properties.Items = <
              item
                Description = 'ACCIONISTAS'
                Tag = 1
                Value = 'ACC'
              end
              item
                Description = 'COMPANIA'
                Tag = 2
                Value = 'CIA'
              end
              item
                Description = 'CLINICA'
                ImageIndex = 0
                Tag = 3
                Value = 'CLI'
              end
              item
                Description = 'EMPLEADO'
                Tag = 4
                Value = 'EMP'
              end
              item
                Description = 'LABORATORIO'
                Tag = 5
                Value = 'LAB'
              end
              item
                Description = 'PRIVADO'
                Tag = 6
                Value = 'PRI'
              end
              item
                Description = 'SEGURO'
                Tag = 7
                Value = 'SEG'
              end
              item
                Description = 'VIP'
                Tag = 8
                Value = 'VIP'
              end>
            Properties.ReadOnly = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 9
            Width = 145
          end
          object cxDBTextEdit10: TcxDBTextEdit [13]
            Left = 107
            Top = 144
            DataBinding.DataField = 'Alias'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 6
            Width = 387
          end
          object EdAseguradora: TcxDBTextEdit [14]
            Left = 660
            Top = 117
            DataBinding.DataField = 'Seguro'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 15
            Width = 167
          end
          object cxDBTextEdit9: TcxDBTextEdit [15]
            Left = 107
            Top = 350
            DataBinding.DataField = 'Sector'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 20
            Width = 395
          end
          object cxDBImageComboBox1: TcxDBImageComboBox [16]
            Left = 660
            Top = 171
            DataBinding.DataField = 'TipoSangre'
            DataBinding.DataSource = dsDatos
            Properties.Items = <
              item
                Description = 'A+'
                ImageIndex = 0
                Value = 'A+'
              end
              item
                Description = 'A-'
                Value = 'A-'
              end
              item
                Description = 'B+'
                Value = 'B-'
              end
              item
                Description = 'B-'
                Value = 'B-'
              end
              item
                Description = 'O+'
                Value = 'O+'
              end
              item
                Description = 'O-'
                Value = 'O-'
              end
              item
                Description = 'AB+'
                Value = 'AB+'
              end
              item
                Description = 'AB-'
                Value = 'AB-'
              end>
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 17
            Width = 167
          end
          object EdCedula: TcxDBMaskEdit [17]
            Left = 107
            Top = 63
            DataBinding.DataField = 'IDENTIFICACION'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Properties.EditMask = '###-#######-##'
            Properties.MaxLength = 0
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 1
            OnExit = EdCedulaExit
            Width = 145
          end
          object cxDBMaskEdit3: TcxDBMaskEdit [18]
            Left = 107
            Top = 431
            DataBinding.DataField = 'FAX'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Properties.MaskKind = emkRegExprEx
            Properties.EditMask = '(\(\d\d\d\))-\d\d\d-\d\d\d\d'
            Properties.MaxLength = 0
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 23
            Width = 121
          end
          object cxDBMaskEdit4: TcxDBMaskEdit [19]
            Left = 234
            Top = 404
            DataBinding.DataField = 'TELEFONO2'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Properties.MaskKind = emkRegExprEx
            Properties.EditMask = '(\(\d\d\d\))-\d\d\d-\d\d\d\d'
            Properties.MaxLength = 0
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 24
            Width = 121
          end
          object cxDBMaskEdit5: TcxDBMaskEdit [20]
            Left = 107
            Top = 404
            DataBinding.DataField = 'TELEFONO'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Properties.MaskKind = emkRegExprEx
            Properties.EditMask = '(\(\d\d\d\))-\d\d\d-\d\d\d\d'
            Properties.MaxLength = 0
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 22
            Width = 121
          end
          object imgFoto: TcxImage [21]
            Left = 532
            Top = 257
            Properties.GraphicClassName = 'TJPEGImage'
            Properties.Stretch = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 27
            Height = 250
            Width = 292
          end
          object chkNombre: TcxCheckBox [22]
            Left = 500
            Top = 117
            AutoSize = False
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 5
            Height = 21
            Width = 21
          end
          object chkSexo: TcxCheckBox [23]
            Left = 811
            Top = 63
            AutoSize = False
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 12
            Height = 21
            Width = 23
          end
          object chkFechaBorn: TcxCheckBox [24]
            Left = 811
            Top = 90
            AutoSize = False
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 14
            Height = 21
            Width = 21
          end
          object cbNacionalidad: TcxDBExtLookupComboBox [25]
            Left = 325
            Top = 171
            RepositoryItem = DM.elcNacionalidad
            DataBinding.DataField = 'COD_NACION'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 8
            Width = 169
          end
          object cbExtDocumento: TcxDBExtLookupComboBox [26]
            Left = 107
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
          object lblEstatus: TcxLabel [27]
            Left = 258
            Top = 36
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -19
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.HotTrack = False
            Style.IsFontAssigned = True
          end
          inherited Group_Root: TdxLayoutGroup
            object lcDatosGroup5: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object lcDatosGroup1: TdxLayoutGroup
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                Caption = 'General'
                object lcDatosGroup10: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object lcDatosGroup12: TdxLayoutGroup
                    ShowCaption = False
                    Hidden = True
                    ShowBorder = False
                    object lcDatosItem25: TdxLayoutItem
                      Caption = 'Tipo Documento'
                      Control = cbExtDocumento
                      ControlOptions.ShowBorder = False
                    end
                    object lcDatosItem14: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      Caption = 'Cedula/RNC'
                      Control = EdCedula
                      ControlOptions.ShowBorder = False
                    end
                  end
                  object lcDatosItem9: TdxLayoutItem
                    Caption = 'New Item'
                    ShowCaption = False
                    Control = lblEstatus
                    ControlOptions.ShowBorder = False
                  end
                end
                object lcDatosItem1: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Cliente'
                  Control = edcliente
                  ControlOptions.ShowBorder = False
                end
                object lcDatosGroup6: TdxLayoutGroup
                  AutoAligns = [aaVertical]
                  ShowCaption = False
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object lcDatosItem2: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'Nombre'
                    Control = EdNombre
                    ControlOptions.ShowBorder = False
                  end
                  object lcDatosItem5: TdxLayoutItem
                    AutoAligns = []
                    Caption = 'cxCheckBox1'
                    ShowCaption = False
                    Control = chkNombre
                    ControlOptions.ShowBorder = False
                  end
                end
                object lcDatosItem10: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Alias del Cliente'
                  Control = cxDBTextEdit10
                  ControlOptions.ShowBorder = False
                end
                object lcDatosGroup11: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object lcDatosGrupos: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'Grupo de Cliente'
                    Control = CbGrupoClientes
                    ControlOptions.ShowBorder = False
                  end
                  object lcDatosItem24: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'Nacionalidad'
                    Control = cbNacionalidad
                    ControlOptions.ShowBorder = False
                  end
                end
                object lcDatosTipos: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Tipo de Cliente'
                  Control = CbTipodeCliente
                  ControlOptions.ShowBorder = False
                end
              end
              object lcDatosGrpPacientes: TdxLayoutGroup
                AutoAligns = [aaVertical]
                AlignHorz = ahRight
                Caption = 'Paciente'
                object LcDatosPrincipal: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Principal'
                  Control = CbClientePrincipal
                  ControlOptions.ShowBorder = False
                end
                object lcDatosGroup8: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object lcDatosItem20: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'Sexo'
                    Control = CbSexo
                    ControlOptions.ShowBorder = False
                  end
                  object lcDatosItem17: TdxLayoutItem
                    Caption = 'cxCheckBox1'
                    ShowCaption = False
                    Control = chkSexo
                    ControlOptions.ShowBorder = False
                  end
                end
                object lcDatosGroup9: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object lcDatosItem21: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'Fecha de Nacimiento'
                    Control = EdFechaBorn
                    ControlOptions.ShowBorder = False
                  end
                  object lcDatosItem6: TdxLayoutItem
                    AutoAligns = []
                    ShowCaption = False
                    Control = chkFechaBorn
                    ControlOptions.ShowBorder = False
                  end
                end
                object lcDatosItem15: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Aseguradora'
                  Control = EdAseguradora
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem23: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Poliza No.:'
                  Control = EdPoliza
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem19: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Tipo de Sangre'
                  Control = cxDBImageComboBox1
                  ControlOptions.ShowBorder = False
                end
              end
            end
            object lcDatosGroup7: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object lcDatosGroup2: TdxLayoutGroup
                AutoAligns = []
                AlignVert = avClient
                Caption = 'Contacto'
                object lcDatosItem12: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Direcci'#243'n'
                  Control = cxDBMemo1
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem13: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Ciudad'
                  Control = cxDBExtLookupComboBox1
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem16: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Sector'
                  Control = cxDBTextEdit9
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem4: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Contacto'
                  Control = cxDBTextEdit3
                  ControlOptions.ShowBorder = False
                end
                object lcDatosGroup3: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object lcDatosGroup4: TdxLayoutGroup
                    ShowCaption = False
                    Hidden = True
                    ShowBorder = False
                    object lcDatosItem22: TdxLayoutItem
                      Caption = 'Telefono(s)'
                      Control = cxDBMaskEdit5
                      ControlOptions.ShowBorder = False
                    end
                    object lcDatosItem11: TdxLayoutItem
                      Caption = 'Fax'
                      Control = cxDBMaskEdit3
                      ControlOptions.ShowBorder = False
                    end
                  end
                  object lcDatosItem18: TdxLayoutItem
                    Control = cxDBMaskEdit4
                    ControlOptions.ShowBorder = False
                  end
                end
                object lcDatosItem7: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Email'
                  Control = cxDBTextEdit6
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem8: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Direcci'#243'n Web'
                  Control = cxDBTextEdit7
                  ControlOptions.ShowBorder = False
                end
              end
              object lcDatosGrpFoto: TdxLayoutGroup
                AutoAligns = []
                AlignHorz = ahClient
                AlignVert = avClient
                Caption = 'Foto'
                object lcDatosItem3: TdxLayoutItem
                  Control = imgFoto
                  ControlOptions.ShowBorder = False
                end
              end
            end
          end
        end
      end
    end
    inherited dxLayoutGroup2: TdxLayoutGroup
      inherited dxLayoutControl1Group_Root: TdxLayoutGroup
        inherited lgBotones: TdxLayoutGroup
          Visible = False
        end
      end
    end
  end
  inherited pnCaption: TPanel
    Width = 881
    ExplicitWidth = 881
  end
  inherited formStorage: TJvFormStorage
    Left = 456
    Top = 115
  end
  inherited dsDatos: TDataSource
    DataSet = qrClientes
    Left = 188
  end
  inherited dxPrintGrid: TdxComponentPrinter
    Left = 362
    Top = 113
    inherited dxPrintGridLink: TdxGridReportLink
      ReportDocument.CreationDate = 38921.843721967590000000
      BuiltInReportLink = True
    end
    inherited dxPrintGridDatos: TdxLayoutControlReportLink
      ReportDocument.CreationDate = 38921.843721967590000000
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
  inherited cxGridPopupMenu: TcxGridPopupMenu
    Left = 512
    Top = 3
  end
  inherited cxGridStyles: TcxStyleRepository
    Left = 417
    Top = 75
  end
  inherited SaveDialog: TSaveDialog
    Left = 409
    Top = 112
  end
  inherited qryHelper: TADOQuery
    Left = 892
    Top = 323
  end
  inherited alEdit: TActionList
    Left = 348
    Top = 3
  end
  inherited pmCustom: TPopupMenu
    Left = 616
    Top = 3
  end
  inherited qrDefaultView: TADOQuery
    Left = 840
    Top = 323
  end
  inherited strView: TJvStrHolder
    Left = 284
    Top = 112
  end
  inherited strTableNames: TJvStrHolder
    Left = 323
    Top = 112
  end
  inherited cxStyleRepository1: TcxStyleRepository
    Left = 370
    Top = 75
  end
  inherited qrUserFields: TABSQuery
    Left = 284
    Top = 67
  end
  inherited qrVistas: TABSQuery
    Left = 331
    Top = 75
  end
  object qrClientes: TADOQuery [18]
    Connection = DM.DataBase
    CursorType = ctStatic
    BeforeOpen = qrClientesBeforeOpen
    AfterOpen = qrClientesAfterOpen
    BeforeInsert = qrClientesBeforeInsert
    BeforeEdit = qrClientesBeforeEdit
    BeforePost = qrClientesBeforePost
    AfterPost = qrClientesAfterPost
    BeforeCancel = qrClientesBeforeCancel
    BeforeDelete = qrClientesBeforeDelete
    AfterScroll = qrClientesAfterScroll
    OnNewRecord = qrClientesNewRecord
    Parameters = <
      item
        Name = 'clt'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM PTCliente'
      'WHERE DataAreaId = '#39'ldr'#39
      'AND ClienteId = :clt')
    Left = 136
    Top = 3
    object qrClientesCLIENTEID: TStringField
      DisplayLabel = 'Cliente Id'
      FieldName = 'CLIENTEID'
      Size = 10
    end
    object qrClientesNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Size = 80
    end
    object qrClientesCONTACTO: TStringField
      FieldName = 'CONTACTO'
      Size = 80
    end
    object qrClientesTELEFONO: TStringField
      FieldName = 'TELEFONO'
    end
    object qrClientesTELEFONO2: TStringField
      FieldName = 'TELEFONO2'
    end
    object qrClientesFAX: TStringField
      FieldName = 'FAX'
    end
    object qrClientesIDENTIFICACION: TStringField
      DisplayLabel = 'Cedula y/o RNC'
      FieldName = 'IDENTIFICACION'
      OnValidate = qrClientesIDENTIFICACIONValidate
    end
    object qrClientesGRUPOCLIENTE: TStringField
      FieldName = 'GRUPOCLIENTE'
      OnChange = qrClientesGRUPOCLIENTEChange
      Size = 10
    end
    object qrClientesINCLUIRPRECIOTICKET: TIntegerField
      FieldName = 'INCLUIRPRECIOTICKET'
    end
    object qrClientesAUTOCONFIRMAR: TIntegerField
      FieldName = 'AUTOCONFIRMAR'
    end
    object qrClientesEMPLEADOID: TStringField
      FieldName = 'EMPLEADOID'
      Size = 10
    end
    object qrClientesCODIGOAXAPTA: TStringField
      FieldName = 'CODIGOAXAPTA'
      Size = 10
    end
    object qrClientesEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object qrClientesDIRECCIONWEB: TStringField
      FieldName = 'DIRECCIONWEB'
      Size = 80
    end
    object qrClientesMONEDAID: TStringField
      FieldName = 'MONEDAID'
      Size = 3
    end
    object qrClientesORIGEN: TIntegerField
      FieldName = 'ORIGEN'
      OnChange = qrClientesORIGENChange
    end
    object qrClientesDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 255
    end
    object qrClientesCIUDADID: TStringField
      FieldName = 'CIUDADID'
      Size = 10
    end
    object qrClientesPRUEBASPORDIA: TIntegerField
      FieldName = 'PRUEBASPORDIA'
    end
    object qrClientesCOBERTURAPORC: TBCDField
      FieldName = 'COBERTURAPORC'
      Precision = 28
      Size = 12
    end
    object qrClientesPRINCIPAL: TStringField
      FieldName = 'PRINCIPAL'
      Size = 10
    end
    object qrClientesENVIORESULTADO: TIntegerField
      FieldName = 'ENVIORESULTADO'
    end
    object qrClientesPUBLICARINTERNET: TIntegerField
      FieldName = 'PUBLICARINTERNET'
    end
    object qrClientesSEXO: TIntegerField
      FieldName = 'SEXO'
    end
    object qrClientesFECHANACIMIENTO: TDateTimeField
      FieldName = 'FECHANACIMIENTO'
      OnValidate = qrClientesFECHANACIMIENTOValidate
    end
    object qrClientesSEGURO: TStringField
      FieldName = 'SEGURO'
      Size = 10
    end
    object qrClientesCARNETNUMERO: TStringField
      FieldName = 'CARNETNUMERO'
      Size = 10
    end
    object qrClientesPOLIZA: TStringField
      FieldName = 'POLIZA'
    end
    object qrClientesCOBRARDIFERENCIA: TIntegerField
      FieldName = 'COBRARDIFERENCIA'
    end
    object qrClientesENVIARFAX: TIntegerField
      FieldName = 'ENVIARFAX'
    end
    object qrClientesACTIVARDESCUENTOS: TIntegerField
      FieldName = 'ACTIVARDESCUENTOS'
    end
    object qrClientesUSARALIASNOMBRE: TIntegerField
      FieldName = 'USARALIASNOMBRE'
    end
    object qrClientesUSARALIASPRUEBAS: TIntegerField
      FieldName = 'USARALIASPRUEBAS'
    end
    object qrClientesSIEMPREINTERNET: TIntegerField
      FieldName = 'SIEMPREINTERNET'
    end
    object qrClientesIMPRIMIRALIASNOMBRE: TIntegerField
      FieldName = 'IMPRIMIRALIASNOMBRE'
    end
    object qrClientesIMPRIMIRALIASPRUEBA: TIntegerField
      FieldName = 'IMPRIMIRALIASPRUEBA'
    end
    object qrClientesIMPRIMIRSOLOTOTALES: TIntegerField
      FieldName = 'IMPRIMIRSOLOTOTALES'
    end
    object qrClientesIMPRIMIRALIASRESULTADOS: TIntegerField
      FieldName = 'IMPRIMIRALIASRESULTADOS'
    end
    object qrClientesUSARACUERDOPROPIO: TIntegerField
      FieldName = 'USARACUERDOPROPIO'
    end
    object qrClientesALIAS: TStringField
      FieldName = 'ALIAS'
      Size = 100
    end
    object qrClientesQUIENPAGA: TStringField
      FieldName = 'QUIENPAGA'
      Size = 5
    end
    object qrClientesTIPOCLIENTE: TStringField
      FieldName = 'TIPOCLIENTE'
      Size = 5
    end
    object qrClientesENTREGARRESULTADOS: TStringField
      FieldName = 'ENTREGARRESULTADOS'
      Size = 5
    end
    object qrClientesTEXTOREFERENCIA: TStringField
      FieldName = 'TEXTOREFERENCIA'
    end
    object qrClientesSIEMPREIMPRIMIR: TIntegerField
      FieldName = 'SIEMPREIMPRIMIR'
    end
    object qrClientesTIPOSANGRE: TStringField
      FieldName = 'TIPOSANGRE'
      Size = 5
    end
    object qrClientesPACIENTECIAID: TStringField
      FieldName = 'PACIENTECIAID'
      Size = 10
    end
    object qrClientesSECTOR: TStringField
      FieldName = 'SECTOR'
      Size = 100
    end
    object qrClientesUSUARIOINTERNET: TStringField
      FieldName = 'USUARIOINTERNET'
      Size = 10
    end
    object qrClientesCLAVEINTERNET: TStringField
      FieldName = 'CLAVEINTERNET'
      Size = 10
    end
    object qrClientesESTATUS: TIntegerField
      FieldName = 'ESTATUS'
    end
    object qrClientesTIPOINTERNET: TStringField
      FieldName = 'TIPOINTERNET'
      Size = 2
    end
    object qrClientesCLASECREDITO: TStringField
      FieldName = 'CLASECREDITO'
      Size = 5
    end
    object qrClientesDOCTORID: TStringField
      FieldName = 'DOCTORID'
      Size = 10
    end
    object qrClientesTIPOCLIENTEAS400: TIntegerField
      FieldName = 'TIPOCLIENTEAS400'
    end
    object qrClientesDATAAREAID: TStringField
      FieldName = 'DATAAREAID'
      Size = 3
    end
    object qrClientesCODIGOIDAS400: TStringField
      FieldName = 'CODIGOIDAS400'
      Size = 10
    end
    object qrClientesGRUPOPRECIO: TStringField
      FieldName = 'GRUPOPRECIO'
      Size = 10
    end
    object qrClientesFORMAPAGO: TStringField
      FieldName = 'FORMAPAGO'
      Size = 10
    end
    object qrClientesGRUPODESCUENTOLINEA: TStringField
      FieldName = 'GRUPODESCUENTOLINEA'
      Size = 10
    end
    object qrClientesGRUPODESCUENTOTOTAL: TStringField
      FieldName = 'GRUPODESCUENTOTOTAL'
      Size = 10
    end
    object qrClientesSINPRFILTER: TIntegerField
      FieldName = 'SINPRFILTER'
    end
    object qrClientesCOD_PROV_REF: TStringField
      FieldName = 'COD_PROV_REF'
    end
    object qrClientesRECID: TLargeintField
      FieldName = 'RECID'
    end
    object qrClientesCOD_NACION: TIntegerField
      FieldName = 'COD_NACION'
    end
    object qrClientesTIPO_DOCUMENTO: TIntegerField
      FieldName = 'TIPO_DOCUMENTO'
    end
    object qrClientesNUMPRINT: TWordField
      FieldName = 'NUMPRINT'
    end
  end
  object pmAcuerdoComercial: TPopupMenu [19]
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    OnPopup = pmCustomPopup
    Left = 560
    Top = 3
    object Precios1: TMenuItem
      Caption = 'Precios'
    end
    object Descuentos1: TMenuItem
      Caption = 'Descuentos'
    end
  end
  object ActionList1: TActionList [20]
    Left = 688
    Top = 3
  end
end
