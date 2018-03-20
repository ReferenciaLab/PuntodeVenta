unit TomaMuestras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomModule, Menus, StdActns, ActnList, StrUtils, JvComponentBase,
  JvFormPlacement, ExtCtrls, JvExControls, JvComponent, JvEnterTab,
  dxLayoutControl, cxControls, cxPC, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxLookAndFeelPainters,
  StdCtrls, cxButtons, cxDBEdit, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxContainer, cxTextEdit, ADODB, cxImageComboBox,
  cxCheckBox, cxTimeEdit,cxDbLookupComboBox,cxDBExtLookupComboBox,cxSpinEdit,
  cxMemo, DateUtils, cxBlobEdit, cxintl;

type
  TfrmTomaMuestras = class(TfrmCustomModule)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    cxPageControl1: TcxPageControl;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxTabSheet1: TcxTabSheet;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutControl2Group1: TdxLayoutGroup;
    dxLayoutControl2Group2: TdxLayoutGroup;
    dxLayoutControl2Group3: TdxLayoutGroup;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutControl2Item4: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutControl2Item5: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutControl2Item6: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl2Item7: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutControl2Item8: TdxLayoutItem;
    BtFactura: TcxButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    BtProcesar: TcxButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    qrEntradaPaciente: TADOQuery;
    qrEntradaPacienteTotalPendiente: TFloatField;
    dsEntradaPaciente: TDataSource;
    qrEntradaPacienteDetalle: TADOQuery;
    dsEntradaPacienteDetalle: TDataSource;
    EdMuestra: TcxDBTextEdit;
    dxLayoutControl2Item1: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    dxLayoutControl2Item2: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutControl2Item3: TdxLayoutItem;
    cxGrid1DBTableView1PruebaID: TcxGridDBColumn;
    cxGrid1DBTableView1Descripcion: TcxGridDBColumn;
    cxGrid1DBTableView1FlebotomistaId: TcxGridDBColumn;
    cxGrid1DBTableView1FechaEntrega: TcxGridDBColumn;
    cxGrid1DBTableView1Estatus: TcxGridDBColumn;
    cxGrid1DBTableView1Urgente: TcxGridDBColumn;
    cxGrid1DBTableView1Seleccionar: TcxGridDBColumn;
    cxGridStyles: TcxStyleRepository;
    stGrDatos: TcxStyle;
    stGrEdit: TcxStyle;
    cxGrid1DBTableView1HoraEntrega: TcxGridDBColumn;
    dxLayoutControl2Group4: TdxLayoutGroup;
    dxLayoutControl2Group5: TdxLayoutGroup;
    cxGrid1DBTableView1UnidadMuestra: TcxGridDBColumn;
    BtImprimir: TcxButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxGrid1DBTableView1CodigoCupID: TcxGridDBColumn;
    BtUrgente: TcxButton;
    dxLayoutControl1Item6: TdxLayoutItem;
    BtNoProcesar: TcxButton;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxGrid1DBTableView1Comentario: TcxGridDBColumn;
    qrMaterialesFactura: TADOQuery;
    qrMaterialesFacturaMaterialid: TStringField;
    qrMaterialesFacturaCantidad: TBCDField;
    qrMaterialesFacturapruebaid: TStringField;
    qrMaterialesFacturaDescripcion: TStringField;
    dsDatos: TDataSource;
    cxGrid2DBTableView2: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    dxLayoutControl2Item9: TdxLayoutItem;
    cxGrid2DBTableView2Cantidad: TcxGridDBColumn;
    cxGrid2DBTableView2Descripcion: TcxGridDBColumn;
    BtPendiente: TcxButton;
    dxLayoutControl1Item8: TdxLayoutItem;
    qrMaterialesFacturaColor: TStringField;
    cxGrid2DBTableView2Color: TcxGridDBColumn;
    BtLabelUnico: TcxButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    qrEntradaPacienteENTRADAID: TStringField;
    qrEntradaPacienteFECHA: TDateTimeField;
    qrEntradaPacienteHORAENTRADA: TStringField;
    qrEntradaPacienteCLIENTEID: TStringField;
    qrEntradaPacienteDOCTORID: TStringField;
    qrEntradaPacienteENCLINICA: TIntegerField;
    qrEntradaPacienteRECORDCLINICA: TStringField;
    qrEntradaPacienteNUMEROHABITACION: TStringField;
    qrEntradaPacienteFECHAENTRADA: TDateTimeField;
    qrEntradaPacienteFECHADEALTA: TDateTimeField;
    qrEntradaPacienteRESULTADOPACIENTE: TIntegerField;
    qrEntradaPacienteRESULTADODOCTOR: TIntegerField;
    qrEntradaPacienteFECHAPROMETIDA: TDateTimeField;
    qrEntradaPacienteHORAPROMETIDA: TStringField;
    qrEntradaPacienteFLEBOTOMISTAID: TStringField;
    qrEntradaPacientePROYECTOID: TStringField;
    qrEntradaPacienteRECORDID: TIntegerField;
    qrEntradaPacienteBRUTO: TBCDField;
    qrEntradaPacienteDESCUENTO: TBCDField;
    qrEntradaPacienteSUBTOTAL: TBCDField;
    qrEntradaPacienteNETO: TBCDField;
    qrEntradaPacienteNOMBREPACIENTE: TStringField;
    qrEntradaPacienteTELEFONOS: TStringField;
    qrEntradaPacienteTELEFONO2: TStringField;
    qrEntradaPacienteEMAIL: TStringField;
    qrEntradaPacienteCLIENTENOMBRE: TStringField;
    qrEntradaPacienteSUCURSALID: TStringField;
    qrEntradaPacienteUSERID: TStringField;
    qrEntradaPacienteCOBROID: TStringField;
    qrEntradaPacienteTOTALPAGADO: TBCDField;
    qrEntradaPacientePRIORIDAD: TIntegerField;
    qrEntradaPacienteFAX: TStringField;
    qrEntradaPacienteTIPODOCUMENTO: TIntegerField;
    qrEntradaPacienteCOBERTURAPORC: TBCDField;
    qrEntradaPacienteCOBERTURASEGURO: TBCDField;
    qrEntradaPacienteCOBERTURAVALOR: TBCDField;
    qrEntradaPacienteDESCUENTOPORC: TBCDField;
    qrEntradaPacienteDESCUENTOVALOR: TBCDField;
    qrEntradaPacienteDESCUENTOBONO: TBCDField;
    qrEntradaPacienteORIGEN: TStringField;
    qrEntradaPacienteAPROBACIONNO: TStringField;
    qrEntradaPacienteAPROBACIONPOR: TStringField;
    qrEntradaPacienteCOBERTURARECHAZADA: TIntegerField;
    qrEntradaPacienteCOBERTURACONFIRMADA: TIntegerField;
    qrEntradaPacienteFECHAASEGURADORA: TDateTimeField;
    qrEntradaPacienteMUESTRANO: TStringField;
    qrEntradaPacienteMONEDAID: TStringField;
    qrEntradaPacienteCOBERTURAEXPPORC: TIntegerField;
    qrEntradaPacienteEDADPACIENTE: TIntegerField;
    qrEntradaPacienteSEXO: TIntegerField;
    qrEntradaPacienteNOMBREDOCTOR: TStringField;
    qrEntradaPacientePUBLICARINTERNET: TIntegerField;
    qrEntradaPacienteCARNET: TStringField;
    qrEntradaPacientePUBLICARINTERNETDOCTOR: TIntegerField;
    qrEntradaPacienteCUADREGLOBAL: TStringField;
    qrEntradaPacienteCUADREUSUARIO: TStringField;
    qrEntradaPacienteDESCAUTORIZADOPOR: TStringField;
    qrEntradaPacienteGASTOSVARIOS: TBCDField;
    qrEntradaPacienteNOAS400: TIntegerField;
    qrEntradaPacienteNOAXAPTA: TIntegerField;
    qrEntradaPacienteNOFACTURA: TIntegerField;
    qrEntradaPacienteFACTEXTERIOR: TIntegerField;
    qrEntradaPacienteHOLD: TIntegerField;
    qrEntradaPacienteREPMUESTRA: TIntegerField;
    qrEntradaPacienteENTRADAIDANT: TStringField;
    qrEntradaPacienteTIPOENTRADA: TStringField;
    qrEntradaPacienteFORMADEPAGO: TStringField;
    qrEntradaPacienteDESCUENTOCARD: TStringField;
    qrEntradaPacienteDESCUENTOTEXTO: TStringField;
    qrEntradaPacienteACUERDOPROPIO: TIntegerField;
    qrEntradaPacienteCLIENTEPADRE: TStringField;
    qrEntradaPacienteDESCUENTOPLANID: TStringField;
    qrEntradaPacienteFECHAREGISTRO: TDateTimeField;
    qrEntradaPacienteHORAREGISTRO: TStringField;
    qrEntradaPacienteTASA: TBCDField;
    qrEntradaPacienteESTATUS: TIntegerField;
    qrEntradaPacienteTIPOCLIENTEAS400: TIntegerField;
    qrEntradaPacienteCLASECREDITO: TStringField;
    qrEntradaPacienteCARNETNUMERO: TStringField;
    qrEntradaPacienteCLIENTEPADREAXAPTA: TStringField;
    qrEntradaPacientePACIENTEIDAXAPTA: TStringField;
    qrEntradaPacienteCLIENTEIDAXAPTA: TStringField;
    qrEntradaPacienteDOCTORIDAXAPTA: TStringField;
    qrEntradaPacienteDATAAREAID: TStringField;
    qrEntradaPacienteRECID: TIntegerField;
    qrEntradaPacienteNOTA: TStringField;
    qrEntradaPacienteDIRECCION: TStringField;
    qrEntradaPacienteNCFTYPEID: TStringField;
    qrEntradaPacienteNCFID: TStringField;
    qrEntradaPacienteNCFNAME: TStringField;
    qrEntradaPacienteCUADRADO: TIntegerField;
    qrEntradaPacienteTRANSFERIDO: TIntegerField;
    qrEntradaPacienteSUCURSAL: TIntegerField;
    qrEntradaPacienteNUMEROINTERNET: TIntegerField;
    qrEntradaPacienteRESULTADOCLIENTE: TIntegerField;
    qrEntradaPacientePUBLICARINTERNETCLIENTE: TIntegerField;
    qrEntradaPacienteCOBERTURAPRECONFIRMADA: TIntegerField;
    qrEntradaPacienteCOBERTURAMONTOPRECONFIRMADO: TBCDField;
    qrEntradaPacientePOLIZAID: TStringField;
    qrEntradaPacientePACIENTEID: TStringField;
    qrEntradaPacienteTRANSFERENCIA: TStringField;
    qrEntradaPacienteGRUPOPRECIO: TStringField;
    qrEntradaPacienteGRUPODESCUENTOLINEA: TStringField;
    qrEntradaPacienteGRUPODESCUENTOTOTAL: TStringField;
    qrEntradaPacienteFROM_CLINICA: TIntegerField;
    qrEntradaPacienteSINPRFILTER: TIntegerField;
    qrEntradaPacienteFECHANACIMIENTO: TDateTimeField;
    qrEntradaPacienteCOD_CASO: TStringField;
    qrMaterialesFacturarefrecid: TIntegerField;
    qrMaterialesFacturarefrecidLine: TIntegerField;
    qrMaterialesFacturaLineaNo: TIntegerField;
    qrMaterialesFacturaRecId: TIntegerField;
    qrEntradaPacienteDetallePRUEBAID: TStringField;
    qrEntradaPacienteDetalleCOMBOPRUEBAID: TStringField;
    qrEntradaPacienteDetalleCODIGOAUTORIZACION: TStringField;
    qrEntradaPacienteDetalleDESCRIPCION: TStringField;
    qrEntradaPacienteDetalleCODIGOCUPID: TStringField;
    qrEntradaPacienteDetalleMUESTRAANT: TStringField;
    qrEntradaPacienteDetalleCOBERTURAAPLICA: TIntegerField;
    qrEntradaPacienteDetalleDESCRIPCIONCUP: TStringField;
    qrEntradaPacienteDetalleREFRECID: TIntegerField;
    qrEntradaPacienteDetalleSECUENCIA: TIntegerField;
    qrEntradaPacienteDetalleFLEBOTOMISTAID: TStringField;
    qrEntradaPacienteDetalleCOMENTARIOMUESTRA: TStringField;
    qrEntradaPacienteDetalleUNIDADMUESTRA: TStringField;
    qrEntradaPacienteDetalleSECUENCIAACT: TIntegerField;
    qrEntradaPacienteDetallePRECIO: TBCDField;
    qrEntradaPacienteDetalleDESCUENTO: TBCDField;
    qrEntradaPacienteDetalleDESCUENTOEXTRA: TBCDField;
    qrEntradaPacienteDetalleTOTALLINEA: TBCDField;
    qrEntradaPacienteDetalleCOMENTARIO: TStringField;
    qrEntradaPacienteDetalleTIPOPRUEBA: TStringField;
    qrEntradaPacienteDetalleTIPOAS400: TStringField;
    qrEntradaPacienteDetalleCODIGOAS400: TStringField;
    qrEntradaPacienteDetalleMEDIOAS400: TStringField;
    qrEntradaPacienteDetalleDESCPCT: TBCDField;
    qrEntradaPacienteDetalleCOBERTURAESPECIAL: TBCDField;
    qrEntradaPacienteDetalleCOBERTURAESPECIALPORC: TBCDField;
    qrEntradaPacienteDetalleCOBERTURAAPLICADA: TBCDField;
    qrEntradaPacienteDetalleDESCUENTOAPLICADO: TBCDField;
    qrEntradaPacienteDetalleFACTURAR: TIntegerField;
    qrEntradaPacienteDetalleSELECCIONAR: TIntegerField;
    qrEntradaPacienteDetalleMUESTRANO: TStringField;
    qrEntradaPacienteDetalleCOBERTURAEXPPORC: TIntegerField;
    qrEntradaPacienteDetalleURGENTE: TIntegerField;
    qrEntradaPacienteDetalleREPMUESTRA: TIntegerField;
    qrEntradaPacienteDetalleFECHAENTREGA: TDateTimeField;
    qrEntradaPacienteDetalleHORAENTREGA: TStringField;
    qrEntradaPacienteDetalleESTATUS: TStringField;
    qrEntradaPacienteDetalleDESCUENTOLINEAAPLICADO: TBCDField;
    qrEntradaPacienteDetalleCUADRADO: TIntegerField;
    qrEntradaPacienteDetalleTRANSFERIDO: TIntegerField;
    qrEntradaPacienteDetallePASARAXAPTA: TIntegerField;
    qrEntradaPacienteDetalleCOMBO: TIntegerField;
    qrEntradaPacienteDetalleADICIONAL: TBCDField;
    qrEntradaPacienteDetalleREPREALIZADA: TIntegerField;
    qrEntradaPacienteDetalleREPMUESTRANO: TStringField;
    qrEntradaPacienteDetalleTIENEACUERDOPRECIO: TIntegerField;
    qrEntradaPacienteDetalleTIENEACUERDODESCUENTO: TIntegerField;
    qrEntradaPacienteDetalleCUADREGLOBAL: TStringField;
    qrEntradaPacienteDetalleCUADREUSUARIO: TStringField;
    qrEntradaPacienteDetalleEXTERIOR: TIntegerField;
    qrEntradaPacienteDetalleLDRDEPARTAMENTOID: TStringField;
    qrEntradaPacienteDetallePRECIOCOMBO: TBCDField;
    qrEntradaPacienteDetalleFROM_CLINICA: TIntegerField;
    qrEntradaPacienteDetalleREFRECID_POS: TIntegerField;
    qrEntradaPacienteDetalleENTRADAID_POS: TStringField;
    qrEntradaPacienteDetalleMUESTRANO_POS: TStringField;
    qrEntradaPacienteDetalleSINPRFILTER: TIntegerField;
    qrEntradaPacienteDetalleDATAAREAID: TStringField;
    qrEntradaPacienteDetalleRECID: TIntegerField;
    qrEntradaPacienteDetalleCondPaciente: TStringField;
    qrEntradaPacienteDetalleCondMuestra: TStringField;
    qrEntradaPacienteDetallediasresultado: TIntegerField;
    qrEntradaPacienteDetallecoddiaproc: TStringField;
    procedure BtLabelUnicoClick(Sender: TObject);
    procedure BtNoProcesarClick(Sender: TObject);
    procedure qrEntradaPacienteDetalleSeleccionarValidate(Sender: TField);
    procedure BtPendienteClick(Sender: TObject);
    procedure qrMaterialesFacturaCantidadValidate(Sender: TField);
    procedure FormPaint(Sender: TObject);
    procedure EdMuestraDblClick(Sender: TObject);
    procedure cxGrid1DBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure BtUrgenteClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BtImprimirClick(Sender: TObject);
    procedure qrEntradaPacienteDetalleCalcFields(DataSet: TDataSet);
    procedure BtProcesarClick(Sender: TObject);
    procedure BtFacturaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);

    procedure ImprimirLabels;
    procedure ImprimirUnico;

    procedure InsertarMaterial;
    function ExistenPruebasProcesar : Boolean;

  protected
    procedure SetColorTo(iColor: TColor);
  private
    { Private declarations }
  public
    { Public declarations }
    recid                       : Integer;
    muestranumber, UserId       : String;
    urgente, reportado, doctor  : TcxStyle;
    fecha_label                 : TDateTime;
    hora_label                  : String;

    function  Buscar_Linea: Integer;
    function  BuscarDia(dia: Integer) : Integer;
    function  FechaPrometida(Prueba: string) : TDate;

    procedure BuscarDatos;
    procedure RefrescarData;
    procedure No_Procesar;
    procedure VerPendiente;
    procedure MarcarUrgente;
    procedure FindMuestra;
    procedure VerCaption;
    procedure Act_Fecha;
    procedure Postear;
    procedure BuscarMateriales(registro : Integer);

    procedure ActPruebas(_flebotomista : string; fecha : TDateTime; hora : string);
    Procedure Insertar_Impresion(_usuario : string; _fecha : TDateTime; _hora : string);
    Procedure Insertar_Impresiones(_usuario : string; _fecha : TDateTime; _hora : string);

    Procedure  Buscar_Labels_Temp(_secact: Integer);

    function  Find_Label(_muestra: String; _prueba: String): String;

    function  Buscar_Labels(_muestra: String; _label: String): Boolean;

    procedure Insertar_Label_Temp(_paciente: String; _sucursal: String; _entrada: String;
                                  _muestra: String; TipoMuestra: String; _departamento: String;
                                  _medio: String; _color: String; _label: String; _desc: String;
                                  _secuencia: Integer; _recid: Integer);

    procedure Printing_Label(_muestra: String; _label: String; _departamento: String;
                             _nombre: String; _usuario: String; _descripcion: String;
                             _secuencia: Integer);
  end;

