unit ConfirmarCoberturaTardia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxLayoutControl, cxControls, cxTextEdit, cxDBEdit, cxContainer,
  cxEdit, cxCheckBox, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons,
  dbTables,db, cxCurrencyEdit;

type
  TfrmConfirmarCoberturaTardia = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group1: TdxLayoutGroup;
    EdAprobacionNo: TcxDBTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    EdAprobacionPor: TcxDBTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    BtAceptar: TcxButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    BtCancelar: TcxButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    edcoberturavalor: TcxDBCurrencyEdit;
    dxLayoutControl1Item6: TdxLayoutItem;
    cxDBCheckBox2: TcxDBCheckBox;
    dxLayoutControl1Item7: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    cxDBCheckBox3: TcxDBCheckBox;
    dxLayoutControl1Item9: TdxLayoutItem;
    cxDBCheckBox4: TcxDBCheckBox;
    dxLayoutControl1Item10: TdxLayoutItem;
    EdConfirmar: TcxCurrencyEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Group7: TdxLayoutGroup;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutControl1Item1: TdxLayoutItem;
    cePorcentajeCobertura: TcxCurrencyEdit;
    procedure edcoberturavalorExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }

    ValorCobertura : Double;
    Confirmado, Rechazado, AutoConfirmar : Integer;
    Aprobacion, ConfirmadoPor, Seguroid, Nombre, Origen : String;

    procedure Run;
    Procedure Rechazar;
    Procedure Preconfirmar;
  end;

var
  frmConfirmarCoberturaTardia: TfrmConfirmarCoberturaTardia;

implementation

uses ActionsDM, DataModule, Main, PuntoVenta, UInterfaseAs400;

{$R *.dfm}

procedure TfrmConfirmarCoberturaTardia.edcoberturavalorExit(Sender: TObject);
begin
  if (Trim(edCoberturavalor.EditingText) <> EmptyStr) and (edCoberturavalor.EditingValue > 0 ) then
  begin
    cePorcentajeCobertura.Value := DM.Redondeo((edCoberturavalor.Value * 100) / ValorCobertura);
  end;
end;

procedure TfrmConfirmarCoberturaTardia.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If (key = Vk_Down) Then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);
  If (key = 13) Then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);
  If (key = Vk_Up) Then
     PostMessage(Handle, Wm_NextDlgCtl, 1, 0);

  If (key = Vk_F12) Then Rechazar;

  If (key = Vk_F8) Then
    If (frmMain.frmTmp.qrEntradaPacienteCoberturaPreConfirmada.Value = 1) Then
      Begin
        AutoConfirmar := 1;
        btAceptar.Click;
      End
    Else
      Begin
        AutoConfirmar := 0;
        BtCancelar.Click;
        Raise exception.CreateFmt(' El Proceso de Confirmacion Fue Abortado: '+ #13 +
                                  ' Esta Aseguradora NO Maneja Cobertura Fijas. '+ #13 +
                                  ' Por Favor Verifique.!!!', []);
      End;

  If (key = Vk_F9) Then btAceptar.Click;

  if (key = 27) then
  begin
   Close;
  end;
end;


procedure TfrmConfirmarCoberturaTardia.Run;
begin
 Rechazado := 0;
 Confirmado := 1;
 AutoConfirmar := 0;
 Origen  := frmMain.frmTmp.qrEntradaPacienteOrigen.Value;
 Seguroid := frmMain.frmTmp.qrEntradaPacienteClienteId.Value;
 Nombre := frmMain.frmTmp.qrEntradaPacienteClienteNombre.Value;
 Aprobacion := frmMain.frmTmp.qrEntradaPacienteAprobacionNo.Value;
 ConfirmadoPor := frmMain.frmTmp.qrEntradaPacienteAPROBACIONPOR.Value;
 ValorCobertura := frmMain.frmTmp.Valor_Cobertura(frmMain.frmTmp.qrEntradaPacienteRECID.Value);

 EdConfirmar.Value := ValorCobertura;

 frmMain.frmTmp.qrEntradaPaciente.Edit;
 frmMain.frmTmp.qrEntradaPacienteCoberturaRechazada.Value := Rechazado;
 frmMain.frmTmp.qrEntradaPacienteCoberturaConfirmada.Value := Confirmado;
