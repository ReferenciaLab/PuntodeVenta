unit DialogNCMod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, StdCtrls, cxButtons, cxTextEdit, dxLayoutControl,
  cxContainer, cxMaskEdit, cxDropDownEdit, cxCurrencyEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBExtLookupComboBox,ADODB,dlgmensajes,ppTypes,StrUtils;

type
  TfrmDialogNCMod = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group2: TdxLayoutGroup;
    btcancelar: TcxButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    btaceptar: TcxButton;
    dxLayoutControl1Item6: TdxLayoutItem;
    dsDatos: TDataSource;
    dxLayoutControl1Group1: TdxLayoutGroup;
    edvalor: TcxCurrencyEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    CbConcepto: TcxExtLookupComboBox;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxAutorizacion: TcxMaskEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    cbExtCajero: TcxExtLookupComboBox;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Item7: TdxLayoutItem;
    cbExtEmpleado: TcxExtLookupComboBox;
    procedure CbConceptoPropertiesChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    Function  Verifica_Entrada(Autoriza : String):Boolean;
    Function  Verifica_Paciente(Muestrano : String;PacienteID : String):Boolean;
    Function  Verifica_Entrada_Balance(Muestrano : String;Monto : Double):Boolean;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    Function  Calcula_TiempoOrden(Fecha : TDateTime;Hora : String;Tipo : String):Integer;
    Function  Verifica_Pago(Tipo_Pago : String):Double;
    Procedure Buscar_FechaHora_Cobro;
    procedure Inserta_Auditoria;
    procedure Actualiza_Estatus_NotaCredito(St : String);
    procedure Crea_Nueva_Autorizacion(Autorizacion : String);
    procedure ImpresionNC;
  private
    { Private declarations }
    Fecha_Cobro :  TDateTime;
    Hora_Cobro  :  String;
    cobroid     :  String;
    TipoCobro   :  String;
    RecID       :  Int64;

  public
    { Public declarations }
    procedure Run;
  end;

var
  frmDialogNCMod: TfrmDialogNCMod;


implementation


uses ActionsDM,DataModule,PuntoVentaMod,Main, UInterfaseAs400;

{$R *.dfm}


procedure TfrmDialogNCMod.CbConceptoPropertiesChange(Sender: TObject);
begin
    if (cbConcepto.EditValue = '08') or
       (cbConcepto.EditValue = '10') or
       (cbConcepto.EditValue = '11') Then cbExtCajero.Enabled := True
    else
      cbExtCajero.Enabled := False;

  If (cbConcepto.EditValue = '14') then
     cxAutorizacion.Enabled := True
  else
     cxAutorizacion.Enabled := False;
  If (cbConcepto.EditValue = '06') then
     cbExtEmpleado.Enabled := True
  else
     cbExtEmpleado.Enabled := False;
end;

procedure TfrmDialogNCMod.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    With DM.qrConceptoNotas,sql do
    begin
        Close;
        Clear;
        Text :=' Select * from ptconceptonotas ';
        Open;
    end;
end;

procedure TfrmDialogNCMod.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = Vk_Down) then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);
  if (key = 13) then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);
  if (key = Vk_Up) then
     PostMessage(Handle, Wm_NextDlgCtl, 1, 0);
  if (key = 27) then
  begin
   Close;
  end;
end;


procedure TfrmDialogNCMod.FormShow(Sender: TObject);
Var strSql : String;
begin
    With dm.qrUsuarioSucursal,sql do
    begin
        Close;
        Clear;
        Text :=' select DISTINCT u.UserID,Nombre,s.SucursalID,u.UserID+s.SucursalID as Clave from SysUsuarios u Inner Join ptUsuarioSucursal s On u.Userid=s.userid '+
               ' Where Rolid in ('+#39+'8'+#39+','+#39+'12'+#39+','+#39+'14'+#39+','+#39+'15'+#39+','+#39+'10'+#39+','+#39+'11'+#39+')';
        Open;
    end;
    if dm.qrUsuarioSucursal.RecordCount > 0 then cbExtCajero.EditValue := frmMain.frmTmpMod.qrEntradaPacienteUserid.value;

    With DM.qrConceptoNotas,sql do
    begin
        Close;
        Clear;
        strSql :=' Select * from ptconceptonotas ';
        if Not((dm.CurRol = 7) or (dm.CurRol = 13)) Then
        begin
          strSql := strSql+ ' Where convert(int,ConceptoID) between '+#39+'1'+#39+' and '+#39+'7'+#39+' Or convert(int,ConceptoID)='+#39+'14'+#39;
        end;
        if (dm.CurRol = 11) Then
        begin
          strSql := strSql+ ' Or convert(int,ConceptoID)='+#39+'13'+#39;
        end;
        Text := strSql+' Order by ConceptoId';
        Open;
    end;
    edvalor.Value := 0.00;
    If dm.qrParametroServidor_AS400.value <> EmptyStr then
    begin
        With dm.qrEmpleado,sql do
        begin
            Close;
            Clear;
            Text :=' Select Convert(Varchar(10),Numero) As EMPLID,Nombre+'+#39+' '+#39+'+Isnull(Apellido1,'+#39+#39+')+'+#39+' '+#39+'+Isnull(Apellido2,'+#39+#39+')'+' as NAME '+
                   ' FROM [RHMercuryPrueba]..Empleados Where Estatus='+#39+'A'+#39;
            Open;
        end;
    end;
end;


