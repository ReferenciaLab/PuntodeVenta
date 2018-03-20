inherited frmDatosUsuario: TfrmDatosUsuario
  Left = 301
  Top = 180
  Caption = 'Usuarios'
  ClientHeight = 530
  ClientWidth = 810
  OnClose = nil
  OnCloseQuery = nil
  OnDestroy = nil
  OnKeyUp = nil
  OnPaint = nil
  ExplicitWidth = 826
  ExplicitHeight = 568
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 810
    Height = 497
    ExplicitWidth = 810
    ExplicitHeight = 497
    inherited pcDatos: TcxPageControl
      Width = 561
      Height = 332
      ActivePage = tsMain
      ExplicitWidth = 561
      ExplicitHeight = 332
      ClientRectBottom = 332
      ClientRectRight = 561
      ClientRectTop = 24
      inherited tsMain: TcxTabSheet
        ExplicitWidth = 711
        ExplicitHeight = 473
        inherited lcGrid: TdxLayoutControl
          Width = 561
          Height = 308
          ExplicitWidth = 711
          ExplicitHeight = 473
          inherited dgDatos: TcxGrid
            Width = 574
            Height = 229
            ExplicitWidth = 574
            ExplicitHeight = 229
            inherited tvDatos: TcxGridDBTableView
              DataController.KeyFieldNames = 'UserId'
              object tvDatosUserId: TcxGridDBColumn
                DataBinding.FieldName = 'UserId'
              end
              object tvDatosNombre: TcxGridDBColumn
                DataBinding.FieldName = 'Nombre'
              end
              object tvDatosRolID: TcxGridDBColumn
                Caption = 'Rol'
                DataBinding.FieldName = 'RolID'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.KeyFieldNames = 'RolID'
                Properties.ListColumns = <
                  item
                    FieldName = 'Descripcion'
                  end>
                Properties.ListSource = dsRoles
              end
            end
          end
        end
      end
      inherited tsDatos: TcxTabSheet
        ExplicitWidth = 711
        ExplicitHeight = 473
        inherited lcDatos: TdxLayoutControl
          Width = 561
          Height = 308
          ExplicitWidth = 711
          ExplicitHeight = 473
          object cxDBTextEdit1: TcxDBTextEdit [0]
            Tag = 99
            Left = 142
            Top = 36
            DataBinding.DataField = 'UserId'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 0
            Width = 121
          end
          object edClave: TcxDBTextEdit [1]
            Left = 142
            Top = 63
            DataBinding.DataField = 'Clave'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Properties.EchoMode = eemPassword
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 1
            Width = 121
          end
          object cxDBLookupComboBox1: TcxDBLookupComboBox [2]
            Left = 142
            Top = 117
            DataBinding.DataField = 'RolID'
            DataBinding.DataSource = dsDatos
            Properties.KeyFieldNames = 'RolID'
            Properties.ListColumns = <
              item
                FieldName = 'Descripcion'
              end>
            Properties.ListSource = dsRoles
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 3
            Width = 121
          end
          object cxDBTextEdit3: TcxDBTextEdit [3]
            Left = 142
            Top = 90
            AutoSize = False
            DataBinding.DataField = 'Nombre'
            DataBinding.DataSource = dsDatos
            Properties.Alignment.Horz = taLeftJustify
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 2
            Height = 21
            Width = 400
          end
          object cbMenuFont: TcxDBComboBox [4]
            Left = 142
            Top = 230
            DataBinding.DataField = 'MenuFont'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 6
            Width = 121
          end
          object cbFormFont: TcxDBComboBox [5]
            Left = 142
            Top = 257
            DataBinding.DataField = 'FormsFont'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 7
            Width = 121
          end
          object cxDBCheckBox1: TcxDBCheckBox [6]
            Left = 142
            Top = 284
            Caption = 'cxDBCheckBox1'
            DataBinding.DataField = 'MultipleVentanas'
            DataBinding.DataSource = dsDatos
            Properties.Alignment = taCenter
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 8
            Width = 17
          end
          object cxDBCheckBox2: TcxDBCheckBox [7]
            Left = 142
            Top = 343
            DataBinding.DataField = 'CambiarMuestraNo'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 9
            Width = 75
          end
          object cxDBCheckBox3: TcxDBCheckBox [8]
            Left = 369
            Top = 370
            DataBinding.DataField = 'AsignarDescuentos'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 13
            Width = 75
          end
          object cxDBCheckBox4: TcxDBCheckBox [9]
            Left = 142
            Top = 397
            DataBinding.DataField = 'FuncionesEspeciales'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 11
            Width = 75
          end
          object chkCambioEntrada: TcxDBCheckBox [10]
            Left = 142
            Top = 370
            DataBinding.DataField = 'CambiosEntradaFull'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 10
            Width = 121
          end
          object chkAdicionalUSA: TcxDBCheckBox [11]
            Left = 369
            Top = 343
            DataBinding.DataField = 'CargoAdicionalUSA'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 12
            Width = 183
          end
          object cxDBImageComboBox1: TcxDBImageComboBox [12]
            Left = 142
            Top = 144
            DataBinding.DataField = 'Estatus'
            DataBinding.DataSource = dsDatos
            Properties.Items = <
              item
                Description = 'ACTIVO'
                ImageIndex = 0
                Value = 'A'
              end
              item
                Description = 'INACTIVO'
                Value = 'I'
              end>
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 4
            Width = 121
          end
          object cxDBExtEmpleado: TcxDBExtLookupComboBox [13]
            Left = 142
            Top = 171
            RepositoryItem = DM.elcEmpleado
            DataBinding.DataField = 'Cod_Empleado'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 5
            Width = 545
          end
          inherited Group_Root: TdxLayoutGroup
            object lcDatosGroup1: TdxLayoutGroup
              Caption = 'General'
              object lcDatosGroup5: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object lcDatosItem1: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Usuario'
                  Control = cxDBTextEdit1
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem2: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Clave'
                  Control = edClave
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem4: TdxLayoutItem
                  Caption = 'Nombre'
                  Control = cxDBTextEdit3
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem3: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Rol'
                  Control = cxDBLookupComboBox1
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem10: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Estatus'
                  Control = cxDBImageComboBox1
                  ControlOptions.ShowBorder = False
                end
              end
              object lcDatosItem14: TdxLayoutItem
                Caption = 'C'#243'digo Empleado'
                Control = cxDBExtEmpleado
                ControlOptions.ShowBorder = False
              end
            end
            object lcDatosGroup2: TdxLayoutGroup
              Caption = 'Preferencias'
              object lcDatosItem6: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Font de Menu'
                Control = cbMenuFont
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem7: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Font de Formularios'
                Control = cbFormFont
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem8: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'M'#250'ltiples Ventanas'
                Control = cxDBCheckBox1
                ControlOptions.ShowBorder = False
              end
            end
            object lcDatosGroup3: TdxLayoutGroup
              Caption = 'Configuraci'#243'n'
              LayoutDirection = ldHorizontal
              object lcDatosGroup7: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object lcDatosItem5: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Cambiar No. Laboratorio'
                  Control = cxDBCheckBox2
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem12: TdxLayoutItem
                  Caption = 'Cambios Entrada'
                  Control = chkCambioEntrada
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem11: TdxLayoutItem
                  Caption = 'Funciones Especiales'
                  Control = cxDBCheckBox4
                  ControlOptions.ShowBorder = False
                end
              end
              object lcDatosGroup6: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object lcDatosItem13: TdxLayoutItem
                  Caption = 'Adicional USA'
                  Control = chkAdicionalUSA
                  ControlOptions.ShowBorder = False
                end
                object lcDatosItem9: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Asignar Descuentos'
                  Control = cxDBCheckBox3
                  ControlOptions.ShowBorder = False
                end
              end
            end
          end
        end
      end
    end
    object cxButton1: TcxButton [1]
      Left = 723
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Descuento'
      TabOrder = 1
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton [2]
      Left = 723
      Top = 38
      Width = 75
      Height = 25
      Caption = 'Sucursales'
      TabOrder = 2
      OnClick = cxButton2Click
    end
    inherited dxLayoutGroup2: TdxLayoutGroup
      inherited dxLayoutControl1Group_Root: TdxLayoutGroup
        inherited lgBotones: TdxLayoutGroup
          object dxLayoutControl1Item1: TdxLayoutItem
            Caption = 'cxButton1'
            ShowCaption = False
            Control = cxButton1
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item2: TdxLayoutItem
            Caption = 'cxButton2'
            ShowCaption = False
            Control = cxButton2
            ControlOptions.ShowBorder = False
          end
        end
      end
    end
  end
  inherited pnCaption: TPanel
    Width = 810
    ExplicitWidth = 810
  end
  inherited formStorage: TJvFormStorage
    Left = 312
    Top = 326
  end
  inherited dsDatos: TDataSource
    DataSet = qrUsuarios
    Left = 202
    Top = 2
  end
  inherited dxPrintGrid: TdxComponentPrinter
    inherited dxPrintGridLink: TdxGridReportLink
      ReportDocument.CreationDate = 38065.580844502320000000
      BuiltInReportLink = True
    end
    inherited dxPrintGridDatos: TdxLayoutControlReportLink
      ReportDocument.CreationDate = 38498.628016365740000000
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
  inherited qryHelper: TADOQuery
    Left = 668
    Top = 163
  end
  inherited pmCustom: TPopupMenu
    Top = 284
  end
  inherited qrDefaultView: TADOQuery
    Left = 624
    Top = 163
  end
  inherited strTableNames: TJvStrHolder
    Left = 144
    Top = 160
  end
  inherited cxStyleRepository1: TcxStyleRepository
    Left = 52
    Top = 128
  end
  inherited qrUserFields: TABSQuery
    Left = 412
    Top = 279
  end
  object qrUsuarios: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    AfterOpen = qrUsuariosAfterOpen
    BeforePost = qrUsuariosBeforePost
    BeforeDelete = qrUsuariosBeforeDelete
    OnNewRecord = qrUsuariosNewRecord
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM sysUsuarios')
    Left = 144
    Top = 3
    object qrUsuariosUserId: TStringField
      FieldName = 'UserId'
      Origin = 'sysUsuarios.UserId'
      Required = True
      FixedChar = True
      Size = 10
    end
    object qrUsuariosClave: TStringField
      FieldName = 'Clave'
      Origin = 'sysUsuarios.Clave'
      FixedChar = True
      Size = 10
    end
    object qrUsuariosNombre: TStringField
      FieldName = 'Nombre'
      Origin = 'sysUsuarios.Nombre'
      FixedChar = True
      Size = 30
    end
    object qrUsuariosCodigoFlebotomista: TStringField
      FieldName = 'CodigoFlebotomista'
      Size = 10
    end
    object qrUsuariosRolID: TSmallintField
      FieldName = 'RolID'
      Origin = 'sysUsuarios.RolID'
      Required = True
    end
    object qrUsuariosInterface: TIntegerField
      FieldName = 'Interface'
    end
    object qrUsuariosMenuFont: TStringField
      FieldName = 'MenuFont'
      Size = 30
    end
    object qrUsuariosFormsFont: TStringField
      FieldName = 'FormsFont'
      Size = 30
    end
    object qrUsuariosMultipleVentanas: TBooleanField
      FieldName = 'MultipleVentanas'
    end
    object qrUsuariosDescuentoTope: TFloatField
      FieldName = 'DescuentoTope'
    end
    object qrUsuariosPublicar: TBooleanField
      FieldName = 'Publicar'
    end
    object qrUsuariosCambiarPrecio: TBooleanField
      FieldName = 'CambiarPrecio'
    end
    object qrUsuariosCambiarMuestraNo: TBooleanField
      FieldName = 'CambiarMuestraNo'
    end
    object qrUsuariosAsignarDescuentos: TBooleanField
      FieldName = 'AsignarDescuentos'
    end
    object qrUsuariosFuncionesEspeciales: TBooleanField
      FieldName = 'FuncionesEspeciales'
    end
    object qrUsuariosRutaBarcode: TStringField
      FieldName = 'RutaBarcode'
      Size = 255
    end
    object qrUsuariosRecId: TLargeintField
      FieldName = 'RecId'
    end
    object qrUsuariosEliminaPrueba: TBooleanField
      FieldName = 'EliminaPrueba'
    end
    object qrUsuariosCambiosEntradaFull: TBooleanField
      FieldName = 'CambiosEntradaFull'
    end
    object qrUsuariosCargoAdicionalUSA: TBooleanField
      FieldName = 'CargoAdicionalUSA'
    end
    object qrUsuariosEstatus: TStringField
      FieldName = 'Estatus'
      FixedChar = True
      Size = 1
    end
    object qrUsuariosCod_Empleado: TStringField
      FieldName = 'Cod_Empleado'
      Size = 10
    end
    object qrUsuariosClave_Unicode: TStringField
      FieldName = 'Clave_Unicode'
      Size = 10
    end
  end
  object qrRoles: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *'
      '  from SysRoles')
    Left = 648
    Top = 215
  end
  object dsRoles: TDataSource
    AutoEdit = False
    DataSet = qrRoles
    Left = 460
    Top = 239
  end
end
