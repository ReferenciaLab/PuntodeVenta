unit DatosClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DatosModule, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, Menus, cxLookAndFeelPainters, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, ABSMain, JvStringHolder, StdActns,
  ActnList, ADODB, cxGridCustomPopupMenu, cxGridPopupMenu, dxPSContainerLnk,
  dxPSdxLCLnk, dxPSCore, dxPScxCommon, dxPScxGridLnk, JvComponentBase,
  JvFormPlacement, ExtCtrls, dxLayoutControl, StdCtrls, cxButtons, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView, StrUtils,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, JvExControls, JvComponent,
  JvEnterTab, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxintl,
  cxDBExtLookupComboBox, cxContainer, cxTextEdit, cxDBEdit, cxDBLookupComboBox,
  cxImageComboBox, cxMemo, cxSpinEdit, cxCheckBox, cxCurrencyEdit, cxCalendar,
  cxImage;


type
  TfrmDatosClientes = class(TfrmDatosModule)
    tvDatosClienteID: TcxGridDBColumn;
    tvDatosNombre: TcxGridDBColumn;
    tvDatosGrupoCliente: TcxGridDBColumn;
    tvDatosCodigoAxapta: TcxGridDBColumn;
    lcDatosGroup1: TdxLayoutGroup;
    edcliente: TcxDBTextEdit;
    lcDatosItem1: TdxLayoutItem;
    EdNombre: TcxDBTextEdit;
    lcDatosItem2: TdxLayoutItem;
    lcDatosGroup2: TdxLayoutGroup;
    cxDBTextEdit3: TcxDBTextEdit;
    lcDatosItem4: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    lcDatosItem7: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    lcDatosItem8: TdxLayoutItem;
    lcDatosGroup3: TdxLayoutGroup;
    BtTransacciones: TcxButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    BtBalance: TcxButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    pmAcuerdoComercial: TPopupMenu;
    Precios1: TMenuItem;
    Descuentos1: TMenuItem;
    cxDBMemo1: TcxDBMemo;
    lcDatosItem12: TdxLayoutItem;
    cxDBExtLookupComboBox1: TcxDBExtLookupComboBox;
    lcDatosItem13: TdxLayoutItem;
    lcDatosGroup5: TdxLayoutGroup;
    lcDatosGrpPacientes: TdxLayoutGroup;
    CbClientePrincipal: TcxDBExtLookupComboBox;
    LcDatosPrincipal: TdxLayoutItem;
    CbSexo: TcxDBImageComboBox;
    lcDatosItem20: TdxLayoutItem;
    EdFechaBorn: TcxDBDateEdit;
    lcDatosItem21: TdxLayoutItem;
    EdPoliza: TcxDBTextEdit;
    lcDatosItem23: TdxLayoutItem;
    CbGrupoClientes: TcxDBExtLookupComboBox;
    lcDatosGrupos: TdxLayoutItem;
    CbTipodeCliente: TcxDBImageComboBox;
    lcDatosTipos: TdxLayoutItem;
    ActionList1: TActionList;
    cxDBTextEdit10: TcxDBTextEdit;
    lcDatosItem10: TdxLayoutItem;
    BtParametro: TcxButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    EdAseguradora: TcxDBTextEdit;
    lcDatosItem15: TdxLayoutItem;
    BtTarjeta: TcxButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxDBTextEdit9: TcxDBTextEdit;
    lcDatosItem16: TdxLayoutItem;
    BtRelacionados: TcxButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDBImageComboBox1: TcxDBImageComboBox;
    lcDatosItem19: TdxLayoutItem;
    EdCedula: TcxDBMaskEdit;
    lcDatosItem14: TdxLayoutItem;
    BtLookInternet: TcxButton;
    dxLayoutControl1Item6: TdxLayoutItem;
    BtCrearInternet: TcxButton;
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
    qrClientesCIUDADID: TStringField;
    qrClientesPRUEBASPORDIA: TIntegerField;
    qrClientesCOBERTURAPORC: TBCDField;
    qrClientesPRINCIPAL: TStringField;
    qrClientesENVIORESULTADO: TIntegerField;
    qrClientesPUBLICARINTERNET: TIntegerField;
    qrClientesSEXO: TIntegerField;
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
    qrClientesESTATUS: TIntegerField;
    qrClientesTIPOINTERNET: TStringField;
    qrClientesCLASECREDITO: TStringField;
    qrClientesDOCTORID: TStringField;
    qrClientesTIPOCLIENTEAS400: TIntegerField;
    qrClientesDATAAREAID: TStringField;
    qrClientesDIRECCION: TStringField;
    qrClientesCODIGOIDAS400: TStringField;
    qrClientesGRUPOPRECIO: TStringField;
    qrClientesFORMAPAGO: TStringField;
    qrClientesGRUPODESCUENTOLINEA: TStringField;
    qrClientesGRUPODESCUENTOTOTAL: TStringField;
    qrClientesSINPRFILTER: TIntegerField;

    cxDBMaskEdit3: TcxDBMaskEdit;
    lcDatosItem11: TdxLayoutItem;
    cxDBMaskEdit4: TcxDBMaskEdit;
    lcDatosItem18: TdxLayoutItem;
    cxDBMaskEdit5: TcxDBMaskEdit;
    lcDatosItem22: TdxLayoutItem;
    lcDatosGroup4: TdxLayoutGroup;
    tvDatosCobrarDiferencia: TcxGridDBColumn;
    tvDatosQuienPaga: TcxGridDBColumn;
    BtParametro2: TcxButton;
    dxLayoutControl1Item8: TdxLayoutItem;
    lcDatosGrpFoto: TdxLayoutGroup;
    lcDatosGroup7: TdxLayoutGroup;
    imgFoto: TcxImage;
    lcDatosItem3: TdxLayoutItem;
    tvDatosIdentificacion: TcxGridDBColumn;
    dxLayoutControl1Item9: TdxLayoutItem;
    btPacientes: TcxButton;
    qrClientesCOD_PROV_REF: TStringField;
    qrClientesRECID: TLargeintField;
    lcDatosItem5: TdxLayoutItem;
    lcDatosGroup6: TdxLayoutGroup;
    qrClientesCOD_NACION: TIntegerField;
    cxDBExtLookupComboBox2: TcxDBExtLookupComboBox;
    lcDatosItem6: TdxLayoutItem;
    cbExtDocumento: TcxDBExtLookupComboBox;
    qrClientesTIPO_DOCUMENTO: TIntegerField;
    qrClientesNUMPRINT: TWordField;
    procedure cbExtDocumentoPropertiesChange(Sender: TObject);
    procedure btPacientesClick(Sender: TObject);
    procedure qrClientesAfterOpen(DataSet: TDataSet);
    procedure qrClientesBeforeOpen(DataSet: TDataSet);
    procedure EdCedulaExit(Sender: TObject);
    procedure qrClientesBeforeDelete(DataSet: TDataSet);
    procedure qrClientesFECHANACIMIENTOValidate(Sender: TField);
    procedure BtParametro2Click(Sender: TObject);
    procedure qrClientesIDENTIFICACIONValidate(Sender: TField);
    procedure qrClientesAfterPost(DataSet: TDataSet);
    procedure qrClientesORIGENChange(Sender: TField);
    procedure qrClientesGRUPOCLIENTEChange(Sender: TField);
    procedure qrClientesBeforeInsert(DataSet: TDataSet);
    procedure qrClientesBeforeEdit(DataSet: TDataSet);
    procedure BtCrearInternetClick(Sender: TObject);
    procedure BtLookInternetClick(Sender: TObject);
    procedure BtRelacionadosClick(Sender: TObject);
    procedure qrClientesAfterScroll(DataSet: TDataSet);
    procedure BtTarjetaClick(Sender: TObject);
    procedure BtParametroClick(Sender: TObject);
    procedure BtBalanceClick(Sender: TObject);
    procedure BtTransaccionesClick(Sender: TObject);
    procedure qrClientesNewRecord(DataSet: TDataSet);
    procedure qrClientesBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure DoPost; override;
  public
     buscar : Boolean;  
     Procedure Refrescar;
     Procedure Procesar_Usuario;
     Procedure Insertar_Usuario(usuario: string; clave: string; name: string;
                                cedula: string; cliente: string; tipo: string;
                                actual: string);

     Function Crear_Usuario(nombre : String) : String;
     Function Crear_Clave(cedularnc : String) : Integer;
     Function Valida_Usuario(usuario : String) : Boolean;
     Function Buscar_User_Internet(Cliente : String) : Boolean;
    { Public declarations }
  end;