Type
  TDias = Record
  Lunes, Martes, Miercoles, Jueves, Viernes, Sabado, Domingo : Integer;
  End;

var
  frmTomaMuestras       : TfrmTomaMuestras;
  SecuenciaLabel        : integer;
  SecAct                : integer;
  qfindLb               : TADOQuery;
  qfindLabel            : TADOQuery;  
  secuencia             : integer;
  Descripcion, titulo   : string;
  depact,muestraact     : string;
  colact                : integer;
  Dias                  : TDias;

implementation

uses ActionsDM, cxExportGrid4Link, DataModule, Main;

{$R *.dfm}



//Buscando el Label de la Prueba Registrada.
Procedure TfrmTomaMuestras.Buscar_Labels_Temp(_secact: Integer);
begin
 qfindLabel := DM.NewQuery;

 qfindLabel.Close;
 qfindLabel.SQL.Text := ' SELECT pacienteid, sucursal, Entradaid, MuestraNo, TipoMuestra, DeptId, Medio, Color, '+
                        '        Label, DescripcionLabel, Secuencia, RecId, COUNT(label) As Total FROM PTLabelTemp '+
//                        ' WHERE MuestraNo = :mues '+
                        ' WHERE SecuenciaAct = :sec '+
                        ' GROUP BY pacienteid, sucursal, Entradaid, MuestraNo, TipoMuestra, DeptId, '+
                        '          Medio, Color, Label, DescripcionLabel, Secuencia, RecId '+
                        ' ORDER BY secuencia ';

 qfindLabel.Parameters.ParamByName('sec').Value := _secact;
 qfindLabel.Open;

 If (qfindLabel.RecordCount > 0) Then
   Begin
     qfindLabel.First;
     While Not qfindLabel.Eof Do
       Begin
         If Not Buscar_Labels(qfindLabel.FieldByName('MuestraNo').Value,
                              qfindLabel.FieldByName('Label').Value) Then
           Begin
             Insertar_Label_Temp(qfindLabel.FieldByName('PacienteId').AsString, qfindLabel.FieldByName('Sucursal').AsString,
                                 qfindLabel.FieldByName('EntradaId').AsString, qfindLabel.FieldByName('MuestraNo').AsString,
                                 qfindLabel.FieldByName('TipoMuestra').AsString, qfindLabel.FieldByName('DeptId').AsString,
                                 qfindLabel.FieldByName('Medio').AsString, qfindLabel.FieldByName('Color').AsString,
                                 qfindLabel.FieldByName('Label').AsString, qfindLabel.FieldByName('DescripcionLabel').AsString,
                                 qfindLabel.FieldByName('Secuencia').AsInteger, qfindLabel.FieldByName('RecId').AsInteger);
           End;
           
         qfindLabel.Next;
       End;
   End;