// frmMain.frmTmp.qrEntradaPacienteCoberturaValor.Value := frmMain.frmTmp.qrEntradaPacienteCoberturaSeguro.Value;
 frmMain.frmTmp.qrEntradaPacienteCoberturaValor.Value := frmMain.frmTmp.qrEntradaPacienteCOBERTURAMONTOPRECONFIRMADO.Value;

 if (frmMain.frmTmp.qrEntradaPacienteCoberturaPreConfirmada.Value = 1) Then
   begin
     Confirmado := 1;
     AutoConfirmar := 1;
//     EdCoberturaValor.Enabled := False;
     EdCoberturaValor.Style.Color := ClAqua;
     EdCoberturaValor.Properties.ReadOnly := True;
   end;

 showmodal;

 if ModalResult = mrOk then
   begin
    If (Rechazado = 1) then
    Begin
       //Cobertura Rechazada.
       frmMain.frmTmp.Operacion := 'E';
       frmMain.frmTmp.qrEntradaPaciente.Edit;
       frmMain.frmTmp.qrEntradaPacienteAprobacionNo.Value := '';
       frmMain.frmTmp.qrEntradaPacienteAPROBACIONPOR.Value := '';
       frmMain.frmTmp.qrEntradaPacienteCoberturaPorc.Value := 0;
       frmMain.frmTmp.qrEntradaPacienteCoberturaValor.Value := 0;
       frmMain.frmTmp.qrEntradaPacienteCoberturaSeguro.Value := 0;
       frmMain.frmTmp.qrEntradaPacienteCoberturaRechazada.Value := 1;
       frmMain.frmTmp.qrEntradaPacienteCoberturaConfirmada.Value := 0;
       frmMain.frmTmp.qrEntradaPacienteCOBERTURAMONTOPRECONFIRMADO.Value := 0;
       frmMain.frmTmp.qrEntradaPacienteFECHAASEGURADORA.Value := DM.SystemDate;  //DM.Buscar_Fecha_Actual;
