inherited frmConsultaTransClientes: TfrmConsultaTransClientes
  Caption = 'Consulta de Transacciones de Clientes'
  ClientHeight = 447
  ClientWidth = 851
  ExplicitWidth = 867
  ExplicitHeight = 485
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcDatos: TdxLayoutControl
    Width = 751
    Height = 414
    ExplicitWidth = 751
    ExplicitHeight = 414
    inherited grConsulta: TcxGrid
      inherited tvConsulta: TcxGridDBTableView
        DataController.KeyFieldNames = 'recid'
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = '##,###,##0.00'
            Kind = skSum
            Position = spFooter
            Column = tvConsultaValor
          end
          item
            Format = '##,###,##0.00'
            Kind = skSum
            Position = spFooter
            Column = tvConsultaColumn2
          end
          item
            Format = '##,###,##0.00'
            Kind = skSum
            Column = tvConsultaValor
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '##,###,##0.00'
            Kind = skSum
            Column = tvConsultaValor
          end
          item
            Format = '##,###,##0.00'
            Kind = skSum
            Column = tvConsultaColumn2
          end>
        OptionsView.Footer = True
        object tvConsultaFecha: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha'
          SortIndex = 0
          SortOrder = soAscending
          Width = 98
        end
        object tvConsultaTipoDoc: TcxGridDBColumn
          DataBinding.FieldName = 'TipoDoc'
          SortIndex = 1
          SortOrder = soAscending
          Width = 64
        end
        object tvConsultaDocumento: TcxGridDBColumn
          DataBinding.FieldName = 'Documento'
          SortIndex = 2
          SortOrder = soAscending
        end
        object tvConsultaTipoAplica: TcxGridDBColumn
          DataBinding.FieldName = 'TipoAplica'
          Width = 78
        end
        object tvConsultaDocumentoAplica: TcxGridDBColumn
          DataBinding.FieldName = 'DocumentoAplica'
          Width = 119
        end
        object tvConsultaColumn1: TcxGridDBColumn
          DataBinding.FieldName = 'MonedaID'
          Width = 68
        end
        object tvConsultaValor: TcxGridDBColumn
          DataBinding.FieldName = 'Valor'
        end
        object tvConsultaColumn2: TcxGridDBColumn
          DataBinding.FieldName = 'ValorMST'
        end
      end
    end
    inherited btBuscar: TcxButton
      OnClick = btBuscarClick
    end
    inherited Group_Root: TdxLayoutGroup
      inherited lgConsulta: TdxLayoutGroup
        inherited lgParametros: TdxLayoutGroup
          Visible = True
        end
      end
    end
  end
  inherited lcBotones: TdxLayoutControl
    Left = 751
    Height = 414
    ExplicitLeft = 751
    ExplicitHeight = 414
  end
  inherited pnCaption: TPanel
    Width = 851
    ExplicitWidth = 851
  end
  inherited dsDatos: TDataSource
    DataSet = qrTransCliente
    Left = 508
    Top = 3
  end
  inherited dxPrintGrid: TdxComponentPrinter
    inherited dxPrintGridLink: TdxGridReportLink
      ReportDocument.CreationDate = 38963.754257268520000000
      BuiltInReportLink = True
    end
  end
  inherited qryHelper: TADOQuery
    Left = 816
    Top = 179
  end
  inherited formStorage: TJvFormStorage
    Left = 316
    Top = 182
  end
  inherited pmCustom: TPopupMenu
    Top = 200
  end
  inherited SaveDialog: TSaveDialog
    Left = 391
    Top = 190
  end
  inherited strView: TJvStrHolder
    Left = 408
    Top = 256
  end
  inherited qrDefaultView: TADOQuery
    Left = 771
    Top = 179
  end
  object qrTransCliente: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    BeforeOpen = qrTransClienteBeforeOpen
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM PTClienteTransacciones')
    Left = 400
    Top = 4
    object qrTransClienteClienteId: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'ClienteId'
      Size = 10
    end
    object qrTransClientePacienteId: TStringField
      FieldName = 'PacienteId'
      Size = 10
    end
    object qrTransClienteFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object qrTransClienteTipoDoc: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TipoDoc'
      Size = 5
    end
    object qrTransClienteDocumento: TStringField
      FieldName = 'Documento'
    end
    object qrTransClienteTipoAplica: TStringField
      DisplayLabel = 'Tipo Aplica'
      FieldName = 'TipoAplica'
      Size = 5
    end
    object qrTransClienteDocumentoAplica: TStringField
      DisplayLabel = 'Documento Aplica'
      FieldName = 'DocumentoAplica'
    end
    object qrTransClienteValor: TBCDField
      FieldName = 'Valor'
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
    object qrTransClienteMonedaID: TStringField
      DisplayLabel = 'Moneda'
      FieldName = 'MonedaID'
      Size = 3
    end
    object qrTransClienteValorMST: TBCDField
      DisplayLabel = 'Valor RD$'
      FieldName = 'ValorMST'
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
    object qrTransClienteRecId: TLargeintField
      FieldName = 'RecId'
    end
    object qrTransClienteSINPRFILTER: TIntegerField
      FieldName = 'SINPRFILTER'
    end
  end
end
