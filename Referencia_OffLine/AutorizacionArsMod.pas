unit AutorizacionArsMod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,TypInfo,
  Dialogs, dxLayoutControl, cxControls, cxTextEdit, cxDBEdit, cxContainer,
  cxEdit, cxCheckBox, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons,
  dbTables,db, cxCurrencyEdit, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, JvMemoryDataset, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid,ADODB,ReferenciaWebService,WebservicePalic, ExtCtrls,
  LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel, LMDSimplePanel,dlgmensajes,
  xmldom, InvokeRegistry, Rio, SOAPHTTPClient, Provider, Xmlxform, DBClient,
  Grids,DBGrids, SenasaRefWS, WsReferenciaAutorizacion, Palic,
  cxLookAndFeels, SimetricaWS,cxNavigator,XSBuiltIns ,
   dxLayoutcxEditAdapters, dxLayoutControlAdapters, LMDControl,Universal;

type
  TfrmAutorizacionArsMod = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    BtAceptar: TcxButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    BtCancelar: TcxButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Item10: TdxLayoutItem;
    txtReclamacion: TcxCurrencyEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    btImprimir: TcxButton;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    cgReclamaciones: TcxGrid;
    dbDatos: TcxGridDBTableView;
    lvDatos: TcxGridLevel;
    dsDatos: TDataSource;
    JvMemoryData1: TJvMemoryData;
    JvMemoryData1Reclamacion: TIntegerField;
    JvMemoryData1Cliente: TStringField;
    JvMemoryData1MontoAfiliado: TCurrencyField;
    JvMemoryData1MontoArs: TCurrencyField;
    JvMemoryData1Total: TCurrencyField;
    JvMemoryData1Estatus: TStringField;
    dbDatosReclamacion: TcxGridDBColumn;
    dbDatosCliente: TcxGridDBColumn;
    dbDatosMontoAfiliado: TcxGridDBColumn;
    dbDatosMontoArs: TcxGridDBColumn;
    dbDatosTotal: TcxGridDBColumn;
    dbDatosEstatus: TcxGridDBColumn;
    txtCliente: TcxCurrencyEdit;
    CurMontoAfiliado: TcxCurrencyEdit;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Group7: TdxLayoutGroup;
    CurTotal: TcxCurrencyEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Group8: TdxLayoutGroup;
    txtEstado: TcxTextEdit;
    dxLayoutControl1Item14: TdxLayoutItem;
    dxLayoutControl1Group10: TdxLayoutGroup;
    cgReclamacionDetalle: TcxGrid;
    dbDatosRec: TcxGridDBTableView;
    lvDatosRec: TcxGridLevel;
    JvMemoryData2: TJvMemoryData;
    dsDatosRec: TDataSource;
    JvMemoryData2Codigo: TIntegerField;
    JvMemoryData2Descripcion: TStringField;
    JvMemoryData2MontoAfiliado: TCurrencyField;
    JvMemoryData2MontoArs: TCurrencyField;
    JvMemoryData2Error: TStringField;
    dbDatosRecCodigo: TcxGridDBColumn;
    dbDatosRecDescripcion: TcxGridDBColumn;
    dbDatosRecMontoAfiliado: TcxGridDBColumn;
    dbDatosRecMontoArs: TcxGridDBColumn;
    dbDatosRecError: TcxGridDBColumn;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group9: TdxLayoutGroup;
    CurMontoTotalPV: TcxCurrencyEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Group12: TdxLayoutGroup;
    txtAfiliado: TcxCurrencyEdit;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxLayoutControl1Group11: TdxLayoutGroup;
    CurDiferencia: TcxCurrencyEdit;
    JvMemoryData1TipoPlan: TStringField;
    txtTipoPlan: TcxTextEdit;
    spMensaje: TLMDSimplePanel;
    Shape1: TShape;
    Label1: TLabel;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    XMLTransformProvider1: TXMLTransformProvider;
    HTTPRIO1: THTTPRIO;
    Memo1: TMemo;
    dxLayoutControl1Item15: TdxLayoutItem;
    CurPorcentajeCob: TcxCurrencyEdit;
    procedure dbDatosRecStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
    procedure HTTPRIO1AfterExecute(const MethodName: string;
      SOAPResponse: TStream);
    procedure BtAceptarClick(Sender: TObject);
    procedure CurDiferenciaPropertiesChange(Sender: TObject);
    procedure txtEstadoPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
//     CCobertura         : cRefCobertura;
     CCobertura         : CoberturaSM;
     CAfiliadoPal       : AfiliadoP;
     CCoberturaSen      : crefsProcedimientos;
     CCoberturaYun      : PrestacionDetalle;
     CAutorizacion      : CotizacionSM;
     CAutorizacionR     : ReclamacionSM;
     CAutorizacionSen   : crefsAutorizacionLaboratorio;
     CAutorizacionPal   : ConsultaP;
     CReclamacionPal    : ReclamacionP;
     CCancelacion       : CancelacionSM;
     CCancelacionPal    : CancelacionP;
     email              : WideString;
     Password           : WideString;
     codArs             : Integer;
     codAfiliado        : Int64;
     codProveedor       : Int64;
     Test               : WideString;
     Descripcion        : array[0..99] of String;
//     ArrCobertura       : ArrayOfCrefCobertura;
     ArrCobertura       : ArrayOfCoberturaSM;
     ArrCoberturaSen    : ArrayOfCrefsProcedimientos;
     ArrCoberturaYun    : ArrayOfPrestacion;
     ArrCoberturaPal    : ArrayOfCobertura;
     CurPrecioArs       : System.Double;
     CurMontoArs        : System.Double;
     CurMontoAF         : System.Double;
     NumeroSession      : Int64;
     AutoYunen          : WideString;
     AutoYunenSt        : Boolean;
     ReclamacionID      : String;
//     WS                 : TReferenciaWebServiceSoap;
     WS                 : SimetricaSoap;
     WSPal              : PalicSoap;
     vURLWSDL           : String;
     WSUniv             : UniversalSoap;
     WSYunen            : WsServicioAutorizacionSoap;
     Mensaje            : WideString;

//      vRecdatben2ObjUser            : TRecDatosBeneficiario2;// Recdatben2ObjUser;
      vRecdatben2ObjUser            : Recdatben2ObjUser;// Recdatben2ObjUser;
//      vArrayOfRecdatben2ObjUser     : ArrayOfTRecDatosBeneficiario2;// ArrayOfRecdatben2ObjUser;
      vArrayOfRecdatben2ObjUser     : ArrayOfRecdatben2ObjUser;// ArrayOfRecdatben2ObjUser;
//      vRecdatben3ObjUser            : TRecDatosBeneficiario3;// Recdatben3ObjUser;
      vRecdatben3ObjUser            : Recdatben4ObjUser;// Recdatben3ObjUser;
     vArrayOfRecDoctor             : WebSvcUtilsUser_prcConsultarprestador_Out;
     vArrayPruebas                 : ArrayOfRecpreObjUser;
     vArrayCodigoCup               : ArrayOfString;
     vArrayPrecioPrueba            : ArrayOfDouble;
     Total_Pruebas                 : Integer;     
     vArrayOfTRecAutorizacionOut   : ArrayOfRecingautObj2User;
     strCobertura                  : array[0..50] of String;
     strDescCobertura              : array[0..50] of String;
     dblMontoRec                   : array[0..50] of Double;
     dblMontoPagado                : array[0..50] of Double;
     strCodResp                    : array[0..50] of String;
     strDescResp                   : array[0..50] of String;
     dblMonto_Pagar                : Double;
     dblMonto_Recl                 : Double;
     strCod_Resp                   : String;
     strCoberturaR                 : array[0..50] of String;
     strDescCoberturaR             : array[0..50] of String;
     dblMontoRecR                  : array[0..50] of Double;
     dblMontoPagadoR               : array[0..50] of Double;
     strCodRespR                   : array[0..50] of String;
     strDescRespR                  : array[0..50] of String;
     dblMonto_PagarR               : Double;
     dblMonto_ReclR                : Double;
     strVal_Afiliado               : String;
     strTipo_PlanAf                : String;
     strNum_Session                : String;
     strCancelacion                : String;
     Num_Reclamacion               : String;
     strCod_RespR                  : String;
     SCobertura                    : String;
     CantCobertura                 : String;
     Monto_Autorizado              : Double;
     Valor_Copago                  : Double;
     StrMensaje                    : String;
     blnAutoriza                   : Boolean;
  public
    { Public declarations }
    noseguro            : TcxStyle;
    seguro              : TcxStyle;    
    ValorCobertura : Double;
    Confirmado, Rechazado, AutoConfirmar : Integer;
    Aprobacion, ConfirmadoPor, Seguroid, Nombre, Origen : String;

    procedure Run;
    procedure Actualizar;
  end;

var
  frmAutorizacionArsMod: TfrmAutorizacionArsMod;

implementation

uses ActionsDM, DataModule, Main, PuntoVentaMod,XMLIntf, XMLDoc, SoapConst, UInterfaseAs400,FMTBcd;

{$R *.dfm}

procedure TfrmAutorizacionArsMod.BtAceptarClick(Sender: TObject);
Var qinsert         : TADOQuery;
    qInsertD        : TADOQuery;
    I,x               : Integer;
    NumCancelacion  : TXSDecimal;
    strAutorizacion : WideString;
    WebId           : TXSDecimal;
    Telefono_Pac    : String;