//       frmMain.frmTmp.qrEntradaPacienteHoraRegistro.Value := TimeToStr(Time);
       frmMain.frmTmp.qrEntradaPacienteHoraRegistro.Value := DM.Buscar_Hora_Actual;

       frmMain.frmTmp.cambiarprecio := False;
       frmMain.frmTmp.qrEntradaPacienteClienteId.Value := frmMain.frmTmp.qrEntradaPacientePacienteId.Value;
       frmMain.frmTmp.Buscar_Cliente;
       frmMain.frmTmp.qrEntradaPacienteClienteNombre.Value := frmMain.frmTmp.qfindCltParams.FieldByName('Nombre').AsString;
       frmMain.frmTmp.qrEntradaPacienteOrigen.Value := frmMain.frmTmp.qfindCltParams.FieldByName('GrupoCliente').AsString;
       frmMain.frmTmp.cambiarprecio := False;
       frmMain.frmTmp.ActTotales;

       If ( frmMain.frmTmp.qrEntradaPaciente.State in [dsEdit,dsInsert] ) And
          (frmMain.frmTmp.qrEntradaPacienteEntradaID.Value <> '') Then
         frmMain.frmTmp.qrEntradaPaciente.Post;

       If (frmMain.frmTmp.qrEntradaPacienteEntradaID.Value <> '') Then
       Begin
          If dm.qrParametroServidor_AS400.value <> EmptyStr then
          begin
              if dm.PingHost(dm.qrParametroServidor_AS400.value,1) then
              begin
                 InterfaseAS400.ASConnection.Close;
                 InterfaseAS400.ASConnection.Open;

                 //Insertando las Pruebas en el AS-400.
                 InterfaseAS400.MandarPruebaAS400(frmMain.frmTmp.qrEntradaPacienteMuestraNo.Value, frmMain.frmTmp.qrEntradaPacientePacienteId.Value);
                 InterfaseAS400.ASConnection.Close;
              end;
          end;
       End;
     End;
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    if (Confirmado = 1) then
     Begin
       //Cobertura Confirmada.
        If ((frmMain.frmTmp.qrEntradaPacienteClienteID.Value = 'C00075') Or
           (frmMain.frmTmp.qrEntradaPacienteClienteID.Value = 'C00392') Or
           (frmMain.frmTmp.qrEntradaPacienteClienteID.Value = 'C01673')) And (Copy(frmMain.frmTmp.qrEntradaPacienteAprobacionNo.Value,1,1)<>'P') Then
              frmMain.frmTmp.qrEntradaPacienteAprobacionNo.Value  := 'P'+EdAprobacionNo.EditingText;
        If ((frmMain.frmTmp.qrEntradaPacienteClienteID.Value ='C03103') Or
           (frmMain.frmTmp.qrEntradaPacienteClienteID.Value ='C03209'))  And (Copy(frmMain.frmTmp.qrEntradaPacienteAprobacionNo.Value,1,1)<>'H') Then
              frmMain.frmTmp.qrEntradaPacienteAprobacionNo.Value  := 'H'+EdAprobacionNo.EditingText;

       If (ValorCobertura < 1) Or
          (frmMain.frmTmp.qrEntradaPacienteCoberturaValor.IsNull) Or
          (frmMain.frmTmp.qrEntradaPacienteCoberturaValor.Value < 1) Or
          (frmMain.frmTmp.qrEntradaPacienteCoberturaValor.Value > ValorCobertura) Then
         Begin
           //Dejando Igual Por Cobertura en Cero.
           frmMain.frmTmp.qrEntradaPaciente.Edit;
           frmMain.frmTmp.qrEntradaPacienteAprobacionNo.Value := '';
           frmMain.frmTmp.qrEntradaPacienteAPROBACIONPOR.Value := '';
           frmMain.frmTmp.qrEntradaPacienteCoberturaValor.Value := 0;
           frmMain.frmTmp.qrEntradaPacienteCoberturaSeguro.Value := 0;
           frmMain.frmTmp.qrEntradaPacienteCoberturaRechazada.Value := 0;
           frmMain.frmTmp.qrEntradaPacienteCoberturaConfirmada.Value := 0;
           frmMain.frmTmp.qrEntradaPacienteOrigen.Value := Origen;
           frmMain.frmTmp.qrEntradaPacienteClienteId.Value := Seguroid;
           frmMain.frmTmp.qrEntradaPacienteClienteNombre.Value := Nombre;
           frmMain.frmTmp.ActTotales;

           If ( frmMain.frmTmp.qrEntradaPaciente.State in [dsEdit,dsInsert] ) And
              (frmMain.frmTmp.qrEntradaPacienteEntradaID.Value <> '') Then
             frmMain.frmTmp.qrEntradaPaciente.Post;

//           frmMain.frmTmp.qrEntradaPacienteAprobacionNo.Value := Aprobacion;
//           frmMain.frmTmp.qrEntradaPacienteAPROBACIONPOR.Value := ConfirmadoPor;
//           DM.Error('El Monto de Cobertura Esta en Cero. Por Favor Verifique.!!!');




           Raise exception.CreateFmt(' Operacion Abortada Por Una de Estas Razones: '+ #13 +
                                     ' � El Monto de Cobertura Esta en Cero '+ #13 +
                                     ' � NO Existen Pruebas Cubiertas por el Seguro '+ #13 +
                                     ' � El Monto Es Mayor que las Pruebas Cubiertas por el Seguro '+ #13 +
                                     ' Por Favor Verifique.!!!', []);
         End
       Else
        Begin
         if (frmMain.frmTmp.qrEntradaPacienteCoberturaPreConfirmada.Value = 1) And (AutoConfirmar = 1) Then
           Begin
             //Cobertura Pre-Confirmada por el Seguro.           
             Confirmado := 1;
             ValorCobertura := frmMain.frmTmp.Valor_Cobertura(frmMain.frmTmp.qrEntradaPacienteRECID.Value);
             EdConfirmar.Value := ValorCobertura;

             //Actualizando la Cobertura Confirmada.
             frmMain.frmTmp.valorNC := 0;
             frmMain.frmTmp.Operacion := 'E';
             frmMain.frmTmp.qrEntradaPaciente.Edit;
             frmMain.frmTmp.qrEntradaPacienteCoberturaRechazada.Value := 0;
             frmMain.frmTmp.qrEntradaPacienteCoberturaConfirmada.Value := 1;
             frmMain.frmTmp.qrEntradaPacienteFECHAASEGURADORA.Value := DM.SystemDate;
