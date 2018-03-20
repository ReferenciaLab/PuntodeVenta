inherited frmDiarioModule: TfrmDiarioModule
  Left = 520
  Top = 231
  Caption = 'Diario'
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    object RzSeparator1: TRzSeparator [0]
      Left = 476
      Top = 69
      Width = 84
      Height = 1
      HighlightColor = clWhite
      ShowGradient = True
      Color = clGray
      ParentColor = False
    end
    inherited pcDatos: TcxPageControl
      Width = 584
      Height = 357
      ExplicitWidth = 584
      ExplicitHeight = 357
      ClientRectBottom = 357
      ClientRectRight = 584
      ClientRectTop = 24
      inherited tsMain: TcxTabSheet
        inherited lcGrid: TdxLayoutControl
          Width = 584
          Height = 333
          ExplicitWidth = 584
          ExplicitHeight = 333
          inherited dgDatos: TcxGrid
            Width = 574
            Height = 229
            ExplicitWidth = 574
            ExplicitHeight = 229
          end
        end
      end
      inherited tsDatos: TcxTabSheet
        inherited lcDatos: TdxLayoutControl
          Width = 584
          Height = 333
          ExplicitWidth = 584
          ExplicitHeight = 333
        end
      end
    end
    object btValidar: TcxButton [2]
      Left = 476
      Top = 7
      Width = 75
      Height = 25
      Action = dmAppActions.actValidar
      TabOrder = 1
      TabStop = False
    end
    object btPostear: TcxButton [3]
      Left = 476
      Top = 38
      Width = 75
      Height = 25
      Action = dmAppActions.actPostear
      TabOrder = 2
      TabStop = False
    end
    inherited dxLayoutGroup2: TdxLayoutGroup
      inherited dxLayoutControl1Group_Root: TdxLayoutGroup
        inherited lgBotones: TdxLayoutGroup
          object liBtValidar: TdxLayoutItem
            Caption = 'cxButton1'
            ShowCaption = False
            Control = btValidar
            ControlOptions.ShowBorder = False
          end
          object liBtPostear: TdxLayoutItem
            Caption = 'cxButton2'
            ShowCaption = False
            Control = btPostear
            ControlOptions.ShowBorder = False
          end
          object liValidatePostSeparator: TdxLayoutItem
            Control = RzSeparator1
            ControlOptions.ShowBorder = False
          end
        end
      end
    end
  end
  inherited dxPrintGrid: TdxComponentPrinter
    inherited dxPrintGridLink: TdxGridReportLink
      ReportDocument.CreationDate = 38462.717493344920000000
      BuiltInReportLink = True
    end
    inherited dxPrintGridDatos: TdxLayoutControlReportLink
      ReportDocument.CreationDate = 38462.717493344920000000
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
end
