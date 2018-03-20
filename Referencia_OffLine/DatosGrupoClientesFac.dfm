inherited frmDatosGrupoClientesFac: TfrmDatosGrupoClientesFac
  Caption = 'Grupo Clientes Facturaci'#243'n'
  ClientHeight = 365
  ClientWidth = 571
  ExplicitWidth = 587
  ExplicitHeight = 403
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 571
    Height = 332
    ExplicitWidth = 571
    ExplicitHeight = 332
    inherited pcDatos: TcxPageControl
      Width = 736
      Height = 517
      ExplicitWidth = 736
      ExplicitHeight = 517
      ClientRectBottom = 517
      ClientRectRight = 736
      ClientRectTop = 24
      inherited tsMain: TcxTabSheet
        inherited lcGrid: TdxLayoutControl
          Width = 736
          Height = 493
          inherited dgDatos: TcxGrid
            Width = 550
            Height = 240
            ExplicitWidth = 550
            ExplicitHeight = 240
            inherited tvDatos: TcxGridDBTableView
              DataController.KeyFieldNames = 'ClienteID'
              object tvDatosClienteID: TcxGridDBColumn
                DataBinding.FieldName = 'ClienteID'
                Width = 112
              end
              object tvDatosGrupoID: TcxGridDBColumn
                DataBinding.FieldName = 'GrupoID'
                Width = 181
              end
              object tvDatosPeriodo: TcxGridDBColumn
                DataBinding.FieldName = 'Periodo'
                Width = 62
              end
              object tvDatosEstatus: TcxGridDBColumn
                DataBinding.FieldName = 'Estatus'
                Width = 74
              end
              object tvDatosGrupoIDFac: TcxGridDBColumn
                DataBinding.FieldName = 'GrupoIDFac'
                Width = 80
              end
            end
          end
          object cxDBComboBox1: TcxDBComboBox [2]
            Left = 10000
            Top = 10000
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 2
            Visible = False
            Width = 121
          end
          object lcGridItem1: TdxLayoutItem
            Caption = 'cxDBComboBox1'
            Control = cxDBComboBox1
            ControlOptions.ShowBorder = False
          end
        end
      end
      inherited tsDatos: TcxTabSheet
        inherited lcDatos: TdxLayoutControl
          Width = 736
          Height = 493
          object cxDBTextEdit1: TcxDBTextEdit [0]
            Tag = 99
            Left = 93
            Top = 36
            DataBinding.DataField = 'GrupoIDFac'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 0
            Width = 86
          end
          object CbClienteID: TcxDBExtLookupComboBox [1]
            Left = 93
            Top = 63
            RepositoryItem = DM.elcClientes
            DataBinding.DataField = 'ClienteID'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 1
            Width = 430
          end
          object CbGrupoID: TcxDBExtLookupComboBox [2]
            Left = 93
            Top = 90
            RepositoryItem = DM.elcGrupoCliente
            DataBinding.DataField = 'GrupoID'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 2
            Width = 300
          end
          object cboPeriodo: TcxDBComboBox [3]
            Left = 93
            Top = 117
            DataBinding.DataField = 'Periodo'
            DataBinding.DataSource = dsDatos
            Properties.Items.Strings = (
              'M-MENSUAL'
              'Q-QUINCENAL'
              'D-CADA 10 DIAS')
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 3
            Width = 178
          end
          object cboEstatus: TcxDBComboBox [4]
            Left = 93
            Top = 144
            DataBinding.DataField = 'Estatus'
            DataBinding.DataSource = dsDatos
            Properties.Items.Strings = (
              'A-ACTIVO'
              'I-INACTIVO')
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 4
            Width = 178
          end
          inherited Group_Root: TdxLayoutGroup
            object lcDatosGroup1: TdxLayoutGroup
              Caption = 'General'
              object lcDatosItem1: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Codigo Grupo'
                Control = cxDBTextEdit1
                ControlOptions.ShowBorder = False
              end
              object lcDatosGroup2: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object lcDatosItem5: TdxLayoutItem
                  Caption = 'ClienteID'
                  Control = CbClienteID
                  ControlOptions.ShowBorder = False
                end
                object lcDatosGroup3: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  ShowBorder = False
                  object lcDatosItem3: TdxLayoutItem
                    Caption = 'GrupoID'
                    Control = CbGrupoID
                    ControlOptions.ShowBorder = False
                  end
                  object lcDatosGroup4: TdxLayoutGroup
                    ShowCaption = False
                    Hidden = True
                    ShowBorder = False
                    object lcDatosItem2: TdxLayoutItem
                      Caption = 'Periodo'
                      Control = cboPeriodo
                      ControlOptions.ShowBorder = False
                    end
                    object lcDatosItem4: TdxLayoutItem
                      Caption = 'Estatus'
                      Control = cboEstatus
                      ControlOptions.ShowBorder = False
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  inherited pnCaption: TPanel
    Width = 571
    ExplicitWidth = 571
  end
  inherited formStorage: TJvFormStorage
    Left = 384
    Top = 70
  end
  inherited dsDatos: TDataSource
    DataSet = qrGrupoClientes
  end
  inherited dxPrintGrid: TdxComponentPrinter
    Left = 68
    Top = 65516
    inherited dxPrintGridLink: TdxGridReportLink
      ReportDocument.CreationDate = 38921.944684236110000000
      BuiltInReportLink = True
    end
    inherited dxPrintGridDatos: TdxLayoutControlReportLink
      ReportDocument.CreationDate = 38921.944684421290000000
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
  inherited cxGridPopupMenu: TcxGridPopupMenu
    Left = 536
    Top = 264
  end
  inherited cxGridStyles: TcxStyleRepository
    Left = 536
    Top = 116
  end
  inherited SaveDialog: TSaveDialog
    Left = 537
    Top = 216
  end
  inherited qryHelper: TADOQuery
    Left = 380
  end
  inherited alEdit: TActionList
    Left = 452
    Top = 64
  end
  inherited pmCustom: TPopupMenu
    Top = 164
  end
  inherited qrDefaultView: TADOQuery
    Left = 440
  end
  inherited strView: TJvStrHolder
    Left = 492
    Top = 68
  end
  inherited strTableNames: TJvStrHolder
    Left = 264
    Top = 4
  end
  inherited cxStyleRepository1: TcxStyleRepository
    Left = 256
    Top = 44
  end
  inherited qrUserFields: TABSQuery
    Left = 528
    Top = 68
  end
  inherited qrVistas: TABSQuery
    Left = 412
    Top = 64
  end
  inherited cxIntl1: TcxIntl
    Left = 336
    Top = 64
  end
  object qrGrupoClientes: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From dbo.PtClienteblk'
      '')
    Left = 136
    Top = 2
    object qrGrupoClientesClienteID: TStringField
      FieldName = 'ClienteID'
      Size = 10
    end
    object qrGrupoClientesGrupoID: TStringField
      FieldName = 'GrupoID'
    end
    object qrGrupoClientesPeriodo: TStringField
      FieldName = 'Periodo'
      FixedChar = True
      Size = 1
    end
    object qrGrupoClientesEstatus: TStringField
      FieldName = 'Estatus'
      FixedChar = True
      Size = 1
    end
    object qrGrupoClientesGrupoIDFac: TStringField
      FieldName = 'GrupoIDFac'
      Size = 10
    end
  end
end
