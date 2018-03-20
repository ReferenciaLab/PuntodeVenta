unit UInterface;

interface

uses
  SysUtils, Classes, DB, ADODB, ppDB, ppComm, ppRelatv, ppDBPipe;

type
  TAS400 = class(TDataModule)
    qrBancoInventario: TADOQuery;
    qrBancoInventarioProductoID: TWideStringField;
    qrBancoInventarioProductoDes: TWideStringField;
    qrBancoInventarioCantidad: TBCDField;
    qrBancoInventarioPrecio: TBCDField;
    qrBancoInventarioPrecioDolares: TBCDField;
    qrBancoInventarioDias: TIntegerField;
    qrBancoInventarioPermiteCambioPrecio: TBooleanField;
    qrBancoInventarioCodigoAxapta: TStringField;
    qrBancoInventarioCosto: TBCDField;
    qrBancoInventarioExterior: TBooleanField;
    qrBancoInventarioFacturarCabecera: TBooleanField;
    qrBancoInventarioTipo: TBooleanField;
    qrDonacionesAprobadas: TADOQuery;
    qrPruebasBanco: TADOQuery;
    qrDonaciones: TADOQuery;
    qrEsDonante: TADOQuery;
    qrReservar: TADOQuery;
    qrReservarReceptorId: TStringField;
    dsReservar: TDataSource;
    qrReservarReservadoHasta: TDateTimeField;
    qrReservarCruce: TBooleanField;
    qrReservarCrucePacienteId: TStringField;
    qrEsServicio: TADOQuery;
    qrEsServicioServicio: TBooleanField;
    qrEntradaPacienteDetalle: TADOQuery;
    qrReservarReservado: TBooleanField;
    qrProductosBanco: TADOQuery;
    qrProductosBancoProductoID: TWideStringField;
    qrProductosBancoProductoDes: TWideStringField;
    qrProductosBancoPrecio: TBCDField;
    qrProductosBancoPrecioDolares: TBCDField;
    qrProductosBancoDias: TIntegerField;
    qrProductosBancoPermiteCambioPrecio: TBooleanField;
    qrProductosBancoCodigoAxapta: TStringField;
    qrProductosBancoCosto: TBCDField;
    qrProductosBancoExterior: TBooleanField;
    qrProductosBancoFacturarCabecera: TBooleanField;
    qrProductosBancoTipo: TBooleanField;
    qrProductosBancoNecesitaCruce: TBooleanField;
    qrProductosBancoServicio: TBooleanField;
    ASConnection: TADOConnection;
    qrASHemograma: TADOQuery;
    qrASDetalle: TADOQuery;
    qrASEncabezado: TADOQuery;
    qrEntradaPaciente: TADOQuery;
    qrSQLEncabezado: TADOQuery;
    qrSQLDetalle: TADOQuery;
    qrASHemogramaL48MUE: TBCDField;
    qrASHemogramaL48PRU: TIntegerField;
    qrASHemogramaL48HGN: TStringField;
    qrASHemogramaL48HTT: TStringField;
    qrASHemogramaL48GLB: TStringField;
    qrASHemogramaL48PLA: TStringField;
    qrASHemogramaL48USU: TStringField;
    qrASHemogramaL48FEC: TIntegerField;
    qrASHemogramaL48HOR: TIntegerField;
    qrASHemogramaL48DIS: TStringField;
    qrDonacion: TADOQuery;
    qrDonacionDonacionID: TStringField;
    qrDonacionFecha: TDateTimeField;
    qrDonacionPacienteID: TStringField;
    qrDonacionNotaEntrevista: TMemoField;
    qrDonacionDonacionStatus: TWideStringField;
    qrDonacionDonacionTipo: TStringField;
    qrDonacionComentario: TMemoField;
    qrDonacionCantidadRecogida: TBCDField;
    qrDonacionTemperatura: TBCDField;
    qrDonacionPeso: TBCDField;
    qrDonacionPulsoMinimo: TBCDField;
    qrDonacionPulsoEstado: TStringField;
    qrDonacionTensionArteriar: TStringField;
    qrDonacionHoraInicio: TDateTimeField;
    qrDonacionHoraFin: TDateTimeField;
    qrDonacionDirigidoNombre: TStringField;
    qrDonacionHospital: TStringField;
    qrDonacionFechaTranfusion: TDateTimeField;
    qrDonacionMedico: TStringField;
    qrDonacionTelefono: TStringField;
    qrDonacionTelefono2: TStringField;
    qrDonacionDireccionMedico: TMemoField;
    qrDonacionPagina: TSmallintField;
    qrDonacionTipoFundaID: TWideStringField;
    qrDonacionHemoglobina: TStringField;
    qrDonacionHematocito: TStringField;
    qrDonacionGlobulosBlancos: TStringField;
    qrDonacionPlaquetas: TStringField;
    qrDonacionNotasCuestionario: TMemoField;
    qrDonacionProductoID: TWideStringField;
    qrDonacionReservado: TBooleanField;
    qrDonacionDisponible: TBooleanField;
    qrDonacionDirigidoPacienteId: TStringField;
    qrProductosBancoInicial: TBooleanField;
    qrDoctor: TADOQuery;
    qrReservarDoctorId: TStringField;
    qrDonacionDoctorId: TStringField;
    qrDonacionUserIdCuestionario: TStringField;
    qrDonacionUserIdMuestra: TStringField;
    qrHemograma: TADOQuery;
    qrHemogramaDonacionID: TStringField;
    qrHemogramaMuestraNo: TStringField;
    qrHemogramaHemoglobina: TStringField;
    qrHemogramaHematocito: TStringField;
    qrHemogramaGlobulosBlancos: TStringField;
    qrHemogramaPlaquetas: TStringField;
    qrHemogramaMuestraNoAS: TStringField;
    plDonacion: TppDBPipeline;
    dsDomaciones: TDataSource;
    dsDatosEtiqutaGrance: TDataSource;
    qFind: TADOQuery;
    qrDonantes: TADOQuery;
    dsDonantes: TDataSource;
    qrReservacionesVencidas: TADOQuery;
    qrReservacionesVencidasCodigoId: TStringField;
    qrReservacionesVencidasDonacionId: TStringField;
    qrReservacionesVencidasProductoID: TWideStringField;
    qrReservacionesVencidasProductoDes: TWideStringField;
    qrReservacionesVencidasCantidad: TBCDField;
    qrReservacionesVencidasFecha: TDateTimeField;
    qrReservacionesVencidasHora: TStringField;
    qrReservacionesVencidasReservado: TBooleanField;
    qrReservacionesVencidasReservadoHasta: TDateTimeField;
    qrReservacionesVencidasDias: TIntegerField;
    qrReservacionesVencidasVence: TDateTimeField;
    qrReservacionesVencidasCruce: TBooleanField;
    qrReservacionesVencidasReceptorId: TStringField;
    qrReservacionesVencidasDoctorId: TStringField;
    qrProductosVencidos: TADOQuery;
    qrDatosProducto: TADOQuery;
    qrDatosProductoCodigoId: TStringField;
    qrDatosProductoReceptorId: TStringField;
    qrDatosProductoDoctorId: TStringField;
    qrDatosProductoReservado: TBooleanField;
    qrDatosProductoReservadoHasta: TDateTimeField;
    qrDatosProductoCruce: TBooleanField;
    qrDatosProductoCrucePacienteId: TStringField;
    qrDatosProductoDisponible: TBooleanField;
    qrProductosVencidosCodigoId: TStringField;
    qrProductosVencidosDonacionId: TStringField;
    qrProductosVencidosProductoID: TWideStringField;
    qrProductosVencidosProductoDes: TWideStringField;
    qrProductosVencidosCantidad: TBCDField;
    qrProductosVencidosFecha: TDateTimeField;
    qrProductosVencidosHora: TStringField;
    qrProductosVencidosReservado: TBooleanField;
    qrProductosVencidosReservadoHasta: TDateTimeField;
    qrProductosVencidosDias: TIntegerField;
    qrProductosVencidosVence: TDateTimeField;
    qrProductosVencidosCruce: TBooleanField;
    qrProductosVencidosReceptorId: TStringField;
    qrProductosVencidosDoctorId: TStringField;
    ADOQuery1: TADOQuery;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    BCDField1: TBCDField;
    BCDField2: TBCDField;
    BCDField3: TBCDField;
    IntegerField1: TIntegerField;
    BooleanField1: TBooleanField;
    StringField1: TStringField;
    BCDField4: TBCDField;
    BooleanField2: TBooleanField;
    BooleanField3: TBooleanField;
    BooleanField4: TBooleanField;
    qrDonacionesAprobadasDonacionID: TStringField;
    qrDonacionesAprobadasFecha: TDateTimeField;
    qrDonacionesAprobadasPacienteID: TStringField;
    qrDonacionesAprobadasIdentificacion: TStringField;
    qrDonacionesAprobadasNombre: TStringField;
    qrDonacionesAprobadasDireccion: TStringField;
    qrDonacionesAprobadasTelefono: TStringField;
    qrDonacionesAprobadasemail: TStringField;
    qrDonacionesAprobadasFechaNacimiento: TDateTimeField;
    qrDonacionesAprobadasSexo: TIntegerField;
    qrDonacionesAprobadasCiudadID: TStringField;
    qrDonacionesAprobadasNotaEntrevista: TMemoField;
    qrDonacionesAprobadasDonacionStatus: TWideStringField;
    qrDonacionesAprobadasMuestraNo: TStringField;
    qrDonacionesAprobadasDirigidoPacienteId: TStringField;
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
    qrEntradaPacienteRESULTADOPACIENTE: TIntegerField;
    qrEntradaPacienteRESULTADODOCTOR: TIntegerField;
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
    qrEntradaPacienteDetalleDESCUENTOLINEAAPLICADO: TBCDField;
    qrEntradaPacienteDetalleFACTURAR: TIntegerField;
    qrEntradaPacienteDetalleSELECCIONAR: TIntegerField;
    qrEntradaPacienteDetalleMUESTRANO: TStringField;
    qrEntradaPacienteDetalleCOBERTURAEXPPORC: TIntegerField;
    qrEntradaPacienteDetalleURGENTE: TIntegerField;
    qrEntradaPacienteDetalleREPMUESTRA: TIntegerField;
    qrEntradaPacienteDetalleFECHAENTREGA: TDateTimeField;
    qrEntradaPacienteDetalleHORAENTREGA: TStringField;
    qrEntradaPacienteDetalleESTATUS: TStringField;
    qrEntradaPacienteDetalleDATAAREAID: TStringField;
    qrEntradaPacienteDetalleRECID: TIntegerField;
    qrClientes: TADOQuery;
    qrClientesNOMBRE: TStringField;
    qrDoctorDOCTORID: TStringField;
    qrDoctorNOMBRE: TStringField;
    qrDoctorCONTACTO: TStringField;
    qrDoctorTELEFONO: TStringField;
    qrDoctorFAX: TStringField;
    qrDoctorCODIGOAXAPTA: TStringField;
    qrDoctorEMAIL: TStringField;
    qrDoctorCELULAR: TStringField;
    qrDoctorDIRECCION: TMemoField;
    qrDoctorCIUDADID: TStringField;
    qrDoctorRESULTADODOCTOR: TIntegerField;
    qrDoctorESPECIALIDADID: TStringField;
    qrDoctorPUBLICARINTERNET: TIntegerField;
    qrDoctorCODIGORESULTADO: TStringField;
    qrDoctorUSUARIOINTERNET: TStringField;
    qrDoctorCLAVEINTERNET: TStringField;
    qrDoctorCOMISION: TBCDField;
    qrDoctorDIRECCIONCONSULTA2: TMemoField;
    qrDoctorDIRECCIONCONSULTA1: TMemoField;
    qrDoctorESPECIALIDAD: TStringField;
    qrDoctorCODIGOWEB: TStringField;
    qrDoctorDATAAREAID: TStringField;
    qrDoctorRECID: TIntegerField;
    qrDoctormsrepl_tran_version: TGuidField;
    qrDonacionesDonacionID: TStringField;
    qrDonacionesMuestraNo: TStringField;
    qrDonacionesMuestraNoAS: TStringField;
    qrDonacionesFecha: TDateTimeField;
    qrDonacionesPacienteID: TStringField;
    qrDonacionesNotaEntrevista: TMemoField;
    qrDonacionesDonacionStatus: TWideStringField;
    qrDonacionesDonacionTipo: TStringField;
    qrDonacionesComentario: TMemoField;
    qrDonacionesCantidadRecogida: TBCDField;
    qrDonacionesTemperatura: TBCDField;
    qrDonacionesPeso: TBCDField;
    qrDonacionesPulsoMinimo: TBCDField;
    qrDonacionesPulsoEstado: TStringField;
    qrDonacionesTensionArteriar: TStringField;
    qrDonacionesHoraInicio: TDateTimeField;
    qrDonacionesHoraFin: TDateTimeField;
    qrDonacionesDirigidoPacienteId: TStringField;
    qrDonacionesDirigidoNombre: TStringField;
    qrDonacionesHospital: TStringField;
    qrDonacionesFechaTranfusion: TDateTimeField;
    qrDonacionesMedico: TStringField;
    qrDonacionesTelefono: TStringField;
    qrDonacionesTelefono2: TStringField;
    qrDonacionesDireccionMedico: TMemoField;
    qrDonacionesPagina: TSmallintField;
    qrDonacionesTipoFundaID: TWideStringField;
    qrDonacionesHemoglobina: TStringField;
    qrDonacionesHematocito: TStringField;
    qrDonacionesGlobulosBlancos: TStringField;
    qrDonacionesPlaquetas: TStringField;
    qrDonacionesNotasCuestionario: TMemoField;
    qrDonacionesProductoID: TWideStringField;
    qrDonacionesReservado: TBooleanField;
    qrDonacionesDisponible: TBooleanField;
    qrDonacionesDoctorId: TStringField;
    qrDonacionesUserIdCuestionario: TStringField;
    qrDonacionesUserIdMuestra: TStringField;
    qrDonacionesIdentificacion: TStringField;
    qrDonacionesNombre: TStringField;
    qrDonacionesDireccion: TStringField;
    qrDonacionesTelefono_1: TStringField;
    qrDonacionesemail: TStringField;
    qrDonacionesFechaNacimiento: TDateTimeField;
    qrDonacionesSexo: TIntegerField;
    qrDonacionesCiudadID: TStringField;
    qrDonacionesNotaEntrevista_1: TMemoField;
    qrDonacionesDonacionStatus_1: TWideStringField;
    qrDonantesPacienteID: TStringField;
    qrDonantesNombre: TStringField;
    qrDonantesTelefono: TStringField;
    qrDonantesTelefono2: TStringField;
    qrDonantesDireccion: TStringField;
    qrDonantesCiudadID: TStringField;
    qrDonantesTipoDonante: TWideStringField;
    qrDonantesEstado: TWideStringField;
    qrDonantesRechaso: TWideStringField;
    qrDonantesRechasoNota: TWideStringField;
    qrDonantesDonanteActivo: TSmallintField;
    qrDonantesTipoSangre: TWideStringField;
    qrDonantesRH: TWideStringField;
    qrDonantesUltimaDonacionId: TStringField;
    qrDonantesFechaUltimaDon: TDateTimeField;
    qrEntradaPacienteCons: TADOQuery;
    qrEntradaPacienteConsENTRADAID: TStringField;
    qrEntradaPacienteConsFECHA: TDateTimeField;
    qrEntradaPacienteConsHORAENTRADA: TStringField;
    qrEntradaPacienteConsPACIENTEID: TStringField;
    qrEntradaPacienteConsCLIENTEID: TStringField;
    qrEntradaPacienteConsDOCTORID: TStringField;
    qrEntradaPacienteConsPOLIZAID: TStringField;
    qrEntradaPacienteConsENCLINICA: TIntegerField;
    qrEntradaPacienteConsRECORDCLINICA: TStringField;
    qrEntradaPacienteConsNUMEROHABITACION: TStringField;
    qrEntradaPacienteConsFECHAENTRADA: TDateTimeField;
    qrEntradaPacienteConsFECHADEALTA: TDateTimeField;
    qrEntradaPacienteConsRESULTADOPACIENTE: TIntegerField;
    qrEntradaPacienteConsRESULTADODOCTOR: TIntegerField;
    qrEntradaPacienteConsFECHAPROMETIDA: TDateTimeField;
    qrEntradaPacienteConsHORAPROMETIDA: TStringField;
    qrEntradaPacienteConsFLEBOTOMISTAID: TStringField;
    qrEntradaPacienteConsNOTA: TStringField;
    qrEntradaPacienteConsPROYECTOID: TStringField;
    qrEntradaPacienteConsRECORDID: TIntegerField;
    qrEntradaPacienteConsBRUTO: TBCDField;
    qrEntradaPacienteConsDESCUENTO: TBCDField;
    qrEntradaPacienteConsSUBTOTAL: TBCDField;
    qrEntradaPacienteConsNETO: TBCDField;
    qrEntradaPacienteConsNOMBREPACIENTE: TStringField;
    qrEntradaPacienteConsDIRECCION: TStringField;
    qrEntradaPacienteConsTELEFONOS: TStringField;
    qrEntradaPacienteConsTELEFONO2: TStringField;
    qrEntradaPacienteConsEMAIL: TStringField;
    qrEntradaPacienteConsCLIENTENOMBRE: TStringField;
    qrEntradaPacienteConsSUCURSALID: TStringField;
    qrEntradaPacienteConsUSERID: TStringField;
    qrEntradaPacienteConsCOBROID: TStringField;
    qrEntradaPacienteConsTOTALPAGADO: TBCDField;
    qrEntradaPacienteConsPRIORIDAD: TIntegerField;
    qrEntradaPacienteConsFAX: TStringField;
    qrEntradaPacienteConsTIPODOCUMENTO: TIntegerField;
    qrEntradaPacienteConsCOBERTURAPORC: TBCDField;
    qrEntradaPacienteConsCOBERTURASEGURO: TBCDField;
    qrEntradaPacienteConsCOBERTURAVALOR: TBCDField;
    qrEntradaPacienteConsDESCUENTOPORC: TBCDField;
    qrEntradaPacienteConsDESCUENTOVALOR: TBCDField;
    qrEntradaPacienteConsDESCUENTOBONO: TBCDField;
    qrEntradaPacienteConsORIGEN: TStringField;
    qrEntradaPacienteConsAPROBACIONNO: TStringField;
    qrEntradaPacienteConsAPROBACIONPOR: TStringField;
    qrEntradaPacienteConsCOBERTURARECHAZADA: TIntegerField;
    qrEntradaPacienteConsCOBERTURACONFIRMADA: TIntegerField;
    qrEntradaPacienteConsFECHAASEGURADORA: TDateTimeField;
    qrEntradaPacienteConsMUESTRANO: TStringField;
    qrEntradaPacienteConsMONEDAID: TStringField;
    qrEntradaPacienteConsCOBERTURAEXPPORC: TIntegerField;
    qrEntradaPacienteConsEDADPACIENTE: TIntegerField;
    qrEntradaPacienteConsSEXO: TIntegerField;
    qrEntradaPacienteConsNOMBREDOCTOR: TStringField;
    qrEntradaPacienteConsPUBLICARINTERNET: TIntegerField;
    qrEntradaPacienteConsCARNET: TStringField;
    qrEntradaPacienteConsPUBLICARINTERNETDOCTOR: TIntegerField;
    qrEntradaPacienteConsCUADREGLOBAL: TStringField;
    qrEntradaPacienteConsCUADREUSUARIO: TStringField;
    qrEntradaPacienteConsDESCAUTORIZADOPOR: TStringField;
    qrEntradaPacienteConsGASTOSVARIOS: TBCDField;
    qrEntradaPacienteConsNOAS400: TIntegerField;
    qrEntradaPacienteConsNOAXAPTA: TIntegerField;
    qrEntradaPacienteConsNOFACTURA: TIntegerField;
    qrEntradaPacienteConsFACTEXTERIOR: TIntegerField;
    qrEntradaPacienteConsHOLD: TIntegerField;
    qrEntradaPacienteConsREPMUESTRA: TIntegerField;
    qrEntradaPacienteConsENTRADAIDANT: TStringField;
    qrEntradaPacienteConsTIPOENTRADA: TStringField;
    qrEntradaPacienteConsFORMADEPAGO: TStringField;
    qrEntradaPacienteConsDESCUENTOCARD: TStringField;
    qrEntradaPacienteConsDESCUENTOTEXTO: TStringField;
    qrEntradaPacienteConsACUERDOPROPIO: TIntegerField;
    qrEntradaPacienteConsCLIENTEPADRE: TStringField;
    qrEntradaPacienteConsDESCUENTOPLANID: TStringField;
    qrEntradaPacienteConsFECHAREGISTRO: TDateTimeField;
    qrEntradaPacienteConsHORAREGISTRO: TStringField;
    qrEntradaPacienteConsTASA: TBCDField;
    qrEntradaPacienteConsESTATUS: TIntegerField;
    qrEntradaPacienteConsTIPOCLIENTEAS400: TIntegerField;
    qrEntradaPacienteConsCLASECREDITO: TStringField;
    qrEntradaPacienteConsCARNETNUMERO: TStringField;
    qrEntradaPacienteConsCLIENTEPADREAXAPTA: TStringField;
    qrEntradaPacienteConsPACIENTEIDAXAPTA: TStringField;
    qrEntradaPacienteConsCLIENTEIDAXAPTA: TStringField;
    qrEntradaPacienteConsDOCTORIDAXAPTA: TStringField;
    qrEntradaPacienteConsDATAAREAID: TStringField;
    qrEntradaPacienteConsRECID: TIntegerField;
    qrPruebasBancoPRUEBAID: TStringField;
    qrPruebasBancoALIAS: TStringField;
    qrPruebasBancoDESCRIPCION: TStringField;
    qrPruebasBancoESTATUS: TIntegerField;
    qrPruebasBancoGRUPOPRUEBAID: TStringField;
    qrPruebasBancoDEPARTAMENTO: TStringField;
    qrPruebasBancoPRECIO: TBCDField;
    qrPruebasBancoPERMITECAMBIOPRECIO: TIntegerField;
    qrPruebasBancoCODIGOAXAPTA: TStringField;
    qrPruebasBancoPRECIODOLARES: TBCDField;
    qrPruebasBancoCOSTO: TBCDField;
    qrPruebasBancoEXTERIOR: TIntegerField;
    qrPruebasBancoFACTURARCABECERA: TIntegerField;
    qrPruebasBancoPRUEBAS: TIntegerField;
    qrPruebasBancoTIPO: TStringField;
    qrPruebasBancoORINA: TIntegerField;
    qrPruebasBancoSANGRE: TIntegerField;
    qrPruebasBancoCONDPACIENTE: TStringField;
    qrPruebasBancoCONDMUESTRA: TStringField;
    qrPruebasBancoCODDIAPROC: TStringField;
    qrPruebasBancoDIASRESULTADO: TIntegerField;
    qrPruebasBancoUNIDAD: TStringField;
    qrPruebasBancoABREVIACION: TStringField;
    qrPruebasBancoTIPOMUESTRA: TIntegerField;
    qrPruebasBancoMEDIO: TIntegerField;
    qrPruebasBancoCOLOR: TIntegerField;
    qrPruebasBancoDEPID: TStringField;
    qrPruebasBancoTIPOAS400: TStringField;
    qrPruebasBancoCODIGOIDAS400: TStringField;
    qrPruebasBancoMEDIOAS400: TStringField;
    qrPruebasBancoNOPROCESAR: TIntegerField;
    qrPruebasBancoCOMENTARIONOPROCESAR: TStringField;
    qrPruebasBancoDATAAREAID: TStringField;
    qrPruebasBancoRECID: TIntegerField;
    qrPruebasBancomsrepl_tran_version: TGuidField;
  private
    { Private declarations }
  public
    { Public declarations }

    RetornarDoctor: String;
    RetornarPaciente: String;
    RetornarDonacion: Int64;
    Retornarprueba: String;

    procedure SalidaInventario(Codigo: String);
    function EsDonante(PacienteId: String): Boolean;
    function EsServicio(Codigo: String): Boolean;
    function PasarVenta(MuestraNo: String): String;

    procedure MandarPruebaAS400(MuestraNo: String);
    procedure ActualizarHemograma(MuestraNo: String);

    function BuscarDoctor: String;
    function BuscarPaciente: String;
    function BuscarPrueba: String;

    function NuevaDonacion(PacienteId: String): String;
    function GetNextSecDoc(tipodoc : string) : String;

    procedure PrintLabel(CodigoId: String);

    function BuscarDonacion: Int64;

    Procedure AddHistorico(CodigoId: String; OperacionId: String; Nota: String);
    procedure LiberarReservacion(CodigoId: String; Nota: String);
    procedure Reservar(CodigoId: String;
                        ReceptorId: String;
                        DoctorId: String;
                        ReservadoHasta: String;
                        Cruce: Boolean;
                        Nota: String);
    procedure DesecharProducto(CodigoId: String; Nota: String);
    function AreaId: String;

  end;

