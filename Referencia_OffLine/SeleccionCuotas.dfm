inherited frmSeleccionCuotas: TfrmSeleccionCuotas
  BorderIcons = []
  Caption = 'Seleccionar Cuotas'
  ClientHeight = 564
  ClientWidth = 779
  ExplicitWidth = 785
  ExplicitHeight = 593
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcDialog: TdxLayoutControl
    Width = 779
    Height = 564
    ExplicitWidth = 779
    ExplicitHeight = 564
    inherited btCancelar: TcxButton
      Top = 528
      TabOrder = 6
      ExplicitTop = 528
    end
    inherited btAceptar: TcxButton
      Top = 528
      TabOrder = 5
      ExplicitTop = 528
    end
    object bttodas: TcxButton [2]
      Left = 344
      Top = 260
      Width = 90
      Height = 25
      Caption = 'Pagar Todas'
      TabOrder = 2
      OnClick = bttodasClick
    end
    object btpagar: TcxButton [3]
      Left = 248
      Top = 260
      Width = 90
      Height = 25
      Caption = 'Pagar Cuota'
      TabOrder = 1
      OnClick = btpagarClick
    end
    object btabonar: TcxButton [4]
      Left = 440
      Top = 260
      Width = 90
      Height = 25
      Caption = 'Abonar a Cuota'
      TabOrder = 3
      OnClick = btabonarClick
    end
    object grSeleccionadas: TcxGrid [5]
      Left = 23
      Top = 323
      Width = 588
      Height = 195
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      LookAndFeel.NativeStyle = True
      object tvDatosLineas: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.First.Visible = False
        NavigatorButtons.PriorPage.Visible = False
        NavigatorButtons.Prior.Visible = False
        NavigatorButtons.Next.Visible = False
        NavigatorButtons.NextPage.Visible = False
        NavigatorButtons.Last.Visible = False
        NavigatorButtons.Insert.Visible = False
        NavigatorButtons.Delete.Visible = True
        NavigatorButtons.Edit.Visible = False
        NavigatorButtons.Post.Visible = False
        NavigatorButtons.Cancel.Visible = False
        NavigatorButtons.Refresh.Visible = False
        NavigatorButtons.SaveBookmark.Visible = False
        NavigatorButtons.GotoBookmark.Visible = False
        NavigatorButtons.Filter.Visible = False
        DataController.DataModeController.SmartRefresh = True
        DataController.DataSource = dsDatotosLineas
        DataController.Filter.Active = True
        DataController.Filter.AutoDataSetFilter = True
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '###,###,##0.00'
            Kind = skSum
            Column = tvDatosLineasCapitalPagado
          end
          item
            Format = '###,###,##0.00'
            Kind = skSum
            Column = tvDatosLineasInteresPagado
          end
          item
            Format = '###,###,##0.00'
            Kind = skSum
            Column = tvDatosLineasMoraPagada
          end
          item
            Format = '###,###,##0.00'
            Kind = skSum
            Column = tvDatosLineasTotalPagado
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.CancelOnExit = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsView.Navigator = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object tvDatosLineasPrestamoNo: TcxGridDBColumn
          DataBinding.FieldName = 'PrestamoNo'
          SortIndex = 0
          SortOrder = soAscending
          Width = 89
        end
        object tvDatosLineasCuotaNo: TcxGridDBColumn
          DataBinding.FieldName = 'CuotaNo'
          SortIndex = 1
          SortOrder = soAscending
          Width = 71
        end
        object tvDatosLineasFecha: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha'
          Width = 90
        end
        object tvDatosLineasCapitalPagado: TcxGridDBColumn
          DataBinding.FieldName = 'CapitalPagado'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Width = 100
        end
        object tvDatosLineasInteresPagado: TcxGridDBColumn
          DataBinding.FieldName = 'InteresPagado'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Width = 100
        end
        object tvDatosLineasMoraPagada: TcxGridDBColumn
          DataBinding.FieldName = 'MoraPagada'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Width = 99
        end
        object tvDatosLineasTotalPagado: TcxGridDBColumn
          DataBinding.FieldName = 'TotalPagado'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Width = 100
        end
      end
      object lvDatosLineas: TcxGridLevel
        GridView = tvDatosLineas
      end
    end
    object grDisponible: TcxGrid [6]
      Left = 23
      Top = 36
      Width = 598
      Height = 204
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      LookAndFeel.NativeStyle = True
      object tvConsulta: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsDatos
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '###,###,##0.00'
            Kind = skSum
            Column = tvConsultaCapital
          end
          item
            Format = '###,###,##0.00'
            Kind = skSum
            Column = tvConsultaInteres
          end
          item
            Format = '###,###,##0.00'
            Kind = skSum
            Column = tvConsultaMora
          end
          item
            Format = '###,###,##0.00'
            Kind = skSum
            Column = tvConsultaTotalCuota
          end
          item
            Format = '###,###,##0.00'
            Kind = skSum
            Column = tvConsultaCapitalPagado
          end
          item
            Format = '###,###,##0.00'
            Kind = skSum
            Column = tvConsultaInteresPagado
          end
          item
            Format = '###,###,##0.00'
            Kind = skSum
            Column = tvConsultaPendiente
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.ImmediateEditor = False
        OptionsBehavior.IncSearch = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object tvConsultaPrestamoNo: TcxGridDBColumn
          Caption = 'Prestamo No.'
          DataBinding.FieldName = 'PrestamoNo'
          SortIndex = 0
          SortOrder = soAscending
          Width = 100
        end
        object tvConsultaCuotaNo: TcxGridDBColumn
          Caption = 'Cuota No.'
          DataBinding.FieldName = 'CuotaNo'
          SortIndex = 1
          SortOrder = soAscending
          Width = 76
        end
        object tvConsultaFechaVencimiento: TcxGridDBColumn
          Caption = 'Fecha'
          DataBinding.FieldName = 'FechaVencimiento'
          Width = 83
        end
        object tvConsultaCapital: TcxGridDBColumn
          DataBinding.FieldName = 'Capital'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Width = 82
        end
        object tvConsultaInteres: TcxGridDBColumn
          DataBinding.FieldName = 'Interes'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Width = 78
        end
        object tvConsultaMora: TcxGridDBColumn
          DataBinding.FieldName = 'Mora'
          Width = 68
        end
        object tvConsultaMoraBloqueada: TcxGridDBColumn
          Caption = 'Mora Bloqueada'
          DataBinding.FieldName = 'MoraBloqueada'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Width = 46
        end
        object tvConsultaTotalCuota: TcxGridDBColumn
          Caption = 'Total Cuota'
          DataBinding.FieldName = 'TotalCuota'
          Width = 94
        end
        object tvConsultaCapitalPagado: TcxGridDBColumn
          Caption = 'Capital Pagado'
          DataBinding.FieldName = 'CapitalPagado'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Width = 91
        end
        object tvConsultaInteresPagado: TcxGridDBColumn
          Caption = 'Interes Pagado'
          DataBinding.FieldName = 'InteresPagado'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Width = 90
        end
        object tvConsultaPendiente: TcxGridDBColumn
          DataBinding.FieldName = 'Pendiente'
          Width = 69
        end
        object tvConsultaEstatus: TcxGridDBColumn
          DataBinding.FieldName = 'Estatus'
          RepositoryItem = DM.cxICEstatusCuota
          Width = 67
        end
      end
      object lvConsulta: TcxGridLevel
        GridView = tvConsulta
      end
    end
    inherited lcDialogGroup_Root: TdxLayoutGroup
      inherited lcDialogGroup1: TdxLayoutGroup
        Caption = 'Disponibles'
        object lcDialogItem6: TdxLayoutItem
          Caption = 'New Item'
          ShowCaption = False
          Control = grDisponible
          ControlOptions.ShowBorder = False
        end
      end
      object lcDialogGroup4: TdxLayoutGroup [1]
        AutoAligns = [aaVertical]
        AlignHorz = ahCenter
        Caption = 'New Group'
        ShowCaption = False
        LayoutDirection = ldHorizontal
        object lcDialogItem2: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'cxButton2'
          ShowCaption = False
          Control = btpagar
          ControlOptions.ShowBorder = False
        end
        object lcDialogItem1: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'cxButton1'
          ShowCaption = False
          Control = bttodas
          ControlOptions.ShowBorder = False
        end
        object lcDialogItem3: TdxLayoutItem
          AutoAligns = [aaVertical]
          Caption = 'cxButton3'
          ShowCaption = False
          Control = btabonar
          ControlOptions.ShowBorder = False
        end
      end
      object lcDialogGroup3: TdxLayoutGroup [2]
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'Seleccionas'
        object lcDialogItem7: TdxLayoutItem
          AutoAligns = [aaHorizontal]
          AlignVert = avClient
          Caption = 'New Item'
          ShowCaption = False
          Control = grSeleccionadas
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object qrCoopPrestamoLineas: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    OnCalcFields = qrCoopPrestamoLineasCalcFields
    Parameters = <
      item
        Name = 'soc'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'Select l.* from CoopPrestamo p,CoopPrestamoLineas l'
      'where p.prestamono = l.prestamono'
      '  and p.socioid = :soc'
      '  and l.estatus = 0')
    Left = 154
    Top = 124
    object qrCoopPrestamoLineasPrestamoNo: TIntegerField
      FieldName = 'PrestamoNo'
    end
    object qrCoopPrestamoLineasCuotaNo: TIntegerField
      FieldName = 'CuotaNo'
    end
    object qrCoopPrestamoLineasFechaVencimiento: TDateTimeField
      FieldName = 'FechaVencimiento'
    end
    object qrCoopPrestamoLineasCapital: TBCDField
      FieldName = 'Capital'
      Precision = 19
    end
    object qrCoopPrestamoLineasInteres: TBCDField
      FieldName = 'Interes'
      Precision = 19
    end
    object qrCoopPrestamoLineasCapitalPagado: TBCDField
      FieldName = 'CapitalPagado'
      Precision = 19
    end
    object qrCoopPrestamoLineasInteresPagado: TBCDField
      FieldName = 'InteresPagado'
      Precision = 19
    end
    object qrCoopPrestamoLineasMoraPagada: TBCDField
      FieldName = 'MoraPagada'
      Precision = 19
    end
    object qrCoopPrestamoLineasEstatus: TBooleanField
      FieldName = 'Estatus'
    end
    object qrCoopPrestamoLineasMoraBloqueada: TBooleanField
      FieldName = 'MoraBloqueada'
    end
    object qrCoopPrestamoLineasTotalCuota: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'TotalCuota'
      Calculated = True
    end
    object qrCoopPrestamoLineasMora: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Mora'
      Calculated = True
    end
    object qrCoopPrestamoLineasPendiente: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Pendiente'
      Calculated = True
    end
  end
  object dsDatos: TDataSource
    AutoEdit = False
    DataSet = qrCoopPrestamoLineas
    Left = 244
    Top = 143
  end
  object qrCoopPagoPrestamoLineas: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'sec'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      '    FROM CoopPagoPrestamoLineas'
      'where Secuencia = :sec'
      '')
    Left = 354
    Top = 140
    object qrCoopPagoPrestamoLineasSecuencia: TIntegerField
      FieldName = 'Secuencia'
    end
    object qrCoopPagoPrestamoLineasPrestamoNo: TIntegerField
      DisplayLabel = 'Prestamo No.'
      FieldName = 'PrestamoNo'
    end
    object qrCoopPagoPrestamoLineasCuotaNo: TIntegerField
      DisplayLabel = 'Cuota No.'
      FieldName = 'CuotaNo'
    end
    object qrCoopPagoPrestamoLineasFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object qrCoopPagoPrestamoLineasCapitalPagado: TBCDField
      DisplayLabel = 'Capital Pagado'
      FieldName = 'CapitalPagado'
      Precision = 19
    end
    object qrCoopPagoPrestamoLineasInteresPagado: TBCDField
      DisplayLabel = 'Interes Pagado'
      FieldName = 'InteresPagado'
      Precision = 19
    end
    object qrCoopPagoPrestamoLineasMoraPagada: TBCDField
      DisplayLabel = 'Mora Pagada'
      FieldName = 'MoraPagada'
      Precision = 19
    end
    object qrCoopPagoPrestamoLineasTotalPagado: TBCDField
      DisplayLabel = 'Total Pagado'
      FieldName = 'TotalPagado'
      Precision = 19
    end
    object qrCoopPagoPrestamoLineasInteresAbono: TBCDField
      FieldName = 'InteresAbono'
      Precision = 19
    end
  end
  object dsDatotosLineas: TDataSource
    AutoEdit = False
    DataSet = qrCoopPagoPrestamoLineas
    Left = 412
    Top = 143
  end
end
