inherited frmDialogSysCompanyExport: TfrmDialogSysCompanyExport
  Caption = 'Copiar Compa'#241#237'a'
  ClientHeight = 366
  ClientWidth = 481
  ExplicitWidth = 487
  ExplicitHeight = 398
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcDialog: TdxLayoutControl
    Width = 481
    Height = 366
    ExplicitWidth = 481
    ExplicitHeight = 366
    inherited btCancelar: TcxButton
      Top = 330
      TabOrder = 6
      ExplicitTop = 330
    end
    inherited btAceptar: TcxButton
      Top = 330
      TabOrder = 5
      ExplicitTop = 330
    end
    object lcEmpresas: TcxLookupComboBox [2]
      Left = 108
      Top = 36
      Properties.Alignment.Horz = taLeftJustify
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'Descripcion'
      Properties.ListColumns = <
        item
          FieldName = 'Descripcion'
        end>
      Properties.ListSource = dsCias
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 0
      Width = 145
    end
    object pcDocumentos: TcxPageControl [3]
      Left = 157
      Top = 115
      Width = 289
      Height = 193
      ActivePage = tsFinanzas
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      TabOrder = 4
      ClientRectBottom = 193
      ClientRectRight = 289
      ClientRectTop = 24
      object tsFinanzas: TcxTabSheet
        Caption = 'Finanzas'
        ImageIndex = 0
        object memFinanzas: TcxMemo
          Left = 0
          Top = 0
          Align = alClient
          TabOrder = 0
          Height = 169
          Width = 289
        end
      end
      object tsInventario: TcxTabSheet
        Caption = 'Inventario'
        ImageIndex = 3
        object memInventario: TcxMemo
          Left = 0
          Top = 0
          Align = alClient
          TabOrder = 0
          Height = 169
          Width = 289
        end
      end
      object tsVentas: TcxTabSheet
        Caption = 'Ventas'
        ImageIndex = 1
        object memVentas: TcxMemo
          Left = 0
          Top = 0
          Align = alClient
          TabOrder = 0
          Height = 169
          Width = 289
        end
      end
      object tsCompras: TcxTabSheet
        Caption = 'Compras'
        ImageIndex = 2
        object memCompras: TcxMemo
          Left = 0
          Top = 0
          Align = alClient
          TabOrder = 0
          Height = 169
          Width = 289
        end
      end
      object tsServicios: TcxTabSheet
        Caption = 'Servicios'
        ImageIndex = 4
        TabVisible = False
        object memServicios: TcxMemo
          Left = 0
          Top = 0
          Align = alClient
          TabOrder = 0
          Height = 169
          Width = 289
        end
      end
    end
    object deHasta: TcxDateEdit [4]
      Left = 337
      Top = 63
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 2
      Width = 121
    end
    object deDesde: TcxDateEdit [5]
      Left = 108
      Top = 63
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      TabOrder = 1
      Width = 121
    end
    object cgMaestros: TcxCheckGroup [6]
      Left = 35
      Top = 115
      Caption = 'Copiar'
      Properties.Items = <
        item
          Caption = 'Cuentas'
        end
        item
          Caption = 'Bancos'
        end
        item
          Caption = 'Clientes'
        end
        item
          Caption = 'Suplidores'
        end
        item
          Caption = 'Productos'
        end>
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      TabOrder = 3
      Height = 193
      Width = 132
    end
    inherited lcDialogGroup_Root: TdxLayoutGroup
      inherited lcDialogGroup1: TdxLayoutGroup
        object lcDialogItem1: TdxLayoutItem
          Caption = 'Empresa Destino'
          Control = lcEmpresas
          ControlOptions.ShowBorder = False
        end
        object lcDialogGroup4: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object lcDialogItem4: TdxLayoutItem
            Caption = 'Desde'
            Control = deDesde
            ControlOptions.ShowBorder = False
          end
          object lcDialogItem3: TdxLayoutItem
            AutoAligns = [aaVertical]
            AlignHorz = ahRight
            Caption = 'Hasta'
            Control = deHasta
            ControlOptions.ShowBorder = False
          end
        end
        object lcDialogGroup6: TdxLayoutGroup
          ShowCaption = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object lcDialogGroup5: TdxLayoutGroup
            AutoAligns = [aaVertical]
            AlignHorz = ahClient
            Caption = 'Datos Maestros'
            object lcDialogItem5: TdxLayoutItem
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              Caption = 'cxCheckGroup1'
              ShowCaption = False
              Control = cgMaestros
              ControlOptions.ShowBorder = False
            end
          end
          object lcDialogGroup3: TdxLayoutGroup
            Caption = 'Documentos a Excluir'
            object lcDialogItem2: TdxLayoutItem
              Control = pcDocumentos
              ControlOptions.ShowBorder = False
            end
          end
        end
      end
    end
  end
  object qrCias: TABSQuery
    CurrentVersion = '5.04 '
    DatabaseName = 'PymeCoop'
    InMemory = False
    ReadOnly = True
    SQL.Strings = (
      'Select *'
      '  from Sis_BasesDeDatos'
      ' WHERE Descripcion <> :pNombre'
      'ORDER by Descripcion')
    Left = 176
    Top = 180
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pNombre'
        ParamType = ptUnknown
      end>
  end
  object dsCias: TDataSource
    DataSet = qrCias
    Left = 236
    Top = 192
  end
  object conDest: TADOConnection
    IsolationLevel = ilReadUncommitted
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 316
    Top = 164
  end
  object adoCmd: TADOCommand
    Connection = conDest
    Parameters = <>
    Left = 312
    Top = 232
  end
  object strUpdInventSum: TJvStrHolder
    Capacity = 28
    Macros = <>
    Left = 384
    Top = 104
    InternalVer = 1
    StrData = (
      ''
      '494e5345525420494e544f204976526573756d656e'
      
        '202020202020202020202020202020202020202020202850726f647563746f49' +
        '442c20497644696d49442c2043616e7469646164506f7374656164612c205661' +
        '6c6f72506f73746561646f2c20456e50656469646f2c2052657365727661646f' +
        '2c2053656c656363696f6e61646f2c20456e7472656761646f2c205065646964' +
        '6f2c20417272697661646f2c20526563696269646f2c20526567697374726164' +
        '6f2c20'
      
        '20202020202020202020202020202020202020202020446973706f6e69626c65' +
        '2c20446973706f6e69626c6546697369636f2c204365727261646f2c20436572' +
        '7261646f43616e746964616429'
      
        '53454c454354202020202049765472616e73616363696f6e65732e50726f6475' +
        '63746f49442c20497644696d656e73696f6e65735f312e497644696d49442c20' +
        '53554d2849765472616e73616363696f6e65732e43616e746964616429204153' +
        '2045787072312c2053554d2849765472616e73616363696f6e65732e436f7374' +
        '6f546f74616c292041532045787072342c20'
      
        '2020202020202020202020202020202020202020202030204153204578707232' +
        '2c20302041532045787072332c20302041532045787072352c20302041532045' +
        '787072362c20302041532045787072372c20302041532045787072382c203020' +
        '41532045787072392c2030204153204578707231302c2053554d284976547261' +
        '6e73616363696f6e65732e43616e746964616429204153204578707231312c20'
      
        '2020202020202020202020202020202020202020202053554d2849765472616e' +
        '73616363696f6e65732e43616e7469646164292c203020415320457870723132' +
        '2c203020415320457870723133'
      
        '46524f4d20202020202020202049765472616e73616363696f6e657320494e4e' +
        '4552204a4f494e'
      
        '20202020202020202020202020202020202020202020497644696d656e73696f' +
        '6e6573204f4e2049765472616e73616363696f6e65732e496e76656e7444696d' +
        '4944203d20497644696d656e73696f6e65732e497644696d494420494e4e4552' +
        '204a4f494e'
      
        '20202020202020202020202020202020202020202020497644696d656e73696f' +
        '6e657320415320497644696d656e73696f6e65735f31204f4e20497644696d65' +
        '6e73696f6e65732e436f6e6669674944203d20497644696d656e73696f6e6573' +
        '5f312e436f6e666967494420414e4420'
      
        '20202020202020202020202020202020202020202020497644696d656e73696f' +
        '6e65732e54616c6c614944203d20497644696d656e73696f6e65735f312e5461' +
        '6c6c61494420414e4420497644696d656e73696f6e65732e436f6c6f72494420' +
        '3d20497644696d656e73696f6e65735f312e436f6c6f72494420414e4420'
      
        '20202020202020202020202020202020202020202020497644696d656e73696f' +
        '6e65732e416c6d6163656e203d20497644696d656e73696f6e65735f312e416c' +
        '6d6163656e'
      
        '5748455245202020202028497644696d656e73696f6e65735f312e5562696361' +
        '63696f6e203d2027272920414e442028497644696d656e73696f6e65735f312e' +
        '4c6f7465203d2027272920414e442028497644696d656e73696f6e65735f312e' +
        '53657269616c203d20272729'
      
        '47524f55502042592049765472616e73616363696f6e65732e50726f64756374' +
        '6f49442c20497644696d656e73696f6e65735f312e497644696d4944')
  end
  object fsCompanyExport: TJvFormStorage
    AppStorage = XmlCompanyExport
    AppStoragePath = 'CompanyExport\'
    Options = []
    StoredProps.Strings = (
      'deDesde.Date'
      'deHasta.Date'
      'memCompras.Lines'
      'memFinanzas.Lines'
      'memInventario.Lines'
      'memServicios.Lines'
      'memVentas.Lines'
      'cgMaestros.EditValue'
      'lcEmpresas.EditValue')
    StoredValues = <>
    Left = 400
    Top = 188
  end
  object XmlCompanyExport: TJvAppXMLFileStorage
    StorageOptions.BooleanStringTrueValues = 'TRUE, YES, Y'
    StorageOptions.BooleanStringFalseValues = 'FALSE, NO, N'
    StorageOptions.AutoEncodeValue = False
    StorageOptions.AutoEncodeEntity = False
    StorageOptions.AutoIndent = True
    StorageOptions.InvalidCharReplacement = '_'
    AutoFlush = True
    AutoReload = True
    FileName = 'CompanyExport.xml'
    RootNodeName = 'Configuration'
    SubStorages = <>
    Left = 212
    Top = 252
  end
  object strUpdMaestros: TJvStrHolder
    Capacity = 8
    Macros = <
      item
        Name = 'Dest_Table'
      end
      item
        Name = 'Source_Table'
      end
      item
        Name = 'Key_Field'
      end>
    Left = 264
    Top = 128
    InternalVer = 1
    StrData = (
      ''
      '696e7365727420696e746f2025446573745f5461626c65'
      '2053656c656374202a'
      
        '2066726f6d2025536f757263655f5461626c652073204c454654204f55544552' +
        '204a4f494e2025446573745f5461626c652064204f4e20'
      
        '202020202020732e254b65795f4669656c64203d20642e254b65795f4669656c' +
        '64'
      '20776865726520642e254b65795f4669656c64206973206e756c6c')
  end
end
