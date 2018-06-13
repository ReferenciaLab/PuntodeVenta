inherited FrmPuntoVentaNCF: TFrmPuntoVentaNCF
  Caption = 'FrmPuntoVentaNCF'
  ClientHeight = 637
  ClientWidth = 945
  Position = poDesigned
  ExplicitWidth = 961
  ExplicitHeight = 675
  PixelsPerInch = 96
  TextHeight = 13
  inherited JvEnterAsTab1: TJvEnterAsTab
    Left = 280
    Top = 284
    ExplicitLeft = 280
    ExplicitTop = 284
  end
  inherited pnCaption: TPanel
    Width = 945
    ExplicitWidth = 945
  end
  object GroupBox1: TGroupBox [2]
    Left = 8
    Top = 48
    Width = 457
    Height = 185
    Caption = 'Informaci'#243'n del Cliente'
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 32
      Width = 56
      Height = 13
      Caption = 'Tipo Cliente'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 8
      Top = 59
      Width = 43
      Height = 13
      Caption = 'ClienteId'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 8
      Top = 86
      Width = 37
      Height = 13
      Caption = 'Nombre'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 8
      Top = 113
      Width = 38
      Height = 13
      Caption = 'Moneda'
      FocusControl = DBEdit4
    end
    object F: TLabel
      Left = 8
      Top = 140
      Width = 72
      Height = 13
      Caption = 'Forma de Pago'
      FocusControl = DBEdit5
    end
    object DBEdit1: TDBEdit
      Left = 87
      Top = 24
      Width = 310
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'DesGrupo'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 86
      Top = 51
      Width = 134
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'CLIENTEID'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 86
      Top = 78
      Width = 311
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'NOMBRE'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 86
      Top = 105
      Width = 43
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'MONEDAID'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 86
      Top = 132
      Width = 311
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'FORMA_PAGO'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 4
    end
  end
  object GroupBox2: TGroupBox [3]
    Left = 471
    Top = 48
    Width = 466
    Height = 184
    Caption = 'Informaci'#243'n de la Factura'
    TabOrder = 2
    object Label5: TLabel
      Left = 11
      Top = 24
      Width = 29
      Height = 13
      Caption = 'Fecha'
    end
    object Label6: TLabel
      Left = 11
      Top = 51
      Width = 20
      Height = 13
      Caption = 'NCF'
    end
    object Label7: TLabel
      Left = 11
      Top = 78
      Width = 55
      Height = 13
      Caption = 'Comentario'
    end
    object cxTextEdit2: TcxTextEdit
      Left = 72
      Top = 51
      TabOrder = 0
      Width = 273
    end
    object cxMemo1: TcxMemo
      Left = 72
      Top = 78
      TabOrder = 1
      Height = 89
      Width = 273
    end
    object cxDateEdit1: TcxDateEdit
      Left = 72
      Top = 24
      TabOrder = 2
      Width = 153
    end
  end
  object Panel1: TPanel [4]
    Left = 3
    Top = 580
    Width = 934
    Height = 53
    BevelInner = bvLowered
    BorderStyle = bsSingle
    TabOrder = 3
    object btNueva: TcxButton
      Left = 11
      Top = 11
      Width = 123
      Height = 30
      Hint = 'Nueva Entrada '
      Caption = 'Buscar Cliente'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = btNuevaClick
    end
    object cxButton1: TcxButton
      Left = 140
      Top = 11
      Width = 123
      Height = 30
      Hint = 'Nueva Entrada '
      Caption = 'Buscar Entrada'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 279
      Top = 11
      Width = 123
      Height = 30
      Hint = 'Nueva Entrada '
      Caption = 'Procesar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object cxButton3: TcxButton
      Left = 408
      Top = 11
      Width = 123
      Height = 30
      Hint = 'Nueva Entrada '
      Caption = 'Limpiar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
    end
    object cxButton4: TcxButton
      Left = 537
      Top = 11
      Width = 123
      Height = 30
      Hint = 'Nueva Entrada '
      Caption = 'Imprimir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
    end
  end
  object cxRadioGroup1: TcxRadioGroup [5]
    Left = 8
    Top = 239
    Caption = 'Entradas Seleccionadas'
    Properties.Items = <>
    TabOrder = 4
    Height = 335
    Width = 929
  end
  object cgEntradas: TcxGrid [6]
    Left = 8
    Top = 272
    Width = 921
    Height = 289
    TabOrder = 5
    object cgEntradasDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DSentradas
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cgEntradasDBTableView1Column1: TcxGridDBColumn
        DataBinding.FieldName = 'ENTRADAID'
        Width = 99
      end
      object cgEntradasDBTableView1Column2: TcxGridDBColumn
        DataBinding.FieldName = 'FECHA'
        Width = 99
      end
      object cgEntradasDBTableView1Column3: TcxGridDBColumn
        Caption = 'PACIENTE'
        DataBinding.FieldName = 'NOMBREPACIENTE'
        Width = 257
      end
      object cgEntradasDBTableView1Column4: TcxGridDBColumn
        DataBinding.FieldName = 'NETO'
        Options.Editing = False
        Width = 103
      end
      object cgEntradasDBTableView1Column5: TcxGridDBColumn
        DataBinding.FieldName = 'DESCUENTO'
        Width = 126
      end
      object cgEntradasDBTableView1Column6: TcxGridDBColumn
        Caption = 'PAGADO'
        DataBinding.FieldName = 'TOTALPAGADO'
        Width = 143
      end
    end
    object cgEntradasLevel1: TcxGridLevel
      GridView = cgEntradasDBTableView1
    end
  end
  object PanelClientes: TPanel [7]
    Left = 223
    Top = 145
    Width = 617
    Height = 392
    Color = 16776176
    TabOrder = 6
    Visible = False
    object cxGroupBox1: TcxGroupBox
      Left = 0
      Top = 0
      ParentColor = False
      Style.Color = clNavy
      TabOrder = 0
      Height = 46
      Width = 615
      object Label8: TLabel
        Left = 24
        Top = -13
        Width = 147
        Height = 14
        Caption = 'BUSQUEDA DE CLIENTES'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object cxTextEdit1: TcxTextEdit
      Left = 78
      Top = 57
      TabOrder = 1
      OnKeyPress = cxTextEdit1KeyPress
      Width = 121
    end
    object cxTextEdit3: TcxTextEdit
      Left = 78
      Top = 84
      TabOrder = 2
      Width = 315
    end
    object cxLabel1: TcxLabel
      Left = 24
      Top = 62
      Caption = 'Codigo'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object cxLabel2: TcxLabel
      Left = 24
      Top = 88
      Caption = 'Nombre'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object DBGrid1: TDBGrid
      Left = 11
      Top = 128
      Width = 586
      Height = 217
      Color = clInfoBk
      DataSource = DSBuscarCliente
      FixedColor = clTeal
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 5
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'CLIENTEID'
          Title.Caption = 'Codigo'
          Width = 88
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMBRE'
          Title.Caption = 'Nombre'
          Width = 235
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DesGrupo'
          Title.Caption = 'Tipo'
          Width = 159
          Visible = True
        end>
    end
    object cxButton5: TcxButton
      Left = 424
      Top = 351
      Width = 75
      Height = 25
      Caption = 'Aceptar'
      TabOrder = 6
      OnClick = cxButton5Click
    end
    object cxButton6: TcxButton
      Left = 528
      Top = 351
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 7
      OnClick = cxButton6Click
    end
    object cxButton7: TcxButton
      Left = 264
      Top = 53
      Width = 129
      Height = 25
      Caption = 'Buscar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      OnClick = cxButton7Click
    end
  end
  inherited formStorage: TJvFormStorage
    Left = 96
    Top = 378
  end
  inherited alEdit: TActionList
    Left = 76
    Top = 448
  end
  inherited pmCustom: TPopupMenu
    Left = 76
    Top = 500
  end
  object Qclientes: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CLIENTE'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      
        'Select  A.CLIENTEID, A.NOMBRE, A.TIPOCLIENTE, A.FORMAPAGO, A.MON' +
        'EDAID, B.DESCRIPCION As DesGrupo, C.DESCRIPCION AS FORMA_PAGO'
      '   from PTCLIENTE A, PTGRUPOCLIENTE B, PTFORMADEPAGO C'
      '   WHERE A.GRUPOCLIENTE = B.GRUPOCLIENTE'
      '   AND A.FORMAPAGO = C.FORMADEPAGOID'
      '   AND A.GRUPOCLIENTE IN('#39'7'#39','#39'9'#39','#39'10'#39','#39'12'#39','#39'14'#39','#39'15'#39')'
      '  AND A.CLIENTEID =:CLIENTE')
    Left = 32
    Top = 384
    object QclientesCLIENTEID: TStringField
      FieldName = 'CLIENTEID'
      Size = 10
    end
    object QclientesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 80
    end
    object QclientesTIPOCLIENTE: TStringField
      FieldName = 'TIPOCLIENTE'
      Size = 5
    end
    object QclientesFORMAPAGO: TStringField
      FieldName = 'FORMAPAGO'
      Size = 10
    end
    object QclientesMONEDAID: TStringField
      FieldName = 'MONEDAID'
      Size = 3
    end
    object QclientesDesGrupo: TStringField
      FieldName = 'DesGrupo'
      Size = 50
    end
    object QclientesFORMA_PAGO: TStringField
      FieldName = 'FORMA_PAGO'
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = Qclientes
    Left = 88
    Top = 328
  end
  object cxEditStyleController1: TcxEditStyleController
    Left = 848
    Top = 368
  end
  object QbuscarClientes: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'Select TOP 50 A.CLIENTEID, A.NOMBRE, A.TIPOCLIENTE, A.FORMAPAGO,' +
        ' A.MONEDAID, B.DESCRIPCION As DesGrupo, C.DESCRIPCION AS FORMA_P' +
        'AGO'
      '   from PTCLIENTE A, PTGRUPOCLIENTE B, PTFORMADEPAGO C'
      '   WHERE A.GRUPOCLIENTE = B.GRUPOCLIENTE'
      '   AND A.FORMAPAGO = C.FORMADEPAGOID'
      '   AND A.GRUPOCLIENTE IN('#39'7'#39','#39'9'#39','#39'10'#39','#39'12'#39','#39'14'#39','#39'15'#39')')
    Left = 344
    Top = 344
  end
  object DSBuscarCliente: TDataSource
    DataSet = QbuscarClientes
    Left = 472
    Top = 328
  end
  object Qentradas: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      ''
      'select  * from #PTENTRADAPACIENTETMP')
    Left = 864
    Top = 64
  end
  object Qtemporal: TADOQuery
    Connection = DM.DataBase
    Parameters = <>
    SQL.Strings = (
      '   IF OBject_id ('#39'tempdb..#PTENTRADAPACIENTETMP'#39') is not null'
      '     begin'
      #9'   drop table #PTENTRADAPACIENTETMP'
      
        #9'  -- select top 5 * INTO #PTENTRADAPACIENTETMP from PTENTRADAPA' +
        'CIENTE'
      '      end '
      #9
      
        #9'   select top 0 * INTO #PTENTRADAPACIENTETMP from PTENTRADAPACI' +
        'ENTE')
    Left = 872
    Top = 168
  end
  object DSentradas: TDataSource
    DataSet = Qentradas
    Left = 816
    Top = 64
  end
end
