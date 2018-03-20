inherited frmDialogSysDataClientesBackup: TfrmDialogSysDataClientesBackup
  Left = 457
  Top = 236
  Caption = 'Importaci'#243'n de Datos'
  ClientHeight = 162
  ClientWidth = 465
  ExplicitWidth = 471
  ExplicitHeight = 194
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcDialog: TdxLayoutControl
    Width = 465
    Height = 162
    ExplicitWidth = 465
    ExplicitHeight = 162
    inherited btCancelar: TcxButton
      Top = 126
      TabOrder = 3
      ExplicitTop = 126
    end
    inherited btAceptar: TcxButton
      Top = 126
      Enabled = False
      TabOrder = 2
      ExplicitTop = 126
    end
    object rgDataSet: TcxRadioGroup [2]
      Left = 23
      Top = 63
      Caption = 'Datos a Importar'
      ItemIndex = 0
      Properties.Items = <
        item
          Caption = 'Archivo de Clientes. (CVS - DBF - TXT - XLS - XML)'
        end>
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      TabOrder = 1
      Height = 126
      Width = 419
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
    Left = 416
    Top = 120
  end
  object ExportDataSet: TADODataSet
    Connection = DM.DataBase
    CursorType = ctStatic
    CommandText = 'SELECT * FROM PTClientesPlanesTemporal'
    Parameters = <>
    Left = 220
    Top = 60
    object ExportDataSetEmpresaID: TStringField
      DisplayLabel = 'Empresa'
      FieldName = 'EmpresaID'
      Size = 10
    end
    object ExportDataSetDepartamento: TStringField
      FieldName = 'Departamento'
      Size = 50
    end
    object ExportDataSetFiller1: TStringField
      FieldName = 'Filler1'
      Size = 10
    end
    object ExportDataSetEmpleadoID: TStringField
      DisplayLabel = 'Empleado No.'
      FieldName = 'EmpleadoID'
      Size = 10
    end
    object ExportDataSetNombre: TStringField
      FieldName = 'Nombre'
      Size = 50
    end
    object ExportDataSetEdad: TIntegerField
      FieldName = 'Edad'
    end
    object ExportDataSetSexo: TStringField
      FieldName = 'Sexo'
      FixedChar = True
      Size = 1
    end
    object ExportDataSetSucursal: TStringField
      DisplayLabel = 'Cod. Suc.'
      FieldName = 'Sucursal'
      Size = 5
    end
    object ExportDataSetCargoCiudad: TStringField
      DisplayLabel = 'Cargo o Ciudad'
      FieldName = 'CargoCiudad'
      Size = 30
    end
    object ExportDataSetFiller2: TStringField
      FieldName = 'Filler2'
      Size = 10
    end
    object ExportDataSetClienteID: TStringField
      DisplayLabel = 'Codigo Cliente'
      FieldName = 'ClienteID'
      Size = 10
    end
    object ExportDataSetComboId: TStringField
      FieldName = 'ComboId'
      Size = 50
    end
  end
  object SaveDialog: TSaveDialog
    DefaultExt = '*.dbf'
    Filter = 'Tabla DBF|*.dbf'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 244
    Top = 124
  end
  object qImportWizard: TQImport2Wizard
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
    Top = 60
  end
  object OpenDialog: TOpenDialog
    DefaultExt = '*.cvs, *.dbf, *.txt, *.xls, *.xml'
    Filter = 
      'Texto separado por Comas CVS|*.cvs|Tabla DBF|*.dbf|Archivo de Te' +
      'xto TXT|*.txt|Archivo de Excel XLS|*.xls|Hoja de XML|*.xml'
    Options = [ofHideReadOnly, ofFileMustExist, ofEnableSizing]
    Left = 288
    Top = 56
  end
end
