unit AutorizacionArsND;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,TypInfo,
  Dialogs, dxLayoutControl, cxControls, cxTextEdit, cxDBEdit, cxContainer,
  cxEdit, cxCheckBox, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons,
  dbTables,db, cxCurrencyEdit, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, JvMemoryDataset, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid,ADODB,ReferenciaWebService, ExtCtrls, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDSimplePanel,dlgmensajes, xmldom, InvokeRegistry,WebservicePalic,
  Grids, DBGrids, DBClient, Rio, SOAPHTTPClient, Provider, Xmlxform,SenasaRefWS,
  WsReferenciaAutorizacion,Palic,SimetricaWS, cxLookAndFeels,cxNavigator,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, LMDControl,Universal,XSBuiltIns;

type
  TfrmAutorizacionArsND = class(TForm)
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
    DataSource1: TDataSource;
    XMLTransformProvider1: TXMLTransformProvider;
    HTTPRIO1: THTTPRIO;
    ClientDataSet1: TClientDataSet;
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
     vURLWSDL           : String;
     WSPal              : PalicSoap;
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
  frmAutorizacionArsND: TfrmAutorizacionArsND;

implementation

uses ActionsDM, DataModule, Main, PuntoVenta, XMLIntf, XMLDoc, SoapConst,PuntoVentaND, UInterfaseAs400, FMTBcd;

{$R *.dfm}

procedure TfrmAutorizacionArsND.BtAceptarClick(Sender: TObject);
Var qinsert         : TADOQuery;
    qInsertD        : TADOQuery;
    I,x               : Integer;
    NumCancelacion  : TXSDecimal;
    NReclamacion    : Smallint;
    strAutorizacion : WideString;
    WSYun           : WsServicioAutorizacionSoap;
    WebId           : TXSDecimal;
    Telefono_Pac    : String;