end;


//Buscando el Label de la Prueba Registrada.
function TfrmTomaMuestras.Buscar_Labels(_muestra: String; _label: String): Boolean;
Var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;

 qfind.Close;
 qfind.SQL.Text := ' SELECT * FROM PTLabel '+
                   ' WHERE MuestraNo = :num '+
                   ' AND Label = :lab ';
 qfind.Parameters.ParamByName('num').Value := _muestra;
 qfind.Parameters.ParamByName('lab').Value := _label;
 qfind.Open;

 If (qfind.RecordCount > 0) Then
   result := True
 Else
   result := False;
end;



//Buscando el Label de la Prueba Registrada.
function TfrmTomaMuestras.Find_Label(_muestra: String; _prueba: String): String;
begin
 qfindLabel := DM.NewQuery;

 qfindLabel.Close;
 qfindLabel.SQL.Text := ' SELECT * FROM PTLabelTemp '+
                        ' WHERE MuestraNo = :num '+
                        ' AND PruebaId = :pru ';
 qfindLabel.Parameters.ParamByName('num').Value := _muestra;
 qfindLabel.Parameters.ParamByName('pru').Value := _prueba;
 qfindLabel.Open;

 If (qfindLabel.RecordCount > 0) Then
   Begin
     If Not Buscar_Labels(qfindLabel.FieldByName('MuestraNo').Value,
                          qfindLabel.FieldByName('Label').Value) Then
       Begin
         Insertar_Label_Temp(qfindLabel.FieldByName('PacienteId').AsString, qfindLabel.FieldByName('Sucursal').AsString,
                             qfindLabel.FieldByName('EntradaId').AsString, qfindLabel.FieldByName('MuestraNo').AsString,
                             qfindLabel.FieldByName('TipoMuestra').AsString, qfindLabel.FieldByName('DeptId').AsString,
                             qfindLabel.FieldByName('Medio').AsString, qfindLabel.FieldByName('Color').AsString,
                             qfindLabel.FieldByName('Label').AsString, qfindLabel.FieldByName('DescripcionLabel').AsString,
                             qfindLabel.FieldByName('Secuencia').AsInteger, qfindLabel.FieldByName('RecId').AsInteger);
       end;

     result := qfindLabel.FieldByName('Label').AsString;
   end
 Else
   result := '';
end;


procedure TfrmTomaMuestras.Insertar_Label_Temp(_paciente: String; _sucursal: String; _entrada: String;
                                               _muestra: String; TipoMuestra: String; _departamento: String;
                                               _medio: String; _color: String; _label: String; _desc: String;
                                               _secuencia: Integer; _recid: Integer);
Var
 Qinsert    : TADOQuery;
begin
  Qinsert := DM.NewQuery;

  Qinsert.Close;
  Qinsert.SQL.Text := ' INSERT INTO PTLabel (MuestraNo, Secuencia, Sucursal, DeptId, '+
                      ' PacienteId, Descripcion, EntradaId, RecordId, PruebaId, Label, RecId) '+
                      ' VALUES (:00, :01, :02, :03, :04, :05, :06, :07, :08, :09, :10)';

  Qinsert.Parameters[0].Value := _muestra;
  Qinsert.Parameters[1].Value := _secuencia;
  Qinsert.Parameters[2].Value := _sucursal;
  Qinsert.Parameters[3].Value := _departamento;
  Qinsert.Parameters[4].Value := _paciente;
  Qinsert.Parameters[5].Value := _desc;
  Qinsert.Parameters[6].Value := _entrada;
  Qinsert.Parameters[7].Value := _recid;
  Qinsert.Parameters[8].Value := '';
  Qinsert.Parameters[9].Value := _label;
  Qinsert.Parameters[10].Value := DM.Get_Secuencia_Id;
  Qinsert.ExecSQL;

  FreeAndNil(Qinsert);
end;


function TfrmTomaMuestras.ExistenPruebasProcesar : Boolean;
var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;
 qfind.Close;
 qfind.SQL.Text := ' SELECT TOP 1 * FROM PTEntradaPacienteDetalle '+
                   ' WHERE Refrecid = ' + qrEntradaPacienteRecId.AsString +
//                   ' AND TipoPrueba = ' + #39 + 'P' + #39 +
//                   ' AND TipoPrueba = ' + #39 + 'S' + #39 +
                   ' AND (TipoPrueba = '+#39+'P'+#39+' OR TipoPrueba = '+#39+'S'+#39+')' +
                   ' AND (Estatus = '+#39+'0'+#39+' OR Estatus = '+#39+'P'+#39+')';
//                   ' AND (Estatus = '+#39+'0'+#39+' or Estatus = '+#39+'2'+#39+')';
 qfind.Open;

 if (qfind.RecordCount > 0) then
   result := true
 else
   result := false;

 FreeAndNil(qfind);
end;


