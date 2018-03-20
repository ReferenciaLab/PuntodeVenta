object frmDialogImpNC: TfrmDialogImpNC
  Left = 0
  Top = 0
  Caption = 'Consulta de Notas de Credito'
  ClientHeight = 232
  ClientWidth = 765
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClick = cgDatosEnter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 765
    Height = 232
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmAppActions.lnfWeb
    object cgDatos: TcxGrid
      Left = 11
      Top = 11
      Width = 581
      Height = 179
      TabOrder = 0
      OnEnter = cgDatosEnter
      OnExit = cgDatosExit
      object dbDatos: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsDatos
        DataController.KeyFieldNames = 'CobroID'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnSorting = False
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object dbDatosReciboNo: TcxGridDBColumn
          Caption = 'Nota Credito'
          DataBinding.FieldName = 'ReciboNo'
          HeaderAlignmentHorz = taCenter
          Width = 89
        end
        object dbDatosFecha: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha'
          HeaderAlignmentHorz = taCenter
          Width = 81
        end
        object dbDatosHora: TcxGridDBColumn
          DataBinding.FieldName = 'Hora'
          HeaderAlignmentHorz = taCenter
          Width = 46
        end
        object dbDatosColumn1: TcxGridDBColumn
          Caption = 'Moneda'
          DataBinding.FieldName = 'MonedaID'
          HeaderAlignmentHorz = taCenter
          Width = 49
        end
        object dbDatosTotalFactura: TcxGridDBColumn
          Caption = 'Total Factura'
          DataBinding.FieldName = 'TotalFactura'
          HeaderAlignmentHorz = taCenter
          Width = 85
        end
        object dbDatosTotalPagado: TcxGridDBColumn
          Caption = 'Total Pagado'
          DataBinding.FieldName = 'TotalPagado'
          HeaderAlignmentHorz = taCenter
          Width = 83
        end
        object dbDatosPendienteFactura: TcxGridDBColumn
          Caption = 'Total Pendiente'
          DataBinding.FieldName = 'PendienteFactura'
          HeaderAlignmentHorz = taCenter
          Width = 84
        end
        object dbDatosTotalCobrado: TcxGridDBColumn
          Caption = 'Valor NC'
          DataBinding.FieldName = 'TotalCobrado'
          HeaderAlignmentHorz = taCenter
          Width = 85
        end
        object dbDatosPendienteCobro: TcxGridDBColumn
          Caption = 'Pendiente de Cobro'
          DataBinding.FieldName = 'PendienteCobro'
          Width = 84
        end
        object dbDatosUsuarioID: TcxGridDBColumn
          Caption = 'Usuario'
          DataBinding.FieldName = 'UsuarioID'
          Width = 43
        end
      end
      object lvDatos: TcxGridLevel
        GridView = dbDatos
      end
    end
    object btcancelar: TcxButton
      Left = 679
      Top = 196
      Width = 75
      Height = 25
      Caption = 'Cerrar'
      ModalResult = 2
      TabOrder = 2
    end
    object btaceptar: TcxButton
      Left = 598
      Top = 196
      Width = 75
      Height = 25
      Caption = 'Imprimir'
      ModalResult = 1
      TabOrder = 1
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Item4: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'cxGrid1'
        ShowCaption = False
        Control = cgDatos
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl1Group2: TdxLayoutGroup
        AutoAligns = []
        AlignHorz = ahRight
        AlignVert = avBottom
        Caption = 'Botones'
        ShowCaption = False
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Item6: TdxLayoutItem
          Caption = 'cxButton2'
          ShowCaption = False
          Control = btaceptar
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item5: TdxLayoutItem
          Caption = 'cxButton1'
          ShowCaption = False
          Control = btcancelar
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object dsDatos: TDataSource
    DataSet = qrCobros
    Left = 148
    Top = 63
  end
  object qrCobros: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'rec'
        Attributes = [paSigned, paNullable]
        DataType = ftLargeint
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'TipoDoc'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'Select *  from PTCobro'
      'Where refrecid = :rec'
      'and TipoDoc = :TipoDoc')
    Left = 64
    Top = 80
    object qrCobrosCobroID: TStringField
      FieldName = 'CobroID'
      Size = 10
    end
    object qrCobrosTurnoID: TStringField
      FieldName = 'TurnoID'
      Size = 10
    end
    object qrCobrosEntradaID: TStringField
      FieldName = 'EntradaID'
    end
    object qrCobrosSucursalID: TStringField
      FieldName = 'SucursalID'
      Size = 10
    end
    object mon: TDateTimeField
      FieldName = 'Fecha'
    end
    object qrCobrosHora: TStringField
      FieldName = 'Hora'
      Size = 10
    end
    object qrCobrosPacienteID: TStringField
      FieldName = 'PacienteID'
      Size = 10
    end
    object qrCobrosPacientePrincipalID: TStringField
      FieldName = 'PacientePrincipalID'
      Size = 10
    end
    object qrCobrosUsuarioID: TStringField
      FieldName = 'UsuarioID'
      Size = 10
    end
    object qrCobrosTotalCobrado: TBCDField
      FieldName = 'TotalCobrado'
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
    object qrCobrosTotalFactura: TBCDField
      FieldName = 'TotalFactura'
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
    object qrCobrosTotalPagado: TBCDField
      FieldName = 'TotalPagado'
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
    object qrCobrosPendienteFactura: TBCDField
      FieldName = 'PendienteFactura'
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
    object qrCobrosPendienteCobro: TBCDField
      FieldName = 'PendienteCobro'
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
    object qrCobrosReciboNo: TStringField
      FieldName = 'ReciboNo'
    end
    object qrCobrosClienteID: TStringField
      FieldName = 'ClienteID'
      Size = 10
    end
    object qrCobrosAplicado: TBooleanField
      FieldName = 'Aplicado'
    end
    object qrCobrosMonedaID: TStringField
      FieldName = 'MonedaID'
      Size = 3
    end
    object qrCobrosTipoDoc: TStringField
      FieldName = 'TipoDoc'
      Size = 2
    end
    object qrCobrosConcepto: TStringField
      FieldName = 'Concepto'
      Size = 50
    end
    object qrCobrosCUADREGLOBAL: TStringField
      FieldName = 'CUADREGLOBAL'
    end
    object qrCobrosCUADREUSUARIO: TStringField
      FieldName = 'CUADREUSUARIO'
    end
    object qrCobrosrefRecid: TLargeintField
      FieldName = 'refRecid'
    end
    object qrCobrosSecuencia: TAutoIncField
      FieldName = 'Secuencia'
      ReadOnly = True
    end
    object qrCobrosSINPRFILTER: TIntegerField
      FieldName = 'SINPRFILTER'
    end
    object qrCobrosRecId: TLargeintField
      FieldName = 'RecId'
    end
  end
end
