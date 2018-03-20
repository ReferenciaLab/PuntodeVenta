unit DatosClientesPtoVta;

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
  dlgmensajes,cxImage,jpeg, cxLabel;


type
  TfrmDatosClientesPtoVta = class(TfrmDatosModule)
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
    EdAseguradora: TcxDBTextEdit;
    lcDatosItem15: TdxLayoutItem;
    cxDBTextEdit9: TcxDBTextEdit;
    lcDatosItem16: TdxLayoutItem;
    cxDBImageComboBox1: TcxDBImageComboBox;
    lcDatosItem19: TdxLayoutItem;
    EdCedula: TcxDBMaskEdit;
    lcDatosItem14: TdxLayoutItem;

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
    tvDatosCOBRARDIFERENCIA: TcxGridDBColumn;
    tvDatosQUIENPAGA: TcxGridDBColumn;
    lcDatosGrpFoto: TdxLayoutGroup;
    lcDatosGroup7: TdxLayoutGroup;
    imgFoto: TcxImage;
    lcDatosItem3: TdxLayoutItem;
    chkNombre: TcxCheckBox;
    lcDatosItem5: TdxLayoutItem;
    lcDatosGroup6: TdxLayoutGroup;
    lcDatosGroup8: TdxLayoutGroup;
    chkSexo: TcxCheckBox;
    lcDatosItem17: TdxLayoutItem;
    lcDatosItem6: TdxLayoutItem;
    chkFechaBorn: TcxCheckBox;
    lcDatosGroup9: TdxLayoutGroup;
    lblEstatus: TcxLabel;
    lcGridItem1: TdxLayoutItem;
    lcDatosItem9: TdxLayoutItem;
    lcDatosGroup10: TdxLayoutGroup;
    qrClientesCOD_PROV_REF: TStringField;
    qrClientesRECID: TLargeintField;
    lcDatosItem24: TdxLayoutItem;
    lcDatosGroup11: TdxLayoutGroup;
    cbNacionalidad: TcxDBExtLookupComboBox;
    qrClientesCOD_NACION: TIntegerField;
    lcDatosItem25: TdxLayoutItem;
    lcDatosGroup12: TdxLayoutGroup;
    cbExtDocumento: TcxDBExtLookupComboBox;
    qrClientesTIPO_DOCUMENTO: TIntegerField;
    qrClientesNUMPRINT: TWordField;
    procedure qrClientesBeforeCancel(DataSet: TDataSet);
    procedure cbExtDocumentoPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qrClientesAfterOpen(DataSet: TDataSet);
    procedure qrClientesBeforeOpen(DataSet: TDataSet);
    procedure EdCedulaExit(Sender: TObject);
    procedure qrClientesBeforeDelete(DataSet: TDataSet);
    procedure qrClientesFECHANACIMIENTOValidate(Sender: TField);
    procedure qrClientesIDENTIFICACIONValidate(Sender: TField);
    procedure qrClientesAfterPost(DataSet: TDataSet);
    procedure qrClientesORIGENChange(Sender: TField);
    procedure qrClientesGRUPOCLIENTEChange(Sender: TField);
    procedure qrClientesBeforeInsert(DataSet: TDataSet);
    procedure qrClientesBeforeEdit(DataSet: TDataSet);
    procedure qrClientesAfterScroll(DataSet: TDataSet);
    procedure qrClientesNewRecord(DataSet: TDataSet);
    procedure qrClientesBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    Db1Servidor,Db2Servidor : String;
    cont : integer;
  protected
    procedure DoPost; override;
  public
     buscar : Boolean;  
     Procedure Refrescar;
     Procedure Procesar_Usuario;
     Procedure Nuevo_Registro;
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
  frmDatosClientesPtoVta: TfrmDatosClientesPtoVta;

implementation

uses DataModule, Main, PuntoVenta, UInterfaseAs400;

{$R *.dfm}


procedure TfrmDatosClientesPtoVta.DoPost;
Var
  qfind       : TAdoQuery;
begin
 DM.qrParametro.close;
 DM.qrParametro.open;
 qrClientesIDENTIFICACION.Required  := True;
 qrClientesSexo.Required            := True;
 qrClientesFechaNacimiento.Required := True;
 qrClientesNombre.Required          := True;
 qrClientesCod_Nacion.Required      := True;
 qrClientesTIPO_DOCUMENTO.Required  := True;
 edNombre.Text	                    := Trim(edNombre.Text);
 cxDBTextEdit10.Text                := Trim(cxDBTextEdit10.Text);
 cxDBMemo1.Text                     := Trim(cxDBMemo1.Text);
 cxDBTextEdit9.Text                 := Trim(cxDBTextEdit9.Text);
 cxDBTextEdit3.Text                 := Trim(cxDBTextEdit3.Text);
 cxDBTextEdit6.Text                 := Trim(cxDBTextEdit6.Text);
 cxDBTextEdit7.Text                 := Trim(cxDBTextEdit7.Text);
 if qrClientesFechaNacimiento.Value > DM.SystemDate then
 begin
     Raise exception.CreateFmt(' Favor verifique la fecha de nacimiento. '+ #13 +
                               ' No puede ser mayor a fecha del d�a.  Verifique.', []);
     if EdFechaBorn.Enabled then EdFechaBorn.SetFocus;
 end;

 If (Copy(qrClientesIdentificacion.Value,14,1)<> '0') And (qrClientesTIPO_DOCUMENTO.AsInteger=4)Then
 Begin
    If chkNombre.checked  Then
    Begin
            Raise exception.CreateFmt(' Favor verifique el cambio del Nombre Paciente. '+ #13 +
                                       ' desmarcando el check de la derecha del nombre.  Verifique.', []);

    end
    else if chkSexo.checked  Then
    Begin
            Raise exception.CreateFmt(' Favor verifique si existe cambio del Sexo del Paciente. '+ #13 +
                                       ' desmarcando el check de la derecha del sexo.  Verifique.', []);
    end
    else If chkFechaBorn.checked Then
    Begin
            Raise exception.CreateFmt(' Favor verifique el cambio de la Fecha de Nacimiento del Paciente. '+ #13 +
                                       ' desmarcando el check de la derecha de la fecha.  Verifique.', []);
    end;
    qfind := DM.NewQuery;
    qfind.Close;
    qfind.SQL.Text:=' SELECT NOMBRE,FECHANACIMIENTO FROM PTCLIENTE '+
                     ' WHERE NOMBRE ='+#39+EdNombre.Text+#39+
                     ' AND   FECHANACIMIENTO ='+#39+formatdatetime('yyyymmdd',EdFechaBorn.Date)+#39+
                     ' AND   DATAAREAID='+#39+DM.CurEmpresa+#39+
                     ' AND   ESTATUS='+#39+'0'+#39;
    qfind.Open;
    If (qfind.RecordCount > 0) Then
    begin
       Raise exception.CreateFmt('Paciente '+qfind.FieldByName('Nombre').AsString+' est� creado.  Verifique.', []);
    end;
    FreeAndNil(qfind);
 end;
 inherited;
