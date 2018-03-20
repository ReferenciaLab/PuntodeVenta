inherited frmDonaciones: TfrmDonaciones
  ActiveControl = pcDatos
  Caption = 'Donaciones'
  ClientHeight = 559
  ClientWidth = 931
  ExplicitWidth = 939
  ExplicitHeight = 593
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 931
    Height = 526
    ExplicitWidth = 931
    ExplicitHeight = 526
    inherited pcDatos: TcxPageControl
      Width = 736
      Height = 517
      ActivePage = tsMain
      ExplicitWidth = 736
      ExplicitHeight = 517
      ClientRectBottom = 517
      ClientRectRight = 736
      ClientRectTop = 24
      inherited tsMain: TcxTabSheet
        ExplicitWidth = 803
        ExplicitHeight = 502
        inherited lcGrid: TdxLayoutControl
          Width = 736
          Height = 493
          ExplicitWidth = 803
          ExplicitHeight = 502
          inherited dgDatos: TcxGrid
            Width = 808
            Height = 418
            ExplicitWidth = 808
            ExplicitHeight = 418
            inherited tvDatos: TcxGridDBTableView
              DataController.KeyFieldNames = 'DonacionID'
              object tvDatosDonacionID: TcxGridDBColumn
                DataBinding.FieldName = 'DonacionID'
              end
              object tvDatosFecha: TcxGridDBColumn
                DataBinding.FieldName = 'Fecha'
              end
              object tvDatosPacienteID: TcxGridDBColumn
                DataBinding.FieldName = 'PacienteID'
              end
              object tvDatosNotaEntrevista: TcxGridDBColumn
                DataBinding.FieldName = 'NotaEntrevista'
              end
              object tvDatosDonacionStatus: TcxGridDBColumn
                DataBinding.FieldName = 'DonacionStatus'
              end
            end
          end
        end
      end
      inherited tsDatos: TcxTabSheet
        ExplicitWidth = 803
        ExplicitHeight = 502
        inherited lcDatos: TdxLayoutControl
          Width = 807
          Height = 493
          Align = alLeft
          ExplicitWidth = 807
          ExplicitHeight = 502
          object dxLayoutControl2: TdxLayoutControl [0]
            Left = 0
            Top = 3
            Width = 768
            Height = 502
            Align = alLeft
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBackground = True
            ParentFont = False
            TabOrder = 0
            AutoContentSizes = [acsWidth, acsHeight]
            LookAndFeel = dmAppActions.lnfWeb
            OnCustomization = lcDatosCustomization
            object cxDBTextEdit5: TcxDBTextEdit
              Left = 288
              Top = 36
              AutoSize = False
              DataBinding.DataField = 'DonacionID'
              DataBinding.DataSource = dsDatos
              Style.BorderColor = clTeal
              Style.BorderStyle = ebsSingle
              Style.HotTrack = False
              TabOrder = 1
              Height = 21
              Width = 99
            end
            object cxDBTextEdit6: TcxDBTextEdit
              Left = 70
              Top = 36
              DataBinding.DataField = 'Fecha'
              DataBinding.DataSource = dsDatos
              Style.BorderColor = clTeal
              Style.BorderStyle = ebsSingle
              Style.HotTrack = False
              TabOrder = 0
              Width = 121
            end
            object cxDBTextEdit7: TcxDBTextEdit
              Left = 70
              Top = 90
              AutoSize = False
              DataBinding.DataField = 'Nombre'
              DataBinding.DataSource = dsEntradaPaciente
              Style.BorderColor = clTeal
              Style.BorderStyle = ebsSingle
              Style.HotTrack = False
              TabOrder = 3
              Height = 21
              Width = 651
            end
            object cxDBTextEdit8: TcxDBTextEdit
              Left = 70
              Top = 63
              DataBinding.DataField = 'PacienteID'
              DataBinding.DataSource = dsEntradaPaciente
              Style.BorderColor = clTeal
              Style.BorderStyle = ebsSingle
              Style.HotTrack = False
              TabOrder = 2
              Width = 377
            end
            object dxLayoutGroup3: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              ShowBorder = False
              object dxLayoutGroup4: TdxLayoutGroup
                Caption = 'Donacion'
                object dxLayoutControl2Group2: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object dxLayoutItem5: TdxLayoutItem
                    Caption = 'Fecha'
                    Control = cxDBTextEdit6
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutItem4: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'Numero Donacion'
                    Control = cxDBTextEdit5
                    ControlOptions.ShowBorder = False
                  end
                end
                object dxLayoutItem2: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Paciente'
                  Control = cxDBTextEdit8
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutItem3: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Nombre'
                  Control = cxDBTextEdit7
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutGroup5: TdxLayoutGroup
                Caption = 'Paciente'
              end
              object dxLayoutControl2Group1: TdxLayoutGroup
                Caption = 'Resultados'
              end
            end
          end
          inherited Group_Root: TdxLayoutGroup
            LayoutDirection = ldHorizontal
          end
        end
      end
    end
    object BtTransacciones: TcxButton [1]
      Left = 815
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Aprobar'
      TabOrder = 1
      OnClick = BtTransaccionesClick
    end
    object cxButton1: TcxButton [2]
      Left = 815
      Top = 38
      Width = 104
      Height = 25
      Caption = 'Descartar'
      TabOrder = 2
      OnClick = BtTransaccionesClick
    end
    inherited dxLayoutGroup2: TdxLayoutGroup
      inherited dxLayoutControl1Group_Root: TdxLayoutGroup
        inherited lgBotones: TdxLayoutGroup
          object dxLayoutControl1Item1: TdxLayoutItem
            Caption = 'cxButton1'
            ShowCaption = False
            Control = BtTransacciones
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item2: TdxLayoutItem
            AutoAligns = [aaVertical]
            ShowCaption = False
            Control = cxButton1
            ControlOptions.ShowBorder = False
          end
        end
      end
    end
  end
  inherited pnCaption: TPanel
    Width = 931
    ExplicitWidth = 931
  end
  inherited formStorage: TJvFormStorage
    Left = 560
    Top = 447
  end
  inherited dsDatos: TDataSource
    DataSet = qrDonaciones
    Left = 300
    Top = 3
  end
  inherited dxPrintGrid: TdxComponentPrinter
    Left = 388
    Top = 404
    inherited dxPrintGridLink: TdxGridReportLink
      ReportDocument.CreationDate = 38921.843721967590000000
      BuiltInReportLink = True
    end
    inherited dxPrintGridDatos: TdxLayoutControlReportLink
      ReportDocument.CreationDate = 38921.843721967590000000
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
  inherited cxGridPopupMenu: TcxGridPopupMenu
    Left = 512
    Top = 3
  end
  inherited cxGridStyles: TcxStyleRepository
    Left = 432
    Top = 405
  end
  inherited SaveDialog: TSaveDialog
    Left = 385
    Top = 448
  end
  inherited qryHelper: TADOQuery
    Left = 132
    Top = 3
  end
  inherited alEdit: TActionList
    Left = 348
    Top = 3
  end
  inherited pmCustom: TPopupMenu
    Left = 616
    Top = 3
  end
  inherited qrDefaultView: TADOQuery
    Left = 40
    Top = 3
  end
  inherited strView: TJvStrHolder
    Left = 476
    Top = 404
  end
  inherited strTableNames: TJvStrHolder
    Left = 520
    Top = 404
  end
  inherited cxStyleRepository1: TcxStyleRepository
    Left = 600
    Top = 445
  end
  inherited qrUserFields: TABSQuery
    Left = 480
    Top = 447
  end
  inherited qrVistas: TABSQuery
    Left = 524
    Top = 446
  end
  object qrDonaciones: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    BeforePost = qrDonacionesBeforePost
    OnNewRecord = qrDonacionesNewRecord
    Parameters = <>
    SQL.Strings = (
      'Select *  from BSDonacion'
      'where DonacionStatus = '#39'Pendiente'#39)
    Left = 192
    Top = 3
    object qrDonacionesDonacionID: TStringField
      FieldName = 'DonacionID'
    end
    object qrDonacionesFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object qrDonacionesPacienteID: TStringField
      FieldName = 'PacienteID'
      Size = 10
    end
    object qrDonacionesNotaEntrevista: TMemoField
      FieldName = 'NotaEntrevista'
      BlobType = ftMemo
    end
    object qrDonacionesDonacionStatus: TWideStringField
      FieldName = 'DonacionStatus'
      FixedChar = True
    end
  end
  object pmAcuerdoComercial: TPopupMenu
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    OnPopup = pmCustomPopup
    Left = 560
    Top = 3
    object Precios1: TMenuItem
      Caption = 'Precios'
    end
    object Descuentos1: TMenuItem
      Caption = 'Descuentos'
    end
  end
  object ActionList1: TActionList
    Left = 688
    Top = 3
  end
  object qrEntradaPaciente: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'rec'
        Attributes = [paSigned, paNullable]
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = Null
      end>
    SQL.Strings = (
      'Select *  from PTEntradaPaciente'
      'Where recid = :rec')
    Left = 24
    Top = 304
    object qrEntradaPacienteEntredaID: TStringField
      FieldName = 'EntredaID'
    end
    object qrEntradaPacienteFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object qrEntradaPacientePacienteID: TStringField
      DisplayLabel = 'Paciente'
      FieldName = 'PacienteID'
      Required = True
      Size = 10
    end
    object qrEntradaPacienteClienteID: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'ClienteID'
      Required = True
      Size = 10
    end
    object qrEntradaPacienteDoctorID: TStringField
      DisplayLabel = 'Doctor'
      FieldName = 'DoctorID'
      Size = 10
    end
    object qrEntradaPacientePolizaID: TStringField
      DisplayLabel = 'Poliza'
      FieldName = 'PolizaID'
    end
    object qrEntradaPacienteEnClinica: TBooleanField
      FieldName = 'EnClinica'
    end
    object qrEntradaPacienteRecordClinica: TStringField
      FieldName = 'RecordClinica'
    end
    object qrEntradaPacienteResultadoPaciente: TIntegerField
      FieldName = 'ResultadoPaciente'
    end
    object qrEntradaPacienteResultadoDoctor: TIntegerField
      FieldName = 'ResultadoDoctor'
    end
    object qrEntradaPacienteFechaPrometida: TDateTimeField
      DisplayLabel = 'Fecha Prometida'
      FieldName = 'FechaPrometida'
    end
    object qrEntradaPacienteHoraPrometida: TStringField
      FieldName = 'HoraPrometida'
      Size = 10
    end
    object qrEntradaPacienteFlebotomistaID: TStringField
      FieldName = 'FlebotomistaID'
      Size = 10
    end
    object qrEntradaPacienteNota: TMemoField
      FieldName = 'Nota'
      BlobType = ftMemo
    end
    object qrEntradaPacienteCoberturaConfirmada: TBooleanField
      FieldName = 'CoberturaConfirmada'
    end
    object qrEntradaPacienteProyectoID: TStringField
      FieldName = 'ProyectoID'
    end
    object qrEntradaPacienteRecid: TLargeintField
      FieldName = 'Recid'
    end
    object qrEntradaPacienteBruto: TBCDField
      FieldName = 'Bruto'
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
    object qrEntradaPacienteDescuento: TBCDField
      FieldName = 'Descuento'
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
    object qrEntradaPacienteSubTotal: TBCDField
      FieldName = 'SubTotal'
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
    object qrEntradaPacienteCoberturaSeguro: TBCDField
      FieldName = 'CoberturaSeguro'
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
    object qrEntradaPacienteNeto: TBCDField
      FieldName = 'Neto'
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
    object qrEntradaPacienteNombrePaciente: TStringField
      FieldName = 'NombrePaciente'
      Size = 80
    end
    object qrEntradaPacienteDireccion: TMemoField
      FieldName = 'Direccion'
      BlobType = ftMemo
    end
    object qrEntradaPacienteTelefonos: TStringField
      FieldName = 'Telefonos'
      Size = 16
    end
    object qrEntradaPacienteEmail: TStringField
      FieldName = 'Email'
      Size = 50
    end
    object qrEntradaPacienteClienteNombre: TStringField
      FieldName = 'ClienteNombre'
      Size = 80
    end
    object qrEntradaPacienteSucursalId: TStringField
      FieldName = 'SucursalId'
      Size = 10
    end
    object qrEntradaPacienteUserID: TStringField
      FieldName = 'UserID'
      Size = 10
    end
    object qrEntradaPacienteTotalPendiente: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TotalPendiente'
      DisplayFormat = '##,###,##0.00'
      Calculated = True
    end
    object qrEntradaPacienteCobroID: TStringField
      FieldName = 'CobroID'
      Size = 10
    end
    object qrEntradaPacienteTotalPagado: TBCDField
      FieldName = 'TotalPagado'
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
    object qrEntradaPacienteHoraEntrada: TStringField
      FieldName = 'HoraEntrada'
      Size = 10
    end
    object qrEntradaPacientePrioridad: TIntegerField
      FieldName = 'Prioridad'
    end
    object qrEntradaPacienteFax: TStringField
      FieldName = 'Fax'
      Size = 16
    end
    object qrEntradaPacienteTipoDocumento: TIntegerField
      FieldName = 'TipoDocumento'
      Required = True
    end
    object qrEntradaPacienteCoberturaPorc: TBCDField
      FieldName = 'CoberturaPorc'
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
    object qrEntradaPacienteCoberturaValor: TBCDField
      FieldName = 'CoberturaValor'
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
    object qrEntradaPacienteDescuentoPorc: TBCDField
      FieldName = 'DescuentoPorc'
      Precision = 19
    end
    object qrEntradaPacienteDescuentoValor: TBCDField
      FieldName = 'DescuentoValor'
      Precision = 19
    end
    object qrEntradaPacienteAprobadoPor: TStringField
      FieldName = 'AprobadoPor'
      Size = 50
    end
    object qrEntradaPacienteMuestraNo: TStringField
      FieldName = 'MuestraNo'
    end
    object qrEntradaPacienteAprobacionNo: TStringField
      FieldName = 'AprobacionNo'
    end
    object qrEntradaPacienteMonedaID: TStringField
      FieldName = 'MonedaID'
      Size = 3
    end
    object qrEntradaPacienteFechaEntrada: TDateTimeField
      DisplayLabel = 'Fecha de Ingreso'
      FieldName = 'FechaEntrada'
    end
    object qrEntradaPacienteCoberturaExpPorc: TBooleanField
      FieldName = 'CoberturaExpPorc'
    end
    object qrEntradaPacienteEdadPaciente: TBCDField
      FieldName = 'EdadPaciente'
      Precision = 19
    end
    object qrEntradaPacienteNombreDoctor: TStringField
      FieldName = 'NombreDoctor'
      Size = 80
    end
    object qrEntradaPacientePublicarInternet: TBooleanField
      FieldName = 'PublicarInternet'
    end
    object qrEntradaPacienteOrigen: TStringField
      FieldName = 'Origen'
      Required = True
      Size = 10
    end
    object qrEntradaPacienteCarnet: TStringField
      FieldName = 'Carnet'
    end
    object qrEntradaPacientePublicarInternetDoctor: TBooleanField
      FieldName = 'PublicarInternetDoctor'
    end
    object qrEntradaPacienteCuadreGlobal: TStringField
      FieldName = 'CuadreGlobal'
    end
    object qrEntradaPacienteCuadreUsuario: TStringField
      FieldName = 'CuadreUsuario'
    end
    object qrEntradaPacienteDescAutorizadoPor: TStringField
      FieldName = 'DescAutorizadoPor'
      Size = 10
    end
    object qrEntradaPacienteGastosVarios: TBCDField
      FieldName = 'GastosVarios'
      Precision = 19
    end
    object qrEntradaPacienteNoAS400: TBooleanField
      FieldName = 'NoAS400'
    end
    object qrEntradaPacienteNoAxapta: TBooleanField
      FieldName = 'NoAxapta'
    end
    object qrEntradaPacienteNoFactura: TBooleanField
      FieldName = 'NoFactura'
    end
    object qrEntradaPacienteFactExterior: TBooleanField
      FieldName = 'FactExterior'
    end
    object qrEntradaPacienteHold: TBooleanField
      FieldName = 'Hold'
    end
    object qrEntradaPacienteRepMuestra: TBooleanField
      FieldName = 'RepMuestra'
    end
    object qrEntradaPacienteEntradaIdAnt: TStringField
      FieldName = 'EntradaIdAnt'
    end
  end
  object qrEntradaPacienteDetalle: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'rec'
        Attributes = [paSigned, paNullable]
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = Null
      end>
    SQL.Strings = (
      'Select *  from PTEntradaPacienteDetalle'
      'Where refrecid = :rec')
    Left = 24
    Top = 336
    object qrEntradaPacienteDetallePruebaID: TStringField
      FieldName = 'PruebaID'
    end
    object qrEntradaPacienteDetalleComboPruebaID: TStringField
      FieldName = 'ComboPruebaID'
      Size = 10
    end
    object qrEntradaPacienteDetallePrecio: TBCDField
      FieldName = 'Precio'
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
    object qrEntradaPacienteDetalleDescuento: TBCDField
      FieldName = 'Descuento'
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
    object qrEntradaPacienteDetalleDescuentoExtra: TBCDField
      FieldName = 'DescuentoExtra'
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
    object qrEntradaPacienteDetalleCodigoAutorizacion: TStringField
      FieldName = 'CodigoAutorizacion'
    end
    object qrEntradaPacienteDetalleTotalLinea: TBCDField
      FieldName = 'TotalLinea'
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
    object qrEntradaPacienteDetalleRefRecid: TLargeintField
      FieldName = 'RefRecid'
    end
    object qrEntradaPacienteDetalleSecuencia: TLargeintField
      FieldName = 'Secuencia'
    end
    object qrEntradaPacienteDetalleDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 80
    end
    object qrEntradaPacienteDetalleDescPct: TBCDField
      FieldName = 'DescPct'
      DisplayFormat = '##0.00'
      Precision = 19
    end
    object qrEntradaPacienteDetalleCoberturaAplica: TBooleanField
      FieldName = 'CoberturaAplica'
    end
    object qrEntradaPacienteDetalleCoberturaEspecial: TBCDField
      FieldName = 'CoberturaEspecial'
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
    object qrEntradaPacienteDetalleCoberturaEspecialPorc: TBCDField
      FieldName = 'CoberturaEspecialPorc'
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
    object qrEntradaPacienteDetalleCoberturaAplicada: TBCDField
      FieldName = 'CoberturaAplicada'
      DisplayFormat = '##,###,##0.00'
      Precision = 19
    end
    object qrEntradaPacienteDetalleDescuentoLineaAplicado: TBCDField
      FieldName = 'DescuentoLineaAplicado'
      Precision = 19
    end
    object qrEntradaPacienteDetalleMuestraNo: TStringField
      FieldName = 'MuestraNo'
    end
    object qrEntradaPacienteDetalleComentario: TMemoField
      FieldName = 'Comentario'
      BlobType = ftMemo
    end
    object qrEntradaPacienteDetalleCoberturaExpPorc: TBooleanField
      FieldName = 'CoberturaExpPorc'
    end
    object qrEntradaPacienteDetalleRepMuestra: TBooleanField
      FieldName = 'RepMuestra'
    end
    object qrEntradaPacienteDetalleMuestraAnt: TStringField
      FieldName = 'MuestraAnt'
    end
  end
  object dsEntradaPaciente: TDataSource
    AutoEdit = False
    DataSet = Paciente
    Left = 64
    Top = 304
  end
  object dsEntradaPacienteDetalle: TDataSource
    DataSet = qrEntradaPacienteDetalle
    Left = 72
    Top = 336
  end
  object ppEntradaPaciente: TppDBPipeline
    DataSource = dsEntradaPaciente
    UserName = 'EntradaPaciente'
    Left = 160
    Top = 288
  end
  object ppEntradaPacienteDetalle: TppDBPipeline
    DataSource = dsEntradaPacienteDetalle
    UserName = 'EntradaPacienteDetalle'
    Left = 160
    Top = 344
    object ppEntradaPacienteDetalleppField1: TppField
      FieldAlias = 'PruebaID'
      FieldName = 'PruebaID'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppEntradaPacienteDetalleppField2: TppField
      FieldAlias = 'ComboPruebaID'
      FieldName = 'ComboPruebaID'
      FieldLength = 10
      DisplayWidth = 10
      Position = 1
    end
    object ppEntradaPacienteDetalleppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'Precio'
      FieldName = 'Precio'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 2
    end
    object ppEntradaPacienteDetalleppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'Descuento'
      FieldName = 'Descuento'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 3
    end
    object ppEntradaPacienteDetalleppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'DescuentoExtra'
      FieldName = 'DescuentoExtra'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 4
    end
    object ppEntradaPacienteDetalleppField6: TppField
      FieldAlias = 'CodigoAutorizacion'
      FieldName = 'CodigoAutorizacion'
      FieldLength = 20
      DisplayWidth = 20
      Position = 5
    end
    object ppEntradaPacienteDetalleppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'TotalLinea'
      FieldName = 'TotalLinea'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 6
    end
    object ppEntradaPacienteDetalleppField8: TppField
      FieldAlias = 'RefRecid'
      FieldName = 'RefRecid'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 7
    end
    object ppEntradaPacienteDetalleppField9: TppField
      FieldAlias = 'Secuencia'
      FieldName = 'Secuencia'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 8
    end
    object ppEntradaPacienteDetalleppField10: TppField
      FieldAlias = 'Descripcion'
      FieldName = 'Descripcion'
      FieldLength = 80
      DisplayWidth = 80
      Position = 9
    end
    object ppEntradaPacienteDetalleppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'DescPct'
      FieldName = 'DescPct'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 10
    end
    object ppEntradaPacienteDetalleppField12: TppField
      FieldAlias = 'CoberturaAplica'
      FieldName = 'CoberturaAplica'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 11
    end
    object ppEntradaPacienteDetalleppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'CoberturaEspecial'
      FieldName = 'CoberturaEspecial'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 12
    end
    object ppEntradaPacienteDetalleppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'CoberturaEspecialPorc'
      FieldName = 'CoberturaEspecialPorc'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 13
    end
    object ppEntradaPacienteDetalleppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'CoberturaAplicada'
      FieldName = 'CoberturaAplicada'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 14
    end
    object ppEntradaPacienteDetalleppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'DescuentoLineaAplicado'
      FieldName = 'DescuentoLineaAplicado'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 20
      Position = 15
    end
    object ppEntradaPacienteDetalleppField17: TppField
      FieldAlias = 'MuestraNo'
      FieldName = 'MuestraNo'
      FieldLength = 20
      DisplayWidth = 20
      Position = 16
    end
    object ppEntradaPacienteDetalleppField18: TppField
      FieldAlias = 'Comentario'
      FieldName = 'Comentario'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppEntradaPacienteDetalleppField19: TppField
      FieldAlias = 'CoberturaExpPorc'
      FieldName = 'CoberturaExpPorc'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 18
    end
    object ppEntradaPacienteDetalleppField20: TppField
      FieldAlias = 'RepMuestra'
      FieldName = 'RepMuestra'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 19
    end
    object ppEntradaPacienteDetalleppField21: TppField
      FieldAlias = 'MuestraAnt'
      FieldName = 'MuestraAnt'
      FieldLength = 20
      DisplayWidth = 20
      Position = 20
    end
  end
  object Paciente: TADOTable
    Connection = DM.DataBase
    CursorType = ctStatic
    IndexFieldNames = 'PacienteID'
    MasterFields = 'PacienteID'
    MasterSource = dsDatos
    TableName = 'PTPaciente'
    Left = 24
    Top = 256
    object PacientePacienteID: TStringField
      FieldName = 'PacienteID'
      Size = 10
    end
    object PacientePacientePrincipalID: TStringField
      FieldName = 'PacientePrincipalID'
      Size = 10
    end
    object PacienteTipoIdentificacion: TIntegerField
      FieldName = 'TipoIdentificacion'
    end
    object PacienteIdentificacion: TStringField
      FieldName = 'Identificacion'
    end
    object PacienteNombre: TStringField
      FieldName = 'Nombre'
      Size = 80
    end
    object PacienteDireccion: TMemoField
      FieldName = 'Direccion'
      BlobType = ftMemo
    end
    object PacienteTelefono: TStringField
      FieldName = 'Telefono'
      Size = 16
    end
    object PacienteTelefono2: TStringField
      FieldName = 'Telefono2'
      Size = 16
    end
    object PacienteFax: TStringField
      FieldName = 'Fax'
      Size = 16
    end
    object PacienteeMail: TStringField
      FieldName = 'eMail'
      Size = 50
    end
    object PacientePreferenciaResultado: TIntegerField
      FieldName = 'PreferenciaResultado'
    end
    object PacienteSeguroID: TStringField
      FieldName = 'SeguroID'
      Size = 10
    end
    object PacientePolizaSeguro: TStringField
      FieldName = 'PolizaSeguro'
    end
    object PacienteFechaNacimiento: TDateTimeField
      FieldName = 'FechaNacimiento'
    end
    object PacienteSexo: TIntegerField
      FieldName = 'Sexo'
    end
    object PacienteCodigoAxapta: TStringField
      FieldName = 'CodigoAxapta'
      Size = 10
    end
    object PacienteCiudadId: TStringField
      FieldName = 'CiudadId'
      Size = 10
    end
    object PacientePublicarInternet: TBooleanField
      FieldName = 'PublicarInternet'
    end
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 760
    Top = 8
  end
end
