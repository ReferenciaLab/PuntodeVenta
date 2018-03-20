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
  cxImageComboBox, cxMemo, cxSpinEdit, cxCheckBox, cxCurrencyEdit, cxCalendar;


type
  TfrmDatosClientes = class(TfrmDatosModule)
    qrClientes: TADOQuery;
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
    cxDBMaskEdit1: TcxDBMaskEdit;
    lcDatosItem14: TdxLayoutItem;
    BtLookInternet: TcxButton;
    dxLayoutControl1Item6: TdxLayoutItem;
    BtCrearInternet: TcxButton;
    dxLayoutControl1Item7: TdxLayoutItem;
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
    qrClientesRECID: TIntegerField;
    qrClientesDIRECCION: TStringField;
    cxDBMaskEdit3: TcxDBMaskEdit;
    lcDatosItem11: TdxLayoutItem;
    cxDBMaskEdit4: TcxDBMaskEdit;
    lcDatosItem18: TdxLayoutItem;
    cxDBMaskEdit5: TcxDBMaskEdit;
    lcDatosItem22: TdxLayoutItem;
    lcDatosGroup4: TdxLayoutGroup;
    tvDatosCOBRARDIFERENCIA: TcxGridDBColumn;
    tvDatosQUIENPAGA: TcxGridDBColumn;
    qrClientesCODIGOIDAS400: TStringField;
    qrClientesGRUPOPRECIO: TStringField;
    qrClientesFORMAPAGO: TStringField;
    qrClientesGRUPODESCUENTOLINEA: TStringField;
    qrClientesGRUPODESCUENTOTOTAL: TStringField;
    BtParametro2: TcxButton;
    dxLayoutControl1Item8: TdxLayoutItem;
    qrClientesSINPRFILTER: TIntegerField;
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

uses DataModule, Main;

{$R *.dfm}


procedure TfrmDatosClientes.BtTarjetaClick(Sender: TObject);
begin
  inherited;
  frmMain.LanzaConsulta(-8005, qrClientesClienteId.Value);
end;

procedure TfrmDatosClientes.BtTransaccionesClick(Sender: TObject);
begin
  inherited;
  frmMain.LanzaConsulta(-7989, qrClientesClienteId.Value);
end;

procedure TfrmDatosClientes.BtBalanceClick(Sender: TObject);
begin
  inherited;
  frmMain.LanzaConsulta(-7988, qrClientesClienteId.Value);
end;

procedure TfrmDatosClientes.BtCrearInternetClick(Sender: TObject);
begin
  inherited;
{
  If Not Buscar_User_Internet(qrClientesClienteId.Value) Then
    Procesar_Usuario
  Else
    DM.Info('El Cliente '+ qrClientesNombre.Value +' Ya Tiene Un Usuario de Internet Creado');
}    
end;

procedure TfrmDatosClientes.BtLookInternetClick(Sender: TObject);
begin
  inherited;
  frmMain.LanzaConsulta(-8023, qrClientesClienteId.Value);
end;

procedure TfrmDatosClientes.BtParametro2Click(Sender: TObject);
begin
  inherited;
  If (qrClientes.State = dsInsert) or (qrClientes.State = dsEdit) then
    Raise exception.CreateFmt('El Formulario Esta en Edicion. NO Puede Modificar Estos Parametros.', [])
  Else
    frmMain.LanzaVentana(8006);
end;

procedure TfrmDatosClientes.BtParametroClick(Sender: TObject);
begin
  inherited;
//  If (qrClientes.State = dsInsert) or (qrClientes.State = dsEdit) then
  frmMain.LanzaVentana(-8006);
end;

procedure TfrmDatosClientes.BtRelacionadosClick(Sender: TObject);
begin
  inherited;
  frmMain.LanzaConsulta(-8022, qrClientesClienteId.Value);
end;

