inherited frmDialogFormViewRol: TfrmDialogFormViewRol
  Left = 502
  Top = 152
  Caption = 'Asignaci'#243'n de Formulario a Rol'
  ClientHeight = 267
  OldCreateOrder = True
  ExplicitWidth = 431
  ExplicitHeight = 294
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcDialog: TdxLayoutControl
    Height = 267
    inherited btCancelar: TcxButton
      Top = 231
      TabOrder = 5
      ExplicitTop = 231
    end
    inherited btAceptar: TcxButton
      Top = 231
      TabOrder = 4
      ExplicitTop = 231
    end
    object lbNo: TcxListBox [2]
      Left = 23
      Top = 54
      Width = 121
      Height = 97
      ItemHeight = 13
      Sorted = True
      TabOrder = 0
      OnDblClick = btAddClick
    end
    object lbSi: TcxListBox [3]
      Left = 234
      Top = 54
      Width = 121
      Height = 97
      ItemHeight = 13
      Sorted = True
      TabOrder = 3
      OnDblClick = btDelClick
    end
    object btAdd: TcxButton [4]
      Left = 198
      Top = 71
      Width = 30
      Height = 25
      Caption = '>'
      TabOrder = 1
      OnClick = btAddClick
    end
    object btDel: TcxButton [5]
      Left = 198
      Top = 102
      Width = 30
      Height = 25
      Caption = '<'
      TabOrder = 2
      OnClick = btDelClick
    end
    inherited lcDialogGroup_Root: TdxLayoutGroup
      inherited lcDialogGroup1: TdxLayoutGroup
        Caption = 'Seleccion de Roles'
        LayoutDirection = ldHorizontal
        object lcDialogItem1: TdxLayoutItem
          AutoAligns = []
          AlignHorz = ahClient
          AlignVert = avClient
          Caption = 'Disponibles'
          CaptionOptions.AlignHorz = taCenter
          CaptionOptions.Layout = clTop
          Control = lbNo
          ControlOptions.ShowBorder = False
        end
        object lcDialogGroup3: TdxLayoutGroup
          Caption = ' '
          Offsets.Top = 35
          ShowCaption = False
          ShowBorder = False
          object lcDialogItem3: TdxLayoutItem
            AutoAligns = [aaHorizontal]
            Caption = 'cxButton1'
            ShowCaption = False
            Control = btAdd
            ControlOptions.ShowBorder = False
          end
          object lcDialogItem4: TdxLayoutItem
            AutoAligns = [aaHorizontal]
            Caption = 'cxButton2'
            ShowCaption = False
            Control = btDel
            ControlOptions.ShowBorder = False
          end
        end
        object lcDialogItem2: TdxLayoutItem
          AutoAligns = []
          AlignHorz = ahClient
          AlignVert = avClient
          Caption = 'Seleccionados'
          CaptionOptions.AlignHorz = taCenter
          CaptionOptions.Layout = clTop
          Control = lbSi
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object qrRoles: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *'
      '  from SysRoles')
    Left = 56
    Top = 72
    object qrRolesRolID: TSmallintField
      FieldName = 'RolID'
      ReadOnly = True
    end
    object qrRolesDescripcion: TStringField
      FieldName = 'Descripcion'
    end
    object qrRolesAdministrador: TBooleanField
      FieldName = 'Administrador'
    end
    object qrRolesDesarrollador: TBooleanField
      FieldName = 'Desarrollador'
    end
  end
  object qrFormRol: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'pForm'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'pView'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end
      item
        Name = 'pRol'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'pTipo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *'
      'FROM         SysUserFormView'
      
        'WHERE     (FormName = :pForm) AND (ViewName = :pView) AND (UserI' +
        'd = :pRol) ANd (Tipo = :pTipo)')
    Left = 340
    Top = 148
  end
  object cmdDelDefault: TADOCommand
    CommandText = 
      'DELETE FROM '#13#10'  SysUserFormView'#13#10'WHERE UserID = :pUser'#13#10'   AND F' +
      'ormName = :pForm'#13#10'   AND Tipo = :pTipo'
    Connection = DM.DataBase
    Parameters = <
      item
        Name = 'pUser'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'pForm'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'pTipo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 272
    Top = 72
  end
  object cmdSetDefault: TADOCommand
    CommandText = 
      'INSERT INTO '#13#10'  SysUserFormView (UserId, FormName, ViewName, Tip' +
      'o )'#13#10'VALUES'#13#10'  ( :pUser, :pForm, :pView, :pTipo )'
    Connection = DM.DataBase
    Parameters = <
      item
        Name = 'pUser'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'pForm'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'pView'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end
      item
        Name = 'pTipo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 124
    Top = 148
  end
end
