unit DialogDescUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DialogModule, Menus, cxLookAndFeelPainters, dxLayoutControl,
  StdCtrls, cxButtons, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxCurrencyEdit, db, cxGraphics, cxLookupEdit, cxDBLookupEdit, ADODB,
  cxDBExtLookupComboBox, cxMaskEdit, cxDropDownEdit, cxImageComboBox, cxintl,
  cxMemo, IEHTTP3,IPExtra,xmldom, XMLIntf, msxmldom, XMLDoc;

type
  TfrmDialogDescUsuario = class(TfrmDialogModule)
    EdDescuento: TcxCurrencyEdit;
    LcDescuento: TdxLayoutItem;
    lcDialogGroup3: TdxLayoutGroup;
    EdTarjeta: TcxExtLookupComboBox;
    LcTarjeta: TdxLayoutItem;
    CbTipo: TcxComboBox;
    LcTipo: TdxLayoutItem;
    EdNumero: TcxCurrencyEdit;
    LcNumero: TdxLayoutItem;
    edPlan: TcxTextEdit;
    LcPlan: TdxLayoutItem;
    EdBono: TcxCurrencyEdit;
    LcBono: TdxLayoutItem;
    LcCedula: TdxLayoutItem;
    EdCedula: TcxMaskEdit;
    lcDialogGroup4: TdxLayoutGroup;
    LcComentario: TdxLayoutItem;
    lcDialogGroup6: TdxLayoutGroup;
    edComentario: TcxMemo;
    lcDialogGroup5: TdxLayoutGroup;
    LctCedula: TdxLayoutItem;
    edtCedula: TcxMaskEdit;
    LctNombre: TdxLayoutItem;
    edtNombre: TcxTextEdit;
    lcDialogItem1: TdxLayoutItem;
    lcDialogGroup7: TdxLayoutGroup;
    EdtNumero: TcxCurrencyEdit;
    LctFechaAct: TdxLayoutItem;
    EdtFechaAct: TcxTextEdit;
    LctBeneficios: TdxLayoutItem;
    EdtTieneBenef: TcxTextEdit;
    LcAfiliado: TdxLayoutItem;
    lcDialogGroup8: TdxLayoutGroup;
    CbTipoAfiliado: TcxComboBox;
    LcBeneficiario: TdxLayoutItem;
    lcDialogGroup9: TdxLayoutGroup;
    EdPaciente: TcxTextEdit;
    IEHTTP1: TIEHTTP;
    lcDialogItem2: TdxLayoutItem;
    lcDialogGroup10: TdxLayoutGroup;
    btBuscar: TcxButton;
    lcDialogItem3: TdxLayoutItem;
    lcDialogGroup11: TdxLayoutGroup;
    BtBuscarCed: TcxButton;
    procedure BtBuscarCedClick(Sender: TObject);
    procedure btBuscarClick(Sender: TObject);
    Procedure Buscar_Usuario_Password;
    procedure EdNumeroEnter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CbTipoEnter(Sender: TObject);
    Procedure Buscar_Fecha_Hora_Transaccion;
  private
    { Private declarations }
    StrRes : AnsiString;
    StrUsuario,StrPassword,StrCedula,StrFechaHora,StrTipo_Descuento  : String;
    Total_Descuento : Double;
    StrClienteID,StrTarjetaID,StrTarjetaNumero,StrMuestrano,
    StrRefRecID,StrBeneficiario,StrDependiente,StrTipoAfiliado,StrPacienteID,StrNombrePaciente  : String;

  public
    { Public declarations }
    Bono          : Double;
    DesctoSuc     : Double;
    Alerta        : Boolean;
    qfindBono     : TADOQuery;
    qfindTarjeta  : TADOQuery;
    qDelete       : TADOQuery;

    procedure Run(Pantalla : integer;Tipo : integer);
    procedure Limpiar;
    procedure Reg_Bono;
    procedure Buscar_Tarjeta;
    procedure Buscar_Descuento;
  end;

var
  frmDialogDescUsuario: TfrmDialogDescUsuario;

implementation

uses Main, DataModule, PuntoVenta, WideStrings;

{$R *.dfm}


procedure TfrmDialogDescUsuario.Limpiar;
begin
   Bono                             := 0;
   DesctoSuc                        := 0;
   Alerta                           := False;
   EdBono.Value                     := Bono;
   EdDescuento.Value                := 0;
   EdDescuento.Style.Color          := ClAqua;
   EdDescuento.Properties.ReadOnly  := True;
   edPlan.Style.Color               := ClAqua;
   edPlan.Properties.ReadOnly       := True;
   EdBono.Style.Color               := ClAqua;
   EdBono.Properties.ReadOnly       := True;
   EdCedula.Text                    := EmptyStr;
   EdNumero.Value                   := 0;
   EdNumero.Style.Color             := ClWindow;
   EdNumero.Properties.ReadOnly     := False;
   CbTipoAfiliado.ItemIndex         := 0;
   EdPaciente.Text                  := EmptyStr;
   EdPaciente.Style.Color           := ClWindow;
   EdPaciente.Properties.ReadOnly   := False;
   EdtCedula.Text                   := EmptyStr;
   EdtNombre.Text                   := EmptyStr;
   EdTarjeta.Text                   := EmptyStr;
   EdtFechaAct.Text                 := EmptyStr;
   EdtTieneBenef.Text               := EmptyStr;
end;


procedure TfrmDialogDescUsuario.Reg_Bono;
begin
// Bono := 0;
 DesctoSuc                        := 0;
 Alerta                           := False;
 EdBono.Value                     := 0;
 EdDescuento.Value                := 0;
 EdBono.Style.Color               := ClWindow;
 EdBono.Properties.ReadOnly       := False;
 EdDescuento.Style.Color          := ClAqua;
 EdDescuento.Properties.ReadOnly  := True;
end;


procedure TfrmDialogDescUsuario.BtBuscarCedClick(Sender: TObject);
Var S      : String;
    NS , S1,S2,Nombre,Cedula,Tarjeta,FechaActivacion,TieneBeneficios : String;
    L , I , LN : integer;
    MM :TStringList;
    XML: IXMLDocument;
    Cliente : IXMLNode;
    StartItemNode : IXMLNode;
    Error : String;
    ANode : IXMLNode;
    STitle, sDesc, sLink : WideString;