var
  frmDatosClientes: TfrmDatosClientes;

implementation

uses DataModule, Main, UInterfaseAs400;

{$R *.dfm}


procedure TfrmDatosClientes.BtTarjetaClick(Sender: TObject);
begin
  inherited;
  frmMain.LanzaConsulta(-8005, dm.qrClientesClienteId.Value);
end;

procedure TfrmDatosClientes.BtTransaccionesClick(Sender: TObject);
begin
  inherited;
  frmMain.LanzaConsulta(-7989, dm.qrClientesClienteId.Value);
end;

procedure TfrmDatosClientes.BtBalanceClick(Sender: TObject);
begin
  inherited;
  frmMain.LanzaConsulta(-7988, dm.qrClientesClienteId.Value);
end;

procedure TfrmDatosClientes.BtCrearInternetClick(Sender: TObject);
begin
  inherited;
  If Not Buscar_User_Internet(dm.qrClientesClienteId.Value) Then
    Procesar_Usuario
  Else
    DM.Info('El Cliente '+ qrClientesNombre.Value +' Ya Tiene Un Usuario de Internet Creado');
end;

procedure TfrmDatosClientes.BtLookInternetClick(Sender: TObject);
begin
  inherited;
  frmMain.LanzaConsulta(-8023, dm.qrClientesClienteId.Value);
end;

procedure TfrmDatosClientes.btPacientesClick(Sender: TObject);
begin
  inherited;
  frmMain.LanzaVentana(-8022);
end;

procedure TfrmDatosClientes.BtParametro2Click(Sender: TObject);
begin
  inherited;
  If (dm.qrClientes.State = dsInsert) or (dm.qrClientes.State = dsEdit) then
    Raise exception.CreateFmt('El Formulario Esta en Edicion. NO Puede Modificar Estos Parametros.', [])
  Else
    frmMain.LanzaVentana(8006);
end;