begin
  Screen.Cursor := crHourGlass;
  CurMontoAF  :=0;
  CurMontoArs :=0;
  if txtEstado.Text='Pendiente' then
  begin
    if (dm.GrupoArs = GrupoArsSDS) then
    begin
        CAutorizacionR  :=  ReclamacionSM.Create;
        Try
          spMensaje.Visible     := True;
          CAutorizacionR        := GetSimetricaSoap(false,Dm.vURLWSDL).ReclamacionPorCoberturas(Dm.codArs,ArrCobertura,StrToInt64(txtCliente.Text),Dm.codProveedor,Dm.Complementariedad,StrToInt64(Dm.Cod_Doctor));
        Except On E: Exception do
          begin
            spMensaje.Visible    := False;
            Raise exception.CreateFmt('Error Creando Reclamación ó Reclamación Ars Humano ó Reservas.  Error='+E.Message, []);
          End;
        end;
        spMensaje.Visible    := False;
        If CAutorizacionR.Error <> EmptyStr then
        begin
            EtMensajeDlg(CAutorizacionR.Error, etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
            Screen.Cursor := crDefault;
            exit;
        end;
        CurMontoArs             := CAutorizacionR.MontoArs;
        CurMontoAfiliado.Value  := CAutorizacionR.DiferenciaAfiliado;
        txtTipoPlan.Text        := Dm.TipoPlan;
        txtAfiliado.Text        := Dm.Afiliado;
        CurTotal.Value          := CAutorizacionR.DiferenciaAfiliado+CAutorizacionR.MontoArs;
        if CurTotal.Value > 0 then
          CurPorcentajeCob.Value  := ((((CAutorizacionR.DiferenciaAfiliado+CAutorizacionR.MontoArs)-(CAutorizacionR.DiferenciaAfiliado))*100))/(CAutorizacionR.DiferenciaAfiliado+CAutorizacionR.MontoArs);
        CurMontoTotalPV.Value   := CurPrecioArs;
        CurDiferencia.Value     := CurTotal.Value - CurMontoTotalPV.Value;
        DsDatosRec.Enabled := False;
        if not JvMemoryData2.Active then
          JvMemoryData2.Active := true;
        JvMemoryData2.Close;
        JvMemoryData2.Open;
        x:=0;
        for x := 0 to length(CAutorizacionR.ListaCoberturas)-1 do
        begin
              JvMemoryData2.Append;
              JvMemoryData2Codigo.Asstring          := CAutorizacionR.ListaCoberturas[x].Codigo;
              JvMemoryData2Descripcion.AsString     := Descripcion[x];
              JvMemoryData2MontoAfiliado.AsFloat    := CAutorizacionR.ListaCoberturas[x].MontoNoCubierto;
              JvMemoryData2MontoArs.AsFloat         := CAutorizacionR.ListaCoberturas[x].MontoIndemizado;
              JvMemoryData2Error.AsString           := CAutorizacionR.ListaCoberturas[x].Error;
              Next;
        end;
        JvMemoryData2.First;
        DsDatosRec.Enabled := True;
        if CurTotal.Value = 0 then
        begin
              Screen.Cursor     := crDefault;
              spMensaje.Visible := False;
              btAceptar.Enabled := False;
              EtMensajeDlg('Monto cubierto No puede ser cero(0).  Consulte con un representante.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
              exit;
        end;
    end
    else
    if (dm.GrupoArs = GrupoArsPalic) then
    begin
        Telefono_Pac    :=  StringReplace(dm.Telefono_Pac, '(', '', [rfReplaceAll, rfIgnoreCase]);
        Telefono_Pac    :=  StringReplace(Telefono_Pac, ')', '', [rfReplaceAll, rfIgnoreCase]);
        Telefono_Pac    :=  StringReplace(Telefono_Pac, '-', '', [rfReplaceAll, rfIgnoreCase]);
        Telefono_Pac    :=  StringReplace(Telefono_Pac, ' ', '', [rfReplaceAll, rfIgnoreCase]);        
        CReclamacionPal :=  ReclamacionP.Create;
        Try
          spMensaje.Visible   := True;
          CReclamacionPal     := GetPalicSoap(false,Dm.vURLWSDL).fProcesa_reclamacion(dm.Num_Session,dm.TipoPlan,SCobertura,CantCobertura,dm.Tipo_Doctor,dm.Cod_Doctor,dm.Nombre_Doctor,'Web_Service','null',StrToInt64(Telefono_Pac));
        Except On E: Exception do
          begin
            spMensaje.Visible   := False;
            Raise exception.CreateFmt('Error Creando Reclamación ó Reclamación Ars Palic.  Error='+E.Message, []);
          End;
        end;
        spMensaje.Visible   := False;
        If CReclamacionPal.Cod_Respuesta <> '00' then
        begin
            EtMensajeDlg(CReclamacionPal.Cod_Respuesta, etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
            Screen.Cursor := crDefault;
            exit;
        end;
        CurMontoAfiliado.Value  := CReclamacionPal.Total_Monto_Reclamado-CReclamacionPal.Total_Monto_Pagado;
        CurMontoArs             := CReclamacionPal.Total_Monto_Pagado;
        CurMontoAF              := CReclamacionPal.Total_Monto_Paciente;
        txtTipoPlan.Text        := Dm.TipoPlan;
        txtAfiliado.Text        := Dm.Afiliado;
        CurTotal.Value          := CReclamacionPal.Total_Monto_Reclamado;
        If CReclamacionPal.Total_Monto_Reclamado > 0 then
          CurPorcentajeCob.Value  := ((CReclamacionPal.Total_Monto_Pagado/CReclamacionPal.Total_Monto_Reclamado)*100);
        CurMontoTotalPV.Value   := CurPrecioArs;
        CurDiferencia.Value     := CurTotal.Value - CurMontoTotalPV.Value;
        DsDatosRec.Enabled := False;
        if not JvMemoryData2.Active then
          JvMemoryData2.Active := true;
        JvMemoryData2.Close;
        JvMemoryData2.Open;
        x:=0;
        for x := 0 to length(CReclamacionPal.ListaCoberturas)-1 do
        begin
              JvMemoryData2.Append;
              JvMemoryData2Codigo.Asstring          := CReclamacionPal.ListaCoberturas[x].Cod_Cobertura;
              JvMemoryData2Descripcion.AsString     := CReclamacionPal.ListaCoberturas[x].Desc_Cobertura;
              JvMemoryData2MontoAfiliado.AsFloat    := CReclamacionPal.ListaCoberturas[x].Monto_Reclamado - CReclamacionPal.ListaCoberturas[x].Monto_Pagado;
              JvMemoryData2MontoArs.AsFloat         := CReclamacionPal.ListaCoberturas[x].Monto_Pagado;
              JvMemoryData2Error.AsString           := CReclamacionPal.ListaCoberturas[x].Desc_Resp;
              Next;
        end;
        JvMemoryData2.First;
        DsDatosRec.Enabled := True;
        if CurTotal.Value = 0 then
        begin
              Screen.Cursor     := crDefault;
              spMensaje.Visible := False;
              btAceptar.Enabled := False;
              EtMensajeDlg('Monto cubierto No puede ser cero(0).  Consulte con un representante.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
              exit;
        end;
    end
    else
    if (dm.GrupoArs = GrupoArsSenasa) then
    begin
        Try
          spMensaje.Visible   := True;
          CAutorizacionSen :=   GetTSenasaRefWSSoap(false,Dm.vURLWSDL).Aceptar(CAutorizacionSen);
        Except On E: Exception do
          begin
            spMensaje.Visible   := False;
            Raise exception.CreateFmt('Error Creando Reclamación ó Reclamación Ars Senasa.  Error='+E.Message, []);
          End;
        end;
        spMensaje.Visible   := False;
        txtReclamacion.Text     := CAutorizacionSen.NAP;
        CurMontoAfiliado.Value  := CAutorizacionSen.ValorCopago;
        CurMontoArs             := CAutorizacionSen.MontoAutorizado;
        txtTipoPlan.Text        := Dm.TipoPlan;
        txtAfiliado.Text        := Dm.Afiliado;
        CurTotal.Value          := CAutorizacionSen.MontoAutorizado+CAutorizacionSen.ValorCopago;
        if CurTotal.Value > 0 then
            CurPorcentajeCob.Value  := (((CurTotal.Value-CurMontoAfiliado.Value))*100)/(CurTotal.Value);
        CurMontoTotalPV.Value   := CurPrecioArs;
        CurDiferencia.Value     := CurTotal.Value - CurMontoTotalPV.Value;
        DsDatosRec.Enabled      := False;
        if not JvMemoryData2.Active then
          JvMemoryData2.Active  := true;
        JvMemoryData2.Close;
        JvMemoryData2.Open;
        x:=0;
        for x := 0 to length(CAutorizacionSen.ListaProcedimientos)-1 do
        begin
              JvMemoryData2.Append;
              JvMemoryData2Codigo.Asstring          := CAutorizacionSen.ListaProcedimientos[x].SIMON;
              JvMemoryData2Descripcion.Asstring     := CAutorizacionSen.ListaProcedimientos[x].Descripcion;
              JvMemoryData2MontoAfiliado.AsFloat    := CAutorizacionSen.ListaProcedimientos[x].Tarifa;
              JvMemoryData2MontoArs.AsFloat         := CAutorizacionSen.ListaProcedimientos[x].CoPago;
              JvMemoryData2Error.AsString           := GetEnumName(TypeInfo(crefsEstatusProcedimiento),integer(CAutorizacionSen.ListaProcedimientos[x].Estatus));
              Next;
        end;
        JvMemoryData2.First;
        DsDatosRec.Enabled := True;
        if CurTotal.Value = 0 then
        begin
            Screen.Cursor     := crDefault;
            spMensaje.Visible := False;
            btAceptar.Enabled := False;
            EtMensajeDlg('Monto cubierto No puede ser cero(0).  Consulte con un representante.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
            exit;
        end;
        JvMemoryData2.First;
        DsDatosRec.Enabled := True;
    end
    else
    if (dm.GrupoArs = GrupoArsYunen) then
    begin
        WSYunen           := GetWsServicioAutorizacionSoap();
        WSYunen.CrearAutorizacion('01',dm.Id_Trans,AutoYunen,Mensaje);
        If Trim(Mensaje) <> EmptyStr then
        Begin
            Screen.Cursor     := crDefault;
            spMensaje.Visible := False;
            EtMensajeDlg(Mensaje, etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
            exit;
        end;
        txtReclamacion.Text     := AutoYunen;
        CurMontoArs             := Monto_Autorizado;
        CurMontoAF              := Valor_Copago;
    end;

    ReclamacionID   :=  DM.Get_Secuencia_Big('REC',DM.CurSucursal);
    I:=0;
    qinsert := DM.NewQuery;
    Try
        DM.DataBase.BeginTrans;
        With qinsert,sql do
        begin
             Close;
             Clear;
             Add(' INSERT INTO PTRECLAMO (Reclamoid, Muestrano, Afiliado, TipoPlan, Fecha, Monto, Montoafiliado,'+
                 ' Montoars, Numero, Numerosession, Estado, UserID, ClienteID) '+
                 ' VALUES (:Reclamoid,:Muestrano,:Afiliado,:TipoPlan,:Fecha,:Monto,:MontoAfiliado,:Montoars,:Numero,:Numerosession,:Estado,:UserID,:ClienteID)');
             Parameters.ParamByName('Reclamoid').Value    := ReclamacionID;
             Parameters.ParamByName('Muestrano').Value    := frmMain.frmTmpMod.qrEntradaPacienteMuestrano.Asstring;
             Parameters.ParamByName('Afiliado').Value     := txtCliente.Text;
             Parameters.ParamByName('TipoPlan').Value     := txtTipoPlan.Text;
             Parameters.ParamByName('Fecha').Value        := DM.SystemDate;
             Parameters.ParamByName('Monto').Value        := CurTotal.value;
             Parameters.ParamByName('Montoafiliado').Value:=CurMontoAF;
             Parameters.ParamByName('Montoars').Value     :=CurMontoArs;
             If (dm.GrupoArs = GrupoArsSDS) Then
             begin
                Parameters.ParamByName('Numero').Value       :=CAutorizacionR.NoReclamacion;
                Parameters.ParamByName('Numerosession').Value:=CAutorizacionR.NumeroSession;
                Parameters.ParamByName('Estado').Value        :=2;
             end
             else if (dm.GrupoArs = GrupoArsPalic) then
             begin
                Parameters.ParamByName('Numero').Value        :=Copy(CReclamacionPal.Num_Reclamacion,LastDelimiter('-',CReclamacionPal.Num_Reclamacion)+1,8);
                Parameters.ParamByName('Numerosession').Value :=dm.Num_Session;
                Parameters.ParamByName('Estado').Value    :=2;
             end
             else If (dm.GrupoArs = GrupoArsSenasa) Then
             begin
                Parameters.ParamByName('Numero').Value    :=CAutorizacionSen.NAP;
                Parameters.ParamByName('Numerosession').Value:='0';
                Parameters.ParamByName('Estado').Value    :=2;
             end;
             Parameters.ParamByName('UserID').Value       := DM.CurUser;
             Parameters.ParamByName('ClienteID').Value    := frmMain.frmTmpMod.qrEntradaPacienteClienteID.Asstring;
             ExecSQL;
        end;
        DsDatosRec.Enabled := False;
        qinsert := DM.NewQuery;
        JvMemoryData2.First;
        While not JvMemoryData2.Eof do
        begin
            If JvMemoryData2Codigo.Asinteger > 0 then
            Begin
                I:=I+1;
                With qinsert,sql do
                begin
                      Close;
                      Clear;
                      Add(' INSERT INTO PTRECLAMODETALLE (Reclamoid, Muestrano, Cobertura,Secuencia, Detalles, Montoafiliado, Montoars) '+
                         ' VALUES (:Reclamoid,:Muestrano,:Cobertura,:Secuencia,:Detalles,:Montoafiliado,:Montoars)');
                      Parameters.ParamByName('Reclamoid').Value     := ReclamacionID;
                      Parameters.ParamByName('Muestrano').Value     := frmMain.frmTmpMod.qrEntradaPacienteMuestrano.Asstring;
                      Parameters.ParamByName('Cobertura').Value     := JvMemoryData2Codigo.Asstring;
                      Parameters.ParamByName('Secuencia').Value     := I;
                      Parameters.ParamByName('Detalles').Value      := JvMemoryData2Descripcion.Asstring;
                      Parameters.ParamByName('Montoafiliado').Value := JvMemoryData2MontoAfiliado.AsCurrency;
                      Parameters.ParamByName('Montoars').Value      := JvMemoryData2MontoArs.AsCurrency;
                      ExecSQL;
                end;
            end;
            JvMemoryData2.Next;
        end;
        DM.DataBase.CommitTrans;
        JvMemoryData2.First;
        DsDatosRec.Enabled := True;

   Except On
       E: Exception do
      begin
       Screen.Cursor := crDefault;
       Showmessage(''+E.ClassName);
       Showmessage(''+E.Message);
       DM.DataBase.RollbackTrans;
       Raise exception.CreateFmt('Error Creando Reclamación ó Reclamación Detalle.', []);
      End;
   End;
   btAceptar.Caption:='F9 = Cancelar';
   if (dm.GrupoArs = GrupoArsSDS) then
      txtReclamacion.Value :=CAutorizacionR.NoReclamacion
   else If(dm.GrupoArs = GrupoArsPalic) then
      txtReclamacion.Value :=StrToInt(Copy(CReclamacionPal.Num_Reclamacion,LastDelimiter('-',CReclamacionPal.Num_Reclamacion)+1,8))
   else If(dm.GrupoArs = GrupoArsSenasa) then
      txtReclamacion.Text :=CAutorizacionSen.NAP
   else If(dm.GrupoArs = GrupoArsYunen) then
      txtReclamacion.Text :=AutoYunen;

   txtEstado.Text :='Activa';
   Confirmado:=1;
   Rechazado:=0;
   Actualizar;
   ShowMessage('Reclamación creada satisfactóriamente.');
   FreeAndNil(qinsert);
   FreeAndNil(qinsertD);
   CAutorizacionSen.Free;
   CReclamacionPal.Free;   
   If BtCancelar.Enabled = True then BtCancelar.SetFocus;
  end
  else
  if (txtEstado.Text='Activa') Then
  begin
    if (dm.GrupoArs = GrupoArsSDS) then
    begin
        CCancelacion  :=CancelacionSM.Create;
        CCancelacion  :=GetSimetricaSoap(false,Dm.vURLWSDL).CancelarAutorizacion(Dm.CodArs,NumeroSession,'Cancelada Por '+DM.CurUser)
    end
    else if (dm.GrupoArs = GrupoArsUniversal) then
    begin
        WebId          := TXSDecimal.Create;
        NumCancelacion := TXSDecimal.Create;
        WebId.AsBcd    := DoubleToBcd(dm.dWebID);
        NumCancelacion := WSUniv.AnularAutorizacion(WebId,'Cancelado por Usuario'+dm.CurUser);
    end
    else if (dm.GrupoArs = GrupoArsPalic) then
    begin
      CCancelacionPal  := CancelacionP.Create;
      CCancelacionPal  := GetPalicSoap(false,Dm.vURLWSDL).fcancela_reclamacion(InttoStr(dm.CodProveedor),frmMain.frmTmpMod.qrEntradaPacientePolizaID.Asstring,txtReclamacion.Text,dm.Num_Session,'Cancelada Por '+DM.CurUser);
      If CCancelacionPal.Cod_Respuesta<>'00' then
      begin
         ShowMessage('Error Cancelando');
         Exit;
      end;
    end
    else
    if (dm.GrupoArs = GrupoArsSenasa) then
        CAutorizacionSen     := GetTSenasaRefWSSoap(false,Dm.vURLWSDL).Anular('Anulacion Reclamación por Oficial '+dm.CurUser,txtReclamacion.Text)
    else
    If (dm.GrupoArs = GrupoArsYunen) then
    begin
          WSYunen := GetWsServicioAutorizacionSoap();
          WSYunen.AnularAutorizacion('01', txtReclamacion.Text,'LA',blnAutoriza,Mensaje);
          if Not blnAutoriza then
          Begin
                Showmessage('Cancelacion Reclamación No. '+txtReclamacion.Text+' NO se realizó.  Verifique.');
                Exit;
          end;
          If Mensaje <> EmptyStr then
          begin
                Showmessage(Mensaje);
                Exit;
          end;
    end;
    qinsert := DM.NewQuery;
    Try
        With qinsert,sql do
        begin
             Close;
             Clear;
             Add(' Update PTRECLAMO with (rowlock) '+
                 ' Set Estado='+'0'+
                 ' Where Numero='+FloatToStr(txtReclamacion.value));
             ExecSQL;
        end;
        txtEstado.Text :='Cancelada';
        btAceptar.Caption:='F9 = Procesar';
        btAceptar.Enabled := False;
        Confirmado:=0;
        Rechazado:=0;
        Actualizar;
        frmMain.frmTmpMod.qrEntradaPacienteCoberturaPorC.AsCurrency:=0.0;
        frmMain.frmTmpMod.qrEntradaPacienteCoberturaConfirmada.Asinteger:=0;
        frmMain.frmTmpMod.qrEntradaPacienteAprobacionNo.Asstring:=EmptyStr;
        frmMain.frmTmpMod.qrEntradaPacienteAprobacionPor.Asstring:=EmptyStr;
        frmMain.frmTmpMod.ActTotales;
        ShowMessage('Reclamación Cancelada.');
   Except
       Raise exception.CreateFmt('Error Actualizando Reclamación.', []);
    end;
    FreeAndNil(qinsert);
//    FormShow(Sender);
  end;
  Screen.Cursor := crDefault;
end;

procedure TfrmAutorizacionArsMod.CurDiferenciaPropertiesChange(Sender: TObject);
begin
  if CurDiferencia.Value > 0 then
     CurDiferencia.Style.Font.Color:= clGreen
  else if CurDiferencia.Value = 0 then
     CurDiferencia.Style.Font.Color:= clBlack
  else if CurDiferencia.Value < 0 then
     CurDiferencia.Style.Font.Color:= clRed;
end;

procedure TfrmAutorizacionArsMod.dbDatosRecStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  If (frmMain.frmTmpMod.qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSeg.Value) then
  begin
    If (ARecord.Values[dbDatosRecMontoArs.Index] = 0) Then  AStyle := noseguro;
    If (dm.GrupoArs = GrupoArsSenasa) And (Not(ARecord.Values[dbDatosRecError.Index]='EnCobertura')) then AStyle := noseguro;
    If (dm.GrupoArs = GrupoArsSenasa) And (ARecord.Values[dbDatosRecError.Index]='EnCobertura') then AStyle := seguro;
    If (dm.GrupoArs = GrupoArsPalic)  And (Not((ARecord.Values[dbDatosRecError.Index]='ok'))) then AStyle := noseguro;
    If (dm.GrupoArs = GrupoArsPalic)  And (ARecord.Values[dbDatosRecError.Index]='ok') then AStyle := seguro;
    If (dm.GrupoArs = GrupoArsPalic)  And (ARecord.Values[dbDatosRecError.Index]='') then AStyle := seguro;
 end;

end;

procedure TfrmAutorizacionArsMod.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If (key = Vk_Down) Then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);
  If (key = 13) Then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);
  If (key = Vk_Up) Then
     PostMessage(Handle, Wm_NextDlgCtl, 1, 0);

  If (key = Vk_F9) Then btAceptar.Click;

  if (key = 27) then
  begin
   Close;
  end;
end;


procedure TfrmAutorizacionArsMod.FormShow(Sender: TObject);
Var qAutoriza          : TAdoQuery;
    qReclamacion       : TAdoQuery;
    qConfirmacion      : TAdoQuery;
    CodigoCup          : WideString;
    i                  : integer;
    x                  : integer;
    z                  : integer;
    obj                : Currency;
    qinsert            : TADOQuery;
    qInsertD           : TADOQuery;
    Precio             : TXSDecimal;
    Cantidad           : TXSDecimal;
    Fecha_Auth         : TXSDateTime;
begin
  Screen.Cursor := crHourGlass;
  noseguro := TcxStyle.Create(Self);
  noseguro.Color := DM.ColorUrgente;
  noseguro.TextColor := ClBlack;
  seguro := TcxStyle.Create(Self);
  seguro.Color := DM.ColorNormal;
  seguro.TextColor := ClBlack;
  if dm.GrupoArs = GrupoArsSDS then
  begin
          qAutoriza := DM.NewQuery;
          With qAutoriza,sql do
          begin
            qAutoriza.Close;
            qAutoriza.SQL.Text := ' Select Afiliado,Estado,Fecha,Monto,MontoAfiliado,MontoArs,Numero,NumeroSession '+
                                  ' From PtReclamo (nolock) Where Muestrano='+#39+frmMain.frmTmpMod.qrEntradaPacienteMuestrano.Asstring+#39;
            qAutoriza.Open;
            if Not IsEmpty then
            begin
              First;
              DsDatos.Enabled := False;
              if not JvMemoryData1.Active then
                JvMemoryData1.Active := true;
              JvMemoryData1.EmptyTable;
              while not eof do
              begin
                  JvMemoryData1.Append;
                  JvMemoryData1Reclamacion.AsInteger    := fieldbyname('Numero').AsInteger;
                  JvMemoryData1Cliente.AsString         := fieldbyname('Afiliado').AsString;
                  JvMemoryData1MontoAfiliado.AsFloat    := fieldbyname('MontoAfiliado').Asfloat;
                  JvMemoryData1MontoArs.AsFloat         := fieldbyname('MontoArs').Asfloat;
                  JvMemoryData1Total.AsFloat            := fieldbyname('MontoAfiliado').Asfloat+fieldbyname('MontoArs').Asfloat;
                  if fieldbyname('Estado').AsInteger = 0 then
                    JvMemoryData1Estatus.AsString :='Cancelada'
                  else if fieldbyname('Estado').AsInteger = 1 then
                    JvMemoryData1Estatus.AsString :='Pendiente'
                  else if fieldbyname('Estado').AsInteger = 2 then
                    JvMemoryData1Estatus.AsString :='Activa';
                  Next;
              end;
              JvMemoryData1.First;
              DsDatos.Enabled := True;
            end;
          end;
          FreeAndNil(qAutoriza);
          // Desplegar los Datos si estan Confirmados solamente
          qConfirmacion := DM.NewQuery;
          With qConfirmacion,sql do
          begin
            qConfirmacion.Close;
            qConfirmacion.SQL.Text := ' select r.Afiliado,r.TipoPlan,r.Numero,r.MontoAfiliado,r.MontoArs,r.MontoAfiliado+r.MontoArs as Total,Estado,'+
                                  ' d.Cobertura,d.Detalles as Descripcion,d.MontoAfiliado as MontoAfiliadoDet,d.MontoArs as MontoArsDet,r.NumeroSession  from ptreclamo r (nolock) inner join  ptreclamodetalle d (nolock) '+
                                  ' on    r.Muestrano=d.Muestrano '+
                                  ' And   r.Reclamoid=d.Reclamoid '+
                                  ' Where r.Muestrano='+#39+frmMain.frmTmpMod.qrEntradaPacienteMuestrano.Asstring+#39+
                                  ' And   r.Estado='+'2';
            qConfirmacion.Open;
            if Not IsEmpty then
            begin
              First;
              txtCliente.Text         := fieldbyname('Afiliado').Asstring;
              txtReclamacion.Value    := fieldbyname('Numero').Asinteger;
              CurMontoAfiliado.Value  := fieldbyname('MontoAfiliado').AsFloat;
              txtTipoPlan.Text        := fieldbyname('TipoPlan').Asstring;
              CurTotal.Value          := fieldbyname('Total').AsFloat;
              CurPorcentajeCob.Value  := (((fieldbyname('Total').AsFloat)-(fieldbyname('MontoAfiliado').AsFloat))*100)/((fieldbyname('Total').AsFloat));
              txtAfiliado.Text        := Dm.Afiliado;
              NumeroSession           := fieldbyname('Numerosession').Asinteger;
              frmMain.frmTmpMod.qrEntradaPacienteDetalle.First;
              While not frmMain.frmTmpMod.qrEntradaPacienteDetalle.eof do
              begin
                If frmMain.frmTmpMod.qrEntradaPacienteDetalleCoberturaAplica.AsInteger = 1 then
                begin
                  CurPrecioArs    := CurPrecioArs + frmMain.frmTmpMod.qrEntradaPacienteDetallePrecio.Value;
                  if Length(CantCobertura) = 0 then
                    CantCobertura      := CantCobertura+'1'
                  else
                    CantCobertura      := CantCobertura+',1';
                end;
                frmMain.frmTmpMod.qrEntradaPacienteDetalle.Next;
              end;
              CurMontoTotalPV.Value   := CurPrecioArs;
              CurDiferencia.Value     := CurTotal.Value - CurMontoTotalPV.Value;
              if fieldbyname('Estado').AsInteger = 0 then
                 txtEstado.Text :='Cancelada'
              else if fieldbyname('Estado').AsInteger = 1 then
                 txtEstado.Text :='Pendiente'
              else if fieldbyname('Estado').AsInteger = 2 then
                 txtEstado.Text :='Activa';
              DsDatosRec.Enabled := False;
              if not JvMemoryData2.Active then
                JvMemoryData2.Active := true;
              JvMemoryData2.Close;
              JvMemoryData2.Open;
              JvMemoryData2.EmptyTable;
              while not eof do
              begin
                  JvMemoryData2.Append;
                  JvMemoryData2Codigo.AsInteger         := fieldbyname('Cobertura').Asinteger;
                  JvMemoryData2Descripcion.AsString     := fieldbyname('Descripcion').AsString;
                  JvMemoryData2MontoAfiliado.AsFloat    := fieldbyname('MontoAfiliadoDet').Asfloat;
                  JvMemoryData2MontoArs.AsFloat         := fieldbyname('MontoArsDet').Asfloat;
                  Next;
              end;
              JvMemoryData2.First;
              DsDatosRec.Enabled := True;
              btAceptar.Caption:='F9 = Cancelar';
              FreeAndNil(qConfirmacion);
              exit;
            end;
          end;

        // Traer Datos Web Services Cotizacion por Coberturas
          CCobertura    := CoberturaSM.Create;
          CAutorizacion := CotizacionSM.Create;
          i:=0;
          CurPrecioArs:=0;
          z:=frmMain.frmTmpMod.qrEntradaPacienteDetalle.Recordcount;
          frmMain.frmTmpMod.qrEntradaPacienteDetalle.First;
          While not frmMain.frmTmpMod.qrEntradaPacienteDetalle.eof do
          begin
              If frmMain.frmTmpMod.qrEntradaPacienteDetalleCoberturaAplica.AsInteger = 1 then
              begin
                  Setlength(ArrCobertura,length(ArrCobertura)+1);
                  CodigoCup       := frmMain.frmTmpMod.qrEntradaPacienteDetalleCodigoCupID.AsString;
                  Descripcion[i]  := frmMain.frmTmpMod.qrEntradaPacienteDetalleDescripcion.AsString;
                  CurPrecioArs    := CurPrecioArs + frmMain.frmTmpMod.qrEntradaPacienteDetallePrecio.Value;
                  ArrCobertura[length(ArrCobertura)-1]:= CoberturaSM.Create;
                  ArrCobertura[length(ArrCobertura)-1].Codigo := CodigoCup;
                  ArrCobertura[length(ArrCobertura)-1].Descripcion := Descripcion[i];
                  ArrCobertura[length(ArrCobertura)-1].CodigoSalida := '0';
                  ArrCobertura[length(ArrCobertura)-1].CodCobertura := '0';
                  ArrCobertura[length(ArrCobertura)-1].Simon := '0';
                  ArrCobertura[length(ArrCobertura)-1].Error := 'Ninguno';
                  ArrCobertura[length(ArrCobertura)-1].Frecuencia := 1;
                  ArrCobertura[length(ArrCobertura)-1].Servicio := 0;
                  ArrCobertura[length(ArrCobertura)-1].TipoCobertura := 0;
                  ArrCobertura[length(ArrCobertura)-1].Deducible := 0;
                  ArrCobertura[length(ArrCobertura)-1].MontoIndemizado := 0;
                  ArrCobertura[length(ArrCobertura)-1].MontoNocubierto := 0;
                  ArrCobertura[length(ArrCobertura)-1].MontoGlosa := 0;
                  ArrCobertura[length(ArrCobertura)-1].MotivoGlosa := 0;
                  ArrCobertura[length(ArrCobertura)-1].MontoTotal := 0;
                  ArrCobertura[length(ArrCobertura)-1].Estado := True;
                  ArrCobertura[length(ArrCobertura)-1].CoberturaID := 0;
                  Fecha_Auth := TXSDateTime.Create;
                  Fecha_Auth.AsDateTime := dm.Fecha_Server;
                  ArrCobertura[length(ArrCobertura)-1].LastUpdate := Fecha_Auth;
                  i:=i+1;
              end;
              frmMain.frmTmpMod.qrEntradaPacienteDetalle.Next;
          end;
          CAutorizacion           := CotizacionSM.Create;
          Try
            spMensaje.Visible   := True;
            CAutorizacion           := GetSimetricaSoap(false,Dm.vURLWSDL).CotizacionPorCoberturas(Dm.codArs,ArrCobertura,StrToInt64(frmMain.frmTmpMod.qrEntradaPacientePolizaID.Asstring),Dm.codProveedor,Dm.Complementariedad,StrToInt64(Dm.Cod_Doctor));
          except
            on E: Exception do
            begin
              spMensaje.Visible   := False;
              Showmessage(E.Message);
              Exit;
            end;
          End;
          spMensaje.Visible       := False;
          txtCliente.Value        := strtoint64(frmMain.frmTmpMod.qrEntradaPacientePolizaID.Asstring);
          txtReclamacion.Value    := CAutorizacion.NoReclamacion;
          CurMontoAfiliado.Value  := CAutorizacion.DiferenciaAfiliado;
          txtTipoPlan.Text        := Dm.TipoPlan;
          txtAfiliado.Text        := Dm.Afiliado;
          CurTotal.Value          := CAutorizacion.DiferenciaAfiliado+CAutorizacion.MontoArs;
          if CurTotal.Value > 0 then
            CurPorcentajeCob.Value  := (((CurTotal.Value)-(CurMontoAfiliado.Value))*100)/((CurTotal.Value));
          CurMontoTotalPV.Value   := CurPrecioArs;
          CurDiferencia.Value     := CurTotal.Value - CurMontoTotalPV.Value;
          txtEstado.Text          := 'Pendiente';
          DsDatosRec.Enabled := False;
          if not JvMemoryData2.Active then
            JvMemoryData2.Active := true;
          JvMemoryData2.EmptyTable;
          x:=0;
          for x := 0 to  Length(CAutorizacion.ListaCoberturas)-1  do
          begin
              JvMemoryData2.Append;
              JvMemoryData2Codigo.Asstring          := CAutorizacion.ListaCoberturas[x].Codigo;
              JvMemoryData2Descripcion.AsString     := Descripcion[x];
              JvMemoryData2MontoAfiliado.AsFloat    := CAutorizacion.ListaCoberturas[x].MontoNoCubierto;
              JvMemoryData2MontoArs.AsFloat         := CAutorizacion.ListaCoberturas[x].MontoIndemizado;
              JvMemoryData2Error.AsString           := CAutorizacion.ListaCoberturas[x].Error;
              Next;
          end;
          JvMemoryData2.First;
          DsDatosRec.Enabled := True;
          if CurTotal.Value = 0 then
          begin
              Application.ProcessMessages;
              Screen.Cursor     := crDefault;
              spMensaje.Visible := False;
              btAceptar.Enabled := False;
              EtMensajeDlg('Ninguna de las prueba(s) está habil para autorizar.  Consulte con un representante.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
          end;
          if CurTotal.Value > 0 then
            btAceptar.Enabled := True
          else
            btAceptar.Enabled := False;
          btAceptar.Caption:='F9 = Procesar';
          CAutorizacion.Free;
  end
  else
  if dm.GrupoArs = GrupoArsUniversal then
  begin
          WSUniv          := GetUniversalSoap(False,Dm.vURLWSDL);
          qAutoriza := DM.NewQuery;
          With qAutoriza,sql do
          begin
            qAutoriza.Close;
            qAutoriza.SQL.Text := ' Select Afiliado,Estado,Fecha,Monto,MontoAfiliado,MontoArs,Numero,NumeroSession '+
                                  ' From PtReclamo (nolock) Where Muestrano='+#39+frmMain.frmTmpMod.qrEntradaPacienteMuestrano.Asstring+#39;
            qAutoriza.Open;
            if Not IsEmpty then
            begin
              First;
              DsDatos.Enabled := False;
              if not JvMemoryData1.Active then
                JvMemoryData1.Active := true;
              JvMemoryData1.EmptyTable;
              while not eof do
              begin
                  JvMemoryData1.Append;
                  JvMemoryData1Reclamacion.AsInteger    := fieldbyname('Numero').AsInteger;
                  JvMemoryData1Cliente.AsString         := fieldbyname('Afiliado').AsString;
                  JvMemoryData1MontoAfiliado.AsFloat    := fieldbyname('MontoAfiliado').Asfloat;
                  JvMemoryData1MontoArs.AsFloat         := fieldbyname('MontoArs').Asfloat;
                  JvMemoryData1Total.AsFloat            := fieldbyname('MontoAfiliado').Asfloat+fieldbyname('MontoArs').Asfloat;
                  if fieldbyname('Estado').AsInteger = 0 then
                    JvMemoryData1Estatus.AsString :='Cancelada'
                  else if fieldbyname('Estado').AsInteger = 1 then
                    JvMemoryData1Estatus.AsString :='Pendiente'
                  else if fieldbyname('Estado').AsInteger = 2 then
                    JvMemoryData1Estatus.AsString :='Activa';
                  Next;
              end;
              JvMemoryData1.First;
              DsDatos.Enabled := True;
            end;
          end;
          FreeAndNil(qAutoriza);
          // Desplegar los Datos si estan Confirmados solamente
          qConfirmacion := DM.NewQuery;
          With qConfirmacion,sql do
          begin
            qConfirmacion.Close;
            qConfirmacion.SQL.Text := ' select r.Afiliado,r.TipoPlan,r.Numero,r.MontoAfiliado,r.MontoArs,r.MontoAfiliado+r.MontoArs as Total,Estado,'+
                                  ' d.Cobertura,d.Detalles as Descripcion,d.MontoAfiliado as MontoAfiliadoDet,d.MontoArs as MontoArsDet,r.NumeroSession,WebID  from ptreclamo r (nolock) inner join  ptreclamodetalle d (nolock) '+
                                  ' On    r.Muestrano=d.Muestrano '+
                                  ' And   r.Reclamoid=d.Reclamoid '+
                                  ' Where r.Muestrano='+#39+frmMain.frmTmpMod.qrEntradaPacienteMuestrano.Asstring+#39+
                                  ' And   r.Estado='+'2';
            qConfirmacion.Open;
            if Not IsEmpty then
            begin
              First;
              txtCliente.Text         := fieldbyname('Afiliado').Asstring;
              txtReclamacion.Value    := fieldbyname('Numero').Asinteger;
              CurMontoAfiliado.Value  := fieldbyname('MontoAfiliado').AsFloat;
              txtTipoPlan.Text        := fieldbyname('TipoPlan').Asstring;
              txtAfiliado.Text        := Dm.Afiliado;
              CurTotal.Value          := fieldbyname('Total').AsFloat;
              CurPorcentajeCob.Value  := (((fieldbyname('Total').AsFloat)-(fieldbyname('MontoAfiliado').AsFloat))*100)/((fieldbyname('Total').AsFloat));
              NumeroSession           := fieldbyname('Numerosession').Asinteger;
              dm.dWebID               := fieldbyname('WebID').AsFloat;
              if CurTotal.Value = 0 then
              begin
                  Screen.Cursor     := crDefault;
                  spMensaje.Visible := False;
                  btAceptar.Enabled := False;
                  EtMensajeDlg('Monto cubierto No puede ser cero(0).  Consulte con un representante.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
                  exit;
              end;
              frmMain.frmTmpMod.qrEntradaPacienteDetalle.First;
              While not frmMain.frmTmpMod.qrEntradaPacienteDetalle.eof do
              begin
                If frmMain.frmTmpMod.qrEntradaPacienteDetalleCoberturaAplica.AsInteger = 1 then
                begin
                  CurPrecioArs    := CurPrecioArs + frmMain.frmTmpMod.qrEntradaPacienteDetallePrecio.Value;
                end;
                frmMain.frmTmpMod.qrEntradaPacienteDetalle.Next;
              end;
              CurMontoTotalPV.Value   := CurPrecioArs;
              CurDiferencia.Value     := CurTotal.Value - CurMontoTotalPV.Value;
        //      CurMontoArs.Value       := fieldbyname('MontoArs').AsFloat;
              if fieldbyname('Estado').AsInteger = 0 then
                 txtEstado.Text :='Cancelada'
              else if fieldbyname('Estado').AsInteger = 1 then
                 txtEstado.Text :='Pendiente'
              else if fieldbyname('Estado').AsInteger = 2 then
                 txtEstado.Text :='Activa';
              DsDatosRec.Enabled := False;
              if not JvMemoryData2.Active then
                JvMemoryData2.Active := true;
              JvMemoryData2.EmptyTable;
              while not eof do
              begin
                  JvMemoryData2.Append;
                  JvMemoryData2Codigo.AsInteger         := fieldbyname('Cobertura').Asinteger;
                  JvMemoryData2Descripcion.AsString     := fieldbyname('Descripcion').AsString;
                  JvMemoryData2MontoAfiliado.AsFloat    := fieldbyname('MontoAfiliadoDet').Asfloat;
                  JvMemoryData2MontoArs.AsFloat         := fieldbyname('MontoArsDet').Asfloat;
        //          JvMemoryData2Error.AsString           := fieldbyname('Error').AsString;
                  Next;
              end;
              JvMemoryData2.First;
              DsDatosRec.Enabled := True;
              btAceptar.Caption:='F9 = Cancelar';
              FreeAndNil(qConfirmacion);
              exit;
            end;
          end;

        // Traer Datos Web Services Cotizacion por Coberturas
        // Autorizacion universal
        //  Registro Array de pruebas
          i:=0;
          CurPrecioArs:=0;
          CurMontoArs :=0;
          CurMontoAF  :=0;
          SetLength(vArrayPruebas, frmMain.frmTmpMod.qrEntradaPacienteDetalle.Recordcount);
          SetLength( vArrayCodigoCup, frmMain.frmTmpMod.qrEntradaPacienteDetalle.Recordcount);
          SetLength(vArrayPrecioPrueba, frmMain.frmTmpMod.qrEntradaPacienteDetalle.Recordcount);
          frmMain.frmTmpMod.qrEntradaPacienteDetalle.First;
          While not frmMain.frmTmpMod.qrEntradaPacienteDetalle.eof do
          begin
              If frmMain.frmTmpMod.qrEntradaPacienteDetalleCoberturaAplica.AsInteger = 1 then
              begin
                  vArrayCodigoCup[i] := frmMain.frmTmpMod.qrEntradaPacienteDetalleCodigoCupID.AsString;
                  vArrayPrecioPrueba[i] := frmMain.frmTmpMod.qrEntradaPacienteDetallePrecio.AsFloat;
                  CurPrecioArs := CurPrecioArs + frmMain.frmTmpMod.qrEntradaPacienteDetallePrecio.Value;
                  Total_Pruebas :=i+1;
                  i:=i+1;
              end;
              frmMain.frmTmpMod.qrEntradaPacienteDetalle.Next;
          end;
          Try
          spMensaje.Visible       := True;
          vArrayOfTRecAutorizacionOut := WSUniv.ProcesoAutorizacion(dm.dWebID,'1',vArrayPruebas,vArrayCodigoCup,vArrayPrecioPrueba,Total_Pruebas,Dm.CurUserUniv,'Autorizacion Creada por'+dm.CurUser);
          if vArrayOfTRecAutorizacionOut[0].srvMessage <> EmptyStr then
          Begin
              Screen.Cursor     := crDefault;
              spMensaje.Visible := False;
              EtMensajeDlg(vArrayOfTRecAutorizacionOut[0].srvMessage, etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
          end;
          spMensaje.Visible       := False;
          DsDatosRec.Enabled := False;
          if not JvMemoryData2.Active then  JvMemoryData2.Active := true;
          JvMemoryData2.EmptyTable;
          txtCliente.Text            := frmMain.frmTmpMod.qrEntradaPacientePolizaID.Asstring;
          txtTipoPlan.Text           := Dm.TipoPlan;
          txtAfiliado.Text           := Dm.Afiliado;
          x:=0;
          for x := 0 to length(vArrayOfTRecAutorizacionOut)-1 do
          begin
              JvMemoryData2.Append;
              JvMemoryData2Codigo.Asstring          := Trim(vArrayOfTRecAutorizacionOut[x].outPrePreCodigo);
              JvMemoryData2Descripcion.AsString     := Trim(vArrayOfTRecAutorizacionOut[x].outPrePreDescripcio);
              JvMemoryData2MontoAfiliado.AsFloat    := BcdToDouble(vArrayOfTRecAutorizacionOut[x].outDbcvalafi.AsBcd);
              JvMemoryData2MontoArs.AsFloat         := BcdToDouble(vArrayOfTRecAutorizacionOut[x].outDbcvalesp.AsBcd);
              JvMemoryData2Error.AsString           := vArrayOfTRecAutorizacionOut[x].srvMessage;
              txtReclamacion.Text                   := vArrayOfTRecAutorizacionOut[x].outAuenum.DecimalString;
              CurMontoArs                           := CurMontoArs + JvMemoryData2MontoArs.AsFloat;
              CurMontoAF                            := CurMontoAF + JvMemoryData2MontoAfiliado.AsFloat;
              CurTotal.Value                        := CurMontoArs+CurMontoAF;
              Next;
          end;
          if CurTotal.Value = 0 then
          begin
              Screen.Cursor     := crDefault;
              spMensaje.Visible := False;
              btAceptar.Enabled := False;
              EtMensajeDlg('Ninguna de las prueba(s) está habil para autorizar.  Consulte con un representante.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
              exit;
          end;
          CurMontoAfiliado.Value  := CurMontoAF;
          CurMontoTotalPV.Value   := CurPrecioArs;
          CurDiferencia.Value     := CurTotal.Value - CurMontoTotalPV.Value;
          JvMemoryData2.First;
          DsDatosRec.Enabled := True;
          ReclamacionID   := DM.Get_Secuencia_Big('REC', DM.CurSucursal);
          I:=0;
              qinsert := DM.NewQuery;
              DM.DataBase.BeginTrans;
              With qinsert,sql do
              begin
                 Close;
                 Clear;
                 Add(' INSERT INTO PTRECLAMO (Reclamoid, Muestrano, Afiliado, TipoPlan, Fecha, Monto, Montoafiliado,'+
                     ' Montoars, Numero, Estado, WebID, BenVal, UserID, ClienteID) '+
                     ' VALUES (:Reclamoid,:Muestrano,:Afiliado,:TipoPlan,:Fecha,:Monto,:MontoAfiliado,:Montoars,:Numero,:Estado,:WebID,:BenVal,:UserID,:ClienteID)');
                 Parameters.ParamByName('Reclamoid').Value    := ReclamacionID;
                 Parameters.ParamByName('Muestrano').Value    := frmMain.frmTmpMod.qrEntradaPacienteMuestrano.Asstring;
                 Parameters.ParamByName('Afiliado').Value     := txtCliente.Text;
                 Parameters.ParamByName('TipoPlan').Value     := txtTipoPlan.Text;
                 Parameters.ParamByName('Fecha').Value        := DM.SystemDate;
                 Parameters.ParamByName('Monto').Value        := CurTotal.value;
                 Parameters.ParamByName('Montoafiliado').Value:= CurMontoAF;
                 Parameters.ParamByName('Montoars').Value     := CurMontoArs;
                 Parameters.ParamByName('Numero').Value       := txtReclamacion.Value;
                 Parameters.ParamByName('Estado').Value       := 2;
                 Parameters.ParamByName('WebID').Value        := dm.dWebID;
                 Parameters.ParamByName('BenVal').Value       := dm.dBenVal;
                 Parameters.ParamByName('UserID').Value       := DM.CurUser;
                 Parameters.ParamByName('ClienteID').Value    := frmMain.frmTmpMod.qrEntradaPacienteClienteId.Asstring;
                 ExecSQL;
              end;
              DsDatosRec.Enabled := False;
              qinsert := DM.NewQuery;
              JvMemoryData2.First;
              While not JvMemoryData2.Eof do
              begin
                  If JvMemoryData2Codigo.AsInteger > 0 then
                  Begin
                      I:=I+1;
                      With qinsert,sql do
                      begin
                          Close;
                          Clear;
                          Add(' INSERT INTO PTRECLAMODETALLE (Reclamoid, Muestrano, Cobertura,Secuencia, Detalles, Montoafiliado, Montoars) '+
                             ' VALUES (:Reclamoid,:Muestrano,:Cobertura,:Secuencia,:Detalles,:Montoafiliado,:Montoars)');
                          Parameters.ParamByName('Reclamoid').Value     := ReclamacionID;
                          Parameters.ParamByName('Muestrano').Value     := frmMain.frmTmpMod.qrEntradaPacienteMuestrano.Asstring;
                          Parameters.ParamByName('Cobertura').Value     := JvMemoryData2Codigo.Asstring;
                          Parameters.ParamByName('Secuencia').Value     := I;
                          Parameters.ParamByName('Detalles').Value      := JvMemoryData2Descripcion.Asstring;
                          Parameters.ParamByName('Montoafiliado').Value := JvMemoryData2MontoAfiliado.AsCurrency;
                          Parameters.ParamByName('Montoars').Value      := JvMemoryData2MontoArs.AsCurrency;
                          ExecSQL;
                      end;
                  end;
                  JvMemoryData2.Next;
              end;
              DM.DataBase.CommitTrans;
              JvMemoryData2.First;
              DsDatosRec.Enabled := True;

         Except On
             E: Exception do
            begin
             spMensaje.Visible       := False;
             Screen.Cursor := crDefault;
             Showmessage(''+E.ClassName);
             Showmessage(''+E.Message);
             DM.DataBase.RollbackTrans;
             Raise exception.CreateFmt('Error Creando Reclamación ó Reclamación Detalle.', []);
            End;
         End;
         btAceptar.Caption:='F9 = Cancelar';
         txtEstado.Text :='Activa';
         Confirmado:=1;
         Rechazado:=0;
         Actualizar;
         ShowMessage('Reclamación creada satisfactóriamente.');
         FreeAndNil(qinsert);
         FreeAndNil(qinsertD);
  end
  else
  if dm.GrupoArs = GrupoArsPalic then
  begin
          qAutoriza := DM.NewQuery;
          With qAutoriza,sql do
          begin
            qAutoriza.Close;
            qAutoriza.SQL.Text := ' Select Afiliado,Estado,Fecha,Monto,MontoAfiliado,MontoArs,Numero,NumeroSession '+
                                  ' From PtReclamo (nolock) Where Muestrano='+#39+frmMain.frmTmpMod.qrEntradaPacienteMuestrano.Asstring+#39;
            qAutoriza.Open;
            if Not IsEmpty then
            begin
              First;
              DsDatos.Enabled := False;
              if not JvMemoryData1.Active then
                JvMemoryData1.Active := true;
              JvMemoryData1.EmptyTable;
              while not eof do
              begin
                  JvMemoryData1.Append;
                  JvMemoryData1Reclamacion.AsInteger    := fieldbyname('Numero').AsInteger;
                  JvMemoryData1Cliente.AsString         := fieldbyname('Afiliado').AsString;
                  JvMemoryData1MontoAfiliado.AsFloat    := fieldbyname('MontoAfiliado').Asfloat;
                  JvMemoryData1MontoArs.AsFloat         := fieldbyname('MontoArs').Asfloat;
                  JvMemoryData1Total.AsFloat            := fieldbyname('MontoAfiliado').Asfloat+fieldbyname('MontoArs').Asfloat;
                  if fieldbyname('Estado').AsInteger = 0 then
                    JvMemoryData1Estatus.AsString :='Cancelada'
                  else if fieldbyname('Estado').AsInteger = 1 then
                    JvMemoryData1Estatus.AsString :='Pendiente'
                  else if fieldbyname('Estado').AsInteger = 2 then
                    JvMemoryData1Estatus.AsString :='Activa';
                  Next;
              end;
              JvMemoryData1.First;
              DsDatos.Enabled := True;
            end;
          end;
          FreeAndNil(qAutoriza);
          // Desplegar los Datos si estan Confirmados solamente
          qConfirmacion := DM.NewQuery;
          With qConfirmacion,sql do
          begin
            qConfirmacion.Close;
            qConfirmacion.SQL.Text := ' select r.Afiliado,r.TipoPlan,r.Numero,r.MontoAfiliado,r.MontoArs,r.MontoAfiliado+r.MontoArs as Total,Estado,'+
                                  ' d.Cobertura,d.Detalles as Descripcion,d.MontoAfiliado as MontoAfiliadoDet,d.MontoArs as MontoArsDet,r.NumeroSession  from ptreclamo r (nolock) inner join ptreclamodetalle d (nolock) '+
                                  ' On r.Muestrano=d.Muestrano '+
                                  ' And   r.Reclamoid=d.Reclamoid '+
                                  ' Where r.Muestrano='+#39+frmMain.frmTmpMod.qrEntradaPacienteMuestrano.Asstring+#39+
                                  ' And   r.Estado='+'2';
            qConfirmacion.Open;
            if Not IsEmpty then
            begin
              First;
              txtCliente.Text         := fieldbyname('Afiliado').Asstring;
              txtReclamacion.Value    := fieldbyname('Numero').Asinteger;
              CurMontoAfiliado.Value  := fieldbyname('MontoAfiliado').AsFloat;
              txtTipoPlan.Text        := fieldbyname('TipoPlan').Asstring;
              CurTotal.Value          := fieldbyname('Total').AsFloat;
              CurPorcentajeCob.Value  := (((fieldbyname('Total').AsFloat)-(fieldbyname('MontoAfiliado').AsFloat))*100)/((fieldbyname('Total').AsFloat));
              txtAfiliado.Text        := Dm.Afiliado;
              NumeroSession           := fieldbyname('Numerosession').Asinteger;
              frmMain.frmTmpMod.qrEntradaPacienteDetalle.First;
              While not frmMain.frmTmpMod.qrEntradaPacienteDetalle.eof do
              begin
                If frmMain.frmTmpMod.qrEntradaPacienteDetalleCoberturaAplica.AsInteger = 1 then
                begin
                  CurPrecioArs    := CurPrecioArs + frmMain.frmTmpMod.qrEntradaPacienteDetallePrecio.Value;
                end;
                frmMain.frmTmpMod.qrEntradaPacienteDetalle.Next;
              end;
              CurMontoTotalPV.Value   := CurPrecioArs;
              CurDiferencia.Value     := CurTotal.Value - CurMontoTotalPV.Value;
              if fieldbyname('Estado').AsInteger = 0 then
                 txtEstado.Text :='Cancelada'
              else if fieldbyname('Estado').AsInteger = 1 then
                 txtEstado.Text :='Pendiente'
              else if fieldbyname('Estado').AsInteger = 2 then
                 txtEstado.Text :='Activa';
              DsDatosRec.Enabled := False;
              if not JvMemoryData2.Active then
                JvMemoryData2.Active := true;
              JvMemoryData2.EmptyTable;
              while not eof do
              begin
                  JvMemoryData2.Append;
                  JvMemoryData2Codigo.AsInteger         := fieldbyname('Cobertura').Asinteger;
                  JvMemoryData2Descripcion.AsString     := fieldbyname('Descripcion').AsString;
                  JvMemoryData2MontoAfiliado.AsFloat    := fieldbyname('MontoAfiliadoDet').Asfloat;
                  JvMemoryData2MontoArs.AsFloat         := fieldbyname('MontoArsDet').Asfloat;
                  Next;
              end;
              JvMemoryData2.First;
              DsDatosRec.Enabled := True;
              btAceptar.Caption:='F9 = Cancelar';
              FreeAndNil(qConfirmacion);
              exit;
            end;
          end;

        // Traer Datos Web Services Cotizacion por Coberturas
          i:=0;
          CurPrecioArs:=0;
          frmMain.frmTmpMod.qrEntradaPacienteDetalle.First;
          While not frmMain.frmTmpMod.qrEntradaPacienteDetalle.eof do
          begin
                If frmMain.frmTmpMod.qrEntradaPacienteDetalleCoberturaAplica.AsInteger = 1 then
                begin
                  z:=z+1;
                end;
                frmMain.frmTmpMod.qrEntradaPacienteDetalle.Next;
          end;
          frmMain.frmTmpMod.qrEntradaPacienteDetalle.First;
          While not frmMain.frmTmpMod.qrEntradaPacienteDetalle.eof do
          begin
              If frmMain.frmTmpMod.qrEntradaPacienteDetalleCoberturaAplica.AsInteger = 1 then
              begin
                  CodigoCup       := frmMain.frmTmpMod.qrEntradaPacienteDetalleCodigoCupID.AsString;
                  Descripcion[i]  := frmMain.frmTmpMod.qrEntradaPacienteDetalleDescripcion.AsString;
                  CurPrecioArs    := CurPrecioArs + frmMain.frmTmpMod.qrEntradaPacienteDetallePrecio.Value;
                  i:=i+1;
                  if i=z then
                    SCobertura := SCobertura+CodigoCup
                  else
                    SCobertura := SCobertura+CodigoCup+',';
                  if Length(CantCobertura) = 0 then
                    CantCobertura      := CantCobertura+'1'
                  else
                    CantCobertura      := CantCobertura+',1';
              end;
              frmMain.frmTmpMod.qrEntradaPacienteDetalle.Next;
          end;
          CAutorizacionPal          := ConsultaP.Create;
          Try
            spMensaje.Visible       := True;
            CAutorizacionPal        := GetPalicSoap(false,Dm.vURLWSDL).fConsulta_cobertura(Dm.Num_Session, Dm.TipoPlan,SCobertura,'null');
          except
            on E: Exception do
            begin
              spMensaje.Visible      := False;
              Showmessage(E.Message);
              Exit;
            end;
          End;
          spMensaje.Visible       := False;
          txtCliente.Value        := strtoint64(frmMain.frmTmpMod.qrEntradaPacientePolizaID.Asstring);
          txtReclamacion.Value    := 0;
          CurMontoAfiliado.Value  := CAutorizacionPal.Total_Monto_Reclamado-CAutorizacionPal.Total_Monto_Pagado;
          txtTipoPlan.Text        := Dm.TipoPlan;
          CurTotal.Value          := CAutorizacionPal.Total_Monto_Reclamado;
          If CAutorizacionPal.Total_Monto_Reclamado > 0 then
            CurPorcentajeCob.Value  := ((CAutorizacionPal.Total_Monto_Pagado/CAutorizacionPal.Total_Monto_Reclamado)*100);
          txtAfiliado.Text        := Dm.Afiliado;
          CurMontoTotalPV.Value   := CurPrecioArs;
          CurDiferencia.Value     := CurTotal.Value - CurMontoTotalPV.Value;
          txtEstado.Text          := 'Pendiente';
          DsDatosRec.Enabled := False;
          if not JvMemoryData2.Active then
            JvMemoryData2.Active := true;
          JvMemoryData2.Close;
          JvMemoryData2.Open;
          x:=0;
          for x := 0 to length(CAutorizacionPal.ListaCoberturas)-1 do
          begin
              JvMemoryData2.Append;
              JvMemoryData2Codigo.Asstring          := CAutorizacionPal.ListaCoberturas[x].Cod_Cobertura;
              JvMemoryData2Descripcion.AsString     := CAutorizacionPal.ListaCoberturas[x].Desc_Cobertura;
              JvMemoryData2MontoAfiliado.AsFloat    := CAutorizacionPal.ListaCoberturas[x].Monto_Reclamado - CAutorizacionPal.ListaCoberturas[x].Monto_Pagado;
              JvMemoryData2MontoArs.AsFloat         := CAutorizacionPal.ListaCoberturas[x].Monto_Pagado;
              JvMemoryData2Error.AsString           := CAutorizacionPal.ListaCoberturas[x].Desc_Resp;
              Next;
          end;
          JvMemoryData2.First;
          DsDatosRec.Enabled := True;
          if CurTotal.Value = 0 then
          begin
              Screen.Cursor     := crDefault;
              spMensaje.Visible := False;
              btAceptar.Enabled := False;
              EtMensajeDlg('Ninguna de las prueba(s) está habil para autorizar.  Consulte con un representante.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
          end;
          if CurTotal.Value > 0 then
            btAceptar.Enabled := True
          else
            btAceptar.Enabled := False;
          btAceptar.Caption:='F9 = Procesar';
          CAutorizacionPal.Free;
  end
  else
  if dm.GrupoArs = GrupoArsSenasa then
  begin
          qAutoriza := DM.NewQuery;
          With qAutoriza,sql do
          begin
            qAutoriza.Close;
            qAutoriza.SQL.Text := ' Select Afiliado,Estado,Fecha,Monto,MontoAfiliado,MontoArs,Numero,NumeroSession '+
                                  ' From PtReclamo (nolock) Where Muestrano='+#39+frmMain.frmTmpMod.qrEntradaPacienteMuestrano.Asstring+#39;
            qAutoriza.Open;
            if Not IsEmpty then
            begin
              First;
              DsDatos.Enabled := False;
              if not JvMemoryData1.Active then
                JvMemoryData1.Active := true;
              JvMemoryData1.Close;
              JvMemoryData1.Open;
              while not eof do
              begin
                  JvMemoryData1.Append;
                  JvMemoryData1Reclamacion.AsInteger    := fieldbyname('Numero').AsInteger;
                  JvMemoryData1Cliente.AsString         := fieldbyname('Afiliado').AsString;
                  JvMemoryData1MontoAfiliado.AsFloat    := fieldbyname('MontoAfiliado').Asfloat;
                  JvMemoryData1MontoArs.AsFloat         := fieldbyname('MontoArs').Asfloat;
                  JvMemoryData1Total.AsFloat            := fieldbyname('MontoAfiliado').Asfloat+fieldbyname('MontoArs').Asfloat;
                  if fieldbyname('Estado').AsInteger = 0 then
                    JvMemoryData1Estatus.AsString :='Cancelada'
                  else if fieldbyname('Estado').AsInteger = 1 then
                    JvMemoryData1Estatus.AsString :='Pendiente'
                  else if fieldbyname('Estado').AsInteger = 2 then
                    JvMemoryData1Estatus.AsString :='Activa';
                  Next;
              end;
              JvMemoryData1.First;
              DsDatos.Enabled := True;
            end;
          end;
          FreeAndNil(qAutoriza);
          // Desplegar los Datos si estan Confirmados solamente
          qConfirmacion := DM.NewQuery;
          With qConfirmacion,sql do
          begin
            qConfirmacion.Close;
            qConfirmacion.SQL.Text := ' select r.Afiliado,r.TipoPlan,r.Numero,r.MontoAfiliado,r.MontoArs,r.MontoAfiliado+r.MontoArs as Total,Estado,'+
                                  ' d.Cobertura,d.Detalles as Descripcion,d.MontoAfiliado as MontoAfiliadoDet,d.MontoArs as MontoArsDet,r.NumeroSession  from ptreclamo r (nolock) inner join ptreclamodetalle d (nolock)'+
                                  ' On r.Muestrano=d.Muestrano '+
                                  ' And   r.Reclamoid=d.Reclamoid '+
                                  ' Where r.Muestrano='+#39+frmMain.frmTmpMod.qrEntradaPacienteMuestrano.Asstring+#39+
                                  ' And   r.Estado='+'2';
            qConfirmacion.Open;
            if Not IsEmpty then
            begin
              First;
              txtCliente.Text         := fieldbyname('Afiliado').Asstring;
              txtReclamacion.Value    := fieldbyname('Numero').Asinteger;
              CurMontoAfiliado.Value  := fieldbyname('MontoAfiliado').AsFloat;
              txtTipoPlan.Text        := fieldbyname('TipoPlan').Asstring;
              CurTotal.Value          := fieldbyname('Total').AsFloat;
              CurPorcentajeCob.Value  := (((fieldbyname('Total').AsFloat)-(fieldbyname('MontoAfiliado').AsFloat))*100)/((fieldbyname('Total').AsFloat));
              txtAfiliado.Text        := Dm.Afiliado;
              NumeroSession           := fieldbyname('Numerosession').Asinteger;
              frmMain.frmTmpMod.qrEntradaPacienteDetalle.First;
              While not frmMain.frmTmpMod.qrEntradaPacienteDetalle.eof do
              begin
                If frmMain.frmTmpMod.qrEntradaPacienteDetalleCoberturaAplica.AsInteger = 1 then
                begin
                  CurPrecioArs    := CurPrecioArs + frmMain.frmTmpMod.qrEntradaPacienteDetallePrecio.Value;
                end;
                frmMain.frmTmpMod.qrEntradaPacienteDetalle.Next;
              end;
              CurMontoTotalPV.Value   := CurPrecioArs;
              CurDiferencia.Value     := CurTotal.Value - CurMontoTotalPV.Value;
        //      CurMontoArs.Value       := fieldbyname('MontoArs').AsFloat;
              if fieldbyname('Estado').AsInteger = 0 then
                 txtEstado.Text :='Cancelada'
              else if fieldbyname('Estado').AsInteger = 1 then
                 txtEstado.Text :='Pendiente'
              else if fieldbyname('Estado').AsInteger = 2 then
                 txtEstado.Text :='Activa';
              DsDatosRec.Enabled := False;
              if not JvMemoryData2.Active then
                JvMemoryData2.Active := true;
              JvMemoryData2.Close;
              JvMemoryData2.Open;
              while not eof do
              begin
                  JvMemoryData2.Append;
                  JvMemoryData2Codigo.AsInteger         := fieldbyname('Cobertura').Asinteger;
                  JvMemoryData2Descripcion.AsString     := fieldbyname('Descripcion').AsString;
                  JvMemoryData2MontoAfiliado.AsFloat    := fieldbyname('MontoAfiliadoDet').Asfloat;
                  JvMemoryData2MontoArs.AsFloat         := fieldbyname('MontoArsDet').Asfloat;
                  Next;
              end;
              JvMemoryData2.First;
              DsDatosRec.Enabled := True;
              btAceptar.Caption:='F9 = Cancelar';
              FreeAndNil(qConfirmacion);
              exit;
            end;
          end;
        // Traer Datos Web Services Cotizacion por Coberturas
          CCoberturaSen    := crefsProcedimientos.Create;
          CAutorizacionSen := crefsAutorizacionLaboratorio.Create;
          i:=0;
          CurPrecioArs:=0;
          z:=frmMain.frmTmpMod.qrEntradaPacienteDetalle.Recordcount;
          //Crea procedimientos
          frmMain.frmTmpMod.qrEntradaPacienteDetalle.First;
          While not frmMain.frmTmpMod.qrEntradaPacienteDetalle.eof do
          begin
              If frmMain.frmTmpMod.qrEntradaPacienteDetalleCoberturaAplica.AsInteger = 1 then
              begin
                  Setlength(ArrCoberturaSen,length(ArrCoberturaSen)+1);
                  CodigoCup       := frmMain.frmTmpMod.qrEntradaPacienteDetalleCodigoCupID.AsString;
                  Descripcion[i]  := frmMain.frmTmpMod.qrEntradaPacienteDetalleDescripcion.AsString;
                  CurPrecioArs    := CurPrecioArs + frmMain.frmTmpMod.qrEntradaPacienteDetallePrecio.Value;
                  ArrCoberturaSen[length(ArrCoberturaSen)-1]              := crefsProcedimientos.Create;
                  ArrCoberturaSen[length(ArrCoberturaSen)-1].SIMON        := CodigoCup;
                  ArrCoberturaSen[length(ArrCoberturaSen)-1].SubGrupo     := '8.1';
                  ArrCoberturaSen[length(ArrCoberturaSen)-1].Descripcion  := Descripcion[i];
                  i:=i+1;
              end;
              frmMain.frmTmpMod.qrEntradaPacienteDetalle.Next;
          end;
          Try
            spMensaje.Visible       := True;
            CAutorizacionSen        := GetTSenasaRefWSSoap(false,Dm.vURLWSDL).AgregarProcedimientos(DM.NSS, StrToInt(DM.Regimen),Dm.Contrato, ArrCoberturaSen);
          except
            on E: Exception do
            begin
              spMensaje.Visible      := False;
              Showmessage(E.Message);
              Exit;
            end;
          End;
          spMensaje.Visible       := False;
          txtCliente.Value := strtoint64(frmMain.frmTmpMod.qrEntradaPacientePolizaID.Asstring);
          CurMontoAfiliado.Value  := CAutorizacionSen.ValorCopago;
          txtTipoPlan.Text        := Dm.TipoPlan;
          txtAfiliado.Text        := Dm.Afiliado;
          CurTotal.Value          := CAutorizacionSen.MontoAutorizado+CAutorizacionSen.ValorCopago;
          if CurTotal.Value > 0 then
            CurPorcentajeCob.Value  := (((CurTotal.Value-CurMontoAfiliado.Value))*100)/(CurTotal.Value);
          CurMontoTotalPV.Value   := CurPrecioArs;
          CurDiferencia.Value     := CurTotal.Value - CurMontoTotalPV.Value;
          txtEstado.Text          := 'Pendiente';
          DsDatosRec.Enabled      := False;
          if not JvMemoryData2.Active then
            JvMemoryData2.Active  := true;
          JvMemoryData2.Close;
          JvMemoryData2.Open;
          x:=0;
          for x := 0 to length(CAutorizacionSen.ListaProcedimientos)-1 do
          begin
              JvMemoryData2.Append;
              JvMemoryData2Codigo.Asstring          := CAutorizacionSen.ListaProcedimientos[x].SIMON;
              JvMemoryData2Descripcion.Asstring     := CAutorizacionSen.ListaProcedimientos[x].Descripcion;
              JvMemoryData2MontoAfiliado.AsFloat    := CAutorizacionSen.ListaProcedimientos[x].Tarifa;
              JvMemoryData2MontoArs.AsFloat         := CAutorizacionSen.ListaProcedimientos[x].CoPago;
              JvMemoryData2Error.AsString           := GetEnumName(TypeInfo(crefsEstatusProcedimiento),integer(CAutorizacionSen.ListaProcedimientos[x].Estatus));
              Next;
          end;
          JvMemoryData2.First;
          DsDatosRec.Enabled := True;
          if CurTotal.Value = 0 then
          begin
              Screen.Cursor     := crDefault;
              spMensaje.Visible := False;
              btAceptar.Enabled := False;
              EtMensajeDlg('Ninguna de las prueba(s) está habil para autorizar.  Consulte con un representante.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
          end;
          if CurTotal.Value > 0 then
            btAceptar.Enabled := True
          else
            btAceptar.Enabled := False;
          btAceptar.Caption:='F9 = Procesar';
  end
  else
  If dm.GrupoArs = GrupoArsYunen then
  begin
          qAutoriza := DM.NewQuery;
          With qAutoriza,sql do
          begin
            qAutoriza.Close;
            qAutoriza.SQL.Text := ' Select Afiliado,Estado,Fecha,Monto,MontoAfiliado,MontoArs,Numero,NumeroSession '+
                                  ' From PtReclamo (nolock) Where Muestrano='+#39+frmMain.frmTmpMod.qrEntradaPacienteMuestrano.Asstring+#39;
            qAutoriza.Open;
            if Not IsEmpty then
            begin
              First;
              DsDatos.Enabled := False;
              if not JvMemoryData1.Active then
                JvMemoryData1.Active := true;
              JvMemoryData1.Close;
              JvMemoryData1.Open;
              while not eof do
              begin
                  JvMemoryData1.Append;
                  JvMemoryData1Reclamacion.AsInteger    := fieldbyname('Numero').AsInteger;
                  JvMemoryData1Cliente.AsString         := fieldbyname('Afiliado').AsString;
                  JvMemoryData1MontoAfiliado.AsFloat    := fieldbyname('MontoAfiliado').Asfloat;
                  JvMemoryData1MontoArs.AsFloat         := fieldbyname('MontoArs').Asfloat;
                  JvMemoryData1Total.AsFloat            := fieldbyname('MontoAfiliado').Asfloat+fieldbyname('MontoArs').Asfloat;
                  if fieldbyname('Estado').AsInteger = 0 then
                    JvMemoryData1Estatus.AsString :='Cancelada'
                  else if fieldbyname('Estado').AsInteger = 1 then
                    JvMemoryData1Estatus.AsString :='Pendiente'
                  else if fieldbyname('Estado').AsInteger = 2 then
                    JvMemoryData1Estatus.AsString :='Activa';
                  Next;
              end;
              JvMemoryData1.First;
              DsDatos.Enabled := True;
            end;
          end;
          FreeAndNil(qAutoriza);
          // Desplegar los Datos si estan Confirmados solamente
          qConfirmacion := DM.NewQuery;
          With qConfirmacion,sql do
          begin
            qConfirmacion.Close;
            qConfirmacion.SQL.Text := ' select r.Afiliado,r.TipoPlan,r.Numero,r.MontoAfiliado,r.MontoArs,r.MontoAfiliado+r.MontoArs as Total,Estado,'+
                                  ' d.Cobertura,d.Detalles as Descripcion,d.MontoAfiliado as MontoAfiliadoDet,d.MontoArs as MontoArsDet,r.NumeroSession  from ptreclamo r (nolock) inner join ptreclamodetalle d (nolock)'+
                                  ' on    r.Muestrano=d.Muestrano '+
                                  ' And   r.Reclamoid=d.Reclamoid '+
                                  ' Where r.Muestrano='+#39+frmMain.frmTmpMod.qrEntradaPacienteMuestrano.Asstring+#39+
                                  ' And   r.Estado='+'2';
            qConfirmacion.Open;
            if Not IsEmpty then
            begin
              First;
              txtCliente.Text         := fieldbyname('Afiliado').Asstring;
              txtReclamacion.Value    := fieldbyname('Numero').Asinteger;
              CurMontoAfiliado.Value  := fieldbyname('MontoAfiliado').AsFloat;
              txtTipoPlan.Text        := fieldbyname('TipoPlan').Asstring;
              CurTotal.Value          := fieldbyname('Total').AsFloat;
              CurPorcentajeCob.Value  := (((fieldbyname('Total').AsFloat)-(fieldbyname('MontoAfiliado').AsFloat))*100)/((fieldbyname('Total').AsFloat));
              txtAfiliado.Text        := Dm.Afiliado;
              NumeroSession           := fieldbyname('Numerosession').Asinteger;
              frmMain.frmTmpMod.qrEntradaPacienteDetalle.First;
              While not frmMain.frmTmpMod.qrEntradaPacienteDetalle.eof do
              begin
                If frmMain.frmTmpMod.qrEntradaPacienteDetalleCoberturaAplica.AsInteger = 1 then
                begin
                  CurPrecioArs    := CurPrecioArs + frmMain.frmTmpMod.qrEntradaPacienteDetallePrecio.Value;
                end;
                frmMain.frmTmpMod.qrEntradaPacienteDetalle.Next;
              end;
              CurMontoTotalPV.Value   := CurPrecioArs;
              CurDiferencia.Value     := CurTotal.Value - CurMontoTotalPV.Value;
        //      CurMontoArs.Value       := fieldbyname('MontoArs').AsFloat;
              if fieldbyname('Estado').AsInteger = 0 then
                 txtEstado.Text :='Cancelada'
              else if fieldbyname('Estado').AsInteger = 1 then
                 txtEstado.Text :='Pendiente'
              else if fieldbyname('Estado').AsInteger = 2 then
                 txtEstado.Text :='Activa';
              DsDatosRec.Enabled := False;
              if not JvMemoryData2.Active then
                JvMemoryData2.Active := true;
              JvMemoryData2.Close;
              JvMemoryData2.Open;
              while not eof do
              begin
                  JvMemoryData2.Append;
                  JvMemoryData2Codigo.AsInteger         := fieldbyname('Cobertura').Asinteger;
                  JvMemoryData2Descripcion.AsString     := fieldbyname('Descripcion').AsString;
                  JvMemoryData2MontoAfiliado.AsFloat    := fieldbyname('MontoAfiliadoDet').Asfloat;
                  JvMemoryData2MontoArs.AsFloat         := fieldbyname('MontoArsDet').Asfloat;
        //          JvMemoryData2Error.AsString           := fieldbyname('Error').AsString;
                  Next;
              end;
              JvMemoryData2.First;
              DsDatosRec.Enabled := True;
              btAceptar.Caption:='F9 = Cancelar';
              FreeAndNil(qConfirmacion);
              exit;
            end;
          end;
        // Traer Datos Web Services Cotizacion por Coberturas
//          CCoberturaYun    := Prestacion.Create;
//          CAutorizacionSen := crefsAutorizacionLaboratorio.Create;
          i:=0;
          CurPrecioArs:=0;
          z:=frmMain.frmTmpMod.qrEntradaPacienteDetalle.Recordcount;
          //Crea procedimientos
          frmMain.frmTmpMod.qrEntradaPacienteDetalle.First;
          DsDatosRec.Enabled      := False;
          if not JvMemoryData2.Active then
            JvMemoryData2.Active  := true;
          JvMemoryData2.Close;
          JvMemoryData2.Open;
          x:=0;
          StrMensaje:=EmptyStr;          
          While not frmMain.frmTmpMod.qrEntradaPacienteDetalle.eof do
          begin
              If frmMain.frmTmpMod.qrEntradaPacienteDetalleCoberturaAplica.AsInteger = 1 then
              begin
                  Setlength(ArrCoberturaYun,length(ArrCoberturaYun)+1);
                  CodigoCup       := frmMain.frmTmpMod.qrEntradaPacienteDetalleCodigoCupID.AsString;
                  Descripcion[i]  := frmMain.frmTmpMod.qrEntradaPacienteDetalleDescripcion.AsString;
                  CurPrecioArs    := CurPrecioArs + frmMain.frmTmpMod.qrEntradaPacienteDetallePrecio.Value;
                  ArrCoberturaYun[length(ArrCoberturaYun)-1]              := Prestacion.Create;
                  ArrCoberturaYun[length(ArrCoberturaYun)-1].Codigo       := CodigoCup;
                  ArrCoberturaYun[length(ArrCoberturaYun)-1].Descripcion  := Descripcion[i];
                  WSYunen                 := GetWsServicioAutorizacionSoap();
                  WSYunen.AgregarPrestacion('01',frmMain.frmTmpMod.qrEntradaPacienteDetalleCodigoCupID.AsString,1,frmMain.frmTmpMod.qrEntradaPacienteDetallePrecio.Value,dm.Id_Trans,CCoberturaYun,Mensaje);
                  If Mensaje = 'Prestacion no encontrada' then
                  Begin
                       StrMensaje:=StrMensaje+'Servicio ('+frmMain.frmTmpMod.qrEntradaPacienteDetalleCodigoCupID.AsString+' '+frmMain.frmTmpMod.qrEntradaPacienteDetalleDESCRIPCION.AsString+').  Código cups NO válido.  Consulte con Analista de Tarifas.'+#13;
                  end;
                  If Mensaje = 'Servicio Inactivo' then
                  Begin
                       StrMensaje:=StrMensaje+'Servicio ('+frmMain.frmTmpMod.qrEntradaPacienteDetalleCodigoCupID.AsString+' '+frmMain.frmTmpMod.qrEntradaPacienteDetalleCodigoCupID.AsString+').  No está activo.  Consulte con Analista de Tarifas.'+#13;
                  end;
                  CCoberturaYun.Codigo:=trim(StringReplace(CCoberturaYun.Codigo,'.','',[rfReplaceAll]));
                  CCoberturaYun.Codigo:=trim(StringReplace(CCoberturaYun.Codigo,'-','',[rfReplaceAll]));
                  JvMemoryData2.Append;
                  JvMemoryData2Codigo.Asstring          := CCoberturaYun.Codigo;
                  JvMemoryData2Descripcion.Asstring     := CCoberturaYun.Descripcion;
                  JvMemoryData2MontoAfiliado.AsString   := CCoberturaYun.MontoAfiliado;
                  Valor_Copago                          := Valor_Copago + StrToFloat(CCoberturaYun.MontoAfiliado);
                  JvMemoryData2MontoArs.AsString        := CCoberturaYun.MontoARS;
                  Monto_Autorizado                      := Monto_Autorizado + StrToFloat(CCoberturaYun.MontoARS);
                  JvMemoryData2Error.AsString           := Mensaje;
                  Next;
                  i:=i+1;
              end;
              frmMain.frmTmpMod.qrEntradaPacienteDetalle.Next;
          end;
          JvMemoryData2.First;
          If Trim(StrMensaje) <> EmptyStr then
          Begin
              Screen.Cursor     := crDefault;
              spMensaje.Visible := False;
              EtMensajeDlg(StrMensaje, etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
              exit;
          end;
          txtCliente.Value        := strtoint64(frmMain.frmTmpMod.qrEntradaPacientePolizaID.Asstring);
          CurMontoAfiliado.Value  := CurPrecioArs;
          txtTipoPlan.Text        := Dm.TipoPlan;
          txtAfiliado.Text        := Dm.Afiliado;
          CurTotal.Value          := Monto_Autorizado+Valor_Copago;
          DsDatosRec.Enabled := True;
          if (CurTotal.Value > 0) then
            CurPorcentajeCob.Value  := (((CurTotal.Value-CurMontoAfiliado.Value))*100)/(CurTotal.Value);
          CurMontoTotalPV.Value   := CurPrecioArs;
          CurDiferencia.Value     := CurTotal.Value - CurMontoTotalPV.Value;
          txtEstado.Text          := 'Pendiente';
          if CurTotal.Value = 0 then
          begin
              Screen.Cursor     := crDefault;
              spMensaje.Visible := False;
              btAceptar.Enabled := False;
              EtMensajeDlg('Ninguna de las prueba(s) está habil para autorizar.  Consulte con un representante.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
          end;
          if CurTotal.Value > 0 then
            btAceptar.Enabled := True
          else
            btAceptar.Enabled := False;
          btAceptar.Caption:='F9 = Procesar';
          CCoberturaYun.Free;
  end;

  Screen.Cursor := crDefault;
end;
procedure TfrmAutorizacionArsMod.HTTPRIO1AfterExecute(const MethodName: string;
  SOAPResponse: TStream);
var
  XMLDoc: IXMLDocument;
begin
  SOAPResponse.Position := 0;
  Memo1.Lines.LoadFromStream(SOAPResponse);

  ClientDataset1.Active := FALSE;
  SOAPResponse.Position := 0;
  XMLDoc := NewXMLDocument;
  XMLDoc.Encoding := SUTF8;
  SOAPResponse.Position := 0;
  XMLDoc.LoadFromStream(SOAPResponse);

  XMLTransformProvider1.TransformRead.SourceXmlDocument := XMLDoc.GetDOMDocument;
  ClientDataset1.Active := TRUE;
end;

procedure TfrmAutorizacionArsMod.Run;
begin
  Origen  := frmMain.frmTmpMod.qrEntradaPacienteOrigen.Value;
  Seguroid := frmMain.frmTmpMod.qrEntradaPacienteClienteId.Value;
  Nombre := frmMain.frmTmpMod.qrEntradaPacienteClienteNombre.Value;
  Aprobacion := frmMain.frmTmpMod.qrEntradaPacienteAprobacionNo.Value;
  ConfirmadoPor := frmMain.frmTmpMod.qrEntradaPacienteAPROBACIONPOR.Value;
  ValorCobertura := frmMain.frmTmpMod.Valor_Cobertura(frmMain.frmTmpMod.qrEntradaPacienteRECID.Value);

  CurMontoAfiliado.Value := ValorCobertura;

  frmMain.frmTmpMod.qrEntradaPaciente.Edit;
  frmMain.frmTmpMod.qrEntradaPacienteCoberturaRechazada.Value := Rechazado;
  If (frmMain.frmTmpMod.qrEntradaPacienteCoberturaConfirmada.Value = 0) Then
    frmMain.frmTmpMod.qrEntradaPacienteCoberturaConfirmada.Value := Confirmado;
  frmMain.frmTmpMod.qrEntradaPacienteCoberturaValor.Value := frmMain.frmTmpMod.qrEntradaPacienteCOBERTURAMONTOPRECONFIRMADO.Value;
  showmodal;
end;
procedure TfrmAutorizacionArsMod.Actualizar;
begin
    If (Rechazado = 1) then
    Begin
       //Cobertura Rechazada.
       frmMain.frmTmpMod.Operacion := 'E';
       frmMain.frmTmpMod.qrEntradaPaciente.Edit;
       frmMain.frmTmpMod.qrEntradaPacienteAprobacionNo.Value := '';
       frmMain.frmTmpMod.qrEntradaPacienteAPROBACIONPOR.Value := '';
       frmMain.frmTmpMod.qrEntradaPacienteCoberturaPorc.Value := 0;
       frmMain.frmTmpMod.qrEntradaPacienteCoberturaValor.Value := 0;
       frmMain.frmTmpMod.qrEntradaPacienteCoberturaSeguro.Value := 0;
       frmMain.frmTmpMod.qrEntradaPacienteCoberturaRechazada.Value := 1;
       frmMain.frmTmpMod.qrEntradaPacienteCoberturaConfirmada.Value := 0;
       frmMain.frmTmpMod.qrEntradaPacienteCOBERTURAMONTOPRECONFIRMADO.Value := 0;
       frmMain.frmTmpMod.qrEntradaPacienteFECHAASEGURADORA.Value := DM.SystemDate;  //DM.Buscar_Fecha_Actual;
//       frmMain.frmTmpMod.qrEntradaPacienteHoraRegistro.Value := TimeToStr(Time);
       frmMain.frmTmpMod.qrEntradaPacienteHoraRegistro.Value := DM.Buscar_Hora_Actual;

       frmMain.frmTmpMod.cambiarprecio := False;
//       frmMain.frmTmpMod.qrEntradaPacienteClienteId.Value := frmMain.frmTmpMod.qrEntradaPacientePacienteId.Value;
//       frmMain.frmTmpMod.Buscar_Cliente;
//       frmMain.frmTmpMod.qrEntradaPacienteClienteNombre.Value := frmMain.frmTmpMod.qfindCltParams.FieldByName('Nombre').AsString;
//       frmMain.frmTmpMod.qrEntradaPacienteOrigen.Value := frmMain.frmTmpMod.qfindCltParams.FieldByName('GrupoCliente').AsString;
//       frmMain.frmTmpMod.cambiarprecio := False;
       frmMain.frmTmpMod.ActTotales;

       If ( frmMain.frmTmpMod.qrEntradaPaciente.State in [dsEdit,dsInsert] ) And
          (frmMain.frmTmpMod.qrEntradaPacienteEntradaID.Value <> '') Then
         frmMain.frmTmpMod.qrEntradaPaciente.Post;

       If (frmMain.frmTmpMod.qrEntradaPacienteEntradaID.Value <> '') Then
       Begin
           If dm.qrParametroServidor_AS400.value <> EmptyStr then
           begin
                if dm.PingHost(dm.qrParametroServidor_AS400.value,1) then
                begin
                   InterfaseAS400.ASConnection.Close;
                   InterfaseAS400.ASConnection.Open;

                   //Insertando las Pruebas en el AS-400.
                   InterfaseAS400.MandarPruebaAS400(frmMain.frmTmpMod.qrEntradaPacienteMuestraNo.Value, frmMain.frmTmpMod.qrEntradaPacientePacienteId.Value);
                   InterfaseAS400.ASConnection.Close;
                end;
           end;
       end;
    end;
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    if (Confirmado = 1) then
    Begin
       If dm.GrupoArs = GrupoArsSDS then
       begin
          if (Dm.codArs <> 4) then
          begin
            If (frmMain.frmTmpMod.qrEntradaPacienteClienteID.Value = 'C00075') Or
               (frmMain.frmTmpMod.qrEntradaPacienteClienteID.Value = 'C00392') Or
               (frmMain.frmTmpMod.qrEntradaPacienteClienteID.Value = 'C01673') Then  frmMain.frmTmpMod.qrEntradaPacienteAprobacionNo.Value  := 'P'+txtReclamacion.EditingText;
            If (frmMain.frmTmpMod.qrEntradaPacienteClienteID.Value ='C03103') Or
               (frmMain.frmTmpMod.qrEntradaPacienteClienteID.Value ='C03209') then frmMain.frmTmpMod.qrEntradaPacienteAprobacionNo.Value  := 'H'+txtReclamacion.EditingText;
          end
          else
             frmMain.frmTmpMod.qrEntradaPacienteAprobacionNo.Value     := txtReclamacion.EditingText;
       end
       Else
          frmMain.frmTmpMod.qrEntradaPacienteAprobacionNo.Value     := txtReclamacion.EditingText;
       frmMain.frmTmpMod.qrEntradaPacienteAprobacionPor.Value     := 'W-SERVICE';
       frmMain.frmTmpMod.qrEntradaPacienteCoberturaSeguro.Value   := CurMontoArs;
       frmMain.frmTmpMod.qrEntradaPacienteCoberturaPorC.Value     := (CurMontoArs*100)/CurTotal.value;
       frmMain.frmTmpMod.qrEntradaPacienteCoberturaValor.Value    := CurMontoArs;

       //Cobertura Confirmada.
       If (ValorCobertura < 1) Or
          (frmMain.frmTmpMod.qrEntradaPacienteCoberturaValor.IsNull) Or
          (frmMain.frmTmpMod.qrEntradaPacienteCoberturaValor.Value < 1) Or
          (frmMain.frmTmpMod.qrEntradaPacienteCoberturaValor.Value > ValorCobertura) Then
       Begin
           //Dejando Igual Por Cobertura en Cero.
           frmMain.frmTmpMod.qrEntradaPaciente.Edit;
           frmMain.frmTmpMod.qrEntradaPacienteAprobacionNo.Value := '';
           frmMain.frmTmpMod.qrEntradaPacienteAPROBACIONPOR.Value := '';
           frmMain.frmTmpMod.qrEntradaPacienteCoberturaValor.Value := 0;
           frmMain.frmTmpMod.qrEntradaPacienteCoberturaSeguro.Value := 0;
           frmMain.frmTmpMod.qrEntradaPacienteCoberturaRechazada.Value := 0;
           frmMain.frmTmpMod.qrEntradaPacienteCoberturaConfirmada.Value := 0;
           frmMain.frmTmpMod.qrEntradaPacienteOrigen.Value := Origen;
           frmMain.frmTmpMod.qrEntradaPacienteClienteId.Value := Seguroid;
           frmMain.frmTmpMod.qrEntradaPacienteClienteNombre.Value := Nombre;
           frmMain.frmTmpMod.ActTotales;

           If ( frmMain.frmTmpMod.qrEntradaPaciente.State in [dsEdit,dsInsert] ) And
              (frmMain.frmTmpMod.qrEntradaPacienteEntradaID.Value <> '') Then
             frmMain.frmTmpMod.qrEntradaPaciente.Post;

//           frmMain.frmTmpMod.qrEntradaPacienteAprobacionNo.Value := Aprobacion;
//           frmMain.frmTmpMod.qrEntradaPacienteAPROBACIONPOR.Value := ConfirmadoPor;
//           DM.Error('El Monto de Cobertura Esta en Cero. Por Favor Verifique.!!!');
           Raise exception.CreateFmt(' Operacion Abortada Por Una de Estas Razones: '+ #13 +
                                     ' ó El Monto de Cobertura Esta en Cero '+ #13 +
                                     ' ó NO Existen Pruebas Cubiertas por el Seguro '+ #13 +
                                     ' ó El Monto Es Mayor que las Pruebas Cubiertas por el Seguro '+ #13 +
                                     ' Por Favor Verifique.!!!', []);
       End
       Else
       Begin
         if (frmMain.frmTmpMod.qrEntradaPacienteCoberturaPreConfirmada.Value = 1) And (AutoConfirmar = 1) Then
         Begin
             //Cobertura Pre-Confirmada por el Seguro.
             Confirmado := 1;
             ValorCobertura := frmMain.frmTmpMod.Valor_Cobertura(frmMain.frmTmpMod.qrEntradaPacienteRECID.Value);
             CurMontoAfiliado.Value := ValorCobertura;

             //Actualizando la Cobertura Confirmada.
             frmMain.frmTmpMod.valorNC := 0;
             frmMain.frmTmpMod.Operacion := 'E';
             frmMain.frmTmpMod.qrEntradaPaciente.Edit;
             frmMain.frmTmpMod.qrEntradaPacienteCoberturaRechazada.Value := 0;
             frmMain.frmTmpMod.qrEntradaPacienteCoberturaConfirmada.Value := 1;
             frmMain.frmTmpMod.qrEntradaPacienteFECHAASEGURADORA.Value := DM.SystemDate;
//             frmMain.frmTmpMod.qrEntradaPacienteHoraRegistro.Value := TimeToStr(Time);
             frmMain.frmTmpMod.qrEntradaPacienteHoraRegistro.Value := DM.Buscar_Hora_Actual;

             If (frmMain.frmTmpMod.qrEntradaPacienteAprobacionNo.IsNull) Or
                (frmMain.frmTmpMod.qrEntradaPacienteAprobacionNo.Value = '') Or
                (frmMain.frmTmpMod.qrEntradaPacienteAprobacionNo.Value = ' ') Or
                (frmMain.frmTmpMod.qrEntradaPacienteAprobacionNo.Value = ' ') Then
               frmMain.frmTmpMod.qrEntradaPacienteAprobacionNo.Value := DM.CurUser;

             If (frmMain.frmTmpMod.qrEntradaPacienteAPROBACIONPOR.IsNull) Or
                (frmMain.frmTmpMod.qrEntradaPacienteAPROBACIONPOR.Value = '') Or
                (frmMain.frmTmpMod.qrEntradaPacienteAPROBACIONPOR.Value = ' ') Or
                (frmMain.frmTmpMod.qrEntradaPacienteAPROBACIONPOR.Value = ' ') Then
               frmMain.frmTmpMod.qrEntradaPacienteAPROBACIONPOR.Value := DM.CurUser;

//             frmMain.frmTmpMod.qrEntradaPacienteCoberturaValor.Value := frmMain.frmTmpMod.qrEntradaPacienteCoberturaSeguro.Value;
             frmMain.frmTmpMod.qrEntradaPacienteCoberturaValor.Value := frmMain.frmTmpMod.qrEntradaPacienteCOBERTURAMONTOPRECONFIRMADO.Value;

             frmMain.frmTmpMod.ActTotales;

//             If (frmMain.frmTmpMod.qrEntradaPacienteSubtotal.Value <> 0) Then
//               frmMain.frmTmpMod.qrEntradaPacienteCoberturaPorc.Value := DM.Redondeo((frmMain.frmTmpMod.qrEntradaPacienteCoberturaValor.Value * 100) / ValorCobertura);

             DM.Info('Esta Aseguradora Maneja Cobertura Fijas.');

             If ( frmMain.frmTmpMod.qrEntradaPaciente.State in [dsEdit,dsInsert] ) And
                (frmMain.frmTmpMod.qrEntradaPacienteEntradaID.Value <> '') Then
               frmMain.frmTmpMod.qrEntradaPaciente.Post;

             If (frmMain.frmTmpMod.qrEntradaPacienteEntradaID.Value <> '') Then
             begin
                 If dm.qrParametroServidor_AS400.value <> EmptyStr then
                 begin
                      if dm.PingHost(dm.qrParametroServidor_AS400.value,1) then
                      begin
                         InterfaseAS400.ASConnection.Close;
                         InterfaseAS400.ASConnection.Open;

                         //Insertando las Pruebas en el AS-400.
                         InterfaseAS400.MandarPruebaAS400(frmMain.frmTmpMod.qrEntradaPacienteMuestraNo.Value, frmMain.frmTmpMod.qrEntradaPacientePacienteId.Value);
                         InterfaseAS400.ASConnection.Close;
                      end;
                 end;
             end;
//             frmMain.frmTmpMod.btgrabarClick(nil);
           End
         Else
           Begin
             //Actualizando la Cobertura Confirmada.
             frmMain.frmTmpMod.Operacion := 'E';
             frmMain.frmTmpMod.qrEntradaPaciente.Edit;
//             frmMain.frmTmpMod.qrEntradaPacienteOrigen.Value := Origen;
             frmMain.frmTmpMod.qrEntradaPacienteClienteId.Value := Seguroid;
             frmMain.frmTmpMod.qrEntradaPacienteClienteNombre.Value := Nombre;
             frmMain.frmTmpMod.qrEntradaPacienteCoberturaRechazada.Value := 0;
             frmMain.frmTmpMod.qrEntradaPacienteCoberturaConfirmada.Value := 1;
             frmMain.frmTmpMod.qrEntradaPacienteFECHAASEGURADORA.Value := DM.SystemDate; //DM.Buscar_Fecha_Actual;
//             frmMain.frmTmpMod.qrEntradaPacienteHoraRegistro.Value := TimeToStr(Time);
             frmMain.frmTmpMod.qrEntradaPacienteHoraRegistro.Value := DM.Buscar_Hora_Actual;

//             frmMain.frmTmpMod.qrEntradaPacienteAprobacionNo.Value := Aprobacion;
//             frmMain.frmTmpMod.qrEntradaPacienteAPROBACIONPOR.Value := ConfirmadoPor;
//             frmMain.frmTmpMod.valorND := 0;
//             frmMain.frmTmpMod.valorND := (frmMain.frmTmpMod.qrEntradaPacienteCoberturaValor.Value +
//                                        frmMain.frmTmpMod.qrEntradaPacienteNeto.Value;
             frmMain.frmTmpMod.valorNC := 0;
             frmMain.frmTmpMod.valorNC := DM.Redondeo((frmMain.frmTmpMod.qrEntradaPacienteCoberturaValor.Value +
                                                    frmMain.frmTmpMod.qrEntradaPacienteTotalPagado.Value) -
                                                    frmMain.frmTmpMod.qrEntradaPacienteSubtotal.Value);

             If (frmMain.frmTmpMod.qrEntradaPacienteSubtotal.Value <> 0) Then
               frmMain.frmTmpMod.qrEntradaPacienteCoberturaPorc.Value := DM.Redondeo((frmMain.frmTmpMod.qrEntradaPacienteCoberturaValor.Value * 100) / ValorCobertura);
//                                                                                   frmMain.frmTmpMod.qrEntradaPacienteSubtotal.Value);
//             frmMain.frmTmpMod.ActTotales;
//             frmMain.frmTmpMod.CrearNotaDebito;
//             frmMain.frmTmpMod.ActNotaDebito;
//             frmMain.frmTmpMod.RefrescarInterface;

             If (frmMain.frmTmpMod.valorNC > 1) then
               Begin
                 frmMain.frmTmpMod.seg_late := True;
                 frmMain.frmTmpMod.ConceptoNC := 'Confirmacion de Cobertura Tardia.';
                 frmMain.frmTmpMod.CrearNotaCredito;
                 frmMain.frmTmpMod.ActNotaCredito;
               End;

             frmMain.frmTmpMod.ActTotales;

             If ( frmMain.frmTmpMod.qrEntradaPaciente.State in [dsEdit,dsInsert] ) And
                (frmMain.frmTmpMod.qrEntradaPacienteEntradaID.Value <> '') Then
               frmMain.frmTmpMod.qrEntradaPaciente.Post;

              If (frmMain.frmTmpMod.qrEntradaPacienteEntradaID.Value <> '') Then
              begin
                 If dm.qrParametroServidor_AS400.value <> EmptyStr then
                 begin
                     if dm.PingHost(dm.qrParametroServidor_AS400.value,1) then
                     begin
                         InterfaseAS400.ASConnection.Close;
                         InterfaseAS400.ASConnection.Open;

                         //Insertando las Pruebas en el AS-400.
                         InterfaseAS400.MandarPruebaAS400(frmMain.frmTmpMod.qrEntradaPacienteMuestraNo.Value, frmMain.frmTmpMod.qrEntradaPacientePacienteId.Value);
                         InterfaseAS400.ASConnection.Close;
                     end;
                 end;
              end;
           End;
        End;
     End;
end;
procedure TfrmAutorizacionArsMod.txtEstadoPropertiesChange(Sender: TObject);
begin
  if txtEstado.Text='Activa' then
     txtEstado.Style.Font.Color:= clGreen
  else if txtEstado.Text='Pendiente' then
     txtEstado.Style.Font.Color:= clBlack
  else if txtEstado.Text='Cancelada' then
     txtEstado.Style.Font.Color:= clRed
  else
     txtEstado.Style.Font.Color:= clBlack;
end;

END.