//             frmMain.frmTmp.qrEntradaPacienteHoraRegistro.Value := TimeToStr(Time);
             frmMain.frmTmp.qrEntradaPacienteHoraRegistro.Value := DM.Buscar_Hora_Actual;

             If (frmMain.frmTmp.qrEntradaPacienteAprobacionNo.IsNull) Or
                (frmMain.frmTmp.qrEntradaPacienteAprobacionNo.Value = '') Or
                (frmMain.frmTmp.qrEntradaPacienteAprobacionNo.Value = ' ') Or
                (frmMain.frmTmp.qrEntradaPacienteAprobacionNo.Value = ' ') Then
               frmMain.frmTmp.qrEntradaPacienteAprobacionNo.Value := DM.CurUser;

             If (frmMain.frmTmp.qrEntradaPacienteAPROBACIONPOR.IsNull) Or
                (frmMain.frmTmp.qrEntradaPacienteAPROBACIONPOR.Value = '') Or
                (frmMain.frmTmp.qrEntradaPacienteAPROBACIONPOR.Value = ' ') Or
                (frmMain.frmTmp.qrEntradaPacienteAPROBACIONPOR.Value = ' ') Then
               frmMain.frmTmp.qrEntradaPacienteAPROBACIONPOR.Value := DM.CurUser;

//             frmMain.frmTmp.qrEntradaPacienteCoberturaValor.Value := frmMain.frmTmp.qrEntradaPacienteCoberturaSeguro.Value;
             frmMain.frmTmp.qrEntradaPacienteCoberturaValor.Value := frmMain.frmTmp.qrEntradaPacienteCOBERTURAMONTOPRECONFIRMADO.Value;

             frmMain.frmTmp.ActTotales;

//             If (frmMain.frmTmp.qrEntradaPacienteSubtotal.Value <> 0) Then
//               frmMain.frmTmp.qrEntradaPacienteCoberturaPorc.Value := DM.Redondeo((frmMain.frmTmp.qrEntradaPacienteCoberturaValor.Value * 100) / ValorCobertura);

             DM.Info('Esta Aseguradora Maneja Cobertura Fijas.');

             If ( frmMain.frmTmp.qrEntradaPaciente.State in [dsEdit,dsInsert] ) And
                (frmMain.frmTmp.qrEntradaPacienteEntradaID.Value <> '') Then
               frmMain.frmTmp.qrEntradaPaciente.Post;

             If (frmMain.frmTmp.qrEntradaPacienteEntradaID.Value <> '') Then
             Begin
                 If dm.qrParametroServidor_AS400.value <> EmptyStr then
                 begin
                      if dm.PingHost(dm.qrParametroServidor_AS400.value,1) then
                      begin
                         InterfaseAS400.ASConnection.Close;
                         InterfaseAS400.ASConnection.Open;

                         //Insertando las Pruebas en el AS-400.
                         InterfaseAS400.MandarPruebaAS400(frmMain.frmTmp.qrEntradaPacienteMuestraNo.Value, frmMain.frmTmp.qrEntradaPacientePacienteId.Value);
                         InterfaseAS400.ASConnection.Close;
                     end;
                 end;
             end;
//             frmMain.frmTmp.btgrabarClick(nil);
           End
         Else
           Begin
             //Actualizando la Cobertura Confirmada.
             frmMain.frmTmp.Operacion := 'E';
             frmMain.frmTmp.qrEntradaPaciente.Edit;
//             frmMain.frmTmp.qrEntradaPacienteOrigen.Value := Origen;
             frmMain.frmTmp.qrEntradaPacienteClienteId.Value := Seguroid;
             frmMain.frmTmp.qrEntradaPacienteClienteNombre.Value := Nombre;
             frmMain.frmTmp.qrEntradaPacienteCoberturaRechazada.Value := 0;
             frmMain.frmTmp.qrEntradaPacienteCoberturaConfirmada.Value := 1;
             frmMain.frmTmp.qrEntradaPacienteFECHAASEGURADORA.Value := DM.SystemDate; //DM.Buscar_Fecha_Actual;
//             frmMain.frmTmp.qrEntradaPacienteHoraRegistro.Value := TimeToStr(Time);
             frmMain.frmTmp.qrEntradaPacienteHoraRegistro.Value := DM.Buscar_Hora_Actual;