procedure TfrmDatosClientes.BtParametroClick(Sender: TObject);
begin
  inherited;
  If (dm.qrClientes.State = dsInsert) or (dm.qrClientes.State = dsEdit) then
  frmMain.LanzaVentana(-8006);
end;

procedure TfrmDatosClientes.BtRelacionadosClick(Sender: TObject);
begin
  inherited;
  frmMain.LanzaConsulta(-8022, dm.qrClientesClienteId.Value);
end;

procedure TfrmDatosClientes.DoPost;
Var
  qfind       : TAdoQuery;
begin
 DM.qrParametro.close;
 DM.qrParametro.open;
 if Trim(CbExtDocumento.Text) = EmptyStr then
 begin
     Raise exception.CreateFmt(' Favor especificar el Tipo de Documento. '+ #13 +
                               ' No puede estar en blanco.  Verifique.', []);
 end;
 if Trim(CbSexo.Text) = EmptyStr then
 begin
     Raise exception.CreateFmt(' Favor especificar el Sexo. '+ #13 +
                               ' No puede estar en blanco.  Verifique.', []);
 end;
 if Trim(EdNombre.Text) = EmptyStr then
 begin
     Raise exception.CreateFmt(' Favor verifique el cambio de nombre del paciente. '+ #13 +
                               ' No puede estar en blanco.  Verifique.', []);
 end;

 if Trim(EdFechaBorn.Text) = EmptyStr then
 begin
     Raise exception.CreateFmt(' Favor verifique la fecha de nacimiento. '+ #13 +
                               ' No puede estar en blanco.  Verifique.', []);
 end;

 if EdFechaBorn.Date > DM.SystemDate then
 begin
     Raise exception.CreateFmt(' Favor verifique la fecha de nacimiento. '+ #13 +
                               ' No puede ser mayor a fecha del d�a.  Verifique.', []);
    if EdFechaBorn.Enabled then EdFechaBorn.SetFocus;
 end;

 if Trim(cxDBExtLookupComboBox2.Text) = EmptyStr then
 begin
     Raise exception.CreateFmt(' Favor verifique la nacionalidad. '+ #13 +
                               ' No puede estar en blanco.  Verifique.', []);
 end;
 edNombre.Text	      := Trim(edNombre.Text);
 cxDBTextEdit10.Text  := Trim(cxDBTextEdit10.Text);
 cxDBMemo1.Text       := Trim(cxDBMemo1.Text);
 cxDBTextEdit9.Text   := Trim(cxDBTextEdit9.Text);
 cxDBTextEdit3.Text   := Trim(cxDBTextEdit3.Text);
 cxDBTextEdit6.Text   := Trim(cxDBTextEdit6.Text);
 cxDBTextEdit7.Text   := Trim(cxDBTextEdit7.Text);
 inherited;
end;


procedure TfrmDatosClientes.EdCedulaExit(Sender: TObject);
Var
  qfind     : TAdoQuery;
  Direccion : String;