begin
  inherited;
  If (CbTipo.ItemIndex = 1) And (EdTarjeta.Text='SP-0003') Then
  Begin
       If StrToInt64(EdNumero.Text)=0 then
       begin
          Raise exception.CreateFmt(' Número de Tarjeta No puede estar en blanco. Verifique.', []);
       end;
       If (EdCedula.Text='   -       - ') then
       Begin
          Raise exception.CreateFmt(' Cédula No puede estar en blanco. Verifique.', []);
       end;
  end;
  If (CbTipo.ItemIndex = 1) And (StrToInt64(EdNumero.Text)>0) And (Length(EdCedula.Text)>0) And (EdTarjeta.Text='SP-0003') Then
  Begin
    try
      try
          IEHTTP1.content_type:='Text/xml';
          IEHTTP1.RequestMethod := 'GET';
          Buscar_Usuario_Password;
          StrCedula := StringReplace(edCedula.EditingText,'-','',[rfReplaceAll,rfIgnoreCase]);
          IEHTTP1.ExecuteURL('http://172.16.30.65/RestFarmacia/GetProvital.aspx?cedula='+StrCedula+'&tarjeta='+EdNumero.Text);
      except
        on E: Exception do
        begin
          {$IFDEF DEBUG}ShowMessage('Get Error:'+E.Message){$ENDIF};
        end;
      end;
    finally
      StrRes := IEHTTP1.result_sl.Text;
      If (IEHTTP1.result_sl.Text='"Object reference not set to an instance of an object."'#$D#$A'') Or
         (Copy(IEHTTP1.result_sl.Text,1,11)='{"Message":') Then
      Begin
        Raise exception.CreateFmt(' Cédula y/o Número de Tarjeta No existe en Farmax. Verifique.', []);
      end;
      If (Copy(IEHTTP1.result_sl.Text,38,60)='no ha activado la tarjeta, por ende no tiene beneficios') Then
      Begin
        Raise exception.CreateFmt(' Tarjeta No activada por ende no tiene beneficios.  Para activar Ir http://activacion.provital.com.do.', []);
      end;
       try
          MM := TStringList.Create;
          NS := '';
          S:= StrRes;
          L := Length(S);
          for I := 1 to L do
              Begin
                  If (Ord(S[I]) <> 34)
                  And (Ord(S[I]) <> 123)
                  And (Ord(S[I]) <> 125)
                  Then NS := NS + Copy(S,I,1);
              End;
              S := NS;
              NS := '';
              L := Length(S);

          for I := 1 to L do
              Begin
                  If (Ord(S[I]) = 44)
                  Or (Ord(S[I]) = 58)
                  Then Begin
                    NS := NS + #13#10;
                    MM.Add(Trim(NS));
                    NS := '';
                  End
                  Else NS := NS + Copy(S,I,1);
              End;
              MM.Add(Trim(NS));
      //      --------------------------------------------------------------

              LN := MM.Count-1;
              for I := 0 to LN Do
              Begin
                  If MM[I] = Trim('NombreCompleto')
                  Then edtNombre.Text := Trim(MM[I + 1]);
                  If MM[I] = Trim('Cedula')
                  Then edtCedula.Text := Trim(MM[I + 1]);
                  If MM[I] = Trim('Tarjeta')
                  Then EdtNumero.Text := Trim(MM[I + 1]);
                  If MM[I] = Trim('FechaActivacion')
                  Then EdtFechaAct.Text := Trim(MM[I + 1]);
                  If MM[I] = Trim('TieneBeneficios')
                  Then EdtTieneBenef.Text := Trim(MM[I + 1]);
              End;
              CbTipoAfiliado.ItemIndex := 1;
              EdPaciente.Text := edtNombre.Text;
        finally
          MM.Free
        end;
  end;
  end;
  If (CbTipo.ItemIndex = 1) And (Length(EdCedula.Text)>0) And (EdTarjeta.Text='SP-0004') Then
  Begin
    try
      try
          IEHTTP1.content_type:='Text/xml';
          IEHTTP1.RequestMethod := 'GET';
          StrCedula := StringReplace(edCedula.EditingText,'-','',[rfReplaceAll,rfIgnoreCase]);
          IEHTTP1.ExecuteURL('http://172.16.30.65/RestFarmacia/GetHidalgos.aspx?cedula='+StrCedula);
      except
        on E: Exception do
        begin
          ShowMessage('Get Error:'+E.Message);
        end;
      end;
    finally
      StrRes := IEHTTP1.result_sl.Text;
      If Copy(IEHTTP1.result_sl.Text,1,61)='<ResultadoContenido><Data></Data><Error>true</Error><Mensaje>' Then
      Begin
        Raise exception.CreateFmt('Núm. de Cédula No existe en Farmacia Los Hidalgos. Verifique.', []);
      end;

      try
          MM := TStringList.Create;
          NS := '';
          S:= StrRes;
          L := Length(S);
          for I := 1 to L do
              Begin
                  If (Ord(S[I]) <> 34)
                  And (Ord(S[I]) <> 123)
                  And (Ord(S[I]) <> 125)
                  Then NS := NS + Copy(S,I,1);
              End;
              S := NS;
              NS := '';
              L := Length(S);

          for I := 1 to L do
              Begin
                  If (Ord(S[I]) = 60)
                  Or (Ord(S[I]) = 62)
                  Then Begin
                    NS := NS + #13#10;
                    MM.Add(Trim(NS));
                    NS := '';
                  End
                  Else NS := NS + Copy(S,I,1);
              End;
              MM.Add(Trim(NS));
      //      --------------------------------------------------------------

              LN := MM.Count-1;
              for I := 0 to LN Do
              Begin
                  If MM[I] = Trim('NombreCompleto')
                  Then edtNombre.Text := Trim(MM[I + 1]);
                  If MM[I] = Trim('Cedula')
                  Then edtCedula.Text := Trim(MM[I + 1]);
                  If MM[I] = Trim('Error') Then
                  begin
                  if (edtNombre.Text <> EmptyStr) And
                     (edtCedula.Text <> EmptyStr) Then
                     EdtNumero.Text := EdNumero.Text;
                  end;
                  If MM[I] = Trim('Mensaje')
                  Then EdtTieneBenef.Text := Trim(MM[I + 1]);
              End;
              If Not((EdtTieneBenef.Text='EXISTE'))
               Or (EdtTieneBenef.Text =EmptyStr)  then
              begin
                  Raise exception.CreateFmt(' Número de Cédula No existe en Farmacia Los Hidalgos. Verifique.', []);
              end;
              CbTipoAfiliado.ItemIndex := 1;
              EdPaciente.Text := edtNombre.Text;
        finally
          MM.Free
        end;
  end;
  end;

end;

procedure TfrmDialogDescUsuario.btBuscarClick(Sender: TObject);
Var S      : String;
    NS , S1,S2,Nombre,Cedula,Tarjeta,FechaActivacion,TieneBeneficios : String;
    L , I , LN : integer;
    MM :TStringList;
    XML: IXMLDocument;
    Cliente : IXMLNode;
    StartItemNode : IXMLNode;
    Error : String;
    ANode : IXMLNode;
    STitle, sDesc, sLink, Mensaje : WideString;
begin
  inherited;
  If (CbTipo.ItemIndex = 1) And (EdTarjeta.Text='SP-0003') Then
  Begin
       If StrToInt64(EdNumero.Text)=0 then
       begin
          Raise exception.CreateFmt(' Número de Tarjeta No puede estar en blanco para Proveedor Farmax-Provital. Verifique.', []);
       end;
       If (EdCedula.Text='   -       - ') then
       Begin
          Raise exception.CreateFmt(' Cédula No puede estar en blanco para Proveedor Farmax-Provital. Verifique.', []);
       end;
  end;

  If (CbTipo.ItemIndex = 1) And (StrToInt64(EdNumero.Text)>0) And (Length(EdCedula.Text)>0) And (EdTarjeta.Text='SP-0003') Then
  Begin
    try
      try
          IEHTTP1.content_type:='Text/xml';
          IEHTTP1.RequestMethod := 'GET';
          Buscar_Usuario_Password;
          StrCedula := StringReplace(edCedula.EditingText,'-','',[rfReplaceAll,rfIgnoreCase]);
          IEHTTP1.ExecuteURL('http://172.16.30.65/RestFarmacia/GetProvital.aspx?cedula='+StrCedula+'&tarjeta='+EdNumero.Text);
      except
        on E: Exception do
        begin
          {$IFDEF DEBUG}ShowMessage('Get Error:'+E.Message){$ENDIF};
        end;
      end;
    finally
      StrRes := IEHTTP1.result_sl.Text;
      If (IEHTTP1.result_sl.Text='"Object reference not set to an instance of an object."'#$D#$A'') Or
         (Copy(IEHTTP1.result_sl.Text,1,11)='{"Message":') Then
      Begin
        Raise exception.CreateFmt(' Cédula y/o Número de Tarjeta No existe en Farmax. Verifique.', []);
      end;
      If (IEHTTP1.result_sl.Text='A connection attempt failed because') Then
      Begin
        Raise exception.CreateFmt(' Cédula y/o Número de Tarjeta No existe en Farmax. Verifique.', []);
      end;

       try
          MM := TStringList.Create;
          NS := '';
          S:= StrRes;
          L := Length(S);
          for I := 1 to L do
              Begin
                  If (Ord(S[I]) <> 34)
                  And (Ord(S[I]) <> 123)
                  And (Ord(S[I]) <> 125)
                  Then NS := NS + Copy(S,I,1);
              End;
              S := NS;
              NS := '';
              L := Length(S);

          for I := 1 to L do
              Begin
                  If (Ord(S[I]) = 44)
                  Or (Ord(S[I]) = 58)
                  Then Begin
                    NS := NS + #13#10;
                    MM.Add(Trim(NS));
                    NS := '';
                  End
                  Else NS := NS + Copy(S,I,1);
              End;
              MM.Add(Trim(NS));
      //      --------------------------------------------------------------

              LN := MM.Count-1;
              for I := 0 to LN Do
              Begin
                  If MM[I] = Trim('NombreCompleto')
                  Then edtNombre.Text := Trim(MM[I + 1]);
                  If MM[I] = Trim('Cedula')
                  Then edtCedula.Text := Trim(MM[I + 1]);
                  If MM[I] = Trim('Tarjeta')
                  Then EdtNumero.Text := Trim(MM[I + 1]);
                  If MM[I] = Trim('FechaActivacion')
                  Then EdtFechaAct.Text := Trim(MM[I + 1]);
                  If MM[I] = Trim('TieneBeneficios')
                  Then EdtTieneBenef.Text := Trim(MM[I + 1]);
//                  If MM[I] = Trim('Message')
//                 Then Mensaje := Trim(MM[I + 1]);
              End;
              CbTipoAfiliado.ItemIndex := 1;
              EdPaciente.Text := edtNombre.Text;
{              If Trim(Mensaje) <> EmptyStr then
              begin
                  Raise exception.CreateFmt(Mensaje,[]);
//                  ' Tarjeta No activada por ende no tiene beneficios.  Para activar Ir http://activacion.provital.com.do.', []);
              end;
}
        finally
          MM.Free
        end;
  end;
  end;
  If (CbTipo.ItemIndex = 1) And (StrToInt64(EdNumero.Text)>0) And (EdTarjeta.Text='SP-0004') Then
  Begin
    try
      try
          IEHTTP1.content_type:='Text/xml';
          IEHTTP1.RequestMethod := 'GET';
          IEHTTP1.ExecuteURL('http://172.16.30.65/RestFarmacia/GetHidalgos.aspx?tarjeta='+EdNumero.Text);
      except
        on E: Exception do
        begin
          ShowMessage('Get Error:'+E.Message);
        end;
      end;
    finally
      StrRes := IEHTTP1.result_sl.Text;
      If Copy(IEHTTP1.result_sl.Text,1,61)='<ResultadoContenido><Data></Data><Error>true</Error><Mensaje>' Then
      Begin
        Raise exception.CreateFmt('Número de Tarjeta No existe en Farmacia Los Hidalgos. Verifique.', []);
      end;

      try
          MM := TStringList.Create;
          NS := '';
          S:= StrRes;
          L := Length(S);
          for I := 1 to L do
              Begin
                  If (Ord(S[I]) <> 34)
                  And (Ord(S[I]) <> 123)
                  And (Ord(S[I]) <> 125)
                  Then NS := NS + Copy(S,I,1);
              End;
              S := NS;
              NS := '';
              L := Length(S);

          for I := 1 to L do
              Begin
                  If (Ord(S[I]) = 60)
                  Or (Ord(S[I]) = 62)
                  Then Begin
                    NS := NS + #13#10;
                    MM.Add(Trim(NS));
                    NS := '';
                  End
                  Else NS := NS + Copy(S,I,1);
              End;
              MM.Add(Trim(NS));
      //      --------------------------------------------------------------

              LN := MM.Count-1;
              for I := 0 to LN Do
              Begin
                  If MM[I] = Trim('NombreCompleto')
                  Then edtNombre.Text := Trim(MM[I + 1]);
                  If MM[I] = Trim('Cedula')
                  Then edtCedula.Text := Trim(MM[I + 1]);
                  If MM[I] = Trim('Error') Then
                  begin
                  if (edtNombre.Text <> EmptyStr) And
                     (edtCedula.Text <> EmptyStr) Then
                     EdtNumero.Text := EdNumero.Text;
                  end;
                  If MM[I] = Trim('Mensaje')
                  Then EdtTieneBenef.Text := Trim(MM[I + 1]);
              End;
              If Not((EdtTieneBenef.Text='EXISTE'))
               Or (EdtTieneBenef.Text =EmptyStr)  then
              begin
                  Raise exception.CreateFmt('Número de Tarjeta No existe en Farmacia Los Hidalgos. Verifique.', []);
              end;
              CbTipoAfiliado.ItemIndex := 1;
              EdPaciente.Text := edtNombre.Text;
        finally
          MM.Free
        end;
  end;
  end;
end;

procedure TfrmDialogDescUsuario.buscar_descuento;
begin
  If Length(EdTarjeta.EditingText)=0 Then Limpiar;
  If (CbTipo.ItemIndex = 0) Then
  Begin
      edPlan.Text := 'DESCUENTO SUCURSAL';
      EdDescuento.Style.Color := ClWhite;
      EdDescuento.Properties.ReadOnly := False;
      DesctoSuc := DM.DescuentoUsuario(Dm.CurUser);
      EdDescuento.Value := DM.DescuentoUsuario(Dm.CurUser);
  end
  else
  If (CbTipo.ItemIndex = 1) Then
  Begin
      edPlan.Text := 'DESCUENTO TARJETA';
      EdDescuento.Style.Color := ClAqua;
      EdDescuento.Properties.ReadOnly := True;
      DesctoSuc := DM.DescuentoUsuario(Dm.CurUser);
      if Length(EdTarjeta.EditText)> 0 then  EdDescuento.Value := DM.DescuentoTarjeta(EdTarjeta.EditValue);
  end
  else
  If (CbTipo.ItemIndex = 2) Then
  Begin
      edPlan.Text := 'DESCUENTO EMPLEADO';
      EdDescuento.Style.Color := ClAqua;
      EdDescuento.Properties.ReadOnly := True;
      DesctoSuc := DM.qrParametroDescuento_Empleado.AsCurrency;
      EdDescuento.Value := DM.qrParametroDescuento_Empleado.AsCurrency;
  end
  Else
  Begin
      edPlan.Text := '';
      buscar_tarjeta;
  end;
end;


procedure TfrmDialogDescUsuario.buscar_tarjeta;
Var
  Texto : String;
begin
  Limpiar;

  If (CbTipo.ItemIndex = 1) Then
   If (EdTarjeta.Text = '') Then
   Begin
     Limpiar;
     Alerta := True;
   end
 Else
  Begin
    //Buscando los Datos de la Tarjeta Seleccionada.
    qfindTarjeta := DM.Find('SELECT * FROM PTTarjetaDescuento WHERE TarjetaId = :tar',
                            UpperCase(EdTarjeta.Text));

    If (qfindTarjeta.RecordCount > 0) Then
      Begin
        edPlan.Text := qfindTarjeta.FieldByName('Descripcion').AsString;

        If (qfindTarjeta.FieldByName('Bono').AsBoolean = True) then
          Begin
            //Buscando el Numero de Tarjeta del Bono
            qfindBono := DM.NewQuery;
            qfindBono.Close;

            Texto := ' SELECT * FROM PTTarjetaBono '+
                     ' WHERE TarjetaID = :tar '+
                     ' AND Activo = 1 ';

            //Validando el Numero Obligatorio de la Tarjeta de Descuento.
            If (qfindTarjeta.FieldByName('NumeroObligatorio').AsBoolean = True) Or
               (qfindTarjeta.FieldByName('Bono').AsBoolean = True) then
              Texto := Texto + ' AND TarjetaNumero = :num ';

            qfindBono.SQL.Text := Texto;
            qfindBono.Parameters.ParamByName('tar').Value := UpperCase(EdTarjeta.Text);

            //Validando el Numero Obligatorio de la Tarjeta de Descuento.
            If (qfindTarjeta.FieldByName('NumeroObligatorio').AsBoolean = True) Or
               (qfindTarjeta.FieldByName('Bono').AsBoolean = True) then
                qfindBono.Parameters.ParamByName('num').Value := UpperCase(EdNumero.Text);

            qfindBono.Open;

            If (qfindBono.RecordCount > 0) Then
              Begin
                Limpiar;
                Bono :=  (qfindBono.FieldByName('Valor').Value - qfindBono.FieldByName('Consumido').Value);
                If (Bono > 1) then
                  Begin
                    //El Monto Pendiente del Bono Sera el Descuento.
                    Reg_Bono;
                    EdBono.Value := Bono;
                  End
                Else
                  Begin
                    Alerta := True;
//                    Raise exception.CreateFmt('Este Bono Ya Fue Consumido.', []);
                  end;
              end
            Else
              Begin
                //No existe Bono Con los Criterios de busqueda.
                Limpiar;
                Alerta := True;
              end;
          end
        Else
          Begin
            //El Descuento no es Un Bono.
            Limpiar;
            EdDescuento.Style.Color := ClAqua;
            EdDescuento.Properties.ReadOnly := True;
            DesctoSuc := DM.DescTarjetaBono(UpperCase(EdTarjeta.Text), UpperCase(EdNumero.Text));
            EdDescuento.Value := DM.DescTarjetaBono(UpperCase(EdTarjeta.Text), UpperCase(EdNumero.Text));
          end;
      End
    Else
      Begin
        Limpiar;
        Alerta := True;
        EdDescuento.Style.Color := ClAqua;
        EdDescuento.Properties.ReadOnly := True;
//        Raise exception.CreateFmt('El Descuento Registrado NO Existe.', []);
      end;
  end;
end;


procedure TfrmDialogDescUsuario.CbTipoEnter(Sender: TObject);
begin
 inherited;
 buscar_descuento;
end;


procedure TfrmDialogDescUsuario.EdNumeroEnter(Sender: TObject);
Var S      : String;
    NS , S1,S2,Nombre,Cedula,Tarjeta,FechaActivacion,TieneBeneficios : String;
    L , I , LN : integer;
    MM :TStringList;

begin
  inherited;
  If (CbTipo.ItemIndex = 1) And (EdTarjeta.Text='SP-0003') Then
  Begin
       If StrToInt64(EdNumero.Text)=0 then
       begin
          Raise exception.CreateFmt(' Número de Tarjeta No puede estar en blanco para Proveedor Farmax-Provital. Verifique.', []);
       end;
       If (EdCedula.Text='   -       - ') then
       Begin
          Raise exception.CreateFmt(' Cédula No puede estar en blanco para Proveedor Farmax-Provital. Verifique.', []);
       end;
  end;
  If (CbTipo.ItemIndex = 1) And (StrToInt64(EdNumero.Text)>0) And (Length(EdCedula.Text)>0) And (EdTarjeta.Text='SP-0003') Then
  Begin
    try
      try
          IEHTTP1.content_type:='Text/xml';
          IEHTTP1.RequestMethod := 'GET';
          Buscar_Usuario_Password;
          StrCedula := StringReplace(edCedula.EditingText,'-','',[rfReplaceAll,rfIgnoreCase]);
          IEHTTP1.ExecuteURL('http://172.16.30.65/RestFarmacia/GetProvital.aspx?cedula='+StrCedula+'&tarjeta='+EdNumero.Text);
      except
        on E: Exception do
        begin
          {$IFDEF DEBUG}ShowMessage('Get Error:'+E.Message){$ENDIF};
        end;
      end;
    finally
      StrRes := IEHTTP1.result_sl.Text;
      If (IEHTTP1.result_sl.Text='"Object reference not set to an instance of an object."'#$D#$A'') Or
         (Copy(IEHTTP1.result_sl.Text,1,11)='{"Message":') Then
      Begin
        Raise exception.CreateFmt(' Cédula y/o Número de Tarjeta No existe en Farmax. Verifique.', []);
      end;

       try
          MM := TStringList.Create;
          NS := '';
          S:= StrRes;
          L := Length(S);
          for I := 1 to L do
              Begin
                  If (Ord(S[I]) <> 34)
                  And (Ord(S[I]) <> 123)
                  And (Ord(S[I]) <> 125)
                  Then NS := NS + Copy(S,I,1);
              End;
              S := NS;
              NS := '';
              L := Length(S);

          for I := 1 to L do
              Begin
                  If (Ord(S[I]) = 44)
                  Or (Ord(S[I]) = 58)
                  Then Begin
                    NS := NS + #13#10;
                    MM.Add(Trim(NS));
                    NS := '';
                  End
                  Else NS := NS + Copy(S,I,1);
              End;
              MM.Add(Trim(NS));
      //      --------------------------------------------------------------

              LN := MM.Count-1;
              for I := 0 to LN Do
              Begin
                  If MM[I] = Trim('NombreCompleto')
                  Then edtNombre.Text := Trim(MM[I + 1]);
                  If MM[I] = Trim('Cedula')
                  Then edtCedula.Text := Trim(MM[I + 1]);
                  If MM[I] = Trim('Tarjeta')
                  Then EdtNumero.Text := Trim(MM[I + 1]);
                  If MM[I] = Trim('FechaActivacion')
                  Then EdtFechaAct.Text := Trim(MM[I + 1]);
                  If MM[I] = Trim('TieneBeneficios')
                  Then EdtTieneBenef.Text := Trim(MM[I + 1]);
              End;
              CbTipoAfiliado.ItemIndex := 1;
              EdPaciente.Text := edtNombre.Text;
        finally
          MM.Free
        end;
  end;
  end;
  If (CbTipo.ItemIndex = 1) And ((StrToInt64(EdNumero.Text)>0) Or (Length(EdCedula.Text)>0)) And (EdTarjeta.Text='SP-0004') Then
  Begin
    try
      try
          IEHTTP1.content_type:='Text/xml';
          IEHTTP1.RequestMethod := 'GET';
          StrCedula := StringReplace(edCedula.EditingText,'-','',[rfReplaceAll,rfIgnoreCase]);
          IEHTTP1.ExecuteURL('http://172.16.30.65/RestFarmacia/GetHidalgos.aspx?tarjeta='+EdNumero.Text);
      except
        on E: Exception do
        begin
          ShowMessage('Get Error:'+E.Message);
        end;
      end;
    finally
      StrRes := IEHTTP1.result_sl.Text;
      If Copy(IEHTTP1.result_sl.Text,1,61)='<ResultadoContenido><Data></Data><Error>true</Error><Mensaje>' Then
      Begin
        Raise exception.CreateFmt('Número de Tarjeta No existe en Farmacia Los Hidalgos. Verifique.', []);
      end;

       try
          MM := TStringList.Create;
          NS := '';
          S:= StrRes;
          L := Length(S);
          for I := 1 to L do
              Begin
                  If (Ord(S[I]) <> 34)
                  And (Ord(S[I]) <> 123)
                  And (Ord(S[I]) <> 125)
                  Then NS := NS + Copy(S,I,1);
              End;
              S := NS;
              NS := '';
              L := Length(S);

          for I := 1 to L do
              Begin
                  If (Ord(S[I]) = 60)
                  Or (Ord(S[I]) = 62)
                  Then Begin
                    NS := NS + #13#10;
                    MM.Add(Trim(NS));
                    NS := '';
                  End
                  Else NS := NS + Copy(S,I,1);
              End;
              MM.Add(Trim(NS));
      //      --------------------------------------------------------------

              LN := MM.Count-1;
              for I := 0 to LN Do
              Begin
                  If MM[I] = Trim('NombreCompleto')
                  Then edtNombre.Text := Trim(MM[I + 1]);
                  If MM[I] = Trim('Cedula')
                  Then edtCedula.Text := Trim(MM[I + 1]);
                  If MM[I] = Trim('Error') Then
                  begin
                  if (edtNombre.Text <> EmptyStr) Then
                     EdtNumero.Text := EdNumero.Text;
                  end;
                  If MM[I] = Trim('Mensaje')
                  Then EdtTieneBenef.Text := Trim(MM[I + 1]);
              End;
              If Not((EdtTieneBenef.Text='EXISTE'))
               Or (EdtTieneBenef.Text =EmptyStr)  then
              begin
                  Raise exception.CreateFmt('Número de Tarjeta No existe en Farmacia Los Hidalgos. Verifique.', []);
              end;
              CbTipoAfiliado.ItemIndex := 1;
              EdPaciente.Text := edtNombre.Text;
        finally
          MM.Free
        end;
  end;
  end;
end;

procedure TfrmDialogDescUsuario.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key = Vk_Down) or (Key = 13) then
    PostMessage(Handle, Wm_NextDlgCtl, 0, 0);
  if Key = Vk_Up then
    PostMessage(Handle, Wm_NextDlgCtl, 1, 0);

  If (key = Vk_F9) Then btAceptar.Click;
end;

procedure TfrmDialogDescUsuario.Run(Pantalla : integer;Tipo : integer);
Var S      : String;
    NS , S1,S2,Nombre,Cedula,Tarjeta,FechaActivacion,TieneBeneficios : String;
    L , I , LN : integer;
    MM :TStringList;
    qinsert : TADOquery;
begin
 Limpiar;
 DM.qrTarjetasDesc.Close;
 if Tipo = 0 Then
 begin
     With DM.qrTarjetasDesc, sql do
     begin
        Close;
        Clear;
        Add(' Select * from PtTarjetaDescuento Where EsTarjeta='+#39+'N'+#39+' And Estatus='+#39+'A'+#39);
        Open;
     end;
    CbTipo.ItemIndex := 0
 end
 else
 if Tipo = 1 Then
 Begin
     With DM.qrTarjetasDesc, sql do
     begin
        Close;
        Clear;
        Add(' Select * from PtTarjetaDescuento Where EsTarjeta='+#39+'S'+#39+' and Enlinea='+#39+'S'+#39+' And Estatus='+#39+'A'+#39);
        Open;
     end;
    CbTipo.ItemIndex := 1
 end
 else
 Begin
     With DM.qrTarjetasDesc, sql do
     begin
        Close;
        Clear;
        Add(' Select * from PtTarjetaDescuento Where EsTarjeta='+#39+'N'+#39+' And Estatus='+#39+'A'+#39);
        Open;
     end;
    CbTipo.ItemIndex := 2
 end;
 buscar_descuento;
 showmodal;

 If ModalResult = mrOk then
  begin
    If (EdBono.Value < 1) And (EdDescuento.Value < 1) Then
      Begin
        If DM.Mensaje('Los Valores de Bono y Descuento Estan en Cero. Desea Realizar la Busqueda Automatica?',mb_yesno) = id_yes then
          buscar_descuento;
      end;

    If (Alerta = True) Then
    Begin
        Limpiar;
        Raise exception.CreateFmt(' Operacion Abortada Por Una de Estas Razones: '+ #13 +
                                  ' ó El Numero de Tarjeta Esta en Blanco '+ #13 +
                                  ' ó El Descuento NO Existe '+ #13 +
                                  ' ó El Bono Ya Fue Consumido '+ #13 +
                                  ' ó La Vigencia del Descuento Esta Vencida '+ #13 +
                                  ' Por Favor Verifique.!!!', []);
    End;

    If (Tipo = 1) And ((edPaciente.Text='') Or (EdNumero.Text='')) Then
    Begin
        Raise exception.CreateFmt(' Operacion Abortada Por Una de Estas Razones: '+ #13 +
                                  ' ó El Numero de Tarjeta Esta en Blanco '+ #13 +
                                  ' ó La Cedula Esta en Blanco  '+ #13 +
                                  ' ó El Nombre del Paciente Esta en Blanco.', []);

    end;

    If (Tipo = 1) And (EdtTieneBenef.Text<>'TRUE') And (EdTarjeta.Text='SP-0003') Then
    Begin
        Raise exception.CreateFmt(' Afiliado No Tiene Beneficios. Verifique.', []);
    end;

    If (Tipo = 1) And (EdtTieneBenef.Text<>'EXISTE') And (EdTarjeta.Text='SP-0004') Then
    Begin
        Raise exception.CreateFmt(' Afiliado No Existe. Verifique.', []);
    end;

    If (Trim(edComentario.Text)=EmptyStr) Then
    Begin
        Raise exception.CreateFmt(' Debe registrar comentario del descuento. Verifique.', []);
    end;

    If (EdBono.Value > Bono) Then
    Begin
        Raise exception.CreateFmt(' Operacion Abortada: '+
                                  ' El Monto de Descuento Es Mayor que el Bono Restante.', []);
    End;

    If (EdDescuento.Value > DesctoSuc) and (Tipo <> 1) Then
      Begin
        Raise exception.CreateFmt(' Operacion Abortada: '+
                                  ' El Monto de Descuento Es Mayor que el Descuento Permitido.', []);

        DesctoSuc := DM.DescTarjetaBono(UpperCase(EdTarjeta.Text), UpperCase(EdNumero.Text));
        EdDescuento.Value := DM.DescTarjetaBono(UpperCase(EdTarjeta.Text), UpperCase(EdNumero.Text));
      End;

    If Factura_St = 'I' then
    Begin
        If (Tipo = 1) And (cbTipoAfiliado.ItemIndex=1) And
           (Copy(frmMain.frmTmp.qrEntradaPacienteNOMBREPACIENTE.Value,1,5)<> Copy(EdPaciente.Text,1,5)) Then
        Begin
          Raise exception.CreateFmt(' Afiliado Tarjeta y Paciente Entrada son diferentes . Verifique.', []);
        end;

        frmMain.frmTmp.qrEntradaPaciente.Edit;
        If (CbTipo.ItemIndex = 0) Or (CbTipo.ItemIndex = 2) Then
          Begin
            frmMain.frmTmp.qrEntradaPacienteDescuentoCard.Value   := '';
            frmMain.frmTmp.qrEntradaPacienteDescuentoTexto.Value  := UpperCase(edPlan.Text);
            frmMain.frmTmp.qrEntradaPacienteDescuentoPlanId.Value := CbTipo.Text;
          end
        Else
          Begin
            frmMain.frmTmp.qrEntradaPacienteDescuentoCard.Value   := UpperCase(EdNumero.Text);
            frmMain.frmTmp.qrEntradaPacienteDescuentoTexto.Value  := UpperCase(edPlan.Text);
            frmMain.frmTmp.qrEntradaPacienteDescuentoPlanId.Value := UpperCase(EdTarjeta.Text);
          end;

         StrRefRecID        :=  FloatToStr(frmMain.frmTmp.qrEntradaPacienteRecID.Value);
         StrClienteID       :=  frmMain.frmTmp.qrEntradaPacienteClienteId.Value;
         StrPacienteID      :=  frmMain.frmTmp.qrEntradaPacientePACIENTEID.Value;
         StrMuestrano       :=  frmMain.frmTmp.qrEntradaPacienteMuestrano.Value;
         StrNombrePaciente  :=  frmMain.frmTmp.qrEntradaPacienteNOMBREPACIENTE.Value;
         If (CbTipo.ItemIndex = 1) Then
         Begin
            StrTarjetaID    :=  EdTarjeta.Text;
            StrTarjetaNumero:=  EdNumero.Text;
            if CbTipoAfiliado.ItemIndex = 1 then
            begin
              StrBeneficiario := EdPaciente.Text;
              StrDependiente  := EmptyStr;
            end
            else if CbTipoAfiliado.ItemIndex = 2 then
            begin
              StrBeneficiario := EdtNombre.Text;
              StrDependiente  := EdPaciente.Text;
            end;
            StrTipoAfiliado   := Copy(CbTipoAfiliado.Text,1,1);
            Total_Descuento := (frmMain.frmTmp.qrEntradaPacienteBRUTO.Value * EdDescuento.Value)/100;
         End;
    end  else
    If Factura_St = 'M' then
    Begin
        If (Tipo = 1) And (cbTipoAfiliado.ItemIndex=1) And
           (Copy(frmMain.frmTmpMod.qrEntradaPacienteNOMBREPACIENTE.Value,1,5)<> Copy(EdPaciente.Text,1,5)) Then
        Begin
          Raise exception.CreateFmt(' Afiliado Tarjeta y Paciente Entrada son diferentes . Verifique.', []);
        end;
        frmMain.frmTmpMod.qrEntradaPaciente.Edit;

        If (CbTipo.ItemIndex = 0) And (CbTipo.ItemIndex = 2) Then
          Begin
            frmMain.frmTmpMod.qrEntradaPacienteDescuentoCard.Value    := '';
            frmMain.frmTmpMod.qrEntradaPacienteDescuentoTexto.Value   := UpperCase(edPlan.Text);
            frmMain.frmTmpMod.qrEntradaPacienteDescuentoPlanId.Value  := CbTipo.Text;
          end
        Else
          Begin
            frmMain.frmTmpMod.qrEntradaPacienteDescuentoCard.Value    := UpperCase(EdNumero.Text);
            frmMain.frmTmpMod.qrEntradaPacienteDescuentoTexto.Value   := UpperCase(edPlan.Text);
            frmMain.frmTmpMod.qrEntradaPacienteDescuentoPlanId.Value  := UpperCase(EdTarjeta.Text);
          end;

          StrRefRecID        :=  FloatToStr(frmMain.frmTmpMod.qrEntradaPacienteRecID.Value);
          StrClienteID       :=  frmMain.frmTmpMod.qrEntradaPacienteClienteId.Value;
          StrPacienteID      :=  frmMain.frmTmpMod.qrEntradaPacientePACIENTEID.Value;
          StrMuestrano       :=  frmMain.frmTmpMod.qrEntradaPacienteMuestrano.Value;
          StrNombrePaciente  :=  frmMain.frmTmpMod.qrEntradaPacienteNOMBREPACIENTE.Value;

         If (CbTipo.ItemIndex = 1) Then
         Begin
            StrTarjetaID    :=  EdTarjeta.Text;
            StrTarjetaNumero:=  EdNumero.Text;
            if CbTipoAfiliado.ItemIndex = 1 then
            begin
              StrBeneficiario := EdPaciente.Text;
              StrDependiente  := EmptyStr;
            end
            else if CbTipoAfiliado.ItemIndex = 2 then
            begin
              StrBeneficiario := EdtNombre.Text;
              StrDependiente  := EdPaciente.Text;
            end;
            StrTipoAfiliado   := Copy(CbTipoAfiliado.Text,1,1);
            Total_Descuento := (frmMain.frmTmpMod.qrEntradaPacienteBRUTO.Value * EdDescuento.Value)/100;
         End;
    end else
    If Factura_St = 'F' then
    Begin
        If (Tipo = 1) And (cbTipoAfiliado.ItemIndex=1) And
           (Copy(frmMain.frmTmpND.qrEntradaPacienteNOMBREPACIENTE.Value,1,5)<> Copy(EdPaciente.Text,1,5)) Then
        Begin
          Raise exception.CreateFmt(' Afiliado Tarjeta y Paciente Entrada son diferentes . Verifique.', []);
        end;
        frmMain.frmTmpND.qrEntradaPaciente.Edit;
        If (CbTipo.ItemIndex = 0) And (CbTipo.ItemIndex = 2) Then
          Begin
            frmMain.frmTmpND.qrEntradaPacienteDescuentoCard.Value    := '';
            frmMain.frmTmpND.qrEntradaPacienteDescuentoTexto.Value   := UpperCase(edPlan.Text);
            frmMain.frmTmpND.qrEntradaPacienteDescuentoPlanId.Value  := CbTipo.Text;
          end
        Else
          Begin
            frmMain.frmTmpND.qrEntradaPacienteDescuentoCard.Value    := UpperCase(EdNumero.Text);
            frmMain.frmTmpND.qrEntradaPacienteDescuentoTexto.Value   := UpperCase(edPlan.Text);
            frmMain.frmTmpND.qrEntradaPacienteDescuentoPlanId.Value  := UpperCase(EdTarjeta.Text);
          end;
          StrRefRecID        :=  FloatToStr(frmMain.frmTmpND.qrEntradaPacienteRecID.Value);
          StrClienteID       :=  frmMain.frmTmpND.qrEntradaPacienteClienteId.Value;
          StrPacienteID      :=  frmMain.frmTmpND.qrEntradaPacientePACIENTEID.Value;
          StrMuestrano       :=  frmMain.frmTmpND.qrEntradaPacienteMuestrano.Value;
          StrNombrePaciente  :=  frmMain.frmTmpND.qrEntradaPacienteNOMBREPACIENTE.Value;
         If (CbTipo.ItemIndex = 1) Then
         Begin
            StrTarjetaID    :=  EdTarjeta.Text;
            StrTarjetaNumero:=  EdNumero.Text;
            if CbTipoAfiliado.ItemIndex = 1 then
            begin
              StrBeneficiario := EdPaciente.Text;
              StrDependiente  := EmptyStr;
            end
            else if CbTipoAfiliado.ItemIndex = 2 then
            begin
              StrBeneficiario := EdtNombre.Text;
              StrDependiente  := EdPaciente.Text;
            end;
            StrTipoAfiliado   := Copy(CbTipoAfiliado.Text,1,1);
            Total_Descuento := (frmMain.frmTmpND.qrEntradaPacienteBRUTO.Value * EdDescuento.Value)/100;
         End;
    end else
    If Factura_St = 'C' then
    Begin
        frmMain.frmClinica.qrEntradaPaciente.Edit;
        If (CbTipo.ItemIndex = 0) And (CbTipo.ItemIndex = 2) Then
          Begin
            frmMain.frmClinica.qrEntradaPacienteDescuentoCard.Value   := '';
            frmMain.frmClinica.qrEntradaPacienteDescuentoTexto.Value  := UpperCase(edPlan.Text);
            frmMain.frmClinica.qrEntradaPacienteDescuentoPlanId.Value := CbTipo.Text;
          end
        Else
          Begin
            frmMain.frmClinica.qrEntradaPacienteDescuentoCard.Value   := UpperCase(EdNumero.Text);
            frmMain.frmClinica.qrEntradaPacienteDescuentoTexto.Value  := UpperCase(edPlan.Text);
            frmMain.frmClinica.qrEntradaPacienteDescuentoPlanId.Value := UpperCase(EdTarjeta.Text);
          end;
          StrRefRecID        :=  FloatToStr(frmMain.frmClinica.qrEntradaPacienteRecID.Value);
          StrClienteID       :=  frmMain.frmClinica.qrEntradaPacienteClienteId.Value;
          StrPacienteID      :=  frmMain.frmClinica.qrEntradaPacientePACIENTEID.Value;
          StrMuestrano       :=  frmMain.frmClinica.qrEntradaPacienteMuestrano.Value;
          StrNombrePaciente  :=  frmMain.frmClinica.qrEntradaPacienteNOMBREPACIENTE.Value;

         If (CbTipo.ItemIndex = 1) Then
         Begin
            StrTarjetaID    :=  EdTarjeta.Text;
            StrTarjetaNumero:=  EdNumero.Text;
            if CbTipoAfiliado.ItemIndex = 1 then
            begin
              StrBeneficiario := EdPaciente.Text;
              StrDependiente  := EmptyStr;
            end
            else if CbTipoAfiliado.ItemIndex = 2 then
            begin
              StrBeneficiario := EdtNombre.Text;
              StrDependiente  := EdPaciente.Text;
            end;
            StrTipoAfiliado   := Copy(CbTipoAfiliado.Text,1,1);
            Total_Descuento := (frmMain.frmClinica.qrEntradaPacienteBRUTO.Value * EdDescuento.Value)/100;
         End;

    end;
    if ((EdDescuento.Text)<> '0.00%') And (Length(CbTipo.Text)>0) Then
    Begin
        qinsert := DM.NewQuery;
        With qinsert, sql do
        begin
          Close;
          Text := ' Select * from PtDescuento (nolock) '+
                  ' Where RefrecID='+StrRefRecID;
          Open;
        end;
        If CbTipo.ItemIndex = 0 then
           StrTipo_Descuento := 'S'
        else if CbTipo.ItemIndex = 1 then
             StrTipo_Descuento := 'T'
        else if CbTipo.ItemIndex = 1 then
             StrTipo_Descuento := 'E';

        If qinsert.RecordCount > 0 Then
        Begin
//          Raise exception.CreateFmt(' Afiliado tiene registro de Descuento . Verifique.', []);
          qdelete := DM.NewQuery;
          With qdelete, sql do
          begin
            Close;
            Text := ' Delete from PtDescuento '+
                    ' Where RefrecID='+StrRefRecID;
            ExecSQL;
          end;
          qinsert := DM.NewQuery;
          qinsert.Close;
          qinsert.SQL.Text := 'Insert into PtDescuento(RefrecId, ClienteID, PacienteID, Muestrano, Nombre_Paciente, Comentario, UserID, TerminalID, Tipo_Descuento) '+
                                ' Values(:0,:1,:2,:3,:4,:5,:6,:7,:8)';

          qinsert.Parameters[0].Value   := StrRefRecID;
          qinsert.Parameters[1].Value   := StrClienteID;
          qinsert.Parameters[2].Value   := StrPacienteID;
          qinsert.Parameters[3].Value   := StrMuestrano;
          qinsert.Parameters[4].Value   := StrNombrePaciente;
          qinsert.Parameters[5].Value   := edComentario.Text;
          qinsert.Parameters[6].Value   := Dm.CurUser;
          qinsert.Parameters[7].Value   := IPExtra.Local_hostname;
          qinsert.Parameters[8].Value   := StrTipo_Descuento;
          qinsert.ExecSQL;
        end
        else
        begin
            qinsert := DM.NewQuery;
            qinsert.Close;
            qinsert.SQL.Text := 'Insert into PtDescuento(RefrecId, ClienteID, PacienteID, Muestrano, Nombre_Paciente, Comentario, UserID, TerminalID, Tipo_Descuento) '+
                                ' Values(:0,:1,:2,:3,:4,:5,:6,:7,:8)';

            qinsert.Parameters[0].Value   := StrRefRecID;
            qinsert.Parameters[1].Value   := StrClienteID;
            qinsert.Parameters[2].Value   := StrPacienteID;
            qinsert.Parameters[3].Value   := StrMuestrano;
            qinsert.Parameters[4].Value   := StrNombrePaciente;
            qinsert.Parameters[5].Value   := edComentario.Text;
            qinsert.Parameters[6].Value   := Dm.CurUser;
            qinsert.Parameters[7].Value   := IPExtra.Local_hostname;
            qinsert.Parameters[8].Value   := StrTipo_Descuento;
            qinsert.ExecSQL;
        end;
        FreeAndNil(qinsert);
    end;
    If (Tipo = 1) And (EdTarjeta.Text='SP-0003') And Not((edtCedula.Text=EmptyStr) And (edtNombre.Text=EmptyStr) And (EdtNumero.Text=EmptyStr)) Then
    Begin
        try
          try
              Buscar_Fecha_Hora_Transaccion;
              IEHTTP1.RequestMethod := 'POST';
              IEHTTP1.Url:='http://172.16.30.65/RestFarmacia/PostProvital.aspx?tarjeta='+EdNumero.Text+'&fecha='+StrFechaHora+'&monto='+FloatToStr(Total_Descuento);
              IEHTTP1.Execute;
          except
            on E: Exception do
            begin
              MessageDlg(#13 + 'Error enviando datos a Proveedor '+EdTarjeta.Text+' .', mtWarning, [mbOk], 0);
            end;
          end;
        finally
              ShowMessage(IEHTTP1.sl.Text);
        end;
//      Insert Tabla PtTarjetaCliente
        qinsert := DM.NewQuery;
        qinsert.Close;
        qinsert.SQL.Text := 'Insert into PtTarjetaCliente(ClienteID, TarjetaID, TarjetaNumero, Muestrano, RefrecID, Beneficiario, Dependiente, Tipo_Afiliado, Comentario, UserID, TerminalId, Cedula) '+
                            ' Values(:0,:1,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11)';

        qinsert.Parameters[0].Value   := StrClienteID;
        qinsert.Parameters[1].Value   := StrTarjetaID;
        qinsert.Parameters[2].Value   := StrTarjetaNumero;
        qinsert.Parameters[3].Value   := StrMuestrano;
        qinsert.Parameters[4].Value   := StrRefRecID;
        qinsert.Parameters[5].Value   := StrBeneficiario;
        qinsert.Parameters[6].Value   := StrDependiente;
        qinsert.Parameters[7].Value   := StrTipoAfiliado;
        qinsert.Parameters[8].Value   := edComentario.Text;
        qinsert.Parameters[9].Value   := Dm.CurUser;
        qinsert.Parameters[10].Value  := IPExtra.Local_hostname;
        qinsert.Parameters[11].Value  := EdCedula.Text;
        qinsert.ExecSQL;
        FreeAndNil(qinsert);
    end;
    If (Tipo = 1) And (EdTarjeta.Text='SP-0004') And Not((edtCedula.Text=EmptyStr) And (edtNombre.Text=EmptyStr) And (EdtNumero.Text=EmptyStr)) Then
    Begin
        try
          try
              IEHTTP1.RequestMethod := 'GET';
              StrCedula := StringReplace(edCedula.EditingText,'-','',[rfReplaceAll,rfIgnoreCase]);
              if EdNumero.Text <> EmptyStr then
                IEHTTP1.ExecuteURL('http://172.16.30.65/RestFarmacia/GetHidalgos.aspx?tarjeta='+EdNumero.Text+'&enviar=1')
              else
                IEHTTP1.ExecuteURL('http://172.16.30.65/RestFarmacia/GetHidalgos.aspx?cedula='+StrCedula+'&enviar=1')
          except
            on E: Exception do
            begin
              MessageDlg(#13 + 'Error enviando datos a Proveedor '+EdTarjeta.Text+' .', mtWarning, [mbOk], 0);
            end;
          end;
        finally
          StrRes := IEHTTP1.result_sl.Text;
        end;
        If Copy(IEHTTP1.result_sl.Text,1,61)='<ResultadoContenido><Data></Data><Error>true</Error><Mensaje>' Then
        Begin
          Raise exception.CreateFmt('Número de Tarjeta No existe en Farmacia Los Hidalgos. Verifique.', []);
        end;

         try
            MM := TStringList.Create;
            NS := '';
            S:= StrRes;
            L := Length(S);
            for I := 1 to L do
                Begin
                    If (Ord(S[I]) <> 34)
                    And (Ord(S[I]) <> 123)
                    And (Ord(S[I]) <> 125)
                    Then NS := NS + Copy(S,I,1);
                End;
                S := NS;
                NS := '';
                L := Length(S);

            for I := 1 to L do
                Begin
                    If (Ord(S[I]) = 60)
                    Or (Ord(S[I]) = 62)
                    Then Begin
                      NS := NS + #13#10;
                      MM.Add(Trim(NS));
                      NS := '';
                    End
                    Else NS := NS + Copy(S,I,1);
                End;
                MM.Add(Trim(NS));
        //      --------------------------------------------------------------

                LN := MM.Count-1;
                for I := 0 to LN Do
                Begin
                    If MM[I] = Trim('NombreCompleto')
                    Then edtNombre.Text := Trim(MM[I + 1]);
                    If MM[I] = Trim('Cedula')
                    Then edtCedula.Text := Trim(MM[I + 1]);
                    If MM[I] = Trim('Error') Then
                    begin
                    if (edtNombre.Text <> EmptyStr) Then
                       EdtNumero.Text := EdNumero.Text;
                    end;
                    If MM[I] = Trim('Mensaje')
                    Then EdtTieneBenef.Text := Trim(MM[I + 1]);
                End;
                If Not((EdtTieneBenef.Text='ENVIADO')) then
                begin
                    Raise exception.CreateFmt('Número de Tarjeta No existe en Farmacia Los Hidalgos. Verifique.', []);
                end;
                CbTipoAfiliado.ItemIndex := 1;
                EdPaciente.Text := edtNombre.Text;
          finally
            MM.Free
          end;

//      Insert Tabla PtTarjetaCliente
        qinsert := DM.NewQuery;
        qinsert.Close;
        qinsert.SQL.Text := 'Insert into PtTarjetaCliente(ClienteID, TarjetaID, TarjetaNumero, Muestrano, RefrecID, Beneficiario, Dependiente, Tipo_Afiliado, Comentario, UserID, TerminalId, Cedula) '+
                            ' Values(:0,:1,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11)';

        qinsert.Parameters[0].Value   := StrClienteID;
        qinsert.Parameters[1].Value   := StrTarjetaID;
        qinsert.Parameters[2].Value   := StrTarjetaNumero;
        qinsert.Parameters[3].Value   := StrMuestrano;
        qinsert.Parameters[4].Value   := StrRefRecID;
        qinsert.Parameters[5].Value   := StrBeneficiario;
        qinsert.Parameters[6].Value   := StrDependiente;
        qinsert.Parameters[7].Value   := StrTipoAfiliado;
        qinsert.Parameters[8].Value   := edComentario.Text;
        qinsert.Parameters[9].Value   := Dm.CurUser;
        qinsert.Parameters[10].Value  := IPExtra.Local_hostname;
        qinsert.Parameters[11].Value  := EdCedula.Text;
        qinsert.ExecSQL;
        FreeAndNil(qinsert);
    end;

    If Factura_St = 'I' then
    Begin
         frmMain.frmTmp.qrEntradaPacienteDescuentoBono.Value      := EdBono.Value;
         frmMain.frmTmp.qrEntradaPacienteDescuentoPorc.Value      := EdDescuento.Value;
         frmMain.frmTmp.qrEntradaPacienteDescAutorizadoPor.Value  := DM.CurUser;
         frmMain.frmTmp.qrEntradaPacienteDescuentoValor.Value     := 0;
         frmMain.frmTmp.ActTotales;
         frmMain.frmTmp.VerificarPagoDiferencia;
    end
    else
    If Factura_St = 'M' then
    Begin
         frmMain.frmTmpMod.qrEntradaPacienteDescuentoBono.Value       := EdBono.Value;
         frmMain.frmTmpMod.qrEntradaPacienteDescuentoPorc.Value       := EdDescuento.Value;
         frmMain.frmTmpMod.qrEntradaPacienteDescAutorizadoPor.Value   := DM.CurUser;
         frmMain.frmTmpMod.qrEntradaPacienteDescuentoValor.Value      := 0;

         frmMain.frmTmpMod.ActTotales;
         frmMain.frmTmpMod.VerificarPagoDiferencia;
    end
    else
    If Factura_St = 'F' then
    Begin
         frmMain.frmTmpND.qrEntradaPacienteDescuentoBono.Value       := EdBono.Value;
         frmMain.frmTmpND.qrEntradaPacienteDescuentoPorc.Value       := EdDescuento.Value;
         frmMain.frmTmpND.qrEntradaPacienteDescAutorizadoPor.Value   := DM.CurUser;
         frmMain.frmTmpND.qrEntradaPacienteDescuentoValor.Value      := 0;

         frmMain.frmTmpND.ActTotales;
         frmMain.frmTmpND.VerificarPagoDiferencia;
    end;
    If Factura_St = 'C' then
    Begin
         frmMain.frmClinica.qrEntradaPacienteDescuentoBono.Value      := EdBono.Value;
         frmMain.frmClinica.qrEntradaPacienteDescuentoPorc.Value      := EdDescuento.Value;
         frmMain.frmClinica.qrEntradaPacienteDescAutorizadoPor.Value  := DM.CurUser;
         frmMain.frmClinica.qrEntradaPacienteDescuentoValor.Value     := 0;
         frmMain.frmClinica.ActTotales;
         frmMain.frmClinica.VerificarPagoDiferencia;
    end;

  end;
end;
Procedure TfrmDialogDescUsuario.Buscar_Usuario_Password;
Var qconsulta : TADOQuery;
begin
   qconsulta := DM.NewQuery;
   With qconsulta, sql do
   begin
      Close;
      Text := ' Select Usuario,Password from [PTTarjetaDescuento] '+#13+
              ' Where TarjetaID = '+#39+Edtarjeta.Text+#39;
      Open;
   end;
  if (qconsulta.RecordCount > 0) then
  begin
       StrUsuario   := qconsulta.Fieldbyname('Usuario').AsString;
       StrPassword  := qconsulta.Fieldbyname('Password').AsString;
  end;
  FreeAndNil(qconsulta);
end;
Procedure TfrmDialogDescUsuario.Buscar_Fecha_Hora_Transaccion;
Var qconsulta : TADOQuery;
begin
   qconsulta := DM.NewQuery;
   With qconsulta, sql do
   begin
      Close;
      Text := ' Select Replace(Replace(Replace(Replace(CONVERT(VARCHAR(24),GETDATE(),121),'+#39+'-'+#39+','+#39+#39+'),'+#39+':'+#39+','+#39+#39+'),'+#39+'.'+#39+','+#39+#39+'),'+#39+' '+#39+','+#39+#39+') As CadenaFechaTransaccion ';
      Open;
   end;
  If (qconsulta.RecordCount > 0) then
  begin
       StrFechaHora := qconsulta.Fieldbyname('CadenaFechaTransaccion').AsString;
  end;
  FreeAndNil(qconsulta);
end;

end.


