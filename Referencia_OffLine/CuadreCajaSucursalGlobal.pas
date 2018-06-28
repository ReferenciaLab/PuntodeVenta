unit CuadreCajaSucursalGlobal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, dxLayoutControl, StdCtrls, cxButtons,
  cxCurrencyEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, ADODB, DB,
  cxContainer, cxEdit, cxGroupBox, cxRadioGroup, cxControls, pptypes, ppReport,
  ppCtrls, ppBands, ppClass, ppVar, ppPrnabl, ppCache, ppComm, ppRelatv, ppProd,
  cxGraphics, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxImageComboBox;

type
  TfrmCuadreCajaSucursalGlobal = class(TForm)
    dxLayoutControl3: TdxLayoutControl;
    edfechacorte: TcxDateEdit;
    btaceptarcuadre: TcxButton;
    btcancelarcuadre: TcxButton;
    dxLayoutGroup2: TdxLayoutGroup;
    GroupParametros: TdxLayoutGroup;
    dxLayoutControl3Item2: TdxLayoutItem;
    GroupSaldo: TdxLayoutGroup;
    botonescuadre: TdxLayoutGroup;
    dxLayoutControl3Item31: TdxLayoutItem;
    dxLayoutControl3Item10: TdxLayoutItem;
    Label2: TLabel;
    cboTanda: TcxImageComboBox;
    dxLayoutControl3Item1: TdxLayoutItem;
    btPacientes: TcxButton;
    procedure btPacientesClick(Sender: TObject);

    procedure SetDefaultCuadre;
    function  Validar_Cobros : Boolean;
    procedure CrearCorteSucursalGlobal;
    Function  Extrae_Tanda(CuadreGlobal : String; SucursalID : String) : String;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    registro : Integer;
    procedure Run;
  end;

var
  frmCuadreCajaSucursalGlobal: TfrmCuadreCajaSucursalGlobal;

Implementation

Uses ActionsDM, DataModule, Main;

{$R *.dfm}


procedure TfrmCuadreCajaSucursalGlobal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = Vk_Down) then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);
  if (key = 13) then
     PostMessage(Handle, Wm_NextDlgCtl, 0, 0);
  if (key = Vk_Up)  then
     PostMessage(Handle, Wm_NextDlgCtl, 1, 0);

  if (key = 27) then
    begin
      Close;
    end;
end;


procedure TfrmCuadreCajaSucursalGlobal.SetDefaultCuadre;
begin
  edfechacorte.Date := DM.Buscar_Fecha_Actual;
end;


