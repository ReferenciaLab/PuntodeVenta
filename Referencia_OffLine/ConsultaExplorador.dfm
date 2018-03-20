inherited frmConsultaExplorador: TfrmConsultaExplorador
  Caption = 'Consulta ...'
  ExplicitHeight = 412
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcDatos: TdxLayoutControl
    inherited grConsulta: TcxGrid
      Width = 548
      Height = 366
      ExplicitWidth = 548
      ExplicitHeight = 366
    end
  end
  inherited dsDatos: TDataSource
    DataSet = qrConsulta
  end
  inherited dxPrintGrid: TdxComponentPrinter
    inherited dxPrintGridLink: TdxGridReportLink
      ReportDocument.CreationDate = 38286.474989027780000000
      BuiltInReportLink = True
    end
  end
  inherited alEdit: TActionList
    Left = 372
    Top = 92
  end
  object qrConsulta: TADOQuery
    Connection = DM.DataBase
    Parameters = <>
    Left = 176
    Top = 64
  end
end