procedure TfrmDatosClientes.DoPost;
begin
 DM.qrParametro.close;
 DM.qrParametro.open;

 qrClientesIDENTIFICACION.Required := True;

 if (DM.qrParametroGrupoCli.Value <> qrClientesGrupoCLiente.Value) and
    (DM.qrParametroGrupoSeg.Value <> qrClientesGrupoCLiente.Value) and
    (DM.qrParametroGrupoCia.Value <> qrClientesGrupoCLiente.Value) and
    (DM.qrParametroGrupoLab.Value <> qrClientesGrupoCLiente.Value) then
  begin
    qrClientesSexo.Required := True;
    qrClientesFechaNacimiento.Required := True;
  end
 else
  begin
    qrClientesSexo.Required := false;
    qrClientesFechaNacimiento.Required := false;
  end;

 inherited;
end;


procedure TfrmDatosClientes.FormCreate(Sender: TObject);
begin
  inherited;
  DM.qrParametro.close;
  DM.qrParametro.open;

  DM.qrMonedas.Close;
  DM.qrMonedas.Open;

  DM.qrCiudad.close;
  DM.qrCiudad.open;

  DM.qrPacientes.close;
//  DM.qrPacientes.sql.Text := 'SELECT * FROM PTCliente WHERE GrupoCliente NOT IN ('+#39+DM.qrParametroGrupoSeg.Value+
//                              #39+','+#39+DM.qrParametroGrupoClinica.Value+#39+','+#39+DM.qrParametroGrupoLab.Value+#39+') ';
  DM.qrPacientes.sql.Text := ' SELECT * FROM PTCliente WHERE GrupoCliente IN (' + #39 +
                               DM.qrParametroGrupoVip.Value + #39 + ',' + #39 +
                               DM.qrParametroGrupoAcc.Value + #39 + ',' + #39 +
                               DM.qrParametroGrupoEmp.Value + #39 + ',' + #39 +
                               DM.qrParametroGrupoPriv.Value + #39 + ') ' +
                             ' AND DataAreaId = ' + #39 + 'ldr' + #39;
  DM.qrPacientes.Open;

  DM.qrSeguros.close;
  DM.qrSeguros.open;

  DM.qrGrupoCliente.Close;
  DM.qrGrupoCliente.Open;  

  EdPoliza.Properties.ReadOnly := True;
  EdAseguradora.Properties.ReadOnly := True;
  LcDatosPrincipal.Enabled := False;
  CbClientePrincipal.Properties.ReadOnly := True;
  edcliente.Properties.ReadOnly := DM.qrParametroAutoNumerarClientes.Value;
end;


procedure TfrmDatosClientes.qrClientesBeforeEdit(DataSet: TDataSet);
begin
  DM.qrParametro.close;
  DM.qrParametro.open;

  If (qrClientesGrupoCliente.Value <> DM.qrParametroGrupoPriv.Value) Then
    Raise exception.CreateFmt('Solo Pueden Modificar Clientes Del Grupo PRIVADO ó AMBULATORIO.', [])
  Else
    Begin
      lcDatosTipos.Enabled := False;
      lcDatosGrupos.Enabled := False;
      LcDatosPrincipal.Enabled := False;
      CbTipodeCliente.Properties.ReadOnly := True;
      CbGrupoClientes.Properties.ReadOnly := True;
      inherited;
//      EdNombre.SetFocus;
    end;
end;


procedure TfrmDatosClientes.qrClientesBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  lcDatosTipos.Enabled := False;
  lcDatosGrupos.Enabled := False;
  LcDatosPrincipal.Enabled := False;
  CbTipodeCliente.Properties.ReadOnly := True;
  CbGrupoClientes.Properties.ReadOnly := True;
end;


procedure TfrmDatosClientes.qrClientesBeforePost(DataSet: TDataSet);
begin
  inherited;
  If (qrClientes.State = dsInsert) Or (qrClientes.State = dsEdit) Then
    If (qrClientesClienteID.IsNull) Or (qrClientesClienteID.Value = '') Then
      AutoKeyField := 'ClienteID';

  DM.qrParametro.close;
  DM.qrParametro.open;

  If (qrClientes.State = dsInsert) and (DM.qrParametroAutoNumerarClientes.Value) then
   begin