procedure TfrmCuadreCajaSucursalGlobal.Run;
begin
 SetDefaultCuadre;
 showmodal;
 if ModalResult = mrOk then
 begin
   if MessageDlg('Desea Imprimir el Corte Global de Sucursal por Fecha?', mtWarning, [mbYes,mbNo], 0) = mrYes then
   begin
      if Not Validar_Cobros then
      Begin
          registro := DM.Get_Secuencia_Id;
          CrearCorteSucursalGlobal;
      End;
      With DM.qrCorteGlobal, sql do
      begin
        Close;
        Clear;
        Add('SELECT SucursalId, Fecha, SUM(Valor) AS Valor, SUM(ValorMST) AS ValorMST '+
            ' FROM PTCorteSucursalGlobal (nolock) WHERE Fecha = '+#39+FormatDateTime('yyyymmdd', edfechacorte.Date)+#39);
        if cboTanda.ItemIndex = 0 then
        begin
           Add(' And CorteId='+#39'1'+#39);
           intCorteCuadre := 1
        end
        else if cboTanda.ItemIndex = 1 then
        begin
           Add(' And CorteId='+#39'2'+#39);
           intCorteCuadre := 2
        end
        else if cboTanda.ItemIndex = 2 then
        begin
           Add(' And CorteId='+#39'3'+#39);
           intCorteCuadre := 3
        end
        else if cboTanda.ItemIndex = 3 then
        begin
           Add(' And CorteId='+#39'4'+#39);
           intCorteCuadre := 4
        end
        else
           intCorteCuadre := 0;
        Add(' GROUP BY SucursalId, Fecha');
        Add(' ORDER BY SucursalId, Fecha');
        Open;
      end;

      //Imprimiendo el Cuadre de Caja (GLOBAL).
      if (DM.qrCorteGlobal.RecordCount > 0) then
        Begin
          //Imprimiendo el Cuadre de Caja (GLOBAL).
          DM.ppCuadreSucursalGlobal.DeviceType := dtScreen;
          DM.ppCuadreSucursalGlobal.Print;

          DM.ppCuadreSucursalGlobal1.DeviceType := dtScreen;
          DM.ppCuadreSucursalGlobal1.Print;

          DM.ppCuadreSucursalGlobal2.DeviceType := dtScreen;
          DM.ppCuadreSucursalGlobal2.Print;

          DM.ppCuadreSucursalGlobal3.DeviceType := dtScreen;
          DM.ppCuadreSucursalGlobal3.Print;

        end;
    end
   Else
    Raise exception.CreateFmt('La Operacion Fue Abortada por el Usuario.', []);
  end;
end;


function TfrmCuadreCajaSucursalGlobal.Validar_Cobros : Boolean;
Var
 qbuscar: TADOQuery;
begin
 qbuscar := DM.NewQuery;
 qbuscar.Close;
 qbuscar.SQL.Text := ' SELECT * FROM PTCorteSucursalGlobal (nolock) '+
                     ' WHERE fecha = :fec '+
                     ' ORDER BY SucursalId, Fecha ';
 qbuscar.Parameters.ParamByName('fec').Value := edfechacorte.Date;
 qbuscar.Open;

 If (qbuscar.RecordCount > 0) Then
   Result := True
 Else
   Result := False;

 FreeAndNil(qbuscar);
End;


procedure TfrmCuadreCajaSucursalGlobal.btPacientesClick(Sender: TObject);
 Var qdetalle : TADOQuery;
begin
     if edFechaCorte.Text <> Emptystr then
     begin
       If ( DM.Mensaje('Está seguro de eliminar los registros de la fecha de corte?' ,mb_yesno) = id_yes ) Then
       Begin
           qdetalle := DM.NewQuery;
           qdetalle.close;
           qdetalle.SQL.Text := ' Delete From PTCorteSucursalGlobal '+
                                ' Where Fecha='+#39+FormatDateTime('yyyymmdd', edFechaCorte.Date)+#39;
           qdetalle.ExecSQL;
       end;
     end;
end;

procedure TfrmCuadreCajaSucursalGlobal.CrearCorteSucursalGlobal;
Var
 qcobros, qdetalle : TADOQuery;
begin
 qcobros := DM.NewQuery;
 qcobros.Active := False;
 qcobros.SQL.Clear;
 qcobros.SQL.Text := ' SELECT B.fecha, B.SucursalId, B.UsuarioId, B.CuadreGlobal, C.FormadePagoId, '+
                     ' C.MonedaId, C.SinPrFilter, '+
                     ' SUM(C.Monto) AS Monto, SUM(C.MontoMST) AS MontoMST '+
                     ' FROM PTCobro B (nolock) Inner Join PTCobroDetalle C (nolock) '+
                     ' ON B.cobroid = C.cobroid '+
                     ' WHERE B.fecha = :fec '+
                     ' AND B.CuadreGlobal <> '+#39+'CA'+#39;
                     If dm.qrParametroServidor_AS400.value <> EmptyStr then
                        qcobros.SQL.Text :=qcobros.SQL.Text +' AND Isnull(b.Fuera_Linea,'+#39+'0'+#39+') = 0'
                     else
                        qcobros.SQL.Text :=qcobros.SQL.Text +' AND Isnull(b.Fuera_Linea,'+#39+'0'+#39+') = 1';

                     qcobros.SQL.Text :=qcobros.SQL.Text +' GROUP BY B.fecha, B.SucursalId, B.UsuarioId, B.CuadreGlobal, C.FormadePagoId, C.MonedaId, C.SinPrFilter ';
                     qcobros.SQL.Text :=qcobros.SQL.Text +' ORDER BY B.fecha, B.SucursalId, B.UsuarioId, B.CuadreGlobal, C.FormadePagoId, C.MonedaId, C.SinPrFilter ';

 qcobros.Parameters.ParamByName('fec').Value := edfechacorte.Date;
 qcobros.Active := True;

 if qcobros.Recordcount > 0 then
 begin
     qdetalle := DM.NewQuery;
     qdetalle.close;
     qdetalle.SQL.Text := ' INSERT INTO PTCorteSucursalGlobal '+
                          ' (CorteID, SucursalId, Fecha, Usuario, FormaDePagoId, '+
                          ' MonedaId, Valor, ValorMST, SinPrFilter, RefRecId, RecId) '+
                          ' Values (:00,:01,:02,:03,:04,:05,:06,:07,:08,:09,:10)';

     qcobros.First;
     while not qcobros.Eof do
     begin
        if (DM.Redondeo(qcobros.FieldByName('Monto').AsFloat) > 1) and
           (DM.Redondeo(qcobros.FieldByName('MontoMST').AsFloat) > 1) then
        Begin
            qdetalle.Parameters.ParamByName('00').Value := Extrae_Tanda(qcobros.FieldByName('CuadreGlobal').AsString,qcobros.FieldByName('SucursalId').AsString);
            qdetalle.Parameters.ParamByName('01').Value := qcobros.FieldByName('SucursalId').AsString;
            qdetalle.Parameters.ParamByName('02').Value := qcobros.FieldByName('fecha').AsDateTime;
            qdetalle.Parameters.ParamByName('03').Value := qcobros.FieldByName('UsuarioId').AsString;
            qdetalle.Parameters.ParamByName('04').Value := qcobros.FieldByName('FormadePagoId').AsString;
            qdetalle.Parameters.ParamByName('05').Value := qcobros.FieldByName('MonedaId').AsString;
            qdetalle.Parameters.ParamByName('06').Value := DM.Redondeo(qcobros.FieldByName('Monto').AsFloat);
            qdetalle.Parameters.ParamByName('07').Value := DM.Redondeo(qcobros.FieldByName('MontoMST').AsFloat);
            qdetalle.Parameters.ParamByName('08').Value := qcobros.FieldByName('SinPrFilter').AsInteger;
            qdetalle.Parameters.ParamByName('09').Value := registro;
            qdetalle.Parameters.ParamByName('10').Value := DM.Get_Secuencia_Id;
            qdetalle.ExecSQL;
        End;
        qcobros.Next;
     end;
 end;
 FreeAndNil(qcobros);
 FreeAndNil(qdetalle);
end;
Function TfrmCuadreCajaSucursalGlobal.Extrae_Tanda(CuadreGlobal : String; SucursalID : String) : String;
Var
 qbuscar: TADOQuery;
 Cont   : integer;
begin
     Cont := 0;
     qbuscar := DM.NewQuery;
     qbuscar.Close;
     qbuscar.SQL.Text := ' Select Distinct CuadreGlobal From PtCobro (nolock) '+
                         ' Where Fecha    = :fec '+
                         ' And SucursalID = :suc '+
                         ' And CuadreGlobal <> '+#39+'CA'+#39;
                     If dm.qrParametroServidor_AS400.value <> EmptyStr then
                        qbuscar.SQL.Text :=qbuscar.SQL.Text +' AND Isnull(Fuera_Linea,'+#39+'0'+#39+') = 0'
                     else
                        qbuscar.SQL.Text :=qbuscar.SQL.Text +' AND Isnull(Fuera_Linea,'+#39+'0'+#39+') = 1';

                     qbuscar.SQL.Text :=qbuscar.SQL.Text +' Order by CuadreGlobal ';
     qbuscar.Parameters.ParamByName('fec').Value := edfechacorte.Date;
     qbuscar.Parameters.ParamByName('suc').Value := SucursalID;
     qbuscar.Open;
     If (qbuscar.RecordCount > 0) Then
     begin
       qbuscar.First;
       while not qbuscar.Eof do
       begin
          Cont := Cont + 1;
          if CuadreGlobal = qbuscar.FieldByName('CuadreGlobal').AsString then
          begin
              Result := inttostr(Cont);
              FreeAndNil(qbuscar);
              exit;
          end;
          qbuscar.Next;
       end
     end;
     FreeAndNil(qbuscar);
end;
END.

