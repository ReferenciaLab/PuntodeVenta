inherited frmTransferenciaPOS_SAP: TfrmTransferenciaPOS_SAP
  Caption = 'Detalles del Pedido de Venta'
  ClientHeight = 588
  ClientWidth = 970
  KeyPreview = True
  OnClose = nil
  OnPaint = nil
  OnShow = FormShow
  ExplicitWidth = 986
  ExplicitHeight = 626
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCaption: TPanel
    Width = 970
    Height = 3
    ExplicitWidth = 970
    ExplicitHeight = 3
  end
  object dxLayoutControl1: TdxLayoutControl [2]
    Left = 0
    Top = 3
    Width = 970
    Height = 585
    Align = alClient
    TabOrder = 1
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmAppActions.lnfNoBorder
    object cxPageControl1: TcxPageControl
      Left = 0
      Top = 0
      Width = 289
      Height = 193
      ActivePage = cxTabSheet1
      HideTabs = True
      TabOrder = 0
      ClientRectBottom = 193
      ClientRectRight = 289
      ClientRectTop = 0
      object cxTabSheet1: TcxTabSheet
        Caption = 'cxTabSheet1'
        ImageIndex = 0
        ExplicitWidth = 826
        ExplicitHeight = 585
        object dxLayoutControl2: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 289
          Height = 193
          Align = alClient
          TabOrder = 0
          AutoContentSizes = [acsWidth, acsHeight]
          LookAndFeel = dmAppActions.lnfWeb
          ExplicitWidth = 826
          ExplicitHeight = 585
          object cxGrid1: TcxGrid
            Left = 23
            Top = 77
            Width = 824
            Height = 300
            TabOrder = 1
            LookAndFeel.Kind = lfUltraFlat
            LookAndFeel.NativeStyle = True
            object cxGrid1DBTableView1: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = dsDatos
              DataController.KeyFieldNames = 'RECID'
              DataController.Summary.DefaultGroupSummaryItems = <
                item
                  Format = '###,###,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '###,###,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '###,###,##0.00'
                  Kind = skSum
                  Position = spFooter
                end
                item
                  Format = '###,###,##0.00'
                  Kind = skSum
                  Position = spFooter
                end>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '###,###,##0.00'
                  Kind = skSum
                  FieldName = 'BRUTO'
                end
                item
                  Format = '###,###,##0.00'
                  Kind = skSum
                  FieldName = 'DESCUENTO'
                end
                item
                  Format = '###,###,##0.00'
                  Kind = skSum
                  FieldName = 'SUBTOTAL'
                end
                item
                  Format = '###,###,##0.00'
                  Kind = skSum
                  FieldName = 'NETO'
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnFiltering = False
              OptionsData.Deleting = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              object cxGrid1DBTableView1Seleccionar: TcxGridDBColumn
                DataBinding.FieldName = 'Seleccionar'
                HeaderAlignmentHorz = taRightJustify
                Width = 64
              end
              object cxGrid1DBTableView1Pedido_Venta: TcxGridDBColumn
                Caption = 'Pedido de Ventas'
                DataBinding.FieldName = 'Pedido_Venta'
                HeaderAlignmentHorz = taCenter
                Width = 106
              end
              object cxGrid1DBTableView1Cuenta_Cliente: TcxGridDBColumn
                Caption = 'Cuenta de Cliente'
                DataBinding.FieldName = 'Cuenta_Cliente'
                Width = 98
              end
              object cxGrid1DBTableView1Nombre: TcxGridDBColumn
                DataBinding.FieldName = 'Nombre'
                HeaderAlignmentHorz = taCenter
                Width = 270
              end
              object cxGrid1DBTableView1Tipo_Pedido: TcxGridDBColumn
                Caption = 'Tipo de Pedido'
                DataBinding.FieldName = 'Tipo_Pedido'
                HeaderAlignmentHorz = taCenter
                Width = 101
              end
              object cxGrid1DBTableView1Estado: TcxGridDBColumn
                DataBinding.FieldName = 'Estado'
                HeaderAlignmentHorz = taCenter
                Width = 104
              end
              object cxGrid1DBTableView1MonedaID: TcxGridDBColumn
                DataBinding.FieldName = 'MonedaID'
                Width = 55
              end
            end
            object cxGrid1Level1: TcxGridLevel
              GridView = cxGrid1DBTableView1
            end
          end
          object cxGrid2: TcxGrid
            Left = 23
            Top = 365
            Width = 784
            Height = 202
            TabOrder = 2
            LookAndFeel.Kind = lfUltraFlat
            LookAndFeel.NativeStyle = True
            object cxGrid2DBTableView2: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              NavigatorButtons.Insert.Enabled = False
              NavigatorButtons.Edit.Enabled = False
              DataController.DataSource = dsArticulos
              DataController.KeyFieldNames = 'RECID'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnFiltering = False
              OptionsData.Deleting = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              object cxGrid2DBTableView2PruebaID: TcxGridDBColumn
                Caption = 'C'#243'd. Art'#237'culo'
                DataBinding.FieldName = 'PruebaID'
                HeaderAlignmentHorz = taRightJustify
                Width = 84
              end
              object cxGrid2DBTableView2SucursalID: TcxGridDBColumn
                Caption = 'Sucursal'
                DataBinding.FieldName = 'SucursalID'
                HeaderAlignmentHorz = taCenter
                Width = 57
              end
              object cxGrid2DBTableView2Cantidad: TcxGridDBColumn
                DataBinding.FieldName = 'Cantidad'
                Width = 53
              end
              object cxGrid2DBTableView2Unidad: TcxGridDBColumn
                DataBinding.FieldName = 'Unidad'
                HeaderAlignmentHorz = taCenter
                Width = 47
              end
              object cxGrid2DBTableView2Precio_Unitario: TcxGridDBColumn
                Caption = 'Precio Unitario'
                DataBinding.FieldName = 'Precio_Unitario'
                HeaderAlignmentHorz = taCenter
                Width = 78
              end
              object cxGrid2DBTableView2Descuento: TcxGridDBColumn
                DataBinding.FieldName = 'Descuento'
                HeaderAlignmentHorz = taCenter
                Width = 64
              end
              object cxGrid2DBTableView2Porcentaje_Desc: TcxGridDBColumn
                Caption = '% Desc.'
                DataBinding.FieldName = 'Porcentaje_Desc'
                Width = 51
              end
              object cxGrid2DBTableView2Neto: TcxGridDBColumn
                Caption = 'Importe Neto'
                DataBinding.FieldName = 'Neto'
                HeaderAlignmentHorz = taCenter
                Width = 70
              end
              object cxGrid2DBTableView2Descripcion: TcxGridDBColumn
                Caption = 'Nombre del Art'#237'culo'
                DataBinding.FieldName = 'Descripcion'
                HeaderAlignmentHorz = taCenter
                Width = 147
              end
              object cxGrid2DBTableView2Muestrano: TcxGridDBColumn
                DataBinding.FieldName = 'Muestrano'
                HeaderAlignmentHorz = taCenter
                Width = 61
              end
              object cxGrid2DBTableView2Nota_Debito: TcxGridDBColumn
                DataBinding.FieldName = 'Nota_Debito'
                Width = 70
              end
            end
            object cxGrid2Level1: TcxGridLevel
              GridView = cxGrid2DBTableView2
            end
          end
          object cboEstado: TcxComboBox
            Left = 61
            Top = 36
            Properties.CharCase = ecUpperCase
            Properties.Items.Strings = (
              ''
              'Abierto'
              'Entregado'
              'Facturado'
              'Cancelado')
            Properties.MaxLength = 0
            Properties.OEMConvert = True
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 0
            Width = 150
          end
          object dxLayoutControl2Group_Root: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutControl2Group1: TdxLayoutGroup
              Caption = 'Filtro'
              LayoutDirection = ldHorizontal
              object dxLayoutControl2Item12: TdxLayoutItem
                Caption = 'Estado'
                Control = cboEstado
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutControl2Group2: TdxLayoutGroup
              AutoAligns = [aaHorizontal]
              AlignVert = avClient
              Caption = 'Lineas'
              ShowCaption = False
              object dxLayoutControl2Item4: TdxLayoutItem
                AutoAligns = [aaHorizontal]
                AlignVert = avClient
                Caption = 'cxGrid1'
                ShowCaption = False
                Control = cxGrid1
                ControlOptions.ShowBorder = False
              end
            end
            object dxLayoutControl2Group3: TdxLayoutGroup
              Caption = 'Lineas'
              LayoutDirection = ldHorizontal
              object dxLayoutControl2Group4: TdxLayoutGroup
                AutoAligns = [aaVertical]
                AlignHorz = ahClient
                Caption = 'Comentario'
                ShowCaption = False
                ShowBorder = False
                object dxLayoutControl2Item9: TdxLayoutItem
                  Control = cxGrid2
                  ControlOptions.ShowBorder = False
                end
              end
            end
          end
        end
      end
    end
    object BtTransferir: TcxButton
      Left = 838
      Top = 7
      Width = 116
      Height = 25
      Hint = 'Transferir Ordenes de Ventas a SAP'
      Caption = 'F9 = &Transferir SAP'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BtTransferirClick
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = True
    end
    object btEliminar: TcxButton
      Left = 838
      Top = 38
      Width = 120
      Height = 25
      Hint = 'Transferir Ordenes de Ventas a SAP'
      Caption = 'F8 = &Eliminar Pedido'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = BtTransferirClick
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = True
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      object dxLayoutControl1Group1: TdxLayoutGroup
        AutoAligns = []
        AlignHorz = ahClient
        AlignVert = avClient
        Caption = 'dgDatos'
        ShowCaption = False
        ShowBorder = False
        object dxLayoutControl1Item1: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avClient
          Caption = 'cxPageControl1'
          ShowCaption = False
          Control = cxPageControl1
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Group2: TdxLayoutGroup
        AutoAligns = []
        AlignHorz = ahRight
        AlignVert = avClient
        Caption = 'dgBotones'
        LookAndFeel = dmAppActions.lnfButtonGroup
        ShowCaption = False
        object dxLayoutControl1Item4: TdxLayoutItem
          Caption = 'cxButton3'
          ShowCaption = False
          Control = BtTransferir
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item2: TdxLayoutItem
          Caption = 'New Item'
          ShowCaption = False
          Control = btEliminar
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  inherited formStorage: TJvFormStorage
    Left = 862
    Top = 109
  end
  inherited alEdit: TActionList
    Left = 862
    Top = 78
  end
  inherited pmCustom: TPopupMenu
    Left = 913
    Top = 78
  end
  inherited cxIntl1: TcxIntl
    Left = 888
    Top = 244
  end
  object qrEntradaPaciente: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    AfterScroll = qrEntradaPacienteAfterScroll
    OnCalcFields = qrEntradaPacienteCalcFields
    Parameters = <
      item
        Name = 'rec'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM PTEntradaPacienteClinica'
      'WHERE recid = :rec'
      'AND DataAreaId = '#39'ldr'#39
      'ORDER BY RecId')
    Left = 862
    Top = 156
    object qrEntradaPacienteENTRADAID: TStringField
      FieldName = 'ENTRADAID'
    end
    object qrEntradaPacienteFECHA: TDateTimeField
      FieldName = 'FECHA'
    end
    object qrEntradaPacienteHORAENTRADA: TStringField
      FieldName = 'HORAENTRADA'
    end
    object qrEntradaPacienteCLIENTEID: TStringField
      FieldName = 'CLIENTEID'
      Size = 10
    end
    object qrEntradaPacienteDOCTORID: TStringField
      FieldName = 'DOCTORID'
      Size = 10
    end
    object qrEntradaPacienteENCLINICA: TIntegerField
      FieldName = 'ENCLINICA'
    end
    object qrEntradaPacienteRECORDCLINICA: TStringField
      FieldName = 'RECORDCLINICA'
    end
    object qrEntradaPacienteNUMEROHABITACION: TStringField
      FieldName = 'NUMEROHABITACION'
    end
    object qrEntradaPacienteFECHAENTRADA: TDateTimeField
      FieldName = 'FECHAENTRADA'
    end
    object qrEntradaPacienteFECHADEALTA: TDateTimeField
      FieldName = 'FECHADEALTA'
    end
    object qrEntradaPacienteRESULTADOPACIENTE: TIntegerField
      FieldName = 'RESULTADOPACIENTE'
    end
    object qrEntradaPacienteRESULTADODOCTOR: TIntegerField
      FieldName = 'RESULTADODOCTOR'
    end
    object qrEntradaPacienteFECHAPROMETIDA: TDateTimeField
      FieldName = 'FECHAPROMETIDA'
    end
    object qrEntradaPacienteHORAPROMETIDA: TStringField
      FieldName = 'HORAPROMETIDA'
    end
    object qrEntradaPacienteFLEBOTOMISTAID: TStringField
      FieldName = 'FLEBOTOMISTAID'
      Size = 10
    end
    object qrEntradaPacientePROYECTOID: TStringField
      FieldName = 'PROYECTOID'
      Size = 10
    end
    object qrEntradaPacienteRECORDID: TIntegerField
      FieldName = 'RECORDID'
    end
    object qrEntradaPacienteBRUTO: TBCDField
      FieldName = 'BRUTO'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDESCUENTO: TBCDField
      FieldName = 'DESCUENTO'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteSUBTOTAL: TBCDField
      FieldName = 'SUBTOTAL'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteNETO: TBCDField
      FieldName = 'NETO'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteTOTALPAGADO: TBCDField
      FieldName = 'TOTALPAGADO'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteCOBERTURAPORC: TBCDField
      FieldName = 'COBERTURAPORC'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteCOBERTURASEGURO: TBCDField
      FieldName = 'COBERTURASEGURO'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteCOBERTURAVALOR: TBCDField
      FieldName = 'COBERTURAVALOR'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDESCUENTOPORC: TBCDField
      FieldName = 'DESCUENTOPORC'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDESCUENTOVALOR: TBCDField
      FieldName = 'DESCUENTOVALOR'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDESCUENTOBONO: TBCDField
      FieldName = 'DESCUENTOBONO'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteTotalPendiente: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TotalPendiente'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Calculated = True
    end
    object qrEntradaPacienteNOMBREPACIENTE: TStringField
      FieldName = 'NOMBREPACIENTE'
      Size = 80
    end
    object qrEntradaPacienteTELEFONOS: TStringField
      FieldName = 'TELEFONOS'
    end
    object qrEntradaPacienteTELEFONO2: TStringField
      FieldName = 'TELEFONO2'
    end
    object qrEntradaPacienteEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object qrEntradaPacienteCLIENTENOMBRE: TStringField
      FieldName = 'CLIENTENOMBRE'
      Size = 80
    end
    object qrEntradaPacienteSUCURSALID: TStringField
      FieldName = 'SUCURSALID'
      Size = 10
    end
    object qrEntradaPacienteUSERID: TStringField
      FieldName = 'USERID'
      Size = 10
    end
    object qrEntradaPacienteCOBROID: TStringField
      FieldName = 'COBROID'
      Size = 10
    end
    object qrEntradaPacientePRIORIDAD: TIntegerField
      FieldName = 'PRIORIDAD'
    end
    object qrEntradaPacienteFAX: TStringField
      FieldName = 'FAX'
    end
    object qrEntradaPacienteTIPODOCUMENTO: TIntegerField
      FieldName = 'TIPODOCUMENTO'
    end
    object qrEntradaPacienteORIGEN: TStringField
      FieldName = 'ORIGEN'
      Size = 10
    end
    object qrEntradaPacienteAPROBACIONNO: TStringField
      FieldName = 'APROBACIONNO'
    end
    object qrEntradaPacienteAPROBACIONPOR: TStringField
      FieldName = 'APROBACIONPOR'
      Size = 10
    end
    object qrEntradaPacienteCOBERTURARECHAZADA: TIntegerField
      FieldName = 'COBERTURARECHAZADA'
    end
    object qrEntradaPacienteCOBERTURACONFIRMADA: TIntegerField
      FieldName = 'COBERTURACONFIRMADA'
    end
    object qrEntradaPacienteFECHAASEGURADORA: TDateTimeField
      FieldName = 'FECHAASEGURADORA'
    end
    object qrEntradaPacienteMUESTRANO: TStringField
      FieldName = 'MUESTRANO'
    end
    object qrEntradaPacienteMONEDAID: TStringField
      FieldName = 'MONEDAID'
      Size = 3
    end
    object qrEntradaPacienteCOBERTURAEXPPORC: TIntegerField
      FieldName = 'COBERTURAEXPPORC'
    end
    object qrEntradaPacienteEDADPACIENTE: TIntegerField
      FieldName = 'EDADPACIENTE'
    end
    object qrEntradaPacienteSEXO: TIntegerField
      FieldName = 'SEXO'
    end
    object qrEntradaPacienteNOMBREDOCTOR: TStringField
      FieldName = 'NOMBREDOCTOR'
      Size = 80
    end
    object qrEntradaPacientePUBLICARINTERNET: TIntegerField
      FieldName = 'PUBLICARINTERNET'
    end
    object qrEntradaPacienteCARNET: TStringField
      FieldName = 'CARNET'
    end
    object qrEntradaPacientePUBLICARINTERNETDOCTOR: TIntegerField
      FieldName = 'PUBLICARINTERNETDOCTOR'
    end
    object qrEntradaPacienteCUADREGLOBAL: TStringField
      FieldName = 'CUADREGLOBAL'
    end
    object qrEntradaPacienteCUADREUSUARIO: TStringField
      FieldName = 'CUADREUSUARIO'
    end
    object qrEntradaPacienteDESCAUTORIZADOPOR: TStringField
      FieldName = 'DESCAUTORIZADOPOR'
      Size = 10
    end
    object qrEntradaPacienteGASTOSVARIOS: TBCDField
      FieldName = 'GASTOSVARIOS'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteNOAS400: TIntegerField
      FieldName = 'NOAS400'
    end
    object qrEntradaPacienteNOAXAPTA: TIntegerField
      FieldName = 'NOAXAPTA'
    end
    object qrEntradaPacienteNOFACTURA: TIntegerField
      FieldName = 'NOFACTURA'
    end
    object qrEntradaPacienteFACTEXTERIOR: TIntegerField
      FieldName = 'FACTEXTERIOR'
    end
    object qrEntradaPacienteHOLD: TIntegerField
      FieldName = 'HOLD'
    end
    object qrEntradaPacienteREPMUESTRA: TIntegerField
      FieldName = 'REPMUESTRA'
    end
    object qrEntradaPacienteENTRADAIDANT: TStringField
      FieldName = 'ENTRADAIDANT'
    end
    object qrEntradaPacienteTIPOENTRADA: TStringField
      FieldName = 'TIPOENTRADA'
      Size = 2
    end
    object qrEntradaPacienteFORMADEPAGO: TStringField
      FieldName = 'FORMADEPAGO'
    end
    object qrEntradaPacienteDESCUENTOCARD: TStringField
      FieldName = 'DESCUENTOCARD'
      Size = 30
    end
    object qrEntradaPacienteDESCUENTOTEXTO: TStringField
      FieldName = 'DESCUENTOTEXTO'
      Size = 30
    end
    object qrEntradaPacienteACUERDOPROPIO: TIntegerField
      FieldName = 'ACUERDOPROPIO'
    end
    object qrEntradaPacienteCLIENTEPADRE: TStringField
      FieldName = 'CLIENTEPADRE'
      Size = 10
    end
    object qrEntradaPacienteDESCUENTOPLANID: TStringField
      FieldName = 'DESCUENTOPLANID'
      Size = 10
    end
    object qrEntradaPacienteFECHAREGISTRO: TDateTimeField
      FieldName = 'FECHAREGISTRO'
    end
    object qrEntradaPacienteHORAREGISTRO: TStringField
      FieldName = 'HORAREGISTRO'
    end
    object qrEntradaPacienteTASA: TBCDField
      FieldName = 'TASA'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteESTATUS: TIntegerField
      FieldName = 'ESTATUS'
    end
    object qrEntradaPacienteTIPOCLIENTEAS400: TIntegerField
      FieldName = 'TIPOCLIENTEAS400'
    end
    object qrEntradaPacienteCLASECREDITO: TStringField
      FieldName = 'CLASECREDITO'
      Size = 5
    end
    object qrEntradaPacienteCARNETNUMERO: TStringField
      FieldName = 'CARNETNUMERO'
      Size = 10
    end
    object qrEntradaPacienteCLIENTEPADREAXAPTA: TStringField
      FieldName = 'CLIENTEPADREAXAPTA'
      Size = 10
    end
    object qrEntradaPacientePACIENTEIDAXAPTA: TStringField
      FieldName = 'PACIENTEIDAXAPTA'
      Size = 10
    end
    object qrEntradaPacienteCLIENTEIDAXAPTA: TStringField
      FieldName = 'CLIENTEIDAXAPTA'
      Size = 10
    end
    object qrEntradaPacienteDOCTORIDAXAPTA: TStringField
      FieldName = 'DOCTORIDAXAPTA'
      Size = 10
    end
    object qrEntradaPacienteDATAAREAID: TStringField
      FieldName = 'DATAAREAID'
      Size = 3
    end
    object qrEntradaPacienteRECID: TIntegerField
      FieldName = 'RECID'
    end
    object qrEntradaPacienteNOTA: TStringField
      FieldName = 'NOTA'
      Size = 255
    end
    object qrEntradaPacienteDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 255
    end
    object qrEntradaPacienteNCFTYPEID: TStringField
      FieldName = 'NCFTYPEID'
      Size = 10
    end
    object qrEntradaPacienteNCFID: TStringField
      FieldName = 'NCFID'
      Size = 19
    end
    object qrEntradaPacienteNCFNAME: TStringField
      FieldName = 'NCFNAME'
      Size = 80
    end
    object qrEntradaPacienteCUADRADO: TIntegerField
      FieldName = 'CUADRADO'
    end
    object qrEntradaPacienteTRANSFERIDO: TIntegerField
      FieldName = 'TRANSFERIDO'
    end
    object qrEntradaPacienteSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object qrEntradaPacienteNUMEROINTERNET: TIntegerField
      FieldName = 'NUMEROINTERNET'
    end
    object qrEntradaPacienteRESULTADOCLIENTE: TIntegerField
      FieldName = 'RESULTADOCLIENTE'
    end
    object qrEntradaPacientePUBLICARINTERNETCLIENTE: TIntegerField
      FieldName = 'PUBLICARINTERNETCLIENTE'
    end
    object qrEntradaPacienteCOBERTURAPRECONFIRMADA: TIntegerField
      FieldName = 'COBERTURAPRECONFIRMADA'
    end
    object qrEntradaPacienteCOBERTURAMONTOPRECONFIRMADO: TBCDField
      FieldName = 'COBERTURAMONTOPRECONFIRMADO'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacientePOLIZAID: TStringField
      FieldName = 'POLIZAID'
      Size = 10
    end
    object qrEntradaPacientePACIENTEID: TStringField
      FieldName = 'PACIENTEID'
      Size = 10
    end
    object qrEntradaPacienteTRANSFERENCIA: TStringField
      FieldName = 'TRANSFERENCIA'
      Size = 10
    end
    object qrEntradaPacienteGRUPOPRECIO: TStringField
      FieldName = 'GRUPOPRECIO'
      Size = 10
    end
    object qrEntradaPacienteGRUPODESCUENTOLINEA: TStringField
      FieldName = 'GRUPODESCUENTOLINEA'
      Size = 10
    end
    object qrEntradaPacienteGRUPODESCUENTOTOTAL: TStringField
      FieldName = 'GRUPODESCUENTOTOTAL'
      Size = 10
    end
    object qrEntradaPacienteFROM_CLINICA: TIntegerField
      FieldName = 'FROM_CLINICA'
    end
    object qrEntradaPacienteREFRECID_POS: TIntegerField
      FieldName = 'REFRECID_POS'
    end
    object qrEntradaPacienteENTRADAID_POS: TStringField
      FieldName = 'ENTRADAID_POS'
    end
    object qrEntradaPacienteMUESTRANO_POS: TStringField
      FieldName = 'MUESTRANO_POS'
    end
    object qrEntradaPacienteESTATUS_CLINICA: TStringField
      FieldName = 'ESTATUS_CLINICA'
      Size = 2
    end
    object qrEntradaPacienteSINPRFILTER: TIntegerField
      FieldName = 'SINPRFILTER'
    end
    object qrEntradaPacienteFECHANACIMIENTO: TDateTimeField
      FieldName = 'FECHANACIMIENTO'
    end
    object qrEntradaPacienteCOD_CASO: TStringField
      FieldName = 'COD_CASO'
      Size = 8
    end
  end
  object dsEntradaPaciente: TDataSource
    AutoEdit = False
    DataSet = qrEntradaPaciente
    Left = 913
    Top = 156
  end
  object qrEntradaPacienteDetalle: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Filtered = True
    Parameters = <
      item
        Name = 'rec'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM PTEntradaPacienteDetalleClinica'
      'WHERE refrecid = :rec'
      'AND DataAreaId = '#39'ldr'#39
      'ORDER BY RecId')
    Left = 862
    Top = 203
    object qrEntradaPacienteDetallePRUEBAID: TStringField
      FieldName = 'PRUEBAID'
    end
    object qrEntradaPacienteDetalleCOMBOPRUEBAID: TStringField
      FieldName = 'COMBOPRUEBAID'
      Size = 10
    end
    object qrEntradaPacienteDetalleCODIGOAUTORIZACION: TStringField
      FieldName = 'CODIGOAUTORIZACION'
    end
    object qrEntradaPacienteDetalleDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 80
    end
    object qrEntradaPacienteDetalleCODIGOCUPID: TStringField
      FieldName = 'CODIGOCUPID'
    end
    object qrEntradaPacienteDetalleMUESTRAANT: TStringField
      FieldName = 'MUESTRAANT'
    end
    object qrEntradaPacienteDetalleCOBERTURAAPLICA: TIntegerField
      FieldName = 'COBERTURAAPLICA'
    end
    object qrEntradaPacienteDetalleDESCRIPCIONCUP: TStringField
      FieldName = 'DESCRIPCIONCUP'
      Size = 80
    end
    object qrEntradaPacienteDetalleREFRECID: TIntegerField
      FieldName = 'REFRECID'
    end
    object qrEntradaPacienteDetalleSECUENCIA: TIntegerField
      FieldName = 'SECUENCIA'
    end
    object qrEntradaPacienteDetalleFLEBOTOMISTAID: TStringField
      FieldName = 'FLEBOTOMISTAID'
      Size = 10
    end
    object qrEntradaPacienteDetalleUNIDADMUESTRA: TStringField
      FieldName = 'UNIDADMUESTRA'
      Size = 10
    end
    object qrEntradaPacienteDetalleSECUENCIAACT: TIntegerField
      FieldName = 'SECUENCIAACT'
    end
    object qrEntradaPacienteDetallePRECIO: TBCDField
      FieldName = 'PRECIO'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleDESCUENTO: TBCDField
      FieldName = 'DESCUENTO'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleDESCUENTOEXTRA: TBCDField
      FieldName = 'DESCUENTOEXTRA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleTOTALLINEA: TBCDField
      FieldName = 'TOTALLINEA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleTIPOPRUEBA: TStringField
      FieldName = 'TIPOPRUEBA'
      Size = 5
    end
    object qrEntradaPacienteDetalleTIPOAS400: TStringField
      FieldName = 'TIPOAS400'
      Size = 2
    end
    object qrEntradaPacienteDetalleCODIGOAS400: TStringField
      FieldName = 'CODIGOAS400'
    end
    object qrEntradaPacienteDetalleMEDIOAS400: TStringField
      FieldName = 'MEDIOAS400'
      Size = 2
    end
    object qrEntradaPacienteDetalleDESCPCT: TBCDField
      FieldName = 'DESCPCT'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleCOBERTURAESPECIAL: TBCDField
      FieldName = 'COBERTURAESPECIAL'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleCOBERTURAESPECIALPORC: TBCDField
      FieldName = 'COBERTURAESPECIALPORC'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleCOBERTURAAPLICADA: TBCDField
      FieldName = 'COBERTURAAPLICADA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleDESCUENTOAPLICADO: TBCDField
      FieldName = 'DESCUENTOAPLICADO'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleFACTURAR: TIntegerField
      FieldName = 'FACTURAR'
    end
    object qrEntradaPacienteDetalleSELECCIONAR: TIntegerField
      FieldName = 'SELECCIONAR'
    end
    object qrEntradaPacienteDetalleMUESTRANO: TStringField
      FieldName = 'MUESTRANO'
    end
    object qrEntradaPacienteDetalleCOBERTURAEXPPORC: TIntegerField
      FieldName = 'COBERTURAEXPPORC'
    end
    object qrEntradaPacienteDetalleURGENTE: TIntegerField
      FieldName = 'URGENTE'
    end
    object qrEntradaPacienteDetalleREPMUESTRA: TIntegerField
      FieldName = 'REPMUESTRA'
    end
    object qrEntradaPacienteDetalleFECHAENTREGA: TDateTimeField
      FieldName = 'FECHAENTREGA'
    end
    object qrEntradaPacienteDetalleHORAENTREGA: TStringField
      FieldName = 'HORAENTREGA'
    end
    object qrEntradaPacienteDetalleESTATUS: TStringField
      FieldName = 'ESTATUS'
      FixedChar = True
      Size = 2
    end
    object qrEntradaPacienteDetalleDATAAREAID: TStringField
      FieldName = 'DATAAREAID'
      Size = 3
    end
    object qrEntradaPacienteDetalleRECID: TIntegerField
      FieldName = 'RECID'
    end
    object qrEntradaPacienteDetalleCOMENTARIOMUESTRA: TStringField
      FieldName = 'COMENTARIOMUESTRA'
      Size = 255
    end
    object qrEntradaPacienteDetalleCOMENTARIO: TStringField
      FieldName = 'COMENTARIO'
      Size = 255
    end
    object qrEntradaPacienteDetalleDiasProcesamiento: TStringField
      FieldKind = fkCalculated
      FieldName = 'DiasProcesamiento'
      Size = 50
      Calculated = True
    end
    object qrEntradaPacienteDetalleCondMuestra: TStringField
      DisplayWidth = 255
      FieldKind = fkCalculated
      FieldName = 'CondMuestra'
      Size = 50
      Calculated = True
    end
    object qrEntradaPacienteDetalleCondPac: TStringField
      DisplayWidth = 255
      FieldKind = fkCalculated
      FieldName = 'CondPac'
      Size = 50
      Calculated = True
    end
    object qrEntradaPacienteDetalleDiasResultado: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'DiasResultado'
      Calculated = True
    end
    object qrEntradaPacienteDetalleDESCUENTOLINEAAPLICADO: TBCDField
      FieldName = 'DESCUENTOLINEAAPLICADO'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleCUADRADO: TIntegerField
      FieldName = 'CUADRADO'
    end
    object qrEntradaPacienteDetalleTRANSFERIDO: TIntegerField
      FieldName = 'TRANSFERIDO'
    end
    object qrEntradaPacienteDetallePASARAXAPTA: TIntegerField
      FieldName = 'PASARAXAPTA'
    end
    object qrEntradaPacienteDetalleCOMBO: TIntegerField
      FieldName = 'COMBO'
    end
    object qrEntradaPacienteDetalleADICIONAL: TBCDField
      FieldName = 'ADICIONAL'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleREPREALIZADA: TIntegerField
      FieldName = 'REPREALIZADA'
    end
    object qrEntradaPacienteDetalleREPMUESTRANO: TStringField
      FieldName = 'REPMUESTRANO'
    end
    object qrEntradaPacienteDetalleTIENEACUERDOPRECIO: TIntegerField
      FieldName = 'TIENEACUERDOPRECIO'
    end
    object qrEntradaPacienteDetalleTIENEACUERDODESCUENTO: TIntegerField
      FieldName = 'TIENEACUERDODESCUENTO'
    end
    object qrEntradaPacienteDetalleCUADREGLOBAL: TStringField
      FieldName = 'CUADREGLOBAL'
    end
    object qrEntradaPacienteDetalleCUADREUSUARIO: TStringField
      FieldName = 'CUADREUSUARIO'
    end
    object qrEntradaPacienteDetalleEXTERIOR: TIntegerField
      FieldName = 'EXTERIOR'
    end
    object qrEntradaPacienteDetalleLDRDEPARTAMENTOID: TStringField
      FieldName = 'LDRDEPARTAMENTOID'
      Size = 10
    end
    object qrEntradaPacienteDetallePRECIOCOMBO: TBCDField
      FieldName = 'PRECIOCOMBO'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 28
      Size = 12
    end
    object qrEntradaPacienteDetalleFROM_CLINICA: TIntegerField
      FieldName = 'FROM_CLINICA'
    end
    object qrEntradaPacienteDetalleREFRECID_POS: TIntegerField
      FieldName = 'REFRECID_POS'
    end
    object qrEntradaPacienteDetalleENTRADAID_POS: TStringField
      FieldName = 'ENTRADAID_POS'
    end
    object qrEntradaPacienteDetalleMUESTRANO_POS: TStringField
      FieldName = 'MUESTRANO_POS'
    end
    object qrEntradaPacienteDetalleESTATUS_CLINICA: TStringField
      FieldName = 'ESTATUS_CLINICA'
      Size = 2
    end
    object qrEntradaPacienteDetalleSINPRFILTER: TIntegerField
      FieldName = 'SINPRFILTER'
    end
  end
  object dsEntradaPacienteDetalle: TDataSource
    DataSet = qrEntradaPacienteDetalle
    Left = 913
    Top = 203
  end
  object cxGridStyles: TcxStyleRepository
    Left = 913
    Top = 109
    object stGrDatos: TcxStyle
      AssignedValues = [svColor]
      Color = clInfoBk
    end
    object stGrEdit: TcxStyle
    end
  end
  object qrClientes: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM PTCliente'
      'WHERE DataAreaId = '#39'ldr'#39)
    Left = 864
    Top = 298
    object qrClientesCLIENTEID: TStringField
      FieldName = 'CLIENTEID'
      Size = 10
    end
    object qrClientesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 80
    end
    object qrClientesCONTACTO: TStringField
      FieldName = 'CONTACTO'
      Size = 80
    end
    object qrClientesTELEFONO: TStringField
      FieldName = 'TELEFONO'
    end
    object qrClientesFAX: TStringField
      FieldName = 'FAX'
    end
    object qrClientesGRUPOCLIENTE: TStringField
      FieldName = 'GRUPOCLIENTE'
      Size = 10
    end
    object qrClientesINCLUIRPRECIOTICKET: TIntegerField
      FieldName = 'INCLUIRPRECIOTICKET'
    end
    object qrClientesAUTOCONFIRMAR: TIntegerField
      FieldName = 'AUTOCONFIRMAR'
    end
    object qrClientesEMPLEADOID: TStringField
      FieldName = 'EMPLEADOID'
      Size = 10
    end
    object qrClientesCODIGOAXAPTA: TStringField
      FieldName = 'CODIGOAXAPTA'
      Size = 10
    end
    object qrClientesEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object qrClientesDIRECCIONWEB: TStringField
      FieldName = 'DIRECCIONWEB'
      Size = 80
    end
    object qrClientesTELEFONO2: TStringField
      FieldName = 'TELEFONO2'
    end
    object qrClientesMONEDAID: TStringField
      FieldName = 'MONEDAID'
      Size = 3
    end
    object qrClientesIDENTIFICACION: TStringField
      FieldName = 'IDENTIFICACION'
    end
    object qrClientesORIGEN: TIntegerField
      FieldName = 'ORIGEN'
    end
    object qrClientesDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 255
    end
    object qrClientesCIUDADID: TStringField
      FieldName = 'CIUDADID'
      Size = 10
    end
    object qrClientesPRUEBASPORDIA: TIntegerField
      FieldName = 'PRUEBASPORDIA'
    end
    object qrClientesCOBERTURAPORC: TBCDField
      FieldName = 'COBERTURAPORC'
      Precision = 28
      Size = 12
    end
    object qrClientesPRINCIPAL: TStringField
      FieldName = 'PRINCIPAL'
      Size = 10
    end
    object qrClientesENVIORESULTADO: TIntegerField
      FieldName = 'ENVIORESULTADO'
    end
    object qrClientesPUBLICARINTERNET: TIntegerField
      FieldName = 'PUBLICARINTERNET'
    end
    object qrClientesFECHANACIMIENTO: TDateTimeField
      FieldName = 'FECHANACIMIENTO'
    end
    object qrClientesSEGURO: TStringField
      FieldName = 'SEGURO'
      Size = 10
    end
    object qrClientesCARNETNUMERO: TStringField
      FieldName = 'CARNETNUMERO'
      Size = 10
    end
    object qrClientesPOLIZA: TStringField
      FieldName = 'POLIZA'
    end
    object qrClientesCOBRARDIFERENCIA: TIntegerField
      FieldName = 'COBRARDIFERENCIA'
    end
    object qrClientesENVIARFAX: TIntegerField
      FieldName = 'ENVIARFAX'
    end
    object qrClientesACTIVARDESCUENTOS: TIntegerField
      FieldName = 'ACTIVARDESCUENTOS'
    end
    object qrClientesUSARALIASNOMBRE: TIntegerField
      FieldName = 'USARALIASNOMBRE'
    end
    object qrClientesUSARALIASPRUEBAS: TIntegerField
      FieldName = 'USARALIASPRUEBAS'
    end
    object qrClientesSIEMPREINTERNET: TIntegerField
      FieldName = 'SIEMPREINTERNET'
    end
    object qrClientesIMPRIMIRALIASNOMBRE: TIntegerField
      FieldName = 'IMPRIMIRALIASNOMBRE'
    end
    object qrClientesIMPRIMIRALIASPRUEBA: TIntegerField
      FieldName = 'IMPRIMIRALIASPRUEBA'
    end
    object qrClientesIMPRIMIRSOLOTOTALES: TIntegerField
      FieldName = 'IMPRIMIRSOLOTOTALES'
    end
    object qrClientesIMPRIMIRALIASRESULTADOS: TIntegerField
      FieldName = 'IMPRIMIRALIASRESULTADOS'
    end
    object qrClientesUSARACUERDOPROPIO: TIntegerField
      FieldName = 'USARACUERDOPROPIO'
    end
    object qrClientesALIAS: TStringField
      FieldName = 'ALIAS'
      Size = 100
    end
    object qrClientesQUIENPAGA: TStringField
      FieldName = 'QUIENPAGA'
      Size = 5
    end
    object qrClientesTIPOCLIENTE: TStringField
      FieldName = 'TIPOCLIENTE'
      Size = 5
    end
    object qrClientesENTREGARRESULTADOS: TStringField
      FieldName = 'ENTREGARRESULTADOS'
      Size = 5
    end
    object qrClientesTEXTOREFERENCIA: TStringField
      FieldName = 'TEXTOREFERENCIA'
    end
    object qrClientesSIEMPREIMPRIMIR: TIntegerField
      FieldName = 'SIEMPREIMPRIMIR'
    end
    object qrClientesTIPOSANGRE: TStringField
      FieldName = 'TIPOSANGRE'
      Size = 5
    end
    object qrClientesPACIENTECIAID: TStringField
      FieldName = 'PACIENTECIAID'
      Size = 10
    end
    object qrClientesSECTOR: TStringField
      FieldName = 'SECTOR'
      Size = 100
    end
    object qrClientesUSUARIOINTERNET: TStringField
      FieldName = 'USUARIOINTERNET'
      Size = 10
    end
    object qrClientesCLAVEINTERNET: TStringField
      FieldName = 'CLAVEINTERNET'
      Size = 10
    end
    object qrClientesTIPOINTERNET: TStringField
      FieldName = 'TIPOINTERNET'
      Size = 2
    end
    object qrClientesCLASECREDITO: TStringField
      FieldName = 'CLASECREDITO'
      Size = 5
    end
    object qrClientesDOCTORID: TStringField
      FieldName = 'DOCTORID'
      Size = 10
    end
    object qrClientesSEXO: TIntegerField
      FieldName = 'SEXO'
    end
    object qrClientesESTATUS: TIntegerField
      FieldName = 'ESTATUS'
    end
    object qrClientesTIPOCLIENTEAS400: TIntegerField
      FieldName = 'TIPOCLIENTEAS400'
    end
    object qrClientesCODIGOIDAS400: TStringField
      FieldName = 'CODIGOIDAS400'
      Size = 10
    end
    object qrClientesGRUPOPRECIO: TStringField
      FieldName = 'GRUPOPRECIO'
      Size = 10
    end
    object qrClientesFORMAPAGO: TStringField
      FieldName = 'FORMAPAGO'
      Size = 10
    end
    object qrClientesDATAAREAID: TStringField
      FieldName = 'DATAAREAID'
      Size = 3
    end
    object qrClientesRECID: TIntegerField
      FieldName = 'RECID'
    end
    object qrClientesGRUPODESCUENTOLINEA: TStringField
      FieldName = 'GRUPODESCUENTOLINEA'
      Size = 10
    end
    object qrClientesGRUPODESCUENTOTOTAL: TStringField
      FieldName = 'GRUPODESCUENTOTOTAL'
      Size = 10
    end
    object qrClientesSINPRFILTER: TIntegerField
      FieldName = 'SINPRFILTER'
    end
  end
  object dsClientes: TDataSource
    DataSet = qrClientes
    Left = 916
    Top = 298
  end
  object dsPacientes: TDataSource
    DataSet = qrPacientes
    Left = 916
    Top = 351
  end
  object qrPacientes: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM PTCliente'
      'WHERE Origen = 0'
      'AND DataAreaId = '#39'ldr'#39)
    Left = 864
    Top = 351
    object qrPacientesCLIENTEID: TStringField
      FieldName = 'CLIENTEID'
      Size = 10
    end
    object qrPacientesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 80
    end
    object qrPacientesCONTACTO: TStringField
      FieldName = 'CONTACTO'
      Size = 80
    end
    object qrPacientesTELEFONO: TStringField
      FieldName = 'TELEFONO'
    end
    object qrPacientesFAX: TStringField
      FieldName = 'FAX'
    end
    object qrPacientesGRUPOCLIENTE: TStringField
      FieldName = 'GRUPOCLIENTE'
      Size = 10
    end
    object qrPacientesINCLUIRPRECIOTICKET: TIntegerField
      FieldName = 'INCLUIRPRECIOTICKET'
    end
    object qrPacientesAUTOCONFIRMAR: TIntegerField
      FieldName = 'AUTOCONFIRMAR'
    end
    object qrPacientesEMPLEADOID: TStringField
      FieldName = 'EMPLEADOID'
      Size = 10
    end
    object qrPacientesCODIGOAXAPTA: TStringField
      FieldName = 'CODIGOAXAPTA'
      Size = 10
    end
    object qrPacientesEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object qrPacientesDIRECCIONWEB: TStringField
      FieldName = 'DIRECCIONWEB'
      Size = 80
    end
    object qrPacientesTELEFONO2: TStringField
      FieldName = 'TELEFONO2'
    end
    object qrPacientesMONEDAID: TStringField
      FieldName = 'MONEDAID'
      Size = 3
    end
    object qrPacientesIDENTIFICACION: TStringField
      FieldName = 'IDENTIFICACION'
    end
    object qrPacientesORIGEN: TIntegerField
      FieldName = 'ORIGEN'
    end
    object qrPacientesDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 255
    end
    object qrPacientesCIUDADID: TStringField
      FieldName = 'CIUDADID'
      Size = 10
    end
    object qrPacientesPRUEBASPORDIA: TIntegerField
      FieldName = 'PRUEBASPORDIA'
    end
    object qrPacientesCOBERTURAPORC: TBCDField
      FieldName = 'COBERTURAPORC'
      Precision = 28
      Size = 12
    end
    object qrPacientesPRINCIPAL: TStringField
      FieldName = 'PRINCIPAL'
      Size = 10
    end
    object qrPacientesENVIORESULTADO: TIntegerField
      FieldName = 'ENVIORESULTADO'
    end
    object qrPacientesPUBLICARINTERNET: TIntegerField
      FieldName = 'PUBLICARINTERNET'
    end
    object qrPacientesFECHANACIMIENTO: TDateTimeField
      FieldName = 'FECHANACIMIENTO'
    end
    object qrPacientesSEGURO: TStringField
      FieldName = 'SEGURO'
      Size = 10
    end
    object qrPacientesCARNETNUMERO: TStringField
      FieldName = 'CARNETNUMERO'
      Size = 10
    end
    object qrPacientesPOLIZA: TStringField
      FieldName = 'POLIZA'
    end
    object qrPacientesCOBRARDIFERENCIA: TIntegerField
      FieldName = 'COBRARDIFERENCIA'
    end
    object qrPacientesENVIARFAX: TIntegerField
      FieldName = 'ENVIARFAX'
    end
    object qrPacientesACTIVARDESCUENTOS: TIntegerField
      FieldName = 'ACTIVARDESCUENTOS'
    end
    object qrPacientesUSARALIASNOMBRE: TIntegerField
      FieldName = 'USARALIASNOMBRE'
    end
    object qrPacientesUSARALIASPRUEBAS: TIntegerField
      FieldName = 'USARALIASPRUEBAS'
    end
    object qrPacientesSIEMPREINTERNET: TIntegerField
      FieldName = 'SIEMPREINTERNET'
    end
    object qrPacientesIMPRIMIRALIASNOMBRE: TIntegerField
      FieldName = 'IMPRIMIRALIASNOMBRE'
    end
    object qrPacientesIMPRIMIRALIASPRUEBA: TIntegerField
      FieldName = 'IMPRIMIRALIASPRUEBA'
    end
    object qrPacientesIMPRIMIRSOLOTOTALES: TIntegerField
      FieldName = 'IMPRIMIRSOLOTOTALES'
    end
    object qrPacientesIMPRIMIRALIASRESULTADOS: TIntegerField
      FieldName = 'IMPRIMIRALIASRESULTADOS'
    end
    object qrPacientesUSARACUERDOPROPIO: TIntegerField
      FieldName = 'USARACUERDOPROPIO'
    end
    object qrPacientesALIAS: TStringField
      FieldName = 'ALIAS'
      Size = 100
    end
    object qrPacientesQUIENPAGA: TStringField
      FieldName = 'QUIENPAGA'
      Size = 5
    end
    object qrPacientesTIPOCLIENTE: TStringField
      FieldName = 'TIPOCLIENTE'
      Size = 5
    end
    object qrPacientesENTREGARRESULTADOS: TStringField
      FieldName = 'ENTREGARRESULTADOS'
      Size = 5
    end
    object qrPacientesTEXTOREFERENCIA: TStringField
      FieldName = 'TEXTOREFERENCIA'
    end
    object qrPacientesSIEMPREIMPRIMIR: TIntegerField
      FieldName = 'SIEMPREIMPRIMIR'
    end
    object qrPacientesTIPOSANGRE: TStringField
      FieldName = 'TIPOSANGRE'
      Size = 5
    end
    object qrPacientesPACIENTECIAID: TStringField
      FieldName = 'PACIENTECIAID'
      Size = 10
    end
    object qrPacientesSECTOR: TStringField
      FieldName = 'SECTOR'
      Size = 100
    end
    object qrPacientesUSUARIOINTERNET: TStringField
      FieldName = 'USUARIOINTERNET'
      Size = 10
    end
    object qrPacientesCLAVEINTERNET: TStringField
      FieldName = 'CLAVEINTERNET'
      Size = 10
    end
    object qrPacientesTIPOINTERNET: TStringField
      FieldName = 'TIPOINTERNET'
      Size = 2
    end
    object qrPacientesCLASECREDITO: TStringField
      FieldName = 'CLASECREDITO'
      Size = 5
    end
    object qrPacientesDOCTORID: TStringField
      FieldName = 'DOCTORID'
      Size = 10
    end
    object qrPacientesSEXO: TIntegerField
      FieldName = 'SEXO'
    end
    object qrPacientesESTATUS: TIntegerField
      FieldName = 'ESTATUS'
    end
    object qrPacientesTIPOCLIENTEAS400: TIntegerField
      FieldName = 'TIPOCLIENTEAS400'
    end
    object qrPacientesCODIGOIDAS400: TStringField
      FieldName = 'CODIGOIDAS400'
      Size = 10
    end
    object qrPacientesGRUPOPRECIO: TStringField
      FieldName = 'GRUPOPRECIO'
      Size = 10
    end
    object qrPacientesFORMAPAGO: TStringField
      FieldName = 'FORMAPAGO'
      Size = 10
    end
    object qrPacientesDATAAREAID: TStringField
      FieldName = 'DATAAREAID'
      Size = 3
    end
    object qrPacientesRECID: TIntegerField
      FieldName = 'RECID'
    end
    object qrPacientesGRUPODESCUENTOLINEA: TStringField
      FieldName = 'GRUPODESCUENTOLINEA'
      Size = 10
    end
    object qrPacientesGRUPODESCUENTOTOTAL: TStringField
      FieldName = 'GRUPODESCUENTOTOTAL'
      Size = 10
    end
    object qrPacientesSINPRFILTER: TIntegerField
      FieldName = 'SINPRFILTER'
    end
  end
  object dsDatos: TDataSource
    DataSet = JvMemoryData1
    Left = 252
    Top = 311
  end
  object JvMemoryData1: TJvMemoryData
    FieldDefs = <
      item
        Name = 'Seleccion'
        DataType = ftBoolean
      end
      item
        Name = 'PruebaID'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Descripcion'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'Precio'
        DataType = ftCurrency
      end
      item
        Name = 'PrecioDolares'
        DataType = ftCurrency
      end>
    Left = 168
    Top = 312
    object JvMemoryData1Seleccionar: TBooleanField
      FieldName = 'Seleccionar'
    end
    object JvMemoryData1Pedido_Venta: TStringField
      FieldName = 'Pedido_Venta'
      Size = 25
    end
    object JvMemoryData1Cuenta_Cliente: TStringField
      FieldName = 'Cuenta_Cliente'
      Size = 10
    end
    object JvMemoryData1Nombre: TStringField
      FieldName = 'Nombre'
      Size = 80
    end
    object JvMemoryData1Tipo_Pedido: TStringField
      FieldName = 'Tipo_Pedido'
      Size = 50
    end
    object JvMemoryData1Estado: TStringField
      FieldName = 'Estado'
    end
    object JvMemoryData1MonedaID: TStringField
      FieldName = 'MonedaID'
      Size = 5
    end
  end
  object JvMemoryData2: TJvMemoryData
    FieldDefs = <
      item
        Name = 'Seleccion'
        DataType = ftBoolean
      end
      item
        Name = 'PruebaID'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Descripcion'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'Precio'
        DataType = ftCurrency
      end
      item
        Name = 'PrecioDolares'
        DataType = ftCurrency
      end>
    Left = 168
    Top = 552
    object JvMemoryData2PruebaID: TStringField
      FieldName = 'PruebaID'
    end
    object JvMemoryData2SucursalID: TStringField
      FieldName = 'SucursalID'
      Size = 10
    end
    object JvMemoryData2Cantidad: TIntegerField
      FieldName = 'Cantidad'
    end
    object JvMemoryData2Unidad: TStringField
      FieldName = 'Unidad'
      Size = 10
    end
    object JvMemoryData2Precio_Unitario: TCurrencyField
      FieldName = 'Precio_Unitario'
    end
    object JvMemoryData2Descuento: TCurrencyField
      FieldName = 'Descuento'
    end
    object JvMemoryData2Porcentaje_Desc: TCurrencyField
      FieldName = 'Porcentaje_Desc'
    end
    object JvMemoryData2Neto: TCurrencyField
      FieldName = 'Neto'
    end
    object JvMemoryData2Descripcion: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
    object JvMemoryData2Muestrano: TStringField
      FieldName = 'Muestrano'
    end
    object JvMemoryData2Nota_Debito: TBooleanField
      FieldName = 'Nota_Debito'
    end
  end
  object dsArticulos: TDataSource
    DataSet = JvMemoryData2
    Left = 228
    Top = 559
  end
  object qrPedido: TADOQuery
    Connection = DM.DBSAP
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from dbo.PedidoVenta'
      'Where Estado='#39'T'#39)
    Left = 208
    Top = 313
    object qrPedidoRecID: TLargeintField
      FieldName = 'RecID'
    end
    object qrPedidoMuestrano: TStringField
      FieldName = 'Muestrano'
    end
    object qrPedidoGrupoID: TStringField
      FieldName = 'GrupoID'
      Size = 10
    end
    object qrPedidoClienteID: TStringField
      FieldName = 'ClienteID'
      Size = 10
    end
    object qrPedidoEntradaID: TStringField
      FieldName = 'EntradaID'
    end
    object qrPedidoFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object qrPedidoPolizaID: TStringField
      FieldName = 'PolizaID'
      Size = 80
    end
    object qrPedidoNombrePaciente: TStringField
      FieldName = 'NombrePaciente'
      Size = 80
    end
    object qrPedidoIdentificacion: TStringField
      FieldName = 'Identificacion'
      Size = 50
    end
    object qrPedidoSucursalD: TStringField
      FieldName = 'SucursalD'
      Size = 10
    end
    object qrPedidoMontoFacturado: TBCDField
      FieldName = 'MontoFacturado'
      Precision = 28
      Size = 12
    end
    object qrPedidoDescuentoProc: TBCDField
      FieldName = 'DescuentoProc'
      Precision = 28
      Size = 12
    end
    object qrPedidoDescuentoValor: TBCDField
      FieldName = 'DescuentoValor'
      Precision = 28
      Size = 12
    end
    object qrPedidoMonedaID: TStringField
      FieldName = 'MonedaID'
      Size = 3
    end
    object qrPedidoTasa: TBCDField
      FieldName = 'Tasa'
      Precision = 28
      Size = 12
    end
    object qrPedidoAprobacionNo: TStringField
      FieldName = 'AprobacionNo'
    end
    object qrPedidoEstado: TStringField
      FieldName = 'Estado'
      FixedChar = True
      Size = 1
    end
    object qrPedidoU_Numero: TStringField
      FieldName = 'U_Numero'
      Size = 35
    end
    object qrPedidoRnc: TStringField
      FieldName = 'Rnc'
    end
    object qrPedidoComentario: TStringField
      FieldName = 'Comentario'
      Size = 80
    end
  end
  object qrPedidoDetalle: TADOQuery
    Connection = DM.DBSAP
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from dbo.PedidoVentaDetalle'
      'Where Estado='#39'T'#39)
    Left = 200
    Top = 537
    object LargeintField1: TLargeintField
      FieldName = 'RecID'
    end
    object StringField1: TStringField
      FieldName = 'Muestrano'
    end
    object StringField2: TStringField
      FieldName = 'GrupoID'
      Size = 10
    end
    object StringField3: TStringField
      FieldName = 'ClienteID'
      Size = 10
    end
    object StringField4: TStringField
      FieldName = 'EntradaID'
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'Fecha'
    end
    object StringField5: TStringField
      FieldName = 'PolizaID'
      Size = 80
    end
    object StringField6: TStringField
      FieldName = 'NombrePaciente'
      Size = 80
    end
    object StringField7: TStringField
      FieldName = 'Identificacion'
      Size = 50
    end
    object StringField8: TStringField
      FieldName = 'SucursalD'
      Size = 10
    end
    object BCDField1: TBCDField
      FieldName = 'MontoFacturado'
      Precision = 28
      Size = 12
    end
    object BCDField2: TBCDField
      FieldName = 'DescuentoProc'
      Precision = 28
      Size = 12
    end
    object BCDField3: TBCDField
      FieldName = 'DescuentoValor'
      Precision = 28
      Size = 12
    end
    object StringField9: TStringField
      FieldName = 'MonedaID'
      Size = 3
    end
    object BCDField4: TBCDField
      FieldName = 'Tasa'
      Precision = 28
      Size = 12
    end
    object StringField10: TStringField
      FieldName = 'AprobacionNo'
    end
    object StringField11: TStringField
      FieldName = 'Estado'
      FixedChar = True
      Size = 1
    end
    object StringField12: TStringField
      FieldName = 'U_Numero'
      Size = 35
    end
    object StringField13: TStringField
      FieldName = 'Rnc'
    end
    object StringField14: TStringField
      FieldName = 'Comentario'
      Size = 80
    end
  end
end
