inherited frmDatosUsuariosInternetDoctor: TfrmDatosUsuariosInternetDoctor
  Caption = 'Datos de los Usuarios de Resultados por Internet (DOCTORES).'
  ClientHeight = 374
  ClientWidth = 681
  ExplicitWidth = 689
  ExplicitHeight = 408
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 681
    Height = 341
    ExplicitWidth = 681
    ExplicitHeight = 341
    inherited pcDatos: TcxPageControl
      Width = 736
      Height = 517
      ActivePage = tsDatos
      ExplicitWidth = 736
      ExplicitHeight = 517
      ClientRectBottom = 517
      ClientRectRight = 736
      ClientRectTop = 24
      inherited tsMain: TcxTabSheet
        ExplicitWidth = 657
        ExplicitHeight = 317
        inherited lcGrid: TdxLayoutControl
          Width = 736
          Height = 493
          ExplicitWidth = 657
          ExplicitHeight = 317
          inherited dgDatos: TcxGrid
            Width = 550
            Height = 240
            ExplicitWidth = 550
            ExplicitHeight = 240
            inherited tvDatos: TcxGridDBTableView
              DataController.KeyFieldNames = 'PruebaID'
              object tvDatosNombre: TcxGridDBColumn
                DataBinding.FieldName = 'Nombre'
                Options.Editing = False
                Width = 200
              end
              object tvDatosIdentificacion: TcxGridDBColumn
                Caption = 'Cedula - RNC'
                DataBinding.FieldName = 'Identificacion'
                Options.Editing = False
                Width = 125
              end
              object tvDatosUsuarioInternet: TcxGridDBColumn
                Caption = 'Usuario'
                DataBinding.FieldName = 'UsuarioInternet'
                Options.Editing = False
                Width = 90
              end
              object tvDatosClaveInternet: TcxGridDBColumn
                Caption = 'Clave'
                DataBinding.FieldName = 'ClaveInternet'
                Options.Editing = False
                Width = 90
              end
              object tvDatosClienteId: TcxGridDBColumn
                DataBinding.FieldName = 'ClienteId'
                Options.Editing = False
                Width = 90
              end
              object tvDatosTipo: TcxGridDBColumn
                DataBinding.FieldName = 'Tipo'
                Options.Editing = False
                Width = 50
              end
              object tvDatosActualizado: TcxGridDBColumn
                Caption = 'Est.'
                DataBinding.FieldName = 'Actualizado'
                Options.Editing = False
                Width = 50
              end
            end
          end
        end
      end
      inherited tsDatos: TcxTabSheet
        ExplicitWidth = 657
        ExplicitHeight = 317
        inherited lcDatos: TdxLayoutControl
          Width = 736
          Height = 493
          ExplicitWidth = 657
          ExplicitHeight = 317
          object EdClave: TcxDBTextEdit [0]
            Tag = 99
            Left = 91
            Top = 90
            Hint = 'Haga Click En el Boton PRUEBAS'
            DataBinding.DataField = 'ClaveInternet'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 2
            Width = 145
          end
          object EdNombre: TcxDBTextEdit [1]
            Left = 91
            Top = 144
            DataBinding.DataField = 'Nombre'
            DataBinding.DataSource = dsDatos
            Properties.CharCase = ecUpperCase
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 4
            Width = 400
          end
          object CbEstatus: TcxDBCheckBox [2]
            Left = 91
            Top = 198
            DataBinding.DataField = 'Actualizado'
            DataBinding.DataSource = dsDatos
            Properties.Alignment = taLeftJustify
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 6
            Width = 145
          end
          object EdClienteId: TcxDBTextEdit [3]
            Left = 91
            Top = 36
            DataBinding.DataField = 'ClienteId'
            DataBinding.DataSource = dsDatos
            ParentShowHint = False
            Properties.CharCase = ecUpperCase
            ShowHint = False
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 0
            Width = 145
          end
          object CbTipo: TcxDBImageComboBox [4]
            Left = 91
            Top = 171
            DataBinding.DataField = 'Tipo'
            DataBinding.DataSource = dsDatos
            Properties.Items = <
              item
                Description = 'CLIENTE'
                ImageIndex = 0
                Value = 'C'
              end
              item
                Description = 'PACIENTE'
                Value = 'P'
              end>
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 5
            Width = 145
          end
          object EdUserId: TcxDBTextEdit [5]
            Left = 91
            Top = 63
            DataBinding.DataField = 'UsuarioInternet'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 1
            Width = 145
          end
          object EdCedula: TcxDBTextEdit [6]
            Left = 91
            Top = 117
            DataBinding.DataField = 'Identificacion'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 3
            Width = 145
          end
          inherited Group_Root: TdxLayoutGroup
            object lcDatosGroup1: TdxLayoutGroup
              Caption = 'General'
              object lcDatosItem10: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Doctor Id'
                Control = EdClienteId
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem3: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'User Id'
                Control = EdUserId
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem1: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Clave'
                Control = EdClave
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem4: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Identificacion'
                Control = EdCedula
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem2: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Nombre'
                Control = EdNombre
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem5: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Tipo'
                Control = CbTipo
                ControlOptions.ShowBorder = False
              end
              object lcDatosItem6: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Actualizado'
                Control = CbEstatus
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
      end
    end
  end
  inherited pnCaption: TPanel
    Width = 681
    ExplicitWidth = 681
  end
  inherited dsDatos: TDataSource
    DataSet = qrUsuariosInternet
    Left = 196
    Top = 2
  end
  inherited dxPrintGrid: TdxComponentPrinter
    inherited dxPrintGridLink: TdxGridReportLink
      ReportDocument.CreationDate = 38922.606807361110000000
      BuiltInReportLink = True
    end
    inherited dxPrintGridDatos: TdxLayoutControlReportLink
      ReportDocument.CreationDate = 38922.606807361110000000
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
  inherited cxGridPopupMenu: TcxGridPopupMenu
    Left = 624
    Top = 204
  end
  inherited qryHelper: TADOQuery
    Left = 508
    Top = 2
  end
  inherited alEdit: TActionList
    Top = 88
  end
  inherited pmCustom: TPopupMenu
    Left = 440
    Top = 92
  end
  inherited qrDefaultView: TADOQuery
    Left = 456
    Top = 2
  end
  inherited strView: TJvStrHolder
    Top = 92
  end
  inherited strTableNames: TJvStrHolder
    Left = 208
    Top = 332
  end
  inherited cxStyleRepository1: TcxStyleRepository
    Left = 344
    Top = 276
  end
  object qrUsuariosInternet: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'clt'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = ''
      end>
    SQL.Strings = (
      'SELECT * FROM PTUsuariosInternet'
      'WHERE ClienteId = :clt'
      'AND Tipo = '#39'D'#39)
    Left = 148
    Top = 2
    object qrUsuariosInternetClienteId: TStringField
      FieldName = 'ClienteId'
      ReadOnly = True
      Size = 10
    end
    object qrUsuariosInternetUsuarioInternet: TStringField
      FieldName = 'UsuarioInternet'
      ReadOnly = True
      Size = 10
    end
    object qrUsuariosInternetClaveInternet: TStringField
      FieldName = 'ClaveInternet'
      ReadOnly = True
      Size = 10
    end
    object qrUsuariosInternetNombre: TStringField
      FieldName = 'Nombre'
      ReadOnly = True
      Size = 100
    end
    object qrUsuariosInternetIdentificacion: TStringField
      FieldName = 'Identificacion'
      ReadOnly = True
    end
    object qrUsuariosInternetTipo: TStringField
      FieldName = 'Tipo'
      ReadOnly = True
      Size = 2
    end
    object qrUsuariosInternetActualizado: TStringField
      FieldName = 'Actualizado'
      ReadOnly = True
      Size = 2
    end
  end
end
