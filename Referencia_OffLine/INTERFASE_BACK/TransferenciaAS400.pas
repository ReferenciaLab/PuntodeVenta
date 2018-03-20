unit TransferenciaAS400;

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
  cxMemo, DateUtils, cxBlobEdit, cxintl, cxGroupBox, cxRadioGroup,
  cxCurrencyEdit;

type
  TfrmTransferenciaAS400 = class(TfrmCustomModule)
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
    BtProcesar: TcxButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxGridStyles: TcxStyleRepository;
    stGrDatos: TcxStyle;
    stGrEdit: TcxStyle;
    dxLayoutControl2Group4: TdxLayoutGroup;
    cxGrid2DBTableView2: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    dxLayoutControl2Item9: TdxLayoutItem;
    cxGrid2DBTableView2IN6COD: TcxGridDBColumn;
    cxGrid2DBTableView2IN6VAL: TcxGridDBColumn;
    cxGrid2DBTableView2IN6NOM: TcxGridDBColumn;
    qrClientes: TADOQuery;
    qrClientesCLIENTEID: TStringField;
    qrClientesNOMBRE: TStringField;
    qrClientesCONTACTO: TStringField;
    qrClientesTELEFONO: TStringField;
    qrClientesFAX: TStringField;
    qrClientesGRUPOCLIENTE: TStringField;
    qrClientesINCLUIRPRECIOTICKET: TIntegerField;
    qrClientesAUTOCONFIRMAR: TIntegerField;
    qrClientesEMPLEADOID: TStringField;
    qrClientesCODIGOAXAPTA: TStringField;
    qrClientesEMAIL: TStringField;
    qrClientesDIRECCIONWEB: TStringField;
    qrClientesTELEFONO2: TStringField;
    qrClientesMONEDAID: TStringField;
    qrClientesIDENTIFICACION: TStringField;
    qrClientesORIGEN: TIntegerField;
    qrClientesDIRECCION: TStringField;
    qrClientesCIUDADID: TStringField;
    qrClientesPRUEBASPORDIA: TIntegerField;
    qrClientesCOBERTURAPORC: TBCDField;
    qrClientesPRINCIPAL: TStringField;
    qrClientesENVIORESULTADO: TIntegerField;
    qrClientesPUBLICARINTERNET: TIntegerField;
    qrClientesFECHANACIMIENTO: TDateTimeField;
    qrClientesSEGURO: TStringField;
    qrClientesCARNETNUMERO: TStringField;
    qrClientesPOLIZA: TStringField;
    qrClientesCOBRARDIFERENCIA: TIntegerField;
    qrClientesENVIARFAX: TIntegerField;
    qrClientesACTIVARDESCUENTOS: TIntegerField;
    qrClientesUSARALIASNOMBRE: TIntegerField;
    qrClientesUSARALIASPRUEBAS: TIntegerField;
    qrClientesSIEMPREINTERNET: TIntegerField;
    qrClientesIMPRIMIRALIASNOMBRE: TIntegerField;
    qrClientesIMPRIMIRALIASPRUEBA: TIntegerField;
    qrClientesIMPRIMIRSOLOTOTALES: TIntegerField;
    qrClientesIMPRIMIRALIASRESULTADOS: TIntegerField;
    qrClientesUSARACUERDOPROPIO: TIntegerField;
    qrClientesALIAS: TStringField;
    qrClientesQUIENPAGA: TStringField;
    qrClientesTIPOCLIENTE: TStringField;
    qrClientesENTREGARRESULTADOS: TStringField;
    qrClientesTEXTOREFERENCIA: TStringField;
    qrClientesSIEMPREIMPRIMIR: TIntegerField;
    qrClientesTIPOSANGRE: TStringField;
    qrClientesPACIENTECIAID: TStringField;
    qrClientesSECTOR: TStringField;
    qrClientesUSUARIOINTERNET: TStringField;
    qrClientesCLAVEINTERNET: TStringField;
    qrClientesTIPOINTERNET: TStringField;
    qrClientesCLASECREDITO: TStringField;
    qrClientesDOCTORID: TStringField;
    qrClientesSEXO: TIntegerField;
    qrClientesESTATUS: TIntegerField;
    qrClientesTIPOCLIENTEAS400: TIntegerField;
    qrClientesCODIGOIDAS400: TStringField;
    qrClientesGRUPOPRECIO: TStringField;
    qrClientesFORMAPAGO: TStringField;
    qrClientesDATAAREAID: TStringField;
    qrClientesRECID: TIntegerField;
    qrClientesGRUPODESCUENTOLINEA: TStringField;
    qrClientesGRUPODESCUENTOTOTAL: TStringField;
    dsClientes: TDataSource;
    dsPacientes: TDataSource;
    qrPacientes: TADOQuery;
    qrPacientesCLIENTEID: TStringField;
    qrPacientesNOMBRE: TStringField;
    qrPacientesCONTACTO: TStringField;
    qrPacientesTELEFONO: TStringField;
    qrPacientesFAX: TStringField;
    qrPacientesGRUPOCLIENTE: TStringField;
    qrPacientesINCLUIRPRECIOTICKET: TIntegerField;
    qrPacientesAUTOCONFIRMAR: TIntegerField;
    qrPacientesEMPLEADOID: TStringField;
    qrPacientesCODIGOAXAPTA: TStringField;
    qrPacientesEMAIL: TStringField;
    qrPacientesDIRECCIONWEB: TStringField;
    qrPacientesTELEFONO2: TStringField;
    qrPacientesMONEDAID: TStringField;
    qrPacientesIDENTIFICACION: TStringField;
    qrPacientesORIGEN: TIntegerField;
    qrPacientesDIRECCION: TStringField;
    qrPacientesCIUDADID: TStringField;
    qrPacientesPRUEBASPORDIA: TIntegerField;
    qrPacientesCOBERTURAPORC: TBCDField;
    qrPacientesPRINCIPAL: TStringField;
    qrPacientesENVIORESULTADO: TIntegerField;
    qrPacientesPUBLICARINTERNET: TIntegerField;
    qrPacientesFECHANACIMIENTO: TDateTimeField;
    qrPacientesSEGURO: TStringField;
    qrPacientesCARNETNUMERO: TStringField;
    qrPacientesPOLIZA: TStringField;
    qrPacientesCOBRARDIFERENCIA: TIntegerField;
    qrPacientesENVIARFAX: TIntegerField;
    qrPacientesACTIVARDESCUENTOS: TIntegerField;
    qrPacientesUSARALIASNOMBRE: TIntegerField;
    qrPacientesUSARALIASPRUEBAS: TIntegerField;
    qrPacientesSIEMPREINTERNET: TIntegerField;
    qrPacientesIMPRIMIRALIASNOMBRE: TIntegerField;
    qrPacientesIMPRIMIRALIASPRUEBA: TIntegerField;
    qrPacientesIMPRIMIRSOLOTOTALES: TIntegerField;
    qrPacientesIMPRIMIRALIASRESULTADOS: TIntegerField;
    qrPacientesUSARACUERDOPROPIO: TIntegerField;
    qrPacientesALIAS: TStringField;
    qrPacientesQUIENPAGA: TStringField;
    qrPacientesTIPOCLIENTE: TStringField;
    qrPacientesENTREGARRESULTADOS: TStringField;
    qrPacientesTEXTOREFERENCIA: TStringField;
    qrPacientesSIEMPREIMPRIMIR: TIntegerField;
    qrPacientesTIPOSANGRE: TStringField;
    qrPacientesPACIENTECIAID: TStringField;
    qrPacientesSECTOR: TStringField;
    qrPacientesUSUARIOINTERNET: TStringField;
    qrPacientesCLAVEINTERNET: TStringField;
    qrPacientesTIPOINTERNET: TStringField;
    qrPacientesCLASECREDITO: TStringField;
    qrPacientesDOCTORID: TStringField;
    qrPacientesSEXO: TIntegerField;
    qrPacientesESTATUS: TIntegerField;
    qrPacientesTIPOCLIENTEAS400: TIntegerField;
    qrPacientesCODIGOIDAS400: TStringField;
    qrPacientesGRUPOPRECIO: TStringField;
    qrPacientesFORMAPAGO: TStringField;
    qrPacientesDATAAREAID: TStringField;
    qrPacientesRECID: TIntegerField;
    qrPacientesGRUPODESCUENTOLINEA: TStringField;
    qrPacientesGRUPODESCUENTOTOTAL: TStringField;
    cxGrid1DBTableView1IN5MUE: TcxGridDBColumn;
    cxGrid1DBTableView1IN5NOM: TcxGridDBColumn;
    cxGrid1DBTableView1IN5EDA: TcxGridDBColumn;
    cxGrid1DBTableView1IN5TEL: TcxGridDBColumn;
    cxGrid1DBTableView1IN5FEC: TcxGridDBColumn;
    cxGrid1DBTableView1IN5SEX: TcxGridDBColumn;
    cxGrid1DBTableView1IN5CED: TcxGridDBColumn;
    cxGrid1DBTableView1IN5SUC: TcxGridDBColumn;
    cxGrid1DBTableView1IN5CLI: TcxGridDBColumn;
    cxGrid1DBTableView1IN5FAC: TcxGridDBColumn;
    cxGrid1DBTableView1IN5REF: TcxGridDBColumn;
    cxGrid1DBTableView1IN5ACT: TcxGridDBColumn;
    cxGrid1DBTableView1IN5POL: TcxGridDBColumn;
    cxGrid1DBTableView1IN5LAB: TcxGridDBColumn;
    cxGrid1DBTableView1IN5APR: TcxGridDBColumn;
    qrClientesSINPRFILTER: TIntegerField;
    qrPacientesSINPRFILTER: TIntegerField;
    cxGrid2DBTableView2IN6MUE: TcxGridDBColumn;
    qrEntradaPaciente: TADOQuery;
    dsEntradaPaciente: TDataSource;
    qrEntradaPacienteENTRADAID: TStringField;
    qrEntradaPacienteFECHA: TDateTimeField;
    qrEntradaPacienteHORAENTRADA: TStringField;
    qrEntradaPacientePACIENTEID: TStringField;
    qrEntradaPacienteCLIENTEID: TStringField;
    qrEntradaPacienteDOCTORID: TStringField;
    qrEntradaPacientePOLIZAID: TStringField;
    qrEntradaPacienteENCLINICA: TIntegerField;
    qrEntradaPacienteRECORDCLINICA: TStringField;
    qrEntradaPacienteNUMEROHABITACION: TStringField;
    qrEntradaPacienteFECHAENTRADA: TDateTimeField;
    qrEntradaPacienteFECHADEALTA: TDateTimeField;
    qrEntradaPacienteFECHAPROMETIDA: TDateTimeField;
    qrEntradaPacienteHORAPROMETIDA: TStringField;
    qrEntradaPacienteFLEBOTOMISTAID: TStringField;
    qrEntradaPacienteNOTA: TStringField;
    qrEntradaPacientePROYECTOID: TStringField;
    qrEntradaPacienteRECORDID: TIntegerField;
    qrEntradaPacienteBRUTO: TBCDField;
    qrEntradaPacienteDESCUENTO: TBCDField;
    qrEntradaPacienteSUBTOTAL: TBCDField;
    qrEntradaPacienteNETO: TBCDField;
    qrEntradaPacienteNOMBREPACIENTE: TStringField;
    qrEntradaPacienteDIRECCION: TStringField;
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
    qrEntradaPacienteNCFTYPEID: TStringField;
    qrEntradaPacienteNCFID: TStringField;
    qrEntradaPacienteNCFNAME: TStringField;
    qrEntradaPacienteSEXO: TIntegerField;
    qrEntradaPacienteCUADRADO: TIntegerField;
    qrEntradaPacienteTRANSFERIDO: TIntegerField;
    qrEntradaPacienteSUCURSAL: TIntegerField;
    qrEntradaPacienteNUMEROINTERNET: TIntegerField;
    qrEntradaPacientePUBLICARINTERNETCLIENTE: TIntegerField;
    qrEntradaPacienteCOBERTURAPRECONFIRMADA: TIntegerField;
    qrEntradaPacienteCOBERTURAMONTOPRECONFIRMADO: TBCDField;
    qrEntradaPacienteTRANSFERENCIA: TStringField;
    qrEntradaPacienteGRUPOPRECIO: TStringField;
    qrEntradaPacienteTIPODOCUMENTO: TIntegerField;
    qrEntradaPacienteGRUPODESCUENTOLINEA: TStringField;
    qrEntradaPacienteGRUPODESCUENTOTOTAL: TStringField;
    qrEntradaPacienteRESULTADOCLIENTE: TIntegerField;
    qrEntradaPacienteRESULTADODOCTOR: TIntegerField;
    qrEntradaPacienteRESULTADOPACIENTE: TIntegerField;
    qrEntradaPacienteFROM_CLINICA: TIntegerField;
    qrEntradaPacienteSINPRFILTER: TIntegerField;
    qrEntradaPacienteFECHANACIMIENTO: TDateTimeField;
    qrEntradaPacienteCOD_CASO: TStringField;
    qrEntradaPacienteDATAAREAID: TStringField;
    qrEntradaPacienteRECID: TIntegerField;
    qrEntradaPacienteDetalle: TADOQuery;
    dsEntradaPacienteDetalle: TDataSource;
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
    cxGrid2DBTableView2IN6ACT: TcxGridDBColumn;
    procedure qrEntradaPacienteDetallePRUEBAIDChange(Sender: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtProcesarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  protected
    procedure SetColorTo(iColor: TColor);
  private
    { Private declarations }
  public
    { Public declarations }
    _fecha               : String;
    _nacim               : String; 
    operacion            : String;
    cobroid              : String;
    Docto_Ant            : String;
    Muestra_Ant          : String;
    ClienteFirst         : String;
    ClienteSecond        : String;
    ClienteRecibo        : String;
    ClienteFactura       : String;
    ConceptoNC           : String;
    valorNC              : Double;
    valorND              : Double;
    pendiente            : Double;
    efectivo             : Double;
    sumatotal            : Double;
    devuelta             : Double;
    precio_combo         : Double;
    comboprecio          : Boolean;
    comboborrar          : Boolean;
    check_balance        : Boolean;
    Act_2da              : Boolean;
    seg_late             : Boolean;
    preconfir            : Boolean;
    cambiarprecio        : Boolean;
    combodescto          : Integer;
    Record_Ant           : Integer;
    factor               : Integer;
    _recorId             : Integer;
    curCoberturaAplicada : Integer;

////////////////////////////////////////////////////////////////////////////////

    Descripcion          : string;
    depact,muestraact    : string;
    colact               : integer;
    SecAct               : integer;
    secuencia            : integer;
    secuencialabel       : integer;

    qfindCltParams       : TADOQuery;
    qfindPacientes       : TADOQuery;
    qfindSucursal        : TADOQuery;

    _total_sangre        : Integer;
    _total_envase        : Integer;
    LabelRecId           : Integer;
    LabelNumero          : Integer;
    LabelSecuencia       : Integer;

////////////////////////////////////////////////////////////////////////////////

    function GetEntradaID_Factura  : String;
    function GetEntradaID_Exterior : String;
    function GetReciboNo           : String;
    function GetNotaCredito        : String;
    function GetNextSecDoc(tipodoc : String) : String;

    procedure Val_Forma_Pago(Forma_Pago: string);

    procedure ActDetalle;
    procedure ActTotales;

    procedure Buscar_Paciente(_valor: string);
    procedure Buscar_Clientes(_valor : String);

    procedure Buscar_Grupo_Clt(_valor: string);
    procedure Buscar_Grupo_Pac(_valor: string);

    procedure Agregar_Pacientes(PacienteId : String);
    procedure Agregar_Clientes(ClienteId : String);

    function GetSecuenciaId : Integer;
    function MaxSecuenciaLinea : Integer;
    function GetSecuencia_Id(_valor: String) : Integer;

    procedure Val_Exterior;

    procedure Buscar_Cod_Cups(cliente: String; prueba: String);

    function CalcularCoberturaAplicada : Double;
    function Valor_Cobertura(_registro: integer) : Double;
    function ImporteLinea : Double;
    function TotalDescuentoLinea : Double;
    function ImporteBrutoExclLineaActual(refrecid : integer; secuencia : integer) : Double;
    function ImporteBrutoExclLineaActualAplica(refrecid : integer ;secuencia : integer) : Double;
    function ImporteBrutoExclLineaActualAplicaAndCobertura(refrecid : integer ;secuencia : integer) : Double;

    procedure Buscar_Combo;
    procedure Actu_Precio_Combo;
    procedure Insertar_Combo_Precio;
    procedure Insertar_Combo_Blanco;

    procedure NuevaVenta;
    procedure Buscar_Ordenes_Abiertas;
    procedure Transferir_Ordenes_AS400_PuntodeVenta;
    procedure Transferir_Detalle_AS400_PuntodeVenta;

    procedure Insertar_Pago_AS400_PuntodeVenta;
    function GetSecuenciaAS400(_sucursal : String; _sucAS400: Integer) : Integer;
    function GetReciboAS400(tipodoc : string; _sucursal : String; _sucAS400: Integer) : String;

    procedure Crear_Registro;

    procedure CrearCobroAxapta(cliente: string; paciente: string; tipodoc: string;
                               _cobroid: string; documento: string; fecha: TDateTime;
                               moneda:  string; aplica: string; _refId: Integer;
                               valor: Double; _areaId: string; _recId: Integer;
                               _padreId: string; _cuadro: Integer; _transf: Integer;
                               _suc: String; _forma: String; valpay: Double; filter: Integer);

    procedure CrearTransCliente(cliente: string; tipodoc: string; documento: string;
                                tipoaplica: string; documentoaplica: string; fecha : TDateTime;
                                valor: Double; moneda :string; paciente: string; filter: Integer);
  end;

Var
  frmTransferenciaAS400 : TfrmTransferenciaAS400;
  qfindGrupoClt         : TADOQuery;
  qfindGrupoPac         : TADOQuery;
  qfindCltParams        : TADOQuery;
  qfindPacientes        : TADOQuery;
  qfindSucursal         : TADOQuery;

  qfindprueba           : TADOQuery;
  qfindprulab           : TADOQuery;
  qpruebadesc           : TADOQuery;
  qfindprint            : TADOQuery;
  qfindcodcup           : TADOQuery;
  qfindRepetir          : TADOQuery;
  qfindcombo            : TADOQuery;

implementation

uses ActionsDM, cxExportGrid4Link, DataModule, UInterfaseAs400, Main;

{$R *.dfm}


procedure TfrmTransferenciaAS400.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  InterfaseAS400.ASConnection.Close;
end;

procedure TfrmTransferenciaAS400.FormCreate(Sender: TObject);
begin
  inherited;
  SetColorTo(Dm.ColorModifica);
//  SetColorTo(Dm.ColorConsulta);

  Buscar_Ordenes_Abiertas;
end;


procedure TfrmTransferenciaAS400.SetColorTo(iColor: TColor);
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


procedure TfrmTransferenciaAS400.Buscar_Ordenes_Abiertas;
begin
  If dm.PingHost('10.0.0.1',1) then
    Begin
      Try
        InterfaseAS400.ASConnection.Close;
        InterfaseAS400.ASConnection.Open;

        //Buscando las Entradas del AS-400.
        InterfaseAS400.qrAS400Entradas.Close;
        InterfaseAS400.qrAS400Entradas.Open;

        if (InterfaseAS400.qrAS400Entradas.RecordCount > 0) then
          Begin
            InterfaseAS400.qrAS400Entradas.First;

            //Buscando las Pruebas de la Entrada del AS-400.
            InterfaseAS400.qrAS400Pruebas.Close;
            InterfaseAS400.qrAS400Pruebas.Parameters.ParamByName('Muestra').Value := InterfaseAS400.qrAS400EntradasIN5MUE.AsString;
            InterfaseAS400.qrAS400Pruebas.Open;
            InterfaseAS400.qrAS400Pruebas.First;
          end;
      Except
        Raise exception.CreateFmt(' Existe un Problema de Comunicacion Con el Servidor AS-400. '+ #13 +
                                  ' Por Favor, LLame al Departamento de Computos. '+ #13 +
                                  ' ó Intentelo Nuevamente.!!!', []);
      End;
    End;
end;


procedure TfrmTransferenciaAS400.Buscar_Paciente(_valor: string);
begin
  qrPacientes.Close;
  qrPacientes.SQL.Text := ' SELECT * FROM PTCliente WHERE ClienteID = '+ #39 + _valor + #39 +
                          ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39;
  qrPacientes.Open;

  //Buscando los Datos del Grupo del Paciente.
  Buscar_Grupo_Pac(qfindPacientes.FieldByName('GrupoCliente').AsString);
end;


procedure TfrmTransferenciaAS400.Buscar_Clientes(_valor: string);
Var
  _texto : String;
begin
  _texto := FormatFloat('000000', StrToInt(_valor));

  //Buscando los Datos del Cliente Registrado en el Punto de Venta.
  qfindCltParams := DM.Find_Ldr('SELECT * FROM PTCliente WHERE CodigoIdAS400 = :cli', _texto);
{
  qfindCltParams.SQL.Clear;
  qfindCltParams.SQL.Add('SELECT * FROM PTCliente WHERE CAST(CodigoIdAS400 AS Integer) = :cli AND DataAreaId = '+#39+DM.CurEmpresa+#39);
  qfindCltParams.Open;
}
  If qfindCltParams.FieldByName('Principal').AsString <> '' then
    Begin
      If (qfindCltParams.FieldByName('UsarAcuerdoPropio').AsInteger = 1) then
        Begin
          //Buscando los Acuerdos Comerciales del Cliente HIJO.
          ClienteFactura := qrEntradaPacienteClienteId.Value;

            If qrEntradaPaciente.State in [dsInsert] Then
              Begin
                qrEntradaPacienteAcuerdoPropio.Value := 1;
                qrEntradaPacienteClientePadre.Value := qfindCltParams.FieldByName('Principal').AsString;
              End;
          End
        Else
          Begin
            //Buscando los Acuerdos Comerciales del Cliente (PADRE - PRINCIPAL).
            ClienteFactura := qfindCltParams.FieldByName('Principal').AsString;

            If qrEntradaPaciente.State in [dsInsert] Then
              Begin
                qrEntradaPacienteAcuerdoPropio.Value := 0;
                qrEntradaPacienteClientePadre.Value := qfindCltParams.FieldByName('Principal').AsString;
              End;
          End;
      End
    Else
      Begin
        //Buscando los Acuerdos Comerciales del Cliente Registrado en el Punto de Venta.
        ClienteFactura := qfindCltParams.FieldByName('ClienteID').AsString;

        If qrEntradaPaciente.State in [dsInsert] Then
         Begin
           qrEntradaPacienteAcuerdoPropio.Value := 0;
           qrEntradaPacienteClientePadre.Value := qfindCltParams.FieldByName('ClienteID').AsString;
         End;
      End;

    //Cargando los PARAMETROS del CLIENTE A FACTURAR en el Punto de Venta.
    qfindCltParams := DM.Find_Ldr('SELECT * FROM PTCliente WHERE ClienteID = :cli', ClienteFactura);

    //Buscando los Datos del Grupo del Cliente.
    Buscar_Grupo_Clt(qfindCltParams.FieldByName('GrupoCliente').AsString);
end;


//Buscando los Datos del Grupo del Cliente.
Procedure TfrmTransferenciaAS400.Buscar_Grupo_Clt(_valor : String);
begin
 qfindGrupoClt := DM.Find_Ldr('SELECT * FROM PTGrupoCliente WHERE GrupoCliente = :grp', _valor);
end;


//Buscando los Datos del Grupo del Paciente.
Procedure TfrmTransferenciaAS400.Buscar_Grupo_Pac(_valor : String);
begin
 qfindGrupoPac := DM.Find_Ldr('SELECT * FROM PTGrupoCliente WHERE GrupoCliente = :grp', _valor);
end;


procedure TfrmTransferenciaAS400.BtProcesarClick(Sender: TObject);
Var
 qbusqueda    : TADOQuery;
 qfindciudad  : TADOquery;
begin
 Try
  Buscar_Ordenes_Abiertas;
  if (InterfaseAS400.qrAS400Entradas.RecordCount > 0) then
   Begin
    If ( DM.Mensaje('Desea Facturar Estas Ordenes en el Punto de Venta?', mb_yesno) = id_yes ) Then
     Begin
      qfindCltParams := DM.NewQuery;

      InterfaseAS400.qrAS400Entradas.First;
      While Not InterfaseAS400.qrAS400Entradas.Eof Do
        Begin
          DM.CurEmpresa := 'ldr';          //DM.CurEmpresa := 'pru';

          //Buscando los Datos de la Sucursal Actual.
          qfindSucursal := DM.Find_Ldr('SELECT * FROM PTSucursal WHERE Sucursal = :suc', InterfaseAS400.qrAS400EntradasIN5SUC.AsString);
          DM.CurSucursal := qfindSucursal.FieldByName('SUCURSALID').AsString;

          NuevaVenta;

          if (InterfaseAS400.qrAS400EntradasIN5CLI.AsString = '1') then
            Buscar_Clientes('00029448')
          Else
            Buscar_Clientes(InterfaseAS400.qrAS400EntradasIN5CLI.AsString);

          Agregar_Clientes(qfindCltParams.FieldByName('ClienteId').AsString);

          Agregar_Pacientes('00029448');
{
          qbusqueda := DM.Find_Ldr('SELECT * FROM PTDoctor WHERE DoctorId = :doc', InterfaseAS400.qrAS400EntradasIN5CDO.AsString);

          if (qbusqueda.RecordCount > 0) then
            Begin
              qrEntradaPacienteDoctorID.Value := qbusqueda.FieldByName('DoctorId').AsString;
              qrEntradaPacienteNombreDoctor.Value := qbusqueda.FieldByName('Nombre').AsString;
              qrEntradaPacienteResultadoDoctor.Value := qbusqueda.FieldByName('ResultadoDoctor').AsInteger;
              qrEntradaPacientePublicarInternetDoctor.Value := qbusqueda.FieldByName('PublicarInternet').AsInteger;

             if (qbusqueda.FieldByName('DoctorId').AsInteger = 1) then
               qrEntradaPacienteNombreDoctor.Value := '';
            End;
}
          If qrEntradaPaciente.State in [dsEdit, dsInsert] then
            Begin
              If (InterfaseAS400.qrAS400EntradasIN5ENV.Value > 1) Or
                 (InterfaseAS400.qrAS400EntradasIN5MON.Value = 1) Then
                Val_Exterior;

              If (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoExt.Value) Or
                 (qrEntradaPacienteTipoDocumento.Value = 3) Or
                 (qrEntradaPacienteFactExterior.Value = 1) Then
                begin
                  Val_Exterior;
                  qrEntradaPacienteENTRADAID.Value := GetEntradaID_Exterior;
                end
              Else
               qrEntradaPacienteENTRADAID.Value := GetEntradaID_Factura;

              qrEntradaPacienteCUADRADO.Value := 1;
              qrEntradaPacienteTRANSFERIDO.Value := 0;
              qrEntradaPacienteMUESTRANO.Value := InterfaseAS400.qrAS400EntradasIN5MUE.AsString;
              qrEntradaPacienteFechaRegistro.Value := StrToDate(_fecha); //InterfaseAS400.qrAS400EntradasIN5FEC.Value;
              qrEntradaPacienteHoraRegistro.Value := InterfaseAS400.qrAS400EntradasIN5HOR.AsString;

              qrEntradaPacientePacienteID.Value := DM.qrPacientesClienteID.Value;
              qrEntradaPacienteNombrePaciente.Value := InterfaseAS400.qrAS400EntradasIN5NOM.Value;
              qrEntradaPacienteDireccion.Value := InterfaseAS400.qrAS400EntradasIN5DIR.AsString;
              qrEntradaPacienteTelefonos.Value := InterfaseAS400.qrAS400EntradasIN5TEL.AsString;
              qrEntradaPacienteTelefono2.Value := InterfaseAS400.qrAS400EntradasIN5TEL.AsString;

              If (InterfaseAS400.qrAS400EntradasIN5SEX.Value = 'm') Or
                 (InterfaseAS400.qrAS400EntradasIN5SEX.Value = 'M') Then
                qrEntradaPacienteSexo.Value := 0
              else
                qrEntradaPacienteSexo.Value := 1;

//              If (_nacim <> EmptyStr) Then
//                qrEntradaPacienteFECHANACIMIENTO.Value := StrToDate(_nacim);

              qrEntradaPacienteEdadPaciente.Value := InterfaseAS400.qrAS400EntradasIN5EDA.Value;
              qrEntradaPacientePUBLICARINTERNET.Value := InterfaseAS400.qrAS400EntradasIN5IPA.Value;
              qrEntradaPacienteResultadoPaciente.Value := InterfaseAS400.qrAS400EntradasIN5EPA.Value;

              qrEntradaPacienteUserId.Value := InterfaseAS400.qrAS400EntradasIN5USU.AsString;
              qrEntradaPacienteFLEBOTOMISTAID.Value := InterfaseAS400.qrAS400EntradasIN5USU.AsString;
              qrEntradaPacienteNOTA.Value := InterfaseAS400.qrAS400EntradasIN5COM.AsString;
              qrEntradaPacientePrioridad.Value := InterfaseAS400.qrAS400EntradasIN5URG.Value;

              qrEntradaPacienteDoctorID.Value := InterfaseAS400.qrAS400EntradasIN5CDO.AsString;
              qrEntradaPacienteNombreDoctor.Value := InterfaseAS400.qrAS400EntradasIN5DOC.AsString;
              qrEntradaPacienteResultadoDoctor.Value := InterfaseAS400.qrAS400EntradasIN5EDO.Value;
              qrEntradaPacientePublicarInternetDoctor.Value := InterfaseAS400.qrAS400EntradasIN5IDO.Value;

              If (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSeg.Value) Then
                begin
                  qrEntradaPacienteCoberturaConfirmada.Value := 1;
                  qrEntradaPacientePolizaId.Value := InterfaseAS400.qrAS400EntradasIN5POL.Value;
                  qrEntradaPacienteCoberturaPorc.Value := InterfaseAS400.qrAS400EntradasIN5TAS.Value;
                  qrEntradaPacienteCoberturaValor.Value := InterfaseAS400.qrAS400EntradasIN5FPA.Value;
                  qrEntradaPacienteCoberturaSeguro.Value := InterfaseAS400.qrAS400EntradasIN5FPA.Value;
                  qrEntradaPacienteFECHAASEGURADORA.Value := InterfaseAS400.qrAS400EntradasIN5FEA.Value;
                  qrEntradaPacienteAprobacionNo.Value := InterfaseAS400.qrAS400EntradasIN5APR.AsString;
                  qrEntradaPacienteAPROBACIONPOR.Value := InterfaseAS400.qrAS400EntradasIN5PER.Value;
                  qrEntradaPacienteCOBERTURAMONTOPRECONFIRMADO.Value := InterfaseAS400.qrAS400EntradasIN5FPA.Value;
                end
              Else
                begin
                  qrEntradaPacientePolizaId.Value := InterfaseAS400.qrAS400EntradasIN5REF.Value;
                  qrEntradaPacienteDescuentoPorc.Value := InterfaseAS400.qrAS400EntradasIN5TAS.Value;
                end;

              qrEntradaPacienteBruto.Value := Dm.Redondeo(InterfaseAS400.qrAS400EntradasIN5FAC.Value);
              qrEntradaPacienteSubTotal.Value := Dm.Redondeo(InterfaseAS400.qrAS400EntradasIN5FAC.Value);
              qrEntradaPacienteGastosVarios.Value := Dm.Redondeo(InterfaseAS400.qrAS400EntradasIN5ENV.Value);
              qrEntradaPacienteNeto.Value := Dm.Redondeo(InterfaseAS400.qrAS400EntradasIN5FAC.Value);
              qrEntradaPacienteGastosVarios.Value := Dm.Redondeo(InterfaseAS400.qrAS400EntradasIN5ENV.Value);
              qrEntradaPacienteTotalPagado.Value := Dm.Redondeo(InterfaseAS400.qrAS400EntradasIN5PAG.Value);

              qrEntradaPaciente.Post;
            End;

          Transferir_Ordenes_AS400_PuntodeVenta;

          qrEntradaPaciente.Edit;
          If qrEntradaPaciente.State in [dsEdit, dsInsert] then
            Begin
              qrEntradaPaciente.Edit;

              If (InterfaseAS400.qrAS400EntradasIN5ENV.Value > 1) Or
                 (InterfaseAS400.qrAS400EntradasIN5MON.Value = 1) Then
                Val_Exterior;

              If (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSeg.Value) Then
                begin
                  qrEntradaPacienteCoberturaConfirmada.Value := 1;
                  qrEntradaPacientePolizaId.Value := InterfaseAS400.qrAS400EntradasIN5POL.Value;
                  qrEntradaPacienteCoberturaPorc.Value := InterfaseAS400.qrAS400EntradasIN5TAS.Value;
                  qrEntradaPacienteCoberturaValor.Value := InterfaseAS400.qrAS400EntradasIN5FPA.Value;
                  qrEntradaPacienteCoberturaSeguro.Value := InterfaseAS400.qrAS400EntradasIN5FPA.Value;
                  qrEntradaPacienteFECHAASEGURADORA.Value := InterfaseAS400.qrAS400EntradasIN5FEA.Value;
                  qrEntradaPacienteAprobacionNo.Value := InterfaseAS400.qrAS400EntradasIN5APR.AsString;
                  qrEntradaPacienteAPROBACIONPOR.Value := InterfaseAS400.qrAS400EntradasIN5PER.Value;
                  qrEntradaPacienteCOBERTURAMONTOPRECONFIRMADO.Value := InterfaseAS400.qrAS400EntradasIN5FPA.Value;
                end
              Else
                begin
                  qrEntradaPacientePolizaId.Value := InterfaseAS400.qrAS400EntradasIN5REF.Value;
                  qrEntradaPacienteDescuentoPorc.Value := InterfaseAS400.qrAS400EntradasIN5TAS.Value;
                end;

              qrEntradaPacienteGastosVarios.Value := Dm.Redondeo(InterfaseAS400.qrAS400EntradasIN5ENV.Value);
              qrEntradaPacienteTotalPagado.Value := Dm.Redondeo(InterfaseAS400.qrAS400EntradasIN5PAG.Value);

              qrEntradaPacienteCUADRADO.Value := 1;
              qrEntradaPacienteTRANSFERIDO.Value := 0;
              qrEntradaPacienteMUESTRANO.Value := InterfaseAS400.qrAS400EntradasIN5MUE.AsString;
              qrEntradaPacienteFechaRegistro.Value := StrToDate(_fecha);
              qrEntradaPacienteHoraRegistro.Value := InterfaseAS400.qrAS400EntradasIN5HOR.AsString;

              qrEntradaPacienteNombrePaciente.Value := InterfaseAS400.qrAS400EntradasIN5NOM.Value;
              qrEntradaPacienteDireccion.Value := InterfaseAS400.qrAS400EntradasIN5DIR.AsString;
              qrEntradaPacienteTelefonos.Value := InterfaseAS400.qrAS400EntradasIN5TEL.AsString;
              qrEntradaPacienteTelefono2.Value := InterfaseAS400.qrAS400EntradasIN5TEL.AsString;

              If (InterfaseAS400.qrAS400EntradasIN5SEX.Value = 'm') Or
                 (InterfaseAS400.qrAS400EntradasIN5SEX.Value = 'M') Then
                qrEntradaPacienteSexo.Value := 0
              else
                qrEntradaPacienteSexo.Value := 1;

//              If (_nacim <> EmptyStr) Then
//                qrEntradaPacienteFECHANACIMIENTO.Value := StrToDate(_nacim);

              qrEntradaPacienteEdadPaciente.Value := InterfaseAS400.qrAS400EntradasIN5EDA.Value;
              qrEntradaPacientePUBLICARINTERNET.Value := InterfaseAS400.qrAS400EntradasIN5IPA.Value;
              qrEntradaPacienteResultadoPaciente.Value := InterfaseAS400.qrAS400EntradasIN5EPA.Value;

              qrEntradaPacienteUserId.Value := InterfaseAS400.qrAS400EntradasIN5USU.AsString;
              qrEntradaPacienteFLEBOTOMISTAID.Value := InterfaseAS400.qrAS400EntradasIN5USU.AsString;
              qrEntradaPacienteNOTA.Value := InterfaseAS400.qrAS400EntradasIN5COM.AsString;
              qrEntradaPacientePrioridad.Value := InterfaseAS400.qrAS400EntradasIN5URG.Value;

              qrEntradaPacienteDoctorID.Value := InterfaseAS400.qrAS400EntradasIN5CDO.AsString;
              qrEntradaPacienteNombreDoctor.Value := InterfaseAS400.qrAS400EntradasIN5DOC.AsString;
              qrEntradaPacienteResultadoDoctor.Value := InterfaseAS400.qrAS400EntradasIN5EDO.Value;
              qrEntradaPacientePublicarInternetDoctor.Value := InterfaseAS400.qrAS400EntradasIN5IDO.Value;

              ActTotales;

              qrEntradaPaciente.Post;

              Crear_Registro;
            End;

          //Actualizando la Orden Transferida.
          InterfaseAS400.qrAS400Entradas.Edit;
          InterfaseAS400.qrAS400EntradasIN5ACT.AsString := 'S';
          InterfaseAS400.qrAS400EntradasIN5FAT.AsString := qrEntradaPacienteENTRADAID.AsString;
          InterfaseAS400.qrAS400Entradas.Post;

          FreeAndNil(qbusqueda);
          FreeAndNil(qfindciudad);

          InterfaseAS400.qrAS400Entradas.Next;
        End;

//      FreeAndNil(qbusqueda);
//      FreeAndNil(qfindciudad);
     end;

     Dm.Info('El Proceso de Transferencia de Las ORDENES del AS-400 Concluyo Exitosamente.!!!');
   end;
 Except
   Raise exception.CreateFmt(' Existe un Error con la Muestra No.: '+ #13 + '( ' +
                             InterfaseAS400.qrAS400EntradasIN5MUE.AsString + ' )' + #13 +
                             ' Intentelo Nuevamente.!!!', []);
 End;

 Insertar_Pago_AS400_PuntodeVenta;
end;


procedure TfrmTransferenciaAS400.Transferir_Ordenes_AS400_PuntodeVenta;
begin
  qrEntradaPaciente.Close;
  qrEntradaPaciente.parameters[0].Value := _recorId;
  qrEntradaPaciente.Open;
  qrEntradaPaciente.First;

  Transferir_Detalle_AS400_PuntodeVenta;
end;


procedure TfrmTransferenciaAS400.Transferir_Detalle_AS400_PuntodeVenta;
begin
  //Buscando las Pruebas de la Entrada del AS-400.
  InterfaseAS400.qrAS400Pruebas.Close;
  InterfaseAS400.qrAS400Pruebas.Parameters.ParamByName('Muestra').Value := InterfaseAS400.qrAS400EntradasIN5MUE.AsString;
  InterfaseAS400.qrAS400Pruebas.Open;

  qrEntradaPacienteDetalle.Close;
  qrEntradaPacienteDetalle.parameters[0].Value := _recorId;
  qrEntradaPacienteDetalle.Open;

  InterfaseAS400.qrAS400Pruebas.First;
  While Not InterfaseAS400.qrAS400Pruebas.Eof Do
   Begin
    qfindprueba := DM.Find_Ldr('SELECT * FROM PTPrueba WHERE CodigoIdAs400 = :pru', InterfaseAS400.qrAS400PruebasIN6COD.AsString);

    If qfindprueba.RecordCount = 0 then
      raise exception.CreateFmt('El código de prueba digitado no existe.',[])
    Else
      begin
        qrEntradaPacienteDetalle.Insert;
        qrEntradaPacienteDetallePruebaID.Value := qfindprueba.FieldByName('PruebaID').Value;

        qrEntradaPacienteDetalle.Edit;
        qrEntradaPacienteDetalleComentario.Value := InterfaseAS400.qrAS400PruebasIN6COM.Value;
        qrEntradaPacienteDetalleCOMENTARIOMUESTRA.Value := InterfaseAS400.qrAS400PruebasIN6COM.Value;
        qrEntradaPacienteDetalleCODIGOAS400.Value := InterfaseAS400.qrAS400PruebasIN6COD.AsString;
        qrEntradaPacienteDetalleMUESTRANO.Value := InterfaseAS400.qrAS400PruebasIN6MUE.AsString;
        qrEntradaPacienteDetalleDESCRIPCION.Value := InterfaseAS400.qrAS400PruebasIN6NOM.Value;
        qrEntradaPacienteDetallePrecio.Value := InterfaseAS400.qrAS400PruebasIN6VAL.Value;
//        qrEntradaPacienteDetalleTOTALLINEA.Value := InterfaseAS400.qrAS400PruebasIN6VAL.Value;

        qrEntradaPacienteDetalleCUADRADO.Value := 1;
        qrEntradaPacienteDetalleTRANSFERIDO.Value := 0;
{
        qrEntradaPacienteDetalleFacturar.Value := 0;

        qrEntradaPacienteDetalleDescPct.Value := 0;
        qrEntradaPacienteDetalleDescuento.Value := 0;
        qrEntradaPacienteDetalleDescuentoPorc.Value := 0;

        qrEntradaPacienteDetalleCoberturaAplica.Value := 0;
        qrEntradaPacienteDetalleCoberturaExpPorc.Value := 0;
        qrEntradaPacienteDetalleCoberturaEspecial.Value := 0;
        qrEntradaPacienteDetalleCoberturaEspecialPorc.Value := 0;
}
        qrEntradaPacienteDetalle.Post;

        //Actualizando la Orden Transferida.
        InterfaseAS400.qrAS400Pruebas.Edit;
        InterfaseAS400.qrAS400PruebasIN6ACT.AsString := 'S';
        InterfaseAS400.qrAS400PruebasIN6FAT.AsString := qrEntradaPacienteENTRADAID.AsString;
        InterfaseAS400.qrAS400Pruebas.Post;
      end;

     InterfaseAS400.qrAS400Pruebas.Next;
   End;
end;


procedure TfrmTransferenciaAS400.Insertar_Pago_AS400_PuntodeVenta;
Var
  monto      : Double;
  qfind      : TADOQuery;
  qupdate    : TADOquery;
  qfindcobro : TADOquery;
  qinsert    : TADOQuery;
  qentrada   : TADOQuery;
  qsucursal  : TADOQuery;
  qpagoEfec  : TADOQuery;
  qpagoCard  : TADOQuery;
begin
 if DM.Mensaje('Desea Transferir Los Cobros del AS-400 al Punto de Venta.?',mb_yesno) = id_yes then
   begin
     qfind      := DM.NewQuery;
     qinsert    := DM.NewQuery;
     qupdate    := DM.NewQuery;
     qentrada   := DM.NewQuery;
     qfindcobro := DM.NewQuery;

     if Dm.PingHost('10.0.0.1',1) then
       Begin
         Try
           InterfaseAS400.ASConnection.Close;
           InterfaseAS400.ASConnection.Open;

           InterfaseAS400.qrAS400Pagos.Close;
           InterfaseAS400.qrAS400Pagos.Open;

           DM.qrParametro.Close;
           DM.qrParametro.Open;

           If (InterfaseAS400.qrAS400Pagos.RecordCount > 0) then
            Begin
              InterfaseAS400.qrAS400Pagos.First;
              While Not InterfaseAS400.qrAS400Pagos.Eof Do
              Begin
               qentrada.Close;
               qentrada.SQL.Text := ' SELECT * FROM PTEntradaPaciente '+
                                    ' WHERE MuestraNo = '+ #39 + InterfaseAS400.qrAS400PagosIN17MU.AsString + #39 +
                                    ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39;
               qentrada.Open;

               If (qentrada.Recordcount > 0) then
                 Begin
                   monto := 0;
                   qrEntradaPaciente.Close;
                   qrEntradaPaciente.parameters[0].Value := qentrada.FieldByName('RecID').AsInteger;
                   qrEntradaPaciente.Open;

                   qrEntradaPacienteDetalle.Close;
                   qrEntradaPacienteDetalle.parameters[0].Value := qentrada.FieldByName('RecID').AsInteger;
                   qrEntradaPacienteDetalle.Open;

                   qSucursal := DM.Find_Ldr('SELECT * FROM PTSucursal WHERE Sucursal = :suc', InterfaseAS400.qrAS400PagosIN17SU.AsString);
                   DM.CurSucursal := qSucursal.FieldByName('SUCURSALID').AsString;

                   If (InterfaseAS400.qrAS400PagosIN17EF.AsFloat > 1) then
                     qpagoEfec := DM.Find_Ldr('SELECT * FROM PTFormaDePago WHERE FormaDePagoID = :pay', 'EFE');

                   If (InterfaseAS400.qrAS400PagosIN17TA.AsFloat > 1) then
                     qpagoCard := DM.Find_Ldr('SELECT * FROM PTFormaDePago WHERE FormaDePagoID = :pay', 'CK');

    ////////////////////////////////////////////////////////////////////////////////

    //               cobroid := IntToStr(DM.Get_Secuencia('Secuencia'));
                   cobroid := DM.Get_Secuencia_Big('COBRO', qSucursal.FieldByName('SUCURSALID').AsString);

                   if (Length(InterfaseAS400.qrAS400PagosIN17FE.AsString) < 8) then
                     begin
                       _fecha := '0' + Copy(InterfaseAS400.qrAS400PagosIN17FE.AsString, 1, 1) + '/' +
                                 Copy(InterfaseAS400.qrAS400PagosIN17FE.AsString, 2, 2) + '/' +
                                 Copy(InterfaseAS400.qrAS400PagosIN17FE.AsString, 4, 4);
                     end
                   else
                     begin
                       _fecha := Copy(InterfaseAS400.qrAS400PagosIN17FE.AsString, 1, 2) + '/' +
                                 Copy(InterfaseAS400.qrAS400PagosIN17FE.AsString, 3, 2) + '/' +
                                 Copy(InterfaseAS400.qrAS400PagosIN17FE.AsString, 5, 4);
                     end;

                   qinsert.Close;
                   qinsert.SQL.Text := ' INSERT INTO PTCobro (CobroID,SucursalID,Fecha,Hora,PacienteID,UsuarioID,refRecid,TotalFactura,'+
                                       ' TotalPagado,PendienteFactura,ClienteID,Aplicado,MonedaId,TipoDoc,EntradaId,SinPrFilter,RecId) '+
                                       ' VALUES (:0,:1,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16)';
                   qinsert.Parameters[0].Value := cobroid;
                   qinsert.Parameters[1].Value := qSucursal.FieldByName('SUCURSALID').AsString;
                   qinsert.Parameters[2].Value := _fecha; //DM.Buscar_Fecha_Actual;
                   qinsert.Parameters[3].Value := InterfaseAS400.qrAS400PagosIN17HO.AsString;
                   qinsert.Parameters[4].Value := qrEntradaPacientePacienteID.Value;
                   qinsert.Parameters[5].Value := InterfaseAS400.qrAS400PagosIN17ID.AsString;
                   qinsert.Parameters[6].Value := qrEntradaPacienteRECID.Value;
                   qinsert.Parameters[7].Value := DM.Redondeo(qrEntradaPacienteNeto.Value);
                   qinsert.Parameters[8].Value := DM.Redondeo(qrEntradaPacienteTotalPagado.Value);
                   qinsert.Parameters[9].Value := DM.Redondeo(qrEntradaPacienteNeto.Value - qrEntradaPacienteTotalPagado.Value);
                   qinsert.Parameters[10].Value := qrEntradaPacienteClienteID.Value;
                   qinsert.Parameters[11].Value := 0;
                   qinsert.Parameters[12].Value := qrEntradaPacienteMonedaID.Value;
                   qinsert.Parameters[13].Value := 'RI';
                   qinsert.Parameters[14].Value := qrEntradaPacienteEntradaId.Value;
                   qinsert.Parameters[15].Value := qrEntradaPacienteSINPRFILTER.Value;
                   qinsert.Parameters[16].Value := StrToInt(DM.Get_Secuencia_Big('SEDOC', qSucursal.FieldByName('SUCURSALID').AsString));
                   qinsert.ExecSQL;

                   If (InterfaseAS400.qrAS400PagosIN17TA.AsFloat > 1) then
                     Begin
                       monto := DM.Redondeo(InterfaseAS400.qrAS400PagosIN17TA.AsFloat);
                       qinsert.Close;
                       qinsert.SQL.Clear;
                       qinsert.SQL.Text := ' INSERT INTO PTCobroDetalle (CobroID, FormaDePagoID, Monto, Orden, '+
                                           ' RefRecid, MonedaID, MontoMST, SinPrFilter, RecId) '+
                                           ' VALUES (:0, :1, :2, :3, :4, :5, :6, :7, :8)';

                       qinsert.Parameters[0].Value := cobroid;
                       qinsert.Parameters[1].Value := qpagoEfec.FieldByName('FormaDePagoId').AsString;
                       qinsert.Parameters[2].Value := monto;
                       qinsert.Parameters[3].Value := qpagoEfec.FieldByName('Orden').AsString;
                       qinsert.Parameters[4].Value := qrEntradaPacienteRECID.Value;
                       qinsert.Parameters[5].Value := qpagoEfec.FieldByName('Moneda').AsString; //qrEntradaPacienteMonedaID.Value;
                       qinsert.Parameters[6].Value := DM.ValorMoneda(monto, qrEntradaPacienteMonedaID.Value,DM.qrParametroMonedaID.Value, DM.SystemDate);
                       qinsert.Parameters[7].Value := qrEntradaPacienteSINPRFILTER.Value;
                       qinsert.Parameters[8].Value := StrToInt(DM.Get_Secuencia_Big('SEDOC', qSucursal.FieldByName('SUCURSALID').AsString));

                       qinsert.ExecSQL;
                     End;

                   If (InterfaseAS400.qrAS400PagosIN17EF.AsFloat > 1) then
                     Begin
                       monto := DM.Redondeo(InterfaseAS400.qrAS400PagosIN17EF.AsFloat);
                       qinsert.Close;
                       qinsert.SQL.Clear;
                       qinsert.SQL.Text := ' INSERT INTO PTCobroDetalle (CobroID, FormaDePagoID, Monto, Orden, '+
                                           ' RefRecid, MonedaID, MontoMST, SinPrFilter, RecId) '+
                                           ' VALUES (:0, :1, :2, :3, :4, :5, :6, :7, :8)';
                       qinsert.Parameters[0].Value := cobroid;
                       qinsert.Parameters[1].Value := qpagoEfec.FieldByName('FormaDePagoId').AsString;
                       qinsert.Parameters[2].Value := monto;
                       qinsert.Parameters[3].Value := qpagoEfec.FieldByName('Orden').AsString;
                       qinsert.Parameters[4].Value := qrEntradaPacienteRECID.Value;
                       qinsert.Parameters[5].Value := qpagoEfec.FieldByName('Moneda').AsString; //qrEntradaPacienteMonedaID.Value;
                       qinsert.Parameters[6].Value := DM.ValorMoneda(monto, qrEntradaPacienteMonedaID.Value,DM.qrParametroMonedaID.Value, DM.SystemDate);
                       qinsert.Parameters[7].Value := qrEntradaPacienteSINPRFILTER.Value;
                       qinsert.Parameters[8].Value := StrToInt(DM.Get_Secuencia_Big('SEDOC', qSucursal.FieldByName('SUCURSALID').AsString));
                       qinsert.ExecSQL;
                     End;

                   qfind.Close;
                   qfind.SQL.Text := ' SELECT SUM(Monto) FROM PTCobroDetalle WHERE CobroId = '+ #39 + cobroid + #39 +
                                     ' AND refRecId = '+ #39 + qrEntradaPacienteRECID.AsString + #39;
                   qfind.Open;

                   If (qfind.Fields[0].AsFloat > 1) then
                     Begin
                       qupdate.Close;
                       qupdate.SQL.Text := ' DELETE FROM PTCobroDetalle WHERE CobroID = :rec AND Monto < 1 ';
                       qupdate.Parameters[0].Value := cobroid;
                       qupdate.ExecSQL;

                       qupdate.Close;
                       qupdate.SQL.Text := ' UPDATE PTCobro SET '+
                                           ' TotalCobrado = :tot, '+
                                           ' PendienteCobro = :pen, '+
                                           ' ReciboNo = :rec, '+
                                           ' Aplicado = :apl '+
                                           ' WHERE CobroID = :cob '+
                                           ' AND refRecId = :ref '+
                                           ' AND EntradaId = :ent';
                       qupdate.Parameters.ParamByName('tot').Value := DM.Redondeo(qfind.Fields[0].AsFloat);

                       If (DM.Redondeo(qrEntradaPacienteNeto.Value -
                                       qrEntradaPacienteTotalPagado.Value -
                                       qfind.Fields[0].AsFloat) > 1) then
                         qupdate.Parameters.ParamByName('pen').Value := DM.Redondeo(qrEntradaPacienteNeto.Value -
                                                                                    qrEntradaPacienteTotalPagado.Value -
                                                                                    qfind.Fields[0].AsFloat)
                       Else
                         qupdate.Parameters.ParamByName('pen').Value := 0;

                       qupdate.Parameters.ParamByName('rec').Value := GetReciboAS400('RI', qSucursal.FieldByName('SUCURSALID').AsString,
                                                                                           InterfaseAS400.qrAS400PagosIN17SU.AsInteger);
                       qupdate.Parameters.ParamByName('apl').Value := 1;
                       qupdate.Parameters.ParamByName('cob').Value := cobroid;
                       qupdate.Parameters.ParamByName('ref').Value := qrEntradaPacienteRECID.Value;                        
                       qupdate.Parameters.ParamByName('ent').Value := qrEntradaPacienteEntradaId.Value;
                       qupdate.ExecSQL;
                     End;

                   qfindcobro.Close;
                   qfindcobro.SQL.Text := ' SELECT * FROM PTCobro WHERE CobroID = '+ #39 + cobroid + #39 +
                                          ' AND refRecId = '+ #39 + qrEntradaPacienteRECID.AsString + #39 +
                                          ' AND EntradaId = '+ #39 + qrEntradaPacienteEntradaId.AsString + #39;
                   qfindcobro.Open;

                   if (qfindcobro.RecordCount > 0) and (qfind.Fields[0].AsFloat > 1) then
                     Begin
                       CrearTransCliente(qrEntradaPacienteCLIENTEID.Value, 'RI', qfindcobro.FieldByName('ReciboNo').AsString,
                                         'FT', qrEntradaPacienteEntradaID.Value, qfindcobro.FieldByName('Fecha').Value,
                                         (qfind.Fields[0].AsFloat * -1), qrEntradaPacienteMonedaId.Value,
                                         qrEntradaPacientePACIENTEID.Value, qrEntradaPacienteSINPRFILTER.Value);
                     End;

                   If (qfind.Fields[0].AsFloat > 1) then
                     Begin
                       qupdate.Close;
                       qupdate.SQL.Clear;
                       qupdate.SQL.Text := ' INSERT INTO PTCobroAplicado (CobroID, EntradaId, MontoAplicado, RecId) '+
                                           ' VALUES (:0, :1, :2, :3)';
                       qupdate.Parameters[0].Value := cobroid;
                       qupdate.Parameters[1].Value := qrEntradaPacienteEntradaID.value;
                       qupdate.Parameters[2].Value := qfind.Fields[0].AsFloat;
                       qupdate.Parameters[3].Value := StrToInt(DM.Get_Secuencia_Big('SEDOC', qSucursal.FieldByName('SUCURSALID').AsString));
                       qupdate.ExecSQL;
                     end;

                   qrEntradaPaciente.Edit;
                   qrEntradaPacienteTotalPagado.Value := qrEntradaPacienteTotalPagado.Value + qfind.Fields[0].AsFloat;
                   qrEntradaPaciente.Post;

                   If (InterfaseAS400.qrAS400PagosIN17TA.AsFloat > 1) then
                     Begin
                       monto := DM.Redondeo(InterfaseAS400.qrAS400PagosIN17TA.AsFloat);
                       CrearCobroAxapta(qrEntradaPacienteCLIENTEID.Value, qrEntradaPacientePACIENTEID.Value, 'RI', cobroid,
                                        qfindcobro.FieldByName('ReciboNo').Value, qfindcobro.FieldByName('Fecha').Value,
                                        qrEntradaPacienteMonedaId.Value, qrEntradaPacienteEntradaID.Value,
                                        qrEntradaPacienteRECID.Value, qfind.Fields[0].AsFloat, qrEntradaPacienteDATAAREAID.Value,
                                        GetSecuenciaAS400(qSucursal.FieldByName('SUCURSALID').AsString,
                                                          InterfaseAS400.qrAS400PagosIN17SU.AsInteger),
                                        qrEntradaPacienteCLIENTEPADRE.Value, 0, 0, qSucursal.FieldByName('SUCURSALID').AsString,
                                        qpagoEfec.FieldByName('FormaDePagoId').AsString, DM.Redondeo(monto),
                                        qrEntradaPacienteSINPRFILTER.Value);
                     End;

                   If (InterfaseAS400.qrAS400PagosIN17EF.AsFloat > 1) then
                     Begin
                       monto := DM.Redondeo(InterfaseAS400.qrAS400PagosIN17EF.AsFloat);
                       CrearCobroAxapta(qrEntradaPacienteCLIENTEID.Value, qrEntradaPacientePACIENTEID.Value, 'RI', cobroid,
                                        qfindcobro.FieldByName('ReciboNo').Value, qfindcobro.FieldByName('Fecha').Value,
                                        qrEntradaPacienteMonedaId.Value, qrEntradaPacienteEntradaID.Value,
                                        qrEntradaPacienteRECID.Value, qfind.Fields[0].AsFloat, qrEntradaPacienteDATAAREAID.Value,
                                        GetSecuenciaAS400(qSucursal.FieldByName('SUCURSALID').AsString,
                                                          InterfaseAS400.qrAS400PagosIN17SU.AsInteger),
                                        qrEntradaPacienteCLIENTEPADRE.Value, 0, 0, qSucursal.FieldByName('SUCURSALID').AsString,
                                        qpagoEfec.FieldByName('FormaDePagoId').AsString, DM.Redondeo(monto),
                                        qrEntradaPacienteSINPRFILTER.Value);
                     End;

                  InterfaseAS400.qrAS400Pagos.Edit;
                  InterfaseAS400.qrAS400PagosIN17AC.AsString := 'S';
                  InterfaseAS400.qrAS400PagosIN17RE.AsString := qfindcobro.FieldByName('ReciboNo').Value;
                  InterfaseAS400.qrAS400PagosIN17FA.AsString := qrEntradaPacienteEntradaID.Value;
                  InterfaseAS400.qrAS400Pagos.Post;
                 End;

                InterfaseAS400.qrAS400Pagos.Next;
              End;

             FreeAndNil(qfind);
             FreeAndNil(qinsert);
             FreeAndNil(qupdate);
             FreeAndNil(qentrada);
             FreeAndNil(qsucursal);
             FreeAndNil(qpagoEfec);
             FreeAndNil(qpagoCard);
             FreeAndNil(qfindcobro);

             InterfaseAS400.ASConnection.Close;

             Dm.Info('El Proceso de Transferencia de Los COBROS del AS-400 Concluyo Exitosamente.!!!');
            End;
         Except
           Raise exception.CreateFmt(' Existe un Error con el Pago de la Muestra No.: '+ #13 + '( ' +
                                     InterfaseAS400.qrAS400PagosIN17MU.AsString + ' )' + #13 +
                                     ' Intentelo Nuevamente.!!!', []);
{
           Raise exception.CreateFmt(' Existe un Problema de Comunicacion Con el Servidor AS-400. '+ #13 +
                                     ' Por Favor, LLame al Departamento de Computos. '+ #13 +
                                     ' ó Intentelo Nuevamente.!!!', []);
}
         End;
       end;
   end;
end;


function TfrmTransferenciaAS400.GetReciboAS400(tipodoc : string; _sucursal : String; _sucAS400: Integer) : String;
var
 qsecdoc : TADOQuery;
begin
 qsecdoc := DM.NewQuery;
 With qsecdoc,sql do
 begin
   Close;
   Clear;
   Add(' DECLARE	@return_value int,@r_result bigint,@r_result2 bigint,@r_result3 bit ');
   Add(' EXEC	@return_value = [dbo].[Sec_Documentos] ');
   Add(' @Tipo_Doc = N'+#39+tipodoc+#39+',');
   Add(' @SucursalID = N'+#39+_sucursal+#39+',');
   Add(' @r_result = @r_result OUTPUT, ');
   Add(' @r_result2 = @r_result2 OUTPUT, ');
   Add(' @r_result3 = @r_result3 OUTPUT ');
   Add(' SELECT	@r_result as Secuencia,@r_result2 as SucursalAS400,@r_result3 as UsarIdentificador');
   Open;
   if not IsEmpty then
   begin
       If (FieldByName('UsarIdentificador').AsBoolean) then
        result := tipodoc + FormatFloat('00', _sucAS400) +
                  FormatFloat('0000000', FieldByName('Secuencia').AsFloat)
       Else
        result := FormatFloat('00', _sucAS400) +
                  FormatFloat('0000000', FieldByName('Secuencia').AsFloat);
   end;
 end;
 FreeAndNil(qsecdoc);
end;


function TfrmTransferenciaAS400.GetSecuenciaAS400(_sucursal : String; _sucAS400: Integer) : Integer;
Var
 _valor   : String;
 numero   : Integer;
 qsecdoc  : TADOQuery;
begin
 _valor  := '';
 numero  := 0;

 qsecdoc := DM.NewQuery;
 With qsecdoc,sql do
 begin
   Close;
   Clear;
   Add(' DECLARE	@return_value int,@r_result bigint,@r_result2 bigint,@r_result3 bit ');
   Add(' EXEC	@return_value = [dbo].[Sec_Documentos] ');
   Add(' @Tipo_Doc = N'+#39+'SEDOC'+#39+',');
   Add(' @SucursalID = N'+#39+_sucursal+#39+',');
   Add(' @r_result = @r_result OUTPUT, ');
   Add(' @r_result2 = @r_result2 OUTPUT, ');
   Add(' @r_result3 = @r_result3 OUTPUT ');
   Add(' SELECT	@r_result as Secuencia ');
   Open;
   if not IsEmpty then
   begin
     if FieldByName('Secuencia').AsString <> '' then
      numero := FieldByName('Secuencia').AsInteger
     else
      numero := 1;
     _valor := FormatFloat('00', _sucAS400) + FormatFloat('0000000', numero);
   end;
 end;
 Result := StrToInt(_valor);
 FreeAndNil(qsecdoc);
end;




procedure TfrmTransferenciaAS400.NuevaVenta;
begin
  DM.qrProyecto.Close;
  DM.qrProyecto.Open;

  DM.qrDoctor.Close;
  DM.qrDoctor.Open;

  DM.qrFlebotomistas.Close;
  DM.qrFlebotomistas.Open;

  DM.qrParametro.close;
  DM.qrParametro.Open;

  DM.qrMonedas.Close;
  DM.qrMonedas.Open;

  _recorId := GetSecuenciaId;

  qrEntradaPaciente.Close;
  qrEntradaPaciente.parameters[0].Value := _recorId;
  qrEntradaPaciente.Open;

  qrEntradaPaciente.Insert;
  qrEntradaPacienteDATAAREAID.Value := DM.CurEmpresa;
  qrEntradaPacienteRECID.Value := _recorId;
  qrEntradaPacienteRECORDID.Value := _recorId;

  if (Length(InterfaseAS400.qrAS400EntradasIN5FEC.AsString) < 8) then
    begin
      _fecha := '0' + Copy(InterfaseAS400.qrAS400EntradasIN5FEC.AsString, 1, 1) + '/' +
                Copy(InterfaseAS400.qrAS400EntradasIN5FEC.AsString, 2, 2) + '/' +
                Copy(InterfaseAS400.qrAS400EntradasIN5FEC.AsString, 4, 4);
    end
  else
    begin
      _fecha := Copy(InterfaseAS400.qrAS400EntradasIN5FEC.AsString, 1, 2) + '/' +
                Copy(InterfaseAS400.qrAS400EntradasIN5FEC.AsString, 3, 2) + '/' +
                Copy(InterfaseAS400.qrAS400EntradasIN5FEC.AsString, 5, 4);
    end;

  if (Length(InterfaseAS400.qrAS400EntradasIN5NAC.AsString) < 7) then
    _nacim := EmptyStr
  else
    if (Length(InterfaseAS400.qrAS400EntradasIN5NAC.AsString) < 8) then
      begin
        _nacim := '0' + Copy(InterfaseAS400.qrAS400EntradasIN5NAC.AsString, 1, 1) + '/' +
                  Copy(InterfaseAS400.qrAS400EntradasIN5NAC.AsString, 2, 2) + '/' +
                  Copy(InterfaseAS400.qrAS400EntradasIN5NAC.AsString, 4, 4);
      end
    else
      begin
        _nacim := Copy(InterfaseAS400.qrAS400EntradasIN5NAC.AsString, 1, 2) + '/' +
                  Copy(InterfaseAS400.qrAS400EntradasIN5NAC.AsString, 3, 2) + '/' +
                  Copy(InterfaseAS400.qrAS400EntradasIN5NAC.AsString, 5, 4);
      end;

  qrEntradaPacienteSINPRFILTER.Value := 0;
  qrEntradaPacienteCoberturaConfirmada.Value := 0;
  qrEntradaPacienteCoberturaRechazada.Value := 0;
  qrEntradaPacienteCoberturaPreConfirmada.Value := 0;
  qrEntradaPacienteSucursalId.Value := qfindSucursal.FieldByName('SUCURSALID').AsString;
  qrEntradaPacienteSucursal.Value := qfindSucursal.FieldByName('SUCURSAL').AsInteger;

  If (qfindSucursal.FieldByName('GrupoId').AsString <> '') Then
    qrEntradaPacienteOrigen.Value := qfindSucursal.FieldByName('GrupoId').AsString
  Else
    qrEntradaPacienteOrigen.Value := '';

  If (qfindSucursal.FieldByName('Cliente_Uno').AsString <> '') Then
    qrEntradaPacienteClienteID.Value := qfindSucursal.FieldByName('Cliente_Uno').AsString
  Else
    qrEntradaPacienteClienteID.Value := '';

  qrEntradaPacienteBruto.Value := 0;
  qrEntradaPacienteDescuento.Value := 0;
  qrEntradaPacienteDescuentoBono.Value := 0;
  qrEntradaPacienteDescuentoPorc.Value := 0;
  qrEntradaPacienteDescuentoValor.Value := 0;
  qrEntradaPacienteSubTotal.Value := 0;
  qrEntradaPacienteCoberturaSeguro.Value := 0;
  qrEntradaPacienteCOBERTURAMONTOPRECONFIRMADO.Value := 0;
  qrEntradaPacienteNeto.Value := 0;
  qrEntradaPacienteTotalPagado.Value := 0;
  qrEntradaPacientePrioridad.Value := 0;
  qrEntradaPacienteRESULTADOPACIENTE.Value := 1;
  qrEntradaPacienteRESULTADODOCTOR.Value := 0;
  qrEntradaPacienteRESULTADOCLIENTE.Value := 0;
  qrEntradaPacienteTipoDocumento.Value := 0;
  qrEntradaPacienteUserId.Value := InterfaseAS400.qrAS400EntradasIN5USU.AsString;
  qrEntradaPacienteFLEBOTOMISTAID.Value := InterfaseAS400.qrAS400EntradasIN5USU.AsString;
  qrEntradaPacienteFecha.Value := StrToDate(_fecha);
  qrEntradaPacienteHoraEntrada.Value := InterfaseAS400.qrAS400EntradasIN5HOR.AsString;
  qrEntradaPacienteCoberturaPorc.Value := 0;
  qrEntradaPacienteCoberturaValor.Value := 0;
  qrEntradaPacienteMuestraNo.Value := InterfaseAS400.qrAS400EntradasIN5MUE.AsString;
  qrEntradaPacienteMonedaID.Value := DM.qrParametroMonedaID.Value;
  qrEntradaPacienteCoberturaExpPorc.Value := 0;
  qrEntradaPacientePUBLICARINTERNET.Value := 0;
  qrEntradaPacientePUBLICARINTERNETDOCTOR.Value := 0;
  qrEntradaPacientePUBLICARINTERNETCLIENTE.Value := 0;
  qrEntradaPacienteHold.Value := 0;
  qrEntradaPacienteNoAS400.Value := 0;
  qrEntradaPacienteNoAxapta.Value := 0;
  qrEntradaPacienteNoFactura.Value := 0;
  qrEntradaPacienteRepMuestra.Value := 0;
  qrEntradaPacienteFactExterior.Value := 0;
  qrEntradaPacienteAcuerdoPropio.Value := 0;
  qrEntradaPacienteCUADRADO.Value := 1;
  qrEntradaPacienteTRANSFERIDO.Value := 0;

  qrEntradaPacienteENCLINICA.Value := 0;
  qrEntradaPacienteFROM_CLINICA.Value := 0;
  qrEntradaPacienteEntradaIdAnt.Value := '0';
  qrEntradaPacienteClientePadre.Value := '';
  qrEntradaPacienteTipoEntrada.Value := 'N';
  qrEntradaPacienteFormadePago.Value := 'EFE';
  Val_Forma_Pago(qrEntradaPacienteFormadePago.Value);
  qrEntradaPacienteTasa.Value := DM.Tasa(qrEntradaPacienteFecha.Value, DM.qrParametroMonedaDolares.Value)/100;
end;



function TfrmTransferenciaAS400.GetSecuenciaId : Integer;
Var
 _valor   : String;
 numero   : Integer;
 qsecdoc  : TADOQuery;
begin
 _valor  := '';
 numero  := 0;

 qsecdoc := DM.NewQuery;
 With qsecdoc,sql do
 begin
   Close;
   Clear;
   Add(' DECLARE	@return_value int,@r_result bigint,@r_result2 bigint,@r_result3 bit ');
   Add(' EXEC	@return_value = [dbo].[Sec_Documentos] ');
   Add(' @Tipo_Doc = N'+#39+'SEDOC'+#39+',');
   Add(' @SucursalID = N'+#39+DM.CurSucursal+#39+',');
   Add(' @r_result = @r_result OUTPUT, ');
   Add(' @r_result2 = @r_result2 OUTPUT, ');
   Add(' @r_result3 = @r_result3 OUTPUT ');
   Add(' SELECT	@r_result as Secuencia,@r_result2 as SucursalAS400');
   Open;
   if not IsEmpty then
   begin
     if FieldByName('Secuencia').AsString <> '' then
       numero := FieldByName('Secuencia').AsInteger
     else
       numero := 1;
     _valor := FormatFloat('00', FieldByName('SucursalAS400').AsInteger) +
               FormatFloat('0000000', numero);
   end;
   Result := StrToInt(_valor);
 end;

 FreeAndNil(qsecdoc);
end;



function TfrmTransferenciaAS400.GetSecuencia_Id(_valor: String) : Integer;
Var
 _value   : String;
 numero   : Integer;
 qsecdoc  : TADOQuery;
begin
 _value  := '';
 numero  := 0;

 qsecdoc := DM.NewQuery;
 With qsecdoc,sql do
 begin
   Close;
   Clear;
   Add(' DECLARE	@return_value int,@r_result bigint,@r_result2 bigint,@r_result3 bit ');
   Add(' EXEC	@return_value = [dbo].[Sec_Documentos] ');
   Add(' @Tipo_Doc = N'+#39+'SEDOC'+#39+',');
   Add(' @SucursalID = N'+#39+_valor+#39+',');
   Add(' @r_result = @r_result OUTPUT, ');
   Add(' @r_result2 = @r_result2 OUTPUT, ');
   Add(' @r_result3 = @r_result3 OUTPUT ');
   Add(' SELECT	@r_result as Secuencia,@r_result2 as SucursalAS400');
   Open;
   if not IsEmpty then
   begin
     if FieldByName('Secuencia').AsString <> '' then
       numero := FieldByName('Secuencia').AsInteger
     else
       numero := 1;
     _value := FormatFloat('00', FieldByName('SucursalAS400').AsInteger) +
               FormatFloat('0000000', numero);
   end;
   Result := StrToInt(_value);
 end;

 FreeAndNil(qsecdoc);
end;



function TfrmTransferenciaAS400.GetEntradaID_Factura : String;
begin
 Result := GetNextSecDoc('FAC');
end;


function TfrmTransferenciaAS400.GetEntradaID_Exterior : String;
begin
 Result := GetNextSecDoc('EXT');
end;

function TfrmTransferenciaAS400.GetReciboNo : String;
begin
  result := GetNextSecDoc('RI');
end;


function TfrmTransferenciaAS400.GetNotaCredito : String;
begin
  result := GetNextSecDoc('NC');
end;


function TfrmTransferenciaAS400.GetNextSecDoc(tipodoc : string) : String;
var
 qsecdoc : TADOQuery;
begin
 qsecdoc := DM.NewQuery;
 With qsecdoc,sql do
 begin
   Close;
   Clear;
   Add(' DECLARE	@return_value int,@r_result bigint,@r_result2 bigint,@r_result3 bit ');
   Add(' EXEC	@return_value = [dbo].[Sec_Documentos] ');
   Add(' @Tipo_Doc = N'+#39+tipodoc+#39+',');
   Add(' @SucursalID = N'+#39+qfindSucursal.FieldByName('SUCURSALID').AsString+#39+',');
   Add(' @r_result = @r_result OUTPUT, ');
   Add(' @r_result2 = @r_result2 OUTPUT, ');
   Add(' @r_result3 = @r_result3 OUTPUT ');
   Add(' SELECT	@r_result as Secuencia,@r_result2 as SucursalAS400,@r_result3 as UsarIdentificador');
   Open;
   if not IsEmpty then
   begin
       If (FieldByName('UsarIdentificador').AsBoolean) then
        result := tipodoc+
                  FormatFloat('000', qfindSucursal.FieldByName('SUCURSAL').AsFloat) +
                  FormatFloat('000000', FieldByName('Secuencia').AsFloat)
       Else
        result := FormatFloat('000', qfindSucursal.FieldByName('SUCURSAL').AsFloat) +
                  FormatFloat('000000', FieldByName('Secuencia').AsFloat);

   end;
 end;
 FreeAndNil(qsecdoc);
end;


procedure TfrmTransferenciaAS400.Val_Forma_Pago(Forma_Pago: string);
begin
 If (Forma_Pago = 'EFE') Or (Forma_Pago = 'CASH') Or (Forma_Pago = 'CE') Then
   Begin
     qrEntradaPaciente.Edit;
     qrEntradaPacienteFormadePago.Value := Forma_Pago;
   end
 Else
   Begin
     qrEntradaPaciente.Edit;
     qrEntradaPacienteFormadePago.Value := 'CRE';
   end;
end;


procedure TfrmTransferenciaAS400.ActTotales;
Var
 qfind : TADOQuery;
begin
 If (qrEntradaPacienteDetalle.RecordCount > 0) Then
   Begin
     ActDetalle;

     qfind := DM.NewQuery;

     qfind.Close;
     qfind.SQL.Text := ' SELECT SUM(Precio), SUM(DescuentoLineaAplicado), '+
                       ' SUM(CoberturaAplicada), SUM(Adicional) '+
                       ' FROM PTEntradaPacienteDetalle '+
                       ' WHERE refRecid = '+ inttostr(qrEntradaPacienteRECID.Value) +
                       ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39;
     inttostr(qrEntradaPacienteRECID.Value);
     qfind.Open;

     qrEntradaPaciente.Edit;
     qrEntradaPacienteBruto.Value := Dm.Redondeo(qfind.Fields[0].AsFloat + qfind.Fields[3].AsFloat);
     qrEntradaPacienteDescuento.Value := Dm.Redondeo(qfind.Fields[1].AsFloat + qrEntradaPacienteDescuentoBono.Value);
     qrEntradaPacienteSubTotal.Value := Dm.Redondeo(qrEntradaPacienteBruto.Value - qrEntradaPacienteDescuento.Value);

     If (qrEntradaPacienteCoberturaConfirmada.Value = 1) then
       Begin
         qrEntradaPacienteCoberturaSeguro.Value := Dm.Redondeo(qfind.Fields[2].AsFloat);
         qrEntradaPacienteCOBERTURAMONTOPRECONFIRMADO.Value := Dm.Redondeo(qfind.Fields[2].AsFloat);
       end
     Else
       Begin
         qrEntradaPacienteCoberturaSeguro.Value := 0;
         qrEntradaPacienteCOBERTURAMONTOPRECONFIRMADO.Value := Dm.Redondeo(qfind.Fields[2].AsFloat);
       end;

     If (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoExt.Value) Or
        (qrEntradaPacienteTipoDocumento.Value = 3) Or
        (qrEntradaPacienteFactExterior.Value = 1) Then
       qrEntradaPacienteGastosVarios.Value := Dm.Redondeo(InterfaseAS400.qrAS400EntradasIN5ENV.Value)
     Else
       qrEntradaPacienteGastosVarios.Value := Dm.Redondeo(InterfaseAS400.qrAS400EntradasIN5ENV.Value);

     qrEntradaPacienteNeto.Value := Dm.Redondeo(qrEntradaPacienteSubTotal.Value -
                                                qrEntradaPacienteCoberturaSeguro.Value +
                                                qrEntradaPacienteGastosVarios.Value);

     qrEntradaPacienteTotalPagado.Value := Dm.Redondeo(InterfaseAS400.qrAS400EntradasIN5PAG.Value);

     FreeAndNil(qfind);
   End
 Else
   Begin
     //Redondeo de los Valores del Punto de Venta.
     qrEntradaPaciente.Edit;
     qrEntradaPacienteBruto.Value := 0;
     qrEntradaPacienteDescuento.Value := 0;
     qrEntradaPacienteSubTotal.Value := 0;
     qrEntradaPacienteNeto.Value := 0;
     qrEntradaPacienteTotalPagado.Value := 0;
     qrEntradaPacienteCoberturaSeguro.Value := 0;
     qrEntradaPacienteCOBERTURAMONTOPRECONFIRMADO.Value := 0;
   End;
end;



procedure TfrmTransferenciaAS400.ActDetalle;
Var
 qact : TADOQuery;
begin
 //Pruebas de los Seguros.
 curCoberturaAplicada := 0;

 qrEntradaPacienteDetalle.Close;
 qrEntradaPacienteDetalle.parameters[0].Value := _recorId;
 qrEntradaPacienteDetalle.Open;

 qact := DM.NewQuery;

 qrEntradaPacienteDetalle.First;
 While not qrEntradaPacienteDetalle.Eof Do
  begin
    If (qrEntradaPacienteDetallePruebaId.Value = '') Or
       (qrEntradaPacienteDetallePruebaId.Value = ' ') Or
       (qrEntradaPacienteDetallePruebaId.IsNull) Then
      qrEntradaPacienteDetalle.Delete;

    qact.Close;
    qact.SQL.Clear;
    qact.SQL.Text := ' UPDATE PTEntradaPacienteDetalle SET '+
                     ' CoberturaAplicada = :cob, '+
                     ' DescuentoLineaAplicado = :desc '+
                     ' WHERE RefRecid = :rec '+
                     ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
                     ' AND Secuencia = :sec ';
    qact.Parameters[0].Value := CalcularCoberturaAplicada;
    qact.Parameters[1].Value := TotalDescuentoLinea;
    qact.Parameters[2].Value := qrEntradaPacienteDetalleRefRecid.Value;
    qact.Parameters[3].Value := qrEntradaPacienteDetalleSecuencia.Value;
    qact.ExecSQL;

    qrEntradaPacienteDetalle.Next
  end;

 //Pruebas de los Seguros.
 curCoberturaAplicada := DM.CurCoberturaAplicada(qrEntradaPacienteRECID.Value); //DM.CurCoberturaAplicada(_recorId)
end;



function TfrmTransferenciaAS400.ImporteBrutoExclLineaActual(refrecid : integer ; secuencia : integer) : Double;
var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;
 qfind.Close;
 qfind.SQL.Text := ' SELECT SUM(Precio) '+
                   ' FROM PTEntradaPacienteDetalle '+
                   ' WHERE RefRecid = :rec '+
                   ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
                   ' AND Secuencia <> :sec ';
 qfind.Parameters[0].Value := refrecid;
 qfind.Parameters[1].Value := secuencia;
 qfind.Open;

 if qfind.Fields[0].AsString <> '' then
    result := Dm.Redondeo(qfind.Fields[0].AsFloat)
 else
    result := 0;

 FreeAndNil(qfind);
end;


function TfrmTransferenciaAS400.ImporteBrutoExclLineaActualAplica(refrecid : integer ;secuencia : integer) : Double;
var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;
 qfind.Close;
 qfind.SQL.Text := ' SELECT SUM(Precio) '+
                   ' FROM PTEntradaPacienteDetalle '+
                   ' WHERE RefRecid = :rec '+
                   ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
                   ' AND Secuencia <> :sec '+
                   ' AND CoberturaAplica = 1 ';
 qfind.Parameters[0].Value := refrecid;
 qfind.Parameters[1].Value := secuencia;
 qfind.Open;

 if qfind.Fields[0].AsString <> '' then
    result := Dm.Redondeo(qfind.Fields[0].AsFloat)
 else
    result := 0;

 FreeAndNil(qfind);
end;


function TfrmTransferenciaAS400.ImporteBrutoExclLineaActualAplicaAndCobertura(refrecid : integer ;secuencia : integer) : Double;
var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;
 qfind.Close;
 qfind.SQL.Text := ' SELECT SUM(Precio), SUM(CoberturaAplicada) '+
                   ' FROM PTEntradaPacienteDetalle '+
                   ' WHERE RefRecid = :rec '+
                   ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
                   ' AND Secuencia <> :sec '+
                   ' AND CoberturaAplica = 1 ';
 qfind.Parameters[0].Value := refrecid;
 qfind.Parameters[1].Value := secuencia;
 qfind.Open;

 if qfind.Fields[0].AsString <> '' then
    result := Dm.Redondeo(qfind.Fields[0].AsFloat - qfind.Fields[1].AsFloat)
 else
    result := 0;

 FreeAndNil(qfind);
end;


function TfrmTransferenciaAS400.TotalDescuentoLinea : Double;
Var
 DescuentoPorc, DescuentoPesosCab, DescuentoPesos : Double;
begin
  qrEntradaPaciente.Edit;
  qrEntradaPacienteDetalle.Edit;

  DescuentoPorc := 0;
  DescuentoPesos := 0;
  DescuentoPesosCab := 0;

  //Calculando el Descuento a las PRUEBAS y los COMBOS.
  qpruebadesc := DM.Find_Ldr('SELECT * FROM PTPrueba WHERE PruebaID = :pru', qrEntradaPacienteDetallePruebaID.value);

  //Calculando el Descuento a las PRUEBAS y los COMBOS.
  If (qpruebadesc.FieldByName('Tipo').Value = 'P') Or
     (qpruebadesc.FieldByName('Tipo').Value = 'C') Then
    Begin
      If (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSeg.Value) Then
        begin
          If (qrEntradaPacienteCoberturaConfirmada.Value = 1) And
             (qrEntradaPacienteDetalleCoberturaAplica.Value = 1) Then
            Begin
              DescuentoPorc := (qrEntradaPacienteDetallePrecio.Value -
                                CalcularCoberturaAplicada -
                                qrEntradaPacienteDetalleDescuento.Value) *
                               (qrEntradaPacienteDetalleDescPct.Value / 100);
            End
          Else
            DescuentoPorc := 0;
        end
      Else
        DescuentoPorc := (qrEntradaPacienteDetallePrecio.Value -
                          CalcularCoberturaAplicada -
                          qrEntradaPacienteDetalleDescuento.Value) *
                         (qrEntradaPacienteDetalleDescPct.Value / 100);

      If (qrEntradaPacienteDescuentoValor.Value > 0) then
        DescuentoPesosCab := qrEntradaPacienteDetallePrecio.Value *
                             qrEntradaPacienteDescuentoValor.Value /
                            (ImporteBrutoExclLineaActual(qrEntradaPacienteDetalleRefRecid.Value,
                             qrEntradaPacienteDetalleSecuencia.Value) +
                            (qrEntradaPacienteDetallePrecio.Value));

      If (qrEntradaPacienteDescuentoPorc.Value  > 0) And (qrEntradaPacienteFactExterior.Value <> 1)  Then
        DescuentoPorc := DescuentoPorc + ((qrEntradaPacienteDetalleTotalLinea.Value -
                                           DescuentoPesosCab - CalcularCoberturaAplicada) *
                                           qrEntradaPacienteDescuentoPorc.Value /100);

      DescuentoPesos := DM.Redondeo(DescuentoPesosCab + qrEntradaPacienteDetalleDescuento.Value);
    End;

  result := DM.Redondeo(DescuentoPesos + DescuentoPorc);
end;


function TfrmTransferenciaAS400.ImporteLinea : Double;
Var
 Valor, DescPorc : Double;
begin
 DescPorc := 0;

 Valor := qrEntradaPacienteDetallePrecio.Value - qrEntradaPacienteDetalleDescuento.Value;

 if (qrEntradaPacienteDetalleDescPct.Value >= 1) then
     DescPorc := Valor * qrEntradaPacienteDetalleDescPct.Value / 100;

 result := DM.Redondeo(Valor - DescPorc);
end;


function TfrmTransferenciaAS400.CalcularCoberturaAplicada : Double;
var
 coberturaporc, CoberturaPesosCab : Double;
begin
 If (qrEntradaPacienteCoberturaRechazada.Value = 1) Then
   result := 0
 Else
   Begin
    If (qrEntradaPacienteDetalleCoberturaAplica.Value = 1) then
     begin
      if (qrEntradaPacienteDetalleCoberturaEspecialPorc.Value > 0) or
         (qrEntradaPacienteDetalleCoberturaEspecial.Value > 0) then
       begin
        if not (qrEntradaPacienteDetalleCoberturaExpPorc.Value = 1) then
          result := qrEntradaPacienteDetalleCoberturaEspecial.Value
        else
          begin
            coberturaporc := (qrEntradaPacienteDetallePrecio.Value) *
                             (qrEntradaPacienteDetalleCoberturaEspecial.Value / 100);

            result := coberturaporc;
          end;
       end
      else
       begin
         coberturaporc := 0;
         CoberturaPesosCab := 0;

         If (qrEntradaPacienteCoberturaConfirmada.Value = 1) then
           begin
            if (qrEntradaPacienteCoberturaValor.Value > 0) then
                CoberturaPesosCab := qrEntradaPacienteDetallePrecio.Value * qrEntradaPacienteCoberturaValor.Value /
                                     (ImporteBrutoExclLineaActualAplica(qrEntradaPacienteDetalleRefRecid.Value,
                                      qrEntradaPacienteDetalleSecuencia.Value) +
                                      qrEntradaPacienteDetallePrecio.Value)
            else
             if (qrEntradaPacienteCoberturaPorc.Value > 0.01) Then
                coberturaporc := (qrEntradaPacienteDetalleTotalLinea.Value - CoberturaPesosCab) *
                                 (qrEntradaPacienteCoberturaPorc.Value /100);
           end
         else
           begin
            if (qrEntradaPacienteCoberturaPorc.Value > 0.01) Then
                coberturaporc := (qrEntradaPacienteDetalleTotalLinea.Value - CoberturaPesosCab) *
                                 (qrEntradaPacienteCoberturaPorc.Value /100);
           end;

         result := DM.Redondeo(coberturaporc + CoberturaPesosCab);
       end;
     end
    else
     result := 0;
   end;
end;


function TfrmTransferenciaAS400.Valor_Cobertura(_registro: integer) : Double;
var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;
 qfind.Close;
 qfind.SQL.Text := ' SELECT SUM(Precio) FROM PTEntradaPacienteDetalle '+
                   ' WHERE RefRecid = :rec '+
                   ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
                   ' AND CoberturaAplica = 1 ';
 qfind.Parameters[0].Value := _registro;
 qfind.Open;

 if qfind.Fields[0].AsString <> '' then
   result := DM.Redondeo(qfind.Fields[0].AsFloat)
 else
   result := 0;

 FreeAndNil(qfind);
end;



procedure TfrmTransferenciaAS400.Agregar_Pacientes(PacienteId : String);
Var
 sqlString : String;
 qfind, qfindciudad : TADOQuery;
begin
 If ( (qrEntradaPaciente.State in [dsinsert,dsedit]) ) And
    ( (qrEntradaPacientePacienteID.Value = '') Or
      (qrEntradaPacientePacienteID.IsNull) ) Then
  Begin
   DM.qrParametro.Close;
   DM.qrParametro.Open;

   sqlString := ' SELECT * FROM PTCliente '+
                ' WHERE ClienteID LIKE '+ #39 + '%' + PacienteId + '%'+ #39 +
                ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39;

   DM.qrPacientes.Close;
   DM.qrPacientes.SQL.Text := sqlString;
   DM.qrPacientes.Open;

   If (DM.qrPacientes.RecordCount > 0) Then
    Begin
      qfindciudad := DM.Find_Ldr('SELECT * FROM PTCIUDAD Where CiudadID = :ciu', DM.qrPacientesCiudadID.AsString);

      qrEntradaPacientePacienteID.Value := DM.qrPacientesClienteID.Value;
      qrEntradaPacienteNombrePaciente.Value := DM.qrPacientesNombre.Value;
      qrEntradaPacienteDireccion.Value := DM.qrPacientesDireccion.Value;
      qrEntradaPacienteTelefonos.Value := DM.qrPacientesTelefono.Value;
      qrEntradaPacienteTelefono2.Value := DM.qrPacientesTelefono2.Value;
      qrEntradaPacienteFax.Value := DM.qrPacientesFax.Value;
      qrEntradaPacienteEmail.Value := DM.qrPacientesEMail.Value;
      qrEntradaPacienteSexo.Value := DM.qrPacientesSexo.Value;
      qrEntradaPacienteFECHANACIMIENTO.Value := DM.qrPacientesFECHANACIMIENTO.Value;
      qrEntradaPacienteEdadPaciente.Value := Trunc((DM.SystemDate - DM.qrPacientesFechaNacimiento.Value) / 365);
      qrEntradaPacientePUBLICARINTERNET.Value := 0;
{
      //OJO - GRUPO DE PRECIO Y FORMA DE PAGO.
      qrEntradaPacienteGrupoDescuentoTotal.Value   := DM.qrPacientesGrupoDescuentoTotal.Value;
      qrEntradaPacienteGrupoDescuentoLinea.Value   := DM.qrPacientesGrupoDescuentoLinea.Value;
      qrEntradaPacienteGrupoPrecio.Value           := DM.qrPacientesGrupoPrecio.Value;
      qrEntradaPacienteFormadePago.Value           := DM.qrPacientesFormaPago.Value;
      Val_Forma_Pago(qrEntradaPacienteFormadePago.Value);
      //OJO - GRUPO DE PRECIO Y FORMA DE PAGO.
}
      If (qfindciudad.RecordCount > 0) then
        qrEntradaPacienteDireccion.Value := qrEntradaPacienteDireccion.Value + #13 +
                                            qfindciudad.FieldByName('Descripcion').AsString;

      //Llenar Los Parametros de los Pacientes. ////////////////////////////////////////////////////////////
      qrEntradaPacienteResultadoPaciente.Value := DM.qrPacientesEnvioResultado.Value;

      FreeAndNil(qfind);
      FreeAndNil(qfindCiudad);
    End;

  End;
end;


procedure TfrmTransferenciaAS400.Agregar_Clientes(ClienteId : String);
Var
 sqlString : String;
 qfind, qfindciudad : TADOQuery;
begin
 If ( (qrEntradaPaciente.State in [dsinsert, dsedit]) ) And
    ( (qrEntradaPacienteClienteID.Value = '') Or
      (qrEntradaPacienteClienteID.IsNull) ) Then
  Begin
   DM.qrParametro.Close;
   DM.qrParametro.Open;

   sqlString := ' SELECT * FROM PTCliente '+
                ' WHERE ClienteID LIKE '+ #39 + '%' + ClienteId + '%'+ #39 +
                ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39;

   DM.qrPacientes.Close;
   DM.qrPacientes.SQL.Text := sqlString;
   DM.qrPacientes.Open;

   If (DM.qrPacientes.RecordCount > 0) Then
    Begin
      qfind       := DM.Find('SELECT * FROM PTProyecto Where ClienteID = :clt', ClienteId);
      qfindciudad := DM.Find_Ldr('SELECT * FROM PTCIUDAD Where CiudadID = :ciu', DM.qrPacientesCiudadID.AsString);

      qrEntradaPacienteClienteNombre.Value := DM.qrPacientesNombre.AsString;
      qrEntradaPacienteProyectoID.Value    := qfind.FieldByName('ProyectoID').AsString;
      qrEntradaPacienteOrigen.Value        := DM.qrPacientesGrupoCliente.Value;
      qrEntradaPacienteClienteID.Value     := DM.qrPacientesClienteID.Value;
      qrEntradaPacienteSINPRFILTER.Value   := DM.qrPacientesSINPRFILTER.Value;

      //OJO - GRUPO DE PRECIO Y FORMA DE PAGO.
      qrEntradaPacienteGrupoDescuentoTotal.Value   := DM.qrPacientesGrupoDescuentoTotal.Value;
      qrEntradaPacienteGrupoDescuentoLinea.Value   := DM.qrPacientesGrupoDescuentoLinea.Value;
      qrEntradaPacienteGrupoPrecio.Value           := DM.qrPacientesGrupoPrecio.Value;
      qrEntradaPacienteFormadePago.Value           := DM.qrPacientesFormaPago.Value;
      Val_Forma_Pago(qrEntradaPacienteFormadePago.Value);
      //OJO - GRUPO DE PRECIO Y FORMA DE PAGO.

      If DM.qrPacientesCOBERTURAPORC.Value > 1 then
        begin
          qrEntradaPacienteCoberturaConfirmada.Value := 0;
          qrEntradaPacienteCoberturaPreConfirmada.Value := 1;
          qrEntradaPacienteCoberturaPorc.Value := DM.qrPacientesCoberturaPorc.value;
        end
      else
        begin
          qrEntradaPacienteCoberturaPorc.Value := 0;
          qrEntradaPacienteCoberturaConfirmada.Value := 0;
          qrEntradaPacienteCoberturaPreConfirmada.Value := 0;
        end;

      If (DM.qrPacientesMonedaID.Value <> '') Then
        Begin
          If (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoExt.Value) Or
             (qrEntradaPacienteTipoDocumento.Value = 3) Or
             (qrEntradaPacienteFactExterior.Value = 1) Then
            Begin
              qrEntradaPaciente.Edit;
              qrEntradaPacienteNoAS400.Value := 1;
              qrEntradaPacienteNoAxapta.Value := 1;
              qrEntradaPacienteNoFactura.Value := 1;
              qrEntradaPacienteFactExterior.Value := 1;
              qrEntradaPacienteTipoDocumento.Value := 3;
              qrEntradaPacienteMonedaID.Value := DM.qrParametroMonedaDolares.Value;
            End
          Else
            Begin
              qrEntradaPaciente.Edit;
              qrEntradaPacienteNoAS400.Value := 0;
              qrEntradaPacienteNoAxapta.Value := 0;
              qrEntradaPacienteNoFactura.Value := 0;
              qrEntradaPacienteFactExterior.Value := 0;
              qrEntradaPacienteTipoDocumento.Value := 0;
              qrEntradaPacienteMonedaID.Value := DM.qrPacientesMonedaID.Value;
            End;
        End;

      FreeAndNil(qfind);
      FreeAndNil(qfindCiudad);
    End;
  End;
end;


procedure TfrmTransferenciaAS400.Crear_Registro;
Var
 qdelete : TADOQuery;
 tipodoc : string;
begin
  inherited;
  Case qrEntradaPacienteTipoDocumento.Value of
    0 : TipoDoc := 'FT';
    3 : TipoDoc := 'EXT';
  End;

  if (TipoDoc = 'FT') Or (TipoDoc = 'EXT') then
    begin
      CrearTransCliente(qrEntradaPacienteClienteID.Value, TipoDoc, qrEntradaPacienteEntradaID.Value,
                        TipoDoc, qrEntradaPacienteEntradaID.value, qrEntradaPacienteFecha.value,
                        qrEntradaPacienteNeto.Value, qrEntradaPacienteMonedaID.Value,
                        qrEntradaPacientePACIENTEID.Value, qrEntradaPacienteSINPRFILTER.Value);
    end;
end;


procedure TfrmTransferenciaAS400.qrEntradaPacienteDetallePRUEBAIDChange(Sender: TField);
Var
 valor_precio : Double;
 qfind        : TADOQuery;
begin
 inherited;
 if (qrEntradaPacienteDetalle.State = dsInsert) or
    (qrEntradaPacienteDetalle.State = dsEdit) then
  begin
   DM.qrParametro.close;
   DM.qrParametro.open;

   secuencialabel := StrToInt(DM.Get_Secuencia_Big('LABEL', qfindSucursal.FieldByName('SUCURSALID').AsString));

   //Valores Predeterminado de las Pruebas Registradas.
   qrEntradaPacienteDetalle.Edit;
   qrEntradaPacienteDetalleSecuencia.Value := MaxSecuenciaLinea;
   qrEntradaPacienteDetalleRECID.Value := GetSecuenciaId;
   qrEntradaPacienteDetalleREFRECID_POS.Value := 0;
   qrEntradaPacienteDetalleENTRADAID_POS.Value := '';
   qrEntradaPacienteDetalleMUESTRANO_POS.Value := qrEntradaPacienteDetalleMuestraNo.Value;
   qrEntradaPacienteDetalleRefRecid.Value := qrEntradaPacienteRECID.Value;
   qrEntradaPacienteDetalleMuestraNo.Value := qrEntradaPacienteMuestraNo.Value;
   qrEntradaPacienteDetalleDATAAREAID.Value := qrEntradaPacienteDATAAREAID.Value;
   qrEntradaPacienteDetalleRepMuestra.Value := qrEntradaPacienteRepMuestra.Value;
   qrEntradaPacienteDetalleCUADRADO.Value := qrEntradaPacienteCUADRADO.Value;
   qrEntradaPacienteDetalleTRANSFERIDO.Value := qrEntradaPacienteTRANSFERIDO.Value;
   qrEntradaPacienteDetalleFROM_CLINICA.Value := qrEntradaPacienteFROM_CLINICA.Value;
   qrEntradaPacienteDetalleSINPRFILTER.Value := qrEntradaPacienteSINPRFILTER.Value;

   qrEntradaPacienteDetalleEXTERIOR.Value := qfindprueba.FieldByName('Exterior').Value;
   qrEntradaPacienteDetalleTipoPrueba.Value := qfindprueba.FieldByName('Tipo').AsString;
   qrEntradaPacienteDetalleUnidadMuestra.Value := qfindprueba.FieldByName('Unidad').AsString;
   qrEntradaPacienteDetalleDescripcion.Value := qfindprueba.FieldByName('Descripcion').AsString;
   qrEntradaPacienteDetalleLDRDEPARTAMENTOID.Value := qfindprueba.FieldByName('DEPARTAMENTO').AsString;

   qrEntradaPacienteDetalleComentario.Value := ' ';
   qrEntradaPacienteDetalleCodigoCupid.Value := ' ';

   If (qrEntradaPacienteDetalleCOMBO.IsNull) Or
      (qrEntradaPacienteDetalleCOMBO.Value <> 1) Or
      (qrEntradaPacienteDetalleCOMBO.AsString = '0') Then
     qrEntradaPacienteDetalleCOMBO.Value := 0; //LA PRUEBA NO ES UN COMBO.

   qrEntradaPacienteDetalleMUESTRAANT.Value := '0'; //DEFAULT TRANSFERENCIA AS-400.
   qrEntradaPacienteDetallePASARAXAPTA.Value := 1; //TRANSFERIR A AXAPTA (True).
   qrEntradaPacienteDetalleEstatus.Value := '0'; //TOMA DE MUESTRA.
   qrEntradaPacienteDetalleUrgente.Value := 0; //TOMA DE MUESTRA.
   qrEntradaPacienteDetalleSecuenciaAct.Value := secuencialabel; //TOMA DE MUESTRA.
   qrEntradaPacienteDetalleSeleccionar.Value := 0;  //TOMA DE MUESTRA.

   qrEntradaPacienteDetallePrecio.Value := 0;
   qrEntradaPacienteDetallePrecio.Value := InterfaseAS400.qrAS400PruebasIN6VAL.Value;
   qrEntradaPacienteDetalleDescPct.Value := 0;
   qrEntradaPacienteDetalleFacturar.Value := 0;
   qrEntradaPacienteDetalleAdicional.Value := 0;
   qrEntradaPacienteDetalleDescuento.Value := 0;
   qrEntradaPacienteDetalleCoberturaAplica.Value := 0;
   qrEntradaPacienteDetalleCoberturaExpPorc.Value := 0;
   qrEntradaPacienteDetalleCoberturaEspecial.Value := 0;
   qrEntradaPacienteDetalleCoberturaEspecialPorc.Value := 0;

   comboprecio := True;   

   //Registrando las Pruebas en Dollares del Exterior.
   If (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoExt.Value) Or
      (qrEntradaPacienteTipoDocumento.Value = 3) Or
      (qrEntradaPacienteFactExterior.Value = 1) Then
     Begin
       qrEntradaPacienteDESCUENTOPORC.Value  := 0;
       qrEntradaPacienteDetalleDescPct.Value := 0;
     End
   Else
     Begin
       If (qfindprueba.FieldByName('Tipo').Value = 'C') then
         Begin
           If (qfindprueba.FieldByName('FacturarCabecera').Value = 1) then
             Begin
               qrEntradaPacienteDetalleCOMBO.Value       := 1; //LA PRUEBA ES UN COMBO.

               //Registrando la Cabecera de los Combos (CON PRECIO).
               qrEntradaPacienteDetallePrecio.Value := InterfaseAS400.qrAS400PruebasIN6VAL.Value;

               //Validaciones de las Pruebas de Seguro.
               If (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSeg.Value) Then
                 qrEntradaPacienteDetalleCoberturaAplica.Value := 1;

               precio_combo := DM.Redondeo(qrEntradaPacienteDetallePrecio.Value);
             End
           Else
             Begin
               qrEntradaPacienteDetalleCOMBO.Value       := 1; //LA PRUEBA ES UN COMBO.
               qrEntradaPacienteDetalleDESCPCT.Value     := 0;
             End;
         End
       Else
         Begin
           If (comboprecio = True) Then
             Begin
               //Registrando las Pruebas NORMALES y/o Detalle de los Combos (CON PRECIO).
               qrEntradaPacienteDetallePrecio.Value := InterfaseAS400.qrAS400PruebasIN6VAL.Value;

               //Validaciones de las Pruebas de Seguro.
               If (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSeg.Value) Then
                 qrEntradaPacienteDetalleCoberturaAplica.Value := 1;
             end
           Else
             Begin
               //Registrando el Detalle de los Combos (SIN PRECIO).
               combodescto                                         := 0;
               qrEntradaPacienteDESCUENTOPORC.Value                := 0;
               qrEntradaPacienteDetalleDESCPCT.Value               := 0;
               qrEntradaPacienteDetalleCOMBO.Value                 := 1;
               qrEntradaPacienteDetallePrecio.Value                := 0;
               qrEntradaPacienteDetalleDescPct.Value               := 0;
               qrEntradaPacienteDetalleFacturar.Value              := 0;
               qrEntradaPacienteDetalleDescuento.Value             := 0;
               qrEntradaPacienteDetalleCoberturaAplica.Value       := 0;
               qrEntradaPacienteDetalleCoberturaExpPorc.Value      := 0;
               qrEntradaPacienteDetalleCoberturaEspecial.Value     := 0;
               qrEntradaPacienteDetalleCoberturaEspecialPorc.Value := 0;
             End;
         end;
     End;

    //Validaciones de las Pruebas de Seguro.
    If (qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSeg.Value) Then
      Buscar_Cod_Cups(qrEntradaPacienteClienteID.Value, qrEntradaPacienteDetallePruebaID.Value);
  end;
end;


procedure TfrmTransferenciaAS400.Buscar_Combo;
begin
  qfindcombo := DM.NewQuery;

  qfindcombo.Close;
  qfindcombo.SQL.Text := ' SELECT * FROM PTCombosPruebas '+
                         ' WHERE ComboId = '+ #39 + qrEntradaPacienteDetallePruebaID.Value + #39 +
                         ' ORDER BY linea ';
  qfindcombo.Open;

  If (qfindcombo.RecordCount > 0) then
    qfindcombo.First
  Else
    Raise exception.CreateFmt('El COMBO ('+ qrEntradaPacienteDetallePruebaID.Value +') NO Tiene Pruebas Registrada.', []);
end;


procedure TfrmTransferenciaAS400.Actu_Precio_Combo;
Var
  valor : Double;
  qfind : TAdoQuery;
Begin
  qfind := DM.NewQuery;

  qfind.Close;
  qfind.SQL.Text := ' SELECT COUNT(PruebaId) FROM PTEntradaPacienteDetalle '+
                    ' WHERE Combo = 1 AND Precio < 1 '+
                    ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
                    ' AND Refrecid = '+ #39 + qrEntradaPacienteRECID.AsString + #39;
  qfind.Open;

  If (qfind.RecordCount > 0) And (qfind.Fields[0].AsInteger > 0) And (precio_combo > 1) then
    Begin
      valor := DM.Redondeo(precio_combo / qfind.Fields[0].AsInteger);

      qrEntradaPacienteDetalle.Close;
      qrEntradaPacienteDetalle.parameters[0].Value := qrEntradaPacienteRECID.AsInteger;
      qrEntradaPacienteDetalle.Open;

      qrEntradaPacienteDetalle.DisableControls;
      qrEntradaPacienteDetalle.First;
      While not qrEntradaPacienteDetalle.Eof do
       begin
         if (qrEntradaPacienteDetalleCombo.Value = 1) And (qrEntradaPacienteDetallePrecio.Value < 1) then
           Begin
             qrEntradaPacienteDetalle.Edit;
             qrEntradaPacienteDetallePrecioCombo.Value := valor;
             qrEntradaPacienteDetalle.Post;
           end;

         qrEntradaPacienteDetalle.Next;
       end;
    end;

  qrEntradaPacienteDetalle.First;
  qrEntradaPacienteDetalle.EnableControls;
  qrEntradaPacienteDetalle.Last;

  FreeAndNil(qfind);
end;


procedure TfrmTransferenciaAS400.Insertar_Combo_Precio;
begin
 While Not qfindcombo.Eof Do
  Begin
   If (qrEntradaPacienteDetallePruebaID.Value = '') Or
      (qrEntradaPacienteDetallePruebaID.IsNull) Then
     qrEntradaPacienteDetalle.Delete
   Else
     qrEntradaPacienteDetalle.Post;

   qrEntradaPacienteDetalle.Insert;

   If (qfindcombo.FieldByName('Sexo').AsInteger < 2) then
    Begin
     If (qfindcombo.FieldByName('Sexo').AsInteger <> qrEntradaPacienteSexo.Value) Then
      Begin
       //El Paciente NO ES del Sexo Configurado a La Prueba en el Combo.
       comboprecio := True;
       qfindcombo.Next;
      End
     Else
      Begin
       //El Paciente ES del Sexo Configurado a La Prueba en el Combo.
       comboprecio := True;

       qrEntradaPacienteDetalleCOMBO.Value := 1; //LA PRUEBA ES UN COMBO.
       qrEntradaPacienteDetallePruebaID.Value := qfindcombo.FieldByName('PruebaID').AsString;
       qfindcombo.Next;
      End;
    End
   Else
    Begin
     //La Prueba Se Le Realiza a Ambos Sexos.
     comboprecio := True;

     qrEntradaPacienteDetalleCOMBO.Value := 1; //LA PRUEBA ES UN COMBO.
     qrEntradaPacienteDetallePruebaID.Value := qfindcombo.FieldByName('PruebaID').AsString;
     qfindcombo.Next;
    End;
  End;

 //Agregado Para Evitar Error al Momento de Actualizar el Detalle.
 If (qrEntradaPacienteDetallePruebaID.Value = '') Or
    (qrEntradaPacienteDetallePruebaID.IsNull) Then
   qrEntradaPacienteDetalle.Delete;

 //Agregado Para Evitar Error al Momento de Actualizar el Detalle.
 qrEntradaPacienteDetalle.Edit;
 FreeAndNil(qfindcombo);
end;


procedure TfrmTransferenciaAS400.Insertar_Combo_Blanco;
begin
 While Not qfindcombo.Eof Do
  Begin
   If (qrEntradaPacienteDetallePruebaID.Value = '') Or
      (qrEntradaPacienteDetallePruebaID.IsNull) Then
     qrEntradaPacienteDetalle.Delete
   Else
     qrEntradaPacienteDetalle.Post;

   qrEntradaPacienteDetalle.Insert;

   If (qfindcombo.FieldByName('Sexo').AsInteger < 2) then
    Begin
     If (qfindcombo.FieldByName('Sexo').AsInteger <> qrEntradaPacienteSexo.Value) Then
      Begin
       //El Paciente NO ES del Sexo Configurado a La Prueba en el Combo.
       comboprecio := False;
       qfindcombo.Next;
      End
     Else
      Begin
       //El Paciente ES del Sexo Configurado a La Prueba en el Combo.
       comboprecio := False;
       qrEntradaPacienteDetalleCOMBO.Value := 1; //LA PRUEBA ES UN COMBO.
       qrEntradaPacienteDetallePruebaID.Value := qfindcombo.FieldByName('PruebaID').AsString;
       qfindcombo.Next;
      End;
    End
   Else
    Begin
     //La Prueba Se Le Realiza a Ambos Sexos.
     comboprecio := False;
     qrEntradaPacienteDetalleCOMBO.Value := 1; //LA PRUEBA ES UN COMBO.
     qrEntradaPacienteDetallePruebaID.Value := qfindcombo.FieldByName('PruebaID').AsString;
     qfindcombo.Next;
    End;
  End;

 //Agregado Para Evitar Error al Momento de Actualizar el Detalle.
 If (qrEntradaPacienteDetallePruebaID.Value = '') Or
    (qrEntradaPacienteDetallePruebaID.IsNull) Then
   qrEntradaPacienteDetalle.Delete;

 //Agregado Para Evitar Error al Momento de Actualizar el Detalle.
 qrEntradaPacienteDetalle.Edit;
 qrEntradaPacienteDetalle.Post;
 FreeAndNil(qfindcombo);

 //Agregado Para Actualizar el Valor del Combo para la Transferencia a Axapta.
 Actu_Precio_Combo;
end;


procedure TfrmTransferenciaAS400.Val_Exterior;
begin
  DM.qrParametro.Close;
  DM.qrParametro.Open;

  qrEntradaPaciente.Edit;
  qrEntradaPacienteNoAS400.Value := 1;
  qrEntradaPacienteNoAxapta.Value := 1;
  qrEntradaPacienteNoFactura.Value := 1;
  qrEntradaPacienteSINPRFILTER.Value := 1;
  qrEntradaPacienteFactExterior.Value := 1;
  qrEntradaPacienteTipoDocumento.Value := 3;
  qrEntradaPacientePUBLICARINTERNET.Value := 0;
  qrEntradaPacientePUBLICARINTERNETDOCTOR.Value := 0;
  qrEntradaPacientePUBLICARINTERNETCLIENTE.Value := 0;
  qrEntradaPacienteOrigen.Value := DM.qrParametroGrupoExt.Value;
  qrEntradaPacienteMonedaID.Value := DM.qrParametroMonedaDolares.Value;
end;



procedure TfrmTransferenciaAS400.Buscar_Cod_Cups(cliente: String; prueba: String);
begin
  qfindcodcup := DM.NewQuery;
  qfindcodcup.Close;
  qfindcodcup.SQL.Text := ' SELECT * FROM PTCodigoCup '+
                          ' WHERE ClienteId = '#39 + cliente + #39 +
                          ' AND PruebaId = '#39 + prueba + #39 +
                          ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39 +
                          ' ORDER BY PruebaId ';
  qfindcodcup.Active := True;

  qrEntradaPacienteDetalle.Edit;

  if (qfindcodcup.RecordCount > 0) then
    Begin
      qrEntradaPacienteDetalleCodigoCupID.Value := qfindcodcup.FieldByName('CodigoCupID').AsString;

      if (qfindcodcup.FieldByName('DescripcionCup').AsString <> '') then
        qrEntradaPacienteDetalleDescripcionCup.Value := qfindcodcup.FieldByName('DescripcionCup').AsString
      else
        qrEntradaPacienteDetalleDescripcionCup.Value := qrEntradaPacienteDetalleDescripcion.Value;
    end
  Else
    Begin
      qrEntradaPacienteDetalleCodigoCupID.Value := prueba;
      qrEntradaPacienteDetalleDescripcionCup.Value := qrEntradaPacienteDetalleDescripcion.Value;
    end;

  FreeAndNil(qfindcodcup);
end;


function TfrmTransferenciaAS400.MaxSecuenciaLinea : Integer;
Var
 qfind : TADOQuery;
begin
 qfind := DM.NewQuery;

 qfind.Close;
 qfind.SQL.Text := ' SELECT MAX(Secuencia) FROM PTEntradaPacienteDetalle WHERE refRecid = '+ IntToStr(qrEntradaPacienteRECID.Value);
 qfind.Open;

 result := qfind.Fields[0].AsInteger + 1;

 FreeAndNil(qfind);
end;



procedure TfrmTransferenciaAS400.CrearTransCliente(cliente: string; tipodoc: string; documento: string;
                                                   tipoaplica: string; documentoaplica: string;
                                                   fecha : TDateTime; valor: Double; moneda :string;
                                                   paciente: string; filter: Integer);
Var
 qinsert : TADOQuery;
begin
 qinsert := DM.NewQuery;
 If (qrEntradaPacienteHold.Value = 0) And (documento <> '') Then
   Begin
     Try
         With qinsert, sql do
         begin
            Close;
            Text := ' INSERT INTO PTClienteTransacciones(ClienteId, fecha, TipoDoc, Documento, '+
                    ' TipoAplica, DocumentoAplica, Valor, MonedaId, ValorMST, PacienteId, SinPrFilter, '+
                    ' RecId) VALUES ( '+#39+cliente+#39+','+#39+FormatDateTime('yyyymmdd', fecha)+#39+','+#39+tipodoc+#39+','+
                                        #39+documento+#39+','+#39+tipoaplica+#39+','+#39+documentoaplica+#39+','+FloatToStr(valor)+','+
                                        #39+moneda+#39+','+FloatToStr(DM.ValorMoneda(valor,moneda,DM.qrparametroMonedaID.Value,fecha))+','+
                                        #39+paciente+#39+','+#39+filter+#39+','+IntToStr(GetSecuenciaId)+')';
            ExecSQL;
         end;
     Except
         Raise exception.CreateFmt('Error Creando PTClienteTransacciones. ClienteId='+cliente+' RecId = '+IntToStr(GetSecuenciaId), []);
     End;

   End;
 FreeAndNil(qinsert);
end;


procedure TfrmTransferenciaAS400.CrearCobroAxapta(cliente: string; paciente: string; tipodoc: string;
                                                  _cobroid: string; documento: string; fecha: TDateTime;
                                                  moneda:  string; aplica: string; _refId: Integer;
                                                  valor: Double; _areaId: string; _recId: Integer;
                                                  _padreId: string; _cuadro: Integer; _transf: Integer;
                                                  _suc: String; _forma: String; valpay: Double; filter : Integer);
Var
 qinsert : TADOQuery;
begin
 qinsert := DM.NewQuery;
     With qinsert,sql do
     begin
         Close;
         Clear;
         Add(' INSERT INTO PTCobroAxapta (CLIENTEID, PACIENTEID, TIPODOC, COBROID, DOCUMENTO, FECHA, '+
             ' MONEDAID, DOCUMENTOAPLICA, REFRECID, VALOR, VALORMST, DATAAREAID, RECID, CLIENTEPADRE, '+
             ' CUADRADO, TRANSFERIDO, SUCURSALID, FORMADEPAGOID, MONTODETALLE, MONTODETALLEMST, SINPRFILTER) '+
             ' VALUES ('+#39+cliente+#39+','+#39+paciente+#39+','+#39+tipodoc+#39+','+#39+_cobroid+#39+','+#39+documento+#39+','+
                        #39+FormatDateTime('yyyymmdd', fecha)+#39+','+#39+moneda+#39+','+#39+aplica+#39+','+
                        IntToStr(_refId)+','+FloatToStr(valor)+','+FloatToStr(DM.ValorMoneda(valor,moneda,DM.qrparametroMonedaID.Value,fecha))+','+
                        #39+_areaId+#39+','+IntToStr(_recId)+','+#39+_padreId+#39+','+
                        IntToStr(_cuadro)+','+IntToStr(_transf)+','+#39+_suc+#39+','+#39+_forma+#39+','+FloatToStr(valpay)+','+
                        FloatToStr(DM.ValorMoneda(valpay,moneda,DM.qrparametroMonedaID.Value,fecha))+','+#39+filter+#39+')');
         ExecSQL;
     end;
 FreeAndNil(qinsert);
end;


END.