begin
  inherited;
  If ((qrClientes.State = dsInsert) Or (qrClientes.State = dsEdit)) then
    Begin
      qfind := DM.NewQuery;
      DM.qrParametro.close;
      DM.qrParametro.open;

      If (qrClientesGrupoCliente.Value = DM.qrParametroGrupoAcc.Value) Or
         (qrClientesGrupoCliente.Value = DM.qrParametroGrupoEmp.Value) Or
         (qrClientesGrupoCliente.Value = DM.qrParametroGrupoVip.Value) Or
         (qrClientesGrupoCliente.Value = DM.qrParametroGrupoPriv.Value) Then
        Begin
         qfind.Close;
         qfind.SQL.Text := ' SELECT NOMBRES,APELLIDO1,ISNULL(APELLIDO2,'+#39+#39+') AS APELLIDO2,FECHA_NAC,SEXO,COD_SANGRE,COD_NACION,P.COD_MUNICIPIO,P.COD_CIUDAD,'+
                           '  P.COD_SECTOR,ISNULL(CALLE,'+#39+#39+') AS CALLE,ISNULL(CASA,'+#39+#39+') AS CASA,ISNULL(EDIFICIO,'+#39+#39+') AS EDIFICIO, ISNULL(PISO,'+#39+#39+') AS PISO, ISNULL(APTO,'+#39+#39+') AS APTO,ISNULL(S.DESCRIPCION,'+#39+#39+') AS SECTOR,C.CIUDADID AS CIUDAD '+
                           '   FROM Ced2016..CEDULADOS P (nolock) inner join Ced2016..SECTOR_PARAJE S (nolock) on  '+
                           '   		(S.COD_MUNICIPIO COLLATE SQL_AltDiction_CP850_CI_AI = P.COD_MUNICIPIO COLLATE SQL_AltDiction_CP850_CI_AI)  '+
                           '   		AND (S.COD_SECTOR COLLATE SQL_AltDiction_CP850_CI_AI = P.COD_SECTOR COLLATE SQL_AltDiction_CP850_CI_AI ) INNER JOIN   '+
                           '     Ced2016..MUNICIPIO M (nolock) ON  '+
                           '   		M.COD_MUNICIPIO COLLATE SQL_AltDiction_CP850_CI_AI = P.COD_MUNICIPIO COLLATE SQL_AltDiction_CP850_CI_AI '+
                           '   		LEFT OUTER JOIN PTCIUDAD C (nolock) ON '+
                           '   		C.COD_NUM_PADRON COLLATE SQL_AltDiction_CP850_CI_AI = P.COD_MUNICIPIO COLLATE SQL_AltDiction_CP850_CI_AI '+
                           ' WHERE MUN_CED ='+#39+Copy(EdCedula.Text,1,3)+#39+
                           ' AND   SEQ_CED ='+#39+copy(EdCedula.Text,5,7)+#39+
                           ' AND   VER_CED ='+#39+copy(EdCedula.Text,13,1)+#39;
         qfind.Open;
         If (qfind.RecordCount =0) Then
         begin
           Raise exception.CreateFmt(' N�mero de Cedula No Existe.  Verifique.', []);
         end
         else
         begin
           qrClientesNOMBRE.Value := qfind.FieldByName('Nombres').AsString+' '+
                            qfind.FieldByName('APELLIDO1').AsString+' '+
                            qfind.FieldByName('APELLIDO2').AsString;
           qrClientesFECHANACIMIENTO.Text := qfind.FieldByName('fecha_nac').AsString;
           case qfind.FieldByName('Sexo').AsString[1] of
              'M': cbSexo.ItemIndex:=1;
              'F': cbSexo.ItemIndex:=0;
           end;
           if Copy(cbSexo.Text,1,1)='F' then
             qrClientesSEXO.Text := '0'
           else if Copy(cbSexo.Text,1,1)='M' then
             qrClientesSEXO.Text := '1';

           case qfind.FieldByName('COD_SANGRE').AsInteger of
              1: cxDBImageComboBox1.ItemIndex :=0;
              2: cxDBImageComboBox1.ItemIndex :=1;
              3: cxDBImageComboBox1.ItemIndex :=2;
              4: cxDBImageComboBox1.ItemIndex :=3;
              5: cxDBImageComboBox1.ItemIndex :=6;
              6: cxDBImageComboBox1.ItemIndex :=7;
              7: cxDBImageComboBox1.ItemIndex :=4;
              8: cxDBImageComboBox1.ItemIndex :=5;
           end;
           qrClientesTIPOSANGRE.Text  := cxDBImageComboBox1.Text;
           if qfind.FieldByName('Calle').AsString <> EmptyStr then
              Direccion := qfind.FieldByName('Calle').AsString;
           if qfind.FieldByName('Casa').AsString <> EmptyStr then
              Direccion := Direccion+' No. '+qfind.FieldByName('Casa').AsString;
           if qfind.FieldByName('Edificio').AsString <> EmptyStr then
              Direccion := Direccion+' Edif.'+qfind.FieldByName('Edificio').AsString;
           if not ((qfind.FieldByName('Piso').AsString = EmptyStr) or (qfind.FieldByName('Piso').AsString = '00'))then
              Direccion := Direccion+' Piso '+qfind.FieldByName('Piso').AsString;
           if qfind.FieldByName('Apto').AsString <> EmptyStr then
              Direccion := Direccion+' Apto. '+qfind.FieldByName('Apto').AsString;

           qrClientesDIRECCION.Text   := Direccion;
           qrClientesSECTOR.Text      := qfind.FieldByName('Sector').AsString;
           qrClientesCIUDADID.Text    := qfind.FieldByName('Ciudad').AsString;
           if (Length(trim(EdCedula.Text))=14) then
              qrClientesTIPO_DOCUMENTO.Value := 4
           else if (Length(trim(EdCedula.Text))=13) then
              qrClientesTIPO_DOCUMENTO.Value := 2
           else
              qrClientesTIPO_DOCUMENTO.Value := 3;
           qrClientesCod_Nacion.Value     := qfind.FieldByName('Cod_Nacion').AsInteger;
           DM.BuscaFoto(Self,Copy(EdCedula.Text,1,3),Copy(EdCedula.Text,5,7),Copy(EdCedula.Text,13,1));
         end;
        End;
      FreeAndNil(qfind);
    End;
end;

procedure TfrmDatosClientes.FormCreate(Sender: TObject);
begin
  inherited;

  DM.qrDocumento.Close;
  With DM.qrDocumento, sql do
  begin
    Close;
    Clear;
    Text :='Select * From PtDocumento Where TipoDocID IN (2,3,4) And Estatus='+#39+'A'+#39;
    Open;
  end;
  
  DM.qrParametro.close;
  DM.qrParametro.open;

  DM.qrMonedas.Close;
  DM.qrMonedas.Open;

  DM.qrCiudad.close;
  DM.qrCiudad.open;

  DM.qrPacientes.close;
