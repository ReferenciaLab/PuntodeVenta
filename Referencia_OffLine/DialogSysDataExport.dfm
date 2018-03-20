inherited frmDialogSysDataExport: TfrmDialogSysDataExport
  Left = 457
  Top = 236
  Caption = 'Exportaci'#243'n de Datos'
  ClientHeight = 239
  ClientWidth = 465
  ExplicitWidth = 471
  ExplicitHeight = 271
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcDialog: TdxLayoutControl
    Width = 465
    Height = 239
    ExplicitWidth = 465
    ExplicitHeight = 239
    inherited btCancelar: TcxButton
      Top = 203
      TabOrder = 3
      ExplicitTop = 203
    end
    inherited btAceptar: TcxButton
      Top = 203
      Enabled = False
      TabOrder = 2
      ExplicitTop = 203
    end
    object rgDataSet: TcxRadioGroup [2]
      Left = 23
      Top = 63
      Caption = 'Datos a Exportar'
      ItemIndex = 0
      Properties.Items = <
        item
          Caption = 'Cat'#225'logo de Cuentas'
        end
        item
          Caption = 'Clientes'
        end
        item
          Caption = 'Suplidores'
        end
        item
          Caption = 'Productos'
        end
        item
          Caption = 'Servicios'
        end>
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      TabOrder = 1
      Height = 105
      Width = 185
    end
    object edFileName: TcxButtonEdit [3]
      Left = 119
      Top = 36
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edFileNamePropertiesButtonClick
      Properties.OnChange = edFileNamePropertiesChange
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      TabOrder = 0
      Width = 121
    end
    inherited lcDialogGroup_Root: TdxLayoutGroup
      inherited lcDialogGroup1: TdxLayoutGroup
        object lcDialogItem2: TdxLayoutItem
          Caption = 'Nombre de Archivo'
          Control = edFileName
          ControlOptions.ShowBorder = False
        end
        object lcDialogItem1: TdxLayoutItem
          AutoAligns = []
          AlignHorz = ahClient
          AlignVert = avClient
          Caption = 'cxRadioGroup1'
          ShowCaption = False
          Control = rgDataSet
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object qExportXML: TQExport3XML
    DataSet = ExportDataSet
    About = '(About EMS QuickExport)'
    _Version = '3.36'
    Options.Version = '1.0'
    Left = 280
    Top = 120
  end
  object ExportDataSet: TADODataSet
    Connection = DM.DataBase
    Parameters = <>
    Left = 220
    Top = 60
  end
  object SaveDialog: TSaveDialog
    DefaultExt = '*.XML'
    Filter = 'Archivo XML|*.XML'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 196
    Top = 124
  end
  object qImportWizard: TQImport2Wizard
    AllowedImports = [aiXML]
    DataSet = ExportDataSet
    Formats.BooleanTrue.Strings = (
      'True')
    Formats.BooleanFalse.Strings = (
      'False')
    Formats.NullValues.Strings = (
      'Null')
    FieldFormats = <>
    ErrorLogFileName = 'error.log'
    ImportMode = qimInsertNew
    AddType = qatInsert
    Left = 368
    Top = 92
  end
  object OpenDialog: TOpenDialog
    DefaultExt = '*.xml'
    Filter = 'Arhivo XML|*.xml'
    Options = [ofHideReadOnly, ofFileMustExist, ofEnableSizing]
    Left = 312
    Top = 64
  end
end