var
  AS400: TAS400;
    Const
      _AreaId = 'bds';

implementation
uses DataModule, Main, StrUtils, Windows;

{$R *.dfm}

function TAS400.BuscarPrueba: String;
begin

  frmMain.LanzaVentana(-6000);
  BuscarPrueba:= RetornarPrueba;

end;

function TAS400.AreaId;
begin
  Areaid:= _AreaId;
end;

Procedure TAS400.reservar(CodigoId: String;
                        ReceptorId: String;
                        DoctorId: String;
                        ReservadoHasta: String;
                        Cruce: Boolean;
                        Nota: String);
begin

  if Cruce then
    AddHistorico(CodigoId, 'RCC', Nota)
  else
    AddHistorico(CodigoId, 'RSC', Nota);


{  qrDatosProducto.Close;
  qrDatosProducto.Parameters.ParamByName('CodigoId').Value:= CodigoId;
  qrDatosProducto.Open;

    qrDatosProducto.Edit;

      qrDatosProductoReceptorId.Value:= ReceptorId;
      qrDatosProductoDoctorId.Value:= DoctorId;
      qrDatosProductoReservado.Value:= True;
      qrDatosProductoReservadoHasta.AsString:= ReservadoHasta;
      qrDatosProductoCruce.Value:= Cruce;
      qrDatosProductoCrucePacienteId.Value:= ReceptorId;
      qrDatosProductoDisponible.Value:= False;

    qrDatosProducto.Post;

  qrDatosProducto.Close;}