procedure TfrmTomaMuestras.ActPruebas(_flebotomista : string; fecha : TDateTime; hora : string);
begin
  DM.qrParametro.Close;
  DM.qrParametro.Open;
{
  SecAct := DM.qrParametroSecuenciaAct.Value;

  DM.qrParametro.Edit;
  DM.qrParametroSecuenciaAct.Value := DM.qrParametroSecuenciaAct.Value + 1;
  DM.qrParametro.Post;
}
  qrEntradaPacienteDetalle.DisableControls;
  qrEntradaPacienteDetalle.First;
  while not qrEntradaPacienteDetalle.Eof do
  begin
   if (qrEntradaPacienteDetalleEstatus.Value = '0') and (qrEntradaPacienteDetalleSeleccionar.Value = 0) then
   begin
    qrEntradaPacienteDetalle.Edit;
    qrEntradaPacienteDetalleEstatus.Value := 'T';
    qrEntradaPacienteDetalleSeleccionar.Value := 0;
    qrEntradaPacienteDetalleFlebotomistaid.Value := _flebotomista;
    qrEntradaPacienteDetalleFechaEntrega.Value := fecha;
    qrEntradaPacienteDetalleHoraEntrega.Value := hora;
    qrEntradaPacienteDetalle.Post;
   end
   else
    if (qrEntradaPacienteDetalleEstatus.Value = '0') and (qrEntradaPacienteDetalleSeleccionar.Value = 1) then
    begin
{
     qrEntradaPacienteDetalle.Edit;
     qrEntradaPacienteDetalleEstatus.Value := 'P';
     qrEntradaPacienteDetalleSeleccionar.Value := False;
     qrEntradaPacienteDetalleFechaEntrega.Value := Null; // JUAN JOSE - FECHA EN BLANCO.
     qrEntradaPacienteDetalleHoraEntrega.Value := ''; // JUAN JOSE - FECHA EN BLANCO.
     qrEntradaPacienteDetalle.Post;
}
     qrEntradaPacienteDetalle.Edit;
     qrEntradaPacienteDetalleEstatus.Value := 'T';
     qrEntradaPacienteDetalleSeleccionar.Value := 0;
     qrEntradaPacienteDetalleFlebotomistaid.Value := _flebotomista;
     qrEntradaPacienteDetalleFechaEntrega.Value := fecha;
     qrEntradaPacienteDetalleHoraEntrega.Value := hora;
     qrEntradaPacienteDetalle.Post;
    end
    else
     if (qrEntradaPacienteDetalleEstatus.Value = 'P') and (qrEntradaPacienteDetalleSeleccionar.Value = 1) then
     begin
      qrEntradaPacienteDetalle.Edit;
      qrEntradaPacienteDetalleEstatus.Value := 'T';
      qrEntradaPacienteDetalleSeleccionar.Value := 0;
      qrEntradaPacienteDetalleFlebotomistaid.Value := _flebotomista;
      qrEntradaPacienteDetalleFechaEntrega.Value := fecha;
      qrEntradaPacienteDetalleHoraEntrega.Value := hora;
      qrEntradaPacienteDetalle.Post;
     end
     else
      if (qrEntradaPacienteDetalleEstatus.Value = 'P') and (qrEntradaPacienteDetalleSeleccionar.Value = 1) then
      begin
{
       qrEntradaPacienteDetalle.Edit;
       qrEntradaPacienteDetalleSeleccionar.Value := 0;
       qrEntradaPacienteDetalleFechaEntrega.Value := Null; // JUAN JOSE - FECHA EN BLANCO.
       qrEntradaPacienteDetalleHoraEntrega.Value := ''; // JUAN JOSE - FECHA EN BLANCO.
       qrEntradaPacienteDetalle.Post;
}
       qrEntradaPacienteDetalle.Edit;
       qrEntradaPacienteDetalleEstatus.Value := 'T';
       qrEntradaPacienteDetalleSeleccionar.Value := 0;
       qrEntradaPacienteDetalleFlebotomistaid.Value := _flebotomista;
       qrEntradaPacienteDetalleFechaEntrega.Value := fecha;
       qrEntradaPacienteDetalleHoraEntrega.Value := hora;
       qrEntradaPacienteDetalle.Post;
      end;

   qrEntradaPacienteDetalle.Next;

  end;
  qrEntradaPacienteDetalle.First;
  qrEntradaPacienteDetalle.EnableControls;

  RefrescarData;

  ImprimirLabels;
end;


procedure TfrmTomaMuestras.BtFacturaClick(Sender: TObject);
begin
  frmMain.LanzaVentana(-7995);
end;

procedure TfrmTomaMuestras.BtNoProcesarClick(Sender: TObject);
begin
  No_Procesar;
end;

procedure TfrmTomaMuestras.BtPendienteClick(Sender: TObject);
begin
  VerPendiente;
end;

procedure TfrmTomaMuestras.BtProcesarClick(Sender: TObject);
begin
  if (ExistenPruebasProcesar) then
    Begin
      Act_Fecha;
      RefrescarData;
      frmMain.LanzaVentana(-8020);
    end
  else
    showmessage('No Existen Pruebas Para Procesar');
end;


procedure TfrmTomaMuestras.BtUrgenteClick(Sender: TObject);
begin
  MarcarUrgente;
end;


procedure TfrmTomaMuestras.BtImprimirClick(Sender: TObject);
begin
 inherited;
 If (qrEntradaPacienteDetalle.RecordCount > 0) Then
   Begin
     frmMain.Muestra_Todos := True;
     frmMain.LanzaVentana(-8028);
   End
 Else
   Begin
    Beep;
    Raise exception.CreateFmt('Debe Seleccionar Una Prueba Poder Imprimir el Label.',[]);
   End;

// ImprimirLabels;
end;


procedure TfrmTomaMuestras.BtLabelUnicoClick(Sender: TObject);
begin
 If (qrEntradaPacienteDetalle.RecordCount > 0) Then
   Begin
     frmMain.Muestra_Unico := True;
     frmMain.LanzaVentana(-8028);
   End
 Else
   Begin
    Beep;
    Raise exception.CreateFmt('Debe Seleccionar Una Prueba Poder Imprimir el Label.',[]);
   End;
end;

procedure TfrmTomaMuestras.FormCreate(Sender: TObject);
begin
  inherited;
  titulo := 'Toma de Muestra';

  urgente := TcxStyle.Create(Self);
  urgente.Color := DM.ColorUrgente;
  urgente.TextColor := ClBlack;

  reportado := TcxStyle.Create(Self);
//  reportado.Color := DM.ColorReady;
  reportado.Color := DM.ColorConsulta;
  reportado.TextColor := ClBlack;

  doctor := TcxStyle.Create(Self);
//  doctor.Color := $0005EAD9;
  doctor.Color := DM.ColorBorra;
  doctor.TextColor := ClNavy;

  frmMain.Exis_Muestra := True;
  frmMain.Muestra_Unico := False;
  frmMain.Muestra_Todos := False;

  SetColorTo(dm.ColorModifica);

  DM.qrFlebotomistas.Close;
  DM.qrFlebotomistas.Open;

  DM.qrUnidades.Close;
  DM.qrUnidades.Open;
end;


procedure TfrmTomaMuestras.FormDestroy(Sender: TObject);
begin
  inherited;
  frmMain.Exis_Muestra := False;
  frmMain.Muestra_Unico := False;
  frmMain.Muestra_Todos := False;
end;


procedure TfrmTomaMuestras.FormPaint(Sender: TObject);
begin
  inherited;
  pnCaption.Caption := titulo;
  FFrameTopPanel.Caption := titulo;
  frmCustomModule.Caption := FFrameTopPanel.Caption;
end;

procedure TfrmTomaMuestras.qrEntradaPacienteDetalleCalcFields(
  DataSet: TDataSet);
var
 qfind,qfind2 : TADOQuery;
begin
  inherited;
  qfind := DM.NewQuery;

  qfind.Close;
  qfind.SQL.Text := 'SELECT * FROM PTPrueba Where Pruebaid = ' + #39 + qrEntradaPacienteDetallePruebaid.AsString + #39;
  qfind.Open;

  qrEntradaPacienteDetalleCondPaciente.Value := qfind.FieldByName('CondPaciente').AsString;
  qrEntradaPacienteDetalleCondMuestra.Value := qfind.FieldByName('CondMuestra').AsString;
  qrEntradaPacienteDetalleDiasResultado.Value := qfind.FieldByName('DiasResultado').AsInteger;

  if (qfind.FieldByName('CodDiaProc').AsString <> '') then
  begin
    qfind2 := DM.NewQuery;

    qfind2.Close;
    qfind2.SQL.Text := 'SELECT * FROM PTDiasProcesamiento Where CodDiasProc = ' + #39 + qfind.FieldByName('CodDiaProc').AsString + #39;
    qfind2.Open;

    qrEntradaPacienteDetalleCodDiaProc.value := qfind2.FieldByName('Descripcion').AsString;

    FreeAndNil(qfind2);
  end;

  FreeAndNil(qfind);
end;


procedure TfrmTomaMuestras.qrEntradaPacienteDetalleSeleccionarValidate(
  Sender: TField);
begin
  inherited;
//  VerPendiente;
end;

procedure TfrmTomaMuestras.qrMaterialesFacturaCantidadValidate(Sender: TField);
begin
  inherited;

  If ( qrMaterialesFacturaCantidad.Value < 1 ) Or ( qrMaterialesFacturaCantidad.IsNull ) Then
//     ( qrMaterialesFacturaCantidad.Value <  qrMaterialesFacturaCantidad.OldValue ) Then
    Raise exception.CreateFmt('La Cantidad de Materiales No Puede Ser Menor Que el Valor Original.', []);
end;


procedure TfrmTomaMuestras.SetColorTo(iColor: TColor);
var
  i : Integer;
  oColor : TColor;