//    qrClientesClienteID.Value := formatfloat('00',strtofloat(DM.CurSucursal)) + '-' +
//                                 formatfloat('00000000',DM.qrParametroSecuenciaCliente.asfloat);

    qrClientesClienteID.Value := formatfloat('00000000', DM.qrParametroSecuenciaCliente.asfloat);

    DM.qrParametro.edit;
    DM.qrParametroSecuenciaCliente.Value := DM.qrParametroSecuenciaCliente.Value + 1;
    DM.qrParametro.Post;
   end;

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
         qfind.SQL.Text := ' SELECT * FROM PTCliente '+
                           ' WHERE Identificacion = :reg '+
                           ' AND ClienteId <> :cod '+
                           ' AND DataAreaId = ' + #39 + 'ldr' + #39;
         qfind.Parameters[0].Value := qrClientesIDENTIFICACION.Value;
         qfind.Parameters[1].Value := qrClientesClienteID.Value;
         qfind.Open;

         If (qfind.RecordCount > 0) Then
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
  DM.qrParametro.Close;
  DM.qrParametro.Open;

  RecId := DM.qrParametroSecuencia.Value;

  DM.qrParametro.Edit;
  DM.qrParametroSecuencia.Value := DM.qrParametroSecuencia.Value + 1;
  DM.qrParametro.Post;

  qrClientesDATAAREAID.Value := 'ldr';
  qrClientesRECID.Value := RecId;
  qrClientesEstatus.Value := 1;
  qrClientesSexo.Value := 1;
  qrClientesEnviarFax.Value := 0;
  qrClientesPruebasPorDia.Value := 0;
  qrClientesCoberturaPorc.value := 0;
  qrClientesEnvioResultado.value := 0;
  qrClientesAutoconfirmar.value := 0;
  qrClientesCobrarDiferencia.Value := 1;
  qrClientesActivarDescuentos.Value := 1;
  qrClientesPublicarInternet.Value := 1;
  qrClientesSiempreInternet.Value := 1;
  qrClientesSiempreImprimir.Value := 1;
  qrClientesIncluirPrecioTicket.Value := 1;
  qrClientesImprimirAliasNombre.Value := 0;
  qrClientesImprimirAliasPrueba.Value := 0;
  qrClientesUsarAcuerdoPropio.Value := 0;

  qrClientesGrupoPrecio.Value := '';
  qrClientesFormaPago.Value := 'CASH';
  qrClientesQuienPaga.Value := 'EMP';
  qrClientesQuienPaga.Value := 'EMP';
  qrClientesTipoCliente.Value := 'PRI';
  qrClientesEntregarResultados.Value := 'EMP';
  qrClientesGrupoCliente.Value := DM.qrParametroGrupoPriv.Value;
  qrClientesMonedaID.Value :=  DM.qrParametroMonedaID.Value;

  lcDatosGrupos.Enabled := False;
  lcDatosTipos.Enabled := False;
  CbTipodeCliente.Properties.ReadOnly := True;
  CbGrupoClientes.Properties.ReadOnly := True;

  DM.qrParametro.close;
  DM.qrParametro.open;

  EdNombre.SetFocus;
end;


procedure TfrmDatosClientes.qrClientesORIGENChange(Sender: TField);
begin
  inherited;
  Refrescar;
end;


procedure TfrmDatosClientes.Refrescar;
begin
  If (qrClientes.State = dsInsert) or (qrClientes.State = dsEdit) then
    Begin
      DM.qrParametro.close;
      DM.qrParametro.open;

      If (qrClientesGrupoCliente.Value = DM.qrParametroGrupoAcc.Value) Or
         (qrClientesGrupoCliente.Value = DM.qrParametroGrupoEmp.Value) Or
         (qrClientesGrupoCliente.Value = DM.qrParametroGrupoVip.Value) Or
         (qrClientesGrupoCliente.Value = DM.qrParametroGrupoPriv.Value) Then
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
end;


procedure TfrmDatosClientes.qrClientesAfterPost(DataSet: TDataSet);
begin
  inherited;
  qrClientes.Refresh;
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
  Pass2, Clave : Integer;
  Limpio, Usuario, Useralt, Tipo : String;
begin
  DM.qrParametro.Close;
  DM.qrParametro.Open;

  //Eliminando los Guiones de la Cedula - RNC del Cliente.
  Limpio  := DM.Cortar_Char('-', qrClientesIDENTIFICACION.Value);

  //Creando la Clave de Internet.
  Clave :=  Crear_Clave(Limpio);

  //Creando la Clave de Internet.
