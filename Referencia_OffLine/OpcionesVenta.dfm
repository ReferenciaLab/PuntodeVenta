inherited frmOpcionesVenta: TfrmOpcionesVenta
  Left = 82
  Top = 173
  ActiveControl = cxPageControl1
  Caption = 'Parametros'
  ClientHeight = 542
  ClientWidth = 907
  Position = poDesigned
  ExplicitTop = -27
  ExplicitWidth = 923
  ExplicitHeight = 580
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcDatos: TdxLayoutControl
    Width = 907
    Height = 509
    ExplicitWidth = 907
    ExplicitHeight = 509
    object cxPageControl1: TcxPageControl [0]
      Left = 11
      Top = 11
      Width = 919
      Height = 447
      ActivePage = cxTabSheet2
      Align = alClient
      BiDiMode = bdLeftToRight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
      ClientRectBottom = 447
      ClientRectRight = 919
      ClientRectTop = 24
      object cxTabSheet1: TcxTabSheet
        Caption = 'Secuencias'
        ImageIndex = 0
        ExplicitWidth = 885
        ExplicitHeight = 463
        object dxLayoutControl1: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 919
          Height = 423
          Align = alClient
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
          ExplicitWidth = 885
          ExplicitHeight = 463
          object cxDBTextEdit7: TcxDBTextEdit
            Left = 105
            Top = 36
            DataBinding.DataField = 'IndetificadorFactura'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 0
            Width = 100
          end
          object cxDBSpinEdit11: TcxDBSpinEdit
            Left = 105
            Top = 63
            DataBinding.DataField = 'SecuenciaEntrada'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            TabOrder = 1
            Width = 100
          end
          object cxDBTextEdit8: TcxDBTextEdit
            Left = 317
            Top = 36
            DataBinding.DataField = 'IdentificadorDevolucion'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 2
            Width = 100
          end
          object cxDBSpinEdit12: TcxDBSpinEdit
            Left = 317
            Top = 63
            DataBinding.DataField = 'SecuenciaDev'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            TabOrder = 3
            Width = 100
          end
          object cxDBTextEdit9: TcxDBTextEdit
            Left = 529
            Top = 36
            DataBinding.DataField = 'IdentificadorCotizacion'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 4
            Width = 100
          end
          object cxDBSpinEdit13: TcxDBSpinEdit
            Left = 529
            Top = 63
            DataBinding.DataField = 'SecuenciaCot'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            TabOrder = 5
            Width = 100
          end
          object cxDBCheckBox9: TcxDBCheckBox
            Left = 529
            Top = 208
            DataBinding.DataField = 'AutoNumerarClientes'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 20
            Width = 100
          end
          object cxDBSpinEdit14: TcxDBSpinEdit
            Left = 529
            Top = 235
            DataBinding.DataField = 'SecuenciaCliente'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            TabOrder = 21
            Width = 100
          end
          object cxDBCheckBox10: TcxDBCheckBox
            Left = 741
            Top = 208
            DataBinding.DataField = 'AutoNumerarPacientes'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 22
            Width = 100
          end
          object cxDBSpinEdit15: TcxDBSpinEdit
            Left = 741
            Top = 235
            DataBinding.DataField = 'SecuenciaPaciente'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            TabOrder = 23
            Width = 100
          end
          object cxDBCheckBox11: TcxDBCheckBox
            Left = 105
            Top = 208
            DataBinding.DataField = 'AutoNumerarPruebas'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 16
            Width = 100
          end
          object cxDBSpinEdit16: TcxDBSpinEdit
            Left = 105
            Top = 235
            DataBinding.DataField = 'SecuenciaPruebas'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            TabOrder = 17
            Width = 100
          end
          object cxDBSpinEdit17: TcxDBSpinEdit
            Left = 317
            Top = 149
            DataBinding.DataField = 'SecuenciaMuestra'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            TabOrder = 11
            Width = 100
          end
          object cxDBTextEdit10: TcxDBTextEdit
            Left = 317
            Top = 122
            DataBinding.DataField = 'IdentificadorMuestra'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 10
            Width = 100
          end
          object cxDBTextEdit11: TcxDBTextEdit
            Left = 105
            Top = 122
            DataBinding.DataField = 'IdentificadorRecibo'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 8
            Width = 100
          end
          object cxDBSpinEdit18: TcxDBSpinEdit
            Left = 105
            Top = 149
            DataBinding.DataField = 'SecuenciaRecibo'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            TabOrder = 9
            Width = 100
          end
          object cxDBTextEdit12: TcxDBTextEdit
            Left = 741
            Top = 36
            DataBinding.DataField = 'IdentificadorNC'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 6
            Width = 100
          end
          object cxDBSpinEdit19: TcxDBSpinEdit
            Left = 741
            Top = 63
            DataBinding.DataField = 'SecuenciaNC'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            TabOrder = 7
            Width = 100
          end
          object cxDBCheckBox16: TcxDBCheckBox
            Left = 317
            Top = 208
            DataBinding.DataField = 'AutoNumerarDoctor'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 18
            Width = 100
          end
          object cxDBSpinEdit20: TcxDBSpinEdit
            Left = 317
            Top = 235
            DataBinding.DataField = 'SecuenciaDoctor'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            TabOrder = 19
            Width = 100
          end
          object cxDBTextEdit1: TcxDBTextEdit
            Left = 529
            Top = 122
            DataBinding.DataField = 'IdentificadorCuadre'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 12
            Width = 100
          end
          object cxDBSpinEdit1: TcxDBSpinEdit
            Left = 529
            Top = 149
            DataBinding.DataField = 'SecuenciaCuadre'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            TabOrder = 13
            Width = 100
          end
          object cxDBCheckBox1: TcxDBCheckBox
            Left = 741
            Top = 122
            DataBinding.DataField = 'AutoNumerarCombos'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 14
            Width = 100
          end
          object cxDBSpinEdit2: TcxDBSpinEdit
            Left = 741
            Top = 149
            DataBinding.DataField = 'SecuenciaCombos'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            TabOrder = 15
            Width = 100
          end
          object cxDBCheckBox2: TcxDBCheckBox
            Left = 105
            Top = 294
            DataBinding.DataField = 'AutoNumerarTarjetas'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 24
            Width = 100
          end
          object cxDBSpinEdit3: TcxDBSpinEdit
            Left = 105
            Top = 321
            DataBinding.DataField = 'SecuenciaTarjetas'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            TabOrder = 25
            Width = 100
          end
          object dxLayoutGroup1: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            ShowBorder = False
            object dxLayoutControl1Group5: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              ShowBorder = False
              object dxLayoutControl1Group1: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object dxLayoutGroup01: TdxLayoutGroup
                  AutoAligns = []
                  Caption = 'Factura'
                  object dxLayoutItem1: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'Identificador'
                    Control = cxDBTextEdit7
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutItem2: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'Proximo Numero'
                    Control = cxDBSpinEdit11
                    ControlOptions.ShowBorder = False
                  end
                end
                object dxLayoutGroup02: TdxLayoutGroup
                  AutoAligns = [aaVertical]
                  Caption = 'Devoluci'#243'n'
                  object dxLayoutItem3: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'Identificador'
                    Control = cxDBTextEdit8
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutItem4: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'Proximo Numero'
                    Control = cxDBSpinEdit12
                    ControlOptions.ShowBorder = False
                  end
                end
                object dxLayoutGroup03: TdxLayoutGroup
                  AutoAligns = [aaVertical]
                  Caption = 'Cotizaci'#243'n'
                  object dxLayoutItem5: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'Identificador'
                    Control = cxDBTextEdit9
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutItem6: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'Proximo Numero'
                    Control = cxDBSpinEdit13
                    ControlOptions.ShowBorder = False
                  end
                end
                object dxLayoutGroup04: TdxLayoutGroup
                  Caption = 'Nota Credito'
                  object dxLayoutItem9: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'Identificador'
                    Control = cxDBTextEdit12
                    ControlOptions.ShowBorder = False
                  end
                  object dxLayoutItem10: TdxLayoutItem
                    AutoAligns = [aaVertical]
                    Caption = 'Proximo Numero'
                    Control = cxDBSpinEdit19
                    ControlOptions.ShowBorder = False
                  end
                end
              end
              object dxLayoutControl1Group29: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object dxLayoutControl1Group2: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object dxLayoutGroup05: TdxLayoutGroup
                    AutoAligns = [aaVertical]
                    Caption = 'Recibos'
                    object dxLayoutItem7: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      Caption = 'Identificador'
                      Control = cxDBTextEdit11
                      ControlOptions.ShowBorder = False
                    end
                    object dxLayoutItem8: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      Caption = 'Proximo Numero'
                      Control = cxDBSpinEdit18
                      ControlOptions.ShowBorder = False
                    end
                  end
                  object dxLayoutGroup06: TdxLayoutGroup
                    AutoAligns = [aaVertical]
                    Caption = 'Muestra'
                    object dxLayoutItem11: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      Caption = 'Identificador'
                      Control = cxDBTextEdit10
                      ControlOptions.ShowBorder = False
                    end
                    object dxLayoutItem12: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      Caption = 'Proximo Numero'
                      Control = cxDBSpinEdit17
                      ControlOptions.ShowBorder = False
                    end
                  end
                  object dxLayoutGroup07: TdxLayoutGroup
                    AutoAligns = [aaVertical]
                    Caption = 'Cuadre'
                    object dxLayoutControl1Item1: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      Caption = 'Identificador'
                      Control = cxDBTextEdit1
                      ControlOptions.ShowBorder = False
                    end
                    object dxLayoutControl1Item2: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      Caption = 'Proximo Numero'
                      Control = cxDBSpinEdit1
                      ControlOptions.ShowBorder = False
                    end
                  end
                  object dxLayoutGroup08: TdxLayoutGroup
                    AutoAligns = [aaVertical]
                    Caption = 'Combos'
                    object dxLayoutControl1Item3: TdxLayoutItem
                      Caption = 'AutoNumerar'
                      Control = cxDBCheckBox1
                      ControlOptions.ShowBorder = False
                    end
                    object dxLayoutControl1Item4: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      Caption = 'Proximo Numero'
                      Control = cxDBSpinEdit2
                      ControlOptions.ShowBorder = False
                    end
                  end
                end
                object dxLayoutControl1Group3: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object dxLayoutGroup09: TdxLayoutGroup
                    AutoAligns = [aaVertical]
                    Caption = 'Prueba'
                    object dxLayoutItem17: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      Caption = 'Autonumerar'
                      Control = cxDBCheckBox11
                      ControlOptions.ShowBorder = False
                    end
                    object dxLayoutItem18: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      Caption = 'Proximo Numero'
                      Control = cxDBSpinEdit16
                      ControlOptions.ShowBorder = False
                    end
                  end
                  object dxLayoutGroup10: TdxLayoutGroup
                    AutoAligns = []
                    Caption = 'Doctores'
                    object dxLayoutItem19: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      Caption = 'Autonumerar'
                      Control = cxDBCheckBox16
                      ControlOptions.ShowBorder = False
                    end
                    object dxLayoutItem20: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      Caption = 'Proximo Numero'
                      Control = cxDBSpinEdit20
                      ControlOptions.ShowBorder = False
                    end
                  end
                  object dxLayoutGroup11: TdxLayoutGroup
                    AutoAligns = []
                    Caption = 'Cliente'
                    object dxLayoutItem13: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      Caption = 'Autonumerar'
                      Control = cxDBCheckBox9
                      ControlOptions.ShowBorder = False
                    end
                    object dxLayoutItem14: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      Caption = 'Proximo Numero'
                      Control = cxDBSpinEdit14
                      ControlOptions.ShowBorder = False
                    end
                  end
                  object dxLayoutGroup12: TdxLayoutGroup
                    AutoAligns = [aaVertical]
                    Caption = 'Paciente'
                    object dxLayoutItem15: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      Caption = 'Autonumerar'
                      Control = cxDBCheckBox10
                      ControlOptions.ShowBorder = False
                    end
                    object dxLayoutItem16: TdxLayoutItem
                      Caption = 'Proximo Numero'
                      Control = cxDBSpinEdit15
                      ControlOptions.ShowBorder = False
                    end
                  end
                end
              end
            end
            object dxLayoutGroup13: TdxLayoutGroup
              AutoAligns = [aaVertical]
              Caption = 'Tarjetas de Descuentos'
              object dxLayoutControl1Item5: TdxLayoutItem
                Caption = 'Auto Numerar'
                Control = cxDBCheckBox2
                ControlOptions.ShowBorder = False
              end
              object TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Proximo Numero'
                Control = cxDBSpinEdit3
                ControlOptions.ShowBorder = False
              end
            end
          end
        end
      end
      object cxTabSheet3: TcxTabSheet
        Caption = 'Configuraci'#243'n'
        ImageIndex = 2
        ExplicitWidth = 885
        ExplicitHeight = 463
        object dxLayoutControl3: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 919
          Height = 423
          Align = alClient
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
          ExplicitWidth = 885
          ExplicitHeight = 463
          object cxDBCheckBox15: TcxDBCheckBox
            Left = 207
            Top = 36
            DataBinding.DataField = 'ImprimirAlGrabar'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 0
            Width = 100
          end
          object cxDBCheckBox17: TcxDBCheckBox
            Left = 207
            Top = 63
            DataBinding.DataField = 'ImprimirAlGrabarRecibo'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 1
            Width = 100
          end
          object cxDBLookupComboBox3: TcxDBLookupComboBox
            Left = 207
            Top = 122
            RepositoryItem = DM.lcMonedas
            DataBinding.DataField = 'MonedaID'
            DataBinding.DataSource = dsDatos
            Properties.ListColumns = <>
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 3
            Width = 100
          end
          object cxDBCheckBox18: TcxDBCheckBox
            Left = 381
            Top = 36
            DataBinding.DataField = 'ImprimirAlGrabarNC'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 2
            Width = 121
          end
          object cxDBCheckBox19: TcxDBCheckBox
            Left = 207
            Top = 181
            DataBinding.DataField = 'PreciosBaseDolares'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 5
            Width = 121
          end
          object cxDBLookupComboBox4: TcxDBLookupComboBox
            Left = 381
            Top = 122
            RepositoryItem = DM.lcMonedas
            DataBinding.DataField = 'MonedaDolares'
            DataBinding.DataSource = dsDatos
            Properties.ListColumns = <>
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 4
            Width = 100
          end
          object cxDBExtLookupComboBox5: TcxDBExtLookupComboBox
            Left = 637
            Top = 176
            RepositoryItem = DM.elcGrupoCliente
            DataBinding.DataField = 'GrupoCli'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 16
            Width = 145
          end
          object cxDBExtLookupComboBox6: TcxDBExtLookupComboBox
            Left = 637
            Top = 203
            RepositoryItem = DM.elcGrupoCliente
            DataBinding.DataField = 'GrupoLab'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 17
            Width = 145
          end
          object cxDBExtLookupComboBox7: TcxDBExtLookupComboBox
            Left = 637
            Top = 392
            RepositoryItem = DM.elcGrupoCliente
            DataBinding.DataField = 'GrupoPriv'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 24
            Width = 145
          end
          object cxDBExtLookupComboBox8: TcxDBExtLookupComboBox
            Left = 637
            Top = 284
            RepositoryItem = DM.elcGrupoCliente
            DataBinding.DataField = 'GrupoSeg'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 20
            Width = 145
          end
          object cxDBExtLookupComboBox1: TcxDBExtLookupComboBox
            Left = 637
            Top = 311
            RepositoryItem = DM.elcGrupoCliente
            DataBinding.DataField = 'GrupoEmp'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 21
            Width = 145
          end
          object cxDBTextEdit2: TcxDBTextEdit
            Left = 207
            Top = 240
            DataBinding.DataField = 'DiasEntrePruebas'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 6
            Width = 100
          end
          object cxDBExtLookupComboBox2: TcxDBExtLookupComboBox
            Left = 207
            Top = 316
            RepositoryItem = DM.elcClientes
            DataBinding.DataField = 'ClienteLaboratorio'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 7
            Width = 145
          end
          object cxDBExtLookupComboBox3: TcxDBExtLookupComboBox
            Left = 207
            Top = 370
            RepositoryItem = DM.elcClientes
            DataBinding.DataField = 'ClientePlanAnual'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 9
            Width = 145
          end
          object cxDBExtLookupComboBox4: TcxDBExtLookupComboBox
            Left = 207
            Top = 397
            RepositoryItem = DM.elcClientes
            DataBinding.DataField = 'ClienteCap'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 10
            Width = 145
          end
          object cxDBExtLookupComboBox9: TcxDBExtLookupComboBox
            Left = 637
            Top = 338
            RepositoryItem = DM.elcGrupoCliente
            DataBinding.DataField = 'GrupoAcc'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 22
            Width = 145
          end
          object cxDBExtLookupComboBox10: TcxDBExtLookupComboBox
            Left = 637
            Top = 365
            RepositoryItem = DM.elcGrupoCliente
            DataBinding.DataField = 'GrupoVip'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 23
            Width = 145
          end
          object cxDBExtLookupComboBox11: TcxDBExtLookupComboBox
            Left = 637
            Top = 257
            RepositoryItem = DM.elcGrupoCliente
            DataBinding.DataField = 'GrupoCia'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 19
            Width = 145
          end
          object cxDBExtLookupComboBox12: TcxDBExtLookupComboBox
            Left = 637
            Top = 230
            RepositoryItem = DM.elcGrupoCliente
            DataBinding.DataField = 'GrupoSoc'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 18
            Width = 145
          end
          object cxDBExtLookupComboBox13: TcxDBExtLookupComboBox
            Left = 207
            Top = 343
            RepositoryItem = DM.elcClientes
            DataBinding.DataField = 'ClientePlanSocial'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 8
            Width = 145
          end
          object cxDBExtLookupComboBox14: TcxDBExtLookupComboBox
            Left = 207
            Top = 424
            RepositoryItem = DM.elcClientes
            DataBinding.DataField = 'ClienteClinica'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 11
            Width = 145
          end
          object cxDBTextEdit3: TcxDBTextEdit
            Left = 637
            Top = 36
            DataBinding.DataField = 'Banco_Nombre_1'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 12
            Width = 121
          end
          object cxDBTextEdit4: TcxDBTextEdit
            Left = 637
            Top = 63
            DataBinding.DataField = 'Banco_Cuenta_1'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 13
            Width = 121
          end
          object cxDBTextEdit5: TcxDBTextEdit
            Left = 637
            Top = 90
            DataBinding.DataField = 'Banco_Nombre_2'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 14
            Width = 121
          end
          object cxDBTextEdit6: TcxDBTextEdit
            Left = 637
            Top = 117
            DataBinding.DataField = 'Banco_Cuenta_2'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 15
            Width = 145
          end
          object cxDBExtLookupComboBox15: TcxDBExtLookupComboBox
            Left = 637
            Top = 419
            RepositoryItem = DM.elcGrupoCliente
            DataBinding.DataField = 'GrupoExt'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.ButtonStyle = btsHotFlat
            Style.PopupBorderStyle = epbsSingle
            TabOrder = 25
            Width = 145
          end
          object dxLayoutGroup15: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object dxLayoutControl3Group1: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              ShowBorder = False
              object dxLayoutControl3Group3: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object dxLayoutGroup36: TdxLayoutGroup
                  AutoAligns = []
                  AlignHorz = ahClient
                  Caption = 'Imprimir al Grabar'
                  LayoutDirection = ldHorizontal
                  object dxLayoutGroup37: TdxLayoutGroup
                    ShowCaption = False
                    Hidden = True
                    ShowBorder = False
                    object dxLayoutItem41: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      Caption = 'Factura Paciente'
                      Control = cxDBCheckBox15
                      ControlOptions.ShowBorder = False
                    end
                    object dxLayoutItem42: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      Caption = 'Recibo'
                      Control = cxDBCheckBox17
                      ControlOptions.ShowBorder = False
                    end
                  end
                  object dxLayoutItem43: TdxLayoutItem
                    Caption = 'Nota Credito'
                    Control = cxDBCheckBox18
                    ControlOptions.ShowBorder = False
                  end
                end
                object dxLayoutGroup38: TdxLayoutGroup
                  ShowCaption = False
                  Hidden = True
                  ShowBorder = False
                  object dxLayoutGroup39: TdxLayoutGroup
                    AutoAligns = [aaVertical]
                    AlignHorz = ahClient
                    Caption = 'Moneda por Defecto'
                    LayoutDirection = ldHorizontal
                    object dxLayoutItem44: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      Caption = 'Moneda por Defecto RD$'
                      Control = cxDBLookupComboBox3
                      ControlOptions.ShowBorder = False
                    end
                    object dxLayoutItem45: TdxLayoutItem
                      Caption = 'Moneda US$'
                      Control = cxDBLookupComboBox4
                      ControlOptions.ShowBorder = False
                    end
                  end
                  object dxLayoutGroup40: TdxLayoutGroup
                    AutoAligns = [aaVertical]
                    AlignHorz = ahClient
                    Caption = 'Calculo Precio'
                    LayoutDirection = ldHorizontal
                    object dxLayoutItem46: TdxLayoutItem
                      Caption = 'Precios de Pruebas en base a dolares'
                      Control = cxDBCheckBox19
                      ControlOptions.ShowBorder = False
                    end
                  end
                  object dxLayoutGroup41: TdxLayoutGroup
                    AutoAligns = []
                    AlignHorz = ahClient
                    AlignVert = avBottom
                    Caption = 'Rango para la 2da. Muestras'
                    object dxLayoutItem54: TdxLayoutItem
                      AutoAligns = [aaVertical]
                      Caption = 'Dias de Limite'
                      Control = cxDBTextEdit2
                      ControlOptions.ShowBorder = False
                    end
                  end
                end
              end
              object dxLayoutGroup44: TdxLayoutGroup
                AutoAligns = []
                AlignVert = avBottom
                Caption = 'Clientes && Pacientes Fijos'
                object dxLayoutControl3Item2: TdxLayoutItem
                  Caption = 'Paciente Laboratorio'
                  Control = cxDBExtLookupComboBox2
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl3Item10: TdxLayoutItem
                  Caption = 'Paciente Plan Social'
                  Control = cxDBExtLookupComboBox13
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl3Item4: TdxLayoutItem
                  Caption = 'Paciente Plan Anual'
                  Control = cxDBExtLookupComboBox3
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl3Item5: TdxLayoutItem
                  Caption = 'Cliente && Paciente CAP'
                  Control = cxDBExtLookupComboBox4
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl3Item11: TdxLayoutItem
                  Caption = 'Cliente Clinica'
                  Control = cxDBExtLookupComboBox14
                  ControlOptions.ShowBorder = False
                end
              end
            end
            object dxLayoutControl3Group4: TdxLayoutGroup
              ShowCaption = False
              Hidden = True
              ShowBorder = False
              object dxLayoutGroup55: TdxLayoutGroup
                AutoAligns = []
                Caption = 'Depositos Bancarios'
                object dxLayoutControl3Item12: TdxLayoutItem
                  Caption = 'Banco 1'
                  Control = cxDBTextEdit3
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl3Item13: TdxLayoutItem
                  Caption = 'Cuenta 1'
                  Control = cxDBTextEdit4
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl3Item14: TdxLayoutItem
                  Caption = 'Banco 2'
                  Control = cxDBTextEdit5
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl3Item15: TdxLayoutItem
                  Caption = 'Cuenta 2'
                  Control = cxDBTextEdit6
                  ControlOptions.ShowBorder = False
                end
              end
              object dxLayoutGroup43: TdxLayoutGroup
                AutoAligns = []
                AlignHorz = ahClient
                Caption = 'Tipos de Clientes'
                object dxLayoutItem50: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Clinica'
                  Control = cxDBExtLookupComboBox5
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutItem51: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Laboratorio'
                  Control = cxDBExtLookupComboBox6
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl3Item9: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Plan Social'
                  Control = cxDBExtLookupComboBox12
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl3Item8: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Empresa - Compa'#241'ia'
                  Control = cxDBExtLookupComboBox11
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutItem53: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Seguro'
                  Control = cxDBExtLookupComboBox8
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl3Item1: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Empleado'
                  Control = cxDBExtLookupComboBox1
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl3Item6: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Accionista'
                  Control = cxDBExtLookupComboBox9
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl3Item7: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'V I P'
                  Control = cxDBExtLookupComboBox10
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutItem52: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Privado - Ambulatorio'
                  Control = cxDBExtLookupComboBox7
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl3Item16: TdxLayoutItem
                  Caption = 'Pruebas del Exterior'
                  Control = cxDBExtLookupComboBox15
                  ControlOptions.ShowBorder = False
                end
              end
            end
          end
          object dxLayoutControl3Item3: TdxLayoutItem
            Caption = 'Dias de Limite'
          end
        end
      end
      object cxTabSheet2: TcxTabSheet
        Caption = 'Notas'
        ImageIndex = 1
        ExplicitWidth = 885
        ExplicitHeight = 463
        object dxLayoutControl2: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 919
          Height = 423
          Align = alClient
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
          ExplicitWidth = 885
          ExplicitHeight = 463
          object cxDBMemo7: TcxDBMemo
            Left = 169
            Top = -161
            DataBinding.DataField = 'NotaFacturaPaciente'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 1
            Height = 68
            Width = 400
          end
          object cxDBMemo8: TcxDBMemo
            Left = 169
            Top = -13
            DataBinding.DataField = 'NotaFacturaSeguro'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 3
            Height = 68
            Width = 400
          end
          object cxDBMemo9: TcxDBMemo
            Left = 169
            Top = -87
            DataBinding.DataField = 'NotaFacturaNoSeguro'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 2
            Height = 68
            Width = 400
          end
          object EdExterior: TcxDBTextEdit
            Left = 169
            Top = -188
            DataBinding.DataField = 'NotaExterior'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 0
            Width = 400
          end
          object cxDBMemo10: TcxDBMemo
            Left = 169
            Top = 61
            DataBinding.DataField = 'NotaFacturaExterior'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 4
            Height = 68
            Width = 400
          end
          object cxDBMemo1: TcxDBMemo
            Left = 169
            Top = 135
            DataBinding.DataField = 'NotaNCreditoBalance'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 5
            Height = 73
            Width = 400
          end
          object cxDBMemo2: TcxDBMemo
            Left = 169
            Top = 214
            DataBinding.DataField = 'Nota_AutorizacionX'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 6
            Height = 73
            Width = 400
          end
          object cxDBMemo3: TcxDBMemo
            Left = 169
            Top = 293
            DataBinding.DataField = 'NotaFacturaSeguroUniv'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 7
            Height = 73
            Width = 400
          end
          object cxDBMemo4: TcxDBMemo
            Left = 169
            Top = 372
            DataBinding.DataField = 'NotaFacturaEnvase'
            DataBinding.DataSource = dsDatos
            Style.BorderColor = clTeal
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            TabOrder = 8
            Height = 73
            Width = 400
          end
          object dxLayoutGroup27: TdxLayoutGroup
            ShowCaption = False
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object dxLayoutGroup51: TdxLayoutGroup
              AutoAligns = [aaVertical]
              AlignHorz = ahClient
              Caption = 'Notas de Impresi'#243'n'
              object dxLayoutControl2Item1: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Documentos del Exterior'
                Control = EdExterior
                ControlOptions.ShowBorder = False
              end
              object dxLayoutItem60: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Factura Paciente Con Seguro'
                Control = cxDBMemo7
                ControlOptions.ShowBorder = False
              end
              object dxLayoutItem61: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Factura Paciente Sin Seguro'
                Control = cxDBMemo9
                ControlOptions.ShowBorder = False
              end
              object dxLayoutItem62: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Factura Seguro'
                Control = cxDBMemo8
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl2Item2: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Factura del Exterior'
                Control = cxDBMemo10
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl2Item3: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Nota de Credito'
                Control = cxDBMemo1
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl2Item4: TdxLayoutItem
                AutoAligns = [aaVertical]
                Caption = 'Nota de Autorizaci'#243'n (Form X)'
                Control = cxDBMemo2
                ControlOptions.ShowBorder = False
              end
              object dxLayoutControl2Group1: TdxLayoutGroup
                ShowCaption = False
                Hidden = True
                ShowBorder = False
                object dxLayoutControl2Item6: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Nota Factura Pac. Ars. Univ.'
                  Control = cxDBMemo3
                  ControlOptions.ShowBorder = False
                end
                object dxLayoutControl2Item5: TdxLayoutItem
                  AutoAligns = [aaVertical]
                  Caption = 'Mensaje Envase Coprologico'
                  Control = cxDBMemo4
                  ControlOptions.ShowBorder = False
                end
              end
            end
          end
        end
      end
    end
    inherited Group_Root: TdxLayoutGroup
      object lcDatosItem34: TdxLayoutItem
        AutoAligns = [aaHorizontal]
        AlignVert = avClient
        Caption = 'cxPageControl1'
        ShowCaption = False
        Control = cxPageControl1
        ControlOptions.ShowBorder = False
      end
    end
  end
  inherited pnCaption: TPanel
    Width = 907
    ExplicitWidth = 907
  end
  inherited formStorage: TJvFormStorage
    Left = 832
    Top = 2
  end
  inherited alEdit: TActionList
    Left = 276
    Top = 2
  end
  inherited pmCustom: TPopupMenu
    Left = 316
    Top = 2
  end
  inherited dsDatos: TDataSource
    DataSet = qrParametros
    Left = 440
    Top = 2
  end
  object qrParametros: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *  from PTParametro')
    Left = 400
    Top = 2
    object qrParametrosSecuenciaEntrada: TLargeintField
      FieldName = 'SecuenciaEntrada'
    end
    object qrParametrosSecuencia: TLargeintField
      FieldName = 'Secuencia'
    end
    object qrParametrosRNC: TStringField
      FieldName = 'RNC'
    end
    object qrParametrosEmpresa: TStringField
      FieldName = 'Empresa'
      Size = 100
    end
    object qrParametrosSecuenciaDev: TLargeintField
      FieldName = 'SecuenciaDev'
    end
    object qrParametrosSecuenciaCot: TLargeintField
      FieldName = 'SecuenciaCot'
    end
    object qrParametrosIndetificadorFactura: TStringField
      DisplayLabel = 'IndentificadorFactura'
      FieldName = 'IndetificadorFactura'
      Size = 3
    end
    object qrParametrosIdentificadorDevolucion: TStringField
      FieldName = 'IdentificadorDevolucion'
      Size = 3
    end
    object qrParametrosIdentificadorCotizacion: TStringField
      FieldName = 'IdentificadorCotizacion'
      Size = 3
    end
    object qrParametrosImprimirAlGrabar: TBooleanField
      FieldName = 'ImprimirAlGrabar'
    end
    object qrParametrosIdentificadorMuestra: TStringField
      FieldName = 'IdentificadorMuestra'
      Size = 3
    end
    object qrParametrosSecuenciaMuestra: TLargeintField
      FieldName = 'SecuenciaMuestra'
    end
    object qrParametrosAutoNumerarClientes: TBooleanField
      FieldName = 'AutoNumerarClientes'
    end
    object qrParametrosSecuenciaCliente: TLargeintField
      FieldName = 'SecuenciaCliente'
    end
    object qrParametrosAutoNumerarPacientes: TBooleanField
      FieldName = 'AutoNumerarPacientes'
    end
    object qrParametrosAutoNumerarPruebas: TBooleanField
      FieldName = 'AutoNumerarPruebas'
    end
    object qrParametrosSecuenciaPruebas: TLargeintField
      FieldName = 'SecuenciaPruebas'
    end
    object qrParametrosImprimirAlGrabarRecibo: TBooleanField
      FieldName = 'ImprimirAlGrabarRecibo'
    end
    object qrParametrosImprimirAlGrabarFacturaSeg: TBooleanField
      FieldName = 'ImprimirAlGrabarFacturaSeg'
    end
    object qrParametrosNotaFacturaSeguro: TMemoField
      FieldName = 'NotaFacturaSeguro'
      BlobType = ftMemo
    end
    object qrParametrosNotaFacturaPaciente: TMemoField
      FieldName = 'NotaFacturaPaciente'
      BlobType = ftMemo
    end
    object qrParametrosNotaFacturaNoSeguro: TMemoField
      FieldName = 'NotaFacturaNoSeguro'
      BlobType = ftMemo
    end
    object qrParametrosIdentificadorRecibo: TStringField
      FieldName = 'IdentificadorRecibo'
      Size = 3
    end
    object qrParametrosSecuenciaRecibo: TLargeintField
      FieldName = 'SecuenciaRecibo'
    end
    object qrParametrosIdentificadorNC: TStringField
      FieldName = 'IdentificadorNC'
      Size = 3
    end
    object qrParametrosSecuenciaNC: TLargeintField
      FieldName = 'SecuenciaNC'
    end
    object qrParametrosImprimirAlGrabarNC: TBooleanField
      FieldName = 'ImprimirAlGrabarNC'
    end
    object qrParametrosPreciosBaseDolares: TBooleanField
      FieldName = 'PreciosBaseDolares'
    end
    object qrParametrosMonedaID: TStringField
      FieldName = 'MonedaID'
      Size = 3
    end
    object qrParametrosMonedaDolares: TStringField
      FieldName = 'MonedaDolares'
      Size = 3
    end
    object qrParametrosAutoNumerarDoctor: TBooleanField
      FieldName = 'AutoNumerarDoctor'
    end
    object qrParametrosIdentificadorCuadre: TStringField
      FieldName = 'IdentificadorCuadre'
      Size = 3
    end
    object qrParametrosSecuenciaCuadre: TLargeintField
      FieldName = 'SecuenciaCuadre'
    end
    object qrParametrosDiasEntrePruebas: TIntegerField
      FieldName = 'DiasEntrePruebas'
    end
    object qrParametrosAutoNumerarCombos: TBooleanField
      FieldName = 'AutoNumerarCombos'
    end
    object qrParametrosSecuenciaCombos: TLargeintField
      FieldName = 'SecuenciaCombos'
    end
    object qrParametrosAutoNumerarTarjetas: TBooleanField
      FieldName = 'AutoNumerarTarjetas'
    end
    object qrParametrosSecuenciaTarjetas: TLargeintField
      FieldName = 'SecuenciaTarjetas'
    end
    object qrParametrosAutoNumerarPlanes: TBooleanField
      FieldName = 'AutoNumerarPlanes'
    end
    object qrParametrosSecuenciaPlanes: TLargeintField
      FieldName = 'SecuenciaPlanes'
    end
    object qrParametrosAutoNumerarPlanCombo: TBooleanField
      FieldName = 'AutoNumerarPlanCombo'
    end
    object qrParametrosSecuenciaPlanCombo: TLargeintField
      FieldName = 'SecuenciaPlanCombo'
    end
    object qrParametrosSecuenciaAct: TLargeintField
      FieldName = 'SecuenciaAct'
    end
    object qrParametrosSecuenciaLabel: TLargeintField
      FieldName = 'SecuenciaLabel'
    end
    object qrParametrosDireccion: TMemoField
      FieldName = 'Direccion'
      BlobType = ftMemo
    end
    object qrParametrosNotaExterior: TStringField
      FieldName = 'NotaExterior'
      Size = 100
    end
    object qrParametrosNotaFacturaExterior: TMemoField
      FieldName = 'NotaFacturaExterior'
      BlobType = ftMemo
    end
    object qrParametrosClienteCap: TStringField
      FieldName = 'ClienteCap'
      Size = 10
    end
    object qrParametrosClienteClinica: TStringField
      FieldName = 'ClienteClinica'
      Size = 10
    end
    object qrParametrosClienteProyecto: TStringField
      FieldName = 'ClienteProyecto'
      Size = 10
    end
    object qrParametrosClientePlanAnual: TStringField
      FieldName = 'ClientePlanAnual'
      Size = 10
    end
    object qrParametrosClientePlanSocial: TStringField
      FieldName = 'ClientePlanSocial'
      Size = 10
    end
    object qrParametrosClienteLaboratorio: TStringField
      FieldName = 'ClienteLaboratorio'
      Size = 10
    end
    object qrParametrosGrupoAcc: TStringField
      FieldName = 'GrupoAcc'
      Size = 10
    end
    object qrParametrosGrupoCia: TStringField
      FieldName = 'GrupoCia'
      Size = 10
    end
    object qrParametrosGrupoCli: TStringField
      FieldName = 'GrupoCli'
      Size = 10
    end
    object qrParametrosGrupoEmp: TStringField
      FieldName = 'GrupoEmp'
      Size = 10
    end
    object qrParametrosGrupoExt: TStringField
      FieldName = 'GrupoExt'
      Size = 10
    end
    object qrParametrosGrupoLab: TStringField
      FieldName = 'GrupoLab'
      Size = 10
    end
    object qrParametrosGrupoPriv: TStringField
      FieldName = 'GrupoPriv'
      Size = 10
    end
    object qrParametrosGrupoProy: TStringField
      FieldName = 'GrupoProy'
      Size = 10
    end
    object qrParametrosGrupoSeg: TStringField
      FieldName = 'GrupoSeg'
      Size = 10
    end
    object qrParametrosGrupoSoc: TStringField
      FieldName = 'GrupoSoc'
      Size = 10
    end
    object qrParametrosGrupoVip: TStringField
      FieldName = 'GrupoVip'
      Size = 10
    end
    object qrParametrosBanco_Cuenta_1: TStringField
      FieldName = 'Banco_Cuenta_1'
      Size = 25
    end
    object qrParametrosBanco_Nombre_1: TStringField
      FieldName = 'Banco_Nombre_1'
      Size = 100
    end
    object qrParametrosBanco_Cuenta_2: TStringField
      FieldName = 'Banco_Cuenta_2'
      Size = 25
    end
    object qrParametrosBanco_Nombre_2: TStringField
      FieldName = 'Banco_Nombre_2'
      Size = 100
    end
    object qrParametrosNotaNCreditoBalance: TMemoField
      FieldName = 'NotaNCreditoBalance'
      BlobType = ftMemo
    end
    object qrParametrosSecuenciaPaciente: TLargeintField
      FieldName = 'SecuenciaPaciente'
    end
    object qrParametrosSecuenciaDoctor: TLargeintField
      FieldName = 'SecuenciaDoctor'
    end
    object qrParametrosDescuento_Empleado: TBCDField
      FieldName = 'Descuento_Empleado'
      Precision = 19
    end
    object qrParametrosCod_ISO: TStringField
      FieldName = 'Cod_ISO'
    end
    object qrParametrosServidor_AS400: TStringField
      FieldName = 'Servidor_AS400'
      Size = 50
    end
    object qrParametrosNota_AutorizacionX: TStringField
      FieldName = 'Nota_AutorizacionX'
      Size = 100
    end
    object qrParametrosNotaFacturaSeguroUniv: TMemoField
      FieldName = 'NotaFacturaSeguroUniv'
      BlobType = ftMemo
    end
    object qrParametrosNotaFacturaEnvase: TMemoField
      FieldName = 'NotaFacturaEnvase'
      BlobType = ftMemo
    end
  end
end
