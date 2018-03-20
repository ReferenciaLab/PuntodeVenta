inherited frmOpcionesSistema: TfrmOpcionesSistema
  Left = 9
  Top = 18
  Width = 573
  Height = 384
  HelpContext = 78000
  Caption = 'Opciones del Sistema'
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcDatos: TdxLayoutControl
    Width = 565
    Height = 355
    object edConsulta: TcxDBButtonEdit [0]
      Left = 83
      Top = 142
      Width = 121
      Height = 21
      DataBinding.DataField = 'ColorConsulta'
      DataBinding.DataSource = dsDatos
      Properties.Alignment.Horz = taLeftJustify
      Properties.AutoSelect = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edConsultaPropertiesButtonClick
      Style.BorderColor = clBlue
      Style.BorderStyle = ebsSingle
      Style.ButtonStyle = btsHotFlat
      Style.HotTrack = False
      TabOrder = 3
    end
    object edAgregar: TcxDBButtonEdit [1]
      Left = 83
      Top = 169
      Width = 121
      Height = 21
      DataBinding.DataField = 'ColorAgregar'
      DataBinding.DataSource = dsDatos
      Properties.Alignment.Horz = taLeftJustify
      Properties.AutoSelect = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edConsultaPropertiesButtonClick
      Style.BorderColor = clBlue
      Style.BorderStyle = ebsSingle
      Style.ButtonStyle = btsHotFlat
      Style.HotTrack = False
      TabOrder = 4
    end
    object edModificar: TcxDBButtonEdit [2]
      Left = 83
      Top = 196
      Width = 121
      Height = 21
      DataBinding.DataField = 'ColorEditar'
      DataBinding.DataSource = dsDatos
      Properties.Alignment.Horz = taLeftJustify
      Properties.AutoSelect = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edConsultaPropertiesButtonClick
      Style.BorderColor = clBlue
      Style.BorderStyle = ebsSingle
      Style.ButtonStyle = btsHotFlat
      Style.HotTrack = False
      TabOrder = 5
    end
    object edBorrar: TcxDBButtonEdit [3]
      Left = 83
      Top = 223
      Width = 121
      Height = 21
      DataBinding.DataField = 'ColorBorrar'
      DataBinding.DataSource = dsDatos
      Properties.Alignment.Horz = taLeftJustify
      Properties.AutoSelect = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edConsultaPropertiesButtonClick
      Style.BorderColor = clBlue
      Style.BorderStyle = ebsSingle
      Style.ButtonStyle = btsHotFlat
      Style.HotTrack = False
      TabOrder = 6
    end
    object edTitulo: TcxDBTextEdit [4]
      Left = 120
      Top = 289
      Width = 121
      Height = 21
      DataBinding.DataField = 'TituloEmpresa'
      DataBinding.DataSource = dsDatos
      Style.BorderColor = clBlue
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 7
    end
    object cxDBTextEdit2: TcxDBTextEdit [5]
      Left = 120
      Top = 316
      Width = 121
      Height = 21
      DataBinding.DataField = 'SubTituloEmpresa'
      DataBinding.DataSource = dsDatos
      Style.BorderColor = clBlue
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 8
    end
    object cxDBImageComboBox1: TcxDBImageComboBox [6]
      Left = 120
      Top = 36
      Width = 121
      Height = 21
      DataBinding.DataField = 'Interface'
      DataBinding.DataSource = dsDatos
      Properties.Alignment.Horz = taLeftJustify
      Properties.Items = <
        item
          Description = 'Azul (Por Defecto)'
          Value = '0'
        end
        item
          Description = 'Verde'
          Value = '1'
        end>
      Style.BorderColor = clBlue
      Style.BorderStyle = ebsSingle
      Style.ButtonStyle = btsHotFlat
      Style.HotTrack = False
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 0
    end
    object cbMenuFont: TcxDBComboBox [7]
      Left = 120
      Top = 63
      Width = 121
      Height = 21
      DataBinding.DataField = 'MenuFont'
      DataBinding.DataSource = dsDatos
      Style.BorderColor = clBlue
      Style.BorderStyle = ebsSingle
      Style.ButtonStyle = btsHotFlat
      Style.HotTrack = False
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 1
    end
    object cbFormFont: TcxDBComboBox [8]
      Left = 120
      Top = 90
      Width = 121
      Height = 21
      DataBinding.DataField = 'FormsFont'
      DataBinding.DataSource = dsDatos
      Style.BorderColor = clBlue
      Style.BorderStyle = ebsSingle
      Style.ButtonStyle = btsHotFlat
      Style.HotTrack = False
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 2
    end
    inherited Group_Root: TdxLayoutGroup
      object lcDatosGroup3: TdxLayoutGroup
        AutoAligns = [aaVertical]
        AlignHorz = ahClient
        Caption = 'Preferencias'
        object lcDatosItem7: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Tema'
          Control = cxDBImageComboBox1
          ControlOptions.ShowBorder = False
        end
        object lcDatosItem8: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Font de Menu'
          Control = cbMenuFont
          ControlOptions.ShowBorder = False
        end
        object lcDatosItem9: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Font de Formularios'
          Control = cbFormFont
          ControlOptions.ShowBorder = False
        end
        object lcDatosGroup1: TdxLayoutGroup
          AutoAligns = [aaVertical]
          AlignHorz = ahClient
          Caption = 'Colores de Estatus'
          object lcDatosItem1: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'Consulta'
            Control = edConsulta
            ControlOptions.ShowBorder = False
          end
          object lcDatosItem2: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'Agregar'
            Control = edAgregar
            ControlOptions.ShowBorder = False
          end
          object lcDatosItem3: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'Modificar'
            Control = edModificar
            ControlOptions.ShowBorder = False
          end
          object lcDatosItem4: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'Borrar'
            Control = edBorrar
            ControlOptions.ShowBorder = False
          end
        end
      end
      object lcDatosGroup2: TdxLayoutGroup
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'Identificaci'#243'n de Empresa'
        object lcDatosItem5: TdxLayoutItem
          Caption = 'T'#237'tulo'
          Control = edTitulo
          ControlOptions.ShowBorder = False
        end
        object lcDatosItem6: TdxLayoutItem
          Caption = 'Sub-T'#237'tulo'
          Control = cxDBTextEdit2
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  inherited formStorage: TJvFormStorage
    Left = 288
    Top = 74
  end
  inherited dsDatos: TDataSource
    DataSet = qrParametros
    Left = 396
    Top = 83
  end
  object qrParametros: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    AfterOpen = qrParametrosAfterOpen
    AfterPost = qrParametrosAfterPost
    Parameters = <>
    SQL.Strings = (
      'select  * '
      '   from SysParametros')
    Left = 460
    Top = 52
    object qrParametrosColorConsulta: TIntegerField
      FieldName = 'ColorConsulta'
      Origin = 'SysParametros.ColorConsulta'
      OnChange = qrParametrosColorConsultaChange
    end
    object qrParametrosColorAgregar: TIntegerField
      FieldName = 'ColorAgregar'
      Origin = 'SysParametros.ColorAgregar'
      OnChange = qrParametrosColorConsultaChange
    end
    object qrParametrosColorEditar: TIntegerField
      FieldName = 'ColorEditar'
      Origin = 'SysParametros.ColorEditar'
      OnChange = qrParametrosColorConsultaChange
    end
    object qrParametrosColorBorrar: TIntegerField
      FieldName = 'ColorBorrar'
      Origin = 'SysParametros.ColorBorrar'
      OnChange = qrParametrosColorConsultaChange
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
  end
  object ColorDlg: TColorDialog
    Left = 236
    Top = 300
  end
end