end;

Procedure TAS400.DesecharProducto(CodigoId: String; Nota: String);
begin

  AddHistorico(CodigoId, 'DC', Nota);

  DM.DataBase.Execute('Delete From Inventario Where CodigoId = '
    + #39 + CodigoId + #39 );

end;

Procedure TAS400.LiberarReservacion(CodigoId: String; Nota: String);
begin

  AddHistorico(CodigoId, 'LR', Nota);

  qrDatosProducto.Close;
  qrDatosProducto.Parameters.ParamByName('CodigoId').Value:= CodigoId;
  qrDatosProducto.Open;

    qrDatosProducto.Edit;

      qrDatosProductoReceptorId.Value:= '';
      qrDatosProductoDoctorId.Value:= '';
      qrDatosProductoReservado.Value:= False;
      qrDatosProductoReservadoHasta.AsString:= '';
      qrDatosProductoCruce.Value:= False;
      qrDatosProductoCrucePacienteId.Value:= '';
      qrDatosProductoDisponible.Value:= True;

    qrDatosProducto.Post;

  qrDatosProducto.Close;

end;

Procedure TAS400.AddHistorico(CodigoId: String; OperacionId: String; Nota: String);
begin

  qrDatosProducto.Close;
  qrDatosProducto.Parameters.ParamByName('CodigoId').Value:= CodigoId;
  qrDatosProducto.Open;

  DM.DataBase.Execute('Insert into BSHistProductos ( CodigoId, Fecha, OperacionId, Userid, Nota, ReceptorId, DoctorId) values ('
    + #39 + CodigoId + #39 + ', '
    + #39 + DateToStr(DM.SystemDate) + #39 + ', '
    + #39 + OperacionId + #39 + ', '
    + #39 + DM.CurUser + #39 + ', '
    + #39 + Nota + #39 + ', '
    + #39 + qrDatosProductoReceptorId.Value + #39 + ', '
    + #39 + qrDatosProductoDoctorId.Value + #39 + ')');

  qrDatosProducto.Close;

end;

function TAS400.BuscarDonacion: Int64;
begin

  frmMain.LanzaVentana(-6501);
  BuscarDonacion:= RetornarDonacion;

end;

procedure TAS400.PrintLabel(CodigoId: String);
var
 texto  : TextFile;
 cadena : String;

Const
 LetraSec : array[1..27] of string = ('A','B','C','D','E','F','G','H','I','J','K','L','M','N',
                                      'Ñ','O','P','Q','R','S','T','U','V','W','X','Y','Z');
begin
  qfind.Close;
  qFind.Parameters.ParamByName('CodigoId').Value:= CodigoId;
  qfind.Open;

 While Not qfind.Eof Do
 begin
  cadena := 'c:\Barcode';
  assignfile(texto, cadena);
  rewrite(texto);

  writeln(texto,'N');
  writeln(texto,'N');
  writeln(texto,'q1200');
  writeln(texto,'Q609,30');
  writeln(texto,'S2');
  writeln(texto,'D8');
  writeln(texto,'ZB');
  writeln(texto,'B235,15,0,3,2,6,98,N,"' + Qfind.FieldByName('DonacionId').AsString+'"');
  {writeln(texto,'A220,110,0,3,1,1,N,"' + Qfind.FieldByName('MuestraNo').AsString + '-' +
                                     FormatFloat('000', Qfind.FieldByName('Sucursal').AsFloat) +
                                     Qfind.FieldByName('Sucursal').AsString+'"');}
  //writeln(texto,'A415,110,0,1,1,1,N,"' + Qfind.FieldByName('DeptId').AsString+'"');
  //writeln(texto,'A230,130,0,2,1,1,N,"' + Qfind.FieldByName('Nombre').AsString+'"');
  //writeln(texto,'B500,130,0,3,2,3,50,N,"' + LetraSec[Qfind.FieldByName('Secuencia').AsInteger]+'"');
  //writeln(texto,'A590,0,1,1,1,1,N,"' + DM.CurUser+'*"');
  //writeln(texto,'A230,150,0,1,1,1,N,"' + Qfind.FieldByName('Descripcion').AsString+'"');
  writeln(texto,'P1');
  system.closefile(texto);

  cadena := 'c:\barcode.bat';
  assignfile(texto, cadena);
  rewrite(texto);
  writeln(texto,'PRINT /d:lpt1 c:\barcode ');
  system.closefile(texto);
  winexec('print /d:lpt1 c:\barcode ',SW_SHOWNORMAL);
  //CreateProcess(NULL, "print /d:lpt1 c:\barcode ");
  qfind.Next;

 end;
end;


function TAS400.GetNextSecDoc(tipodoc : string) : String;
var
 qsecdoc : TADOQuery;
begin
 qsecdoc := DM.NewQuery;

 qsecdoc.close;
 qsecdoc.SQL.Text := 'Select * from PTSecuenciaDoc Where TipoDoc = '+#39+tipodoc+#39;
 qsecdoc.Open;
{
 if (qsecdoc.FieldByName('UsarIdentificador').AsBoolean) then
   result := qsecdoc.FieldByName('TipoDoc').asstring + '-'+ formatfloat('00',strtofloat(DM.CurSucursal))+'-'+formatfloat('000000',qsecdoc.FieldByName('Secuencia').Asfloat)
 else
   result := formatfloat('00',strtofloat(DM.CurSucursal))+'-'+formatfloat('000000',qsecdoc.FieldByName('Secuencia').Asfloat);

 if (qsecdoc.FieldByName('UsarIdentificador').AsBoolean) then
   result := qsecdoc.FieldByName('TipoDoc').asstring + formatfloat('000',strtofloat(DM.CurSucursal)) + formatfloat('000000',qsecdoc.FieldByName('Secuencia').Asfloat)
 else
   result := formatfloat('000',strtofloat(DM.CurSucursal)) + formatfloat('000000',qsecdoc.FieldByName('Secuencia').Asfloat);
}
 if (qsecdoc.FieldByName('UsarIdentificador').AsBoolean) then
   result := qsecdoc.FieldByName('TipoDoc').asstring + DM.CurSucursal +
             formatfloat('000000',qsecdoc.FieldByName('Secuencia').Asfloat)
 else
   result := DM.CurSucursal + formatfloat('000000',qsecdoc.FieldByName('Secuencia').Asfloat);

 qsecdoc.close;
 qsecdoc.SQL.Clear;
 qsecdoc.SQL.Text := 'Update PTSecuenciaDoc set Secuencia = Secuencia + 1 Where TipoDoc = '+#39+tipodoc+#39;
 qsecdoc.ExecSQL;
end;


function TAS400.NuevaDonacion(PacienteId: string): String;
var
  EntradaId: String;
  MuestraNo: String;
  recid: Integer;
begin

  DM.qrParametro.Close;
  DM.qrParametro.Open;

  recid := DM.qrParametroSecuencia.Value;

  DM.qrParametro.Edit;
  DM.qrParametroSecuencia.Value := DM.qrParametroSecuencia.Value + 1;
  DM.qrParametro.Post;

  qrClientes.Close;
  qrClientes.Parameters.ParamByName('PacienteId').Value:= PacienteId;
  qrClientes.Open;

  //Crear entrada de paciente
  qrEntradapaciente.Close;
  qrEntradaPaciente.Open;

  qrEntradaPaciente.Insert;
  qrEntradaPacienteDATAAREAID.Value := _AreaId;
  qrEntradaPacienteRecid.Value := recid;
  qrEntradaPacienteNOMBREPACIENTE.Value:= qrClientesNOMBRE.Value;
  qrEntradaPacientePacienteID.Value:= PacienteId;
  qrEntradaPacienteClienteID.Value:= PacienteId;
  qrEntradaPacienteCoberturaConfirmada.Value := 0;
  qrEntradaPacienteSucursalId.Value := DM.CurSucursal;
  qrEntradaPacienteBruto.Value := 0;
  qrEntradaPacienteDescuento.Value := 0;
  qrEntradaPacienteSubTotal.Value := 0;
  qrEntradaPacienteCoberturaSeguro.Value := 0;
  qrEntradaPacienteNeto.Value := 0;
  qrEntradaPacienteTotalPagado.Value := 0;
  //qrEntradaPacienteTotalPendiente.Value := 0;
  qrEntradaPacientePrioridad.Value := 0;
  qrEntradaPacienteResultadoPaciente.Value := 0;
  qrEntradaPacienteResultadoDoctor.Value := 3;
  qrEntradaPacienteTipoDocumento.Value := 0;
  qrEntradaPacienteDescuentoPorc.Value := 0;
  qrEntradaPacienteDescuentoValor.Value := 0;
  qrEntradaPacienteFecha.Value := DM.SystemDate;
  qrEntradaPacienteUserId.Value := DM.CurUser;
  qrEntradaPacienteOrigen.Value := '';
  qrEntradaPacienteCoberturaPorc.Value := 0;
  qrEntradaPacienteCoberturaValor.Value := 0;
  MuestraNo:= GetNextSecDoc('MT');
  qrEntradaPacienteMuestraNo.Value := MuestraNo;
  qrEntradaPacienteMonedaID.Value := DM.qrParametroMonedaID.Value;
  qrEntradaPacienteCoberturaExpPorc.Value := 0;
  qrEntradaPacientePublicarInternet.Value := 0;
  qrEntradaPacientePublicarInternetDoctor.Value := 0;
  qrEntradaPacienteHold.Value := 0;
  qrEntradaPacienteNoAS400.Value := 0;
  qrEntradaPacienteNoAxapta.Value := 0;
  qrEntradaPacienteNoFactura.Value := 0;
  qrEntradaPacienteRepMuestra.Value := 0;
  qrEntradaPacienteFactExterior.Value := 0;

  EntradaId:= GetNextSecDoc('DON');
  qrEntradaPacienteEntradaID.Value := EntradaId;
  qrEntradaPacienteUserId.Value := DM.CurUser;
  qrEntradaPacienteFecha.Value := DM.SystemDate;
  qrEntradaPacienteHoraEntrada.Value := leftStr(TimeToStr(Time), 5);
  qrEntradaPacienteHold.Value := 0;

  // Insertar nueva donacion
  DM.DataBase.Execute('Insert into BSDonacion ( DonacionId, MuestraNo, Fecha, PacienteId) values ('
  + #39 + EntradaID + #39 + ', '
  + #39 + MuestraNo + #39 + ', '
  + #39 + qrEntradaPacienteFecha.AsString + #39 + ', '
  + #39 + PacienteID + #39 + ') ');
  //Insertar nuevo donante
  if not DMB.EsDonante(PacienteId) then
    begin
      DM.DataBase.Execute('Insert into BSDonante (PacienteId) values ('
      + #39 + PacienteID + #39 + ') ');
    end;

  qrEntradaPaciente.Post;

end;

function TAS400.BuscarPaciente: String;
begin

  frmMain.LanzaVentana(-6003);
  BuscarPaciente:= RetornarPaciente;

end;

function TAS400.BuscarDoctor: String;
begin

  frmMain.LanzaVentana(-6500);
  BuscarDoctor:= RetornarDoctor;

end;

procedure TAS400.ActualizarHemograma(MuestraNo: String);
begin

  qrASHemograma.Close;
  qrASHemograma.Parameters.ParamByName('MuestraNo').Value:= MuestraNo;
  qrASHemograma.Open;

  qrHemograma.Close;
  qrHemograma.Parameters.ParamByName('MuestraNo').Value:= MuestraNo;
  qrHemograma.Open;

  qrHemograma.Edit;

    qrHemogramaHemoglobina.AsString:= qrASHemogramaL48HGN.Value;
    qrHemogramaHematocito.AsString:= qrASHemogramaL48HTT.Value;
    qrHemogramaGlobulosBlancos.AsString:= qrASHemogramaL48GLB.Value;
    qrHemogramaPlaquetas.AsString:= qrASHemogramaL48PLA.Value;
    
  qrHemograma.Post;

  qrHemograma.Close;
  qrASHemograma.Close;

end;

procedure TAS400.MandarPruebaAS400(MuestraNo: string);
var
  i: Integer;
begin
  // Poner Encabezado
  qrASEncabezado.Open;
  qrASEncabezado.Insert;

  qrSqlEncabezado.Close;
  qrSQLEncabezado.Parameters.ParamByName('MuestraNo').Value:= MuestraNo;
  qrSQLEncabezado.Open;

  for I := 0 to qrSQLEncabezado.Fields.Count - 1 do
    begin
      //if not isNull(qrSQLEncabezado.Fields.Fields[i].Value) then
      qrASEncabezado.Fields.Fields[i].Value:=
      qrSQLEncabezado.Fields.Fields[i].Value;
    end;

  qrASEncabezado.Post;
  qrASEncabezado.Close;

  qrSQLEncabezado.Close;

////////////////////////////////////////////////////////////////////////////////

  // Poner Detalles
  qrASDetalle.Open;

  qrSqlDetalle.Close;
  qrSQLDetalle.Parameters.ParamByName('MuestraNo').Value:= MuestraNo;
  qrSQLDetalle.Open;

  while not qrSQLDetalle.Eof do
    begin

      qrASDetalle.Insert;

      for I := 0 to qrSQLDetalle.Fields.Count - 1 do
        begin
          qrASDetalle.Fields.Fields[i].Value:=
          qrSQLDetalle.Fields.Fields[i].Value;
        end;

      qrASDetalle.Post;

      qrSQLDetalle.Next;
    end;

  qrASDetalle.Close;

  qrSQLDetalle.Close;


end;

function TAS400.EsServicio(Codigo: string): Boolean;
begin

  qrEsServicio.Close;
  qrEsServicio.Parameters.ParamByName('CodigoId').Value:= Codigo;
  qrEsServicio.Open;

  EsServicio:= qrEsServicioServicio.Value;

end;

procedure TAS400.SalidaInventario(Codigo: String);
begin

  if EsServicio(Codigo) then Exit;

  DM.DataBase.Execute('UPDATE BSInventario SET Disponible = 0 where CodigoId ='
  + #39 + Codigo + #39 );

end;

function TAS400.PasarVenta(MuestraNo: string): string;
begin

  qrEntradaPacienteDetalle.Close;
  qrEntradaPacienteDetalle.parameters[0].Value := MuestraNo;
  qrEntradaPacienteDetalle.Open;

  while not qrEntradaPacienteDetalle.Eof do
    begin
      SalidaInventario(qrEntradaPacienteDetallePruebaID.Value);
      qrEntradaPacienteDetalle.Next;
    end;

  qrEntradaPacienteDetalle.Close;

end;

function TAS400.EsDonante(PacienteId: string): Boolean;
begin

  qrEsDonante.Close;
  qrEsDonante.Parameters.ParamByName('PacienteID').Value:= PacienteID;
  qrEsDonante.Open;

  EsDonante:= not qrEsDonante.Eof;

end;

end.
