inherited frmDlgEntrevista: TfrmDlgEntrevista
  Caption = 'Entrevista al donante'
  ClientHeight = 289
  ClientWidth = 546
  ExplicitWidth = 552
  ExplicitHeight = 321
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcDialog: TdxLayoutControl
    Width = 546
    Height = 289
    ExplicitWidth = 537
    ExplicitHeight = 289
    inherited btCancelar: TcxButton
      Top = 210
      TabOrder = 7
      ExplicitTop = 210
    end
    inherited btAceptar: TcxButton
      Top = 210
      TabOrder = 6
      ExplicitTop = 210
    end
    object cxDBTextEdit1: TcxDBTextEdit [2]
      Left = 89
      Top = 36
      DataBinding.DataField = 'DonacionID'
      DataBinding.DataSource = dsDatos
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 0
      Width = 135
    end
    object cxDBTextEdit2: TcxDBTextEdit [3]
      Left = 89
      Top = 63
      DataBinding.DataField = 'Nombre'
      DataBinding.DataSource = dsPaciente
      Properties.ReadOnly = True
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 1
      Width = 418
    end
    object cxDBTextEdit3: TcxDBTextEdit [4]
      Left = 89
      Top = 122
      DataBinding.DataField = 'Temperatura'
      DataBinding.DataSource = dsDonacion
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object cxDBTextEdit4: TcxDBTextEdit [5]
      Left = 89
      Top = 149
      DataBinding.DataField = 'Peso'
      DataBinding.DataSource = dsDonacion
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 3
      Width = 121
    end
    object cxDBTextEdit5: TcxDBTextEdit [6]
      Left = 89
      Top = 176
      DataBinding.DataField = 'PulsoMinimo'
      DataBinding.DataSource = dsDonacion
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      TabOrder = 4
      Width = 121
    end
    object cxDBComboBox1: TcxDBComboBox [7]
      Left = 216
      Top = 176
      DataBinding.DataField = 'PulsoEstado'
      DataBinding.DataSource = dsDonacion
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 5
      Width = 291
    end
    inherited lcDialogGroup_Root: TdxLayoutGroup
      inherited lcDialogGroup1: TdxLayoutGroup
        AutoAligns = []
        Caption = 'Donacion'
        object lcDialogItem1: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Donacion'
          Control = cxDBTextEdit1
          ControlOptions.ShowBorder = False
        end
        object lcDialogItem2: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Nombre'
          Control = cxDBTextEdit2
          ControlOptions.ShowBorder = False
        end
      end
      object lcDialogGroup3: TdxLayoutGroup [1]
        AutoAligns = [aaVertical]
        Caption = 'Entrevista'
        object lcDialogItem3: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Temperatura'
          Control = cxDBTextEdit3
          ControlOptions.ShowBorder = False
        end
        object lcDialogItem4: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'Peso'
          Control = cxDBTextEdit4
          ControlOptions.ShowBorder = False
        end
        object lcDialogGroup4: TdxLayoutGroup
          AutoAligns = [aaVertical]
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object lcDialogItem5: TdxLayoutItem
            AutoAligns = [aaVertical]
            Caption = 'Pulso minimo'
            Control = cxDBTextEdit5
            ControlOptions.ShowBorder = False
          end
          object lcDialogItem6: TdxLayoutItem
            Control = cxDBComboBox1
            ControlOptions.ShowBorder = False
          end
        end
      end
    end
  end
  object dsDatos: TDataSource
    DataSet = DM.qrDonaciones
    Left = 320
    Top = 224
  end
  object dsDonacion: TDataSource
    DataSet = tbDonacion
    Left = 288
    Top = 224
  end
  object tbDonacion: TADOTable
    Connection = DM.DataBase
    CursorType = ctStatic
    IndexFieldNames = 'DonacionID'
    MasterFields = 'DonacionID'
    MasterSource = dsDatos
    TableName = 'BSDonacion'
    Left = 256
    Top = 224
  end
  object dsPaciente: TDataSource
    DataSet = DM.qrDonaciones
    Left = 208
    Top = 224
  end
  object tbPacientes: TADOTable
    Connection = DM.DataBase
    CursorType = ctStatic
    IndexFieldNames = 'PacienteID'
    MasterFields = 'PacienteID'
    MasterSource = dsDatos
    TableName = 'PTPaciente'
    Left = 176
    Top = 224
  end
end