procedure TfrmDialogNCMod.Run;
Var Monto_Tarjeta  : Double;
begin
 showmodal;
 if ModalResult = mrOk then
 begin
     if (CbConcepto.Text = '') Or (CbConcepto.Text = ' ') Then
     begin
  //     DM.Info('El Concepto de la Nota de Credito Esta En Blanco. Por Favor Verifique.');
       raise exception.CreateFmt('El Concepto de la Nota de Credito Esta En Blanco.  Verifique.',[]);
       exit;
     end;

     if (edvalor.Value < 0.01) Then
     begin
       raise exception.CreateFmt('El Monto de la Nota de Credito Esta En Blanco.  Verifique.',[]);
       exit;
     end;
     If (cbConcepto.EditValue ='10') then
     begin
         if Verifica_Pago(CodTarjetaCredito) = Dm.Redondeo(edvalor.Value) then
            Monto_Tarjeta:=Verifica_Pago(CodTarjetaCredito)
         else if Verifica_Pago(CodTarjetaDebito) = Dm.Redondeo(edvalor.Value) then
            Monto_Tarjeta:=Verifica_Pago(CodTarjetaDebito);
     end;

     if ((Dm.Redondeo(edvalor.Value)) <> Monto_Tarjeta) And (cbConcepto.EditValue ='10') Then
     begin
       raise exception.CreateFmt('El Monto Anular es diferente del Total Pagado por Tarjeta.  Verifique.',[]);
       exit;
     end;

     if ( Dm.Redondeo(edvalor.Value) > Abs(Dm.Redondeo(frmMain.frmTmpMod.qrEntradaPacienteTotalPendiente.Value)))
        And Not((cbConcepto.EditValue ='08') or (cbConcepto.EditValue ='10') or (cbConcepto.EditValue ='11') or (cbConcepto.EditValue ='15')) then
     begin
  //     DM.Info('El total a aplicar es mayor que el total pendiente de la factura. Por Favor Verifique.');
       raise exception.CreateFmt('El Monto a Aplicar Es Mayor que el Total Pendiente de la Factura.  Verifique.',[]);
       exit;
     end
     else
     if edvalor.Value <= 0 then
     begin
  //      DM.Info('El total a aplicar tiene que ser mayor de Cero. Por Favor Verifique.');
        raise exception.CreateFmt('El Monto a Aplicar Tiene que Ser Mayor de Cero.  Verifique.',[]);
        exit;
     end
     else
       If (cbConcepto.EditValue = '08') then
       begin
            If (Verifica_Pago(CodEfectivo) > 0) or
               (Verifica_Pago(CodDolar) > 0)then
            begin
                Buscar_FechaHora_Cobro;

                    If Not(Calcula_TiempoOrden(Fecha_Cobro,Hora_Cobro,'hh') < 25) then
                    begin
                        EtMensajeDlg('El limite (1 día) para realizar esta transacción se agotó.  Verifique.', etInformacion, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
                    end;
                    If Not((frmMain.frmTmpMod.qrEntradaPacienteCuadreUsuario.isNull) or
                           (Trim(frmMain.frmTmpMod.qrEntradaPacienteCuadreUsuario.Asstring)=EmptyStr)) then  Dm.Info('Transacción Ya está en el cuadre.  Verifique.');
                    if dm.Disponibilidad_Devuelta_Efectivo(dm.qrUsuarioSucursalUserID.value,UpperCase(dm.qrUsuarioSucursalSucursalID.value),ifThen(frmMain.frmTmpMod.qrEntradaPacienteMonedaId.Value=DM.qrParametroMonedaDolares.Value,CodDolar,CodEfectivo)) >= edvalor.Value then
                     begin
                         If Not InterfaseAs400.Verifica_Toma_Muestra(frmMain.frmTmpMod.qrEntradaPacienteMuestrano.Value) then
                         begin
                                frmMain.frmTmpMod.ConceptoNC := UpperCase(CbConcepto.Text);
                                frmMain.frmTmpMod.valorNC := edvalor.Value;
//                                Inserta_Auditoria;
                                frmMain.frmTmpMod.cobroid      := DM.Get_Secuencia_Big('COBRO', dm.qrUsuarioSucursalSucursalID.value);
                                frmMain.frmTmpMod.Cajero_Dev   := cbExtCajero.Text;
                                frmMain.frmTmpMod.Sucursal_Dev := dm.qrUsuarioSucursalSucursalID.value;
                                if frmMain.frmTmpMod.qrEntradaPacienteMonedaId.Value=DM.qrParametroMonedaDolares.Value then
                                begin
                                    frmMain.frmTmpMod.TipoPago_Dev :=  CodDolar;
                                    frmMain.frmTmpMod.valorNC_MST  :=  DM.ValorMoneda(edvalor.Value,DM.qrParametroMonedaDolares.Value,DM.qrparametroMonedaID.Value,DM.SystemDate)
                                end
                                else
                                begin
                                    frmMain.frmTmpMod.TipoPago_Dev :=  CodEfectivo;
                                    frmMain.frmTmpMod.valorNC_MST  :=  edvalor.Value
                                end;
                                frmMain.frmTmpMod.TipoCob:='DV';
                                frmMain.frmTmpMod.btgrabarClick(nil);
                         end
                         else
                         begin
                            if MessageDlg('Las Pruebas YA estan tomadas, verifique departamento técnico.  Procedo a efectuar la Devolución?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
                            begin
                                frmMain.frmTmpMod.ConceptoNC := UpperCase(CbConcepto.Text);
                                frmMain.frmTmpMod.valorNC := edvalor.Value;
//                                Inserta_Auditoria;
                                frmMain.frmTmpMod.cobroid := DM.Get_Secuencia_Big('COBRO', dm.qrUsuarioSucursalSucursalID.value);
                                frmMain.frmTmpMod.Cajero_Dev   := cbExtCajero.Text;
                                frmMain.frmTmpMod.Sucursal_Dev := dm.qrUsuarioSucursalSucursalID.value;
                                if frmMain.frmTmpMod.qrEntradaPacienteMonedaId.Value=DM.qrParametroMonedaDolares.Value then
                                begin
                                    frmMain.frmTmpMod.TipoPago_Dev :=  CodDolar;
                                    frmMain.frmTmpMod.valorNC_MST  :=  DM.ValorMoneda(edvalor.Value,DM.qrParametroMonedaDolares.Value,DM.qrparametroMonedaID.Value,DM.SystemDate)
                                end
                                else
                                begin
                                    frmMain.frmTmpMod.TipoPago_Dev :=  CodEfectivo;
                                    frmMain.frmTmpMod.valorNC_MST  :=  edvalor.Value
                                end;
                                frmMain.frmTmpMod.TipoCob:='DV';
                                frmMain.frmTmpMod.btgrabarClick(nil);
                            end;
                         end;
                    end
                    else
                    begin
                        EtMensajeDlg('Disponibilidad de Efectivo de este cajero es inferior del monto a Devolver.  Verifique.', etInformacion, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
                    end;
            end
            else
            begin
                    EtMensajeDlg('Orden No tiene pago(s) en Efectivo.  Verifique.', etInformacion, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
            end;
       end;
{       If (cbConcepto.EditValue = '09') then
       begin
            If(Verifica_Pago(CodTarjetaDebito) > 0) then
            begin
                Buscar_FechaHora_Cobro;
                If Not(Calcula_TiempoOrden(Fecha_Cobro,Hora_Cobro,'hh') < 25) then
                begin
                    EtMensajeDlg('El limite (1 día) para realizar esta transacción se agotó.  Verifique.', etInformacion, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
                end;
//                    If (frmMain.frmTmpMod.qrEntradaPacienteCuadreUsuario.isNull) or
//                       (Trim(frmMain.frmTmpMod.qrEntradaPacienteCuadreUsuario.Asstring)=EmptyStr) then
//                    begin
                    If Not((frmMain.frmTmpMod.qrEntradaPacienteCuadreUsuario.isNull) or
                           (Trim(frmMain.frmTmpMod.qrEntradaPacienteCuadreUsuario.Asstring)=EmptyStr)) then  Dm.Info('Transacción Ya está en el cuadre.  Verifique.');
                          If Not InterfaseAs400.Verifica_Toma_Muestra(frmMain.frmTmpMod.qrEntradaPacienteMuestrano.Value) then
//                         If InterfaseAs400.Verifica_Toma_Muestra(frmMain.frmTmp.qrEntradaPacienteMuestrano.Value) then
                          begin
                            frmMain.frmTmpMod.ConceptoNC := UpperCase(CbConcepto.Text);
                            frmMain.frmTmpMod.valorNC := edvalor.Value;
                            Inserta_Auditoria;
                            frmMain.frmTmpMod.CrearDevolucion(CodTarjetaDebito,cbExtCajero.Text);
                            frmMain.frmTmpMod.btgrabarClick(nil);
                          end
                          else
                          if MessageDlg('Las Pruebas YA estan tomadas, verifique departamento técnico.  Procedo a efectuar la Devolución?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
                          begin
                            frmMain.frmTmpMod.ConceptoNC := UpperCase(CbConcepto.Text);
                            frmMain.frmTmpMod.valorNC := edvalor.Value;
                            Inserta_Auditoria;
                            frmMain.frmTmpMod.CrearDevolucion(CodTarjetaDebito,cbExtCajero.Text);
                            frmMain.frmTmpMod.btgrabarClick(nil);
                          end;
//                    end
//                    else
//                    begin
//                         EtMensajeDlg('Transacción Ya está en el Cuadre.  Ofrecer Nota de Credito para uso futuro ó Cheque.', etInformacion, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
//                    end;
//                end
//                else
//                begin
//                    EtMensajeDlg('El limite (1 día) para realizar esta transacción se agotó.  Verifique.', etInformacion, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
//                end;
            end
            else
            begin
                    EtMensajeDlg('Orden No tiene pago(s) en Tarjeta de Débito.  Verifique.', etInformacion, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
            end;
       end;
}
             If (cbConcepto.EditValue = '10') then
             begin
                  If (Verifica_Pago(CodTarjetaCredito) > 0) Or (Verifica_Pago(CodTarjetaDebito) > 0)then
                  begin
                      Buscar_FechaHora_Cobro;
                          If Not(Calcula_TiempoOrden(Fecha_Cobro,Hora_Cobro,'hh') < 25) then
                          begin
                              EtMensajeDlg('El limite (1 día) para realizar esta transacción se agotó.  Verifique.', etInformacion, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
                          end;
                          If Not((frmMain.frmTmpMod.qrEntradaPacienteCuadreUsuario.isNull) or
                                 (Trim(frmMain.frmTmpMod.qrEntradaPacienteCuadreUsuario.Asstring)=EmptyStr)) then  EtMensajeDlg('Transacción Ya está en el cuadre.  Verifique.', etInformacion, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
                               If Not InterfaseAs400.Verifica_Toma_Muestra(frmMain.frmTmpMod.qrEntradaPacienteMuestrano.Value) then
                               begin
                                  frmMain.frmTmpMod.ConceptoNC := UpperCase(CbConcepto.Text);
                                  frmMain.frmTmpMod.valorNC := edvalor.Value;
      //                            Inserta_Auditoria;
                                  frmMain.frmTmpMod.cobroid := DM.Get_Secuencia_Big('COBRO', dm.qrUsuarioSucursalSucursalID.value);
                                  frmMain.frmTmpMod.Cajero_Dev   := cbExtCajero.Text;
                                  frmMain.frmTmpMod.Sucursal_Dev := dm.qrUsuarioSucursalSucursalID.value;
                                  if frmMain.frmTmpMod.qrEntradaPacienteMonedaId.Value=DM.qrParametroMonedaDolares.Value then
                                  begin
                                          frmMain.frmTmpMod.TipoPago_Dev :=  CodDolar;
                                          frmMain.frmTmpMod.valorNC_MST  :=  DM.ValorMoneda(edvalor.Value,DM.qrParametroMonedaDolares.Value,DM.qrparametroMonedaID.Value,DM.SystemDate)
                                  end
                                  else
                                  begin
                                          if (Verifica_Pago(CodTarjetaCredito) > 0) then
                                              frmMain.frmTmpMod.TipoPago_Dev :=  CodTarjetaCredito
                                          else if (Verifica_Pago(CodTarjetaDebito) > 0) then
                                              frmMain.frmTmpMod.TipoPago_Dev :=  CodTarjetaDebito;
                                          frmMain.frmTmpMod.valorNC_MST  :=  edvalor.Value
                                  end;
                                  frmMain.frmTmpMod.TipoCob:='DV';
      //                            frmMain.frmTmp.CrearDevolucion(CodTarjetaCredito,cbExtCajero.Text,dm.qrUsuarioSucursalSucursalID.value);
                                  frmMain.frmTmpMod.btgrabarClick(nil);
                               end
                               else
                               if MessageDlg('Las Pruebas YA estan tomadas, verifique departamento técnico.  Procedo a efectuar la Devolución?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
                               begin
                                  frmMain.frmTmpMod.ConceptoNC := UpperCase(CbConcepto.Text);
                                  frmMain.frmTmpMod.valorNC := edvalor.Value;
      //                            Inserta_Auditoria;
                                  frmMain.frmTmpMod.cobroid := DM.Get_Secuencia_Big('COBRO', dm.qrUsuarioSucursalSucursalID.value);
                                  frmMain.frmTmpMod.Cajero_Dev   := cbExtCajero.Text;
                                  frmMain.frmTmpMod.Sucursal_Dev := dm.qrUsuarioSucursalSucursalID.value;
                                  if frmMain.frmTmpMod.qrEntradaPacienteMonedaId.Value=DM.qrParametroMonedaDolares.Value then
                                  begin
                                          frmMain.frmTmpMod.TipoPago_Dev :=  CodDolar;
                                          frmMain.frmTmpMod.valorNC_MST  :=  DM.ValorMoneda(edvalor.Value,DM.qrParametroMonedaDolares.Value,DM.qrparametroMonedaID.Value,DM.SystemDate)
                                  end
                                  else
                                  begin
                                          if (Verifica_Pago(CodTarjetaCredito) > 0) then
                                              frmMain.frmTmpMod.TipoPago_Dev :=  CodTarjetaCredito
                                          else if (Verifica_Pago(CodTarjetaDebito) > 0) then
                                              frmMain.frmTmpMod.TipoPago_Dev :=  CodTarjetaDebito;
                                          frmMain.frmTmpMod.valorNC_MST  :=  edvalor.Value
                                  end;
                                  frmMain.frmTmpMod.TipoCob:='DV';
      //                            frmMain.frmTmp.CrearDevolucion(CodTarjetaCredito,cbExtCajero.Text,dm.qrUsuarioSucursalSucursalID.value);
                                  frmMain.frmTmpMod.btgrabarClick(nil);
                               end;
      {                    end
                          else
                          begin
                               EtMensajeDlg('Transacción Ya está en el Cuadre.  Ofrecer Nota de Credito para uso futuro ó Cheque.', etInformacion, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
                          end;
                      end
                      else
                      begin
                          EtMensajeDlg('El limite (1 día) para realizar esta transacción se agotó.  Verifique.', etInformacion, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
                      end;
      }
                  end
                  else
                  begin
                          EtMensajeDlg('Orden No tiene pago(s) en Tarjeta de Crédito.  Verifique.', etInformacion, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
                  end;
             end;
           If (cbConcepto.EditValue = '11') then
           begin
                If(Verifica_Pago(CodCheque) > 0) then
                begin
                    Buscar_FechaHora_Cobro;
                        If Not(Calcula_TiempoOrden(Fecha_Cobro,Hora_Cobro,'hh') < 25) then
                        begin
                            EtMensajeDlg('El limite (1 día) para realizar esta transacción se agotó.  Verifique.', etInformacion, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
                        end;
                        If Not((frmMain.frmTmpMod.qrEntradaPacienteCuadreUsuario.isNull) or
                               (Trim(frmMain.frmTmpMod.qrEntradaPacienteCuadreUsuario.Asstring)=EmptyStr)) then  EtMensajeDlg('Transacción Ya está en el cuadre.  Verifique.', etInformacion, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
                             If Not InterfaseAs400.Verifica_Toma_Muestra(frmMain.frmTmpMod.qrEntradaPacienteMuestrano.Value) then
    //                         If InterfaseAs400.Verifica_Toma_Muestra(frmMain.frmTmp.qrEntradaPacienteMuestrano.Value) then
                             begin
                                frmMain.frmTmpMod.ConceptoNC := UpperCase(CbConcepto.Text);
                                frmMain.frmTmpMod.valorNC := edvalor.Value;
    //                            Inserta_Auditoria;
                                frmMain.frmTmpMod.cobroid := DM.Get_Secuencia_Big('COBRO', dm.qrUsuarioSucursalSucursalID.value);
                                frmMain.frmTmpMod.Cajero_Dev   := cbExtCajero.Text;
                                frmMain.frmTmpMod.Sucursal_Dev := dm.qrUsuarioSucursalSucursalID.value;
                                if frmMain.frmTmpMod.qrEntradaPacienteMonedaId.Value=DM.qrParametroMonedaDolares.Value then
                                begin
                                        frmMain.frmTmpMod.TipoPago_Dev :=  CodDolar;
                                        frmMain.frmTmpMod.valorNC_MST  :=  DM.ValorMoneda(edvalor.Value,DM.qrParametroMonedaDolares.Value,DM.qrparametroMonedaID.Value,DM.SystemDate)
                                end
                                else
                                begin
                                        frmMain.frmTmpMod.TipoPago_Dev :=  CodCheque;
                                        frmMain.frmTmpMod.valorNC_MST  :=  edvalor.Value
                                end;
                                frmMain.frmTmpMod.TipoCob:='DV';
    //                            frmMain.frmTmp.CrearDevolucion(CodTarjetaCredito,cbExtCajero.Text,dm.qrUsuarioSucursalSucursalID.value);
                                frmMain.frmTmpMod.btgrabarClick(nil);
                             end
                             else
                             if MessageDlg('Las Pruebas YA estan tomadas, verifique departamento técnico.  Procedo a efectuar la Devolución?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
                             begin
                                frmMain.frmTmpMod.ConceptoNC := UpperCase(CbConcepto.Text);
                                frmMain.frmTmpMod.valorNC := edvalor.Value;
    //                            Inserta_Auditoria;
                                frmMain.frmTmpMod.cobroid := DM.Get_Secuencia_Big('COBRO', dm.qrUsuarioSucursalSucursalID.value);
                                frmMain.frmTmpMod.Cajero_Dev   := cbExtCajero.Text;
                                frmMain.frmTmpMod.Sucursal_Dev := dm.qrUsuarioSucursalSucursalID.value;
                                if frmMain.frmTmpMod.qrEntradaPacienteMonedaId.Value=DM.qrParametroMonedaDolares.Value then
                                begin
                                        frmMain.frmTmpMod.TipoPago_Dev :=  CodDolar;
                                        frmMain.frmTmpMod.valorNC_MST  :=  DM.ValorMoneda(edvalor.Value,DM.qrParametroMonedaDolares.Value,DM.qrparametroMonedaID.Value,DM.SystemDate)
                                end
                                else
                                begin
                                        frmMain.frmTmpMod.TipoPago_Dev :=  CodCheque;
                                        frmMain.frmTmpMod.valorNC_MST  :=  edvalor.Value
                                end;
                                frmMain.frmTmpMod.TipoCob:='DV';
    //                            frmMain.frmTmp.CrearDevolucion(CodTarjetaCredito,cbExtCajero.Text,dm.qrUsuarioSucursalSucursalID.value);
                                frmMain.frmTmpMod.btgrabarClick(nil);
                             end;
    {                    end
                        else
                        begin
                             EtMensajeDlg('Transacción Ya está en el cuadre.  Ofrecer Nota de Credito para uso futuro ó Cheque.', etInformacion, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
                        end;
                    end
                    else
                    begin
                        EtMensajeDlg('El limite (1 día) para realizar esta transacción se agotó.  Verifique.', etInformacion, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
                    end;
    }
                end
                else
                begin
                        EtMensajeDlg('Orden No tiene pago(s) en Cheque.  Verifique.', etInformacion, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
                end;
           end;

      If (cbConcepto.EditValue = '12') then
      begin
          If Verifica_Entrada_Balance (frmMain.frmTmpMod.qrEntradaPacienteMuestrano.Value,frmMain.frmTmpMod.qrEntradaPacienteTotalPendiente.Value) then
          begin
                frmMain.frmTmpMod.ConceptoNC := UpperCase(CbConcepto.Text);
                frmMain.frmTmpMod.valorND := edvalor.Value;
                frmMain.frmTmpMod.cobroid := DM.Get_Secuencia_Big('COBRO', dm.qrUsuarioSucursalSucursalID.value);
                frmMain.frmTmpMod.TipoCob:='ND';
                if frmMain.frmTmpMod.qrEntradaPacienteMonedaId.Value=DM.qrParametroMonedaDolares.Value then
                begin
                       frmMain.frmTmpMod.valorNC_MST  :=  DM.ValorMoneda(edvalor.Value,DM.qrParametroMonedaDolares.Value,DM.qrparametroMonedaID.Value,DM.SystemDate)
                end
                else
                begin
                       frmMain.frmTmpMod.valorNC_MST  :=  edvalor.Value
                end;
//                Inserta_Auditoria;
//                frmMain.frmTmp.CrearNotaDebito;
                frmMain.frmTmpMod.btgrabarClick(nil);
          end
          else
          begin
                  EtMensajeDlg('Paciente '+frmMain.frmTmpMod.qrEntradaPacienteNombrePaciente.value+' en la Orden '+frmMain.frmTmpMod.qrEntradaPacienteMuestrano.Value+' No corresponde balance a su favor.  Verifique.', etInformacion, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
          end;
      end;
      If (cbConcepto.EditValue = '13') then
      begin
           if Dm.Redondeo(frmMain.frmTmpMod.qrEntradaPacienteTotalPendiente.Value) < 0 then
           begin
              frmMain.frmTmpMod.ConceptoNC := UpperCase(CbConcepto.Text);
              frmMain.frmTmpMod.valorND := edvalor.Value;
//              Inserta_Auditoria;
              frmMain.frmTmpMod.cobroid := DM.Get_Secuencia_Big('COBRO', dm.qrUsuarioSucursalSucursalID.value);
              frmMain.frmTmpMod.TipoCob:='ND';
              if frmMain.frmTmpMod.qrEntradaPacienteMonedaId.Value=DM.qrParametroMonedaDolares.Value then
              begin
                       frmMain.frmTmpMod.valorNC_MST  :=  DM.ValorMoneda(edvalor.Value,DM.qrParametroMonedaDolares.Value,DM.qrparametroMonedaID.Value,DM.SystemDate)
              end
              else
              begin
                       frmMain.frmTmpMod.valorNC_MST  :=  edvalor.Value
              end;
//              frmMain.frmTmp.CrearNotaDebito;
              frmMain.frmTmpMod.btgrabarClick(nil);
           end
           else
           begin
              EtMensajeDlg('Entrada No tiene monto a Debitar.  Verifique.', etInformacion, [etOk],0, dm.Imagenes.Items[4].Bitmap,true)
           end;
      end;
      If (cbConcepto.EditValue = '14') then
      begin
            If Verifica_Entrada (cxAutorizacion.Text) then
            begin
                if dm.Verifica_Balance_Credito(cxAutorizacion.EditValue) >= (edValor.EditValue) then
                begin
                    If (Calcula_TiempoOrden(Fecha_Cobro,Hora_Cobro,'mm') > 12) then
                    begin
                      frmMain.frmTmpMod.ConceptoNC := UpperCase(CbConcepto.Text);
                      frmMain.frmTmpMod.valorNC := edvalor.Value;
//                      Inserta_Auditoria;
                      frmMain.frmTmpMod.cobroid := DM.Get_Secuencia_Big('COBRO', dm.qrUsuarioSucursalSucursalID.value);
                      frmMain.frmTmpMod.TipoCob:='NC';
                      if frmMain.frmTmpMod.qrEntradaPacienteMonedaId.Value=DM.qrParametroMonedaDolares.Value then
                      begin
                          frmMain.frmTmpMod.valorNC_MST  :=  DM.ValorMoneda(edvalor.Value,DM.qrParametroMonedaDolares.Value,DM.qrparametroMonedaID.Value,DM.SystemDate)
                      end
                      else
                      begin
                          frmMain.frmTmpMod.valorNC_MST  :=  edvalor.Value
                      end;
//                      frmMain.frmTmp.CrearNotaCredito;
                      frmMain.frmTmpMod.btgrabarClick(nil);
                      if (edValor.Value) < (dm.Verifica_Balance_Credito(cxAutorizacion.EditValue)) then
                      begin
                        EtMensajeDlg('Advertencia : Se va a Generar un Número de Autorización Nueva.'+#13+#10+
                                     'Favor usar este nueva Autorización para descontar Monto Pendiente.'+#13+#10+
                                     'La Autorizacion Num. '+cxAutorizacion.EditValue+' está vencida.', etAviso, [etOk],0, dm.Imagenes.Items[6].Bitmap,true);
                        Actualiza_Estatus_NotaCredito('V');
                        Crea_Nueva_Autorizacion(cxAutorizacion.EditValue);
                        ImpresionNC;
                      end
                      else
                        Actualiza_Estatus_NotaCredito('S');
                    end
                    else
                    begin
                            EtMensajeDlg('Tiempo de Vigencia (1 año) del Crédito Expiró.  Verifique.', etInformacion, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
                    end;
                end
                else
                begin
                        EtMensajeDlg('Monto a Acreditar es Superior a la Nota de Crédito.  Verifique.', etInformacion, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
                end;
            end
            else
            begin
                    EtMensajeDlg('Número de Autorización inválido ó Ya aplicado.  Verifique', etInformacion, [etOk],0, dm.Imagenes.Items[4].Bitmap,true);
            end;
      end
      else if (cbConcepto.EditValue = '06') then
      begin
            RecID                              := frmMain.frmTmpMod.qrEntradaPacienteRecID.Value;
            frmMain.frmTmpMod.ConceptoNC       := UpperCase(CbConcepto.Text);
            frmMain.frmTmpMod.valorNC          := edvalor.Value;
            cobroid                            := DM.Get_Secuencia_Big('COBRO', dm.qrUsuarioSucursalSucursalID.value);
            frmMain.frmTmpMod.cobroid          := cobroid;
            frmMain.frmTmpMod.TipoCob          :='NC';
            if frmMain.frmTmpMod.qrEntradaPacienteMonedaId.Value=DM.qrParametroMonedaDolares.Value then
            begin
                frmMain.frmTmpMod.valorNC_MST  :=  DM.ValorMoneda(edvalor.Value,DM.qrParametroMonedaDolares.Value,DM.qrparametroMonedaID.Value,DM.SystemDate)
            end
            else
            begin
                frmMain.frmTmpMod.valorNC_MST  :=  edvalor.Value
            end;
//            frmMain.frmTmp.CrearNotaCredito;
            frmMain.frmTmpMod.btgrabarClick(nil);
            dm.Act_Empleado_NotaCredito(cbExtEmpleado.EditValue,cobroid);
            dm.Act_NotaEntrada_NC(IntToStr(RecID),frmMain.frmTmpMod.ConceptoNC,cbExtEmpleado.EditText,frmMain.frmTmpMod.valorNC);
      end
      else if ((cbConcepto.EditValue = '01') or (cbConcepto.EditValue = '02') or (cbConcepto.EditValue = '03') or
               (cbConcepto.EditValue = '04') or (cbConcepto.EditValue = '05') or
               (cbConcepto.EditValue = '07')) then
      begin
            frmMain.frmTmpMod.ConceptoNC := UpperCase(CbConcepto.Text);
            frmMain.frmTmpMod.valorNC := edvalor.Value;
//            Inserta_Auditoria;
            frmMain.frmTmpMod.cobroid := DM.Get_Secuencia_Big('COBRO', dm.qrUsuarioSucursalSucursalID.value);
            frmMain.frmTmpMod.TipoCob:='NC';
            if frmMain.frmTmpMod.qrEntradaPacienteMonedaId.Value=DM.qrParametroMonedaDolares.Value then
            begin
                frmMain.frmTmpMod.valorNC_MST  :=  DM.ValorMoneda(edvalor.Value,DM.qrParametroMonedaDolares.Value,DM.qrparametroMonedaID.Value,DM.SystemDate)
            end
            else
            begin
                frmMain.frmTmpMod.valorNC_MST  :=  edvalor.Value
            end;
//            frmMain.frmTmp.CrearNotaCredito;
            frmMain.frmTmpMod.btgrabarClick(nil);
      end;
 end
 else
  frmMain.frmTmpMod.CancelarCobro;
end;
Function TfrmDialogNCMod.Calcula_TiempoOrden(Fecha : TDateTime;Hora : String;Tipo : String):Integer;
Var qVerifica  : TAdoQuery;
    strFecha   : String;
begin
  qVerifica := DM.NewQuery;
  strFecha := formatdatetime('yyyy-mm-dd',Fecha);
  With qVerifica, sql do
  begin
      Close;
      if Tipo='hh' then
      begin
          SQL.Text := ' select Datediff('+Tipo+',Convert(datetime,'+#39+strFecha+' '+Hora+#39+',120),Getdate()) as Tiempo from ptCobro '+
                      ' Where Refrecid='+inttostr(frmMain.frmTmpMod.qrEntradaPacienteRECID.Value);
      end
      else if Tipo='mm' then
      begin
          SQL.Text := ' select Datediff('+Tipo+',Convert(datetime,'+#39+strFecha+' '+Hora+#39+',120),Getdate()) as Tiempo from ptCobro '+
                      ' Where TurnoID='+#39+cxAutorizacion.Text+#39;
      end;
      Open;
      if (RecordCount > 0) then
        result := fieldbyname('Tiempo').Asinteger
      else
        result := 0;
  end;
  FreeAndNil(qVerifica);
End;
Function TfrmDialogNCMod.Verifica_Pago(Tipo_Pago : String):Double;
Var qVerifica  : TAdoQuery;
begin
  qVerifica := DM.NewQuery;
  With qVerifica, sql do
  begin
      Close;
      SQL.Text := ' Select isnull(Sum(d.Monto),0) as Monto from ptcobro c, ptcobrodetalle d '+
                  ' Where c.refrecid='+inttostr(frmMain.frmTmpMod.qrEntradaPacienteRecid.Value)+' and c.cobroid=d.cobroid '+
                  ' and d.Formadepagoid='+#39+Tipo_Pago+#39;
      Open;
      Result := Fieldbyname('Monto').AsFloat;
  end;
  FreeAndNil(qVerifica);
End;
Function TfrmDialogNCMod.Verifica_Entrada(Autoriza : String):Boolean;
Var qVerifica  : TAdoQuery;
begin
  qVerifica := DM.NewQuery;
  Result:= False;
  With qVerifica, sql do
  begin
      Close;
      SQL.Text := ' Select TurnoID from ptCobro '+
                  ' Where TurnoID='+#39+Autoriza+#39+
                  ' And Isnull(PacientePrincipalID,'+#39+#39+')='+#39+''+#39;
      Open;
      if Not IsEmpty then
      begin
       Result := True;
      end;
  end;
  FreeAndNil(qVerifica);
End;
Function TfrmDialogNCMod.Verifica_Paciente(Muestrano : String;PacienteID : String):Boolean;
Var qVerifica  : TAdoQuery;
begin
  qVerifica := DM.NewQuery;
  Result:= False;
  With qVerifica, sql do
  begin
      Close;
      SQL.Text := ' Select PacienteID from ptEntradaPaciente '+
                  ' Where  Muestrano='+#39+Muestrano+#39+' And PacienteID='+#39+PacienteID+#39+' And Dataareaid='+#39+'ldr'+#39;
      Open;
      if Not IsEmpty then
      begin
       Result := True;
      end;
  end;
  FreeAndNil(qVerifica);
End;
Function TfrmDialogNCMod.Verifica_Entrada_Balance(Muestrano : String;Monto : Double):Boolean;
Var qVerifica  : TAdoQuery;
begin
  qVerifica := DM.NewQuery;
  Result:= False;
  With qVerifica, sql do
  begin
      Close;
      SQL.Text := ' Select Neto-TotalPagado as TotalPendiente from ptEntradaPaciente '+
                  ' Where  Muestrano='+#39+Muestrano+#39+' And Dataareaid='+#39+'ldr'+#39;
      Open;
      if Not IsEmpty then
      begin
        if Monto <= abs(fieldbyname('TotalPendiente').AsCurrency) then   Result := True;
      end;
  end;
  FreeAndNil(qVerifica);
End;
Procedure TfrmDialogNCMod.Buscar_FechaHora_Cobro;
Var qCobro  : TAdoQuery;
begin
  qCobro := DM.NewQuery;
  With qCobro, sql do
  begin
      Close;
      SQL.Text := ' Select Top 1 Fecha,Hora from ptCobro '+
                  ' Where Refrecid='+inttostr(frmMain.frmTmpMod.qrEntradaPacienteRECID.value);
      Open;
      if Not IsEmpty then
      begin
         Fecha_Cobro := Fieldbyname('Fecha').AsDateTime;
         Hora_Cobro := Fieldbyname('Hora').Asstring;
      end;
  end;
  FreeAndNil(qCobro);
End;
procedure TfrmDialogNCMod.Inserta_Auditoria;
Var qinsert : TADOQuery;
begin
   DM.qrParametro.Close;
   DM.qrParametro.Open;
   if (frmMain.frmTmpMod.qrEntradaPaciente.State <> dsedit) and
      (frmMain.frmTmpMod.qrEntradaPaciente.State <> dsinsert) then
     frmMain.frmTmpMod.qrEntradaPaciente.Edit;
   qinsert := DM.NewQuery;
   Try
       With qinsert, sql do
       begin
          Close;
          Text := ' INSERT INTO PTAuditoriaFact(AuditId,SucursalID,Muestrano,Fecha,UserID, '+
                  ' Comentario, Estatus) VALUES ( '+IntToStr(frmMain.frmTmpMod.GetSecuenciaId)+','+#39+DM.CurSucursal+#39+','+#39+frmMain.frmTmpMod.qrEntradaPacienteMUESTRANO.Value+#39+','+
                  #39+FormatDateTime('yyyymmdd', DM.Buscar_Fecha_Actual)+#39+','+#39+DM.CurUser+#39+','+#39+frmMain.frmTmpMod.ConceptoNC+#39+','#39+'A'+#39+')';
          ExecSQL;
       end;
   Except
       Raise exception.CreateFmt('Error Creando PTAuditoria. Muestra Num='+frmMain.frmTmpMod.qrEntradaPacienteMUESTRANO.Value, []);
   End;
end;
procedure TfrmDialogNCMod.Actualiza_Estatus_NotaCredito(St : String);
Var qinsert : TADOQuery;
begin
     qinsert := DM.NewQuery;
     With qinsert, sql do
     begin
        Close;
        if St = 'S' then
          Text := ' Update Ptcobro Set PacientePrincipalID='+#39+'2'+#39+ ' Where TurnoID='+#39+cxAutorizacion.EditText+#39
        Else
        begin
          if St = 'V' then
          Text := ' Update Ptcobro Set TotalCobrado='+Vartostr((Abs(Dm.Redondeo(dm.Verifica_Balance_Credito(cxAutorizacion.EditValue)))-(edValor.EditValue))*-1) +
                  ', PacienteFactura='+Vartostr((Abs(Dm.Redondeo(dm.Verifica_Balance_Credito(cxAutorizacion.EditValue)))-(edValor.EditValue))*-1) +
                  ' Where TurnoID='+#39+cxAutorizacion.EditText+#39;
        end;
        ExecSQL;
     end;
end;
procedure TfrmDialogNCMod.Crea_Nueva_Autorizacion(Autorizacion : String);
Var
 qAutoriza,qinsert : TADOQuery;
begin
 DM.qrParametro.Close;
 DM.qrParametro.Open;

     qAutoriza  := DM.NewQuery;
     qinsert    := DM.NewQuery;
     With qAutoriza, sql do
     begin
        Close;
        Text := ' Select * from Ptcobro Where Turnoid='+#39+Autorizacion+#39;
        Open;
        if Not IsEmpty then
        begin
           cobroid  := DM.Get_Secuencia_Big('COBRO', DM.CurSucursal);
           TipoCobro:= 'ND';
           qinsert.Close;
           qinsert.SQL.Text := ' INSERT INTO PTCobro (CobroID,TurnoID,EntradaID,SucursalID,Fecha,Hora,PacienteID,UsuarioID,refRecid,TotalCobrado, '+
                               ' TotalFactura,TotalPagado,PendienteFactura,PendienteCobro,ReciboNo,ClienteID,Aplicado,MonedaId,TipoDoc,Concepto, '+
                               ' SinPrFilter,RecId,Fuera_Linea) VALUES (:0,:1,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22) ';
           qinsert.Parameters[0].Value  := cobroid;
           qinsert.Parameters[1].Value  := DM.Buscar_Random;
           qinsert.Parameters[2].Value  := qAutoriza.Fieldbyname('EntradaID').Asstring;
           qinsert.Parameters[3].Value  := qAutoriza.Fieldbyname('SucursalID').Asstring;
           qinsert.Parameters[4].Value  := qAutoriza.Fieldbyname('Fecha').AsDateTime; //DM.Buscar_Fecha_Actual;)
           qinsert.Parameters[5].Value  := qAutoriza.Fieldbyname('Hora').Asstring; //TimeToStr(Time);
           qinsert.Parameters[6].Value  := qAutoriza.Fieldbyname('PacienteID').Asstring;
           qinsert.Parameters[7].Value  := qAutoriza.Fieldbyname('UsuarioID').Asstring; //qrEntradaPacienteUserID.Value;
           qinsert.Parameters[8].Value  := qAutoriza.Fieldbyname('refRecid').AsString;
           qinsert.Parameters[9].Value  := Vartostr((Abs(Dm.Redondeo(dm.Verifica_Balance_Credito(cxAutorizacion.EditValue)))-(edValor.EditValue))*-1);
           qinsert.Parameters[10].Value := qAutoriza.Fieldbyname('TotalFactura').AsFloat;
           qinsert.Parameters[11].Value := qAutoriza.Fieldbyname('TotalPagado').AsFloat;
           qinsert.Parameters[12].Value := Vartostr((Abs(Dm.Redondeo(dm.Verifica_Balance_Credito(cxAutorizacion.EditValue)))-(edValor.EditValue))*-1);
           qinsert.Parameters[13].Value := 0;
           qinsert.Parameters[14].Value := frmMain.frmTmpMod.GetNotaDebito;
           qinsert.Parameters[15].Value := qAutoriza.Fieldbyname('ClienteID').Asstring;
           qinsert.Parameters[16].Value := 1;
           qinsert.Parameters[17].Value := qAutoriza.Fieldbyname('MonedaID').Asstring;
           qinsert.Parameters[18].Value := 'ND';
           qinsert.Parameters[19].Value := qAutoriza.Fieldbyname('Concepto').Asstring;
           qinsert.Parameters[20].Value := qAutoriza.Fieldbyname('SINPRFILTER').Asstring;
           qinsert.Parameters[21].Value := frmMain.frmTmp.GetSecuenciaId;
           If dm.qrParametroServidor_AS400.value <> EmptyStr then
              qinsert.Parameters[22].Value := 0
           else
              qinsert.Parameters[22].Value := 1;
           qinsert.ExecSQL;
        end;
     end;
     FreeAndNil(qAutoriza);
     FreeAndNil(qinsert);
end;
procedure TfrmDialogNCMod.ImpresionNC;
Var
 qfind : TADOQuery;
begin
  inherited;
  DM.qrCobro.Close;
  DM.qrCobro.Parameters[0].Value := cobroid;
  DM.qrCobro.Open;
  If (DM.qrCobro.RecordCount > 0) then
  Begin
          With DM.qryCobroTicket, sql do
          begin
              Close;
              Clear;
              Add('select Distinct e.NombrePaciente ,e.ClienteNombre, c.ReciboNo , c.EntradaId ,e.Muestrano as Muestrano,'+
                   ' c.Fecha, c.Hora , c.UsuarioID , c.MonedaId ,'+
                   ' (Select Empresa from PtParametro) as TituloEmpresa,'+
                   ' s.Nombre,s.Telefono,isnull(d.Descripcion,'+#39+#39+') as Descripcion, c.PendienteFactura, c.TotalCobrado,'+
                   ' c.PendienteCobro,c.TotalFactura,c.TotalPagado, e.CoberturaSeguro,e.FactExterior,'+
                   '                             (e.Neto-GastosVarios) as TotalPruebaUsa,e.GastosVarios as TotalEnvioUsa,isnull(d.Comentario ,'+#39+#39+') as Comentario, c.Concepto, '+
                   '  (Select Convert(Varchar(200),NotaNCreditoBalance) from PtParametro) as NotaNCredito, c.TurnoID as Autorizacion, '+
                   '  Convert(Varchar(10),Getdate()+365,120) as Fecha_Autoriza, c.Cobroid as CobroID,c.Refrecid,(Select RNC from PtParametro) as RNC,'+
                   '  d.Secuencia, (Select NotaExterior from PtParametro) as SubTituloEmpresa,'+
                   '  e.Origen, cd.devuelta '+
                   '  from ptcobro c Inner Join ptentradapaciente e '+
                   '   on c.refrecid=e.recid Left outer join ptentradapacientedetalle d '+
                   '   on d.refrecid = e.recid '+
                   '   Inner Join ptsucursal s  '+
                   '   on e.SucursalID=s.SucursalID '+
                   '   Left outer Join ptcobrodetalle cd on c.cobroid=cd.cobroid '+
                   '   Where c.refrecid='+InttoStr(DM.qrCobrorefRecid.Value)+
                   '   and c.cobroid='+#39+dm.qrCobroCobroID.Value+#39+
                   '   and c.TipoDoc='+#39+TipoCobro+#39+
                   '   and e.Dataareaid='+#39+'ldr'+#39);
              Open;
              If Not IsEmpty then
              begin
                If Ruta_Recibo <> EmptyStr then
                Begin
                      if (TipoCobro = 'NC') or (TipoCobro = 'DV') then
                      Begin
                          With DM.ppImpNCDEV do
                          begin
                                DeviceType := dtScreen;
                                Print;
                          end;
                      end
                      else
                      if (TipoCobro = 'ND') then
                      Begin
{                          if Trim(DM.qryCobroTicket.FieldByName('Autorizacion').AsString) <> EmptyStr then
                          begin
                               frmMain.LanzaVentana(-7981);
                               if (Tiene_Balance = 0) Then
                               Begin
                                   Raise exception.CreateFmt('Contraseña no Válida.  Por Favor Verifique.', []);
                               end;
                          end;
}
                          If Trim(DM.qryCobroTicket.FieldByName('Concepto').AsString)<>'ND CTE. OTORGAN CHEQUE' Then
                          begin
                              With DM.ppImpND do
                              begin
                                DeviceType := dtScreen;
                                Print;
                              end;
                          end
                          else
                          begin
                              With DM.ppImpNDCK do
                              begin
                                DeviceType := dtScreen;
                                Print;
                              end;
                          end;
                      end;
                End
                Else
                Begin
                      if (TipoCobro = 'NC') or (TipoCobro = 'DV') then
                      Begin
                          With DM.ppImpNCDEV do
                          begin
                              DeviceType := dtScreen;
                              Print;
                          end;
                      end
                      else
                      if (TipoCobro = 'ND') then
                      Begin
{                          if Trim(DM.qryCobroTicket.FieldByName('Autorizacion').AsString) <> EmptyStr then
                          begin
                               frmMain.LanzaVentana(-7981);
                               if (Tiene_Balance = 0) Then
                               Begin
                                   Raise exception.CreateFmt('Contraseña no Válida.  Por Favor Verifique.', []);
                               end;
                          end;
}
                          If Trim(DM.qryCobroTicket.FieldByName('Concepto').AsString)<>'ND CTE. OTORGAN CHEQUE' Then
                          begin
                              With DM.ppImpND do
                              begin
                                DeviceType := dtScreen;
                                Print;
                              end;
                          end
                          else
                          begin
                              With DM.ppImpNDCK do
                              begin
                                DeviceType := dtScreen;
                                Print;
                              end;
                          end;
                      end;
                End;
              end;
          end;
  End;
  FreeAndNil(qfind);
end;

end.