//             frmMain.frmTmp.qrEntradaPacienteAprobacionNo.Value := Aprobacion;
//             frmMain.frmTmp.qrEntradaPacienteAPROBACIONPOR.Value := ConfirmadoPor;
//             frmMain.frmTmp.valorND := 0;
//             frmMain.frmTmp.valorND := (frmMain.frmTmp.qrEntradaPacienteCoberturaValor.Value +
//                                        frmMain.frmTmp.qrEntradaPacienteNeto.Value;
             frmMain.frmTmp.valorNC := 0;
             frmMain.frmTmp.valorNC := DM.Redondeo((frmMain.frmTmp.qrEntradaPacienteCoberturaValor.Value +
                                                    frmMain.frmTmp.qrEntradaPacienteTotalPagado.Value) -
                                                    frmMain.frmTmp.qrEntradaPacienteSubtotal.Value);

             If (frmMain.frmTmp.qrEntradaPacienteSubtotal.Value <> 0) Then
               frmMain.frmTmp.qrEntradaPacienteCoberturaPorc.Value := DM.Redondeo((frmMain.frmTmp.qrEntradaPacienteCoberturaValor.Value * 100) / ValorCobertura);
//                                                                                   frmMain.frmTmp.qrEntradaPacienteSubtotal.Value);
//             frmMain.frmTmp.ActTotales;
//             frmMain.frmTmp.CrearNotaDebito;
//             frmMain.frmTmp.ActNotaDebito;
//             frmMain.frmTmp.RefrescarInterface;

             If (frmMain.frmTmp.valorNC > 1) then
               Begin
                 frmMain.frmTmp.seg_late := True;
                 frmMain.frmTmp.ConceptoNC := 'Confirmacion de Cobertura Tardia.';
                 frmMain.frmTmp.CrearNotaCredito;
                 frmMain.frmTmp.ActNotaCredito;
               End;

             frmMain.frmTmp.ActTotales;

             If ( frmMain.frmTmp.qrEntradaPaciente.State in [dsEdit,dsInsert] ) And
                (frmMain.frmTmp.qrEntradaPacienteEntradaID.Value <> '') Then
               frmMain.frmTmp.qrEntradaPaciente.Post;

             If (frmMain.frmTmp.qrEntradaPacienteEntradaID.Value <> '') Then
             Begin
                 If dm.qrParametroServidor_AS400.value <> EmptyStr then
                 begin
                      if dm.PingHost(dm.qrParametroServidor_AS400.value,1) then
                      begin
                         InterfaseAS400.ASConnection.Close;
                         InterfaseAS400.ASConnection.Open;

                         //Insertando las Pruebas en el AS-400.
                         InterfaseAS400.MandarPruebaAS400(frmMain.frmTmp.qrEntradaPacienteMuestraNo.Value, frmMain.frmTmp.qrEntradaPacientePacienteId.Value);
                         InterfaseAS400.ASConnection.Close;
                     end;
                 end;
              end;
//             frmMain.frmTmp.CrearNotaCredito;
//             frmMain.frmTmp.btgrabarClick(nil);
           End;
        End;
     End;
   End
 else
   begin
    //Dejando Igual Por Proceso Cancelado.
    frmMain.frmTmp.Operacion := 'E';
    frmMain.frmTmp.qrEntradaPaciente.Edit;
//    frmMain.frmTmp.qrEntradaPacienteOrigen.Value := Origen;
    frmMain.frmTmp.qrEntradaPacienteClienteId.Value := Seguroid;
    frmMain.frmTmp.qrEntradaPacienteClienteNombre.Value := Nombre;
    frmMain.frmTmp.qrEntradaPacienteAprobacionNo.Value := EmptyStr;
    frmMain.frmTmp.qrEntradaPacienteAPROBACIONPOR.Value := EmptyStr;
    frmMain.frmTmp.qrEntradaPacienteCoberturaRechazada.Value := 0;
    frmMain.frmTmp.qrEntradaPacienteCoberturaConfirmada.Value := 0;
    frmMain.frmTmp.qrEntradaPacienteCoberturaValor.Value := 0;
    frmMain.frmTmp.qrEntradaPacienteCoberturaSeguro.Value := 0;