begin
  Screen.Cursor := crHourGlass;
  if txtEstado.Text='Pendiente' then
  begin
    if (dm.GrupoArs = GrupoArsSDS) then
    begin
        CAutorizacionR  :=  ReclamacionSM.Create;
        Try
          spMensaje.Visible := True;
          CAutorizacionR  :=  GetSimetricaSoap(false,Dm.vURLWSDL).ReclamacionPorCoberturas(Dm.codArs,ArrCobertura,StrToInt64(txtCliente.Text),Dm.codProveedor,Dm.Complementariedad,StrToInt64(Dm.Cod_Doctor));
        Except On E: Exception do
          begin
            spMensaje.Visible := False;
            Raise exception.CreateFmt('Error Creando Reclamación ó Reclamación Ars Humano ó Reservas.  Error='+E.Message, []);
          End;
        end;
        spMensaje.Visible := False;
        CurMontoArs             := CAutorizacionR.MontoArs;
        CurMontoAfiliado.Value  := CAutorizacionR.DiferenciaAfiliado;
        CurMontoAF              := CAutorizacionR.DiferenciaAfiliado;        
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
    if (dm.GrupoArs = GrupoArsPalic) then
    begin
        Telefono_Pac    :=  StringReplace(dm.Telefono_Pac, '(', '', [rfReplaceAll, rfIgnoreCase]);
        Telefono_Pac    :=  StringReplace(Telefono_Pac, ')', '', [rfReplaceAll, rfIgnoreCase]);
        Telefono_Pac    :=  StringReplace(Telefono_Pac, '-', '', [rfReplaceAll, rfIgnoreCase]);
        Telefono_Pac    :=  StringReplace(Telefono_Pac, ' ', '', [rfReplaceAll, rfIgnoreCase]);        
        CReclamacionPal :=  ReclamacionP.Create;
        Try
          spMensaje.Visible := True;
          CReclamacionPal :=  GetPalicSoap(false,Dm.vURLWSDL).fProcesa_reclamacion(dm.Num_Session,dm.TipoPlan,SCobertura,CantCobertura,dm.Tipo_Doctor,dm.Cod_Doctor,dm.Nombre_Doctor,'Web_Service','null',StrToInt64(Telefono_Pac));
        Except On E: Exception do
          begin
            spMensaje.Visible := False;
            Raise exception.CreateFmt('Error Creando Reclamación ó Reclamación Ars Palic.  Error='+E.Message, []);
          End;
        end;
        spMensaje.Visible := False;
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
    if (dm.GrupoArs = GrupoArsSenasa) then
    begin
        Try
          spMensaje.Visible := True;
          CAutorizacionSen :=   GetTSenasaRefWSSoap(false,Dm.vURLWSDL).Aceptar(CAutorizacionSen);
        Except On E: Exception do
          begin
            spMensaje.Visible := False;
            Raise exception.CreateFmt('Error Creando Reclamación ó Reclamación Ars Senasa.  Error='+E.Message, []);
          End;
        end;
        spMensaje.Visible := False;
        txtReclamacion.Text     := CAutorizacionSen.NAP;
        CurMontoAfiliado.Value  := CAutorizacionSen.ValorCopago;
        CurMontoArs             := CAutorizacionSen.MontoAutorizado;
        CurMontoAF              := CAutorizacionSen.ValorCopago;
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
             Parameters.ParamByName('Muestrano').Value    := frmMain.frmTmpND.qrEntradaPacienteMuestrano.Asstring;
             Parameters.ParamByName('Afiliado').Value     := txtCliente.Text;
             Parameters.ParamByName('TipoPlan').Value     := txtTipoPlan.Text;
             Parameters.ParamByName('Fecha').Value        := DM.SystemDate;
             Parameters.ParamByName('Monto').Value        := CurTotal.value;
             Parameters.ParamByName('Montoafiliado').Value:= CurMontoAF;
             Parameters.ParamByName('Montoars').Value     := CurMontoArs;
             If (dm.GrupoArs = GrupoArsSDS) Then
             begin
                Parameters.ParamByName('Numero').Value       :=CAutorizacionR.NoReclamacion;
                Parameters.ParamByName('Numerosession').Value:=CAutorizacionR.NumeroSession;
                Parameters.ParamByName('Estado').Value    := 2;
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
             Parameters.ParamByName('ClienteID').Value    := frmMain.frmTmpND.qrEntradaPacienteClienteID.Asstring;
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
                      Parameters.ParamByName('Muestrano').Value     := frmMain.frmTmpND.qrEntradaPacienteMuestrano.Asstring;
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
        CCancelacion  :=GetSimetricaSoap(false,Dm.vURLWSDL).CancelarAutorizacion(Dm.CodArs,CAutorizacionR.NumeroSession,'Cancelada Por '+DM.CurUser);
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
    If (dm.GrupoArs = GrupoArsSenasa) then
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
             Add(' Update PTRECLAMO With (rowlock) '+
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
        frmMain.frmTmpND.qrEntradaPacienteCoberturaPorC.AsCurrency:=0.0;
        frmMain.frmTmpND.qrEntradaPacienteCoberturaConfirmada.Asinteger:=0;
        frmMain.frmTmpND.qrEntradaPacienteAprobacionNo.Asstring:=EmptyStr;
        frmMain.frmTmpND.qrEntradaPacienteAprobacionPor.Asstring:=EmptyStr;
        frmMain.frmTmpND.ActTotales;
        ShowMessage('Reclamación Cancelada.');
   Except
       Raise exception.CreateFmt('Error Actualizando Reclamación.', []);
    end;
    FreeAndNil(qinsert);
//    FormShow(Sender);
  end;
  Screen.Cursor := crDefault;
end;

procedure TfrmAutorizacionArsND.CurDiferenciaPropertiesChange(Sender: TObject);
begin
  if CurDiferencia.Value > 0 then
     CurDiferencia.Style.Font.Color:= clGreen
  else if CurDiferencia.Value = 0 then
     CurDiferencia.Style.Font.Color:= clBlack
  else if CurDiferencia.Value < 0 then
     CurDiferencia.Style.Font.Color:= clRed;
end;

procedure TfrmAutorizacionArsND.dbDatosRecStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  If (frmMain.frmTmpND.qrEntradaPacienteOrigen.Value = DM.qrParametroGrupoSeg.Value) then
  begin
    If (ARecord.Values[dbDatosRecMontoArs.Index] = 0) Then  AStyle := noseguro;
    If (dm.GrupoArs = GrupoArsSenasa) And (Not(ARecord.Values[dbDatosRecError.Index]='EnCobertura')) then AStyle := noseguro;
    If (dm.GrupoArs = GrupoArsSenasa) And (ARecord.Values[dbDatosRecError.Index]='EnCobertura') then AStyle := seguro;
    If (dm.GrupoArs = GrupoArsPalic)  And (Not(ARecord.Values[dbDatosRecError.Index]='ok')) then AStyle := noseguro;
    If (dm.GrupoArs = GrupoArsPalic)  And (ARecord.Values[dbDatosRecError.Index]='ok') then AStyle := seguro;
  end;
end;

procedure TfrmAutorizacionArsND.FormKeyDown(Sender: TObject; var Key: Word;
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


procedure TfrmAutorizacionArsND.FormShow(Sender: TObject);
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
    bProcedimiento     : Boolean;
    Fecha_Auth         : TXSDateTime;
    Tarifa             : TXSDecimal;
    Copago             : TXSDecimal;
    Precio             : TXSDecimal;
    Cantidad           : TXSDecimal;
begin
  Screen.Cursor := crHourGlass;
  noseguro := TcxStyle.Create(Self);
  noseguro.Color := DM.ColorUrgente;
  noseguro.TextColor := ClBlack;

  if dm.GrupoArs = GrupoArsSDS then
  begin
          qAutoriza := DM.NewQuery;
          With qAutoriza,sql do
          begin
            qAutoriza.Close;
            qAutoriza.SQL.Text := ' Select Afiliado,Estado,Fecha,Monto,MontoAfiliado,MontoArs,Numero,NumeroSession '+
                                  ' From PtReclamo (nolock) Where Muestrano='+#39+frmMain.frmTmpND.qrEntradaPacienteMuestrano.Asstring+#39;
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
                                  ' d.Cobertura,d.Detalles as Descripcion,d.MontoAfiliado as MontoAfiliadoDet,d.MontoArs as MontoArsDet,r.NumeroSession  from ptreclamo r (nolock) inner join ptreclamodetalle d (nolock)'+
                                  ' On    r.Muestrano=d.Muestrano '+
                                  ' And   r.Reclamoid=d.Reclamoid '+
                                  ' Where r.Muestrano='+#39+frmMain.frmTmpND.qrEntradaPacienteMuestrano.Asstring+#39+
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
              if CurTotal.Value = 0 then
              begin
                  Screen.Cursor     := crDefault;
                  spMensaje.Visible := False;
                  btAceptar.Enabled := False;
                  EtMensajeDlg('Monto cubierto No puede ser cero(0).  Consulte con un representante.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
                  exit;
              end;
              CurPorcentajeCob.Value  := (((fieldbyname('Total').AsFloat)-(fieldbyname('MontoAfiliado').AsFloat))*100)/((fieldbyname('Total').AsFloat));
              NumeroSession           := fieldbyname('Numerosession').Asinteger;
              frmMain.frmTmpND.qrEntradaPacienteDetalle.First;
              While not frmMain.frmTmpND.qrEntradaPacienteDetalle.eof do
              begin
                If frmMain.frmTmpND.qrEntradaPacienteDetalleCoberturaAplica.AsInteger = 1 then
                begin
                  CurPrecioArs    := CurPrecioArs + frmMain.frmTmpND.qrEntradaPacienteDetallePrecio.Value;
                end;
                frmMain.frmTmpND.qrEntradaPacienteDetalle.Next;
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
          CCobertura    := CoberturaSM.Create;
          CAutorizacion := CotizacionSM.Create;
          i:=0;
          CurPrecioArs:=0;
          z:=frmMain.frmTmpND.qrEntradaPacienteDetalle.Recordcount;
          frmMain.frmTmpND.qrEntradaPacienteDetalle.First;
          While not frmMain.frmTmpND.qrEntradaPacienteDetalle.eof do
          begin
              If frmMain.frmTmpND.qrEntradaPacienteDetalleCoberturaAplica.AsInteger = 1 then
              begin
                 Setlength(ArrCobertura,length(ArrCobertura)+1);
                  CodigoCup       := frmMain.frmTmpND.qrEntradaPacienteDetalleCodigoCupID.AsString;
                  Descripcion[i]  := frmMain.frmTmpND.qrEntradaPacienteDetalleDescripcion.AsString;
                  CurPrecioArs    := CurPrecioArs + frmMain.frmTmpND.qrEntradaPacienteDetallePrecio.Value;
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
              frmMain.frmTmpND.qrEntradaPacienteDetalle.Next;
          end;
          CAutorizacion           := CotizacionSM.Create;
          Try
            spMensaje.Visible       := True;
            CAutorizacion           := GetSimetricaSoap(false,Dm.vURLWSDL).CotizacionPorCoberturas(Dm.codArs,ArrCobertura,StrToInt64(frmMain.frmTmpND.qrEntradaPacientePolizaID.Asstring),Dm.codProveedor,Dm.Complementariedad,StrToInt64(Dm.Cod_Doctor));
          except
            on E: Exception do
            begin
              spMensaje.Visible     := False;
              Showmessage(E.Message);
              Exit;
            end;
          End;
          spMensaje.Visible     := False;
          txtCliente.Value        := strtoint64(frmMain.frmTmpND.qrEntradaPacientePolizaID.Asstring);
          txtReclamacion.Value    := CAutorizacion.NoReclamacion;
          CurMontoAfiliado.Value  := CAutorizacion.DiferenciaAfiliado;
          txtTipoPlan.Text        := Dm.TipoPlan;
          CurTotal.Value          := CAutorizacion.DiferenciaAfiliado+CAutorizacion.MontoArs;
          if CurTotal.Value = 0 then
          begin
              Screen.Cursor     := crDefault;
              spMensaje.Visible := False;
              btAceptar.Enabled := False;
              EtMensajeDlg('Ninguna de las prueba(s) está habil para autorizar.  Consulte con un representante.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
              exit;
          end;
          CurPorcentajeCob.Value  := (((CurTotal.Value-CurMontoAfiliado.Value)*100))/(CurTotal.Value);
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
          for x := 0 to length(CAutorizacion.ListaCoberturas)-1 do
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
                                  ' From PtReclamo (nolock) Where Muestrano='+#39+frmMain.frmTmpND.qrEntradaPacienteMuestrano.Asstring+#39;
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
                                  ' d.Cobertura,d.Detalles as Descripcion,d.MontoAfiliado as MontoAfiliadoDet,d.MontoArs as MontoArsDet,r.NumeroSession,WebID  from ptreclamo r (nolock) inner join ptreclamodetalle d (nolock) '+
                                  ' On r.Muestrano=d.Muestrano '+
                                  ' And   r.Reclamoid=d.Reclamoid '+
                                  ' Where r.Muestrano='+#39+frmMain.frmTmpND.qrEntradaPacienteMuestrano.Asstring+#39+
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
              dm.dWebID               := fieldbyname('WebID').AsFloat;
              frmMain.frmTmpND.qrEntradaPacienteDetalle.First;
              While not frmMain.frmTmpND.qrEntradaPacienteDetalle.eof do
              begin
                If frmMain.frmTmpND.qrEntradaPacienteDetalleCoberturaAplica.AsInteger = 1 then
                begin
                  CurPrecioArs    := CurPrecioArs + frmMain.frmTmpND.qrEntradaPacienteDetallePrecio.Value;
                end;
                frmMain.frmTmpND.qrEntradaPacienteDetalle.Next;
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

          i:=0;
          CurPrecioArs:=0;
          CurMontoArs :=0;
          CurMontoAF  :=0;
          SetLength(vArrayPruebas, frmMain.frmTmpND.qrEntradaPacienteDetalle.Recordcount);
          SetLength( vArrayCodigoCup, frmMain.frmTmpND.qrEntradaPacienteDetalle.Recordcount);
          SetLength(vArrayPrecioPrueba, frmMain.frmTmpND.qrEntradaPacienteDetalle.Recordcount);
          frmMain.frmTmpND.qrEntradaPacienteDetalle.First;
          While not frmMain.frmTmpND.qrEntradaPacienteDetalle.eof do
          begin
              If frmMain.frmTmpND.qrEntradaPacienteDetalleCoberturaAplica.AsInteger = 1 then
              begin
                  vArrayCodigoCup[i] := frmMain.frmTmpND.qrEntradaPacienteDetalleCodigoCupID.AsString;
                  vArrayPrecioPrueba[i] := frmMain.frmTmpND.qrEntradaPacienteDetallePrecio.AsFloat;
                  CurPrecioArs := CurPrecioArs + frmMain.frmTmpND.qrEntradaPacienteDetallePrecio.Value;
                  Total_Pruebas :=i+1;
                  i:=i+1;
              end;
              frmMain.frmTmp.qrEntradaPacienteDetalle.Next;
          end;
          Try
          vArrayOfTRecAutorizacionOut := WSUniv.ProcesoAutorizacion(dm.dWebID,'1',vArrayPruebas,vArrayCodigoCup,vArrayPrecioPrueba,Total_Pruebas,Dm.CurUserUniv,'Autorizacion Creada por'+dm.CurUser);
          if vArrayOfTRecAutorizacionOut[0].srvMessage <> EmptyStr then
          Begin
              Screen.Cursor     := crDefault;
              spMensaje.Visible := False;
              EtMensajeDlg(vArrayOfTRecAutorizacionOut[0].srvMessage, etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
          end;

          DsDatosRec.Enabled := False;
          if not JvMemoryData2.Active then  JvMemoryData2.Active := true;
          JvMemoryData2.Close;
          JvMemoryData2.Open;
          txtCliente.Text            := frmMain.frmTmpND.qrEntradaPacientePolizaID.Asstring;
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
                 Parameters.ParamByName('Muestrano').Value    := frmMain.frmTmpND.qrEntradaPacienteMuestrano.Asstring;
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
                 Parameters.ParamByName('ClienteID').Value    := frmMain.frmTmpND.qrEntradaPacienteClienteID.Asstring;
                 ExecSQL;
              end;
              DsDatosRec.Enabled := False;
              qinsert := DM.NewQuery;
              JvMemoryData2.First;
              While not JvMemoryData2.Eof do
              begin
                  If JvMemoryData2MontoAfiliado.AsCurrency > 0 then
                  Begin
                      I:=I+1;
                      With qinsert,sql do
                      begin
                          Close;
                          Clear;
                          Add(' INSERT INTO PTRECLAMODETALLE (Reclamoid, Muestrano, Cobertura,Secuencia, Detalles, Montoafiliado, Montoars) '+
                             ' VALUES (:Reclamoid,:Muestrano,:Cobertura,:Secuencia,:Detalles,:Montoafiliado,:Montoars)');
                          Parameters.ParamByName('Reclamoid').Value     := ReclamacionID;
                          Parameters.ParamByName('Muestrano').Value     := frmMain.frmTmpND.qrEntradaPacienteMuestrano.Asstring;
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
                                  ' From PtReclamo (nolock) Where Muestrano='+#39+frmMain.frmTmpND.qrEntradaPacienteMuestrano.Asstring+#39;
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
                                  ' Where r.Muestrano='+#39+frmMain.frmTmpND.qrEntradaPacienteMuestrano.Asstring+#39+
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
              frmMain.frmTmpND.qrEntradaPacienteDetalle.First;
              While not frmMain.frmTmpND.qrEntradaPacienteDetalle.eof do
              begin
                If frmMain.frmTmpND.qrEntradaPacienteDetalleCoberturaAplica.AsInteger = 1 then
                begin
                  CurPrecioArs    := CurPrecioArs + frmMain.frmTmpND.qrEntradaPacienteDetallePrecio.Value;
                end;
                frmMain.frmTmpND.qrEntradaPacienteDetalle.Next;
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
          frmMain.frmTmpND.qrEntradaPacienteDetalle.First;
          While not frmMain.frmTmpND.qrEntradaPacienteDetalle.eof do
          begin
                If frmMain.frmTmpND.qrEntradaPacienteDetalleCoberturaAplica.AsInteger = 1 then
                begin
                  z:=z+1;
                end;
                frmMain.frmTmpND.qrEntradaPacienteDetalle.Next;
          end;
          frmMain.frmTmpND.qrEntradaPacienteDetalle.First;
          While not frmMain.frmTmpND.qrEntradaPacienteDetalle.eof do
          begin
              If frmMain.frmTmpND.qrEntradaPacienteDetalleCoberturaAplica.AsInteger = 1 then
              begin
                  CodigoCup       := frmMain.frmTmpND.qrEntradaPacienteDetalleCodigoCupID.AsString;
                  Descripcion[i]  := frmMain.frmTmpND.qrEntradaPacienteDetalleDescripcion.AsString;
                  CurPrecioArs    := CurPrecioArs + frmMain.frmTmpND.qrEntradaPacienteDetallePrecio.Value;
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
              frmMain.frmTmpND.qrEntradaPacienteDetalle.Next;
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
          txtCliente.Value        := strtoint64(frmMain.frmTmpND.qrEntradaPacientePolizaID.Asstring);
          txtReclamacion.Value    := 0;
          CurMontoAfiliado.Value  := CAutorizacionPal.Total_Monto_Reclamado-CAutorizacionPal.Total_Monto_Pagado;
          txtTipoPlan.Text        := Dm.TipoPlan;
          CurTotal.Value          := CAutorizacionPal.Total_Monto_Reclamado;
          If CurTotal.Value > 0 then
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
          if CurTotal.Value = 0 then
          begin
              Screen.Cursor     := crDefault;
              spMensaje.Visible := False;
              btAceptar.Enabled := False;
              EtMensajeDlg('Ninguna de las prueba(s) está habil para autorizar.  Consulte con un representante.', etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
          end;
          DsDatosRec.Enabled := True;
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
                                  ' From PtReclamo (nolock) Where Muestrano='+#39+frmMain.frmTmpND.qrEntradaPacienteMuestrano.Asstring+#39;
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
                                  ' On    r.Muestrano=d.Muestrano '+
                                  ' And   r.Reclamoid=d.Reclamoid '+
                                  ' Where r.Muestrano='+#39+frmMain.frmTmpND.qrEntradaPacienteMuestrano.Asstring+#39+
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
              frmMain.frmTmpND.qrEntradaPacienteDetalle.First;
              While not frmMain.frmTmpND.qrEntradaPacienteDetalle.eof do
              begin
                If frmMain.frmTmpND.qrEntradaPacienteDetalleCoberturaAplica.AsInteger = 1 then
                begin
                  CurPrecioArs    := CurPrecioArs + frmMain.frmTmpND.qrEntradaPacienteDetallePrecio.Value;
                end;
                frmMain.frmTmpND.qrEntradaPacienteDetalle.Next;
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
          CCoberturaSen    := crefsProcedimientos.Create;
          CAutorizacionSen := crefsAutorizacionLaboratorio.Create;
          i:=0;
          CurPrecioArs:=0;
          z:=frmMain.frmTmpND.qrEntradaPacienteDetalle.Recordcount;
          //Crea procedimientos
          frmMain.frmTmpND.qrEntradaPacienteDetalle.First;
          While not frmMain.frmTmpND.qrEntradaPacienteDetalle.eof do
          begin
              If frmMain.frmTmpND.qrEntradaPacienteDetalleCoberturaAplica.AsInteger = 1 then
              begin
                  Setlength(ArrCoberturaSen,length(ArrCoberturaSen)+1);
                  CodigoCup       := frmMain.frmTmpND.qrEntradaPacienteDetalleCodigoCupID.AsString;
                  Descripcion[i]  := frmMain.frmTmpND.qrEntradaPacienteDetalleDescripcion.AsString;
                  CurPrecioArs    := CurPrecioArs + frmMain.frmTmpND.qrEntradaPacienteDetallePrecio.Value;
                  ArrCoberturaSen[length(ArrCoberturaSen)-1]              := crefsProcedimientos.Create;
                  ArrCoberturaSen[length(ArrCoberturaSen)-1].SIMON        := CodigoCup;
                  ArrCoberturaSen[length(ArrCoberturaSen)-1].SubGrupo     := '8.1';
                  ArrCoberturaSen[length(ArrCoberturaSen)-1].Descripcion  := Descripcion[i];
                  i:=i+1;
              end;
              frmMain.frmTmpND.qrEntradaPacienteDetalle.Next;
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
          txtCliente.Value := strtoint64(frmMain.frmTmpND.qrEntradaPacientePolizaID.Asstring);
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
                                  ' From PtReclamo (nolock) Where Muestrano='+#39+frmMain.frmTmpND.qrEntradaPacienteMuestrano.Asstring+#39;
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
                                  ' Where r.Muestrano='+#39+frmMain.frmTmpND.qrEntradaPacienteMuestrano.Asstring+#39+
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
              frmMain.frmTmpND.qrEntradaPacienteDetalle.First;
              While not frmMain.frmTmpND.qrEntradaPacienteDetalle.eof do
              begin
                If frmMain.frmTmpND.qrEntradaPacienteDetalleCoberturaAplica.AsInteger = 1 then
                begin
                  CurPrecioArs    := CurPrecioArs + frmMain.frmTmpND.qrEntradaPacienteDetallePrecio.Value;
                end;
                frmMain.frmTmpND.qrEntradaPacienteDetalle.Next;
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
          z:=frmMain.frmTmpND.qrEntradaPacienteDetalle.Recordcount;
          //Crea procedimientos
          frmMain.frmTmpND.qrEntradaPacienteDetalle.First;
          DsDatosRec.Enabled      := False;
          if not JvMemoryData2.Active then
            JvMemoryData2.Active  := true;
          JvMemoryData2.Close;
          JvMemoryData2.Open;
          x:=0;
          StrMensaje:=EmptyStr;          
          While not frmMain.frmTmpND.qrEntradaPacienteDetalle.eof do
          begin
              If frmMain.frmTmpND.qrEntradaPacienteDetalleCoberturaAplica.AsInteger = 1 then
              begin
                  Setlength(ArrCoberturaYun,length(ArrCoberturaYun)+1);
                  CodigoCup       := frmMain.frmTmpND.qrEntradaPacienteDetalleCodigoCupID.AsString;
                  Descripcion[i]  := frmMain.frmTmpND.qrEntradaPacienteDetalleDescripcion.AsString;
                  CurPrecioArs    := CurPrecioArs + frmMain.frmTmpND.qrEntradaPacienteDetallePrecio.Value;
                  ArrCoberturaYun[length(ArrCoberturaYun)-1]              := Prestacion.Create;
                  ArrCoberturaYun[length(ArrCoberturaYun)-1].Codigo       := CodigoCup;
                  ArrCoberturaYun[length(ArrCoberturaYun)-1].Descripcion  := Descripcion[i];
                  WSYunen                 := GetWsServicioAutorizacionSoap();
                  WSYunen.AgregarPrestacion('01',frmMain.frmTmpND.qrEntradaPacienteDetalleCodigoCupID.AsString,1,frmMain.frmTmpND.qrEntradaPacienteDetallePrecio.Value,dm.Id_Trans,CCoberturaYun,Mensaje);
                  If Mensaje = 'Prestacion no encontrada' then
                  Begin
                       StrMensaje:=StrMensaje+'Servicio ('+frmMain.frmTmpND.qrEntradaPacienteDetalleCodigoCupID.AsString+' '+frmMain.frmTmpND.qrEntradaPacienteDetalleDESCRIPCION.AsString+').  Código cups NO válido.  Consulte con Analista de Tarifas.'+#13;
                  end;
                  If Mensaje = 'Servicio Inactivo' then
                  Begin
                       StrMensaje:=StrMensaje+'Servicio ('+frmMain.frmTmpND.qrEntradaPacienteDetalleCodigoCupID.AsString+' '+frmMain.frmTmpND.qrEntradaPacienteDetalleCodigoCupID.AsString+').  No está activo.  Consulte con Analista de Tarifas.'+#13;
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
              frmMain.frmTmpND.qrEntradaPacienteDetalle.Next;
          end;
          JvMemoryData2.First;
           If Trim(StrMensaje) <> EmptyStr then
          Begin
              Screen.Cursor     := crDefault;
              spMensaje.Visible := False;
              EtMensajeDlg(StrMensaje, etAviso, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
              exit;
          end;
          txtCliente.Value        := strtoint64(frmMain.frmTmpND.qrEntradaPacientePolizaID.Asstring);
          CurMontoAfiliado.Value  := CurPrecioArs;
          txtTipoPlan.Text        := Dm.TipoPlan;
          txtAfiliado.Text        := Dm.Afiliado;
          CurTotal.Value          := Monto_Autorizado+Valor_Copago;
          if CurTotal.Value > 0 then
            CurPorcentajeCob.Value  := (((CurTotal.Value-CurMontoAfiliado.Value))*100)/(CurTotal.Value);
          CurMontoTotalPV.Value   := CurPrecioArs;
          CurDiferencia.Value     := CurTotal.Value - CurMontoTotalPV.Value;
          txtEstado.Text          := 'Pendiente';
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
          CCoberturaYun.Free;
  end;
  Screen.Cursor := crDefault;
end;
procedure TfrmAutorizacionArsND.HTTPRIO1AfterExecute(const MethodName: string;
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

procedure TfrmAutorizacionArsND.Run;
begin
  Origen  := frmMain.frmTmpND.qrEntradaPacienteOrigen.Value;
  Seguroid := frmMain.frmTmpND.qrEntradaPacienteClienteId.Value;
  Nombre := frmMain.frmTmpND.qrEntradaPacienteClienteNombre.Value;
  Aprobacion := frmMain.frmTmpND.qrEntradaPacienteAprobacionNo.Value;
  ConfirmadoPor := frmMain.frmTmpND.qrEntradaPacienteAPROBACIONPOR.Value;
  ValorCobertura := frmMain.frmTmpND.Valor_Cobertura(frmMain.frmTmpND.qrEntradaPacienteRECID.Value);

  CurMontoAfiliado.Value := ValorCobertura;

  frmMain.frmTmpND.qrEntradaPaciente.Edit;
  frmMain.frmTmpND.qrEntradaPacienteCoberturaRechazada.Value := Rechazado;
  If (frmMain.frmTmpND.qrEntradaPacienteCoberturaConfirmada.Value = 0) Then
    frmMain.frmTmpND.qrEntradaPacienteCoberturaConfirmada.Value := Confirmado;
  frmMain.frmTmpND.qrEntradaPacienteCoberturaValor.Value := frmMain.frmTmpND.qrEntradaPacienteCOBERTURAMONTOPRECONFIRMADO.Value;
  showmodal;
end;
procedure TfrmAutorizacionArsND.Actualizar;
begin
    If (Rechazado = 1) then
    Begin
       //Cobertura Rechazada.
       frmMain.frmTmpND.Operacion := 'E';
       frmMain.frmTmpND.qrEntradaPaciente.Edit;
       frmMain.frmTmpND.qrEntradaPacienteAprobacionNo.Value := '';
       frmMain.frmTmpND.qrEntradaPacienteAPROBACIONPOR.Value := '';
       frmMain.frmTmpND.qrEntradaPacienteCoberturaPorc.Value := 0;
       frmMain.frmTmpND.qrEntradaPacienteCoberturaValor.Value := 0;
       frmMain.frmTmpND.qrEntradaPacienteCoberturaSeguro.Value := 0;
       frmMain.frmTmpND.qrEntradaPacienteCoberturaRechazada.Value := 1;
       frmMain.frmTmpND.qrEntradaPacienteCoberturaConfirmada.Value := 0;
       frmMain.frmTmpND.qrEntradaPacienteCOBERTURAMONTOPRECONFIRMADO.Value := 0;
       frmMain.frmTmpND.qrEntradaPacienteFECHAASEGURADORA.Value := DM.SystemDate;  //DM.Buscar_Fecha_Actual;
//       frmMain.frmTmpND.qrEntradaPacienteHoraRegistro.Value := TimeToStr(Time);
       frmMain.frmTmpND.qrEntradaPacienteHoraRegistro.Value := DM.Buscar_Hora_Actual;

       frmMain.frmTmpND.cambiarprecio := False;
//       frmMain.frmTmpND.qrEntradaPacienteClienteId.Value := frmMain.frmTmpND.qrEntradaPacientePacienteId.Value;
//       frmMain.frmTmpND.Buscar_Cliente;
//       frmMain.frmTmpND.qrEntradaPacienteClienteNombre.Value := frmMain.frmTmpND.qfindCltParams.FieldByName('Nombre').AsString;
//       frmMain.frmTmpND.qrEntradaPacienteOrigen.Value := frmMain.frmTmpND.qfindCltParams.FieldByName('GrupoCliente').AsString;
//       frmMain.frmTmpND.cambiarprecio := False;
       frmMain.frmTmpND.ActTotales;

       If ( frmMain.frmTmpND.qrEntradaPaciente.State in [dsEdit,dsInsert] ) And
          (frmMain.frmTmpND.qrEntradaPacienteEntradaID.Value <> '') Then
         frmMain.frmTmpND.qrEntradaPaciente.Post;

       If (frmMain.frmTmpND.qrEntradaPacienteEntradaID.Value <> EmptyStr) Then
       Begin
           If dm.qrParametroServidor_AS400.value <> EmptyStr then
           begin
                if dm.PingHost(dm.qrParametroServidor_AS400.value,1) then
                begin
                   InterfaseAS400.ASConnection.Close;
                   InterfaseAS400.ASConnection.Open;

                   //Insertando las Pruebas en el AS-400.
                   InterfaseAS400.MandarPruebaAS400(frmMain.frmTmpND.qrEntradaPacienteMuestraNo.Value, frmMain.frmTmpND.qrEntradaPacientePacienteId.Value);
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
              If (frmMain.frmTmpND.qrEntradaPacienteClienteID.Value = 'C00075') Or
                 (frmMain.frmTmpND.qrEntradaPacienteClienteID.Value = 'C00392') Or
                 (frmMain.frmTmpND.qrEntradaPacienteClienteID.Value = 'C01673') Then  frmMain.frmTmpND.qrEntradaPacienteAprobacionNo.Value  := 'P'+txtReclamacion.EditingText;
              If (frmMain.frmTmpND.qrEntradaPacienteClienteID.Value ='C03103') Or
                 (frmMain.frmTmpND.qrEntradaPacienteClienteID.Value ='C03209') then frmMain.frmTmpND.qrEntradaPacienteAprobacionNo.Value  := 'H'+txtReclamacion.EditingText;
          end
          else
              frmMain.frmTmpND.qrEntradaPacienteAprobacionNo.Value  := txtReclamacion.EditingText;
       end
       Else
          frmMain.frmTmpND.qrEntradaPacienteAprobacionNo.Value  := txtReclamacion.EditingText;
       frmMain.frmTmpND.qrEntradaPacienteAprobacionPor.Value    := 'W-SERVICE';
       frmMain.frmTmpND.qrEntradaPacienteCoberturaSeguro.Value  := CurMontoArs;
       frmMain.frmTmpND.qrEntradaPacienteCoberturaPorC.Value    := (CurMontoArs*100)/CurTotal.value;
       frmMain.frmTmpND.qrEntradaPacienteCoberturaValor.Value   := CurMontoArs;
       //Cobertura Confirmada.
       If (ValorCobertura < 1) Or
          (frmMain.frmTmpND.qrEntradaPacienteCoberturaValor.IsNull) Or
          (frmMain.frmTmpND.qrEntradaPacienteCoberturaValor.Value < 1) Or
          (frmMain.frmTmpND.qrEntradaPacienteCoberturaValor.Value > ValorCobertura) Then
       Begin
           //Dejando Igual Por Cobertura en Cero.
           frmMain.frmTmpND.qrEntradaPaciente.Edit;
           frmMain.frmTmpND.qrEntradaPacienteAprobacionNo.Value := '';
           frmMain.frmTmpND.qrEntradaPacienteAPROBACIONPOR.Value := '';
           frmMain.frmTmpND.qrEntradaPacienteCoberturaValor.Value := 0;
           frmMain.frmTmpND.qrEntradaPacienteCoberturaSeguro.Value := 0;
           frmMain.frmTmpND.qrEntradaPacienteCoberturaRechazada.Value := 0;
           frmMain.frmTmpND.qrEntradaPacienteCoberturaConfirmada.Value := 0;
           frmMain.frmTmpND.qrEntradaPacienteOrigen.Value := Origen;
           frmMain.frmTmpND.qrEntradaPacienteClienteId.Value := Seguroid;
           frmMain.frmTmpND.qrEntradaPacienteClienteNombre.Value := Nombre;
           frmMain.frmTmpND.ActTotales;

           If ( frmMain.frmTmpND.qrEntradaPaciente.State in [dsEdit,dsInsert] ) And
              (frmMain.frmTmpND.qrEntradaPacienteEntradaID.Value <> '') Then
             frmMain.frmTmpND.qrEntradaPaciente.Post;

//           frmMain.frmTmpND.qrEntradaPacienteAprobacionNo.Value := Aprobacion;
//           frmMain.frmTmpND.qrEntradaPacienteAPROBACIONPOR.Value := ConfirmadoPor;
//           DM.Error('El Monto de Cobertura Esta en Cero. Por Favor Verifique.!!!');
           Raise exception.CreateFmt(' Operacion Abortada Por Una de Estas Razones: '+ #13 +
                                     ' ó El Monto de Cobertura Esta en Cero '+ #13 +
                                     ' ó NO Existen Pruebas Cubiertas por el Seguro '+ #13 +
                                     ' ó El Monto Es Mayor que las Pruebas Cubiertas por el Seguro '+ #13 +
                                     ' Por Favor Verifique.!!!', []);
       End
       Else
       Begin
         if (frmMain.frmTmpND.qrEntradaPacienteCoberturaPreConfirmada.Value = 1) And (AutoConfirmar = 1) Then
         Begin
             //Cobertura Pre-Confirmada por el Seguro.
             Confirmado := 1;
             ValorCobertura := frmMain.frmTmpND.Valor_Cobertura(frmMain.frmTmpND.qrEntradaPacienteRECID.Value);
             CurMontoAfiliado.Value := ValorCobertura;

             //Actualizando la Cobertura Confirmada.
             frmMain.frmTmpND.valorNC := 0;
             frmMain.frmTmpND.Operacion := 'E';
             frmMain.frmTmpND.qrEntradaPaciente.Edit;
             frmMain.frmTmpND.qrEntradaPacienteCoberturaRechazada.Value := 0;
             frmMain.frmTmpND.qrEntradaPacienteCoberturaConfirmada.Value := 1;
             frmMain.frmTmpND.qrEntradaPacienteFECHAASEGURADORA.Value := DM.SystemDate;
//             frmMain.frmTmpND.qrEntradaPacienteHoraRegistro.Value := TimeToStr(Time);
             frmMain.frmTmpND.qrEntradaPacienteHoraRegistro.Value := DM.Buscar_Hora_Actual;

             If (frmMain.frmTmpND.qrEntradaPacienteAprobacionNo.IsNull) Or
                (frmMain.frmTmpND.qrEntradaPacienteAprobacionNo.Value = '') Or
                (frmMain.frmTmpND.qrEntradaPacienteAprobacionNo.Value = ' ') Or
                (frmMain.frmTmpND.qrEntradaPacienteAprobacionNo.Value = ' ') Then
               frmMain.frmTmpND.qrEntradaPacienteAprobacionNo.Value := DM.CurUser;

             If (frmMain.frmTmpND.qrEntradaPacienteAPROBACIONPOR.IsNull) Or
                (frmMain.frmTmpND.qrEntradaPacienteAPROBACIONPOR.Value = '') Or
                (frmMain.frmTmpND.qrEntradaPacienteAPROBACIONPOR.Value = ' ') Or
                (frmMain.frmTmpND.qrEntradaPacienteAPROBACIONPOR.Value = ' ') Then
               frmMain.frmTmpND.qrEntradaPacienteAPROBACIONPOR.Value := DM.CurUser;

//             frmMain.frmTmpND.qrEntradaPacienteCoberturaValor.Value := frmMain.frmTmpND.qrEntradaPacienteCoberturaSeguro.Value;
             frmMain.frmTmpND.qrEntradaPacienteCoberturaValor.Value := frmMain.frmTmpND.qrEntradaPacienteCOBERTURAMONTOPRECONFIRMADO.Value;

             frmMain.frmTmpND.ActTotales;

//             If (frmMain.frmTmpND.qrEntradaPacienteSubtotal.Value <> 0) Then
//               frmMain.frmTmpND.qrEntradaPacienteCoberturaPorc.Value := DM.Redondeo((frmMain.frmTmpND.qrEntradaPacienteCoberturaValor.Value * 100) / ValorCobertura);

             DM.Info('Esta Aseguradora Maneja Cobertura Fijas.');

             If ( frmMain.frmTmpND.qrEntradaPaciente.State in [dsEdit,dsInsert] ) And
                (frmMain.frmTmpND.qrEntradaPacienteEntradaID.Value <> '') Then
               frmMain.frmTmpND.qrEntradaPaciente.Post;

             If (frmMain.frmTmpND.qrEntradaPacienteEntradaID.Value <> EmptyStr) Then
             begin
                 If dm.qrParametroServidor_AS400.value <> EmptyStr then
                 begin
                     if dm.PingHost(dm.qrParametroServidor_AS400.value,1) then
                     begin
                         InterfaseAS400.ASConnection.Close;
                         InterfaseAS400.ASConnection.Open;

                         //Insertando las Pruebas en el AS-400.
                         InterfaseAS400.MandarPruebaAS400(frmMain.frmTmpND.qrEntradaPacienteMuestraNo.Value, frmMain.frmTmpND.qrEntradaPacientePacienteId.Value);
                         InterfaseAS400.ASConnection.Close;
                     end;
                 end;
             end;

//             frmMain.frmTmpND.btgrabarClick(nil);
           End
         Else
           Begin
             //Actualizando la Cobertura Confirmada.
             frmMain.frmTmpND.Operacion := 'E';
             frmMain.frmTmpND.qrEntradaPaciente.Edit;
//             frmMain.frmTmpND.qrEntradaPacienteOrigen.Value := Origen;
             frmMain.frmTmpND.qrEntradaPacienteClienteId.Value := Seguroid;
             frmMain.frmTmpND.qrEntradaPacienteClienteNombre.Value := Nombre;
             frmMain.frmTmpND.qrEntradaPacienteCoberturaRechazada.Value := 0;
             frmMain.frmTmpND.qrEntradaPacienteCoberturaConfirmada.Value := 1;
             frmMain.frmTmpND.qrEntradaPacienteFECHAASEGURADORA.Value := DM.SystemDate; //DM.Buscar_Fecha_Actual;
//             frmMain.frmTmpND.qrEntradaPacienteHoraRegistro.Value := TimeToStr(Time);
             frmMain.frmTmpND.qrEntradaPacienteHoraRegistro.Value := DM.Buscar_Hora_Actual;

//             frmMain.frmTmpND.qrEntradaPacienteAprobacionNo.Value := Aprobacion;
//             frmMain.frmTmpND.qrEntradaPacienteAPROBACIONPOR.Value := ConfirmadoPor;
//             frmMain.frmTmpND.valorND := 0;
//             frmMain.frmTmpND.valorND := (frmMain.frmTmpND.qrEntradaPacienteCoberturaValor.Value +
//                                        frmMain.frmTmpND.qrEntradaPacienteNeto.Value;
             frmMain.frmTmpND.valorNC := 0;
             frmMain.frmTmpND.valorNC := DM.Redondeo((frmMain.frmTmpND.qrEntradaPacienteCoberturaValor.Value +
                                                    frmMain.frmTmpND.qrEntradaPacienteTotalPagado.Value) -
                                                    frmMain.frmTmpND.qrEntradaPacienteSubtotal.Value);

             If (frmMain.frmTmpND.qrEntradaPacienteSubtotal.Value <> 0) Then
               frmMain.frmTmpND.qrEntradaPacienteCoberturaPorc.Value := DM.Redondeo((frmMain.frmTmpND.qrEntradaPacienteCoberturaValor.Value * 100) / ValorCobertura);
//                                                                                   frmMain.frmTmpND.qrEntradaPacienteSubtotal.Value);
//             frmMain.frmTmpND.ActTotales;
//             frmMain.frmTmpND.CrearNotaDebito;
//             frmMain.frmTmpND.ActNotaDebito;
//             frmMain.frmTmpND.RefrescarInterface;

             If (frmMain.frmTmpND.valorNC > 1) then
               Begin
                 frmMain.frmTmpND.seg_late := True;
                 frmMain.frmTmpND.ConceptoNC := 'Confirmacion de Cobertura Tardia.';
                 frmMain.frmTmpND.CrearNotaCredito;
                 frmMain.frmTmpND.ActNotaCredito;
               End;

             frmMain.frmTmpND.ActTotales;

             If ( frmMain.frmTmpND.qrEntradaPaciente.State in [dsEdit,dsInsert] ) And
                (frmMain.frmTmpND.qrEntradaPacienteEntradaID.Value <> '') Then
               frmMain.frmTmpND.qrEntradaPaciente.Post;

               If (frmMain.frmTmpND.qrEntradaPacienteEntradaID.Value <> '') Then
               begin
                 If dm.qrParametroServidor_AS400.value <> EmptyStr then
                 begin
                      if dm.PingHost(dm.qrParametroServidor_AS400.value,1) then
                      begin
                         InterfaseAS400.ASConnection.Close;
                         InterfaseAS400.ASConnection.Open;

                         //Insertando las Pruebas en el AS-400.
                         InterfaseAS400.MandarPruebaAS400(frmMain.frmTmpND.qrEntradaPacienteMuestraNo.Value, frmMain.frmTmpND.qrEntradaPacientePacienteId.Value);
                         InterfaseAS400.ASConnection.Close;
                      end;
                 end;
               end;
//             frmMain.frmTmpND.CrearNotaCredito;
//             frmMain.frmTmpND.btgrabarClick(nil);
           End;
        End;
     End;
end;
procedure TfrmAutorizacionArsND.txtEstadoPropertiesChange(Sender: TObject);
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