//  Clave :=  Crear_Clave(qrClientesIDENTIFICACION.Value);

  //Creando el Usuario de Internet.
  Usuario :=  Crear_Usuario(qrClientesNombre.Value);

  //Creando el Usuario Alternativo. 6 Digitos o Menos.
  If ( Length(Usuario) > 6 ) Then
    Useralt := Copy(Usuario, 1, 6)
  Else
    Useralt := Usuario;

  //Creando el Usuario Alternativo. 4 Digitos de la Clave.
  Pass2 := StrToInt( RightStr (IntToStr (Clave), 4) );

  If Not Valida_Usuario(Usuario) then
    Begin
      //Creando el Usuario Alternativo (Useralt + Pass2).
      Usuario := Useralt + IntToStr(Pass2);
      While Not Valida_Usuario(Usuario) do
       Begin
         Pass2 := Pass2 + 1;
         Usuario := Useralt + IntToStr(Pass2);
         Next;
       End;
    End;
{
  //Identificando el Tipo de Clave.
  If (qrClientesGrupoCliente.Value = '03') Or
     (qrClientesGrupoCliente.Value = '04') Or
     (qrClientesGrupoCliente.Value = '05') Or
     (qrClientesGrupoCliente.Value = '11') Or
     (qrClientesTipoCliente.Value  = 'ACC') Or
     (qrClientesTipoCliente.Value  = 'EMP') Or
     (qrClientesTipoCliente.Value  = 'VIP') Or
     (qrClientesTipoCliente.Value  = 'PRI') Then
   Tipo := 'P'
 Else
   Tipo := 'C';
}
  If (qrClientesGrupoCliente.Value = DM.qrParametroGrupoAcc.Value) Or
     (qrClientesGrupoCliente.Value = DM.qrParametroGrupoEmp.Value) Or
     (qrClientesGrupoCliente.Value = DM.qrParametroGrupoVip.Value) Or
     (qrClientesGrupoCliente.Value = DM.qrParametroGrupoPriv.Value) Then
   Tipo := 'P'
 Else
   Tipo := 'C';

//  Insertar_Usuario(Usuario, IntToStr(Clave),
  Insertar_Usuario(Usuario, FormatFloat('000000', Clave),
                   qrClientesNombre.Value,
                   qrClientesIDENTIFICACION.Value,
                   qrClientesClienteId.Value, Tipo, 'N');
end;


//Creando la Clave de Internet Segun el Algoritmo de Alejandro Espinosa Curiel.
Function TfrmDatosClientes.Crear_Clave(cedularnc : String) : Integer;
Var
  Numero  : Double;
  Valor   : Int64;
//  Valor   : Integer;
  Texto   : String; //AnsiString;
begin
  //Cargando la Cedula - RNC.
//  Valor := StrToInt(cedularnc);
  Valor := StrToInt64(cedularnc);

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
//  Blanco := AnsiPos(#32, nombre);

  If (Largo > 10) Then
    Begin
      If (Blanco > 1) Then
        Begin
         Valor := Blanco - 1;

         If (Valor > 9) Then
           Texto := Copy(nombre, 1, 10)
         Else
           Texto := Copy(nombre, 1, Valor);
        End
      Else
        Texto := Copy(nombre, 1, 10);
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
  qfind := DM.Find('SELECT * FROM PTUsuariosInternet WHERE UsuarioInternet = :usr', usuario);

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
 qinsert.Parameters[7].Value := qrClientesDATAAREAID.Value;
 qinsert.Parameters[8].Value := qrClientesRECID.Value;
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
  qfind.SQL.Text := ' SELECT * FROM PTUsuariosInternet '+
                    ' WHERE ClienteId = ' + #39 + Cliente + #39 +
                    ' AND Tipo = ' + #39 + 'P' + #39 +
                    ' AND DataAreaId = ' + #39 + 'ldr' + #39;
   qfind.Open;

  if (qfind.RecordCount > 0) then
    result := true
  else
    result := false;

  FreeAndNil(qfind);
end;


end.



