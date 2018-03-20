inherited frmDlgDatosDonacion: TfrmDlgDatosDonacion
  Caption = 'Datos de la donacion'
  ClientHeight = 223
  ClientWidth = 577
  ExplicitWidth = 583
  ExplicitHeight = 255
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcDialog: TdxLayoutControl
    Width = 577
    Height = 223
    ExplicitWidth = 577
    ExplicitHeight = 289
    inherited btCancelar: TcxButton
      Top = 183
      TabOrder = 5
      ExplicitTop = 183
    end
    inherited btAceptar: TcxButton
      Top = 183
      TabOrder = 4
      ExplicitTop = 183
    end
    object cxDBTextEdit1: TcxDBTextEdit [2]
      Left = 106
      Top = 36
      DataBinding.DataField = 'DonacionID'
      DataBinding.DataSource = dsDatos
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit [3]
      Left = 106
      Top = 63
      DataBinding.DataField = 'Nombre'
      DataBinding.DataSource = dsPaciente
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object cxDBCheckBox1: TcxDBCheckBox [4]
      Left = 23
      Top = 122
      Caption = 'Desea ser un donante activo'
      DataBinding.DataSource = dsPaciente
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 2
      Width = 178
    end
    object cxDBComboBox1: TcxDBComboBox [5]
      Left = 106
      Top = 149
      DataBinding.DataField = 'DonacionTipo'
      DataBinding.DataSource = dsDonacion
      Properties.Items.Strings = (
        'Voluntario'
        'Directo'
        'Autologo'
        'Terapeutico')
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 3
      Width = 121
    end
    inherited lcDialogGroup_Root: TdxLayoutGroup
      inherited lcDialogGroup1: TdxLayoutGroup
        AutoAligns = [aaVertical]
        object lcDialogItem1: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Donacion'
          Control = cxDBTextEdit1
          ControlOptions.ShowBorder = False
        end
        object lcDialogItem2: TdxLayoutItem
          Caption = 'Nombre'
          Control = cxDBTextEdit2
          ControlOptions.ShowBorder = False
        end
      end
      object lcDialogGroup3: TdxLayoutGroup [1]
        Caption = 'Datos'
        object lcDialogItem3: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'cxDBCheckBox1'
          ShowCaption = False
          Control = cxDBCheckBox1
          ControlOptions.ShowBorder = False
        end
        object lcDialogItem4: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Tipo de donante'
          Control = cxDBComboBox1
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dsDatos: TDataSource
    DataSet = DM.qrDonaciones
    Left = 440
    Top = 184
  end
  object tbPacientes: TADOTable
    Connection = DM.DataBase
    CursorType = ctStatic
    IndexFieldNames = 'PacienteID'
    MasterFields = 'PacienteID'
    MasterSource = dsDatos
    TableName = 'PTPaciente'
    Left = 256
    Top = 184
  end
  object dsPaciente: TDataSource
    DataSet = DM.qrDonaciones
    Left = 288
    Top = 184
  end
  object tbDonacion: TADOTable
    Connection = DM.DataBase
    CursorType = ctStatic
    IndexFieldNames = 'DonacionID'
    MasterFields = 'DonacionID'
    MasterSource = dsDatos
    TableName = 'BSDonacion'
    Left = 352
    Top = 184
  end
  object dsDonacion: TDataSource
    DataSet = tbDonacion
    Left = 384
    Top = 184
  end
end
