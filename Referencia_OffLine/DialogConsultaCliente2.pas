unit DialogConsultaCliente2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DialogConsulta, cxGraphics, Menus, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, ADODB,
  dxLayoutControl, cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,
  StdCtrls, cxButtons, cxTextEdit, cxContainer, cxMaskEdit, cxDropDownEdit,
  DialogCobro, cxImageComboBox, cxLookupEdit, cxDBLookupEdit,
  cxDBExtLookupComboBox, cxintl;

type
  TfrmDialogConsultaCliente2 = class(TfrmDialogConsulta)
    dbDatosClienteID: TcxGridDBColumn;
    dbDatosNombre: TcxGridDBColumn;
    dbDatosTelefono: TcxGridDBColumn;
    edtipocliente: TcxComboBox;
    dxLayoutControl1Item7: TdxLayoutItem;
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
    qrClientesGRUPODESCUENTOLINEA: TStringField;
    qrClientesGRUPODESCUENTOTOTAL: TStringField;
    qrClientesSINPRFILTER: TIntegerField;
    qrClientesRECID: TLargeintField;
    procedure edbuscarPropertiesChange(Sender: TObject);
    procedure edtipoclienteExit(Sender: TObject);
    procedure cgDatosExit(Sender: TObject);
    procedure cgDatosEnter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure BuscarData;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Run;
  end;

var
  frmDialogConsultaCliente2: TfrmDialogConsultaCliente2;
  adentrogrid : Boolean;

implementation

uses DataModule, Main;

{$R *.dfm}


procedure TfrmDialogConsultaCliente2.Run;
begin
 showmodal;

 if ModalResult = mrOk then
  begin
    If (qrClientes.RecordCount > 0) And
       (qrClientesESTATUS.Value > 0) Then
      Begin
        If (qrClientesESTATUS.Value = 1) Then
          Raise exception.CreateFmt(' El Cliente: (' + qrClientesClienteID.AsString + ') ' + qrClientesNombre.AsString + #13 +
                                    ' NO Puede Facturarse porque: '+ #13 + ' Tiene el CREDITO CANCELADO.!!! ' + #13 +
                                    ' Si Desea, Puede Comunicarse con el Departamento de Cobros.!!!', []);

        If (qrClientesESTATUS.Value = 2) Then
          Raise exception.CreateFmt(' El Cliente: (' + qrClientesClienteID.AsString + ') ' + qrClientesNombre.AsString + #13 +
                                    ' NO Puede Facturarse porque: '+ #13 + ' El Cliente ESTA INACTIVO.!!! ' + #13 +
                                    ' Si Desea, Puede Comunicarse con el Departamento de Cobros.!!!', []);
      End;

    frmMain.frmCups.qrCodigosCupClienteID.Value := qrClientesClienteID.Value;
    frmMain.frmCups.qrCodigosCupNombreCliente.Value := qrClientesNombre.Value;
  end;
end;


procedure TfrmDialogConsultaCliente2.BuscarData;
Var
 sqlString : String;
begin
 sqlString := 'SELECT * FROM PTCliente WHERE GrupoCliente = '+ #39 + DM.qrParametroGrupoSeg.Value + #39;

 If (edbuscar.Text <> '') then
  Begin
    Case edbuscarpor.ItemIndex of
     0 : sqlString := sqlString + ' AND ClienteID LIKE '+#39+'%'+edbuscar.Text+'%'+#39;
     1 : sqlString := sqlString + ' AND Nombre LIKE '+#39+'%'+edbuscar.Text+'%'+#39;
     2 : sqlString := sqlString + ' AND Telefono LIKE '+#39+'%'+edbuscar.Text+'%'+#39;
    End;
 End;

 sqlString := sqlString + ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39;
 sqlString := sqlString + ' ORDER BY ClienteId ';

 qrClientes.Close;
 qrClientes.SQL.Text := sqlString;
 qrClientes.Open;
end;


procedure TfrmDialogConsultaCliente2.cgDatosEnter(Sender: TObject);
begin
  inherited;
  adentrogrid := true;
end;


procedure TfrmDialogConsultaCliente2.cgDatosExit(Sender: TObject);
begin
  inherited;
  adentrogrid := false;
end;


procedure TfrmDialogConsultaCliente2.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = Vk_Down) and (not AdentroGrid) then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);
  if (key = 13) and (not AdentroGrid) then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);
  if (key = 13) and (AdentroGrid) then
  begin
   Close;
   ModalResult := mrOk;
  end;  
  if (key = Vk_Up) and (not AdentroGrid) then
     PostMessage(Handle, Wm_NextDlgCtl, 1, 0);
  if (key = 27) then
  begin
   Close;
  end;
end;


procedure TfrmDialogConsultaCliente2.FormShow(Sender: TObject);
begin
  inherited;
   BuscarData;
   edbuscar.SetFocus;
end;


procedure TfrmDialogConsultaCliente2.edbuscarPropertiesChange(Sender: TObject);
begin
  inherited;
  BuscarData;
end;


procedure TfrmDialogConsultaCliente2.edtipoclienteExit(Sender: TObject);
begin
  inherited;
  BuscarData;
end;


END.