end;


procedure TfrmDatosClientesPtoVta.EdCedulaExit(Sender: TObject);
Var
  qfind                   : TAdoQuery;
  Direccion,StrIDE,Limpio : String;
begin
  inherited;
  If ((qrClientes.State = dsInsert) Or (qrClientes.State = dsEdit)) and
     ((Length(trim(qrClientesIdentificacion.Value))=14) or (Length(trim(qrClientesIdentificacion.Value))=13)) then
    Begin
      If qrClientesTIPO_DOCUMENTO.AsString = EmptyStr then
      begin
         EtMensajeDlg('Favor seleccionar el Tipo de Documento.', etError, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
         CbExtDocumento.Setfocus;
         Exit;
      end;
      If Not Dm.GetDigitoVerificador(copy(DM.Cortar_Char('-', qrClientesIdentificacion.Value),1,11),qrClientesTipo_Documento.AsString) Then
      begin
         EtMensajeDlg('Favor digitar N�mero de C�dula V�lido.', etError, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
         qrClientesIdentificacion.Value := EmptyStr;
         EdCedula.Setfocus;
         Exit;
      end;
      If (Copy(qrClientesIdentificacion.Value,14,1)<> '0') and (qrClientesTIPO_DOCUMENTO.AsInteger=4)Then
      begin
             edNombre.Style.Font.Color:= clRed;
             cbSexo.Style.Font.Color  := clRed;
             edFechaBorn.Style.Font.Color:= clRed;
             chkNombre.checked        := True;
             chkSexo.checked          := True;
             chkFechaBorn.checked     := True;
             lblEstatus.Caption       := 'DEPENDIENTE';
      end
      else
      begin
          lblEstatus.Caption := EmptyStr;
      end;
      qfind := DM.NewQuery;
      DM.qrParametro.close;
      DM.qrParametro.open;
      If dm.qrParametroServidor_AS400.value = EmptyStr then
      begin
           Db1Servidor := 'Ced2011_1';
           Db2Servidor := 'Ced2011_2';
      end
      else
      begin
           Db1Servidor := 'Ced2016';
      end;
        If (qrClientesGrupoCliente.Value = DM.qrParametroGrupoAcc.Value) Or
         (qrClientesGrupoCliente.Value = DM.qrParametroGrupoEmp.Value) Or
         (qrClientesGrupoCliente.Value = DM.qrParametroGrupoVip.Value) Or
         (qrClientesGrupoCliente.Value = DM.qrParametroGrupoPriv.Value) Then
          Begin
          StrIDE:=qrClientesIdentificacion.Value;
          Limpio  := DM.Cortar_Char('-', qrClientesIDENTIFICACION.Value);
          if (qrClientesTIPO_DOCUMENTO.AsString='2') And (Length(Limpio)=11) then
          begin
            qfind.SQL.Text :=' SELECT * FROM PTCLIENTE Where Tipo_Documento='+#39+'2'+#39+' And Estatus='+#39+'0'+#39+
                             ' and len(LTRIM(REPLACE(ISNULL(PTCliente.Identificacion, '+#39+'0'+#39+'), '+#39+'-'+#39+', '''')))='+#39+'12'+#39+
                             ' and LTRIM(REPLACE(ISNULL(PTCliente.Identificacion, '+#39+'0'+#39+'), '+#39+'-'+#39+', ''''))='+#39+Limpio+'0'+#39+
                             ' and right(identificacion,1)='+#39+'0'+#39;


          end
          else
          begin
            qfind.SQL.Text :=' SELECT * FROM PTCLIENTE Where Estatus='+#39+'0'+#39+' And Identificacion ='+#39+qrClientesIdentificacion.Value+#39;
          end;

//          qfind.Close;
//          qfind.SQL.Text :=' SELECT * FROM PTCLIENTE Where Estatus='+#39+'0'+#39+' And Identificacion like '+#39+qrClientesIdentificacion.Value+'%'+#39;
          qfind.Open;

          if qfind.RecordCount > 0 then
          begin
             If (dm.qrParametroServidor_AS400.value <> EmptyStr) Then
                 DM.BuscaFoto(Self,Copy(EdCedula.Text,1,3),Copy(EdCedula.Text,5,7),Copy(EdCedula.Text,13,1))
             else
                 imgFoto.Picture := Nil;
            qrClientes.Clone(qfind);
          end;
          if qfind.RecordCount = 0 then
          begin
            qfind.Close;
            qfind.SQL.Text:=' SELECT NOMBRES,APELLIDO1,ISNULL(APELLIDO2,'+#39+#39+') AS APELLIDO2,FECHA_NAC,SEXO,COD_SANGRE,COD_NACION,P.COD_MUNICIPIO,P.COD_CIUDAD,'+
                               '  P.COD_SECTOR,ISNULL(CALLE,'+#39+#39+') AS CALLE,ISNULL(CASA,'+#39+#39+') AS CASA,ISNULL(EDIFICIO,'+#39+#39+') AS EDIFICIO, ISNULL(PISO,'+#39+#39+') AS PISO, ISNULL(APTO,'+#39+#39+') AS APTO,ISNULL(S.DESCRIPCION,'+#39+#39+') AS SECTOR,C.CIUDADID AS CIUDAD '+
                               '   FROM '+Db1Servidor+'.dbo.CEDULADOS P left join '+Db1Servidor+'.dbo.SECTOR_PARAJE S on  '+
                               '   		(S.COD_MUNICIPIO COLLATE SQL_AltDiction_CP850_CI_AI = P.COD_MUNICIPIO COLLATE SQL_AltDiction_CP850_CI_AI)  '+
                               '   		AND (S.COD_SECTOR COLLATE SQL_AltDiction_CP850_CI_AI = P.COD_SECTOR COLLATE SQL_AltDiction_CP850_CI_AI ) INNER JOIN   '+
                               '   '+Db1Servidor+'.dbo.MUNICIPIO M ON  '+
                               '   		M.COD_MUNICIPIO COLLATE SQL_AltDiction_CP850_CI_AI = P.COD_MUNICIPIO COLLATE SQL_AltDiction_CP850_CI_AI '+
                               '   		LEFT OUTER JOIN PTCIUDAD C ON '+
                               '   		C.COD_NUM_PADRON COLLATE SQL_AltDiction_CP850_CI_AI = P.COD_MUNICIPIO COLLATE SQL_AltDiction_CP850_CI_AI '+
                               ' WHERE MUN_CED ='+#39+Copy(qrClientesIdentificacion.Value,1,3)+#39+
                               ' AND   SEQ_CED ='+#39+copy(qrClientesIdentificacion.Value,5,7)+#39+
                               ' AND   VER_CED ='+#39+copy(qrClientesIdentificacion.Value,13,1)+#39;
             qfind.Open;
             If (dm.qrParametroServidor_AS400.value <> EmptyStr) then
             begin
                 If (qfind.RecordCount =0) Then
                 begin
                   Raise exception.CreateFmt(' N�mero de Cedula No Existe.  Verifique.', []);
                 end
             end
             else
             If (dm.qrParametroServidor_AS400.value = EmptyStr) and (qfind.RecordCount =0) then
             begin
                 qfind.Close;
                 qfind.SQL.Text:=' SELECT NOMBRES,APELLIDO1,ISNULL(APELLIDO2,'+#39+#39+') AS APELLIDO2,FECHA_NAC,SEXO,COD_SANGRE,COD_NACION,P.COD_MUNICIPIO,P.COD_CIUDAD,'+
                                       '  P.COD_SECTOR,ISNULL(CALLE,'+#39+#39+') AS CALLE,ISNULL(CASA,'+#39+#39+') AS CASA,ISNULL(EDIFICIO,'+#39+#39+') AS EDIFICIO, ISNULL(PISO,'+#39+#39+') AS PISO, ISNULL(APTO,'+#39+#39+') AS APTO,ISNULL(S.DESCRIPCION,'+#39+#39+') AS SECTOR,C.CIUDADID AS CIUDAD '+
                                       '   FROM '+Db2Servidor+'.dbo.CEDULADOS P left join '+Db2Servidor+'.dbo.SECTOR_PARAJE S on  '+
                                       '   		(S.COD_MUNICIPIO COLLATE SQL_AltDiction_CP850_CI_AI = P.COD_MUNICIPIO COLLATE SQL_AltDiction_CP850_CI_AI)  '+
                                       '   		AND (S.COD_SECTOR COLLATE SQL_AltDiction_CP850_CI_AI = P.COD_SECTOR COLLATE SQL_AltDiction_CP850_CI_AI ) INNER JOIN   '+
                                       '   '+Db2Servidor+'.dbo.MUNICIPIO M ON  '+
                                       '   		M.COD_MUNICIPIO COLLATE SQL_AltDiction_CP850_CI_AI = P.COD_MUNICIPIO COLLATE SQL_AltDiction_CP850_CI_AI '+
                                       '   		LEFT OUTER JOIN PTCIUDAD C ON '+
                                       '   		C.COD_NUM_PADRON COLLATE SQL_AltDiction_CP850_CI_AI = P.COD_MUNICIPIO COLLATE SQL_AltDiction_CP850_CI_AI '+
                                       ' WHERE MUN_CED ='+#39+Copy(qrClientesIdentificacion.Value,1,3)+#39+
                                       ' AND   SEQ_CED ='+#39+copy(qrClientesIdentificacion.Value,5,7)+#39+
                                       ' AND   VER_CED ='+#39+copy(qrClientesIdentificacion.Value,13,1)+#39;
                 qfind.Open;
                 If (qfind.RecordCount =0) Then
                 begin
                   Raise exception.CreateFmt(' N�mero de Cedula No Existe.  Verifique.', []);
                 end
             end;
           end;
           if (qrClientes.RecordCount = 0) And
              (qfind.RecordCount = 1) then
           begin
             qrClientesNOMBRE.Value := qfind.FieldByName('Nombres').AsString+' '+
                                       qfind.FieldByName('APELLIDO1').AsString+' '+
                                       qfind.FieldByName('APELLIDO2').AsString;
             qrClientesFECHANACIMIENTO.Text := qfind.FieldByName('fecha_nac').AsString;
             case qfind.FieldByName('Sexo').AsString[1] of
                'M': cbSexo.ItemIndex:=2;
                'F': cbSexo.ItemIndex:=1;
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
             qrClientesTIPOSANGRE.Text := cxDBImageComboBox1.Text;
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
             qrClientesDIRECCION.Text       := Trim(Direccion);
             qrClientesSECTOR.Text          := qfind.FieldByName('Sector').AsString;
             qrClientesCIUDADID.Value       := qfind.FieldByName('Ciudad').AsString;
             if (Length(trim(EdCedula.Text))=14) then
                qrClientesTIPO_DOCUMENTO.Value := 4
             else if (Length(trim(EdCedula.Text))=13) then
                qrClientesTIPO_DOCUMENTO.Value := 2
             else
                qrClientesTIPO_DOCUMENTO.Value := 3;
             qrClientesCod_Nacion.Value     := qfind.FieldByName('Cod_Nacion').AsInteger;

             If (dm.qrParametroServidor_AS400.value <> EmptyStr) Then
                 DM.BuscaFoto(Self,Copy(EdCedula.Text,1,3),Copy(EdCedula.Text,5,7),Copy(EdCedula.Text,13,1))
             else
                 imgFoto.Picture := Nil;
           end;
          End;
      FreeAndNil(qfind);
    End;
end;

procedure TfrmDatosClientesPtoVta.FormCreate(Sender: TObject);
begin
  inherited;
  DM.qrDocumento.Close;
  With DM.qrDocumento, sql do
  begin
    Close;
    Clear;
    Text :='Select * From PtDocumento Where TipoDocID IN (2,3,4)';
    Open;
  end;
  DM.qrParametro.close;
  DM.qrParametro.open;

  DM.qrMonedas.Close;
  DM.qrMonedas.Open;

  DM.qrCiudad.close;
  DM.qrCiudad.open;

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
  edcliente.Properties.ReadOnly := DM.qrParametroAutoNumerarClientes.Value;
  tsMain.Enabled     := False;
  tsMain.Visible      := False;
  tsMain.TabVisible   := False;
  pcDatos.ActivePage  := tsDatos;
end;


procedure TfrmDatosClientesPtoVta.FormShow(Sender: TObject);
Var
  hwndText : THandle;
begin
  inherited;
  tsMain.Enabled    := False;
  tsMain.Visible    := False;
  tsMain.TabVisible := False;
  pcDatos.ActivePage := tsDatos;
end;

procedure TfrmDatosClientesPtoVta.qrClientesBeforeCancel(DataSet: TDataSet);
begin
  inherited;
  imgFoto.Picture := Nil;
end;

procedure TfrmDatosClientesPtoVta.qrClientesBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  Raise exception.CreateFmt('Solo Pueden Eliminar Clientes Desde AXAPTA.', []);
end;


procedure TfrmDatosClientesPtoVta.qrClientesBeforeEdit(DataSet: TDataSet);
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
      lcDatosTipos.Enabled := False;
      lcDatosGrupos.Enabled := False;
      LcDatosPrincipal.Enabled := False;
      CbTipodeCliente.Properties.ReadOnly := True;
      CbGrupoClientes.Properties.ReadOnly := True;

      If ((qrClientes.State = dsBrowse) Or (qrClientes.State = dsEdit)) Then
        Begin
          qfind := DM.NewQuery;
          DM.qrParametro.close;
          DM.qrParametro.open;
          If Copy(qrClientesIdentificacion.Value,14,1)='0' Then
          begin
              lblEstatus.Caption := EmptyStr;
          end;
          If (qrClientesGrupoCliente.Value = DM.qrParametroGrupoAcc.Value) Or
             (qrClientesGrupoCliente.Value = DM.qrParametroGrupoEmp.Value) Or
             (qrClientesGrupoCliente.Value = DM.qrParametroGrupoVip.Value) Or
             (qrClientesGrupoCliente.Value = DM.qrParametroGrupoPriv.Value) Then
            Begin
             //Eliminando los Guiones de la Cedula - RNC del Cliente.
             Limpio  := DM.Cortar_Char('-', qrClientesIDENTIFICACION.Value);

             If ( Length(Limpio) = 9 ) Then
               Limpio := '00' + Limpio;

             If ( Length(Limpio) = 10 ) Then
               Limpio := '0' + Limpio;

             If ( Length(Limpio) > 11 ) Then
               Limpio := Copy(Limpio,1, 12);

             If (qrClientes.State = dsBrowse) and (Length(Limpio)=11) and (buscar) then qfind.Close;
             qfind.SQL.Text := ' SELECT NOMBRES,APELLIDO1,ISNULL(APELLIDO2,'+#39+#39+') AS APELLIDO2, FECHA_NAC, SEXO, COD_SANGRE  FROM '+Db1Servidor+'.dbo.CEDULADOS '+
                               ' WHERE MUN_CED ='+#39+Copy(Limpio, 1, 3)+#39+
                               ' AND   SEQ_CED ='+#39+copy(Limpio, 4, 7)+#39+
                               ' AND   VER_CED ='+#39+copy(Limpio, 11, 1)+#39;
             qfind.Open;
             If (qfind.RecordCount > 0) Then
             begin
               EdCedula.EditText := qrClientesIDENTIFICACION.Value;
             EdNombre.Text := qfind.FieldByName('Nombres').AsString+' '+
                              qfind.FieldByName('APELLIDO1').AsString+' '+
                              qfind.FieldByName('APELLIDO2').AsString;
               EdFechaBorn.Text := qfind.FieldByName('fecha_nac').AsString;
               case qfind.FieldByName('Sexo').AsString[1] of
                  'M': cbSexo.ItemIndex:=2;
                  'F': cbSexo.ItemIndex:=1;
               end;
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
               If dm.qrParametroServidor_AS400.value <> EmptyStr then
                  DM.BuscaFoto(Self,Copy(EdCedula.Text,1,3),Copy(EdCedula.Text,5,7),Copy(EdCedula.Text,13,1));

             If (dm.qrParametroServidor_AS400.value <> EmptyStr) Then
                 DM.BuscaFoto(Self,Copy(EdCedula.Text,1,3),Copy(EdCedula.Text,5,7),Copy(EdCedula.Text,13,1))
             else
                 imgFoto.Picture := Nil;

             end
             Else
             begin
               imgFoto.Picture := Nil;
             end;
            End;
          FreeAndNil(qfind);
        End;
      inherited;
    end;
end;


procedure TfrmDatosClientesPtoVta.qrClientesBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  lcDatosTipos.Enabled := False;
  lcDatosGrupos.Enabled := False;
  LcDatosPrincipal.Enabled := False;
  CbTipodeCliente.Properties.ReadOnly := True;
  CbGrupoClientes.Properties.ReadOnly := True;
  cbExtDocumento.SetFocus;
end;


procedure TfrmDatosClientesPtoVta.qrClientesBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  buscar := False;
end;

procedure TfrmDatosClientesPtoVta.qrClientesBeforePost(DataSet: TDataSet);
Var
 _valor  : Integer;
 qsecdoc : TADOQuery;
begin
  inherited;
{  if qrClientesClienteID.Value <> EmptyStr then
  begin
    qrClientes.BookMark;
    qrClientes.Cancel;
    qrClientes.Edit;
    qrClientes.GetBookMark;
  end;
}
  If (qrClientes.State = dsInsert) Or (qrClientes.State = dsEdit) Then
    If (qrClientesClienteID.IsNull) Or (qrClientesClienteID.Value = '') Then
      AutoKeyField := 'ClienteID';

    DM.qrParametro.close;
    DM.qrParametro.open;

  If (qrClientes.State = dsInsert) and (DM.qrParametroAutoNumerarClientes.Value)
     And (qrClientesClienteID.Value = EmptyStr) then
  begin
     _valor  := 0;
     qsecdoc := DM.NewQuery;
     qsecdoc := DM.NewQuery;
     With qsecdoc,sql do
     begin
       Close;
       Clear;
       Add(' DECLARE	@return_value int,@r_result bigint,@r_result2 bigint,@r_result3 bit ');
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
         if length(FieldByName('SucursalAS400').AsString) < 3  then
         begin
            qrClientesClienteID.Value :=  FormatFloat('00', FieldByName('SucursalAS400').AsInteger) +
                                          FormatFloat('000000', _valor);
         end
         else if length(FieldByName('SucursalAS400').AsString) > 2  then
         begin
            qrClientesClienteID.Value :=  FormatFloat('000', FieldByName('SucursalAS400').AsInteger) +
                                          FormatFloat('00000', _valor);
         end;

       end;
         frmMain.CustPtoVta := qrClientesClienteID.Value;
         FreeAndNil(qsecdoc);
     End;

  end;
  If (qrClientes.State = dsInsert) or (qrClientes.State = dsEdit) then
  begin
      qrClientesPublicarInternet.Value := qrClientesSiempreInternet.Value;
  end;
end;


procedure TfrmDatosClientesPtoVta.qrClientesFECHANACIMIENTOValidate(Sender: TField);
begin
  inherited;
  If (qrClientes.State = dsInsert) Or (qrClientes.State = dsEdit) Then
    Begin
      If (qrClientesFECHANACIMIENTO.Value > Date) Then
        Raise exception.CreateFmt('La Fecha de Nacimiento Esta Incorrecta. Por Favor Verifique.!!!', []);
    End;
end;


procedure TfrmDatosClientesPtoVta.qrClientesGRUPOCLIENTEChange(Sender: TField);
begin
  inherited;
  Refrescar;
end;


procedure TfrmDatosClientesPtoVta.qrClientesIDENTIFICACIONValidate(Sender: TField);
Var
  qfind  : TAdoQuery;
  b      : boolean;
  Limpio : String;
begin
  inherited;
  If (qrClientes.State = dsInsert) Or (qrClientes.State = dsEdit) Then
  Begin
      qfind := DM.NewQuery;
      DM.qrParametro.close;
      DM.qrParametro.open;
      If (Copy(qrClientesIdentificacion.Value,14,1)='0') and (qrClientesTIPO_DOCUMENTO.AsInteger=2) Then
      begin
          lblEstatus.Caption := EmptyStr;
      end;
      If (qrClientesGrupoCliente.Value = DM.qrParametroGrupoAcc.Value) Or
         (qrClientesGrupoCliente.Value = DM.qrParametroGrupoEmp.Value) Or
         (qrClientesGrupoCliente.Value = DM.qrParametroGrupoVip.Value) Or
         (qrClientesGrupoCliente.Value = DM.qrParametroGrupoPriv.Value) And
         (qrClientesIDENTIFICACION.Value <> EmptyStr) Then
      Begin
         qfind.Close;
         qfind.SQL.Text := ' SELECT * FROM PTCliente '+
                           ' WHERE Identificacion = :reg '+
                           ' AND ClienteId <> :cod '+
                           ' AND ESTATUS = '+#39+'0'+#39+
                           ' AND DataAreaId = ' + #39 + DM.CurEmpresa + #39;
         If qrClientesTIPO_DOCUMENTO.AsInteger=2 then
         begin
            Limpio  := DM.Cortar_Char('-', qrClientesIDENTIFICACION.Value+'0');
            qfind.Parameters[0].Value := FormatFloat('000-0000000-00', StrToInt64(Limpio))
         end
         else
            qfind.Parameters[0].Value := qrClientesIDENTIFICACION.Value;
//         qfind.Parameters[0].Value := qrClientesIDENTIFICACION.Value;
         qfind.Parameters[1].Value := qrClientesClienteID.Value;
         qfind.Open;
         If (qfind.RecordCount > 0) Then
         begin
             If (EtMensajeDlg(' El n�mero de c�dula debe ser �nico.  El cliente '+ qfind.FieldByName('Nombre').AsString +') lo tiene registrado. '+ #13 +
                              ' Desea seleccionar este cliente?',etConfirmacion,[etSi,etNo],1,dm.Imagenes.Items[5].Bitmap,true) = mryes) then
              begin
                 If Factura_St = 'T' then
                 begin
                   frmMain.frmTar.qrTarjeta.Edit;
                   frmMain.frmTar.qrTarjetaPacienteId.Value   := qfind.Fieldbyname('ClienteID').AsString;
                   frmMain.frmTar.lblNombrePaciente.Caption   := qfind.Fieldbyname('Nombre').AsString;
                   exit;
                 end;
                 frmMain.CustPtoVta := qfind.Fieldbyname('ClienteID').AsString;
                 qrClientes.BookMark;
                 qrClientes.Cancel;
                 qrClientes.Edit;
                 qrClientes.GetBookMark;
                 qrClientesCLIENTEID.Value := qfind.Fieldbyname('ClienteID').AsString;
                 qrClientesTipo_Documento.AsString := qfind.Fieldbyname('Tipo_Documento').AsString;
                 qrClientesIdentificacion.AsString := qfind.Fieldbyname('Identificacion').AsString;
                 qrClientesAfterPost(qfind);
                 If Factura_st = 'I' then
                 Begin
                    frmMain.frmTmp.Val_Paciente;
                 end
                 Else
                 If Factura_st = 'M' then
                 Begin
                    frmMain.frmTmpMod.Val_Paciente;
                 end
                 else
                 If Factura_st = 'C' then
                 Begin
                    frmMain.frmClinica.Val_Paciente;
                 end
                 else
                 If Factura_st = 'N' then
                 Begin
                    frmMain.frmTmpNCR.Val_Paciente;
                 end
                 else
                 If Factura_st = 'F' then
                 Begin
                    frmMain.frmTmpND.Val_Paciente;
                 end;
                 FreeAndNil(qfind);
             end
             else
             begin
                 FreeAndNil(qfind);
                 qrClientes.Cancel;
             end;
         end;
      End;
  End;
End;


procedure TfrmDatosClientesPtoVta.qrClientesNewRecord(DataSet: TDataSet);
Var RecId: Int64;
begin
  inherited;
  RecId := DM.Get_Secuencia_Id();
  DM.qrParametro.Close;
  DM.qrParametro.Open;
  With DM.qrDocumento, sql do
  begin
    Close;
    Clear;
    Text :='Select * From PtDocumento Where TipoDocID IN (2,3,4)';
    Open;
  end;
  qrClientesDATAAREAID.Value          := DM.CurEmpresa;
  qrClientesRECID.Value               := RecId;
  qrClientesSexo.Value                := -1;
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
  cbSexo.ItemIndex                    := -1;
  edNombre.Style.Font.Color           := clBlack;
  cbSexo.Style.Font.Color             := clBlack;
  edFechaBorn.Style.Font.Color        := clBlack;
  chkNombre.checked                   := False;
  chkSexo.checked                     := False;
  chkFechaBorn.checked                := False;
  qrClientesGrupoPrecio.Value         := '';
  qrClientesFormaPago.Value           := 'EFE';
  qrClientesQuienPaga.Value           := 'EMP';
  qrClientesQuienPaga.Value           := 'EMP';
  qrClientesTipoCliente.Value         := 'PRI';
  qrClientesEntregarResultados.Value  := 'EMP';
  lblEstatus.Caption                  := EmptyStr;
  qrClientesGrupoCliente.Value        := DM.qrParametroGrupoPriv.Value;
  qrClientesMonedaID.Value            := DM.qrParametroMonedaID.Value;
  lcDatosGrupos.Enabled               := False;
  lcDatosTipos.Enabled                := False;
  CbTipodeCliente.Properties.ReadOnly := True;
  CbGrupoClientes.Properties.ReadOnly := True;
  imgFoto.Picture                     := Nil;
  tsMain.Enabled                      := False;
  tsMain.Visible                      := False;
  tsMain.TabVisible                   := False;
  pcDatos.ActivePage                  := tsDatos;
  cbExtDocumento.SetFocus;
end;


procedure TfrmDatosClientesPtoVta.qrClientesORIGENChange(Sender: TField);
begin
  inherited;
  Refrescar;
end;


procedure TfrmDatosClientesPtoVta.Refrescar;
Var
  Limpio : String;
  qfind : TAdoQuery;
begin
end;


procedure TfrmDatosClientesPtoVta.qrClientesAfterOpen(DataSet: TDataSet);
begin
  inherited;
  buscar := True;
end;

procedure TfrmDatosClientesPtoVta.qrClientesAfterPost(DataSet: TDataSet);
begin
 If (frmMain.CustPtoVta <> '') Then
   Begin
     DM.qrParametro.close;
     DM.qrParametro.open;
     If Factura_St = 'T' then
     begin
       frmMain.frmTar.qrTarjeta.Edit;
       frmMain.frmTar.qrTarjetaPacienteId.Value   := qrClientes.Fieldbyname('ClienteID').AsString;
       frmMain.frmTar.lblNombrePaciente.Caption   := qrClientes.Fieldbyname('Nombre').AsString;
       exit;
     end;
     If Factura_st = 'I' then
     Begin
         If ( (frmMain.frmTmp.qrEntradaPacienteOrigen.IsNull) Or
              (frmMain.frmTmp.qrEntradaPacienteOrigen.Value = '') Or
              (frmMain.frmTmp.qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoVip.Value) Or
              (frmMain.frmTmp.qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoAcc.Value) Or
              (frmMain.frmTmp.qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoEmp.Value) Or
              (frmMain.frmTmp.qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoPriv.Value) ) Then
           Begin
             frmMain.frmTmp.qrEntradaPacienteClienteID.Value := '';
             frmMain.frmTmp.qrEntradaPacientePacienteID.Value := '';
             frmMain.frmTmp.Agregar_Pacientes(frmMain.CustPtoVta);
             frmMain.frmTmp.Agregar_Clientes(frmMain.CustPtoVta);
           End
         Else
           Begin
             frmMain.frmTmp.qrEntradaPacientePacienteID.Value := '';
             frmMain.frmTmp.Agregar_Pacientes(frmMain.CustPtoVta);

             If ( (frmMain.frmTmp.qrEntradaPacienteClienteID.IsNull) Or
                  (frmMain.frmTmp.qrEntradaPacienteClienteID.Value = '') ) Then
               Begin
                 frmMain.frmTmp.qrEntradaPacienteClienteID.Value := '';
                 frmMain.frmTmp.Agregar_Clientes(frmMain.CustPtoVta);
               End;
           End;
     End else  If Factura_st = 'M' then
     Begin
         If ( (frmMain.frmTmpMod.qrEntradaPacienteOrigen.IsNull) Or
              (frmMain.frmTmpMod.qrEntradaPacienteOrigen.Value = '') Or
              (frmMain.frmTmpMod.qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoVip.Value) Or
              (frmMain.frmTmpMod.qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoAcc.Value) Or
              (frmMain.frmTmpMod.qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoEmp.Value) Or
              (frmMain.frmTmpMod.qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoPriv.Value) ) Then
           Begin
             frmMain.frmTmpMod.qrEntradaPacienteClienteID.Value := '';
             frmMain.frmTmpMod.qrEntradaPacientePacienteID.Value := '';
             frmMain.frmTmpMod.Agregar_Pacientes(frmMain.CustPtoVta);
             frmMain.frmTmpMod.Agregar_Clientes(frmMain.CustPtoVta);
           End
         Else
           Begin
             frmMain.frmTmpMod.qrEntradaPacientePacienteID.Value := '';
             frmMain.frmTmpMod.Agregar_Pacientes(frmMain.CustPtoVta);

             If ( (frmMain.frmTmpMod.qrEntradaPacienteClienteID.IsNull) Or
                  (frmMain.frmTmpMod.qrEntradaPacienteClienteID.Value = '') ) Then
               Begin
                 frmMain.frmTmpMod.qrEntradaPacienteClienteID.Value := '';
                 frmMain.frmTmpMod.Agregar_Clientes(frmMain.CustPtoVta);
               End;
           End;
     End else  If Factura_st = 'C' then
     Begin
         If ( (frmMain.frmClinica.qrEntradaPacienteOrigen.IsNull) Or
              (frmMain.frmClinica.qrEntradaPacienteOrigen.Value = '') Or
              (frmMain.frmClinica.qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoVip.Value) Or
              (frmMain.frmClinica.qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoAcc.Value) Or
              (frmMain.frmClinica.qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoEmp.Value) Or
              (frmMain.frmClinica.qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoPriv.Value) ) Then
           Begin
             frmMain.frmClinica.qrEntradaPacienteClienteID.Value := '';
             frmMain.frmClinica.qrEntradaPacientePacienteID.Value := '';
             frmMain.frmClinica.Agregar_Pacientes(frmMain.CustPtoVta);
             frmMain.frmClinica.Agregar_Clientes(frmMain.CustPtoVta);
           End
         Else
           Begin
             frmMain.frmClinica.qrEntradaPacientePacienteID.Value := '';
             frmMain.frmClinica.Agregar_Pacientes(frmMain.CustPtoVta);

             If ( (frmMain.frmClinica.qrEntradaPacienteClienteID.IsNull) Or
                  (frmMain.frmClinica.qrEntradaPacienteClienteID.Value = '') ) Then
               Begin
                 frmMain.frmClinica.qrEntradaPacienteClienteID.Value := '';
                 frmMain.frmClinica.Agregar_Clientes(frmMain.CustPtoVta);
               End;
           End;
     End else  If Factura_st = 'N' then
     Begin
         If ( (frmMain.frmTmpNCR.qrEntradaPacienteOrigen.IsNull) Or
              (frmMain.frmTmpNCR.qrEntradaPacienteOrigen.Value = '') Or
              (frmMain.frmTmpNCR.qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoVip.Value) Or
              (frmMain.frmTmpNCR.qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoAcc.Value) Or
              (frmMain.frmTmpNCR.qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoEmp.Value) Or
              (frmMain.frmTmpNCR.qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoPriv.Value) ) Then
           Begin
             frmMain.frmTmpNCR.qrEntradaPacienteClienteID.Value := '';
             frmMain.frmTmpNCR.qrEntradaPacientePacienteID.Value := '';
             frmMain.frmTmpNCR.Agregar_Pacientes(frmMain.CustPtoVta);
             frmMain.frmTmpNCR.Agregar_Clientes(frmMain.CustPtoVta);
           End
         Else
           Begin
             frmMain.frmTmpNCR.qrEntradaPacientePacienteID.Value := '';
             frmMain.frmTmpNCR.Agregar_Pacientes(frmMain.CustPtoVta);

             If ( (frmMain.frmTmpNCR.qrEntradaPacienteClienteID.IsNull) Or
                  (frmMain.frmTmpNCR.qrEntradaPacienteClienteID.Value = '') ) Then
               Begin
                 frmMain.frmTmpNCR.qrEntradaPacienteClienteID.Value := '';
                 frmMain.frmTmpNCR.Agregar_Clientes(frmMain.CustPtoVta);
               End;
           End;
     End else  If Factura_st = 'F' then
     Begin
         If ( (frmMain.frmTmpND.qrEntradaPacienteOrigen.IsNull) Or
              (frmMain.frmTmpND.qrEntradaPacienteOrigen.Value = '') Or
              (frmMain.frmTmpND.qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoVip.Value) Or
              (frmMain.frmTmpND.qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoAcc.Value) Or
              (frmMain.frmTmpND.qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoEmp.Value) Or
              (frmMain.frmTmpND.qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoPriv.Value) ) Then
           Begin
             frmMain.frmTmpND.qrEntradaPacienteClienteID.Value := '';
             frmMain.frmTmpND.qrEntradaPacientePacienteID.Value := '';
             frmMain.frmTmpND.Agregar_Pacientes(frmMain.CustPtoVta);
             frmMain.frmTmpND.Agregar_Clientes(frmMain.CustPtoVta);
           End
         Else
           Begin
             frmMain.frmTmpND.qrEntradaPacientePacienteID.Value := '';
             frmMain.frmTmpND.Agregar_Pacientes(frmMain.CustPtoVta);

             If ( (frmMain.frmTmpND.qrEntradaPacienteClienteID.IsNull) Or
                  (frmMain.frmTmpND.qrEntradaPacienteClienteID.Value = '') ) Then
               Begin
                 frmMain.frmTmpND.qrEntradaPacienteClienteID.Value := '';
                 frmMain.frmTmpND.Agregar_Clientes(frmMain.CustPtoVta);
               End;
           End;
     End;
   End;
end;


procedure TfrmDatosClientesPtoVta.qrClientesAfterScroll(DataSet: TDataSet);
begin
  inherited;
  Refrescar;
end;


//Procesando el Usuario de Internet de Este Cliente.
procedure TfrmDatosClientesPtoVta.Procesar_Usuario;
Var
  Valor : Boolean;
  Pass2, Clave, i : Integer;
  Limpio, Usuario, Useralt, Tipo : String;
begin
  DM.qrParametro.Close;
  DM.qrParametro.Open;

  //Eliminando los Guiones de la Cedula - RNC del Cliente.
  Limpio  := DM.Cortar_Char('-', qrClientesIDENTIFICACION.Value);

  //Creando la Clave de Internet.
  If qrClientesTIPO_DOCUMENTO.AsInteger = 3 Then
    Clave :=  DM.Crear_Clave_Alfa(Copy(Limpio, 1, 20))
  else
    Clave :=  Crear_Clave(Copy(Limpio, 1, 11));
//  Clave :=  Crear_Clave(Copy(Limpio, 1, 11));

  //Creando el Usuario de Internet.
  Usuario :=  Crear_Usuario(qrClientesNombre.Value);

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


  If (qrClientesGrupoCliente.Value = DM.qrParametroGrupoAcc.Value) Or
     (qrClientesGrupoCliente.Value = DM.qrParametroGrupoEmp.Value) Or
     (qrClientesGrupoCliente.Value = DM.qrParametroGrupoVip.Value) Or
     (qrClientesGrupoCliente.Value = DM.qrParametroGrupoPriv.Value) Then
   Tipo := 'P'
 Else
   Tipo := 'C';
   If Not((Trim(Usuario)=EmptyStr) Or (Trim(IntToStr(Clave))=EmptyStr) Or
          (Trim(qrClientesNombre.Value)=EmptyStr) Or (Trim(qrClientesIDENTIFICACION.Value)=EmptyStr) Or
          (Trim(qrClientesClienteId.Value)=EmptyStr))then
   begin
    Insertar_Usuario(Usuario, FormatFloat('00000000', Clave),
                     qrClientesNombre.Value,
                     qrClientesIDENTIFICACION.Value,
                     qrClientesClienteId.Value, Tipo, 'N');
   end;
end;


//Creando la Clave de Internet Segun el Algoritmo de Alejandro Espinosa Curiel.
procedure TfrmDatosClientesPtoVta.cbExtDocumentoPropertiesChange(
  Sender: TObject);
begin
  inherited;
 edCedula.Properties.EditMask := dm.qrDocumento.Fieldbyname('Mascara').AsString;
 edCedula.Update;
end;

Function TfrmDatosClientesPtoVta.Crear_Clave(cedularnc : String) : Integer;
Var
  Numero        : Double;
  Valor,Clave   : Int64;
  Texto,Limpio  : String;
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
Function TfrmDatosClientesPtoVta.Crear_Usuario(nombre : String) : String;
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
Function TfrmDatosClientesPtoVta.Valida_Usuario(usuario : String) : Boolean;
Var
 qfind  : TAdoQuery;
begin
  qfind := DM.Find_Ldr('SELECT * FROM PTUsuariosInternet WHERE UsuarioInternet = :usr', usuario);

  If (qfind.RecordCount > 0) then
    Result := False
  Else
    Result := True;

  FreeAndNil(qfind);
end;


//Insertando el Usuario de Internet Creado.
procedure TfrmDatosClientesPtoVta.Insertar_Usuario(usuario: string; clave: string; name: string; cedula: string;
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
Function TfrmDatosClientesPtoVta.Buscar_User_Internet(Cliente : String) : Boolean;
Var
 qfind  : TAdoQuery;
begin
  qfind := DM.NewQuery;

  qfind.Close;
  qfind.SQL.Text := ' SELECT * FROM PTUsuariosInternet '+
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


procedure TfrmDatosClientesPtoVta.Nuevo_Registro;
Var
  hwndText : THandle;
begin
  keybd_event(VK_Control, MapVirtualKey(VK_Control, 0), 0, 0); //Presionando la Tecla (CRTL).
  keybd_event(Ord('N'), MapVirtualKey(Ord('N'), 0), 0, 0); //Presionando la Tecla (N).
  keybd_event(Ord('N'), MapVirtualKey(Ord('N'), 0), KEYEVENTF_KEYUP, 0); //Soltando la Tecla (N).
  keybd_event(VK_Control, MapVirtualKey(VK_Control, 0), KEYEVENTF_KEYUP, 0); //Soltando la Tecla (CRTL).
end;
end.