begin
  //SetComponentsColor(iColor);
  stGrEdit.Color := iColor;

  oColor := DM.ColorConsulta;
  for i := 0 to ComponentCount -1 do begin
    if ( Components[i] is TcxDbMaskEdit ) then begin
      if ( Components[i] as TcxDbMaskEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbMaskEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbMaskEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbComboBox ) then begin
      if ( Components[i] as TcxDbComboBox ).Properties.ReadOnly then
        ( Components[i] as TcxDbComboBox ).Style.Color := oColor
      else
        ( Components[i] as TcxDbComboBox ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbButtonEdit ) then begin
      if ( Components[i] as TcxDbButtonEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbButtonEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbButtonEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDBMRUEdit ) then begin
      if ( Components[i] as TcxDBMRUEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDBMRUEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDBMRUEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbTextEdit ) then begin
      if ( Components[i] as TcxDbTextEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbTextEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbTextEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbLookupComboBox ) then begin
      if ( Components[i] as TcxDbLookupComboBox ).Properties.ReadOnly then
        ( Components[i] as TcxDbLookupComboBox ).Style.Color := oColor
      else
        ( Components[i] as TcxDbLookupComboBox ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDBExtLookupComboBox ) then begin
      if ( Components[i] as TcxDBExtLookupComboBox ).Properties.ReadOnly then
        ( Components[i] as TcxDBExtLookupComboBox ).Style.Color := oColor
      else
        ( Components[i] as TcxDBExtLookupComboBox ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbCheckBox ) then begin
      if ( Components[i] as TcxDbCheckBox ).Properties.ReadOnly then
        ( Components[i] as TcxDbCheckBox ).Style.Color := oColor
      else
        ( Components[i] as TcxDbCheckBox ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbLookupComboBox ) then begin
      if ( Components[i] as TcxDbLookupComboBox ).Properties.ReadOnly then
        ( Components[i] as TcxDbLookupComboBox ).Style.Color := oColor
      else
        ( Components[i] as TcxDbLookupComboBox ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbImageComboBox ) then begin
      if ( Components[i] as TcxDbImageComboBox ).Properties.ReadOnly then
        ( Components[i] as TcxDbImageComboBox ).Style.Color := oColor
      else
        ( Components[i] as TcxDbImageComboBox ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbCalcEdit ) then begin
      if ( Components[i] as TcxDbCalcEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbCalcEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbCalcEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbSpinEdit ) then begin
      if ( Components[i] as TcxDbSpinEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbSpinEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbSpinEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbCurrencyEdit ) then begin
      if ( Components[i] as TcxDbCurrencyEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbCurrencyEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbCurrencyEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbTimeEdit ) then begin
      if ( Components[i] as TcxDbTimeEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbTimeEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbTimeEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbMemo ) then begin
      if ( Components[i] as TcxDbMemo ).Properties.ReadOnly then
        ( Components[i] as TcxDbMemo ).Style.Color := oColor
      else
        ( Components[i] as TcxDbMemo ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbHyperLinkEdit ) then begin
      if ( Components[i] as TcxDbHyperLinkEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbHyperLinkEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbHyperLinkEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxDbDateEdit ) then begin
      if ( Components[i] as TcxDbDateEdit ).Properties.ReadOnly then
        ( Components[i] as TcxDbDateEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxDbDateEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxMaskEdit ) then begin
      if ( Components[i] as TcxMaskEdit ).Properties.ReadOnly then
        ( Components[i] as TcxMaskEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxMaskEdit ).Style.Color := iColor;
    end;
    if ( Components[i] is TcxSpinEdit ) then begin
      if ( Components[i] as TcxSpinEdit ).Properties.ReadOnly then
        ( Components[i] as TcxSpinEdit ).Style.Color := oColor
      else
        ( Components[i] as TcxSpinEdit ).Style.Color := iColor;
    end;
    //
  end;
end;


procedure TfrmTomaMuestras.BuscarDatos;
begin
  Postear;

  qrEntradaPaciente.Close;
  qrEntradaPaciente.parameters[0].Value := recid;
  qrEntradaPaciente.Open;

  qrEntradaPacienteDetalle.Close;
  qrEntradaPacienteDetalle.parameters[0].Value := recid;
  qrEntradaPacienteDetalle.Open;

  qrEntradaPacienteDetalle.Edit;

  If (qrEntradaPacienteDetalleSecuenciaAct.Value > 0) then
    SecuenciaLabel := qrEntradaPacienteDetalleSecuenciaAct.Value;

  VerCaption;
{
  if (frmMain.Exis_Material = True) then
    Begin
     frmMain.frmMateriales.Close;
    end;
}
 BuscarMateriales(qrEntradaPacienteRecid.Value);

// Buscar_Labels_Temp(qrEntradaPacienteDetalleSecuenciaAct.Value);
 Buscar_Labels_Temp(SecuenciaLabel);
end;


procedure TfrmTomaMuestras.BuscarMateriales(registro : Integer);
begin
 qrMaterialesFactura.Close;
 qrMaterialesFactura.Parameters[0].Value := registro;
 qrMaterialesFactura.Open;

 qrMaterialesFactura.Edit;
end;


function TfrmTomaMuestras.BuscarDia(dia: Integer) : Integer;
Var
 valor : Integer;
begin
 valor := 0;

 If (dia = 1) And (Dias.Lunes > 0) then
   valor := 1;

 If (dia = 2) And (Dias.Martes > 0) then
   valor := 1;

 If (dia = 3) And (Dias.Miercoles > 0) then
   valor := 1;

 If (dia = 4) And (Dias.Jueves > 0) then
   valor := 1;

 If (dia = 5) And (Dias.Viernes > 0) then
   valor := 1;

 If (dia = 6) And (Dias.Sabado > 0) then
   valor := 1;

 If (dia = 7) And (Dias.Domingo > 0) then
   valor := 1;

 Result := valor;
end;


function TfrmTomaMuestras.FechaPrometida(Prueba: string) : TDate;
Var
 fecha : TDate;
 qtest : TADOQuery;
 qfrec : TADOQuery;
 idx, valor, conteo, semana, proceso : Integer;
begin
 valor := 0;
 conteo := 0;
 semana := 0;
 proceso := 0;
 idx := 0;

 Dias.Lunes := 0;
 Dias.Martes := 0;
 Dias.Miercoles := 0;
 Dias.Jueves := 0;
 Dias.Viernes := 0;
 Dias.Sabado := 0;
 Dias.Domingo := 0;

 qtest := DM.find('SELECT * FROM PTPrueba WHERE PruebaID = :pru', prueba);

 semana := DayOfTheWeek(DM.SystemDate);

 If (qtest.RecordCount > 0) Then
  Begin
    qfrec := DM.find('SELECT * FROM PTDiasProcesamiento WHERE CodDiasProc = :cod',
                     qtest.FieldByName('CodDiaProc').AsString);

    If (qfrec.RecordCount > 0) Then
      Begin
        If (qfrec.FieldByName('Lunes').AsInteger = 1) Then
          Begin
            Dias.Lunes := 1;
            valor := valor + 1;
          End;

        If (qfrec.FieldByName('Martes').AsInteger = 1) Then
          Begin
            Dias.Martes := 2;
            valor := valor + 2;
          End;

        If (qfrec.FieldByName('Miercoles').AsInteger = 1) Then
          Begin
            Dias.Miercoles := 3;
            valor := valor + 3;
          End;

        If (qfrec.FieldByName('Jueves').AsInteger = 1) Then
          Begin
            Dias.Jueves := 4;
            valor := valor + 4;
          End;

        If (qfrec.FieldByName('Viernes').AsInteger = 1) Then
          Begin
            Dias.Viernes := 5;
            valor := valor + 5;
          End;

        If (qfrec.FieldByName('Sabado').AsInteger = 1) Then
          Begin
            Dias.Sabado := 6;
            valor := valor + 6;
          End;

        If (qfrec.FieldByName('Domingo').AsInteger = 1) Then
          Begin
            Dias.Domingo := 7;
            valor := valor + 7;
          End;
      End;

    If ( valor > 0 ) Then
      Begin
       conteo := 0;
       idx  := semana - 1;
       Repeat
       Inc(idx);
       Inc(conteo);
       If (idx > 7) Then idx := idx - 7;

       Proceso := BuscarDia(idx);
       Until (Proceso > 0) Or (conteo = 7);

       If (Proceso > 0) Then
         Fecha := DM.SystemDate + (conteo - 0) + qtest.FieldByName('DiasResultado').AsInteger
       Else
         Fecha := DM.SystemDate + qtest.FieldByName('DiasResultado').AsInteger;
      End
    Else
      Fecha := DM.SystemDate + qtest.FieldByName('DiasResultado').AsInteger;
  End;

 Result := Fecha;
end;


procedure TfrmTomaMuestras.MarcarUrgente;
Var
 busq : String;
 qact : TADOQuery;
begin
 If DM.Mensaje('Desea Cambiar el Nivel de URGENCIA de La Prueba?' ,mb_yesno) = id_yes Then
   Begin
     qact := DM.NewQuery;

     qact.Close;
     qact.SQL.Clear;

     If (qrEntradaPacienteDetalleUrgente.Value = 1) then
       busq := ' UPDATE PTEntradaPacienteDetalle SET Urgente = 0 '
     Else
       busq := ' UPDATE PTEntradaPacienteDetalle SET Urgente = 1 ';

     busq := busq + ' WHERE RefRecid = :rec '+
                    ' AND Secuencia = :sec '+
                    ' AND pruebaId = :pru ';

     qact.SQL.Text := busq;
     qact.Parameters[0].Value := qrEntradaPacienteDetalleRefRecid.Value;
     qact.Parameters[1].Value := qrEntradaPacienteDetalleSecuencia.Value;
     qact.Parameters[2].Value := qrEntradaPacienteDetallePruebaid.Value;
     qact.ExecSQL;

     FreeAndNil(qact);

     DM.Info('el Nivel de URGENCIA La Prueba: ('+ qrEntradaPacienteDetalleDescripcion.Value +') Fue Cambiado Exitosamente.!!!');

     RefrescarData;
   end;
end;


procedure TfrmTomaMuestras.VerPendiente;
Var
 qact : TADOQuery;
