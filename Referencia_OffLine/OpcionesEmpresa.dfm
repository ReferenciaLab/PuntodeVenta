inherited frmOpcionesEmpresa: TfrmOpcionesEmpresa
  Left = 336
  Top = 157
  Caption = 'Par'#225'metros del Sistema'
  ClientHeight = 423
  ClientWidth = 506
  ExplicitWidth = 514
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcDatos: TdxLayoutControl
    Width = 506
    Height = 390
    ExplicitWidth = 506
    ExplicitHeight = 390
    object pcParametros: TRzPageControl [0]
      Left = 11
      Top = 11
      Width = 543
      Height = 351
      ActivePage = TabSheet1
      Align = alClient
      UseColoredTabs = True
      TabIndex = 0
      TabOrder = 0
      TabStop = False
      TabStyle = tsCutCorner
      FixedDimension = 20
      object TabSheet1: TRzTabSheet
        Color = 16311249
        Caption = 'Informaci'#243'n de la Empresa'
        object lcEmpresa: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 539
          Height = 327
          Align = alClient
          TabOrder = 0
          AutoContentSizes = [acsWidth, acsHeight]
          LookAndFeel = dmAppActions.lnfWeb
          object cxDBTextEdit1: TcxDBTextEdit
            Left = 109
            Top = 36
            TabStop = False
            DataBinding.DataField = 'TituloEmpresa'
            DataBinding.DataSource = dsDatos
            Properties.ReadOnly = False
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 0
            Width = 121
          end
          object cxDBHyperLinkEdit1: TcxDBHyperLinkEdit
            Left = 109
            Top = 217
            DataBinding.DataField = 'DireccionWeb'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 3
            Width = 121
          end
          object cxDBHyperLinkEdit2: TcxDBHyperLinkEdit
            Left = 109
            Top = 244
            DataBinding.DataField = 'eMail'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 4
            Width = 121
          end
          object cxDBMaskEdit1: TcxDBMaskEdit
            Left = 109
            Top = 63
            TabStop = False
            DataBinding.DataField = 'RNC'
            DataBinding.DataSource = dsDatos
            Properties.ReadOnly = False
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 1
            Width = 121
          end
          object cxDBMemo1: TcxDBMemo
            Left = 109
            Top = 122
            DataBinding.DataField = 'Direccion'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 2
            Height = 89
            Width = 185
          end
          object cxDBMaskEdit2: TcxDBMaskEdit
            Left = 109
            Top = 271
            DataBinding.DataField = 'Telefono'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 5
            Width = 121
          end
          object cxDBMaskEdit3: TcxDBMaskEdit
            Left = 109
            Top = 298
            DataBinding.DataField = 'Fax'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 6
            Width = 121
          end
          object lcEmpresaGroup_Root1: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutGroup1: TdxLayoutGroup
              Caption = 'Identificaci'#243'n'
              object lcEmpresaItem1: TdxLayoutItem
                Caption = 'Nombre Empresa'
                Control = cxDBTextEdit1
                ControlOptions.ShowBorder = False
              end
              object lcEmpresaItem4: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'RNC'
                Control = cxDBMaskEdit1
                ControlOptions.ShowBorder = False
              end
            end
            object lcEmpresaGroup2: TdxLayoutGroup
              Caption = 'Direcci'#243'n'
              object lcEmpresaItem5: TdxLayoutItem
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                Caption = 'Direcci'#243'n'
                Control = cxDBMemo1
                ControlOptions.ShowBorder = False
              end
              object lcEmpresaGroup1: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object lcEmpresaItem2: TdxLayoutItem
                  Caption = 'P'#225'gina Web'
                  Control = cxDBHyperLinkEdit1
                  ControlOptions.ShowBorder = False
                end
                object lcEmpresaItem3: TdxLayoutItem
                  Caption = 'eMail'
                  Control = cxDBHyperLinkEdit2
                  ControlOptions.ShowBorder = False
                end
                object lcEmpresaItem6: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Tel'#233'fono'
                  Control = cxDBMaskEdit2
                  ControlOptions.ShowBorder = False
                end
                object lcEmpresaItem7: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Fax'
                  Control = cxDBMaskEdit3
                  ControlOptions.ShowBorder = False
                end
              end
            end
          end
        end
      end
      object TabSheet2: TRzTabSheet
        Color = 16311249
        Caption = 'Configuraci'#243'n'
        object lcOpciones: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 539
          Height = 327
          Align = alClient
          TabOrder = 0
          AutoContentSizes = [acsWidth, acsHeight]
          LookAndFeel = dmAppActions.lnfWeb
          object cbMenuFont: TcxDBComboBox
            Left = 120
            Top = 36
            DataBinding.DataField = 'MenuFont'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 0
            Width = 121
          end
          object cbFormFont: TcxDBComboBox
            Left = 120
            Top = 63
            DataBinding.DataField = 'FormsFont'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 1
            Width = 121
          end
          object ceConsulta: TRzColorEdit
            Left = 121
            Top = 123
            Width = 121
            Height = 17
            ShowCustomColor = True
            ShowSystemColors = True
            BorderStyle = bsNone
            TabOrder = 2
          end
          object ceAgrega: TRzColorEdit
            Left = 121
            Top = 148
            Width = 121
            Height = 17
            ShowCustomColor = True
            ShowSystemColors = True
            BorderStyle = bsNone
            TabOrder = 3
          end
          object ceModifica: TRzColorEdit
            Left = 121
            Top = 173
            Width = 121
            Height = 17
            ShowCustomColor = True
            ShowSystemColors = True
            BorderStyle = bsNone
            TabOrder = 4
          end
          object ceBorra: TRzColorEdit
            Left = 121
            Top = 198
            Width = 121
            Height = 17
            ShowCustomColor = True
            ShowSystemColors = True
            BorderStyle = bsNone
            TabOrder = 5
          end
          object dxLayoutGroup2: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object lcOpcionesGroup1: TdxLayoutGroup
              Caption = 'Interface'
              object lcOpcionesItem2: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Font de Menu'
                Control = cbMenuFont
                ControlOptions.ShowBorder = False
              end
              object lcOpcionesItem3: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Font de Formularios'
                Control = cbFormFont
                ControlOptions.ShowBorder = False
              end
            end
            object lcOpcionesGroup2: TdxLayoutGroup
              Caption = 'Colores de Estatus'
              object lcOpcionesItem4: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Consultando'
                Control = ceConsulta
              end
              object lcOpcionesItem5: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Agregando'
                Control = ceAgrega
              end
              object lcOpcionesItem6: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Modificando'
                Control = ceModifica
              end
              object lcOpcionesItem7: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Borrando'
                Control = ceBorra
              end
            end
          end
        end
      end
    end
    inherited Group_Root: TdxLayoutGroup
      object lcDatosItem1: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Control = pcParametros
        ControlOptions.AutoColor = True
        ControlOptions.ShowBorder = False
      end
    end
  end
  inherited pnCaption: TPanel
    Width = 506
    ExplicitWidth = 506
  end
  inherited dsDatos: TDataSource
    DataSet = qrParametros
  end
  object qrParametros: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    AfterOpen = qrParametrosAfterOpen
    BeforePost = qrParametrosBeforePost
    AfterPost = qrParametrosAfterPost
    Parameters = <>
    SQL.Strings = (
      'select  * '
      '   from SysParametros')
    Left = 320
    Top = 172
    object qrParametrosColorConsulta: TIntegerField
      FieldName = 'ColorConsulta'
      Origin = 'SysParametros.ColorConsulta'
    end
    object qrParametrosColorAgregar: TIntegerField
      FieldName = 'ColorAgregar'
      Origin = 'SysParametros.ColorAgregar'
    end
    object qrParametrosColorEditar: TIntegerField
      FieldName = 'ColorEditar'
      Origin = 'SysParametros.ColorEditar'
    end
    object qrParametrosColorBorrar: TIntegerField
      FieldName = 'ColorBorrar'
      Origin = 'SysParametros.ColorBorrar'
    end
    object qrParametrosTituloEmpresa: TStringField
      FieldName = 'TituloEmpresa'
      Origin = 'SysParametros.TituloEmpresa'
      FixedChar = True
      Size = 100
    end
    object qrParametrosSubTituloEmpresa: TStringField
      FieldName = 'SubTituloEmpresa'
      Origin = 'SysParametros.SubTituloEmpresa'
      FixedChar = True
      Size = 50
    end
    object qrParametrosSerial: TStringField
      FieldName = 'Serial'
      FixedChar = True
      Size = 8
    end
    object qrParametrosInterface: TIntegerField
      FieldName = 'Interface'
    end
    object qrParametrosMenuFont: TStringField
      FieldName = 'MenuFont'
      Size = 30
    end
    object qrParametrosFormsFont: TStringField
      FieldName = 'FormsFont'
      Size = 30
    end
    object qrParametrosDireccion: TStringField
      FieldName = 'Direccion'
      Size = 250
    end
    object qrParametrosPais: TStringField
      FieldName = 'Pais'
      Size = 10
    end
    object qrParametrosCiudad: TStringField
      FieldName = 'Ciudad'
      Size = 10
    end
    object qrParametrosEstado: TStringField
      FieldName = 'Estado'
      Size = 10
    end
    object qrParametrosZipCode: TStringField
      FieldName = 'ZipCode'
      Size = 10
    end
    object qrParametrosDireccionWeb: TStringField
      FieldName = 'DireccionWeb'
      Size = 255
    end
    object qrParametroseMail: TStringField
      FieldName = 'eMail'
      Size = 80
    end
    object qrParametrosTelefono: TStringField
      FieldName = 'Telefono'
    end
    object qrParametrosFax: TStringField
      FieldName = 'Fax'
    end
    object qrParametrosRNC: TStringField
      FieldName = 'RNC'
    end
    object qrParametrosRutaReportes: TStringField
      FieldName = 'RutaReportes'
      Size = 250
    end
  end
  object rzFindFolder: TRzSelectFolderDialog
    Left = 120
    Top = 240
  end
end