//  DM.qrPacientes.sql.Text := 'SELECT * FROM PTCliente WHERE GrupoCliente NOT IN ('+#39+DM.qrParametroGrupoSeg.Value+
//                              #39+','+#39+DM.qrParametroGrupoClinica.Value+#39+','+#39+DM.qrParametroGrupoLab.Value+#39+') ';
  DM.qrPacientes.sql.Text := ' SELECT Top 1 * FROM PTCliente (nolock) WHERE GrupoCliente  IN (' + #39 +
                               DM.qrParametroGrupoVip.Value + #39 + ',' + #39 +
                               DM.qrParametroGrupoAcc.Value + #39 + ',' + #39 +
                               DM.qrParametroGrupoEmp.Value + #39 + ',' + #39 +
                               DM.qrParametroGrupoPriv.Value + #39 + ') ' +
                             ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39;
  DM.qrPacientes.Open;

  DM.qrSeguros.close;
  DM.qrSeguros.open;

  DM.qrGrupoCliente.Close;
  DM.qrGrupoCliente.Open;

  DM.qrNacionalidad.Close;
  DM.qrNacionalidad.Open;

  EdPoliza.Properties.ReadOnly := True;
  EdAseguradora.Properties.ReadOnly := True;
  LcDatosPrincipal.Enabled := False;
  CbClientePrincipal.Properties.ReadOnly := True;
  if ((dm.CurRol = 8) or (dm.CurRol = 12) or (dm.CurRol = 14)) Then
  Begin
      edNombre.Enabled    := False;
      cbSexo.Enabled      := False;
      edFechaBorn.Enabled := False
  end
  else
  Begin
      edNombre.Enabled    := True;
      cbSexo.Enabled      := True;
      edFechaBorn.Enabled := True;
  end;
  edcliente.Properties.ReadOnly := DM.qrParametroAutoNumerarClientes.Value;
end;


procedure TfrmDatosClientes.qrClientesBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  Raise exception.CreateFmt('Solo Pueden Eliminar Clientes Desde AXAPTA.', []);
end;


procedure TfrmDatosClientes.qrClientesBeforeEdit(DataSet: TDataSet);
Var
  Limpio : String;
  qfind : TAdoQuery;
begin
  DM.qrParametro.close;
  DM.qrParametro.open;

  If (qrClientesGrupoCliente.Value <> DM.qrParametroGrupoPriv.Value) Then
    Raise exception.CreateFmt('Solo Pueden Modificar Clientes Del Grupo PRIVADO � AMBULATORIO.', [])
  Else
    Begin
        DM.BuscaFoto(Self,Copy(EdCedula.Text,1,3),Copy(EdCedula.Text,5,7),Copy(EdCedula.Text,13,1));
    end;
end;

procedure TfrmDatosClientes.qrClientesBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  lcDatosTipos.Enabled                := False;
  lcDatosGrupos.Enabled               := False;
  LcDatosPrincipal.Enabled            := False;
  CbTipodeCliente.Properties.ReadOnly := True;
  CbGrupoClientes.Properties.ReadOnly := True;
end;

procedure TfrmDatosClientes.qrClientesBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  buscar := False;
end;

procedure TfrmDatosClientes.qrClientesBeforePost(DataSet: TDataSet);
Var
 _valor  : Integer;
 qsecdoc : TADOQuery;
begin
  inherited;
  If (qrClientes.State = dsInsert) Or (qrClientes.State = dsEdit) Then
    If (qrClientesClienteID.IsNull) Or (qrClientesClienteID.Value = '') Then
      AutoKeyField := 'ClienteID';

  DM.qrParametro.close;
  DM.qrParametro.open;