//    frmMain.frmTmp.qrEntradaPacienteCOBERTURAPORC.Value := 0.00;
    frmMain.frmTmp.ActTotales;

    If ( frmMain.frmTmp.qrEntradaPaciente.State in [dsEdit,dsInsert] ) And
       (frmMain.frmTmp.qrEntradaPacienteEntradaID.Value <> EmptyStr) Then
      frmMain.frmTmp.qrEntradaPaciente.Post;

//    frmMain.frmTmp.RefrescarInterface;
   end;
end;


//Cobertura Rechazada por el Seguro.
procedure TfrmConfirmarCoberturaTardia.Rechazar;
begin
 If DM.Mensaje('Desea Marcar Como Rechazada la Cobertura de Este Registro?',mb_yesno) = id_yes then
   Begin
     Rechazado := 1;
     Confirmado := 0;

     frmMain.frmTmp.qrEntradaPacienteCoberturaRechazada.Value := Rechazado;
     frmMain.frmTmp.qrEntradaPacienteCoberturaConfirmada.Value := Confirmado;
   End;
end;


//Cobertura Pre-Confirmada por el Seguro.
procedure TfrmConfirmarCoberturaTardia.Preconfirmar;
begin
 ValorCobertura := frmMain.frmTmp.Valor_Cobertura(frmMain.frmTmp.qrEntradaPacienteRECID.Value);
 EdConfirmar.Value := ValorCobertura;

 //Actualizando la Cobertura Confirmada.
 frmMain.frmTmp.valorNC := 0;
 frmMain.frmTmp.Operacion := 'E';
 frmMain.frmTmp.qrEntradaPaciente.Edit;
 frmMain.frmTmp.qrEntradaPacienteCoberturaRechazada.Value := 0;
 frmMain.frmTmp.qrEntradaPacienteCoberturaConfirmada.Value := 1;
 frmMain.frmTmp.qrEntradaPacienteFECHAASEGURADORA.Value := DM.SystemDate; //DM.Buscar_Fecha_Actual;
// frmMain.frmTmp.qrEntradaPacienteHoraRegistro.Value := TimeToStr(Time);
 frmMain.frmTmp.qrEntradaPacienteHoraRegistro.Value := DM.Buscar_Hora_Actual;

 If (frmMain.frmTmp.qrEntradaPacienteAprobacionNo.IsNull) Or
    (frmMain.frmTmp.qrEntradaPacienteAprobacionNo.Value = '') Or
    (frmMain.frmTmp.qrEntradaPacienteAprobacionNo.Value = ' ') Or
    (frmMain.frmTmp.qrEntradaPacienteAprobacionNo.Value = ' ') Then
   frmMain.frmTmp.qrEntradaPacienteAprobacionNo.Value := DM.CurUser;

 If (frmMain.frmTmp.qrEntradaPacienteAPROBACIONPOR.IsNull) Or
    (frmMain.frmTmp.qrEntradaPacienteAPROBACIONPOR.Value = '') Or
    (frmMain.frmTmp.qrEntradaPacienteAPROBACIONPOR.Value = ' ') Or
    (frmMain.frmTmp.qrEntradaPacienteAPROBACIONPOR.Value = ' ') Then
   frmMain.frmTmp.qrEntradaPacienteAPROBACIONPOR.Value := DM.CurUser;

// frmMain.frmTmp.qrEntradaPacienteCoberturaValor.Value := frmMain.frmTmp.qrEntradaPacienteCoberturaSeguro.Value;
 frmMain.frmTmp.qrEntradaPacienteCoberturaValor.Value := frmMain.frmTmp.qrEntradaPacienteCOBERTURAMONTOPRECONFIRMADO.Value;

// If (frmMain.frmTmp.qrEntradaPacienteSubtotal.Value <> 0) Then
//     frmMain.frmTmp.qrEntradaPacienteCoberturaPorc.Value := DM.Redondeo((frmMain.frmTmp.qrEntradaPacienteCoberturaValor.Value * 100) / ValorCobertura);

 DM.Info('Esta Aseguradora Maneja Cobertura Fijas.');

// frmMain.frmTmp.RefrescarInterface;
// frmMain.frmTmp.btgrabarClick(nil);
end;


END.