begin
 If ( DM.Mensaje('Desea Marcar Esta Prueba Como Pendiente?' ,mb_yesno) = id_yes ) Then
   Begin
     qact := DM.NewQuery;

     qact.Close;
     qact.SQL.Clear;
     qact.SQL.Text := ' UPDATE PTEntradaPacienteDetalle SET '+
                      ' HoraEntrega = :hor, '+
                      ' FechaEntrega = :fec, '+
                      ' Seleccionar = 1, '+
                      ' Estatus = '+ #39 + 'P' + #39 +
                      ' WHERE RefRecid = :rec '+
                      ' AND Secuencia = :sec '+
                      ' AND pruebaId = :pru ';
     qact.Parameters.ParamByName('hor').Value := '';
     qact.Parameters.ParamByName('fec').Value := '01-01-1900';
     qact.Parameters.ParamByName('rec').Value := qrEntradaPacienteDetalleRefRecid.Value;
     qact.Parameters.ParamByName('sec').Value := qrEntradaPacienteDetalleSecuencia.Value;
     qact.Parameters.ParamByName('pru').Value := qrEntradaPacienteDetallePruebaid.Value;
     qact.ExecSQL;

     FreeAndNil(qact);

     DM.Info('La Prueba: ('+ qrEntradaPacienteDetalleDescripcion.Value +') Esta Pendiente.!!!');

     RefrescarData;
   end;
end;


procedure TfrmTomaMuestras.No_Procesar;
Var
 qact : TADOQuery;
begin
 If ( DM.Mensaje('Esta Seguro de que Esta Prueba NO Se Procesara?' ,mb_yesno) = id_yes ) Then
   Begin
     qact := DM.NewQuery;

     qact.Close;
     qact.SQL.Clear;
     qact.SQL.Text := ' UPDATE PTEntradaPacienteDetalle SET '+
                      ' Estatus = '+ #39 + 'N' + #39 +
                      ' WHERE RefRecid = :rec '+
                      ' AND Secuencia = :sec '+
                      ' AND pruebaId = :pru ';
     qact.Parameters[0].Value := qrEntradaPacienteDetalleRefRecid.Value;
     qact.Parameters[1].Value := qrEntradaPacienteDetalleSecuencia.Value;
     qact.Parameters[2].Value := qrEntradaPacienteDetallePruebaid.Value;
     qact.ExecSQL;

     FreeAndNil(qact);

     DM.Info('La Prueba: ('+ qrEntradaPacienteDetalleDescripcion.Value +') NO Sera Procesada.!!!');

     RefrescarData;
   end;
end;


procedure TfrmTomaMuestras.RefrescarData;
Var
  Bm : TBookMark;
begin
  Bm := qrEntradaPacienteDetalle.GetBookmark;

  qrEntradaPacienteDetalle.Close;
  qrEntradaPacienteDetalle.parameters[0].Value := qrEntradaPacienteRecId.Value;
  qrEntradaPacienteDetalle.Open;

  SetColorTo(dm.ColorModifica);

  qrEntradaPacienteDetalle.DisableControls;

  qrEntradaPacienteDetalle.GotoBookmark(Bm);
  qrEntradaPacienteDetalle.FreeBookmark(Bm);

  qrEntradaPacienteDetalle.EnableControls;

  qrEntradaPacienteDetalle.Edit;

  VerCaption;

//  BuscarMateriales(qrEntradaPacienteRecId.Value);
end;


procedure TfrmTomaMuestras.cxGrid1DBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;
  If (qrEntradaPacienteResultadoDoctor.Value = 1) Then
    AStyle := doctor;

  If ARecord.Values[cxGrid1DBTableView1Estatus.Index] = 'R' then
    AStyle := reportado;

  If ARecord.Values[cxGrid1DBTableView1Urgente.Index] = 1 then
    AStyle := urgente;
end;


procedure TfrmTomaMuestras.FindMuestra;
Var
 qfind  : TADOQuery;
begin
 qfind := DM.Find('SELECT * FROM PTEntradaPaciente WHERE MuestraNo = :reg', muestranumber);

 if (qfind.RecordCount > 0) then
   Begin
     recid := qfind.FieldByName('Recid').Value;
     BuscarDatos;
   end
 Else
   Raise exception.CreateFmt('El Numero de Muestra: ('+ muestranumber +') NO Existe.', []);

 FreeAndNil(qfind);
end;


procedure TfrmTomaMuestras.EdMuestraDblClick(Sender: TObject);
begin
  frmMain.LanzaVentana(-8025);
{
  if (muestranumber <> '') then
    FindMuestra
  else
    beep;
}
end;


//Cambiando el Caption del Toma de Muestra.
Procedure TfrmTomaMuestras.VerCaption;
begin
  If (qrEntradaPacienteResultadoDoctor.Value = 1) Then
    Begin
      titulo := 'Toma de Muestra. (Los Resultados Seran Enviados al Consultorio.)';
      cxGrid1.Hint := 'Los Resultados Seran Enviados al Consultorio.';
      cxGrid1.ShowHint := True;
    end
  Else
    Begin
      titulo := 'Toma de Muestra';
      cxGrid1.Hint := '';
      cxGrid1.ShowHint := False;
    end;
end;



procedure TfrmTomaMuestras.Act_Fecha;
begin
  fecha_label := Date;
  hora_label  := Copy(DM.Buscar_Hora_Actual, 1, 20); //'04:00:00 p.m.'; - //Copy(TimeToStr(Time), 1, 20);

  qrEntradaPacienteDetalle.DisableControls;
  qrEntradaPacienteDetalle.First;
  While Not qrEntradaPacienteDetalle.Eof Do
   Begin
    qrEntradaPacienteDetalle.Edit;
//    qrEntradaPacienteDetalleEstatus.Value := 'T';
//    qrEntradaPacienteDetalleFlebotomistaid.Value := _flebotomista;
    qrEntradaPacienteDetalleFechaEntrega.Value := FechaPrometida(qrEntradaPacienteDetallePruebaId.Value);
//    qrEntradaPacienteDetalleHoraEntrega.Value := Copy(TimeToStr(Time), 1, 20); //'04:00:00 p.m.';
    qrEntradaPacienteDetalleHoraEntrega.Value := Copy(DM.Buscar_Hora_Actual, 1, 20);

     if (qrEntradaPacienteDetalleFechaEntrega.Value > fecha_label) then
       fecha_label := qrEntradaPacienteDetalleFechaEntrega.Value;

    qrEntradaPacienteDetalle.Next;
   End;

  qrEntradaPacienteDetalle.First;
  qrEntradaPacienteDetalle.EnableControls;
end;


procedure TfrmTomaMuestras.InsertarMaterial;
Var
 qfind, qinsert : TADOQuery;
begin
  qinsert := DM.NewQuery;
  qinsert.Close;

  qinsert.SQL.Text := ' INSERT INTO PTMaterialTemporal '+
                      ' (refrecid, MaterialId, Cantidad, pruebaid, LineaNo) '+
                      ' VALUES (:0,:1,:2,:3,:4,:5) ';

  qinsert.Parameters[0].Value := qrEntradaPacienteRecid.Value;
  qinsert.Parameters[1].Value := qrEntradaPacienteDetalleSecuencia.value;
  qinsert.Parameters[2].Value := qfind.FieldByName('MaterialId').AsString;
  qinsert.Parameters[3].Value := qfind.FieldByName('Cantidad').AsFloat;
  qinsert.Parameters[4].Value := qrEntradaPacienteDetallePruebaid.value;
  qinsert.Parameters[5].Value := Buscar_Linea();
  qinsert.ExecSQL;

  FreeAndNil(qinsert);

  FreeAndNil(qfind);
end;



function TfrmTomaMuestras.Buscar_Linea: Integer;
Var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;

 qfind.Close;
 qfind.SQL.Text := 'SELECT MAX(LineaNo) FROM PTMaterialTemporal ';
 qfind.Open;

 result := qfind.Fields[0].AsInteger + 1;

 FreeAndNil(qfind);
end;


procedure TfrmTomaMuestras.Postear;
begin
// If ( qrEntradaPacienteDetalle.RecordCount > 0) Then
 If ( qrEntradaPacienteDetalle.State in [dsEdit,dsInsert] ) Then
   Begin
    qrEntradaPacienteDetalle.DisableControls;
    qrEntradaPacienteDetalle.First;

    While Not qrEntradaPacienteDetalle.Eof Do
     Begin
      qrEntradaPacienteDetalle.Edit;
      qrEntradaPacienteDetalle.Post;

      qrEntradaPacienteDetalle.Next;
     End;

    qrEntradaPacienteDetalle.First;
    qrEntradaPacienteDetalle.EnableControls;
   End;
End;


procedure TfrmTomaMuestras.Insertar_Impresion(_usuario : string; _fecha : TDateTime; _hora : string);
var
 Valor      : String;
 qfind      : TADOQuery;
 Qinsert    : TADOQuery;
