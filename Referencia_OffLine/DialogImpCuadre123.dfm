object frmDialogImpCuadre: TfrmDialogImpCuadre
  Left = 0
  Top = 0
  Caption = 'Consulta de Cuadres de Caja'
  ClientHeight = 527
  ClientWidth = 432
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 432
    Height = 527
    Align = alClient
    TabOrder = 0
    AutoContentSizes = [acsWidth, acsHeight]
    LookAndFeel = dmAppActions.lnfWeb
    object cgDatos: TcxGrid
      Left = 11
      Top = 50
      Width = 402
      Height = 374
      TabOrder = 1
      OnEnter = cgDatosEnter
      OnExit = cgDatosExit
      object dbDatos: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsDatos
        DataController.KeyFieldNames = 'CorteId'
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
        OptionsView.NewItemRowInfoText = 'Click here to add a new row'
        object dbDatosCorteId: TcxGridDBColumn
          Caption = 'Corte'
          DataBinding.FieldName = 'CorteId'
          Width = 80
        end
        object dbDatosFecha: TcxGridDBColumn
          DataBinding.FieldName = 'Fecha'
          Width = 109
        end
        object dbDatosHora: TcxGridDBColumn
          DataBinding.FieldName = 'Hora'
          Width = 68
        end
        object dbDatosUsuario: TcxGridDBColumn
          DataBinding.FieldName = 'Usuario'
          Width = 131
        end
      end
      object lvDatos: TcxGridLevel
        GridView = dbDatos
      end
    end
    object btcancelar: TcxButton
      Left = 271
      Top = 491
      Width = 150
      Height = 25
      Caption = 'Cerrar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ModalResult = 2
      ParentFont = False
      TabOrder = 3
    end
    object btaceptar: TcxButton
      Left = 115
      Top = 491
      Width = 150
      Height = 25
      Caption = 'Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ModalResult = 1
      ParentFont = False
      TabOrder = 2
    end
    object rgCriterio: TcxRadioGroup
      Left = 11
      Top = 11
      ItemIndex = 0
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = 'Usuarios Actual'
        end
        item
          Caption = 'Todos los Usuarios'
        end>
      Properties.OnChange = rgCriterioPropertiesChange
      Style.BorderColor = clTeal
      Style.BorderStyle = ebsSingle
      TabOrder = 0
      Height = 33
      Width = 402
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      ShowCaption = False
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Item1: TdxLayoutItem
        Caption = 'cxRadioGroup1'
        ShowCaption = False
        Control = rgCriterio
        ControlOptions.ShowBorder = False
      end
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
    DataSet = qrCuadres
    Left = 225
    Top = 3
  end
  object qrCuadres: TADOQuery
    Connection = DM.DataBase
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM PTCorteCajaCab')
    Left = 165
    Top = 3
    object qrCuadresCorteId: TStringField
      FieldName = 'CorteId'
    end
    object qrCuadresFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object qrCuadresHora: TStringField
      FieldName = 'Hora'
      Size = 5
    end
    object qrCuadresUsuario: TStringField
      FieldName = 'Usuario'
      Size = 10
    end
    object qrCuadresSucursalId: TStringField
      FieldName = 'SucursalId'
      Size = 10
    end
  end
  object cxIntl1: TcxIntl
    Connected = True
    cxLibrary.CantCreateRegistryKey = 'No se puede crear la llave de registro : \%s'
    cxLibrary.ConverterCantCreateStyleRepository = 'Can'#39't create the Style Repository'
    PageControl.ImageListIndexError = 'El '#237'ndice (%d) deber'#225' estar entre 0 y %d'
    PageControl.NoBaseImages = 'BaseImages no est'#225' asignado'
    PageControl.NoRegisteredStyles = 'No hay estilos registrados'
    PageControl.PageIndexError = '%d es un valor inv'#225'lido para PageIndex, debe estar entre 0 y %d'
    PageControl.PainterClassError = 'La clase PCPainter es nula'
    PageControl.StandardStyleError = '%s es un estilo est'#225'ndar no soportado'
    PageControl.StyleNameError = '%s es un nombre de estilo no registrado'
    PageControl.TabCountEqualsZero = 'Tabs.Count = 0'
    PageControl.TabIndexError = 'El '#237'ndice de la pesta'#241'a (%d) est'#225' fuera de l'#237'mites'
    PageControl.TabVisibleIndexOutsOfBounds = 'Propiedad TabVisibleIndex (%d) deber'#225' estar entre 0 y %d'
    PageControl.VisibleTabListEmpty = 'No hay pesta'#241'as visibles'
    PageControl.PCAllowRotateError = '%s style does not support rotation of tabs'
    QuantumGrid.GridRecursiveLevels = 'No se pueden crear niveles recursivos'
    QuantumGrid.GridDeletingConfirmationCaption = 'Confirmar'
    QuantumGrid.GridDeletingFocusedConfirmationText = #191'Borrar registro?'
    QuantumGrid.GridDeletingSelectedConfirmationText = #191'Borrar todos los registros seleccionados?'
    QuantumGrid.GridNoDataInfoText = '<No hay datos a mostrar>'
    QuantumGrid.GridNewItemRowInfoText = 'Haga click aqu'#237' para agregar una nueva l'#237'nea'
    QuantumGrid.GridFilterIsEmpty = '<Filtro Vac'#237'o>'
    QuantumGrid.GridCustomizationFormCaption = 'Personalizaci'#243'n'
    QuantumGrid.GridCustomizationFormColumnsPageCaption = 'Columnas'
    QuantumGrid.GridGroupByBoxCaption = 'Arrastre una columna aqu'#237' para agrupar por dicha columna'
    QuantumGrid.GridFilterCustomizeButtonCaption = 'Personalizar...'
    QuantumGrid.GridColumnsQuickCustomizationHint = 'Haga click aqu'#237' para seleccionar las columas visibles'
    QuantumGrid.GridCustomizationFormBandsPageCaption = 'Bandas'
    QuantumGrid.GridBandsQuickCustomizationHint = 'Haga click aqu'#237' para seleccionar las bandas visibles'
    QuantumGrid.GridCustomizationFormRowsPageCaption = 'Rows'
    QuantumGrid.GridConverterIntermediaryMissing = 'Omiti'#243' un componente intermediario!'
    QuantumGrid.GridConverterNotExistGrid = 'cxGrid no existe'
    QuantumGrid.GridConverterNotExistComponent = 'El componente no existe'
    QuantumGrid.ImportErrorCaption = 'Error al importar'
    QuantumGrid.NotExistGridView = 'No existe la vista del grid'
    QuantumGrid.NotExistGridLevel = 'No existe un nivel de grid activo'
    QuantumGrid.CantCreateExportOutputFile = 'No se puede crear el archivo de exportaci'#243'n'
    QuantumGrid.EditRepositoryExtLookupComboBoxItem = 
      'ExtLookupComboBox|Representa un ultra avanzado control de busque' +
      'da (lookup) usando el QuantumGrid como su control de despliegue'
    Navigator.NavigatorHint_First = 'Primer registro'
    Navigator.NavigatorHint_Prior = 'Registro anterior'
    Navigator.NavigatorHint_PriorPage = 'P'#225'gina anterior'
    Navigator.NavigatorHint_Next = 'Siguiente registro'
    Navigator.NavigatorHint_NextPage = 'Siguiente p'#225'gina'
    Navigator.NavigatorHint_Last = #218'ltimo registro'
    Navigator.NavigatorHint_Insert = 'Insertar registro'
    Navigator.NavigatorHint_Delete = 'Borrar registro'
    Navigator.NavigatorHint_Edit = 'Editar registro'
    Navigator.NavigatorHint_Post = 'Grabar edici'#243'n'
    Navigator.NavigatorHint_Cancel = 'Cancelar edici'#243'n'
    Navigator.NavigatorHint_Refresh = 'Actualizar datos'
    Navigator.NavigatorHint_SaveBookmark = 'Guardar Marca'
    Navigator.NavigatorHint_GotoBookmark = 'Volver a Marca'
    Navigator.NavigatorHint_Filter = 'Filtrar datos'
    Navigator.Navigator_DeleteRecordQuestion = #191'Desea borrar este el registro?'
    Editors.EditButtonCancel = 'Cancel'
    Editors.EditButtonOK = 'OK'
    Editors.EditDateConvertError = 'El valor no se puede convertir a fecha'
    Editors.EditInvalidRepositoryItem = 'Elemento de repositorio no v'#225'lido'
    Editors.EditNumericValueConvertError = 'No se puede convertir a valor num'#233'rico'
    Editors.EditPopupCircularReferencingError = 'Referencia circular no permitida'
    Editors.EditPostError = 'Ocurri'#243' un error durante el grabado del valor de edici'#243'n'
    Editors.EditTimeConvertError = 'No se puede convertir a valor de tiempo'
    Editors.EditValidateErrorText = 'Valor inv'#225'lido. Use la tecla de escape para cancelar cambios'
    Editors.EditValueOutOfBounds = 'Valor fuera de l'#237'mites'
    Editors.EditCheckBoxChecked = '1'
    Editors.EditCheckBoxUnchecked = '2'
    Editors.TextTrue = 'True'
    Editors.TextFalse = 'False'
    Editors.BlobButtonOK = '&Aceptar'
    Editors.BlobButtonCancel = '&Cancelar'
    Editors.BlobButtonClose = '&Cerrar'
    Editors.BlobMemo = '(MEMO)'
    Editors.BlobMemoEmpty = '(memo)'
    Editors.BlobPicture = '(IM'#193'GEN)'
    Editors.BlobPictureEmpty = '(im'#225'gen)'
    Editors.MenuItemCaptionCut = 'Cor&tar'
    Editors.MenuItemCaptionCopy = '&Copiar'
    Editors.MenuItemCaptionPaste = '&Pegar'
    Editors.MenuItemCaptionDelete = '&Borrar'
    Editors.MenuItemCaptionLoad = '&Leer...'
    Editors.MenuItemCaptionSave = 'Guardar &Como...'
    Editors.DatePopupClear = 'Limpiar'
    Editors.DatePopupNow = 'Ahora'
    Editors.DatePopupOK = 'Aceptar'
    Editors.DatePopupToday = 'Hoy'
    Editors.DateError = 'Fecha inv'#225'lida'
    Editors.DateToday = 'hoy'
    Editors.DateYesterday = 'ayer'
    Editors.DateTomorrow = 'ma'#241'ana'
    Editors.DateSunday = 'Domingo'
    Editors.DateMonday = 'Lunes'
    Editors.DateTuesday = 'Martes'
    Editors.DateWednesday = 'Mi'#233'rcoles'
    Editors.DateThursday = 'Jueves'
    Editors.DateFriday = 'Viernes'
    Editors.DateSaturday = 'S'#225'bado'
    Editors.DateFirst = 'Primero'
    Editors.DateSecond = 'segundo'
    Editors.DateThird = 'tercero'
    Editors.DateFourth = 'Cuarto'
    Editors.DateFifth = 'Quinto'
    Editors.DateSixth = 'sexto'
    Editors.DateSeventh = 's'#233'ptimo'
    Editors.DateBOM = 'bom'
    Editors.DateEOM = 'eom'
    Editors.DateNow = 'ahora'
    Editors.CalcError = 'Error'
    Editors.HyperLinkPrefix = 'http://'
    Editors.HyperLinkDoubleSlash = '//'
    Editors.EditRepositoryBlobItem = 'BlobEdit|Representa el editor de BLOB'
    Editors.EditRepositoryButtonItem = 
      'ButtonEdit|Representa un control de edici'#243'n con controles incrus' +
      'tados'
    Editors.EditRepositoryCalcItem = 
      'CalcEdit|Representa un control de edici'#243'n con una ventana de cal' +
      'culadora desplegable'
    Editors.EditRepositoryCheckBoxItem = 
      'CheckBox|Representa un control de caja de marca que permite sele' +
      'ccionar una opci'#243'n'
    Editors.EditRepositoryComboBoxItem = 'ComboBox|Representa el editor de la caja combo'
    Editors.EditRepositoryCurrencyItem = 
      'CurrencyEdit|Representa un editor que habilita la edici'#243'n de val' +
      'ores monetarios'
    Editors.EditRepositoryDateItem = 
      'DateEdit|Representa un control de edici'#243'n con un calendario desp' +
      'legable'
    Editors.EditRepositoryHyperLinkItem = 'HyperLink|Representa un editor de texto de hiperv'#237'nculos'
    Editors.EditRepositoryImageComboBoxItem = 
      'ImageComboBox|Representa un editor que muestra una lista de im'#225'g' +
      'enes y texto en la ventana desplegable'
    Editors.EditRepositoryImageItem = 'Image|Representa un editor de im'#225'genes'
    Editors.EditRepositoryLookupComboBoxItem = 'LookupComboBox|Representa una caja de b'#250'squeda'
    Editors.EditRepositoryMaskItem = 'MaskEdit|Representa un control de edici'#243'n gen'#233'rico con m'#225'scara'
    Editors.EditRepositoryMemoItem = 
      'Memo|Representa un control de edici'#243'n que permite editar datos m' +
      'emo'
    Editors.EditRepositoryMRUItem = 
      'MRUEdit|Representa un editor de texto mostrando la lista de los ' +
      'elementos m'#225's recientemente usados (MRU) en una ventana desplega' +
      'ble'
    Editors.EditRepositoryPopupItem = 
      'PopupEdit|Representa un control de edici'#243'n con una lista despleg' +
      'able'
    Editors.EditRepositorySpinItem = 'SpinEdit|Representa un editor de incrementos/decrementos (spin)'
    Editors.EditRepositoryRadioGroupItem = 'RadioGroup|Represents a group of radio buttons'
    Editors.EditRepositoryTextItem = 'TextEdit|Representa un editor de texto de l'#237'nea sencilla'
    Editors.EditRepositoryTimeItem = 'TimeEdit|Representa un editor mostrando valores de tiempo'
    Editors.RegExprLine = 'L'#237'nea'
    Editors.RegExprChar = 'Char'
    Editors.RegExprNotAssignedSourceStream = 'No se ha asignado el stream fuente'
    Editors.RegExprEmptySourceStream = 'El stream or'#237'gen est'#225' vac'#237'o'
    Editors.RegExprCantUsePlusQuantifier = 'El cuantificador '#39'+'#39' no puede aplicarse aqu'#237
    Editors.RegExprCantUseStarQuantifier = 'El cuantificador '#39'*'#39' no puede aplicarse aqu'#237
    Editors.RegExprCantCreateEmptyAlt = 'La alternativa no debe estar vac'#237'a'
    Editors.RegExprCantCreateEmptyBlock = 'El bloque no debe estar vac'#237'o'
    Editors.RegExprIllegalSymbol = 'S'#237'mbolo no permitido '#39'%s'#39
    Editors.RegExprIllegalQuantifier = 'Cuantificador no permitido '#39'%s'#39
    Editors.RegExprNotSupportQuantifier = 'El par'#225'metro cuantificador no es soportado'
    Editors.RegExprIllegalIntegerValue = 'Valor entero no permitido'
    Editors.RegExprTooBigReferenceNumber = 'N'#250'mero de referencia demasiado grande'
    Editors.RegExprCantCreateEmptyEnum = 'No puedo crear enumeraci'#243'n vac'#237'a'
    Editors.RegExprSubrangeOrder = 'El caracter de inicio del subrango debe ser menor al de fin'
    Editors.RegExprHexNumberExpected0 = 'Se esperaba n'#250'mero Hexadecimal'
    Editors.RegExprHexNumberExpected = 'N'#250'mero Hexadecimal esperado pero encontr'#243' '#39'%s'#39
    Editors.RegExprMissing = 'Falta '#39'%s'#39
    Editors.RegExprUnnecessary = 'Innecesario '#39'%s'#39
    Editors.RegExprIncorrectSpace = 'Espacio incorrecto despu'#233's de '#39'\'#39
    Editors.RegExprNotCompiled = 'Expresi'#243'n regular no compila'
    Editors.RegExprIncorrectParameterQuantifier = 'Cuantificador de par'#225'metros incorrecto'
    Editors.RegExprCantUseParameterQuantifier = 'The parameter quantifier cannot be applied here'
    Editors.MaskEditRegExprError = 'Errores en expresiones regulares:'
    Editors.MaskEditInvalidEditValue = 'El valor de edici'#243'n es inv'#225'lido'
    Editors.MaskEditNoMask = 'Ninguno'
    Editors.MaskEditIllegalFileFormat = 'Formato de archivo ilegal'
    Editors.MaskEditEmptyMaskCollectionFile = 'El archivo de colecci'#243'n de m'#225'scaras est'#225' vac'#237'o'
    Editors.MaskEditMaskCollectionFiles = 'Archivos de colecci'#243'n de m'#225'scaras'
    Editors.SpinEditInvalidNumericValue = 'Valor num'#233'rico no v'#225'lido'
    Datacontroller.DataReadError = 'Error de lectura en or'#237'gen de datos'
    Datacontroller.DataWriteError = 'Error de escritura en or'#237'gen de datos (stream)'
    Datacontroller.DataItemExistError = 'El elemento ya existe'
    Datacontroller.DataRecordIndexError = #205'ndice de registro fuera de rango'
    Datacontroller.DataItemIndexError = #205'ndice de elemento fuera de rango'
    Datacontroller.DataProviderModeError = 'La operaci'#243'n no es soportada en modo de proveedor (provider)'
    Datacontroller.DataInvalidStreamFormat = 'Origen de datos (Stream) inv'#225'lido'
    Datacontroller.DataRowIndexError = #205'ndice del elemento de fila fuera de rango'
    Datacontroller.DataCustomDataSourceInvalidCompare = 'Instrucci'#243'n GetInfoForCompare no implementada'
    Datacontroller.DBDetailFilterControllerNotFound = 'DetailFilterController no encontrado'
    Datacontroller.DBNotInGridMode = 'La controladora de datos no est'#225' en modo de Grid'
    Datacontroller.DBKeyFieldNotFound = 'Campo llave no encontrado'
    Filter.FilterOperatorEqual = 'igual'
    Filter.FilterOperatorNotEqual = 'no es igual'
    Filter.FilterOperatorLess = 'es menor que'
    Filter.FilterOperatorLessEqual = 'es menor o igual que'
    Filter.FilterOperatorGreater = 'es mayor que'
    Filter.FilterOperatorGreaterEqual = 'es mayor o igual que'
    Filter.FilterOperatorLike = 'como'
    Filter.FilterOperatorNotLike = 'no es como'
    Filter.FilterOperatorBetween = 'entre'
    Filter.FilterOperatorNotBetween = 'no entre'
    Filter.FilterOperatorInList = 'en'
    Filter.FilterOperatorNotInList = 'no en'
    Filter.FilterOperatorYesterday = 'es ayer'
    Filter.FilterOperatorToday = 'es hoy'
    Filter.FilterOperatorTomorrow = 'es ma'#241'ana'
    Filter.FilterOperatorLastWeek = 'es '#250'ltima semana'
    Filter.FilterOperatorLastMonth = 'es '#250'ltimo mes'
    Filter.FilterOperatorLastYear = 'es a'#241'o pasado'
    Filter.FilterOperatorThisWeek = 'es esta semana'
    Filter.FilterOperatorThisMonth = 'es este mes'
    Filter.FilterOperatorThisYear = 'es este a'#241'o'
    Filter.FilterOperatorNextWeek = 'es semana siguiente'
    Filter.FilterOperatorNextMonth = 'es mes siguiente'
    Filter.FilterOperatorNextYear = 'es a'#241'o pr'#243'ximo'
    Filter.FilterAndCaption = 'y'
    Filter.FilterOrCaption = 'o'
    Filter.FilterNotCaption = 'no'
    Filter.FilterBlankCaption = 'vac'#237'o'
    Filter.FilterOperatorIsNull = 'es vac'#237'o'
    Filter.FilterOperatorIsNotNull = 'no es vac'#237'o'
    Filter.FilterOperatorBeginsWith = 'comienza con'
    Filter.FilterOperatorDoesNotBeginWith = 'no comienza con'
    Filter.FilterOperatorEndsWith = 'termina con'
    Filter.FilterOperatorDoesNotEndWith = 'no termina con'
    Filter.FilterOperatorContains = 'contiene'
    Filter.FilterOperatorDoesNotContain = 'no contiene'
    Filter.FilterBoxAllCaption = '(Todos)'
    Filter.FilterBoxCustomCaption = '(Personalizado...)'
    Filter.FilterBoxBlanksCaption = '(Vac'#237'os)'
    Filter.FilterBoxNonBlanksCaption = '(NoVac'#237'os)'
    Filter.FilterBoolOperatorAnd = 'AND'
    Filter.FilterBoolOperatorOr = 'OR'
    Filter.FilterBoolOperatorNotAnd = 'NOT AND'
    Filter.FilterBoolOperatorNotOr = 'NOT OR'
    Filter.FilterRootButtonCaption = 'Filtro'
    Filter.FilterAddCondition = 'Agregar &Condici'#243'n'
    Filter.FilterAddGroup = 'Agregar &Grupo'
    Filter.FilterRemoveRow = '&Remover Fila'
    Filter.FilterClearAll = 'Limpiar &Todo'
    Filter.FilterFooterAddCondition = 'presione el bot'#243'n para agregar una nueva condici'#243'n'
    Filter.FilterGroupCaption = 'aplica a las siguientes condiciones'
    Filter.FilterRootGroupCaption = '<ra'#237'z>'
    Filter.FilterControlNullString = '<vac'#237'o>'
    Filter.FilterErrorBuilding = 'No se puede construir filtro desde el or'#237'gen'
    Filter.FilterDialogCaption = 'Filtro Personalizado'
    Filter.FilterDialogInvalidValue = 'Valor inv'#225'lido'
    Filter.FilterDialogUse = 'Usar'
    Filter.FilterDialogSingleCharacter = 'para representar un caracter sencillo'
    Filter.FilterDialogCharactersSeries = 'para representar cualquier serie de caracteres'
    Filter.FilterDialogOperationAnd = 'Y'
    Filter.FilterDialogOperationOr = 'O'
    Filter.FilterDialogRows = 'Mostrar filas donde:'
    Filter.FilterControlDialogCaption = 'Constructor de Filtro'
    Filter.FilterControlDialogNewFile = 'sinnombre.flt'
    Filter.FilterControlDialogOpenDialogCaption = 'Abrir un filtro existente'
    Filter.FilterControlDialogSaveDialogCaption = 'Grabar el filtro activo a archivo'
    Filter.FilterControlDialogActionSaveCaption = '&Guardar...'
    Filter.FilterControlDialogActionOpenCaption = '&Abrir...'
    Filter.FilterControlDialogActionApplyCaption = '&Aplicar'
    Filter.FilterControlDialogActionOkCaption = 'Aceptar'
    Filter.FilterControlDialogActionCancelCaption = 'Cancelar'
    Filter.FilterControlDialogFileExt = 'flt'
    Filter.FilterControlDialogFileFilter = 'Filtros (*.flt)|*.flt'
    GridPopupMenu.GridNone = 'Ninguno'
    GridPopupMenu.GridSortColumnAsc = 'Ordenar Ascendente'
    GridPopupMenu.GridSortColumnDesc = 'Ordenar Descendente'
    GridPopupMenu.GridClearSorting = 'Clear Sorting'
    GridPopupMenu.GridGroupByThisField = 'Agrupar por este campo'
    GridPopupMenu.GridRemoveThisGroupItem = 'Remover del grupo'
    GridPopupMenu.GridGroupByBox = 'Panel "Agrupar por"'
    GridPopupMenu.GridAlignmentSubMenu = 'Alineaci'#243'n'
    GridPopupMenu.GridAlignLeft = 'Alineaci'#243'n Izquierda'
    GridPopupMenu.GridAlignRight = 'Alineaci'#243'n Derecha'
    GridPopupMenu.GridAlignCenter = 'Alineaci'#243'n Centrada'
    GridPopupMenu.GridRemoveColumn = 'Remover esta columna'
    GridPopupMenu.GridFieldChooser = 'Selector de campos'
    GridPopupMenu.GridBestFit = 'Mejor distribuci'#243'n'
    GridPopupMenu.GridBestFitAllColumns = 'Mejor distribuci'#243'n (Todas las columnas)'
    GridPopupMenu.GridShowFooter = 'Pie'
    GridPopupMenu.GridShowGroupFooter = 'Pies de grupo'
    GridPopupMenu.GridSumMenuItem = 'Sumar'
    GridPopupMenu.GridMinMenuItem = 'M'#237'nimo'
    GridPopupMenu.GridMaxMenuItem = 'M'#225'ximo'
    GridPopupMenu.GridCountMenuItem = 'Contar'
    GridPopupMenu.GridAvgMenuItem = 'Promedio'
    GridPopupMenu.GridNoneMenuItem = 'Ninguno'
    GridExport.UnsupportedExport = 'Tipo de exportaci'#243'n no soportado: %1'
    GridExport.StyleManagerKill = 
      'El administrador de estilo esta siendo utilizado y no puede ser ' +
      'liberado en este momento'
    GridExport.StyleManagerCreate = 'No se puede crear administrador de estilo'
    GridExport.ExportToHtml = 'Exportar a p'#225'gina Web (*.html)'
    GridExport.ExportToXml = 'Exportar a documento XML (*.xml)'
    GridExport.ExportToText = 'Exportar a formato de texto (*.txt)'
    GridExport.EmptyExportCache = 'Cache de exportaci'#243'n vac'#237'o'
    GridExport.IncorrectUnion = 'Uni'#243'n de celdas incorrecta'
    GridExport.IllegalWidth = 'Ancho de columna ilegal'
    GridExport.InvalidColumnRowCount = 'Conteo de columna o fila inv'#225'lido'
    GridExport.IllegalHeight = 'Alto de fila ilegal'
    GridExport.InvalidColumnIndex = 'El '#237'ndice de columna %d fuera de l'#237'mites'
    GridExport.InvalidRowIndex = 'El '#237'ndice de fila %d est'#225' fuera de l'#237'mites'
    GridExport.InvalidStyleIndex = #205'ndice de estilo %d inv'#225'lido'
    GridExport.ExportToExcel = 'Exportar a MS Excel (*.xls)'
    GridExport.WorkbookWrite = 'Error al escribir el archivo XLS'
    GridExport.InvalidCellDimension = 'Dimensi'#243'n de celda inv'#225'lida'
    GridExport.BoolTrue = 'True'
    GridExport.BoolFalse = 'False'
    Translate.cxLibrary = True
    Translate.PageControl = True
    Translate.QuantumGrid = True
    Translate.Editors = True
    Translate.Datacontroller = True
    Translate.Filter = True
    Translate.GridPopupMenu = True
    Translate.GridExport = True
    Translate.Navigator = True
    Version = '6.0'
    Left = 16
    Top = 488
  end
end
