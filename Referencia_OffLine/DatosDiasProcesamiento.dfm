inherited frmDatosDiasProcesamiento: TfrmDatosDiasProcesamiento
  Caption = 'Dias de Procesamiento'
  ClientHeight = 441
  ClientWidth = 672
  ExplicitWidth = 680
  ExplicitHeight = 475
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 672
    Height = 408
    ExplicitWidth = 672
    ExplicitHeight = 408
    inherited pcDatos: TcxPageControl
      Width = 736
      Height = 517
      ExplicitWidth = 736
      ExplicitHeight = 517
      ClientRectBottom = 517
      ClientRectRight = 736
      ClientRectTop = 24
      inherited tsMain: TcxTabSheet
        inherited lcGrid: TdxLayoutControl
          Width = 736
          Height = 493
          inherited dgDatos: TcxGrid
            Width = 550
            Height = 240
            ExplicitWidth = 550
            ExplicitHeight = 240
            inherited tvDatos: TcxGridDBTableView
              DataController.KeyFieldNames = 'CodDiasProc'
              object tvDatosCondPaciente: TcxGridDBColumn
                Caption = 'C'#243'digo'
                DataBinding.FieldName = 'CodDiasProc'
                Width = 110
              end
              object tvDatosDescripcion: TcxGridDBColumn
                Caption = 'Descripci'#243'n'
                DataBinding.FieldName = 'Descripcion'
                Width = 440
              end
            end
          end
        end
      end
      inherited tsDatos: TcxTabSheet
        inherited lcDatos: TdxLayoutControl
          Width = 736
          Height = 493
          object cxDBTextEdit1: TcxDBTextEdit [0]
            Tag = 99
            Left = 84
            Top = 36
            DataBinding.DataField = 'CodDiasProc'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 0
            Width = 121
          end
          object cxDBTextEdit2: TcxDBTextEdit [1]
            Left = 84
            Top = 63
            DataBinding.DataField = 'Descripcion'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 1
            Width = 121
          end
          object cxDBCheckBox1: TcxDBCheckBox [2]
            Left = 109
            Top = 122
            AutoSize = False
            Caption = 'Martes'
            DataBinding.DataField = 'Martes'
            DataBinding.DataSource = dsDatos
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 3
            Height = 21
            Width = 80
          end
          object cxDBCheckBox2: TcxDBCheckBox [3]
            Left = 23
            Top = 122
            AutoSize = False
            Caption = 'Lunes'
            DataBinding.DataField = 'Lunes'
            DataBinding.DataSource = dsDatos
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 2
            Height = 21
            Width = 80
          end
          object cxDBCheckBox3: TcxDBCheckBox [4]
            Left = 195
            Top = 122
            AutoSize = False
            Caption = 'Miercoles'
            DataBinding.DataField = 'Miercoles'
            DataBinding.DataSource = dsDatos
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 4
            Height = 21
            Width = 80
          end
          object cxDBCheckBox4: TcxDBCheckBox [5]
            Left = 281
            Top = 122
            AutoSize = False
            Caption = 'Jueves'
            DataBinding.DataField = 'Jueves'
            DataBinding.DataSource = dsDatos
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 5
            Height = 21
            Width = 80
          end
          object cxDBCheckBox5: TcxDBCheckBox [6]
            Left = 367
            Top = 122
            AutoSize = False
            Caption = 'Viernes'
            DataBinding.DataField = 'Viernes'
            DataBinding.DataSource = dsDatos
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 6
            Height = 21
            Width = 80
          end
          object cxDBCheckBox6: TcxDBCheckBox [7]
            Left = 453
            Top = 122
            AutoSize = False
            Caption = 'Sabado'
            DataBinding.DataField = 'Sabado'
            DataBinding.DataSource = dsDatos
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 7
            Height = 21
            Width = 80
          end
          object cxDBCheckBox7: TcxDBCheckBox [8]
            Left = 539
            Top = 122
            AutoSize = False
            Caption = 'Domingo'
            DataBinding.DataField = 'Domingo'
            DataBinding.DataSource = dsDatos
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 8
            Height = 21
            Width = 80
          end
          inherited Group_Root: TdxLayoutGroup
            object lcDatosGroup1: TdxLayoutGroup
              Caption = 'General'
              object lcDatosItem1: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'C'#243'digo'
                Control = cxDBTextEdit1
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem2: TdxLayoutItem
                Caption = 'Descripci'#243'n'
                Control = cxDBTextEdit2
                ControlOptions.ShowBorder = False
              end
            end
            object lcDatosGroup2: TdxLayoutGroup
              Caption = 'Dias'
              LayoutDirection = ldHorizontal
              object lcDatosItem4: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'cxDBCheckBox2'
                ShowCaption = False
                Control = cxDBCheckBox2
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem3: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'cxDBCheckBox1'
                ShowCaption = False
                Control = cxDBCheckBox1
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem5: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'cxDBCheckBox3'
                ShowCaption = False
                Control = cxDBCheckBox3
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem6: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'cxDBCheckBox4'
                ShowCaption = False
                Control = cxDBCheckBox4
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem7: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'cxDBCheckBox5'
                ShowCaption = False
                Control = cxDBCheckBox5
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem8: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'cxDBCheckBox6'
                ShowCaption = False
                Control = cxDBCheckBox6
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem9: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'cxDBCheckBox7'
                ShowCaption = False
                Control = cxDBCheckBox7
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
      end
    end
  end
  inherited pnCaption: TPanel
    Width = 672
    ExplicitWidth = 672
  end
  inherited formStorage: TJvFormStorage
    Left = 456
    Top = 294
  end
  inherited dsDatos: TDataSource
    DataSet = qrDiasProcesamiento
    Left = 196
    Top = 2
  end
  inherited dxPrintGrid: TdxComponentPrinter
    inherited dxPrintGridLink: TdxGridReportLink
      ReportDocument.CreationDate = 38932.673759942130000000
      BuiltInReportLink = True
    end
    inherited dxPrintGridDatos: TdxLayoutControlReportLink
      ReportDocument.CreationDate = 38932.673759942130000000
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
  inherited qryHelper: TADOQuery
    Top = 2
  end
  inherited pmCustom: TPopupMenu
    Top = 204
  end
  inherited qrDefaultView: TADOQuery
    Left = 504
  end
  inherited cxStyleRepository1: TcxStyleRepository
    Left = 392
    Top = 324
  end
  inherited qrVistas: TABSQuery
    Left = 348
    Top = 72
  end
  object qrDiasProcesamiento: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    AfterInsert = qrDiasProcesamientoAfterInsert
    OnNewRecord = qrDiasProcesamientoNewRecord
    Parameters = <>
    SQL.Strings = (
      'Select *  from PTDiasProcesamiento')
    Left = 144
    Top = 2
    object qrDiasProcesamientoCODDIASPROC: TStringField
      FieldName = 'CODDIASPROC'
      Size = 5
    end
    object qrDiasProcesamientoDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 80
    end
    object qrDiasProcesamientoLUNES: TIntegerField
      FieldName = 'LUNES'
    end
    object qrDiasProcesamientoMARTES: TIntegerField
      FieldName = 'MARTES'
    end
    object qrDiasProcesamientoMIERCOLES: TIntegerField
      FieldName = 'MIERCOLES'
    end
    object qrDiasProcesamientoJUEVES: TIntegerField
      FieldName = 'JUEVES'
    end
    object qrDiasProcesamientoVIERNES: TIntegerField
      FieldName = 'VIERNES'
    end
    object qrDiasProcesamientoSABADO: TIntegerField
      FieldName = 'SABADO'
    end
    object qrDiasProcesamientoDOMINGO: TIntegerField
      FieldName = 'DOMINGO'
    end
    object qrDiasProcesamientoDATAAREAID: TStringField
      FieldName = 'DATAAREAID'
      Size = 3
    end
    object qrDiasProcesamientoRECID: TLargeintField
      FieldName = 'RECID'
    end
  end
end