begin
  qfind := DM.NewQuery;
  Qinsert := DM.NewQuery;

  qfind.Close;
  qfind.SQL.Text := ' SELECT a.*, b.NAME AS DescDept, c.Nombre FROM '+
                    ' PTLabel a, ldrDepartments b, PTCliente c '+
                    ' WHERE a.MuestraNo = '+ #39 + qrEntradaPacienteMuestraNo.Value + #39 +
                    ' AND a.PruebaId = '+ #39 + qrEntradaPacienteDetallePruebaId.Value + #39 +
                    ' AND a.Deptid = b.LDRDEPARTAMENTOID AND a.PacienteId = c.ClienteId '+
                    ' ORDER BY a.RecId, a.Secuencia';
  qfind.Open;

  Valor := qrEntradaPacienteMuestraNo.Value + '-' +
          Qfind.FieldByName('Secuencia').AsString + '-' + DM.CurSucursal;

  Qinsert.SQL.Text := ' INSERT INTO PTLabelSeguimiento (MuestraNo, PruebaID, RecordId, Secuencia, '+
                      ' RefRecid, Sucursal, DeptId, UserId, Fecha, Hora, Accion, Label, RecId) VALUES '+
                      ' (:00, :01, :02, :03, :04, :05, :06, :07, :08, :09, :10, :11, :12)';

  Qinsert.Parameters[0].Value := qrEntradaPacienteMuestraNo.Value;
  Qinsert.Parameters[1].Value := qrEntradaPacienteDetallePruebaId.Value;
  Qinsert.Parameters[2].Value := Qfind.FieldByName('Recid').AsInteger;
  Qinsert.Parameters[3].Value := Qfind.FieldByName('Secuencia').AsInteger;
  Qinsert.Parameters[4].Value := Qfind.FieldByName('Recid').AsInteger;
  Qinsert.Parameters[5].Value := DM.CurSucursal;
  Qinsert.Parameters[6].Value := Qfind.FieldByName('DeptId').AsString;
  Qinsert.Parameters[7].Value := _usuario;
  Qinsert.Parameters[8].Value := _fecha;
  Qinsert.Parameters[9].Value := _hora;
  Qinsert.Parameters[10].Value := 0; //3;
  Qinsert.Parameters[11].Value := Qfind.FieldByName('Label').AsString; //Valor;
  Qinsert.Parameters[12].Value := DM.Get_Secuencia_Id;
  Qinsert.ExecSQL;

  FreeAndNil(qfind);
  FreeAndNil(Qinsert);

  //Imprimiendo el Label Actual.
  ImprimirUnico;
end;


procedure TfrmTomaMuestras.Insertar_Impresiones(_usuario : string; _fecha : TDateTime; _hora : string);
var
 Valor      : String;
 qfind      : TADOQuery;
 Qinsert    : TADOQuery;
begin
  qfind := DM.NewQuery;
  Qinsert := DM.NewQuery;

  qfind.Close;
  qfind.SQL.Text := ' SELECT a.*, b.NAME AS DescDept, c.Nombre FROM '+
                    ' PTLabel a, ldrDepartments b, PTCliente c '+
                    ' WHERE a.MuestraNo = '+ #39 + qrEntradaPacienteMuestraNo.Value + #39 +
                    ' AND a.Deptid = b.LDRDEPARTAMENTOID AND a.PacienteId = c.ClienteId '+
                    ' ORDER BY a.Label ASC ';
  qfind.Open;

  qfind.First;
  While Not qfind.Eof Do
  begin
   Valor := Qfind.FieldByName('MuestraNo').AsString + '-' +
            Qfind.FieldByName('Secuencia').AsString + '-' +
            DM.CurSucursal;

   Qinsert.SQL.Text := ' INSERT INTO PTLabelSeguimiento (MuestraNo, PruebaID, RecordId, Secuencia, '+
                       ' RefRecid, Sucursal, DeptId, UserId, Fecha, Hora, Accion, Label, RecId) VALUES '+
                       ' (:00, :01, :02, :03, :04, :05, :06, :07, :08, :09, :10, :11, :12)';

   Qinsert.Parameters[0].Value := qrEntradaPacienteMuestraNo.Value;
//   Qinsert.Parameters[1].Value := qrEntradaPacienteDetallePruebaId.Value;
   Qinsert.Parameters[1].Value := Qfind.FieldByName('Label').AsString; //Valor;
   Qinsert.Parameters[2].Value := Qfind.FieldByName('Recid').AsInteger;
   Qinsert.Parameters[3].Value := Qfind.FieldByName('Secuencia').AsInteger;
   Qinsert.Parameters[4].Value := Qfind.FieldByName('Recid').AsInteger;
   Qinsert.Parameters[5].Value := DM.CurSucursal;
   Qinsert.Parameters[6].Value := Qfind.FieldByName('DeptId').AsString;
   Qinsert.Parameters[7].Value := _usuario;
   Qinsert.Parameters[8].Value := _fecha;
   Qinsert.Parameters[9].Value := _hora;
   Qinsert.Parameters[10].Value := 0; //3;
   Qinsert.Parameters[11].Value := Qfind.FieldByName('Label').AsString; //Valor;
   Qinsert.Parameters[12].Value := DM.Get_Secuencia_Id;
   Qinsert.ExecSQL;

   qfind.Next;
  end;

  FreeAndNil(qfind);
  FreeAndNil(Qinsert);

//  Imprimiendo Todos los Labels.
  ImprimirLabels;
end;


procedure TfrmTomaMuestras.ImprimirUnico;
Var
 labels, idx                  : Integer;
 text1, text2                 : TextFile;
 qprint, quser, qfind, qtotal : TADOQuery;
 cadena, printer, valor, ruta : String;
Const
 LetraSec : Array[1..26] Of String = ('A','B','C','D','E','F','G','H','I','J','K','L','M',
                                      'N','O','P','Q','R','S','T','U','V','W','X','Y','Z');
begin
 quser := DM.Find('SELECT * FROM SysUsuarios WHERE UserID = :usr', DM.CurUser);
 printer := quser.FieldByName('RutaBarcode').AsString;
 FreeAndNil(quser);

 valor := Find_Label(qrEntradaPacienteMuestraNo.Value, qrEntradaPacienteDetallePruebaId.Value);

 qprint := DM.NewQuery;
 qprint.Close;
 qprint.SQL.Text := ' SELECT a.*, b.NAME AS DescDept, c.Nombre FROM '+
                    ' PTLabelTemp a, ldrDepartments b, PTCliente c '+
                    ' WHERE a.MuestraNo = '+ #39 + qrEntradaPacienteMuestraNo.Value + #39 +
                    ' AND a.PruebaId = '+ #39 + qrEntradaPacienteDetallePruebaId.Value + #39 +
                    ' AND a.Deptid = b.LDRDEPARTAMENTOID AND a.PacienteId = c.ClienteId '+
                    ' ORDER BY a.Label a.RecId ';
 qprint.Open;

 For idx := 0 To qprint.RecordCount Do
// While Not qprint.Eof Do
  begin
   cadena := 'C:\barcode';
   assignfile(text1, cadena);
   rewrite(text1);

//   writeLn(text1,'N');
//   writeLn(text1,'N');
   writeLn(text1, 'FK"FORMA"');
   writeLn(text1, 'FS"FORMA"');
   writeLn(text1, '');
   writeLn(text1,'q1200');
   writeLn(text1,'Q200,30+0');
   writeLn(text1,'S2');
   writeLn(text1,'D8');
   writeLn(text1,'ZT');
//   writeLn(text1,'TTh:m:s:,+');
//   writeLn(text1,'TDy2.mn.dd');

   writeLn(text1,'B235,15,0,3,2,6,98,N,"'  + qprint.FieldByName('MuestraNo').AsString + '"');
   writeLn(text1,'A230,110,0,3,1,1,N,"'    + qprint.FieldByName('Label').AsString + '"');
{
   writeLn(text1,'A230,110,0,3,1,1,N,"'    + qprint.FieldByName('MuestraNo').AsString + '-' +
                        FormatFloat('00',    qprint.FieldByName('Secuencia').AsFloat) + '-' +
                                             qprint.FieldByName('Sucursal').AsString  + '"');
}
   writeLn(text1,'A415,110,0,1,1,1,N,"'    + qprint.FieldByName('DescDept').AsString  + '"');
   writeLn(text1,'A230,130,0,2,1,1,N,"'    + qprint.FieldByName('Nombre').AsString    + '"');
   writeLn(text1,'B500,130,0,3,2,3,50,N,"' + LetraSec[qprint.FieldByName('Secuencia').AsInteger] + '"');
   writeLn(text1,'A590,0,1,1,1,1,N,"' + UserId + '"');
   writeLn(text1,'A230,150,0,1,1,1,N,"' + qprint.FieldByName('DescripcionLabel').AsString+'"');
//   writeLn(text1,'P1');
//   system.closefile(text1);
   writeLn(text1,'FE');
   writeLn(text1,'');
   writeLn(text1,'FR"FORMA"');
   writeLn(text1,'?');
   writeLn(text1,'P1');
   writeLn(text1,'');
   closefile(text1);

   cadena := 'C:\imprimir.bat';
   assignfile(text2, cadena);
   rewrite(text2);

//   writeLn(text1,'PRINT /d:lpt1 c:\barcode ');
//   writeLn(text1,'PRINT /D:\\hpnew\Generico c:\barcode ');
//   ruta := 'PRINT /D:' + printer + ' c:\barcode ';

   if (AnsiContainsStr(DM.CurRuta, '\\')) then
     ruta := 'PRINT /D:' + DM.CurRuta + ' c:\barcode '
   Else
     ruta := 'PRINT /d:lpt1 c:\barcode ';

   writeLn(text2, ruta);
   closefile(text2);
   winexec('C:\imprimir.bat', SW_SHOWNORMAL);

   qprint.Next;
//   winexec('print /d:lpt1 c:\barcode ',SW_SHOWNORMAL);
  end;

  FreeAndNil(qprint);
end;


procedure TfrmTomaMuestras.ImprimirLabels;
Var
 labels, idx                  : Integer;
 qprint, quser, qfind, qtotal : TADOQuery;
 printer                      : String;
Const
 LetraSec : Array[1..26] Of String = ('A','B','C','D','E','F','G','H','I','J','K','L','M',
                                      'N','O','P','Q','R','S','T','U','V','W','X','Y','Z');