{
  If (qrClientes.State = dsInsert) and (DM.qrParametroAutoNumerarClientes.Value) then
   begin
    qrClientesClienteID.Value := formatfloat('00000000', DM.qrParametroSecuenciaCliente.asfloat);

    DM.qrParametro.edit;
    DM.qrParametroSecuenciaCliente.Value := DM.qrParametroSecuenciaCliente.Value + 1;
    DM.qrParametro.Post;
   end;
}
  If (qrClientes.State = dsInsert) and (DM.qrParametroAutoNumerarClientes.Value) then
   begin
     _valor  := 0;
     qsecdoc := DM.NewQuery;

     qsecdoc := DM.NewQuery;
     With qsecdoc,sql do
     begin
       Close;
       Clear;
       Add(' DECLARE	@return_value int,@r_result bigint,@r_result2 bigint,@r_result3 bit');
       Add(' EXEC	@return_value = [dbo].[Sec_Documentos] ');
       Add(' @Tipo_Doc = N'+#39+'CUST'+#39+',');
       Add(' @SucursalID = N'+#39+DM.CurSucursal+#39+',');
       Add(' @r_result = @r_result OUTPUT, ');
       Add(' @r_result2 = @r_result2 OUTPUT, ');
       Add(' @r_result3 = @r_result3 OUTPUT ');
       Add(' SELECT	@r_result as Secuencia,@r_result2 as SucursalAS400');
       Open;
       if not IsEmpty then
       begin
           if FieldByName('Secuencia').AsString <> '' then
             _valor := FieldByName('Secuencia').AsInteger
           else
             _valor := 1;

           qrClientesClienteID.Value := 'C'+FormatFloat('00', FieldByName('SucursalAS400').AsInteger) +
                                       FormatFloat('00000', _valor);
       end;
     end;
     FreeAndNil(qsecdoc);
   End;

  If (qrClientes.State = dsInsert) or (qrClientes.State = dsEdit) then
   begin
    qrClientesPublicarInternet.Value := qrClientesSiempreInternet.Value;
   end;
end;


procedure TfrmDatosClientes.qrClientesFECHANACIMIENTOValidate(Sender: TField);
begin
  inherited;
  If (qrClientes.State = dsInsert) Or (qrClientes.State = dsEdit) Then
    Begin
      If (qrClientesFECHANACIMIENTO.Value > Date) Then
        Raise exception.CreateFmt('La Fecha de Nacimiento Esta Incorrecta. Por Favor Verifique.!!!', []);
    End;
end;


procedure TfrmDatosClientes.qrClientesGRUPOCLIENTEChange(Sender: TField);
begin
  inherited;
  Refrescar;
end;


procedure TfrmDatosClientes.qrClientesIDENTIFICACIONValidate(Sender: TField);
Var
  qfind : TAdoQuery;
begin
  inherited;
  If (qrClientes.State = dsInsert) Or (qrClientes.State = dsEdit) Then
    Begin
      qfind := DM.NewQuery;
      DM.qrParametro.close;
      DM.qrParametro.open;

      If (qrClientesGrupoCliente.Value = DM.qrParametroGrupoAcc.Value) Or
         (qrClientesGrupoCliente.Value = DM.qrParametroGrupoEmp.Value) Or
         (qrClientesGrupoCliente.Value = DM.qrParametroGrupoVip.Value) Or
         (qrClientesGrupoCliente.Value = DM.qrParametroGrupoPriv.Value) Then
      Begin
         qfind.Close;
         qfind.SQL.Text := ' SELECT Nombre FROM PTCliente (nolock) '+
                           ' WHERE Identificacion = :reg '+
                           ' AND ClienteId <> :cod '+
                           ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39;
         qfind.Parameters[0].Value := qrClientesIDENTIFICACION.Value;
         qfind.Parameters[1].Value := qrClientesClienteID.Value;
         qfind.Open;

         If (qfind.RecordCount > 0) Then
//            frmMain.LanzaConsulta(-7998, qrClientesIDENTIFICACION.AsString);
            Raise exception.CreateFmt(' El Numero de Cedula Debe Ser Unico. y El Cliente '+ #13 +
                                     ' ('+ qfind.FieldByName('Nombre').AsString +') lo Tiene Registrado. '+ #13 +
                                     ' Por Favor Verifique.!!!', []);
      End;

      FreeAndNil(qfind);
    End;
End;


procedure TfrmDatosClientes.qrClientesNewRecord(DataSet: TDataSet);
Var RecId: Integer;
begin
  inherited;
//  RecId := DM.Get_Secuencia('Secuencia');
  RecId := DM.Get_Secuencia_Id();

  DM.qrParametro.Close;
  DM.qrParametro.Open;

  qrClientesDATAAREAID.Value          := DM.CurEmpresa;
  qrClientesRECID.Value               := RecId;
  qrClientesSexo.Value                := 1;
  qrClientesESTATUS.Value             := 0;
  qrClientesEnviarFax.Value           := 0;
  qrClientesPruebasPorDia.Value       := 0;
  qrClientesCoberturaPorc.value       := 0;
  qrClientesEnvioResultado.value      := 0;
  qrClientesAutoconfirmar.value       := 0;
  qrClientesCobrarDiferencia.Value    := 1;
  qrClientesActivarDescuentos.Value   := 1;
  qrClientesPublicarInternet.Value    := 1;
  qrClientesSiempreInternet.Value     := 1;
  qrClientesSiempreImprimir.Value     := 1;
  qrClientesIncluirPrecioTicket.Value := 1;
  qrClientesImprimirAliasNombre.Value := 0;
  qrClientesImprimirAliasPrueba.Value := 0;
  qrClientesUsarAcuerdoPropio.Value   := 0;
  qrClientesCOD_NACION.Value          := 1;

  qrClientesGrupoPrecio.Value         := EmptyStr;
  qrClientesFormaPago.Value           := 'EFE';
  qrClientesQuienPaga.Value           := 'EMP';
  qrClientesQuienPaga.Value           := 'EMP';
  qrClientesTipoCliente.Value         := 'PRI';
  qrClientesEntregarResultados.Value  := 'EMP';
  qrClientesGrupoCliente.Value        := DM.qrParametroGrupoPriv.Value;
  qrClientesMonedaID.Value            := DM.qrParametroMonedaID.Value;

  lcDatosGrupos.Enabled               := False;
  lcDatosTipos.Enabled                := False;
  CbTipodeCliente.Properties.ReadOnly := True;
  CbGrupoClientes.Properties.ReadOnly := True;
  imgFoto.Picture                     := Nil;
  cbExtDocumento.SetFocus;
end;


procedure TfrmDatosClientes.qrClientesORIGENChange(Sender: TField);
begin
  inherited;
  Refrescar;
end;


procedure TfrmDatosClientes.Refrescar;
Var
  Limpio : String;
  qfind : TAdoQuery;
begin
  If (dm.qrClientes.State = dsInsert) or (dm.qrClientes.State = dsEdit) then
    Begin
      DM.qrParametro.close;
      DM.qrParametro.open;

      If (dm.qrClientesGrupoCliente.Value = DM.qrParametroGrupoAcc.Value) Or
         (dm.qrClientesGrupoCliente.Value = DM.qrParametroGrupoEmp.Value) Or
         (dm.qrClientesGrupoCliente.Value = DM.qrParametroGrupoVip.Value) Or
         (dm.qrClientesGrupoCliente.Value = DM.qrParametroGrupoPriv.Value) Then
        Begin
         lcDatosGrpPacientes.Enabled := True;
         lcDatosGrpPacientes.Visible := True;
        End
      Else
        Begin
         lcDatosGrpPacientes.Enabled := False;
         lcDatosGrpPacientes.Visible := False;
        End;
    End;

  //Eliminando los Guiones de la Cedula - RNC del Cliente.
  Limpio  := DM.Cortar_Char('-', dm.qrClientesIDENTIFICACION.Value);

  If ( Length(Limpio) = 9 ) Then
    Limpio := '00' + Limpio;

  If ( Length(Limpio) = 10 ) Then
    Limpio := '0' + Limpio;

  If ( Length(Limpio) > 11 ) Then
    Limpio := Copy(Limpio,1, 11);

  If (qrClientes.State = dsBrowse) and (Length(Limpio)=11) and (buscar) then
    Begin
      qfind := DM.NewQuery;
      qfind.Close;
      qfind.SQL.Text := ' SELECT NOMBRES,APELLIDO1,ISNULL(APELLIDO2,'+#39+#39+') AS APELLIDO2,FECHA_NAC,SEXO, '+
                        ' COD_SANGRE FROM Ced2016..CEDULADOS (nolock) '+
                        ' WHERE MUN_CED ='+#39+Copy(Limpio, 1, 3)+#39+
                        ' AND   SEQ_CED ='+#39+copy(Limpio, 4, 7)+#39+
                        ' AND   VER_CED ='+#39+copy(Limpio, 11, 1)+#39;
      qfind.Open;
      If (qfind.RecordCount =0) Then
        begin
          imgFoto.Picture := Nil;
        end
      else
        begin
           DM.BuscaFoto(Self,Copy(Limpio,1,3),Copy(Limpio,4,7),Copy(Limpio,11,1));
        end;
    end;
end;


procedure TfrmDatosClientes.qrClientesAfterOpen(DataSet: TDataSet);
begin
  inherited;
  buscar := True;
end;

procedure TfrmDatosClientes.qrClientesAfterPost(DataSet: TDataSet);
begin
//  inherited;
//  qrClientes.Refresh;
 Refrescar;
end;


procedure TfrmDatosClientes.qrClientesAfterScroll(DataSet: TDataSet);
begin
  inherited;
  Refrescar;
end;


//Procesando el Usuario de Internet de Este Cliente.
procedure TfrmDatosClientes.Procesar_Usuario;
Var
  Valor : Boolean;
  Pass2, Clave, i : Integer;
  Limpio, Usuario, Useralt, Tipo : String;
begin
  DM.qrParametro.Close;
  DM.qrParametro.Open;

  //Eliminando los Guiones de la Cedula - RNC del Cliente.
  Limpio  := DM.Cortar_Char('-', dm.qrClientesIDENTIFICACION.Value);

  //Creando la Clave de Internet.
  If qrClientesTIPO_DOCUMENTO.AsInteger = 3 Then
    Clave :=  DM.Crear_Clave_Alfa(Copy(Limpio, 1, 20))
  else
    Clave :=  Crear_Clave(Copy(Limpio, 1, 11));

  //Creando el Usuario de Internet.
  Usuario :=  Crear_Usuario(dm.qrClientesNombre.Value);

  //Creando el Usuario Alternativo. 6 Digitos o Menos.
  If ( Length(Usuario) > 8 ) Then
    Useralt := Copy(Usuario, 1, 8)
  Else
    Useralt := Usuario;

  //Creando el Usuario Alternativo. 4 Digitos de la Clave.
  Pass2 := StrToInt( RightStr (IntToStr (Clave), 4) );
      If dm.qrParametroServidor_AS400.value <> EmptyStr then
      begin
            if dm.PingHost(dm.qrParametroServidor_AS400.value,1) then
            begin
                  If Not InterfaseAS400.Buscar_Usuario_Internet(Usuario) then
                  begin
                    //Creando el Usuario Alternativo (Useralt + Pass2).
                    Usuario:= Useralt+Copy(IntToStr(Pass2),1,10-Length(Useralt));
//                    Usuario := Useralt + IntToStr(Pass2);
                    i:=1;
                    While Not InterfaseAS400.Buscar_Usuario_Internet(Usuario) do
                    Begin
                       Pass2    := Pass2 + 100;
                       Usuario  := Copy(Useralt,1,Length(Useralt)-i)+Copy(IntToStr(Pass2),1,10-Length(Copy(Useralt,1,Length(Useralt)-i)));
                       Clave    := Clave+100;
                       i:=i+1;
                       Next;
                    end;
                  end;
            end;
      end;

  If (dm.qrClientesGrupoCliente.Value = DM.qrParametroGrupoAcc.Value) Or
     (dm.qrClientesGrupoCliente.Value = DM.qrParametroGrupoEmp.Value) Or
     (dm.qrClientesGrupoCliente.Value = DM.qrParametroGrupoVip.Value) Or
     (dm.qrClientesGrupoCliente.Value = DM.qrParametroGrupoPriv.Value) Then
   Tipo := 'P'
 Else
   Tipo := 'C';

//  Insertar_Usuario(Usuario, IntToStr(Clave),
 If Not((Trim(Usuario)=EmptyStr)      Or (Trim(IntToStr(Clave))=EmptyStr) Or
        (Trim(dm.qrClientesNombre.Value)=EmptyStr) Or (Trim(dm.qrClientesIDENTIFICACION.Value)=EmptyStr) Or
        (Trim(dm.qrClientesClienteId.Value)=EmptyStr))then
 begin
  Insertar_Usuario(Usuario, FormatFloat('000000', Clave),
                   dm.qrClientesNombre.Value,
                   dm.qrClientesIDENTIFICACION.Value,
                   dm.qrClientesClienteId.Value, Tipo, 'N');
 end;
end;


//Creando la Clave de Internet Segun el Algoritmo de Alejandro Espinosa Curiel.
Function TfrmDatosClientes.Crear_Clave(cedularnc : String) : Integer;
Var
  Numero  : Double;
  Valor,Clave   : Int64;
//  Valor   : Integer;
  Texto,Limpio   : String; //AnsiString;
begin
  //Cargando la Cedula - RNC.
  Valor := StrToInt(cedularnc);
  Limpio  := Trim(DM.Cortar_Char('-', qrClientesIdentificacion.AsString));
  If qrClientesTIPO_DOCUMENTO.AsInteger = 3 Then
    Clave :=  DM.Crear_Clave_Alfa(Copy(Limpio, 1, 20))
  else
    Clave :=  Crear_Clave(Copy(Limpio, 1, 11));
  Valor := clave;


  //Obteniendo el Numero Unico (Alejandro Espinosa Curiel).
  Numero := ((Valor * 180) / 360) * 3.1416;

  //Obteniendo la Parte Entera del Numero Unico.
  Valor := Trunc(Numero);

  //Tomando las 1ras 6 Posiciones del Entero.
  Texto := RightStr(IntToStr(Valor), 6);
//  Texto := AnsiRightStr(IntToStr(Valor), 6);

  //Asignando la Clave Obtenida.
  Result := StrToInt(Texto);
end;


//Creando el Usuario de Internet.
Function TfrmDatosClientes.Crear_Usuario(nombre : String) : String;
Var
  Texto : String;
  Valor, Largo, Blanco : Integer;
begin
  Largo := Length(nombre);

  Blanco := AnsiPos(' ', nombre);

  If (Largo > 8) Then
    Begin
      If (Blanco > 1) Then
        Begin
         Valor := Blanco - 1;

         If (Valor > 7) Then
           Texto := Copy(nombre, 1, 8)
         Else
           Texto := Copy(nombre, 1, Valor);
        End
      Else
        Texto := Copy(nombre, 1, 8);
    End
  Else
    Texto := nombre;

  Result := Texto;
end;


//Validando la Existencia del Usuario Creado.
Function TfrmDatosClientes.Valida_Usuario(usuario : String) : Boolean;
Var
 qfind  : TAdoQuery;
begin
  qfind := DM.Find_Ldr('SELECT * FROM PTUsuariosInternet (nolock) WHERE UsuarioInternet = :usr', usuario);

  If (qfind.RecordCount > 0) then
    Result := False
  Else
    Result := True;

  FreeAndNil(qfind);
end;


//Insertando el Usuario de Internet Creado.
procedure TfrmDatosClientes.Insertar_Usuario(usuario: string; clave: string; name: string; cedula: string;
                                             cliente: string; tipo: string; actual: string);
var
 qinsert : TADOQuery;
begin
 qinsert := DM.NewQuery;

 qinsert.Close;
 qinsert.SQL.Text := ' INSERT INTO PTUsuariosInternet(UsuarioInternet, ClaveInternet, Nombre, Identificacion, '+
                     ' ClienteId, Tipo, Actualizado, DataAreaId, RecId) VALUES (:0,:1,:2,:3,:4,:5,:6,:7,:8)';
 qinsert.Parameters[0].Value := usuario;
 qinsert.Parameters[1].Value := clave;
 qinsert.Parameters[2].Value := name;
 qinsert.Parameters[3].Value := cedula;
 qinsert.Parameters[4].Value := cliente;
 qinsert.Parameters[5].Value := tipo;
 qinsert.Parameters[6].Value := 'N';
 qinsert.Parameters[7].Value := dm.qrClientesDATAAREAID.Value;
 qinsert.Parameters[8].Value := dm.qrClientesRECID.Value;
 qinsert.ExecSQL;
 FreeAndNil(qinsert);
end;


//Validando la Existencia del Usuario Creado.
Function TfrmDatosClientes.Buscar_User_Internet(Cliente : String) : Boolean;
Var
 qfind  : TAdoQuery;
begin
  qfind := DM.NewQuery;

  qfind.Close;
  qfind.SQL.Text := ' SELECT * FROM PTUsuariosInternet (nolock) '+
                    ' WHERE ClienteId = ' + #39 + Cliente + #39 +
                    ' AND Tipo = ' + #39 + 'P' + #39 +
                    ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39;
  qfind.Open;

  if (qfind.RecordCount > 0) then
    result := true
  else
    result := false;
  FreeAndNil(qfind);
end;


procedure TfrmDatosClientes.cbExtDocumentoPropertiesChange(Sender: TObject);
begin
  inherited;
  edCedula.Properties.EditMask := dm.qrDocumento.Fieldbyname('Mascara').AsString;
  edCedula.Update;
end;

end.