begin
  quser := DM.Find('SELECT * FROM SysUsuarios WHERE UserID = :usr', DM.CurUser);
  printer := quser.FieldByName('RutaBarcode').AsString;
  FreeAndNil(quser);

  qtotal := DM.NewQuery;
  qtotal.Close;
  qtotal.SQL.Text := ' SELECT a.*, b.NAME AS DescDept, c.Nombre FROM '+
                     ' PTLabel a, ldrDepartments b, PTCliente c '+
                     ' WHERE a.MuestraNo = '+ #39 + qrEntradaPacienteMuestraNo.Value + #39 +
                     ' AND a.Deptid = b.LDRDEPARTAMENTOID AND a.PacienteId = c.ClienteId '+
                     ' ORDER BY a.Label ASC ';
  qtotal.Open;
  labels := qtotal.RecordCount;
  FreeAndNil(qtotal);

  qprint := DM.NewQuery;
  qprint.Close;
  qprint.SQL.Text := ' SELECT a.*, b.NAME AS DescDept, c.Nombre FROM '+
                     ' PTLabel a, ldrDepartments b, PTCliente c '+
                     ' WHERE a.MuestraNo = '+ #39 + qrEntradaPacienteMuestraNo.Value + #39 +
                     ' AND a.Deptid = b.LDRDEPARTAMENTOID AND a.PacienteId = c.ClienteId '+
                     ' ORDER BY a.Label, a.RecId ';
  qprint.Open;

  If (qprint.RecordCount > 0) Then
    Begin
     qprint.First;
//     For idx := 1 To labels Do
     While Not qprint.Eof Do
       Begin
         Printing_Label(qprint.FieldByName('MuestraNo').AsString,
                        qprint.FieldByName('Label').AsString,
                        qprint.FieldByName('DescDept').AsString,
                        qprint.FieldByName('Nombre').AsString, UserId,
                        qprint.FieldByName('Descripcion').AsString,
                        qprint.FieldByName('Secuencia').AsInteger);
         qprint.Next;
       End;
    End;

  FreeAndNil(qprint);
{
procedure TfrmTomaMuestras.ImprimirLabels;
Var
 salida                       : Boolean;
 labels, idx                  : Integer;
 text1, text2                 : TextFile;
 qprint, quser, qfind, qtotal : TADOQuery;
 cadena, printer, valor, ruta : String;
Const
 LetraSec : Array[1..26] Of String = ('A','B','C','D','E','F','G','H','I','J','K','L','M',
                                      'N','O','P','Q','R','S','T','U','V','W','X','Y','Z');
begin
 quser := DM.Find('SELECT * FROM SysUsuarios WHERE UserID = :usr', DM.CurUser);
 printer := quser.FieldByName('RutaBarcode').AsString;
 FreeAndNil(quser);

 qtotal := DM.NewQuery;
 qtotal.Close;
 qtotal.SQL.Text := ' SELECT a.*, b.NAME AS DescDept, c.Nombre FROM '+
                    ' PTLabel a, ldrDepartments b, PTCliente c '+
                    ' WHERE a.MuestraNo = '+ #39 + qrEntradaPacienteMuestraNo.Value + #39 +
                    ' AND a.Deptid = b.LDRDEPARTAMENTOID AND a.PacienteId = c.ClienteId '+
                    ' ORDER BY a.Label ASC ';
 qtotal.Open;

 salida := False;
 labels := qtotal.RecordCount;

 qprint := DM.NewQuery;
 qprint.Close;
 qprint.SQL.Text := ' SELECT a.*, b.NAME AS DescDept, c.Nombre FROM '+
                    ' PTLabel a, ldrDepartments b, PTCliente c '+
                    ' WHERE a.MuestraNo = '+ #39 + qrEntradaPacienteMuestraNo.Value + #39 +
                    ' AND a.Deptid = b.LDRDEPARTAMENTOID AND a.PacienteId = c.ClienteId '+
                    ' ORDER BY a.Label, a.RecId ';
 qprint.Open;
 qprint.First;

 For idx := 1 To labels Do
// While Not qprint.Eof Do
  begin
   cadena := 'C:\barcode';
   assignfile(text1, cadena);
   rewrite(text1);

   If Not salida Then
     qprint.First;

   writeLn(text1, 'FK"FORMA"');
   writeLn(text1, 'FS"FORMA"');
   writeLn(text1, '');
   writeLn(text1,'q1200');
   writeLn(text1,'Q200,30+0');
   writeLn(text1,'S2');
   writeLn(text1,'D8');
   writeLn(text1,'ZT');
//   writeLn(text1,'TTh:m:s:,+');
//   writeLn(text1,'TDy2.mn.dd');

   writeLn(text1,'B235,15,0,3,2,6,98,N,"'  + qprint.FieldByName('MuestraNo').AsString + '"');
   writeLn(text1,'A230,110,0,3,1,1,N,"'    + qprint.FieldByName('Label').AsString + '"');

//   writeLn(text1,'A230,110,0,3,1,1,N,"'    + qprint.FieldByName('MuestraNo').AsString + '-' +
//                        FormatFloat('00',    qprint.FieldByName('Secuencia').AsFloat) + '-' +
//                                             qprint.FieldByName('Sucursal').AsString  + '"');

   writeLn(text1,'A415,110,0,1,1,1,N,"'    + qprint.FieldByName('DescDept').AsString  + '"');
   writeLn(text1,'A230,130,0,2,1,1,N,"'    + qprint.FieldByName('Nombre').AsString    + '"');
   writeLn(text1,'B500,130,0,3,2,3,50,N,"' + LetraSec[qprint.FieldByName('Secuencia').AsInteger] + '"');
   writeLn(text1,'A590,0,1,1,1,1,N,"' + UserId + '"');
   writeLn(text1,'A230,150,0,1,1,1,N,"' + qprint.FieldByName('Descripcion').AsString+'"');
//   writeLn(text1,'A230,150,0,1,1,1,N,"' + qprint.FieldByName('DescripcionLabel').AsString+'"');
//   writeLn(text1,'P1');
//   system.closefile(text1);
   writeLn(text1,'FE');
   writeLn(text1,'');
   writeLn(text1,'FR"FORMA"');
   writeLn(text1,'?');
   writeLn(text1,'P1');
   writeLn(text1,'');
   closefile(text1);

   cadena := 'C:\imprimir.bat';
   assignfile(text2, cadena);
   rewrite(text2);

//   writeLn(text1,'PRINT /d:lpt1 c:\barcode ');
//   writeLn(text1,'PRINT /D:\\hpnew\Generico c:\barcode ');
//   ruta := 'PRINT /D:' + printer + ' c:\barcode ';

   if (AnsiContainsStr(DM.CurRuta, '\\')) then
     ruta := 'PRINT /D:' + DM.CurRuta + ' C:\barcode '
   Else
     ruta := 'PRINT /d:lpt1 C:\barcode ';

   writeLn(text2, ruta);
   closefile(text2);
   winexec('C:\imprimir.bat', SW_SHOWNORMAL);

   salida := True;
   qprint.Next;
//   winexec('print /d:lpt1 c:\barcode ',SW_SHOWNORMAL);
  end;

  FreeAndNil(qprint);
end;
}
end;


procedure TfrmTomaMuestras.Printing_Label(_muestra: String; _label: String; _departamento: String;
                                          _nombre: String; _usuario: String; _descripcion: String;
                                          _secuencia: Integer);
Var
 cadena, ruta : String;
 text1, text2 : TextFile;
Const
 LetraSec : Array[1..26] Of String = ('A','B','C','D','E','F','G','H','I','J','K','L','M',
                                      'N','O','P','Q','R','S','T','U','V','W','X','Y','Z');
begin
 If SysUtils.FileExists('C:\barcode') then
   SysUtils.DeleteFile('C:\barcode');

 If SysUtils.FileExists('C:\imprimir.bat') then
   SysUtils.DeleteFile('C:\imprimir.bat');

 cadena := 'C:\barcode';
 assignfile(text1, cadena);
 rewrite(text1);

 writeLn(text1, 'FK"FORMA"');
 writeLn(text1, 'FS"FORMA"');
 writeLn(text1, '');
 writeLn(text1,'q1200');
 writeLn(text1,'Q200,30+0');
 writeLn(text1,'S2');
 writeLn(text1,'D8');
 writeLn(text1,'ZT');

 writeLn(text1,'B235,15,0,3,2,6,98,N,"'  + _muestra + '"');
 writeLn(text1,'A230,110,0,3,1,1,N,"'    + _label + '"');
 writeLn(text1,'A415,110,0,1,1,1,N,"'    + _departamento + '"');
 writeLn(text1,'A230,130,0,2,1,1,N,"'    + _nombre + '"');
 writeLn(text1,'B500,130,0,3,2,3,50,N,"' + LetraSec[_secuencia] + '"');
 writeLn(text1,'A590,0,1,1,1,1,N,"' + _usuario + '"');
 writeLn(text1,'A230,150,0,1,1,1,N,"' + _descripcion + '"');

 writeLn(text1,'FE');
 writeLn(text1,'');
 writeLn(text1,'FR"FORMA"');
 writeLn(text1,'?');
 writeLn(text1,'P1');
 writeLn(text1,'');
 closefile(text1);

 cadena := 'C:\imprimir.bat';
 assignfile(text2, cadena);
 rewrite(text2);

 If (AnsiContainsStr(DM.CurRuta, '\\')) Then
   ruta := 'PRINT /D:' + DM.CurRuta + ' C:\barcode '
 Else
   ruta := 'PRINT /d:lpt1 C:\barcode ';

 writeLn(text2, ruta);
 closefile(text2);
 winexec('C:\imprimir.bat', SW_SHOWNORMAL);
end;


END.

